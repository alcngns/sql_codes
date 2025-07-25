--Write a query that calculates how many male and female customers there are for each city.


SELECT
C.CITY,
(
	SELECT COUNT(DISTINCT USERID) FROM USERS U 
	JOIN ADDRESS A ON A.USERID = U.ID
	WHERE A.CITYID = C.ID AND U.GENDER = 'E'
) AS MEN,
(
	SELECT COUNT(DISTINCT USERID) FROM USERS U 
	JOIN ADDRESS A ON A.USERID = U.ID
	WHERE A.CITYID = C.ID AND U.GENDER = 'K'
) AS WOMEN,
(
	SELECT COUNT(DISTINCT USERID) FROM USERS U 
	JOIN ADDRESS A ON A.USERID = U.ID
	WHERE A.CITYID = C.ID 
) AS TOTAL
FROM CITIES  C



