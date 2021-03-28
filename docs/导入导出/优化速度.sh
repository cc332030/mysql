
set GLOBAL innodb_flush_log_at_trx_commit = 0;

# 0
# log buffer将每秒一次地写入log file, 并且log file的flush(刷新到disk)操作同时进行.
# 此时, 事务提交是不会主动触发写入磁盘的操作.

# 1 (默认)
# 每次事务提交时, MySQL会把log buffer的数据写入log file, 并且将log file flush(刷新到disk)中去.

# 2
# 每次事务提交时, MySQL会把log buffer的数据写入log file.
# 但不会主动触发flush(刷新到disk)操作同时进行
# 然而, MySQL会每秒执行一次flush(刷新到disk)操作
# 