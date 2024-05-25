FROM ubuntu:22.04
STOPSIGNAL SIGHUP
ENV TZ Europe/London
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update && apt upgrade -y
RUN apt install -y sudo curl git git-lfs build-essential cmake jq sudo
COPY startup.sh /a/startup.sh
RUN useradd -m --groups sudo ga_runner && echo "ga_runner:foobarrunner" | chpasswd && echo "ga_runner ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
RUN chown -R ga_runner.ga_runner /a
USER ga_runner
ENTRYPOINT /a/startup.sh

