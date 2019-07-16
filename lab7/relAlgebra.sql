use jew_shop
--Запит умовного з’єднання для отримання ім’я та прізвища покупця та назву придбаного товару ціна якого перевищує 700:
SELECT Client.surname, Client.first_name, Product.name
FROM Client
JOIN Order_info ON Client.id = Order_info.client_id
JOIN Catalog ON Catalog.id = Order_info.cataloge_id
JOIN Product ON Product.id = Catalog.product_id
WHERE Catalog.price > '700'

GO

-- Запит для отримання даних про клієнта в прізвищі якого міститься буквосполучення ‘ol’:
SELECT Client.surname, Client.first_name, Product.name
FROM Client
JOIN Order_info ON Client.id = Order_info.client_id
JOIN Catalog ON Catalog.id = Order_info.cataloge_id
JOIN Product ON Product.id = Catalog.product_id
WHERE Client.surname LIKE '%ol%'

GO

-- Запит для отримання інформації про працівника та адресу магазину в якому він працює:
SELECT Employee.second_name, Employee.first_name, Employee.phone_number, Shop.adress FROM
Employee
JOIN Shop ON Employee.shop_info = Shop.id
ORDER BY Shop.adress

GO

--Запит для отримання ціни продукту і магазину в якому він міститься в ціновому діапазоні між 350 і 1000
SELECT Product.name, Catalog.price, Shop.adress FROM Product
JOIN Catalog ON Catalog.product_id = Product.id
JOIN Shop ON Shop.id = Catalog.shop_id
WHERE Catalog.price BETWEEN '350' and '1000'