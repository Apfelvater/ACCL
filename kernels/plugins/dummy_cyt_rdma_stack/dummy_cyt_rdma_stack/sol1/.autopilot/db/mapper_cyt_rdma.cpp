#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <list>
#include <map>
#include <vector>
#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_stream.h"
using namespace std;

namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const char *msg;
    const size_t line;
    SimException(const char *msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const char *msg)
  {
    std::string s;
    s += "at line ";
    s += std::to_string(line);
    s += " occurred problem: ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}


namespace hls::sim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    static const size_t total = 1<<10;
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(total)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    if (dynamic) {
      if (++static_cast<DBuffer*>(bufs.front())->ufree == DBuffer::total) {
        if (bufs.size() > 1) {
          bufs.pop_front();
          front = bufs.front()->first;
        } else {
          front = back = bufs.front()->first;
        }
      }
    }
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_rdma_sq_cap_bc;
static AESL_RUNTIME_BC __xlx_rdma_sq_V_size_Reader("../tv/stream_size/stream_size_in_rdma_sq.dat");
unsigned int ap_apatb_notif_cap_bc;
static AESL_RUNTIME_BC __xlx_notif_V_size_Reader("../tv/stream_size/stream_size_out_notif.dat");
unsigned int ap_apatb_send_data_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_send_data_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_send_data_V_data_V.dat");
unsigned int ap_apatb_send_data_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_send_data_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_send_data_V_keep_V.dat");
unsigned int ap_apatb_send_data_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_send_data_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_send_data_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_send_data_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_send_data_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_send_data_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_send_data_V_dest_V_cap_bc;
static AESL_RUNTIME_BC __xlx_send_data_V_dest_V_V_size_Reader("../tv/stream_size/stream_size_in_send_data_V_dest_V.dat");
unsigned int ap_apatb_recv_data_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_recv_data_V_data_V_V_size_Reader("../tv/stream_size/stream_size_out_recv_data_V_data_V.dat");
unsigned int ap_apatb_recv_data_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_recv_data_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_out_recv_data_V_keep_V.dat");
unsigned int ap_apatb_recv_data_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_recv_data_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_out_recv_data_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_recv_data_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_recv_data_V_last_V_V_size_Reader("../tv/stream_size/stream_size_out_recv_data_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_recv_data_V_dest_V_cap_bc;
static AESL_RUNTIME_BC __xlx_recv_data_V_dest_V_V_size_Reader("../tv/stream_size/stream_size_out_recv_data_V_dest_V.dat");
unsigned int ap_apatb_wr_data_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_wr_data_V_data_V_V_size_Reader("../tv/stream_size/stream_size_out_wr_data_V_data_V.dat");
unsigned int ap_apatb_wr_data_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_wr_data_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_out_wr_data_V_keep_V.dat");
unsigned int ap_apatb_wr_data_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_wr_data_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_out_wr_data_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_wr_data_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_wr_data_V_last_V_V_size_Reader("../tv/stream_size/stream_size_out_wr_data_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_wr_data_V_dest_V_cap_bc;
static AESL_RUNTIME_BC __xlx_wr_data_V_dest_V_V_size_Reader("../tv/stream_size/stream_size_out_wr_data_V_dest_V.dat");
unsigned int ap_apatb_wr_cmd_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_wr_cmd_V_data_V_V_size_Reader("../tv/stream_size/stream_size_out_wr_cmd_V_data_V.dat");
unsigned int ap_apatb_wr_cmd_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_wr_cmd_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_out_wr_cmd_V_keep_V.dat");
unsigned int ap_apatb_wr_cmd_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_wr_cmd_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_out_wr_cmd_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_wr_cmd_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_wr_cmd_V_last_V_V_size_Reader("../tv/stream_size/stream_size_out_wr_cmd_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_wr_cmd_V_dest_V_cap_bc;
static AESL_RUNTIME_BC __xlx_wr_cmd_V_dest_V_V_size_Reader("../tv/stream_size/stream_size_out_wr_cmd_V_dest_V.dat");
unsigned int ap_apatb_wr_sts_cap_bc;
static AESL_RUNTIME_BC __xlx_wr_sts_V_size_Reader("../tv/stream_size/stream_size_in_wr_sts.dat");
unsigned int ap_apatb_rx_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_rx_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_rx_V_data_V.dat");
unsigned int ap_apatb_rx_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_rx_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_rx_V_keep_V.dat");
unsigned int ap_apatb_rx_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_rx_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_rx_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_rx_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_rx_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_rx_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_rx_V_dest_V_cap_bc;
static AESL_RUNTIME_BC __xlx_rx_V_dest_V_V_size_Reader("../tv/stream_size/stream_size_in_rx_V_dest_V.dat");
unsigned int ap_apatb_tx_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_tx_V_data_V_V_size_Reader("../tv/stream_size/stream_size_out_tx_V_data_V.dat");
unsigned int ap_apatb_tx_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_tx_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_out_tx_V_keep_V.dat");
unsigned int ap_apatb_tx_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_tx_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_out_tx_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_tx_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_tx_V_last_V_V_size_Reader("../tv/stream_size/stream_size_out_tx_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_tx_V_dest_V_cap_bc;
static AESL_RUNTIME_BC __xlx_tx_V_dest_V_V_size_Reader("../tv/stream_size/stream_size_out_tx_V_dest_V.dat");
using hls::sim::Byte;
struct __cosim_s16__ { char data[16]; };
struct __cosim_s8__ { char data[8]; };
struct __cosim_s64__ { char data[64]; };
struct __cosim_s13__ { char data[16]; };
struct __cosim_s4__ { char data[4]; };
extern "C" void cyt_rdma(__cosim_s16__*, __cosim_s8__*, volatile void *, volatile void *, volatile void *, , volatile void *, , volatile void *, volatile void *, volatile void *, volatile void *, , volatile void *, , volatile void *, volatile void *, volatile void *, volatile void *, , volatile void *, , volatile void *, volatile void *, volatile void *, volatile void *, , volatile void *, , volatile void *, __cosim_s4__*, volatile void *, volatile void *, volatile void *, , volatile void *, , volatile void *, volatile void *, volatile void *, volatile void *, , volatile void *, , volatile void *);
extern "C" void apatb_cyt_rdma_hw(volatile void * __xlx_apatb_param_rdma_sq, volatile void * __xlx_apatb_param_notif, volatile void * __xlx_apatb_param_send_data_V_data_V, volatile void * __xlx_apatb_param_send_data_V_keep_V, volatile void * __xlx_apatb_param_send_data_V_strb_V, volatile void * __xlx_apatb_param_send_data_V_last_V, volatile void * __xlx_apatb_param_send_data_V_dest_V, volatile void * __xlx_apatb_param_recv_data_V_data_V, volatile void * __xlx_apatb_param_recv_data_V_keep_V, volatile void * __xlx_apatb_param_recv_data_V_strb_V, volatile void * __xlx_apatb_param_recv_data_V_last_V, volatile void * __xlx_apatb_param_recv_data_V_dest_V, volatile void * __xlx_apatb_param_wr_data_V_data_V, volatile void * __xlx_apatb_param_wr_data_V_keep_V, volatile void * __xlx_apatb_param_wr_data_V_strb_V, volatile void * __xlx_apatb_param_wr_data_V_last_V, volatile void * __xlx_apatb_param_wr_data_V_dest_V, volatile void * __xlx_apatb_param_wr_cmd_V_data_V, volatile void * __xlx_apatb_param_wr_cmd_V_keep_V, volatile void * __xlx_apatb_param_wr_cmd_V_strb_V, volatile void * __xlx_apatb_param_wr_cmd_V_last_V, volatile void * __xlx_apatb_param_wr_cmd_V_dest_V, volatile void * __xlx_apatb_param_wr_sts, volatile void * __xlx_apatb_param_rx_V_data_V, volatile void * __xlx_apatb_param_rx_V_keep_V, volatile void * __xlx_apatb_param_rx_V_strb_V, volatile void * __xlx_apatb_param_rx_V_last_V, volatile void * __xlx_apatb_param_rx_V_dest_V, volatile void * __xlx_apatb_param_tx_V_data_V, volatile void * __xlx_apatb_param_tx_V_keep_V, volatile void * __xlx_apatb_param_tx_V_strb_V, volatile void * __xlx_apatb_param_tx_V_last_V, volatile void * __xlx_apatb_param_tx_V_dest_V) {
using hls::sim::createStream;
auto* srdma_sq = createStream((hls::stream<__cosim_s16__>*)__xlx_apatb_param_rdma_sq);
  //Create input buffer for notif
  ap_apatb_notif_cap_bc = __xlx_notif_V_size_Reader.read_size();
  __cosim_s8__* __xlx_notif_input_buffer= new __cosim_s8__[ap_apatb_notif_cap_bc];
auto* snotif = createStream((hls::stream<__cosim_s8__>*)__xlx_apatb_param_notif);
auto* ssend_data_V_data_V = createStream((hls::stream<__cosim_s64__>*)__xlx_apatb_param_send_data_V_data_V);
auto* ssend_data_V_keep_V = createStream((hls::stream<long long>*)__xlx_apatb_param_send_data_V_keep_V);
auto* ssend_data_V_strb_V = createStream((hls::stream<long long>*)__xlx_apatb_param_send_data_V_strb_V);
auto* ssend_data_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_send_data_V_last_V);
auto* ssend_data_V_dest_V = createStream((hls::stream<char>*)__xlx_apatb_param_send_data_V_dest_V);
  //Create input buffer for recv_data_V_data_V
  ap_apatb_recv_data_V_data_V_cap_bc = __xlx_recv_data_V_data_V_V_size_Reader.read_size();
  __cosim_s64__* __xlx_recv_data_V_data_V_input_buffer= new __cosim_s64__[ap_apatb_recv_data_V_data_V_cap_bc];
auto* srecv_data_V_data_V = createStream((hls::stream<__cosim_s64__>*)__xlx_apatb_param_recv_data_V_data_V);
  //Create input buffer for recv_data_V_keep_V
  ap_apatb_recv_data_V_keep_V_cap_bc = __xlx_recv_data_V_keep_V_V_size_Reader.read_size();
  long long* __xlx_recv_data_V_keep_V_input_buffer= new long long[ap_apatb_recv_data_V_keep_V_cap_bc];
auto* srecv_data_V_keep_V = createStream((hls::stream<long long>*)__xlx_apatb_param_recv_data_V_keep_V);
  //Create input buffer for recv_data_V_strb_V
  ap_apatb_recv_data_V_strb_V_cap_bc = __xlx_recv_data_V_strb_V_V_size_Reader.read_size();
  long long* __xlx_recv_data_V_strb_V_input_buffer= new long long[ap_apatb_recv_data_V_strb_V_cap_bc];
auto* srecv_data_V_strb_V = createStream((hls::stream<long long>*)__xlx_apatb_param_recv_data_V_strb_V);
  //Create input buffer for recv_data_V_last_V
  ap_apatb_recv_data_V_last_V_cap_bc = __xlx_recv_data_V_last_V_V_size_Reader.read_size();
  char* __xlx_recv_data_V_last_V_input_buffer= new char[ap_apatb_recv_data_V_last_V_cap_bc];
auto* srecv_data_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_recv_data_V_last_V);
  //Create input buffer for recv_data_V_dest_V
  ap_apatb_recv_data_V_dest_V_cap_bc = __xlx_recv_data_V_dest_V_V_size_Reader.read_size();
  char* __xlx_recv_data_V_dest_V_input_buffer= new char[ap_apatb_recv_data_V_dest_V_cap_bc];
auto* srecv_data_V_dest_V = createStream((hls::stream<char>*)__xlx_apatb_param_recv_data_V_dest_V);
  //Create input buffer for wr_data_V_data_V
  ap_apatb_wr_data_V_data_V_cap_bc = __xlx_wr_data_V_data_V_V_size_Reader.read_size();
  __cosim_s64__* __xlx_wr_data_V_data_V_input_buffer= new __cosim_s64__[ap_apatb_wr_data_V_data_V_cap_bc];
auto* swr_data_V_data_V = createStream((hls::stream<__cosim_s64__>*)__xlx_apatb_param_wr_data_V_data_V);
  //Create input buffer for wr_data_V_keep_V
  ap_apatb_wr_data_V_keep_V_cap_bc = __xlx_wr_data_V_keep_V_V_size_Reader.read_size();
  long long* __xlx_wr_data_V_keep_V_input_buffer= new long long[ap_apatb_wr_data_V_keep_V_cap_bc];
auto* swr_data_V_keep_V = createStream((hls::stream<long long>*)__xlx_apatb_param_wr_data_V_keep_V);
  //Create input buffer for wr_data_V_strb_V
  ap_apatb_wr_data_V_strb_V_cap_bc = __xlx_wr_data_V_strb_V_V_size_Reader.read_size();
  long long* __xlx_wr_data_V_strb_V_input_buffer= new long long[ap_apatb_wr_data_V_strb_V_cap_bc];
auto* swr_data_V_strb_V = createStream((hls::stream<long long>*)__xlx_apatb_param_wr_data_V_strb_V);
  //Create input buffer for wr_data_V_last_V
  ap_apatb_wr_data_V_last_V_cap_bc = __xlx_wr_data_V_last_V_V_size_Reader.read_size();
  char* __xlx_wr_data_V_last_V_input_buffer= new char[ap_apatb_wr_data_V_last_V_cap_bc];
auto* swr_data_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_wr_data_V_last_V);
  //Create input buffer for wr_data_V_dest_V
  ap_apatb_wr_data_V_dest_V_cap_bc = __xlx_wr_data_V_dest_V_V_size_Reader.read_size();
  char* __xlx_wr_data_V_dest_V_input_buffer= new char[ap_apatb_wr_data_V_dest_V_cap_bc];
auto* swr_data_V_dest_V = createStream((hls::stream<char>*)__xlx_apatb_param_wr_data_V_dest_V);
  //Create input buffer for wr_cmd_V_data_V
  ap_apatb_wr_cmd_V_data_V_cap_bc = __xlx_wr_cmd_V_data_V_V_size_Reader.read_size();
  __cosim_s13__* __xlx_wr_cmd_V_data_V_input_buffer= new __cosim_s13__[ap_apatb_wr_cmd_V_data_V_cap_bc];
auto* swr_cmd_V_data_V = createStream((hls::stream<__cosim_s13__>*)__xlx_apatb_param_wr_cmd_V_data_V);
  //Create input buffer for wr_cmd_V_keep_V
  ap_apatb_wr_cmd_V_keep_V_cap_bc = __xlx_wr_cmd_V_keep_V_V_size_Reader.read_size();
  short* __xlx_wr_cmd_V_keep_V_input_buffer= new short[ap_apatb_wr_cmd_V_keep_V_cap_bc];
auto* swr_cmd_V_keep_V = createStream((hls::stream<short>*)__xlx_apatb_param_wr_cmd_V_keep_V);
  //Create input buffer for wr_cmd_V_strb_V
  ap_apatb_wr_cmd_V_strb_V_cap_bc = __xlx_wr_cmd_V_strb_V_V_size_Reader.read_size();
  short* __xlx_wr_cmd_V_strb_V_input_buffer= new short[ap_apatb_wr_cmd_V_strb_V_cap_bc];
auto* swr_cmd_V_strb_V = createStream((hls::stream<short>*)__xlx_apatb_param_wr_cmd_V_strb_V);
  //Create input buffer for wr_cmd_V_last_V
  ap_apatb_wr_cmd_V_last_V_cap_bc = __xlx_wr_cmd_V_last_V_V_size_Reader.read_size();
  char* __xlx_wr_cmd_V_last_V_input_buffer= new char[ap_apatb_wr_cmd_V_last_V_cap_bc];
auto* swr_cmd_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_wr_cmd_V_last_V);
  //Create input buffer for wr_cmd_V_dest_V
  ap_apatb_wr_cmd_V_dest_V_cap_bc = __xlx_wr_cmd_V_dest_V_V_size_Reader.read_size();
  char* __xlx_wr_cmd_V_dest_V_input_buffer= new char[ap_apatb_wr_cmd_V_dest_V_cap_bc];
auto* swr_cmd_V_dest_V = createStream((hls::stream<char>*)__xlx_apatb_param_wr_cmd_V_dest_V);
auto* swr_sts = createStream((hls::stream<__cosim_s4__>*)__xlx_apatb_param_wr_sts);
auto* srx_V_data_V = createStream((hls::stream<__cosim_s64__>*)__xlx_apatb_param_rx_V_data_V);
auto* srx_V_keep_V = createStream((hls::stream<long long>*)__xlx_apatb_param_rx_V_keep_V);
auto* srx_V_strb_V = createStream((hls::stream<long long>*)__xlx_apatb_param_rx_V_strb_V);
auto* srx_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_rx_V_last_V);
auto* srx_V_dest_V = createStream((hls::stream<char>*)__xlx_apatb_param_rx_V_dest_V);
  //Create input buffer for tx_V_data_V
  ap_apatb_tx_V_data_V_cap_bc = __xlx_tx_V_data_V_V_size_Reader.read_size();
  __cosim_s64__* __xlx_tx_V_data_V_input_buffer= new __cosim_s64__[ap_apatb_tx_V_data_V_cap_bc];
auto* stx_V_data_V = createStream((hls::stream<__cosim_s64__>*)__xlx_apatb_param_tx_V_data_V);
  //Create input buffer for tx_V_keep_V
  ap_apatb_tx_V_keep_V_cap_bc = __xlx_tx_V_keep_V_V_size_Reader.read_size();
  long long* __xlx_tx_V_keep_V_input_buffer= new long long[ap_apatb_tx_V_keep_V_cap_bc];
auto* stx_V_keep_V = createStream((hls::stream<long long>*)__xlx_apatb_param_tx_V_keep_V);
  //Create input buffer for tx_V_strb_V
  ap_apatb_tx_V_strb_V_cap_bc = __xlx_tx_V_strb_V_V_size_Reader.read_size();
  long long* __xlx_tx_V_strb_V_input_buffer= new long long[ap_apatb_tx_V_strb_V_cap_bc];
auto* stx_V_strb_V = createStream((hls::stream<long long>*)__xlx_apatb_param_tx_V_strb_V);
  //Create input buffer for tx_V_last_V
  ap_apatb_tx_V_last_V_cap_bc = __xlx_tx_V_last_V_V_size_Reader.read_size();
  char* __xlx_tx_V_last_V_input_buffer= new char[ap_apatb_tx_V_last_V_cap_bc];
auto* stx_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_tx_V_last_V);
  //Create input buffer for tx_V_dest_V
  ap_apatb_tx_V_dest_V_cap_bc = __xlx_tx_V_dest_V_V_size_Reader.read_size();
  char* __xlx_tx_V_dest_V_input_buffer= new char[ap_apatb_tx_V_dest_V_cap_bc];
