FROM alpine


RUN apk update 
RUN apk add bash build-base libcurl curl-dev libxml2-dev fuse-dev git automake autoconf libtool
RUN git clone https://github.com/s3fs-fuse/s3fs-fuse.git
RUN cd s3fs-fuse && ./autogen.sh && ./configure --prefix=/usr --with-openssl && make && make install && s3fs --version && s3fs --version

