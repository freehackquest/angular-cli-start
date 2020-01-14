# angular-cli-start
Docker for start angular-cli

## docker-compose example

```
version: '3'

services:
  your_app:
    image: freehackquest/angular-cli-start@latest
    environment:
      - NODE_ENV=production
    restart: always
    volumes:
      - "./your_app:/home/node/app"
      - "./tmp/your_app/:/home/node/app/node_modules"
    restart: always
    command: "bash -c './start-in-docker.sh'"
    ports:
      - "4200:4200"
    networks:
      - your_net

networks:
  your_net:
    driver: bridge
```

## local-build

```
docker build --tag 'angular-cli-start' .
```

