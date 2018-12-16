# Auth frontend docker container
Frontend docker container in React for auth integration with AWS cognito, API gateway and Lambda demo.

Usage:
1. git clone https://github.com/tahmed11/auth-frontend.git
2. Include your enviornment variables in input.env
3. Build and run the docker container

docker build -t authfrontend .
docker run -d --name authfrontend -p 3000:3000 authfrontend
