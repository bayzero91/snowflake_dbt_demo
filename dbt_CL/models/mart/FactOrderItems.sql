{{ config(materialized = 'table') }}

with o as
(select* from {{ ref('stg_orders__cast')}})
,

oi as
(select*from {{ ref('int_order_items__addAttributes')}})
,

final as(
SELECT
oi.*,
o.customer_id,
o.order_date
FRom oi
left join o on oi.order_id = o.order_id
)

select*from final