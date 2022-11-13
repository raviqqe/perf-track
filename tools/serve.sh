#!/bin/sh

set -e

database_host=postgresql://localhost:5432
database_name=perf_track

cd $(dirname $0)/..

mkdir -p tmp

psql $database_host/postgres -c "create database $database_name" || :
psql $database_host/$database_name <migrations/initial.sql

DATABASE_URI=$database_host/$database_name SERVER_ADDRESS=127.0.0.1:8080 ./app
