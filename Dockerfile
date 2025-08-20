FROM golang:1.22.0-alpine

RUN apk add --no-cache gcc musl-dev

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN go build -o parcel-app .

CMD ["./parcel-app"]

