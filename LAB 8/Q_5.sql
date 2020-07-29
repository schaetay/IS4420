GO
CREATE OR ALTER PROCEDURE UpdateProductPrice
	( 
	@ProductID SMALLINT,
	@Price DECIMAL(7,2)
	)
AS
BEGIN

	SET XACT_ABORT ON;
	BEGIN TRANSACTION
	--UPDATE ProductPrice

		UPDATE SalesPrice
		SET PriceChangeDate = GETDATE()
		WHERE ProductID = @ProductID;

	COMMIT TRANSACTION;

	BEGIN

		INSERT INTO ProductPriceHistory (ProductID, PriceChangeDate, SalesPrice)
		VALUES (@ProductID, NULL, @Price);
		 
	END
	SET XACT_ABORT OFF;

END

EXEC UpdateProductPrice
	@ProductID = '1',
	@Price = '55.00'
