use jew_shop
GO
--Запит для отримання інформації про працівника та адресу магазину в якому він працює та групування по адресі магазину:
SELECT Employee.second_name, Employee.first_name, Employee.phone_number, Shop.adress FROM
Employee
JOIN Shop ON Employee.shop_info = Shop.id
ORDER BY Shop.adress

GO

-- Запит для отримання продукту та його ціни які містяться в першому магазині згруповані по ціні по спаданню:
SELECT Product.name, Catalog.price FROM Product
JOIN Catalog ON Catalog.product_id = Product.id
WHERE Catalog.shop_id = '1'
ORDER BY Catalog.price DESC

GO

-- Запит для отримання загальної суми витрат на кожну вакансію:
use jew_shop
SELECT Employee.position, SUM(Employee.salary) FROM Employee
GROUP BY Employee.position