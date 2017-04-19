FROM python:2-alpine

ENV VERSION=0.1.10 \
    PACKAGES_FOR_BUILD="gcc musl-dev libffi-dev openssl-dev"

# ElastAlert installation
RUN apk add --no-cache ${PACKAGES_FOR_BUILD} ca-certificates &&\
    pip install elastalert==${VERSION} &&\
    apk del ${PACKAGES_FOR_BUILD} &&\
    rm -rf /root/.cache

ENTRYPOINT ["elastalert-create-index","--config","/config.yml"]

CMD ["elastalert","--config","/config.yml"]
