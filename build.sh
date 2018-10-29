#!/bin/bash

set -e

buildah bud -f devel/fedora_28 --tag cipherboy_fedora:28 .
buildah bud -f devel/fedora_rawhide --tag cipherboy_fedora:rawhide .
buildah bud -f devel/fedora_jdk11 --tag cipherboy_fedora:jdk11 .
buildah bud -f devel/pki_jdk11 --tag cipherboy_pki:jdk11 .
