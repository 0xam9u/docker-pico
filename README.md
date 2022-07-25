# Dockerfile: pico

Pico is a stupidly simple, blazing fast, flat file CMS.

Visit them at http://picocms.org/ and see http://picocms.org/about/ for more info.

## Building and running

```
$ docker build -t picocms:latest .
$ docker run -dti -p80:80 --name picocms picocms:latest
```

