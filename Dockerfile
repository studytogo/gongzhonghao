FROM golang:latest
  
MAINTAINER jcc

ENV TZ Asia/Shanghai

RUN echo 'Asia/Shanghai' >/etc/timezone

ENV GOPROXY https://goproxy.io/

ENV GO111MODULE on

WORKDIR $GOPATH/src/gongzhonghaoTest

ADD . .

#RUN go mod vendor

EXPOSE 8080

#ENV GO111MODULE off

#CMD bee run -gendoc=true

CMD go run main.go