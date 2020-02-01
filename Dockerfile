FROM scratch
EXPOSE 8080
ENTRYPOINT ["/go-demo-9"]
COPY ./bin/ /