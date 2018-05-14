```

balena-static$ ./build.sh 
# WARNING! I don't seem to be running in a Docker container.
# The result of this command might be an incorrect build, and will not be
# officially supported.
#
# Try this instead: make all
#

---> Making bundle: binary-balena (in bundles/17.06.0-dev/binary-balena)
Building: bundles/17.06.0-dev/binary-balena/balena-17.06.0-dev
Created binary: bundles/17.06.0-dev/binary-balena/balena-17.06.0-dev

balena/
balena/balena-containerd-ctr
balena/balena
balena/balena-containerd-shim
balena/balena-proxy
balena/balena-containerd
balena/balena-runc
balena/balenad
jiehwan@leo:~/src/balena-static$ file balena
balena/
balena-17.06-rev1-1-g307ab98-x86_64.tar.gz
jiehwan@leo:~/src/balena-static$ file balena
balena/
balena-17.06-rev1-1-g307ab98-x86_64.tar.gz
/balena-static$ file balena/balena
balena/balena: ELF 64-bit LSB executable, x86-64, version 1 (GNU/Linux), statically linked, for GNU/Linux 2.6.32, BuildID[sha1]=7232430f1b8490d29da63245ac68bf0ef4b02e25, stripped

```
