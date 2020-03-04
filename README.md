# flask-docker-hello-world

This is a dockerized flask hello-world. The only thing it does it to install `Flask` and implements Flask's [hello-world example](https://palletsprojects.com/p/flask/). You can run and build this locally like this:

```
# build
docker build -t flask-hello-world:latest .

# run
docker run -d -p 5000:5000 flask-hello-world

# verify
curl localhost:5000
```

It's also pushed to [hub.docker.com](https://hub.docker.com/repository/docker/srecnig/flask-hello-world), and you can try it out by installing it from there:

```
# run
docker run -p 5000:5000 srecnig/flask-hello-world:0.1.0

# verify
curl localhost:5000
```
