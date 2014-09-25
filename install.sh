#!/bin/bash

cd /app/
composer install --no-interaction

php tao/scripts/taoInstall.php --db_driver pdo_mysql --db_host localhost --db_name tao --db_user root --module_host http://localhost/ --module_name tao26_ce --module_namespace http://localhost/tao.rdf --module_url http://localhost --user_login admin --user_pass admin -e taoCe
