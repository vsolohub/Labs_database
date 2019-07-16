use jew_shop
GO
CREATE PROCEDURE Revenue
@date1 DATETIME,
@date2 DATETIME AS
BEGIN 
IF (@date1 > @date2)
BEGIN
SELECT Client.surname AS surname, Client.first_name AS first_name, SUM(Catalog.price) AS
price, Order_info.order_date AS order_date
FROM Client
JOIN Order_info ON Order_info.client_id = Client.id
JOIN Catalog ON Catalog.id = Order_info.cataloge_id
JOIN Product ON Product.id = Catalog.product_id
JOIN Shop ON Shop.id = Catalog.shop_id
WHERE Order_info.order_date BETWEEN @date2 AND @date1
GROUP BY Client.surname, Client.first_name, Order_info.order_date
END
END
