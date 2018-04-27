#!/usr/bin/env sh
set -euo pipefail

mysql -u ${MYSQL_USER} --password="${MYSQL_PW}" -h ${MYSQL_HOSTNAME} -P ${MYSQL_PORT} -D ${MYSQL_DB} \
    -e 'CREATE TABLE IF NOT EXISTS `session` (
    `key`       CHAR(16) NOT NULL,
    `data`      BLOB,
    `expiry`    INT(255) UNSIGNED NOT NULL,
    PRIMARY KEY (`key`)
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8;'
