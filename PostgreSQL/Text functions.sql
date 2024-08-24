SELECT
	company_name
	, LOWER(contact_title)
	, CONCAT(LEFT(company_name, 3), RIGHT(city, 3))
	, CASE --splitting text due to ',' saving text before , as address_1
		WHEN POSITION(',' IN address) > 0
		THEN SUBSTRING(address FROM 1 FOR POSITION(',' IN address) - 1)
		ELSE address 
	  END AS address_1
	, CASE WHEN POSITION(',' IN address) > 0 --splitting text due to ',' saving text for , as address_2, if there is no comma, return an empty string
		THEN SUBSTRING(address FROM POSITION(',' IN address) + 1 FOR LENGTH(address) - POSITION(','IN address))
		ELSE ''
	END AS address_2
FROM customers