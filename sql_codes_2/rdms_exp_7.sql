--Write the query that returns how many male and female users there are in each city.


SELECT 
C.CITY, U.GENDER, COUNT(A.ID) AS TOTALUSERS
FROM ADDRESS AS A
JOIN CITIES C ON C.ID = A.CITYID
JOIN USERS U ON U.ID = A.USERID
GROUP BY C.CITY, U.GENDER
ORDER BY 1