#! /bin/sh
docker-compose stop dfunction
docker-compose rm -f dfunction
docker-compose build
docker-compose up -d
echo -e "curl http://$(hostname -i | awk '{print $1}'):1080/run/hello-world'"
docker-compose logs -f dfunction
