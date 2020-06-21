SELECT E1.nome
FROM Estudante E1 JOIN Amizade ON (E1.ID = ID1) JOIN Estudante E2 ON (E2.ID = ID2)
GROUP BY ID1
HAVING COUNT(DISTINCT E2.anoCurricular) = (SELECT COUNT(DISTINCT anoCurricular) FROM Estudante);