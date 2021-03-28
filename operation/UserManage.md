
# 用户管理

## 创建用户
localhost 代表只能在本地登录

```sql
CREATE USER 'c332030'@'%' IDENTIFIED BY '123456';
```


## 更改密码
```sql
set password for 'c332030'@'%' = password('123456');
```


## 授权
* 代表所有

```sql
grant all privileges
on databsename.tablename
to 'c332030'@'%';

grant all privileges
on *.*
to 'c332030'@'%';
```

# 刷新权限，修改用户权限时需要使用
```sql
flush privileges;
```
