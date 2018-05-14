# build for Host PC (amd64)
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


/balena-static$ file balena/balena
balena/balena: ELF 64-bit LSB executable, x86-64, version 1 (GNU/Linux), statically linked, for GNU/Linux 2.6.32, BuildID[sha1]=7232430f1b8490d29da63245ac68bf0ef4b02e25, stripped
```
  
# cross build for Target (arm7)
```
$ ./build-arm.sh 
# WARNING! I don't seem to be running in a Docker container.
# The result of this command might be an incorrect build, and will not be
# officially supported.
#
# Try this instead: make all
#

bundles/17.06.0-dev already exists. Removing.

---> Making bundle: binary-balena (in bundles/17.06.0-dev/binary-balena)
Building: bundles/17.06.0-dev/binary-balena/balena-17.06.0-dev

Created binary: bundles/17.06.0-dev/binary-balena/balena-17.06.0-dev

strip: Unable to recognise the format of the input file `balena/balena'

$ file bundles/17.06.0-dev/binary-balena/balena-17.06.0-dev
bundles/17.06.0-dev/binary-balena/balena-17.06.0-dev: ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, for GNU/Linux 3.2.0, BuildID[sha1]=9fb34777bc176a9e7d3beea408c6ac9d16c3e206, not stripped
```
