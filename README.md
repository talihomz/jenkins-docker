# jenkins-docker
Jenkins Docker image that adds installation of Git, Maven, Docker, default-jdk and Node.js, plus the Jenkins Git SCM and Docker build step plugins.

## Run

```
docker-compose up
```

 * runs a container;
 * maps the host port 8080 to the container port 8080;
 * sets an "always" restart policy;
 * maps the host folder /home/ubuntu/jenkins into the container as the Jenkins home folder; and
 * adds the Docker host to the container `/etc/hosts` file so that Jenkins can access the Docker API
 * names the image jenkins.

## Coming soon