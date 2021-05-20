## 1.1

```
CONTAINER ID   IMAGE                    COMMAND                  CREATED              STATUS                        PORTS                                            NAMES
71e38060b918   jenkins/jenkins:lts      "/sbin/tini -- /usr/…"   48 seconds ago       Exited (130) 39 seconds ago                                                    sharp_curie
f1495d4387b0   nginx                    "/docker-entrypoint.…"   About a minute ago   Up About a minute             80/tcp                                           compassionate_shtern
fc22886be7a1   nginx                    "/docker-entrypoint.…"   2 minutes ago        Exited (127) 2 minutes ago                                                     sleepy_wilson
fd44cd6c8bd9   nginx                    "/docker-entrypoint.…"   2 minutes ago        Exited (0) 2 minutes ago                                                       sad_payne
44f3be4a1e3f   jenkins/jenkins:lts      "/sbin/tini -- /usr/…"   6 weeks ago          Exited (255) 5 days ago       50000/tcp, 0.0.0.0:8081->8080/tcp                jenkins-local
58195db017d4   portainer/portainer-ce   "/portainer"             7 weeks ago          Up 4 hours                    0.0.0.0:8000->8000/tcp, 0.0.0.0:9000->9000/tcp   portainer
```

## 1.2 

```
➜  devops-doker-2021 git:(main) ✗ docker ps -a                              
CONTAINER ID   IMAGE                    COMMAND                  CREATED       STATUS                    PORTS                                            NAMES
44f3be4a1e3f   jenkins/jenkins:lts      "/sbin/tini -- /usr/…"   6 weeks ago   Exited (255) 5 days ago   50000/tcp, 0.0.0.0:8081->8080/tcp                jenkins-local
58195db017d4   portainer/portainer-ce   "/portainer"             7 weeks ago   Up 4 hours                0.0.0.0:8000->8000/tcp, 0.0.0.0:9000->9000/tcp   portainer
```


```
➜  devops-doker git:(main) ✗ docker image ls             
REPOSITORY                                          TAG       IMAGE ID       CREATED        SIZE
artifjs.jfrog.io/devops101-docker/my-docker-image   latest    6b7f7d691239   3 weeks ago    134MB
jenkins/jenkins                                     lts       1920bf702d7d   5 months ago   713MB
portainer/portainer-ce                              latest    a0a227bf03dd   8 months ago   196MB
```

## 1.3 

```
devops-doker-2021 on  main [?] 
➜ docker container run -it -d devopsdockeruh/simple-web-service:ubuntu
4c57b78d93b2fb50cacc73d327c3081e83695714a0a9b54122af8afa4978b19a

devops-doker-2021 on  main [?] 
➜ docker ps -a                       
CONTAINER ID   IMAGE                                      COMMAND                  CREATED          STATUS                      PORTS                                                                                  NAMES
4c57b78d93b2   devopsdockeruh/simple-web-service:ubuntu   "/usr/src/app/server"    30 seconds ago   Up 29 seconds                                                                                                      elastic_carson
44f3be4a1e3f   jenkins/jenkins:lts                        "/sbin/tini -- /usr/…"   5 months ago     Exited (143) 3 months ago                                                                                          jenkins-local
58195db017d4   portainer/portainer-ce                     "/portainer"             5 months ago     Up 23 hours                 0.0.0.0:8000->8000/tcp, :::8000->8000/tcp, 0.0.0.0:9000->9000/tcp, :::9000->9000/tcp   portainer
```


```
devops-doker-2021 on  main [?] 
➜ docker container exec -it elastic_carson bash
root@4c57b78d93b2:/usr/src/app# tail -f ./text.log 
2021-05-20 08:23:39 +0000 UTC
2021-05-20 08:23:41 +0000 UTC
2021-05-20 08:23:43 +0000 UTC
2021-05-20 08:23:45 +0000 UTC
2021-05-20 08:23:47 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
```

## 1.4 

```
docker container run -it --rm ubuntu:16.04 sh -c 'apt-get update; apt-get -y install curl; echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website;'
```

### 1.5

```
devops-doker-2021 on  main [?] 
➜ docker pull devopsdockeruh/simple-web-service:alpine
```

```
devops-doker-2021 on  main [?] took 11s 
➜ docker images 
REPOSITORY                                          TAG       IMAGE ID       CREATED        SIZE
ubuntu                                              16.04     9ff95a467e45   13 hours ago   135MB
artifjs.jfrog.io/devops101-docker/my-docker-image   latest    6b7f7d691239   3 weeks ago    134MB
devopsdockeruh/simple-web-service                   ubuntu    4e3362e907d5   2 months ago   83MB
devopsdockeruh/simple-web-service                   alpine    fd312adc88e0   2 months ago   15.7MB
```

```
evops-doker-2021 on  main [?] 
➜ docker ps -a                                                                                                                                                           
CONTAINER ID   IMAGE                                      COMMAND                  CREATED          STATUS                      PORTS                                                                                  NAMES
8f586a0e9ab6   devopsdockeruh/simple-web-service:alpine   "/usr/src/app/server"    48 seconds ago   Up 47 seconds                                                                                                      happy_newton
4c57b78d93b2   devopsdockeruh/simple-web-service:ubuntu   "/usr/src/app/server"    12 minutes ago   Up 12 minutes                                                                                                      elastic_carson
44f3be4a1e3f   jenkins/jenkins:lts                        "/sbin/tini -- /usr/…"   5 months ago     Exited (143) 3 months ago                                                                                          jenkins-local
58195db017d4   portainer/portainer-ce                     "/portainer"             5 months ago     Up 23 hours                 0.0.0.0:8000->8000/tcp, :::8000->8000/tcp, 0.0.0.0:9000->9000/tcp, :::9000->9000/tcp   portainer
```

```
devops-doker-2021 on  main [?] 
➜ docker container exec -it happy_newton sh  
/usr/src/app # tail -f ./
server    text.log
/usr/src/app # tail -f ./
server    text.log
/usr/src/app # tail -f ./text.log 
2021-05-20 08:34:55 +0000 UTC
2021-05-20 08:34:57 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
```

### 1.6

```
devops-doker-2021 on  main [?] took 1m 47s 
➜ docker container run -it devopsdockeruh/pull_exercise
Unable to find image 'devopsdockeruh/pull_exercise:latest' locally
latest: Pulling from devopsdockeruh/pull_exercise
8e402f1a9c57: Pull complete 
5e2195587d10: Pull complete 
6f595b2fc66d: Pull complete 
165f32bf4e94: Pull complete 
67c4f504c224: Pull complete 
Digest: sha256:7c0635934049afb9ca0481fb6a58b16100f990a0d62c8665b9cfb5c9ada8a99f
Status: Downloaded newer image for devopsdockeruh/pull_exercise:latest
Give me the password: basic
basic is not the correct password, please try again

Give me the password: basics
You found the correct password. Secret message is:
"This is the secret message"
```