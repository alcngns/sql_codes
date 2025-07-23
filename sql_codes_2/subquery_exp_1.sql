--query that returns the number of addresses each user has / traditional method  

SELECT 
U.ID, U.NAMESURNAME, COUNT(U.ID) AS N_OF_ADDRESS
FROM USERS AS U, ADDRESS AS A
WHERE A.USERID = U.ID
GROUP BY U.ID, U.NAMESURNAME
ORDER BY 1


--query that returns the number of addresses each user has / join method

SELECT
U.ID, U.NAMESURNAME, COUNT(A.ID) AS N_OF_ADDRESS
FROM USERS AS U
JOIN ADDRESS AS A ON A.USERID = U.ID
GROUP BY U.ID, U.NAMESURNAME
ORDER BY 1


--query that returns the number of addresses each user has / subquery method

SELECT 
U.ID, U.NAMESURNAME,
(SELECT COUNT(*) FROM ADDRESS WHERE USERID = U.ID) AS N_OF_ADDRESS
FROM USERS U
ORDER BY 3 DESC