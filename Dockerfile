FROM alpine:3.10.3

RUN apk --no-cache add \
      g++ \
      chrpath \
      musl-dev \
      python3-dev \
      bash \
      vim 

RUN pip3 install --upgrade pip
RUN pip3 install nuitka

RUN cd $( dirname $(which nuitka3) ) && ln -s $PWD/nuitka3 nuitka

CMD bash

