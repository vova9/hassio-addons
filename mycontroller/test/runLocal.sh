#! /bin/bash
mkdir -p /tmp/my_test_data
docker build --build-arg BUILD_FROM="homeassistant/armv7-base:latest" -t dianlight/armv7-addon-mycontroller ..
docker run --rm  -v /tmp/my_test_data:/data -p 0.0.0.0:8000:8000/tcp dianlight/armv7-addon-mycontroller