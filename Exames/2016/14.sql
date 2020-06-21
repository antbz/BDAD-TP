PRAGMA foreign_keys = 'ON';

SELECT E.nome AS Estudante, C.nome as Curso
FROM Estudante E JOIN Curso C ON E.curso = C.ID
WHERE E.anoCurricular = 3;