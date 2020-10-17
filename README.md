# General
A simple image to make plantuml as docker container available


# Usage
```bash
# example
docker run --rm -u $(id -u ${USER}):$(id -g ${USER}) \
    -v `pwd`/resources:/puml \ 
    -v `pwd`:/output \
    okieoth/d_plantuml:1.2020.19 \
    -tsvg -O /output /puml/config_schema.puml
```