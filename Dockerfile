FROM golang:1.18 as builder

WORKDIR /go/src/app
COPY . .

RUN go mod download
RUN CGO_ENABLED=0 go build -o /go/bin/http-echo

FROM gcr.io/distroless/static-debian12:nonroot
COPY --from=builder /go/bin/http-echo /
CMD ["/http-echo"]
