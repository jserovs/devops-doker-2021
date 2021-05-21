FROM ubuntu:18.04
RUN apt-get update; apt-get -y install curl;

WORKDIR /curler

COPY curl-my-website.sh .
CMD ["./curl-my-website.sh"]