FROM alpine

RUN \
apk add --no-cache mongodb && \
rm /usr/bin/mongoperf

VOLUME /data/db
EXPOSE 27017 28017

CMD [ "mongod" ]
