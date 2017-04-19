FROM python:2-alpine

ENV ELASTALERT_VERSION=0.1.10 \
    	

RUN apk add --no-cache ${PACKAGES_FOR_BUILD} ca-certificates &&\
    pip install elastalert==${ELASTALERT_VERSION} &&\
    apk del ${PACKAGES_FOR_BUILD} &&\
    rm -rf /root/.cache

ENTRYPOINT ["elastalert"]

CMD ["--help"]
