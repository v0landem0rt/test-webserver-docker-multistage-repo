FROM iorfanidi/ubuntu-20.04-gcc-cmake-git as buildier
RUN git clone https://gist.github.com/laobubu/d6d0e9beb934b60b2e552c2d03e1409e
WORKDIR /d6d0e9beb934b60b2e552c2d03e1409e
RUN make

FROM iorfanidi/ubuntu-20.04-gcc-cmake-git
COPY --from=buildier /d6d0e9beb934b60b2e552c2d03e1409e/server /server
CMD ["./server"]
