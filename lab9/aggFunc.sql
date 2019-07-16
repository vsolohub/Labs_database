use jew_shop
--Запит для отримання загальної суми витрат на кожну вакансію:
SELECT Employee.position, SUM(Employee.salary) FROM Employee
GROUP BY Employee.position

GO

-- Запит для отримання мінімальної ціни продукту:
SELECT Product.name, MIN(Catalog.price) FROM Product
JOIN Catalog ON Catalog.product_id = Product.id
GROUP BY Product.name

GO

-- Запит для отримання середньої зарплати на кожну вакансію
use jew_shop
SELECT Employee.position, AVG(Employee.salary) FROM Employee
GROUP BY Employee.position