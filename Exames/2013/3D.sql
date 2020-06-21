DROP VIEW IF EXISTS numBugs;

CREATE VIEW numBugs AS
    SELECT idBug, idAplicacao, COUNT(*) AS NB
    FROM Bug
    GROUP BY idAplicacao;

SELECT nome
FROM Aplicacao JOIN numBugs USING (idAplicacao)
WHERE idBug NOT IN (SELECT B1.idBug FROM numBugs as B1, numBugs as B2 WHERE B1.NB < B2.NB);