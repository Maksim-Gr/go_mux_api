FROM golang:1.12-alpine

RUN apk add --no-cache git

WORDIR /app/mux-api

COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN go build -o ./out/mux-api .

EXPOSE 8010

CMD ["./mux-api"]