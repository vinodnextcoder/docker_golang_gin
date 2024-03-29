From golang:1.21

# Set destination for COPY
WORKDIR /app

COPY . .

RUN go mod download

RUN go build -o main main.go

CMD ["./main"]