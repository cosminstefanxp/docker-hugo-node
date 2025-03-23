# Hugo & Node Docker Image

Light docker container, designed for CI, for building [Hugo](https://gohugo.io) and [NodeJS](https://nodejs.org) apps.
Optionally comes with [Firebase CLI](https://firebase.google.com/docs/cli) installed.

## Tools

The image is based on [node:22-alpine](https://hub.docker.com/_/node) and the following tools and versions are available
in the image, with Firebase being available only in the `-firebase` variant.

| Tool     | Version | 
|----------|---------|
| Node     | 22.14.0 |
| Hugo     | 0.143.0 |
| Firebase | 13.35.1 |

## Usage

The entrypoint is `node` (as defined in the official `node` images), but `sh` or `hugo` can easily be used directly.

To run a shell inside the container:

```shell script
docker run -it --rm -v $(pwd):/src cosminstefanxp/hugo-node:0.143.0 sh
docker run -it --rm -v $(pwd):/src cosminstefanxp/hugo-node:0.143.0-firebase sh
```

To run the Node shell inside the container:

```shell script
docker run -it --rm -v $(pwd):/src cosminstefanxp/hugo-node:0.143.0 node
```

To run a NPM command inside the container:

```shell script
docker run --rm -v $(pwd):/src cosminstefanxp/hugo-node:0.143.0 npm version
```

To run a Hugo command inside the container:

```shell script
docker run --rm -v $(pwd):/src cosminstefanxp/hugo-node:0.143.0 hugo version
```

To run a Firebase CLI command inside the container:

```shell script
docker run --rm -v $(pwd):/src cosminstefanxp/hugo-node:0.143.0-firebase firebase --version
```

## Terms

The software is provided "as is", without warranty of any kind, express or implied, including but not limited to the
warranties of merchantability, fitness for a particular purpose and noninfringement. In no event shall the authors or
copyright holders be liable for any claim, damages or other liability, whether in an action of contract, tort or
otherwise, arising from, out of or in connection with the software or the use or other dealings in the software.

## License

MIT license

## Deployment

To build the images:

```shell script
docker build --squash -t cosminstefanxp/hugo-node .
docker build --squash -t cosminstefanxp/hugo-node-firebase -f Dockerfile-firebase .
```

To tag the images:

```shell script
docker tag cosminstefanxp/hugo-node cosminstefanxp/hugo-node:0.143.0
docker tag cosminstefanxp/hugo-node-firebase cosminstefanxp/hugo-node:0.143.0-firebase
```

To push the images:

```shell script
docker push cosminstefanxp/hugo-node:0.143.0
docker push cosminstefanxp/hugo-node:0.143.0-firebase
```
