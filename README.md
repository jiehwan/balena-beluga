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

