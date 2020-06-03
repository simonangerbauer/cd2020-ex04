FROM golang:1.11-alpine

LABEL maintainer="Simon Angerbauer <simon.angerbauer@gmx.at>"

WORKDIR /src

COPY *.go ./

RUN CGO_ENABLED=0 go build -o /usr/myapp

EXPOSE 8888

CMD ["/usr/myapp"]
