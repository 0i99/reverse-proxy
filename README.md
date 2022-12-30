# About

![about](http://www.plantuml.com/plantuml/png/NO_1QeD0443l-nNp0mjseT1wAFw1fVJGeX9MdPWbxepChYRv-wn6SiXbu3rc7amHefKu-r5LhV0be3IgceIlj_mZ-ymQi04sL9Ndxfpa-zicLteuiqhpb4QflGHQt72A-cilR1DqudKFSX2UewC1MXkm1wQQa1OdJ1ufmcB5sNP4-Fuf__uFlsLD0H7wT8kYE_OJ1uIZ6_6bR5I1rAUVxW00)


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
