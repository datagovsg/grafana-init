# MySQL Initialization Script

This is only useful when the session backend is chosen to be MySQL. All login
sessions data will be stored into the `session` table of your named database in
MySQL.

## Environment variables required

* `MYSQL_USER`
  * Username that has rights to perform creation of new table(s) in the given
    database.
* `MYSQL_PW`
  * Password of username with the above rights.
* `MYSQL_HOSTNAME`
  * Hostname with MySQL server.
* `MYSQL_PORT`
  * Port of MySQL server.
* `MYSQL_DB`
  * Database name to create the new table(s) in. The database must already
    exists so that the table can be created inside.

You must set the above environment variables into the running Docker container
so that it has the necessary information to create the table(s).

## How to use

Make sure that you have `curl` and `docker` commands available. If you want to
perform self-build, you will need `git` command also.

Go to any empty directory. Now copy the template `.env` file by performing:

```bash
curl -O
```

This repository provides two methods to make it easier to use the Docker set-up.

CURL TODO.

You will first need to amend the [`.env`](./.env) file and fill in the values
in the given template.

### Pull method

Run the following:

```bash
docker pull datagovsg/grafana-init:mysql
docker run --rm -it --env-file .env datagovsg/grafana-init:mysql
```

### Self-build method

```bash
docker build . -t datagovsg/grafana-init:mysql
docker run --rm -it --env-file .env datagovsg/grafana-init:mysql
```
