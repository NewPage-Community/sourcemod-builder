# SourceMod Builder

SourceMod plugins building environment

## Usage

```shell
docker pull newpagecommunity/sourcemod-builder
```

We also recommend you to use our `makefile` to build your plugins!

Only test in GitLab CI 😉

## GitLab CI settings

```yml
# This file is a template, and might need editing before it works on your project.

before_script:
  - make env

build-1.10:
  image: newpagecommunity/sourcemod-builder:latest
  stage: build
  variables:
    SOURCEMOD_VERSION: "1.10"
  script:
    - make build
  only:
    - master
  artifacts:
    expire_in: 1 week
    paths:
      - compiled/*

```
