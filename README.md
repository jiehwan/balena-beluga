```
$ ./build.sh 
# WARNING! I don't seem to be running in a Docker container.
# The result of this command might be an incorrect build, and will not be
# officially supported.
#
# Try this instead: make all
#

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# GITCOMMIT = 73136d1-unsupported
# The version you are building is listed as unsupported because
# there are some files in the git repository that are in an uncommitted state.
# Commit these changes, or add to .gitignore to remove the -unsupported from the version.
# Here is the current list:
 M build-allarch.sh
 M build.sh
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
bundles/17.06.0-dev already exists. Removing.

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
```

```
$ ./build-allarch.sh
Building arm..
Sending build context to Docker daemon    171MB
Step 1/6 : FROM resin/raspberrypi3-golang:1.9
 ---> b448eda7059e
Step 2/6 : ENTRYPOINT [ "qemu-arm-static", "-execve" ]
 ---> Using cache
 ---> 19c57fa19e4b
Step 3/6 : SHELL      [ "qemu-arm-static", "-execve", "/bin/sh", "-c" ]
 ---> Using cache
 ---> d48295a73aef
Step 4/6 : RUN apt-get update 	&& apt-get install -y 		btrfs-tools 	libapparmor-dev 		libdevmapper-dev 		libnl-3-dev 		libsystemd-dev 		libsystemd-journal-dev
 ---> Running in f54f6a3b40f9
Err http://security.debian.org jessie/updates InRelease
  
Err http://archive.raspbian.org jessie InRelease
  
Err http://deb.debian.org jessie InRelease
  
Err http://archive.raspberrypi.org jessie InRelease
  
Err http://deb.debian.org jessie-updates InRelease
  
Err http://security.debian.org jessie/updates Release.gpg
  Temporary failure resolving 'security.debian.org'
Err http://archive.raspbian.org jessie Release.gpg
  Temporary failure resolving 'archive.raspbian.org'
Err http://archive.raspberrypi.org jessie Release.gpg
  Temporary failure resolving 'archive.raspberrypi.org'
Err http://deb.debian.org jessie Release.gpg
  Temporary failure resolving 'deb.debian.org'
Err http://deb.debian.org jessie-updates Release.gpg
  Temporary failure resolving 'deb.debian.org'
Reading package lists...
W: Failed to fetch http://deb.debian.org/debian/dists/jessie/InRelease  

W: Failed to fetch http://deb.debian.org/debian/dists/jessie-updates/InRelease  

W: Failed to fetch http://security.debian.org/dists/jessie/updates/InRelease  

W: Failed to fetch http://archive.raspbian.org/raspbian/dists/jessie/InRelease  

W: Failed to fetch http://archive.raspberrypi.org/debian/dists/jessie/InRelease  

W: Failed to fetch http://security.debian.org/dists/jessie/updates/Release.gpg  Temporary failure resolving 'security.debian.org'

W: Failed to fetch http://archive.raspbian.org/raspbian/dists/jessie/Release.gpg  Temporary failure resolving 'archive.raspbian.org'

W: Failed to fetch http://deb.debian.org/debian/dists/jessie/Release.gpg  Temporary failure resolving 'deb.debian.org'

W: Failed to fetch http://archive.raspberrypi.org/debian/dists/jessie/Release.gpg  Temporary failure resolving 'archive.raspberrypi.org'

W: Failed to fetch http://deb.debian.org/debian/dists/jessie-updates/Release.gpg  Temporary failure resolving 'deb.debian.org'

W: Some index files failed to download. They have been ignored, or old ones used instead.
Reading package lists...
Building dependency tree...
Reading state information...
E: Unable to locate package btrfs-tools
E: Unable to locate package libapparmor-dev
E: Unable to locate package libdevmapper-dev
E: Unable to locate package libnl-3-dev
E: Unable to locate package libsystemd-dev
E: Unable to locate package libsystemd-journal-dev
The command 'qemu-arm-static -execve /bin/sh -c apt-get update 	&& apt-get install -y 		btrfs-tools 		libapparmor-dev 		libdevmapper-dev 		libnl-3-dev 		libsystemd-dev 		libsystemd-journal-dev' returned a non-zero code: 100
```
