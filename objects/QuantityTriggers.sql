use jew_shop
GO
--	Тригер після вставки:
CREATE TRIGGER QuantityInsert ON Order_info
AFTER INSERT
AS 
IF (SELECT status FROM inserted) = '1'
BEGIN
UPDATE Catalog SET Catalog.quantity = Catalog.quantity - 1
WHERE id = (SELECT cataloge_id FROM inserted)
END
GO
--	Тригер після оновлення:
CREATE TRIGGER QuantityUpdate ON Order_info
AFTER UPDATE
AS 
IF (SELECT status FROM inserted) = '1'
BEGIN
UPDATE Catalog SET Catalog.quantity = Catalog.quantity - 1
WHERE id = (SELECT cataloge_id FROM inserted)
END
