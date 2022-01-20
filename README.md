# docker-mainsail

[![Project Maintenance](https://img.shields.io/maintenance/yes/2022.svg)](https://github.com/pedrolamas/docker-mainsail 'GitHub Repository')
[![License](https://img.shields.io/github/license/pedrolamas/docker-mainsail.svg)](https://github.com/pedrolamas/docker-mainsail/blob/master/LICENSE 'License')

[![Release](https://github.com/pedrolamas/docker-mainsail/workflows/Release/badge.svg)](https://github.com/pedrolamas/docker-mainsail/actions 'Build Status')

[![Twitter Follow](https://img.shields.io/twitter/follow/pedrolamas?style=social)](https://twitter.com/pedrolamas '@pedrolamas')

Simple Docker image running a latest "develop" branch of [Mainsail](https://github.com/mainsail-crew/mainsail#readme)

## Usage

When launched, you will need to specify the IP/host of the Moonraker server:

```sh
docker run -d --add-host api:<moonraker-ip> ei99070/docker-mainsail
```

## License

MIT
