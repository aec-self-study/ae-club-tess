select date_trunc(first_order_at, month) as date_month,
count(*) as new_customers

from `dbt_tortega.customers`

group by 1