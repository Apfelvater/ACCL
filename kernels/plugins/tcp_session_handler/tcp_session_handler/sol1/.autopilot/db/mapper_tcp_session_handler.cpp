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
unsigned int ap_apatb_listen_port_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_listen_port_V_data_V_V_size_Reader("../tv/stream_size/stream_size_out_listen_port_V_data_V.dat");
unsigned int ap_apatb_listen_port_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_listen_port_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_out_listen_port_V_keep_V.dat");
unsigned int ap_apatb_listen_port_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_listen_port_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_out_listen_port_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_listen_port_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_listen_port_V_last_V_V_size_Reader("../tv/stream_size/stream_size_out_listen_port_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_port_status_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_port_status_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_port_status_V_data_V.dat");
unsigned int ap_apatb_port_status_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_port_status_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_port_status_V_keep_V.dat");
unsigned int ap_apatb_port_status_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_port_status_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_port_status_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_port_status_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_port_status_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_port_status_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_open_connection_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_open_connection_V_data_V_V_size_Reader("../tv/stream_size/stream_size_out_open_connection_V_data_V.dat");
unsigned int ap_apatb_open_connection_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_open_connection_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_out_open_connection_V_keep_V.dat");
unsigned int ap_apatb_open_connection_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_open_connection_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_out_open_connection_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_open_connection_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_open_connection_V_last_V_V_size_Reader("../tv/stream_size/stream_size_out_open_connection_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_close_connection_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_close_connection_V_data_V_V_size_Reader("../tv/stream_size/stream_size_out_close_connection_V_data_V.dat");
unsigned int ap_apatb_close_connection_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_close_connection_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_out_close_connection_V_keep_V.dat");
unsigned int ap_apatb_close_connection_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_close_connection_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_out_close_connection_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_close_connection_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_close_connection_V_last_V_V_size_Reader("../tv/stream_size/stream_size_out_close_connection_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_open_status_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_open_status_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_open_status_V_data_V.dat");
unsigned int ap_apatb_open_status_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_open_status_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_open_status_V_keep_V.dat");
unsigned int ap_apatb_open_status_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_open_status_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_open_status_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_open_status_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_open_status_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_open_status_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
using hls::sim::Byte;
struct __cosim_s16__ { char data[16]; };
extern "C" void tcp_session_handler(int, int, char, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, , volatile void *, , , volatile void *, volatile void *, volatile void *, , volatile void *, , , volatile void *, volatile void *, volatile void *, , volatile void *, , , volatile void *, volatile void *, volatile void *, , volatile void *, , , volatile void *, volatile void *, volatile void *, , volatile void *, , );
extern "C" void apatb_tcp_session_handler_hw(int __xlx_apatb_param_ip, int __xlx_apatb_param_port_nr, char __xlx_apatb_param_close, volatile void * __xlx_apatb_param_session_id, volatile void * __xlx_apatb_param_success, volatile void * __xlx_apatb_param_listen_port_V_data_V, volatile void * __xlx_apatb_param_listen_port_V_keep_V, volatile void * __xlx_apatb_param_listen_port_V_strb_V, volatile void * __xlx_apatb_param_listen_port_V_last_V, volatile void * __xlx_apatb_param_port_status_V_data_V, volatile void * __xlx_apatb_param_port_status_V_keep_V, volatile void * __xlx_apatb_param_port_status_V_strb_V, volatile void * __xlx_apatb_param_port_status_V_last_V, volatile void * __xlx_apatb_param_open_connection_V_data_V, volatile void * __xlx_apatb_param_open_connection_V_keep_V, volatile void * __xlx_apatb_param_open_connection_V_strb_V, volatile void * __xlx_apatb_param_open_connection_V_last_V, volatile void * __xlx_apatb_param_close_connection_V_data_V, volatile void * __xlx_apatb_param_close_connection_V_keep_V, volatile void * __xlx_apatb_param_close_connection_V_strb_V, volatile void * __xlx_apatb_param_close_connection_V_last_V, volatile void * __xlx_apatb_param_open_status_V_data_V, volatile void * __xlx_apatb_param_open_status_V_keep_V, volatile void * __xlx_apatb_param_open_status_V_strb_V, volatile void * __xlx_apatb_param_open_status_V_last_V) {
using hls::sim::createStream;
  //Create input buffer for listen_port_V_data_V
  ap_apatb_listen_port_V_data_V_cap_bc = __xlx_listen_port_V_data_V_V_size_Reader.read_size();
  short* __xlx_listen_port_V_data_V_input_buffer= new short[ap_apatb_listen_port_V_data_V_cap_bc];
auto* slisten_port_V_data_V = createStream((hls::stream<short>*)__xlx_apatb_param_listen_port_V_data_V);
  //Create input buffer for listen_port_V_keep_V
  ap_apatb_listen_port_V_keep_V_cap_bc = __xlx_listen_port_V_keep_V_V_size_Reader.read_size();
  char* __xlx_listen_port_V_keep_V_input_buffer= new char[ap_apatb_listen_port_V_keep_V_cap_bc];
auto* slisten_port_V_keep_V = createStream((hls::stream<char>*)__xlx_apatb_param_listen_port_V_keep_V);
  //Create input buffer for listen_port_V_strb_V
  ap_apatb_listen_port_V_strb_V_cap_bc = __xlx_listen_port_V_strb_V_V_size_Reader.read_size();
  char* __xlx_listen_port_V_strb_V_input_buffer= new char[ap_apatb_listen_port_V_strb_V_cap_bc];
auto* slisten_port_V_strb_V = createStream((hls::stream<char>*)__xlx_apatb_param_listen_port_V_strb_V);
  //Create input buffer for listen_port_V_last_V
  ap_apatb_listen_port_V_last_V_cap_bc = __xlx_listen_port_V_last_V_V_size_Reader.read_size();
  char* __xlx_listen_port_V_last_V_input_buffer= new char[ap_apatb_listen_port_V_last_V_cap_bc];
auto* slisten_port_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_listen_port_V_last_V);
auto* sport_status_V_data_V = createStream((hls::stream<char>*)__xlx_apatb_param_port_status_V_data_V);
auto* sport_status_V_keep_V = createStream((hls::stream<char>*)__xlx_apatb_param_port_status_V_keep_V);
auto* sport_status_V_strb_V = createStream((hls::stream<char>*)__xlx_apatb_param_port_status_V_strb_V);
auto* sport_status_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_port_status_V_last_V);
  //Create input buffer for open_connection_V_data_V
  ap_apatb_open_connection_V_data_V_cap_bc = __xlx_open_connection_V_data_V_V_size_Reader.read_size();
  long long* __xlx_open_connection_V_data_V_input_buffer= new long long[ap_apatb_open_connection_V_data_V_cap_bc];
