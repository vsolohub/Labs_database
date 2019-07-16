use jew_shop
GO
CREATE PROCEDURE LastMonthRevenue AS
BEGIN
TRUNCATE TABLE LastMonthRevenue_stats
INSERT INTO LastMonthRevenue_stats
SELECT Client.surname AS surname, Client.first_name AS first_name, SUM(Catalog.price) AS
price, Order_info.order_date AS order_date
FROM Client
JOIN Order_info ON Order_info.client_id = Client.id
JOIN Catalog ON Catalog.id = Order_info.cataloge_id
JOIN Product ON Product.id = Catalog.product_id
JOIN Shop ON Shop.id = Catalog.shop_id
WHERE DATEDIFF(MONTH, Order_info.order_date, GETDATE()) = 1
GROUP BY Client.surname, Client.first_name, Order_info.order_date
END