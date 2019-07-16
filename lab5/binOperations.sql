use jew_shop

--об'єднання
SELECT Client.id, Client.first_name, Client.second_name, Client.phone_number FROM Client
UNION
SELECT Employee.id, Employee.first_name, Employee.second_name, Employee.phone_number
FROM Employee
GO
--декартовий добуток
SELECT Employee.id, Employee.first_name, Employee.second_name, Employee.phone_number,
Client.id, Client.first_name, Client.second_name, Client.phone_number FROM Client,
Employee
GO
--перетин
SELECT * FROM Client
WHERE Client.id IN (SELECT Employee.id FROM Employee)
GO
--різниця
SELECT * FROM Client
WHERE Client.id NOT IN (SELECT Employee.id FROM Employee)