auto* sopen_connection_V_data_V = createStream((hls::stream<long long>*)__xlx_apatb_param_open_connection_V_data_V);
  //Create input buffer for open_connection_V_keep_V
  ap_apatb_open_connection_V_keep_V_cap_bc = __xlx_open_connection_V_keep_V_V_size_Reader.read_size();
  char* __xlx_open_connection_V_keep_V_input_buffer= new char[ap_apatb_open_connection_V_keep_V_cap_bc];
auto* sopen_connection_V_keep_V = createStream((hls::stream<char>*)__xlx_apatb_param_open_connection_V_keep_V);
  //Create input buffer for open_connection_V_strb_V
  ap_apatb_open_connection_V_strb_V_cap_bc = __xlx_open_connection_V_strb_V_V_size_Reader.read_size();
  char* __xlx_open_connection_V_strb_V_input_buffer= new char[ap_apatb_open_connection_V_strb_V_cap_bc];
auto* sopen_connection_V_strb_V = createStream((hls::stream<char>*)__xlx_apatb_param_open_connection_V_strb_V);
  //Create input buffer for open_connection_V_last_V
  ap_apatb_open_connection_V_last_V_cap_bc = __xlx_open_connection_V_last_V_V_size_Reader.read_size();
  char* __xlx_open_connection_V_last_V_input_buffer= new char[ap_apatb_open_connection_V_last_V_cap_bc];
auto* sopen_connection_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_open_connection_V_last_V);
  //Create input buffer for close_connection_V_data_V
  ap_apatb_close_connection_V_data_V_cap_bc = __xlx_close_connection_V_data_V_V_size_Reader.read_size();
  short* __xlx_close_connection_V_data_V_input_buffer= new short[ap_apatb_close_connection_V_data_V_cap_bc];
auto* sclose_connection_V_data_V = createStream((hls::stream<short>*)__xlx_apatb_param_close_connection_V_data_V);
  //Create input buffer for close_connection_V_keep_V
  ap_apatb_close_connection_V_keep_V_cap_bc = __xlx_close_connection_V_keep_V_V_size_Reader.read_size();
  char* __xlx_close_connection_V_keep_V_input_buffer= new char[ap_apatb_close_connection_V_keep_V_cap_bc];
