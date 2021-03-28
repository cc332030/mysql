
# 批量更新

## 临时表方式

先创建临时表，再通过临时表更新

```sql
update table
set
    table.firld1 = table_templory.firld1
    , table.firld2 = table_templory.firld2
where table.id = table_templory.id
```

## WHEN THEN

```sql
update table_own
set
    cloumn_own=
    case id
        when 1 then 'a'
        when 2 then 'b'
        when 3 then 'c'
    end
where id in (1,2,3);
```
