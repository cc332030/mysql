;

# 查看 innodb 的事务表，确认是否有 trx_tables_locked=1 的事务线程
SELECT *
FROM information_schema.INNODB_TRX it
;

SELECT *
FROM information_schema.INNODB_LOCKS il
;

SELECT *
FROM information_schema.INNODB_LOCK_WAITS ilw
;

# 查看当前还在执行中的进程的id，查看sleep的线程
show full processlist;

# 关闭进程
kill 123;
