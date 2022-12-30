# About

![Class Diagram](http://www.plantuml.com/plantuml/proxy?src=https://github.com/0i99/reverse-proxy/blob/main/about.puml)


# Run and test
run:

```
docker-compose up --build
```

test:
```
curl http://localhost:8090/info 
```

it should display:
```json
{
  "name" : "something",
  "details" : [ "other", "data", "mock2" ]
}
```

after changing `docker-compose.yml`
```
    environment:
      PROXY_TO: http://mock:1080
```      

and after `curl http://localhost:8090/info` response comes from different mock:
```json
{
  "name" : "something",
  "details" : [ "some", "data", "mock" ]
}
```
