FROM zhoumingjun/bazel

MAINTAINER zhoumingjun <zhoumingjun@gmail.com>

RUN git clone https://github.com/apache/thrift.git /opt/thrift && \
    sed -i 's/lua_rawlen/lua_objlen/g' /opt/thrift/lib/lua/src/luabpack.c && \
    cd /opt/thrift && \
    ./bootstrap.sh && \
    ./configure && \
    make && \
    cp /opt/thrift/lib/lua/.libs/* /usr/local/lib
