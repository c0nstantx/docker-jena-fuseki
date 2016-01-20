#Docker image for Apache Jena with Fuseki

This is an implementation of Apache [Jena][1] with [TDP][2] persistence along with [Fuseki2][3] API.

Run
-----
In order to run it you simply use the following command

    docker run -d -p 3030:3030 c0nstantx/jena-fuseki

Then you can see the web interface of Fuseki, by opening in a browser the following url

    http://localhost:3030

Setup port
-----------------------

Fuseki runs by default on port `3030`. You can define the port of Fuseki inside the container by setting the environment variable `FUSEKI_PORT`

e.x.

    docker run -d -p 3030:3000 -e FUSEKI_PORT=3000 c0nstantx/jena-fuseki

Setup dataset
--------------

The triplestore's default dataset is `ds` and exists at the `/ds` endpoint.

e.x. `http://localhost:3030/ds`

If you want to define a different default dataset, you can do it by using the environment variable `FUSEKI_DATASET`

e.x.

    docker run -d -p 3030:3030 -e FUSEKI_DATASET=datastore

Now the TDP will be on `http://localhost:3030/datastore


Mount volume
----------------
The triplestore persistence uses the folder /db to store it's data. So, if you want to mount a physical drive, you can do it by running the following command

    docker run -d -p 3030:3030 -v /my/local/volume:/db c0nstantx/jena-fuseki

[1]:https://jena.apache.org/
[2]:https://jena.apache.org/documentation/tdb/index.html
[3]:https://jena.apache.org/documentation/fuseki2/index.html