
# 支持的标签和相应的Dockerfile链接
# 8.0.16, 8.0, 8, latest
# 5.7.26, 5.7, 5
# 5.6.44, 5.6


IMAGE=mysql
NAME=mysql

TAG=5

docker pull $IMAGE:$TAG

PORT=3306

APP_HOME=/home/program

mkdir -p $APP_HOME/$NAME/log/log_bin

chmod 777 -R $APP_HOME/$NAME/log

docker run -d \
  --privileged=true \
  --restart unless-stopped \
  \
  --log-opt max-size=10m \
  --log-opt max-file=3 \
  \
  -v /etc/localtime:/etc/localtime \
  \
  -v $APP_HOME/mysql:/usr/local/mysql \
  -v $APP_HOME/mysql/my.conf:/etc/mysql/my.cnf \
  -v $APP_HOME/mysql/log:/var/log/mysql \
  -v $APP_HOME/mysql/data:/var/lib/mysql \
  \
  -p $PORT:3306 \
  -e MYSQL_ROOT_PASSWORD=123456 \
  \
  --name $NAME \
  \
  $IMAGE:$TAG


docker run -d --restart=always \
  --name $NAME \
  -p $PORT:3306 \
  -p 33060:33060 \
  -e MYSQL_ROOT_PASSWORD=123456 \
  -v /etc/localtime:/etc/localtime \
  -v $APP_HOME/mysql/my.conf:/etc/mysql/my.cnf \
  -v $APP_HOME/mysql/data:/var/lib/mysql \
  -v $APP_HOME/mysql/files:/var/lib/mysql-files \
  mysql:8



docker logs $NAME

docker exec -it $NAME bash



# 启动
docker run--name mysql -e MYSQL_ROOT_PASSWORD=123456 -d mysql:latest

$ docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql:tag

# some-mysql 容器名称
# my-secret-pw MySQL root密码
# tag 所需MySQL版本

# 连接

docker run -it --network localhost --rm mysql mysql -hmysql -uroot -p
$ docker run -it --network some-network --rm mysql mysql -hsome-mysql -uexample-user -p
# some-mysql 原始mysql容器的名称


docker run -it --rm mysql mysql -hlocalhost -uroot -p
$ docker run -it --rm mysql mysql -hsome.mysql.host -usome-mysql-user -p
