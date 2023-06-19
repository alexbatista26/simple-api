FROM golang:1.12.4-alpine

ENV GO111MODULE=on

COPY main.go /go/src/

WORKDIR /go

RUN go build -o bin/main src/main.go

CMD ["/go/bin/main"]
