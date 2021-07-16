--DECLARE @CODIGO INT ;
--DECLARE @SIGLA VARCHAR(2);

--SET @SIGLA = 'RO';

--SELECT @CODIGO = UFID FROM UnidadesFederacao WHERE SiglaUF = @SIGLA;

--INSERT INTO Municipio(Descricao,UFID)
--SELECT DESCR,@CODIGO FROM Dados_Municipios_UTF8 
--WHERE SiglaUF = @SIGLA;

INSERT INTO Municipio(Descricao,UFID)
	SELECT UTF8.DESCR ,UFS.UFID
	FROM Dados_Municipios_UTF8 AS UTF8
	INNER JOIN UnidadesFederacao AS UFS
		ON UTF8.SiglaUF = UFS.SiglaUF
	WHERE UTF8.SiglaUF = 'RO';

SELECT * FROM  Municipio;

--DELETE FROM Municipio;

--DBCC CHECKIDENT ('Municipio',RESEED, 0);