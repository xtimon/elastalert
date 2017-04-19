FROM python:2-alpine

ENV ELASTALERT_VERSION=0.1.10 \
    PACKAGES_FOR_BUILD="gcc musl-dev libffi-dev openssl-dev"

RUN apk add --no-cache ${PACKAGES_FOR_BUILD} ca-certificates &&\
    pip install elastalert==${ELASTALERT_VERSION} &&\
    apk del ${PACKAGES_FOR_BUILD} &&\
    rm -rf /root/.cache &&\
    rm -rf /tmp/*

ENTRYPOINT ["elastalert"]

CMD ["--help"]
