json.id order.id
json.user_id order.user_id
json.user order.user["name"]
json.subtotal order.subtotal
json.tax order.tax
json.total order.total

json.carted_products order.carted_products, partial: "carted_products/carted_product", as: :carted_product
