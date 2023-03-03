select customer_id
, name
, email
, min(a.created_at) as first_order_at
, count(distinct a.id) as number_of_orders
from `analytics-engineers-club.coffee_shop.orders` a
left join `analytics-engineers-club.coffee_shop.customers` b on a.customer_id = b.id
group by 1, 2, 3
order by 4