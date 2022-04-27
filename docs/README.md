```shell
sudo docker-compose up
sudo docker-compose up -d
sudo docker-compose down

sudo docker-compose build

sudo docker-compose up casdoor-mysql
sudo docker-compose up -d casdoor-mysql
sudo docker-compose stop casdoor-mysql

sudo docker-compose up casdoor
sudo docker-compose up -d casdoor
sudo docker-compose stop casdoor

LATEST-RELEASE=curl xxx
docker run -p 8000:8000 casbin/casdoor-all-in-one:$LATEST-RELEASE

sudo docker run -p 8091:8000 casbin/casdoor-all-in-one
http://49.232.6.131:8091/
http://172.21.16.11:8091/
admin
123

https://his.7otech.com/prod-api/callback
```