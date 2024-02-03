# Laravel 10 Docker Boilerplate

## Building and Starting the Docker

To build and start the Docker containers, run the following command:

`docker-compose up -d --build`

## (M1, M2, M3 Mac's)
To start the boilerplate on other environments than a M1 Mac. please remove the line: 

`platform: linux/amd64`

From the docker-compose.yaml.  Remove this also from the apache-php container as the mariadb container. 

