FROM alpine
COPY golang-opentracing /home/golang-opentracing

ENTRYPOINT ["/home/golang-opentracing"]
