#!/usr/bin/env bash
set -euo pipefail

VER="${VIM_VERSION:-v9.2.1355}"          # 截至 2026-11-17 的最新 9.2 补丁
BUILD_DIR="${BUILD_DIR:-/tmp/vim9-build}"

sudo apt update
sudo apt install -y \
  build-essential libncurses-dev \
  libpython3-dev python3-dev \
  libwayland-dev libxkbcommon-dev wayland-protocols \
  libx11-dev libxt-dev

mkdir -p "$BUILD_DIR" && cd "$BUILD_DIR"
curl -fLO "https://github.com/vim/vim/archive/refs/tags/${VER}.tar.gz"
tar xzf "${VER}.tar.gz"
cd "vim-${VER#v}"

./configure --with-features=huge \
  --enable-multibyte \
  --disable-pythoninterp \
  --enable-python3interp=dynamic \
  --with-python3-command=python3 \
  --enable-terminal --enable-cscope

make -j"$(nproc)"

# 第一次升级前备份旧二进制
if [ ! -e /usr/local/bin/vim-8.2.5172 ]; then
  sudo cp -a /usr/local/bin/vim /usr/local/bin/vim-8.2.5172
fi

sudo make install
