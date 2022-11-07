#!/bin/sh

set -e

database_filename=tmp/app.db

cd $(dirname $0)/..

mkdir -p tmp

sqlite3 $database_filename <migrations/initial.sql

DATABASE_URI=sqlite://tmp/app.db SERVER_ADDRESS=127.0.0.1:8080 ./app
