#!/bin/bash

for x in 8 11 17 21; do
    docker pull "amazoncorretto:${x}" >/dev/null 2>&1
done

for x in 8 11 17 21; do
    image="amazoncorretto:${x}"
    echo "running on ${image}"
    docker run -v "$(pwd)/installer.sh":/tmp/installer.sh -v "$(pwd)/runner.sh":/tmp/runner.sh -v "$(pwd)/SecureRandomUtil.java":/tmp/SecureRandomUtil.java -v "$(pwd)/HmacUtil.java:/tmp/HmacUtil.java" "${image}" bash -c 'cd /tmp; sh installer.sh; sh runner.sh'
done
