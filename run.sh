#! /bin/bash
set -e

docker run -p8888:8888 -v $PWD:/capstone -v /tmp/log:/root/.ros/ --rm -it tensor
