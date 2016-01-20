#!/bin/bash

./fuseki-server --loc=/db --port=${FUSEKI_PORT} --set tdb:fileMode=direct /${FUSEKI_DATASET}