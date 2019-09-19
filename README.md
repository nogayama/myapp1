# myapp1


[Encrypting environment variables](https://docs.travis-ci.com/user/environment-variables#encrypting-environment-variables)

- [Travis CI Org](https://travis-ci.org)
- [Docker Hub](https://hub.docker.com)

nogayama	ShinkawasakiSquare

1. Write Dockerfile
2. Write .travis.yml

```yaml
language: bash

services:
  - docker

before_install:
  - docker image build --tag nogayama/test1:latest .

script:
  - echo hello
```

1. Go [Travis CI Org](https://travis-ci.org) with Github authentication
2. Enable travis

![enable travis](docs/imgs/enable_travis.png)
![enabled_travis_on_github](docs/imgs/enabled_travis_on_github.png)


1. push すると，テストが動く

1. `gem install travis`
2. `travis login --org`
3. edit .travis.yml by travis command
	
	```bash
	$ travis encrypt DOCKER_USERNAME=nogayama --add env.global
	$ travis encrypt DOCKER_PASSWORD=PASSWORD --add env.global
	```
