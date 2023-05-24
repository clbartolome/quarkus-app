# quarkus-app

## Run Locally

- Create PostgressDB:
```sh
podman run -d --name app-db \
  -e POSTGRES_USER=develop \
  -e POSTGRES_PASSWORD=develop \
  -e POSTGRES_DB=app-db \
  -p 5432:5432 \
  postgres:10.5
```

- Run Application in development mode:
```shell script
mvn compile quarkus:dev
```