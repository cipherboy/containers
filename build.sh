#!/bin/bash

set -e
(
    buildah bud -f devel/fedora_30 --tag cipherboy_fedora:30 .
) &

(
    buildah bud -f devel/fedora_rawhide --tag cipherboy_fedora:rawhide .
) &

#buildah bud -f devel/ubuntu_1804 --tag cipherboy_ubuntu:bionic .
#buildah bud -f devel/debian_testing --tag cipherboy_debian:testing .
#buildah bud -f devel/fedora_jdk11 --tag cipherboy_fedora:jdk11 .
#buildah bud -f devel/pki_jdk11 --tag cipherboy_pki:jdk11 .
#buildah bud -f devel/jss_jdk11 --tag cipherboy_jss:jdk11 .

wait
