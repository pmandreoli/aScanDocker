FROM alpine:3.12.0

RUN apk add git gsl boost-dev zlib zlib-dev cmake make g++ gsl-dev

RUN git clone https://github.com/Federico77z/aScan.git

RUN cd aScan/bamtools; mkdir build;  cd build; cmake .. ; make

RUN cd /aScan;  g++ aScan_dev.cpp -o aScan \
-I bamtools/src/ -lbamtools -L bamtools/build/src/api \
-lgsl -lgslcblas -lz -std=c++11 -Wall -pthread -O2;\
 mv aScan /bin/

WORKDIR /home

ENTRYPOINT ["aScan"]

