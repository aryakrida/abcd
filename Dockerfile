WORKDIR /go/src/app
COPY maingo.go .
RUN go build -o main .
EXPOSE 8000
CMD ["./main"]
