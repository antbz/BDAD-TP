DROP VIEW IF EXISTS numAmigos;

CREATE VIEW numAmigos AS
    SELECT ID1 as ID, COUNT(*) as numAmigos
    FROM Amizade
    GROUP BY ID1;

SELECT nome
FROM Estudante
WHERE ID IN (SELECT ID FROM numAmigos WHERE numAmigos > 3);