auto* stx_V_dest_V = createStream((hls::stream<char>*)__xlx_apatb_param_tx_V_dest_V);
  // DUT call
  cyt_rdma(srdma_sq->data<__cosim_s16__>(), snotif->data<__cosim_s8__>(), ssend_data_V_data_V->data<__cosim_s64__>(), ssend_data_V_keep_V->data<long long>(), ssend_data_V_strb_V->data<long long>(), ssend_data_V_last_V->data<char>(), ssend_data_V_dest_V->data<char>(), srecv_data_V_data_V->data<__cosim_s64__>(), srecv_data_V_keep_V->data<long long>(), srecv_data_V_strb_V->data<long long>(), srecv_data_V_last_V->data<char>(), srecv_data_V_dest_V->data<char>(), swr_data_V_data_V->data<__cosim_s64__>(), swr_data_V_keep_V->data<long long>(), swr_data_V_strb_V->data<long long>(), swr_data_V_last_V->data<char>(), swr_data_V_dest_V->data<char>(), swr_cmd_V_data_V->data<__cosim_s13__>(), swr_cmd_V_keep_V->data<short>(), swr_cmd_V_strb_V->data<short>(), swr_cmd_V_last_V->data<char>(), swr_cmd_V_dest_V->data<char>(), swr_sts->data<__cosim_s4__>(), srx_V_data_V->data<__cosim_s64__>(), srx_V_keep_V->data<long long>(), srx_V_strb_V->data<long long>(), srx_V_last_V->data<char>(), srx_V_dest_V->data<char>(), stx_V_data_V->data<__cosim_s64__>(), stx_V_keep_V->data<long long>(), stx_V_strb_V->data<long long>(), stx_V_last_V->data<char>(), stx_V_dest_V->data<char>());
