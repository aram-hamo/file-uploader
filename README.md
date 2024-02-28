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

## Contact
Aram Hamo - [contact@aramhamo.me](mailto:contact@aramhamo.me)

## License
```
Copyright (C) 2023  Aram Hamo

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
```
