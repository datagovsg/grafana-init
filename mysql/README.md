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

Make sure that you have `curl` and `docker` commands available first.

Go to any empty directory, and download the template `.env` file by performing:

```bash
curl -O https://raw.githubusercontent.com/datagovsg/grafana-init/develop/mysql/.env
```

Amend the downloaded `.env` file by filling in the values into the given
template.

Next run the following:

```bash
docker pull datagovsg/grafana-init:mysql
```

This pulls the Grafana MySQL session initialization image for use.

Now run:

```bash
docker run --rm -it --env-file .env datagovsg/grafana-init:mysql
```

If the `docker` session runs successfully, this means that the `session` table
has been created properly.
