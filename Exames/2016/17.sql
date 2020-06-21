SELECT DISTINCT ID2
FROM Amizade
WHERE ID1 IN (SELECT ID2
              FROM Amizade
              WHERE ID1 IN (SELECT ID2
                            FROM Estudante JOIN Amizade ON (ID = ID1)
                            WHERE nome = 'Miguel Sampaio'));