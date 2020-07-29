
GO
CREATE OR ALTER PROCEDURE GetCustomerInfo
	 (
	 @CustomerEmail VARCHAR(254)
	 )
AS
BEGIN
	DECLARE @CustomerID VARCHAR(254);
	SET @CustomerID = (
		SELECT CustomerID
		FROM CustomerEmails
		WHERE EmailAddress = @CustomerEmail
	);

	SELECT *
	FROM CustomerInfo
	WHERE CustomerID = @CustomerID;
	
END;

EXECUTE GetCustomerInfo @CustomerEmail = 'tedcodd@dbbguys.com';
