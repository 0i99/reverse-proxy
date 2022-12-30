FROM nginx:1.14.0-alpine

RUN apk --no-cache add \
      python2 \
      py2-pip && \
      pip2 install j2cli[yaml]
 
RUN apk add --update bash

# using environment so j2 required
COPY nginx.conf.j2 /templates/

COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]
