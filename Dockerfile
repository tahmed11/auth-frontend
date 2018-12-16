FROM ubuntu:14.04
MAINTAINER Tanvir Ahmed 
RUN apt-get update
RUN apt-get -y upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install git curl

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs 

# setup auth-frontend
# Copy the current directory contents into the container at /app
ADD . /auth-frontend
RUN git clone 'https://github.com/tahmed11/auth-frontend.git'
WORKDIR /auth-frontend
RUN npm init
RUN chmod 755 /start.sh

EXPOSE 3000
CMD ["/bin/bash", "/start.sh"]
