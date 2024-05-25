#!/bin/sh

##### replace the tag id with the image id of your most recent image build
podman tag dde49269b3df rmandrad/ga_ubuntu_runner:latest
podman login docker.io
podman push rmandrad/ga_ubuntu_runner:latest

