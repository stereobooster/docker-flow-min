# Docker Flow Minimal

Inspired by [mdlavin/docker-flow](https://github.com/mdlavin/docker-flow) but smaller.

## Why

This container allows for the execution of Docker on machines
without pre-compiled Flow binaries. For example, if you have a Jenkins
slave based on Alpine Linux without glibc then you could run flow
against a project by executing the following command:

## Usage

```
docker run -v $(pwd):/opt/project -w /opt/project stereobooster/flow
```

## Development

```
docker build -t flow .
docker tag flow stereobooster/flow
docker push stereobooster/flow
```