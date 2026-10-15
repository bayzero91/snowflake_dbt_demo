SELECT
*,
Menge * Stueckpreis - NettoRabat as NettoUmsatz,
Round((Menge * Stueckpreis - NettoRabat)*(1+Steuersatz),2) as BruttoUmsatz
From {{ref('stg_order_items__castselect')}}

