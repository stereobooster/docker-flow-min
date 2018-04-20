# Docker Flow Min [![Build Status](https://travis-ci.org/stereobooster/docker-flow-min.svg?branch=master)](https://travis-ci.org/stereobooster/docker-flow-min)

Inspired by [mdlavin/docker-flow](https://github.com/mdlavin/docker-flow) but smaller.

```
stereobooster/flow              latest              a115f2580dd4        2 minutes ago       35.9MB
stereobooster/flow-watch        latest              bee6f1b55063        3 minutes ago       72.1MB
mdlavin/flow                    latest              39310684f5aa        8 months ago        697MB
```

## Why

This container allows for the execution of Docker on machines
without pre-compiled Flow binaries. For example, if you have a Jenkins
slave based on Alpine Linux without glibc then you could run flow
against a project by executing the following command:

## Usage

```
docker run -v $(pwd):/opt/project -w /opt/project stereobooster/flow-watch
```

## Development

```
docker build -t flow-watch .
docker tag flow-watch stereobooster/flow-watch
docker push stereobooster/flow-watch
```