# Validator XSD

## System requirements</h3>  
For local application starting (for development) make sure that you have locally installed next applications:

-   `docker >= 18.0` _(install: `curl -fsSL get.docker.com | sudo sh`)_
-   `docker-compose >= 3` _([installing manual](https://docs.docker.com/compose/install/#install-compose))_
-   `make >= 4.1` _(install: `apt-get install make`)


## Used services

This application uses next services:

-   Mysql
-   Nginx
-   PHP FPM

Declaration of all services can be found into `./docker-compose.yml` file.

## Directory structure
- src - source application
-  config - config services
- data - db data and xsd-files
- images - files from docker build

### Fast application starting

Just execute into your terminal next commands:

```
$ git clone https://github.com/Victor1995fed/docker-xsd-validator.git ./xsd-validator && cd $_
$ make init
```
