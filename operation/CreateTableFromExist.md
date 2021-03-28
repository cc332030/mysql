
# 从现有表创建临时表

## 只创建表

将从源表赋值列名、数据类型、大小、非空约束以及索引。而源表的内容以及其他约束不会复制

```sql
CREATE TABLE NEW_TABLE
LIKE TABLE;
```

## 同时插入数据

```sql
CREATE TABLE NEW_TABLE
AS
SELECT *
FROM TABLE;
```

## 创建表，插入数据并修改字段

SELECT 后使用别名可修改列名称

```sql
CREATE TABLE
NEW_TABLE(TEAMNO INT(10),PLAYERNO INT(10), DIVISION CHAR(10))
AS
SELECT *
FROM TABLE;
```
