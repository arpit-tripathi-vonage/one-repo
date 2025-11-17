# Docker

# Concepts

[Dockerhub](hub.docker.com){:target}


## Dockerfile

```bash
# file: Dockerfile


```

## Docker Compose

Need an OS with Java installed - One such image is amazoncorretto
amazoncorretto - different images for same java version based on feature included
- alpine : 

```yaml
# file: docker-compose.yml
FROM amazoncorretto:21.0.2-alpine3.19       # Base image to provide os and jdk
COPY build/libs/my-app.jar app.jar          # copy the jar to root of the OS
ENTRYPOINT ["java","-jar","/app.jar"]       # java -jar build/libs/app.jar

docker build -t a04t/imagename:v01 .        # intel
docker build  --platform linux/amd64 -t a04t/imagename:v01 . # mac chips
```

