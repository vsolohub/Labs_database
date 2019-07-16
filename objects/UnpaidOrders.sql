use jew_shop
GO
CREATE PROCEDURE UnpaidOrders AS
BEGIN
SELECT Client.surname, Client.first_name, Client.second_name, Product.name, Catalog.price, Shop.adress ,Order_info.status ,Order_info.order_date 
FROM Client
JOIN Order_info ON Order_info.client_id = Client.id
JOIN Catalog ON Order_info.cataloge_id = Catalog.id
JOIN Shop ON  Catalog.shop_id = Shop.id
JOIN Product ON Catalog.product_id = Product.id
WHERE Order_info.status = '0'
END
