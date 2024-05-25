# GitHub Actions self-hosted ubuntu runner for openwrt on podman (docker)

[docker.io rmandrad/ga_ubuntu_runner](https://hub.docker.com/r/rmandrad/ga_ubuntu_runner)

## How to use

Variables:

* `GA_URL`: GitHub repository URL
* `GA_TOKEN`: GutHub Actions (registering) token
* `GA_NAME`: GitHub Actions instance name

Example:

```bash
$ sudo podman run -d -e GA_URL=https://github.com/rmandrad-gitops/Qualcommax_NSS_Builder -e GA_TOKEN=xxxxxxxxxx -e GA_NAME=podman-ubuntu docker.io/rmandrad/ga_ubuntu_runner
```

Automated run:

```bash
$ cd /etc/systemd/system
$ sudo podman generate systemd --name --restart-policy on-failure -f ga_ubuntu_runner
systemctl daemon-reload

systemctl enable container-ga_ubuntu_runner
systemctl start container-ga_ubuntu_runner
```

## License

Under MIT

