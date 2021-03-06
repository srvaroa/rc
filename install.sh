#!/bin/bash
set -e
set -o pipefail

apt update
apt -y upgrade
apt install --no-install-recommends -y \
    automake \
    ca-certificates \
    clipit \
    curl \
    dunst \
    feh \
    fonts-inconsolata \
    fonts-noto \
    fonts-noto-color-emoji \
    fortune \
    fortune-mod \
    git \
    gnupg \
    gpg-agent \
    htop \
    i3 \
    i3-wm \
    i3status \
    i3lock \
    jq \
    links2 \
    libnotify-bin \
    msmtp \
    mutt \
    notify-osd \
    pinentry-curses \
    powertop \
    psmisc \
    redshift-gtk \
    software-properties-common \
    sudo \
    sysstat \
    tlp \
    tmux \
    tree \
    urlview \
    vim \
    w3m \
    xautolock \
    xbacklight \
    xfonts-terminus \

sudo systemctl enable tlp.service
sudo systemctl start tlp.service

