# Hugo & Node Docker Image
Light docker container, designed for CI, for building [Hugo](https://gohugo.io) and [NodeJS](https://nodejs.org) apps.
Optionally comes with [Firebase CLI](https://firebase.google.com/docs/cli) installed.

## Tools
The image is based on [node:13-alpine](https://hub.docker.com/_/node) and the following tools and versions are available 
in the image, with Firebase being available only in the `-firebase` variant.

| Tool      | Version   | 
| ---       | ---       |
| Node      | 13.11.0   |
| Hugo      | 0.68.3    |
| Firebase  | 7.16.1    |

## Usage
The entrypoint is `node` (as defined in the official `node` images), but `sh` or `hugo` can easily be used directly.

To run a shell inside the container:
```shell script
docker run -it --rm -v $(pwd):/src cosminstefanxp/hugo-node:0.68.3 sh
```

To run the Node shell inside the container:
```shell script
docker run -it --rm -v $(pwd):/src cosminstefanxp/hugo-node:0.68.3 node
```

To run a NPM command inside the container:
```shell script
docker run --rm -v $(pwd):/src cosminstefanxp/hugo-node:0.68.3 npm version
```

To run a Hugo build inside the container:
```shell script
docker run --rm -v $(pwd):/src cosminstefanxp/hugo-node:0.68.3 hugo -s /src
```

To run a Firebase CLI command inside the container:
```shell script
docker run --rm -v $(pwd):/src cosminstefanxp/hugo-node:0.68.3-firebase firebase --version
```

## Terms

The software is provided "as is", without warranty of any kind, express or implied, including but not limited to the 
warranties of merchantability, fitness for a particular purpose and noninfringement. In no event shall the authors or 
copyright holders be liable for any claim, damages or other liability, whether in an action of contract, tort or 
otherwise, arising from, out of or in connection with the software or the use or other dealings in the software.

## License

MIT license
