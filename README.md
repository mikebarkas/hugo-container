# Hugo Container

The [Hugo](https://gohugo.io/) static site generator in a container.

Available in Docker Hub: [mikebarkas/hugo](https://hub.docker.com/repository/docker/mikebarkas/hugo/general)

| Hugo Version | Image Tag       | Arch  |
|---------|-----------------|-------|
| 0.120.4 | 0.120.4-arm64 | arm64 |
| 0.120.4 | 0.120.4-amd64 | amd64 |
| extended 0.119 | ext-0.119-arm64 | arm64 |
| extended 0.119 | ext-0.119-amd64 | amd64 |


### Get the image

    docker pull mikebarkas/hugo:0.120.4-arm64

### Use the container
Use Hugo for local development

Note: mount your site files to `/opt` and your Hugo command requires `--bind 0.0.0.0`

    docker run --rm -v .:/opt -p 1313:1313 mikebarkas/hugo:ext-0.120.4-arm64 server --bind 0.0.0.0

----
