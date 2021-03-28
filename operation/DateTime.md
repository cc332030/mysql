
# 日期时间

## 当前时间

```mysql
select now()
```

## 格式化
```mysql
select format(now(),'YYYY-MM-DD')
```

## 日期运算

### +

```mysql
select date_add('20190101', interval 1 day);
```

类型
- MICROSECOND
- SECOND
- MINUTE
- HOUR
- DAY
- WEEK
- MONTH
- QUARTER
- YEAR
- SECOND_MICROSECOND
- MINUTE_MICROSECOND
- MINUTE_SECOND
- HOUR_MICROSECOND
- HOUR_SECOND
- HOUR_MINUTE
- DAY_MICROSECOND
- DAY_SECOND
- DAY_MINUTE
- DAY_HOUR
- YEAR_MONTH
