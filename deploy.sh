#!/bin/sh

DBNAME=example
DBURL=http://localhost:5984/${DBNAME}

kanso install
kanso push ${DBURL}
kanso transform add-ids data/example.json data/example-with-ids.json
kanso upload data/example-with-ids.json ${DBURL}
