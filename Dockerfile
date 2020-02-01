FROM golang:1.13.7 AS build
ADD . /src
WORKDIR /src
RUN echo $GOPATH
RUN make linux

FROM scratch
EXPOSE 8080
ENTRYPOINT ["/go-demo-9"]
COPY --from=build /src/bin/go-demo-9 /go-demo-9
