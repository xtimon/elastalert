# elastalert

## Usage

```
docker run -it --rm -v <config/path>:/config.yml -v <rules/path>:<rules_path_in_config> xtimon/elastalert
```

## Compose-file example: 

```
version: '2'
services:
  elastalert:
    image: xtimon/elastalert
    volumes:
      - ./elastalert/config.yml:/config.yml
      - ./elastalert/rules:<rules_path_in_config>
```
