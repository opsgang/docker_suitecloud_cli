# opsgang/suitecloud-cli

SuiteCloud Command Line Interface (CLI) for NodeJs and OpenJDK

## Problem Statement

Oracle Netsuite SuiteCloud has a CLI which depends on Nodejs an JDK. Neither are desired
to be directly present on a host OS, hence this container image.

## Usage

```sh
docker run \
  --rm \
  -it \
  -v $HOME/.suitecloud-sdk:/home/suitecloud/.suitecloud-sdk:z \
  -v $(pwd):/workspace:z -w /workspace opsgang/suitecloud-cli:edge [command]
```

or you can just create a shell alias and use that:

```sh
alias suitecloud-cli="docker run --rm -it -v $HOME/.suitecloud-sdk:/home/suitecloud/.suitecloud-sdk:z -v $(pwd):/workspace:z -w /workspace opsgang/suitecloud-cli:edge"
```
then e.g.

```sh
suitecloud-cli cproject:create -i
```

The `suitecloud-cli` runs with the conventional uid 1000 by default.
Feel free to change it with the `-u [num]` docker parameter.

## Installed packages

* Debian Bullseye Slim
* Node.js v16.13.0-deb-1nodesource1
* JDK 11
* @oracle/suitecloud-cli v1.3.1

## Testing

Use it with confidence. Scanned with Acquasec Trivy and Anchore Grype before
pushing it to Docker Hub.

## Links

* [@oracle/suitecloud-cli on NPM.io](https://npm.io/package/@oracle/suitecloud-cli)
* [opsgang/suitecloud-cli on Docker Hub](https://hub.docker.com/r/opsgang/suitecloud-cli)
* [Dockerfile](https://github.com/opsgang/docker_suitecloud_cli/blob/main/Dockerfile)
* [Build pipeline](https://github.com/opsgang/docker_suitecloud_cli/tree/main/.github/workflows)
