CREATE TRIGGER Clinica2B
BEFORE INSERT ON ConsultasMarcadas
WHEN New.horainicio IN (SELECT horainicio
FROM ConsultasMarcadas
WHERE data = New.data AND codmedico = New.codmedico AND horainicio = New.horainicio)
BEGIN
SELECT RAISE(IGNORE);
END;