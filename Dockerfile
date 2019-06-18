# Dockerfile References: https://docs.docker.com/engine/reference/builder/

# Start from golang v1.11 base image
FROM golang:1.11

# Add Maintainer Info
LABEL maintainer="Gabelbombe <dodomeki@gmail.com>"


# Build Args
ARG APP_NAME=golang-opentracing
ARG LOG_DIR=/${APP_NAME}/logs

# Create Log Directory
RUN mkdir -p ${LOG_DIR}

# Environment Variables
ENV LOG_FILE_LOCATION=${LOG_DIR}/app.log

# Set the Current Working Directory inside the container
WORKDIR $GOPATH/src/github.com/Gabelbombe/golang-opentracing

# Copy everything from the current directory to the PWD(Present Working Directory) inside the container
COPY . .

# Download dependencies
RUN go get -d -v ./...

# Install the package
RUN go install -v ./...

# This container exposes port 8080 to the outside world
EXPOSE 8080

# Declare volumes to mount
VOLUME ["/golang-opentracing/logs"]

# Run the binary program produced by `go install`
CMD ["golang-opentracing"]
