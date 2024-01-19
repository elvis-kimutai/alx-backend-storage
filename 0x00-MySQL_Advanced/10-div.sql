-- creates a function SafeDiv
DELIMITER $4 ;
CREATE FUNCTION SafeDiv(
	a INT,
	b INT
)
RETURNS FLOAT
DETERMINISTIC
BEGIN
	DECLARE result FLOAT;
	IF b = 0 THEN
		RETURN 0;
	END IF;
	SET result = (a * 1.0) / b;
	RETURN result;
END;$$
DELIMITER ;
