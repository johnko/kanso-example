#!/bin/sh
kanso install
kanso push http://localhost:5984/example
kanso transform add-ids data/example.json data/example-with-ids.json
kanso upload data/example-with-ids.json http://localhost:5984/example
