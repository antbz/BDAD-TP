SELECT E1.nome, E2.nome
FROM Estudante E1 JOIN Amizade ON (E1.ID = ID1) JOIN Estudante E2 ON (E2.ID = ID2)
WHERE E1.ID < E2.ID AND E1.curso <> E2.curso;