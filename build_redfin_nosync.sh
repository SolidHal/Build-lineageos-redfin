#!/bin/bash


docker run \
       -e "BRANCH_NAME=lineage-18.1" \
       -e "DEVICE_LIST=redfin" \
       -e "INCLUDE_PROPRIETARY=true" \
       -e "REPO_SYNC=false" \
       -e "CLEAN_AFTER_BUILD=false" \
       -e "SIGN_BUILDS=true" \
       -e "CCACHE_SIZE=100G" \
       -e "SIGNATURE_SPOOFING=yes" \
       -e "CUSTOM_PACKAGES=GmsCore GsfProxy FakeStore MozillaNlpBackend NominatimNlpBackend FDroid FDroidPrivilegedExtension " \
       -e "BOOT_IMG=true" \
       -v "$PWD/src:/srv/src" \
       -v "$PWD/zips:/srv/zips" \
       -v "$PWD/logs:/srv/logs" \
       -v "$PWD/ccache:/srv/ccache" \
       -v "$PWD/local_manifests:/srv/local_manifests" \
       -v "$PWD/userscripts:/srv/userscripts" \
       -v "$HOME/.android-certs:/srv/keys" \
       solidhal/docker-lineage-cicd-18-1

# Keep the android signing keys in the home directory to avoid accidentally including in a git commit

# we don't include proprietary, and instead specify the proprietary repos in local_manifests because lineageos 18.1 isn't supported in the default proprietary repos.
