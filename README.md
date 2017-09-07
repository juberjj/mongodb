## Usage
To run mongod:

$ docker run -d --name mongo -p 27017:27017 juber/mongodb
You can also specify the database repository where to store the data
with the volume -v option:

$ docker run -d --name mongo -p 27017:27017 \
-v /somewhere/onmyhost/mydatabase:/data/db \
juber/mongodb
To run a shell session:

$ docker exec -ti mongo sh
To use the mongo shell client:

$ docker exec -ti mongo mongo
The mongo shell client can also be run its own container:

$ docker run -ti --rm --name mongoshell monogo host:port/db
