# docker-mainsail

[![Project Maintenance](https://img.shields.io/maintenance/yes/2024.svg)](https://github.com/pedrolamas/docker-mainsail 'GitHub Repository')
[![License](https://img.shields.io/github/license/pedrolamas/docker-mainsail.svg)](https://github.com/pedrolamas/docker-mainsail/blob/master/LICENSE 'License')

[![Release](https://github.com/pedrolamas/docker-mainsail/workflows/Release/badge.svg)](https://github.com/pedrolamas/docker-mainsail/actions 'Build Status')

[![Follow pedrolamas on Twitter](https://img.shields.io/twitter/follow/pedrolamas?label=Follow%20@pedrolamas%20on%20Twitter&style=social)](https://twitter.com/pedrolamas)
[![Follow pedrolamas on Mastodon](https://img.shields.io/mastodon/follow/109365776481898704?label=Follow%20@pedrolamas%20on%20Mastodon&domain=https%3A%2F%2Fhachyderm.io&style=social)](https://hachyderm.io/@pedrolamas)

Simple Docker image running the latest [Mainsail](https://github.com/mainsail-crew/mainsail#readme)

> **Warning:** This project is not affiliated with Mainsail, so please be aware that it may stop working at any moment.
>
> Mainsail related issues must be reported directly on the Mainsail official repo.

This repo will run a GitHub action every 20 minutes to check for new code on the "master" and "develop" branches of the Mainsail repository, and creates new Docker images if there are any modifications.

## Usage

Create and run the new container as you would normally do, but remember to specify the `API_HOST` environment variable to indicate the Moonraker host.

```sh
docker run -d \
  --name mainsail \
  --net=host \
  -e API_HOST=<moonraker host or ip> \
  ei99070/docker-mainsail
```

By default the server runs on port 80, but this can be changed by specifying the `PORT` environment variable.

```sh
docker run -d \
  --name mainsail \
  --net=host \
  -e API_HOST=<moonraker host or ip> \
  -e PORT=<alternative port> \
  ei99070/docker-mainsail
```

## Available tags

- `latest` or `master`: points to "master" branch
- `latest-dev` or `develop`: points to "develop" branch
- `sha-<hash>`: points to the GitHub commit hash

## License

MIT
