DROP TRIGGER IF EXISTS addVulnerable;

CREATE TRIGGER addVulnerable
AFTER INSERT ON Bug
WHEN (New.vulnerabilidade = 'sim')
BEGIN
UPDATE Bug
SET prioridade = 1
WHERE Bug.idBug = New.idBug;
UPDATE Servidor
SET vulneravel = 'sim'
WHERE idServidor IN (SELECT idServidor FROM AplicacaoServidor AS appS WHERE appS.idAplicacao = New.idAplicacao);
END;