From golang:1.21

WORKDIR /go/src/app

COPY . .

RUN go mod download

RUN go build -o main main.go

CMD ["./main"]