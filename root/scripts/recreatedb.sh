#!/bin/bash
eval $( perl -Mlocal::lib )

FETCH_DUMPS=$1

psql postgres -U "$POSTGRES_ROOT" -h "$POSTGRES_HOST" -c "DROP DATABASE $POSTGRES_DB;"; /createdb.sh $FETCH_DUMPS
