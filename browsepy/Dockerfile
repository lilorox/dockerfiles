FROM python:3-alpine

ENV UID=991 GID=991 \
    ALLOW_DELETE=0

RUN apk -U upgrade \
    && apk add \
        git \
        su-exec \
    && pip install git+https://github.com/ergoithz/browsepy.git

COPY run.sh /usr/bin/
RUN chmod +x /usr/bin/run.sh

VOLUME [ "/shared" ]

EXPOSE 5000

CMD [ "run.sh" ]
