FROM golang:1.17.0-alpine3.14

ENV PATH=/usr/local/git/bin:$PATH

RUN apk add --no-cache git

WORKDIR ${PATH}

COPY ["./go.mod","./main.go", "/"]

RUN go mod download

CMD go run /main.go