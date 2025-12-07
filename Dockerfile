FROM golang:1.21-alpine
WORKDIR /app
COPY . .
RUN go mod init ip-checker || true
RUN go build -o main .
EXPOSE 8000
CMD ["./main"]
