# Dataverse Previewers Docker Image

This docker image supports running the Dataverse previewers locally.

## Run

```bash
docker run --rm --name dataverse-previewers-provider -e PREVIEWERS_PROVIDER_URL=http://localhost:8088 -e VERSIONS="v1.4,betatest" -p 8088:80 trivadis/dataverse-previewers-provider:latest
```

Supported environment variables:

 * `PREVIEWERS_PROVIDER_URL` - the base URL the previewers are exposed on, e.g. `http://localhost:80`. Is used to replace the values of `toolUrl` in the `N.Ncurlcommands.md` files.
 * `VERSIONS` - the versions to provide, a comma-separated list, e.g. `v1.4,betatest` (default `v1.4`)
 * `NGINX_HTTP_PORT` - the port the server listens for incoming HTTP requests (default `80`)
 * `NGINX_HTTPS_PORT` - the port the server listens for incoming HTTPS requests  (default `443`)

## Build

```bash
docker build -f docker/Dockerfile -t trivadis/dataverse-previewers-provider:latest .
```
