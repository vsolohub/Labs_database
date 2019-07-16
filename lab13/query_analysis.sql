
use jew_shop
GO
SET SHOWPLAN_ALL ON;
GO
SELECT Client.surname, Client.first_name, Product.name
FROM Client
JOIN Order_info ON Client.id = Order_info.client_id
JOIN Catalog ON Catalog.id = Order_info.cataloge_id
JOIN Product ON Product.id = Catalog.product_id
WHERE Catalog.price > '700'
GO
SET SHOWPLAN_ALL OFF