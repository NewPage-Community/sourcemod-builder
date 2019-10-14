# Sourcemod Builder

## Usage

`docker pull registry.new-page.io/newpage/sourcemod-builder:latest`

> for our gitlab-ci use `$CI_REGISTRY/newpage/sourcemod-builder:latest` to replace

We also recommend you to use our `makefile` to build your plugins!

Only test in gitlab ci 😉

## GitLab CI settings

```yml
# This file is a template, and might need editing before it works on your project.

before_script:
  - make env

build-1.10:
  image: $CI_REGISTRY/newpage/sourcemod-builder:latest
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
