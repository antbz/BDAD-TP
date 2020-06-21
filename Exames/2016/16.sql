SELECT nome, anoCurricular
FROM Estudante
WHERE ID IN (SELECT ID1 FROM Amizade) AND ID NOT IN (
    SELECT DISTINCT E1.ID
    FROM Estudante E1 JOIN Amizade ON (E1.ID = ID1) JOIN Estudante E2 ON (E2.ID = ID2)
    WHERE E1.anoCurricular <> E2.anoCurricular)
ORDER BY anoCurricular, nome;