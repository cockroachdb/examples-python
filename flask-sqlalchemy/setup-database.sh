#!/bin/sh

set -ex

cockroach sql -e 'DROP DATABASE IF EXISTS example_flask_sqlalchemy'
cockroach sql -e 'CREATE DATABASE example_flask_sqlalchemy'
cockroach sql -e 'GRANT ALL ON DATABASE example_flask_sqlalchemy TO example'

python -c 'import hello; hello.db.create_all()'
