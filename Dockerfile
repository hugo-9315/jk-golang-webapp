FROM golang:1.19.8
WORKDIR /app
COPY ./ /app
RUN go mod tidy
RUN go mod download github.com/josharian/intern
RUN go build -x -v -o /main
EXPOSE 8080
CMD ["/main"]
