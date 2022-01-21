# docker-mainsail

[![Project Maintenance](https://img.shields.io/maintenance/yes/2022.svg)](https://github.com/pedrolamas/docker-mainsail 'GitHub Repository')
[![License](https://img.shields.io/github/license/pedrolamas/docker-mainsail.svg)](https://github.com/pedrolamas/docker-mainsail/blob/master/LICENSE 'License')

[![Release](https://github.com/pedrolamas/docker-mainsail/workflows/Release/badge.svg)](https://github.com/pedrolamas/docker-mainsail/actions 'Build Status')

[![Twitter Follow](https://img.shields.io/twitter/follow/pedrolamas?style=social)](https://twitter.com/pedrolamas '@pedrolamas')

Simple Docker image with the latest [Mainsail](https://github.com/mainsail-crew/mainsail#readme) (updated every 20 minutes)

## Usage

Create and run the new container as you would normally do, but remember to specify the `API_HOST` environment variable to indicate the Moonraker host.

```sh
docker run -d -e API_HOST=<moonraker host or ip> ei99070/docker-mainsail
```

If the Moonraker host is not accessible from inside the default docker bridge network, you will need to run the container under the host network (or any other network) instead:

```sh
docker run -d -e API_HOST=<moonraker host or ip> --network=host ei99070/docker-mainsail
```

By default the server runs on port 80, but this can be changed by specifying the `PORT` environment variable.

```sh
docker run -d -e API_HOST=<moonraker host or ip> -e PORT=<alternative port> ei99070/docker-mainsail
```

The default tag (`latest`) is pointing to Mainsail's `master` branch. To run a container with the latest "develop" branch, use `latest-dev` or `develop` tags.

```sh
docker run -d -e API_HOST=<moonraker host or ip> ei99070/docker-mainsail:latest-dev
```

## License

MIT
