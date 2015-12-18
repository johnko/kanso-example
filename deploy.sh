#!/bin/sh

if [ "x" = "x$1" ]; then
    HOST=localhost
else
    HOST=$1
fi

DBNAME=example
DBURL=http://${HOST}:5984/${DBNAME}

kanso install

kanso transform add-ids data/example.json data/example-with-ids.json
kanso upload data/example-with-ids.json ${DBURL}

kanso push ${DBURL}
