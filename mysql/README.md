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
  * Database name to create the new table(s) in.

You must set the above environment variables into the running Docker container
so that it has the necessary information to create the table(s).
