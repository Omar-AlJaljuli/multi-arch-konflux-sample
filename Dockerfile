FROM registry.access.redhat.com/ubi9/nodejs-20:9.5-1731603589 AS build  

COPY LICENSE /licenses/

RUN \
  echo echo "\"hello! I do nothing\"" > /entrypoint.sh && \
  chmod +x /entrypoint.sh

USER 65532:65532
ENTRYPOINT /entrypoint.sh
