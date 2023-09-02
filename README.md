# Sandbox Debian Image

This debian image attempts to immitate a standard (non docker) ubuntu 
workstation.

It contains the essential packages pre-installed, and a non root user
(with `sudo` privileges) named `megatron`


## Usage

    $ docker run --rm -it dannyben/debian


## Using it as a base image

Since this image sets the user to `megatron`, if you need to execute commands
that require root access in your image, you need to use this pattern:

```dockerfile
FROM dannyben/debian
USER root

# root stuff goes here

USER megatron
```

---

- [On Docker Hub](https://hub.docker.com/r/dannyben/debian/)
- [On GitHub](https://github.com/DannyBen/docker-debian)

