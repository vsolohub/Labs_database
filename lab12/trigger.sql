use jew_shop
GO
CREATE TRIGGER Employee_Update ON Employee
AFTER UPDATE
AS
INSERT INTO EmployeeHistory(operation, surname, first_name, second_name, position, salary,
adress, phone_number)
SELECT 'Update', surname, first_name, second_name, position, salary, adress, phone_number
FROM INSERTED