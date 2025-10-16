-- parcurgerea tuturor furnizorilor si afisarea pe rand a fiecarui nume si rating

USE AdventureWorks2022

DECLARE @VendorName NVARCHAR(100)
DECLARE @CreditRating INT
DECLARE Cursor1 CURSOR FOR
SELECT Name, CreditRating
FROM Purchasing.Vendor
OPEN Cursor1
FETCH NEXT FROM Cursor1 INTO @VendorName, @CreditRating
WHILE @@FETCH_STATUS = 0
BEGIN
PRINT 'Vendor: ' + @VendorName + ' | Credit Rating: ' + CAST(@CreditRating AS NVARCHAR(10))
FETCH NEXT FROM Cursor1 INTO @VendorName, @CreditRating
END
CLOSE Cursor1
DEALLOCATE Cursor1;
