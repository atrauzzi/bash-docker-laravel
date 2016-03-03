#!/bin/sh
gosu postgres postgres --single <<- EOSQL
   CREATE DATABASE laravel;
   CREATE USER laravel;
   GRANT ALL PRIVILEGES ON DATABASE laravel to laravel;
EOSQL
