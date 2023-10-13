# Docker basics 
This repository provides a guide on using basic Docker commands and serves as a starting point for Docker usage.
### Building an Image from the Dockerfile
To build a Docker image from the Dockerfile, use the following command:


```
docker build . -t dcnavarros/docker-practice
```
Using the -t flag allows you to tag your build with a name that can be used to reference it later.
### Creating a Container with the Docker Image
To create a container using the Docker image, run:
```
docker run -p 8050:8000 dcnavarros/docker-practice
```

### Testing the Container
After running the container, you can test it using curl. For example:


```
curl -X POST -H "Accept: application/json" -H "Content-Type: application/json" "http://localhost:8050/add" -d "{\"number1\":10, \"number2\":20}"

```

### docker ps
To list the active and running containers along with their Container ID and base Image, use:

```
docker ps
```

This command returns a list of containers that are currently active and running. It returns information about the Container ID and the base Image for the container

### docker start
To start a previously stopped container, use:

```
docker start <id>
```

This command starts up a container that may have been previously shut down or stopped. We pass the container ID as an argument.Replace <id> with the container ID.
### docker stop
To stop a running container, use:
```
docker stop <id>
```

## Docker Image Management

### Docker push

This command takes the image you created for a certain Dockerfile and pushes it to Docker Hub. To push the created image to Docker Hub for global access, use:


```
docker push dcnavarros/docker-practice
```

### Docker pull
The inverse of the docker push command will allow you to pull any Docker image you may have access to. This enables you to use the image and create containers
```
docker pull dcnavarros/docker-practice
```

## Advanced 'docker run' Options

### docker run
The docker run command creates a new container based on a specified image and offers several configurable options:

Use -p or --publish to bind a container port to a local machine port.
Use -d or --detach to run the container in the background.
Use --cpus to specify the number of CPU cores for the container.
Use --memory to specify the amount of memory the container can use.
Use --gpus to specify available GPUs for the container.


```
docker run -p 8000:8000 -–cpus 1 -–gpus all dcnavarros/docker-practice
```


