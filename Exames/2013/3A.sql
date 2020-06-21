SELECT hostname, nome
FROM Servidor JOIN Pessoa ON idResponsavel = idPessoa
WHERE vulneravel = 'sim';