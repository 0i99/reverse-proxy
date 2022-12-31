FROM nginx:stable-alpine

RUN apk update -q \
      && apk --no-cache add python3 py3-pip bash \
      && pip install j2cli[yaml]

# using environment so j2 required
COPY nginx.conf.j2 /templates/

COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]
