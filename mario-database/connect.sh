#!/bin/sh

export PGPASSWORD=$POSTGRES_PASSWORD

psql -h db -U $POSTGRES_USER -w