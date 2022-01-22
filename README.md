# docker-mainsail

[![Project Maintenance](https://img.shields.io/maintenance/yes/2022.svg)](https://github.com/pedrolamas/docker-mainsail 'GitHub Repository')
[![License](https://img.shields.io/github/license/pedrolamas/docker-mainsail.svg)](https://github.com/pedrolamas/docker-mainsail/blob/master/LICENSE 'License')

[![Release](https://github.com/pedrolamas/docker-mainsail/workflows/Release/badge.svg)](https://github.com/pedrolamas/docker-mainsail/actions 'Build Status')

[![Twitter Follow](https://img.shields.io/twitter/follow/pedrolamas?style=social)](https://twitter.com/pedrolamas '@pedrolamas')

Simple Docker image running the latest [Mainsail](https://github.com/mainsail-crew/mainsail#readme)

> **Warning:** This project is not affiliated with Mainsail, so please be aware that it may stop working at any moment.
>
> Mainsail related issues must be reported directly on the Mainsail official repo.

This repo will run a GitHub action every 20 minutes to check for new code on the "master" and "develop" branches of the Mainsail repository, and creates a new Docker images if there are any modifications.

## Usage

Create and run the new container as you would normally do, but remember to specify the `API_HOST` environment variable to indicate the Moonraker host.

```sh
docker run -d -e API_HOST=<moonraker host or ip> ei99070/docker-mainsail
```

If the Moonraker host is not accessible from inside the default Docker bridge network, you will need to run the container under the host network (or any other network) instead:

```sh
docker run -d -e API_HOST=<moonraker host or ip> --network=host ei99070/docker-mainsail
```

By default the server runs on port 80, but this can be changed by specifying the `PORT` environment variable.

```sh
docker run -d -e API_HOST=<moonraker host or ip> -e PORT=<alternative port> ei99070/docker-mainsail
```

## Available tags

- `latest` or `master`: points to "master" branch
- `latest-dev` or `develop`: points to "develop" branch
- `sha-<hash>`: points to the GitHub commit hash

## License

MIT
