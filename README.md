你好！
很冒昧用这样的方式来和你沟通，如有打扰请忽略我的提交哈。我是光年实验室（gnlab.com）的HR，在招Golang开发工程师，我们是一个技术型团队，技术氛围非常好。全职和兼职都可以，不过最好是全职，工作地点杭州。
我们公司是做流量增长的，Golang负责开发SAAS平台的应用，我们做的很多应用是全新的，工作非常有挑战也很有意思，是国内很多大厂的顾问。
如果有兴趣的话加我微信：13515810775  ，也可以访问 https://gnlab.com/，联系客服转发给HR。
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
