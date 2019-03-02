delimiter //
CREATE TRIGGER removeSupplier
AFTER DELETE ON products
FOR EACH ROW BEGIN
  IF (OLD.supplier_id NOT IN (SELECT supplier_id FROM products)) THEN
    DELETE FROM suppliers WHERE supplier_id = OLD.supplier_id;
  END IF;
END;
//




delimiter//
CREATE PROCEDURE invalidPaymentDetails (
IN payment_details VARCHAR(25), 
)
BEGIN
  INSERT INTO Customers (payment_details)
   VALUES('Null');
END;//





delimiter //
CREATE FUNCTION GetSupplierID(Supplier_id INTEGER)
RETURNS VARCHAR

BEGIN

  DECLARE Supplier_id INTEGER;

  IF 
  
  SELECT received_date
  FROM supplier_orders
  WHERE received_date = NULL
  ELSE RETURN 0;
  
  END IF;
             
  RETURN Supplier_id;
END;//