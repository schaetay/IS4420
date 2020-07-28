GO
ALTER PROCEDURE UpdateProductPrice
	( 
	@ProductID SMALLINT,
	@Price DECIMAL(7,2)
	)
AS
BEGIN
  DECLARE
	
	START

		UPDATE SalesPrice = @SalesPrice
		SET PriceChangeDate = CURRENT_DATE()
		INSERT ProductPriceHistory;


	COMMIT;

END
