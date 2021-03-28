
# Count

统计 全表、某列（非null）、结果集 行数

    如果该表只有一个主键索引，没有任何二级索引的情况下，那么COUNT(*)和COUNT(1)都是通过通过主键索引来统计行数的。
    如果该表有二级索引，则COUNT(1)和COUNT(*)都会通过占用空间最小的字段的二级索引进行统计，
    也就是说虽然COUNT(1)指定了第一个 not null 列但是innodb不会真的去统计主键索引（一般为第一个字段的索引）。

## count(1) vs count(*)

count(1)：统计第一个 not null 列

No different after 5.5 in Innodb