srdma_sq->transfer((hls::stream<__cosim_s16__>*)__xlx_apatb_param_rdma_sq);
snotif->transfer((hls::stream<__cosim_s8__>*)__xlx_apatb_param_notif);
ssend_data_V_data_V->transfer((hls::stream<__cosim_s64__>*)__xlx_apatb_param_send_data_V_data_V);
ssend_data_V_keep_V->transfer((hls::stream<long long>*)__xlx_apatb_param_send_data_V_keep_V);
ssend_data_V_strb_V->transfer((hls::stream<long long>*)__xlx_apatb_param_send_data_V_strb_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
ssend_data_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_send_data_V_last_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
ssend_data_V_dest_V->transfer((hls::stream<char>*)__xlx_apatb_param_send_data_V_dest_V);
srecv_data_V_data_V->transfer((hls::stream<__cosim_s64__>*)__xlx_apatb_param_recv_data_V_data_V);
srecv_data_V_keep_V->transfer((hls::stream<long long>*)__xlx_apatb_param_recv_data_V_keep_V);
srecv_data_V_strb_V->transfer((hls::stream<long long>*)__xlx_apatb_param_recv_data_V_strb_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
srecv_data_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_recv_data_V_last_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
srecv_data_V_dest_V->transfer((hls::stream<char>*)__xlx_apatb_param_recv_data_V_dest_V);
swr_data_V_data_V->transfer((hls::stream<__cosim_s64__>*)__xlx_apatb_param_wr_data_V_data_V);
swr_data_V_keep_V->transfer((hls::stream<long long>*)__xlx_apatb_param_wr_data_V_keep_V);
swr_data_V_strb_V->transfer((hls::stream<long long>*)__xlx_apatb_param_wr_data_V_strb_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
swr_data_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_wr_data_V_last_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
swr_data_V_dest_V->transfer((hls::stream<char>*)__xlx_apatb_param_wr_data_V_dest_V);
swr_cmd_V_data_V->transfer((hls::stream<__cosim_s13__>*)__xlx_apatb_param_wr_cmd_V_data_V);
swr_cmd_V_keep_V->transfer((hls::stream<short>*)__xlx_apatb_param_wr_cmd_V_keep_V);
swr_cmd_V_strb_V->transfer((hls::stream<short>*)__xlx_apatb_param_wr_cmd_V_strb_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
swr_cmd_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_wr_cmd_V_last_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
swr_cmd_V_dest_V->transfer((hls::stream<char>*)__xlx_apatb_param_wr_cmd_V_dest_V);
swr_sts->transfer((hls::stream<__cosim_s4__>*)__xlx_apatb_param_wr_sts);
srx_V_data_V->transfer((hls::stream<__cosim_s64__>*)__xlx_apatb_param_rx_V_data_V);
srx_V_keep_V->transfer((hls::stream<long long>*)__xlx_apatb_param_rx_V_keep_V);
srx_V_strb_V->transfer((hls::stream<long long>*)__xlx_apatb_param_rx_V_strb_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
srx_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_rx_V_last_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
srx_V_dest_V->transfer((hls::stream<char>*)__xlx_apatb_param_rx_V_dest_V);
stx_V_data_V->transfer((hls::stream<__cosim_s64__>*)__xlx_apatb_param_tx_V_data_V);
stx_V_keep_V->transfer((hls::stream<long long>*)__xlx_apatb_param_tx_V_keep_V);
stx_V_strb_V->transfer((hls::stream<long long>*)__xlx_apatb_param_tx_V_strb_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
stx_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_tx_V_last_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
stx_V_dest_V->transfer((hls::stream<char>*)__xlx_apatb_param_tx_V_dest_V);
}
