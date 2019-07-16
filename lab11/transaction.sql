use jew_shop
GO
BEGIN TRANSACTION
GO
UPDATE Employee SET salary = salary * 1.1
WHERE position = 'guarder'
IF(@@ERROR <> 0)
ROLLBACK
GO
UPDATE Employee SET salary = salary * 0.95
WHERE position = 'seller'
IF(@@ERROR <> 0)
ROLLBACK
COMMIT