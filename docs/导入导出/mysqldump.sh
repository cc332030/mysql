
# 导入速度优化：set GLOBAL innodb_flush_log_at_trx_commit = 0;

# 导出
mysqldump -u root -p leasehold_dev > cg.sql

# 导出所有数据库
mysqldump -uroot -proot --all-databases >/tmp/all.sql

# 导出 db1 db2 两个数据库
mysqldump -uroot -proot --databases db1 db2 >/tmp/user.sql

# 导出 db1 数据库的两张表
mysqldump -uroot -proot --databases db1 --tables a1 a2  >/tmp/db1.sql

# 导出表包含数据筛选条件
mysqldump -uroot -proot --databases db1 --tables a1 --where='id=1'  >/tmp/a1.sql

# 字段是字符串,并且导出的sql中不包含drop table,create table
mysqldump -uroot -proot --no-create-info --databases db1 --tables a1 --where="id='a'"  >/tmp/a1.sql

# 只导出表结构
mysqldump -uroot -proot --no-data --databases db1 >/tmp/db1.sql



# 导入
mysql -u root -p 123456 c_cg < cg.sql


mysqldump.exe test --result-file=test.sql --complete-insert --add-drop-trigger --user=root --host=192.168.1.2 --port=3307

# D:\Program\Study\Database\MySQL\bin\mysqldump.exe test --result-file=C:\Users\Administrator\dump.sql --complete-insert --add-drop-trigger --user=root --host=192.168.1.2 --port=3307




# Docker 导出
docker exec -it mysql mysqldump -uroot -pc_test@6 test_cg > cg.sql

docker exec -it mysql mysqldump -uroot -p123456 c_sso > sso.sql

# Docker 创建数据库
docker exec -it mysql mysql -uroot -proot
create database test_db_copy;

# Docker 导入
docker exec -i mysql mysql -uroot -p123456 c_cg < cg.sql

docker exec -i mariadb1 mysql -uroot -p123456 c_sso < sso.sql
