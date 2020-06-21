DROP TRIGGER IF EXISTS addApp;

CREATE TRIGGER addApp
AFTER INSERT ON AplicacaoServidor
WHEN (New.idAplicacao IN (SELECT idAplicacao FROM Bug WHERE vulnerabilidade = 'sim'))
BEGIN
UPDATE Servidor
SET vulneravel = 'sim'
WHERE (Servidor.idServidor = New.idServidor);
END;