auto* sclose_connection_V_keep_V = createStream((hls::stream<char>*)__xlx_apatb_param_close_connection_V_keep_V);
  //Create input buffer for close_connection_V_strb_V
  ap_apatb_close_connection_V_strb_V_cap_bc = __xlx_close_connection_V_strb_V_V_size_Reader.read_size();
  char* __xlx_close_connection_V_strb_V_input_buffer= new char[ap_apatb_close_connection_V_strb_V_cap_bc];
auto* sclose_connection_V_strb_V = createStream((hls::stream<char>*)__xlx_apatb_param_close_connection_V_strb_V);
  //Create input buffer for close_connection_V_last_V
  ap_apatb_close_connection_V_last_V_cap_bc = __xlx_close_connection_V_last_V_V_size_Reader.read_size();
  char* __xlx_close_connection_V_last_V_input_buffer= new char[ap_apatb_close_connection_V_last_V_cap_bc];
auto* sclose_connection_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_close_connection_V_last_V);
auto* sopen_status_V_data_V = createStream((hls::stream<__cosim_s16__>*)__xlx_apatb_param_open_status_V_data_V);
auto* sopen_status_V_keep_V = createStream((hls::stream<short>*)__xlx_apatb_param_open_status_V_keep_V);
auto* sopen_status_V_strb_V = createStream((hls::stream<short>*)__xlx_apatb_param_open_status_V_strb_V);
auto* sopen_status_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_open_status_V_last_V);
  // DUT call
  tcp_session_handler(__xlx_apatb_param_ip, __xlx_apatb_param_port_nr, __xlx_apatb_param_close, __xlx_apatb_param_session_id, __xlx_apatb_param_success, slisten_port_V_data_V->data<short>(), slisten_port_V_keep_V->data<char>(), slisten_port_V_strb_V->data<char>(), slisten_port_V_last_V->data<char>(), sport_status_V_data_V->data<char>(), sport_status_V_keep_V->data<char>(), sport_status_V_strb_V->data<char>(), sport_status_V_last_V->data<char>(), sopen_connection_V_data_V->data<long long>(), sopen_connection_V_keep_V->data<char>(), sopen_connection_V_strb_V->data<char>(), sopen_connection_V_last_V->data<char>(), sclose_connection_V_data_V->data<short>(), sclose_connection_V_keep_V->data<char>(), sclose_connection_V_strb_V->data<char>(), sclose_connection_V_last_V->data<char>(), sopen_status_V_data_V->data<__cosim_s16__>(), sopen_status_V_keep_V->data<short>(), sopen_status_V_strb_V->data<short>(), sopen_status_V_last_V->data<char>());
slisten_port_V_data_V->transfer((hls::stream<short>*)__xlx_apatb_param_listen_port_V_data_V);
slisten_port_V_keep_V->transfer((hls::stream<char>*)__xlx_apatb_param_listen_port_V_keep_V);
slisten_port_V_strb_V->transfer((hls::stream<char>*)__xlx_apatb_param_listen_port_V_strb_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
slisten_port_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_listen_port_V_last_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
sport_status_V_data_V->transfer((hls::stream<char>*)__xlx_apatb_param_port_status_V_data_V);
sport_status_V_keep_V->transfer((hls::stream<char>*)__xlx_apatb_param_port_status_V_keep_V);
sport_status_V_strb_V->transfer((hls::stream<char>*)__xlx_apatb_param_port_status_V_strb_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
sport_status_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_port_status_V_last_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
sopen_connection_V_data_V->transfer((hls::stream<long long>*)__xlx_apatb_param_open_connection_V_data_V);
sopen_connection_V_keep_V->transfer((hls::stream<char>*)__xlx_apatb_param_open_connection_V_keep_V);
sopen_connection_V_strb_V->transfer((hls::stream<char>*)__xlx_apatb_param_open_connection_V_strb_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
sopen_connection_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_open_connection_V_last_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
sclose_connection_V_data_V->transfer((hls::stream<short>*)__xlx_apatb_param_close_connection_V_data_V);
sclose_connection_V_keep_V->transfer((hls::stream<char>*)__xlx_apatb_param_close_connection_V_keep_V);
sclose_connection_V_strb_V->transfer((hls::stream<char>*)__xlx_apatb_param_close_connection_V_strb_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
sclose_connection_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_close_connection_V_last_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
sopen_status_V_data_V->transfer((hls::stream<__cosim_s16__>*)__xlx_apatb_param_open_status_V_data_V);
sopen_status_V_keep_V->transfer((hls::stream<short>*)__xlx_apatb_param_open_status_V_keep_V);
sopen_status_V_strb_V->transfer((hls::stream<short>*)__xlx_apatb_param_open_status_V_strb_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
sopen_status_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_open_status_V_last_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
}
