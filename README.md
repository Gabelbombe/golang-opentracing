# Example Opentracing App

## Building


Make sure that you have Go installed, then run `go build`. If you are missing
dependencies, run `go get ./...`. Alternatively, you can build the application
using docker by running `scripts/docker_build.sh`.

## Running
This is a trivial example app that demonstrates how OpenTracing can be
used with!

To run the program, run `./golang-opentracing`. This will, by default,
start a new Appdash server and write all of your traces to it. However,
if you want to use a different tracer system, i.e. LightStep, all you have
to do is pass the flag `--lightstep.token=ACCESS_TOKEN`.

### Docker
If you're having issues building your container, [follow this tutorial](https://www.callicoder.com/docker-golang-image-container-example/). Build the container with `docker build -t golang-opentracing-volume -f Dockerfile.volume .` If you run the docker image, you might not be able to
access the various endpoints through localhost. If using docker machine.
`docker-machine ip MY_MACHINE` will give you the IP you should access the
addresses at, i.e. `123.45.67.123:8700/traces`.

## Todo
* Add a second process that's in a different language, i.e. python.

# Screenshots
### Appdash
![alt text](/assets/appdash.png)

### Lightstep
![Lightstep](/assets/lightstep.png)
