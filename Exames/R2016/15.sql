PRAGMA foreign_keys = 'ON';

SELECT E1.nome
FROM Estudante E1 JOIN Amizade ON (E1.ID = ID1) JOIN Estudante E2 ON (E2.ID = ID2)
WHERE E2.nome LIKE 'Gabriel%';