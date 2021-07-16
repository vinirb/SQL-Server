SET IDENTITY_INSERT Municipio ON
GO

INSERT INTO Municipio(
MunicipioID,
IBGE6,
IBGE7,
Descricao,
MesoregiaoID,
MicroregiaoID,
UFID,
Populacao,
CEP,
SiglaUF
)
SELECT 
	MunicipioID,
	IBGE6,
	IBGE7,
	NOME_MUNICIPIO,
	MesoregiaoID,
	MicroregiaoID,
	UFID,
	POPULACAO, 
	CEP,
	UF
FROM  VWCapacitacaoModelo01
GO

SET IDENTITY_INSERT Municipio OFF
GO
