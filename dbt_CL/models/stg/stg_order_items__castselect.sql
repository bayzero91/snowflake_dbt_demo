SELECT
    ORDER_ITEM_ID,
    ORDER_ID,
    LINE_NUMBER,
    PRODUCT_ID,
    QUANTITY as Menge,
    UNIT_PRICE_NET as Stueckpreis,
    DISCOUNT_NET as NettoRabat,
    TAX_RATE as Steuersatz,
    UNIT_COST_NET_AT_ORDER as Stueckpreis_bei_Bestellung,
    Cast(UPDATED_AT as date) as updated_at
From {{ source('erp','order_items')}}