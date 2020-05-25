FROM golang:alpine AS builder
WORKDIR /app
COPY . .
RUN go build -o main .

# Build a small image
FROM alpine
COPY --from=builder /app/main /
EXPOSE 8090
# Command to run
ENTRYPOINT ["/main"]