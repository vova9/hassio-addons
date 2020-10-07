ARG BUILD_FROM
FROM $BUILD_FROM

# Add env
ENV LANG C.UTF-8
ENV VERSION=1.5.0
ENV MYCONTROLLER_URL="https://github.com/mycontroller-org/mycontroller/releases/download/${VERSION}.Final/mycontroller-dist-standalone-${VERSION}-bundle.tar.gz"

WORKDIR /tmp

# Labels
LABEL \
    io.hass.name="MyController" \
    io.hass.description="MyController.org" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="Lucio Tarantino <lucio.Tarantino@gmail.com>" \
    org.opencontainers.image.title="MyController" \
    org.opencontainers.image.description="MyController.org" \
    org.opencontainers.image.vendor="Home Assistant Dianlight Add-ons" \
    org.opencontainers.image.authors="Lucio Tarantino <lucio.Tarantino@gmail.com>" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.url="https://addons.community" \
    org.opencontainers.image.source="https://github.com/dianlight/hassio-addons/mycontroller" \
    org.opencontainers.image.documentation="https://github.com/dianlight/hassio-addons/blob/master/mycontroller/README.md" \
    org.opencontainers.image.created=${BUILD_DATE} \
    org.opencontainers.image.revision=${BUILD_REF} \
    org.opencontainers.image.version=${BUILD_VERSION}


# Setup base
RUN apk add --no-cache \
        ca-certificates \
        openjdk8-jre-base \ 
        wget \ 
        tzdata \
        busybox-extras \
    \
        && wget $MYCONTROLLER_URL -O mycontroller.tar.gz \
        && tar zxf mycontroller.tar.gz -C /usr/local \
        && rm -f /tmp/* 

# Copy data
COPY rootfs /
