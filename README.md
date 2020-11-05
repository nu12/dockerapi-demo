# Dockerapi-demo

This is a companion to my article about `dockerapi` (link coming soon).

Build and deploy locally installing Docker, Ruby and Rails or deploy with Docker with the following commands:

```shell
$ docker build -t dockerapi-demo:latest .
$ docker run -d -p 3000:3000 --name=dockerapi-demo -v /var/run/docker.sock:/var/run/docker.sock dockerapi-demo:latest
```