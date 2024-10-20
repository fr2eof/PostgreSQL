--Task 1
EXPLAIN ANALYZE
SELECT Н_ЛЮДИ.ИД, Н_ВЕДОМОСТИ.ДАТА
FROM Н_ЛЮДИ
INNER JOIN Н_ВЕДОМОСТИ ON Н_ЛЮДИ.ИД = Н_ВЕДОМОСТИ.ЧЛВК_ИД
WHERE Н_ЛЮДИ.ИМЯ = 'Ярослав' 
AND (Н_ВЕДОМОСТИ.ДАТА = '2010-06-18' AND Н_ВЕДОМОСТИ.ДАТА = '1998-01-05'); 

--Task 2
EXPLAIN ANALYZE
SELECT Н_ЛЮДИ.ИД, Н_ВЕДОМОСТИ.ДАТА, Н_СЕССИЯ.ДАТА
FROM Н_ЛЮДИ
LEFT JOIN Н_ВЕДОМОСТИ ON Н_ЛЮДИ.ИД = Н_ВЕДОМОСТИ.ЧЛВК_ИД
LEFT JOIN Н_СЕССИЯ ON Н_ЛЮДИ.ИД = Н_СЕССИЯ.ЧЛВК_ИД
WHERE Н_ЛЮДИ.ФАМИЛИЯ = 'Афанасьев'
  AND Н_ВЕДОМОСТИ.ИД < 1250972;
