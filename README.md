A nginx base test TLS server.

# Running
## Just HTTPS Server
### Docker Run
Run the command:
```bash
docker run -p 443:443 haz314/nginx_tls
```
### Docker Compose
Create a compose file:
```yaml
services:
  nginx_tls:
    image: haz314/nginx_tls
    ports:
      - 443:443
```
Then run:
```bash
docker compose up nginx_tls
```
### Viewing
And visit [localhost:443](https://localhost/)

## With HTTP Redirect
### Docker Run
Run the command:
```bash
docker run -p 80:80 -p 443:443 haz314/nginx_tls
```
### Docker Compose
Create a compose file:
```yaml
services:
  nginx_tls:
    image: haz314/nginx_tls
    ports:
      - 80:80
      - 443:443
```
Then Run:
```bash
docker compose up nginx_tls
```
### Viewing
And visit either [localhost:443](https://localhost/) or [localhost:80](http://localhost/)

## Custom SSL Certificates
With certificate and key files, `certificate.crt` and `private.key`
### Docker Run
Run the command:
```bash
docker run -v "./certificate.crt:/etc/nginx/cert.crt" -v "./private.key:/etc/nginx/priv.key" -p 80:80 -p 443:443 haz314/nginx_tls
```
### Docker Compose
Create a compose file:
```yaml
services:
  nginx_tls:
    image: haz314/nginx_tls
    volumes:
      - ./certificate.crt:/etc/nginx/cert.crt
      - ./private.key:/etc/nginx/priv.key
    ports:
      - 80:80
      - 443:443
```
Then Run:
```bash
$ docker compose up nginx_tls
```
### Viewing
And visit either [localhost:443](https://localhost/) or [localhost:80](http://localhost/)

# Code and issues:
Please visit the [GitHub Repo > Haz001/docker_nginx_tls](https://github.com/Haz001/docker_nginx_tls)
