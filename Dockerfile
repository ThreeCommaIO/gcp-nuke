FROM golang:latest as builder
WORKDIR /src
COPY go.mod .
RUN go mod download

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app

FROM alpine:latest
COPY --from=builder /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt
COPY --from=builder /src/app /go/bin/app
ENTRYPOINT [ "/go/bin/app" ]



