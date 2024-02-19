# PHP file Uploader

## Docker
Build the Docker image
```bash
docker build -t file-uploader .
```

## Run the image
```sh
docker run -p 80:80 file-uploader
```

by adding ```--restart=always``` you can make it run on startup

```sh
docker run --restart=always -p 80:80 file-uploader
```
