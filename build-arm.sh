#!/bin/sh

set -o errexit

arch="armv7"

version=$(git describe --tags --always)

AUTO_GOPATH=1 \
CC=arm-linux-gnueabi-gcc GOOS=linux GOARCH=arm GOARM=7 CGO_ENABLED=1 \
DOCKER_BUILDTAGS='exclude_graphdriver_btrfs exclude_graphdriver_devicemapper' \
./hack/make.sh binary-balena

src="bundles/latest/binary-balena"
dst="balena"

rm -rf "$dst"
mkdir "$dst"

cp -L "$src/balena" "$dst/balena"
#strip --strip-program=arm-linux-gnueabi-strip "$dst/balena"

ln -s balena "$dst/balenad"
ln -s balena "$dst/balena-containerd"
ln -s balena "$dst/balena-containerd-ctr"
ln -s balena "$dst/balena-containerd-shim"
ln -s balena "$dst/balena-proxy"
ln -s balena "$dst/balena-runc"

tar czfv "balena-$version-$arch.tar.gz" "$dst"
