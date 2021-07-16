CREATE VIEW VWCapacitacaoModelo01
AS

SELECT 
	ALFA.CEP,BETA.IBGE AS IBGE6,
	BETA.IBGE7,BETA.UF,
	BETA.[Munic�pio] AS NOME_MUNICIPIO,
	BETA.[Popula��o_2010] AS POPULACAO,
	GAMA.MunicipioID, 
	GAMA.MesoregiaoID, 
	GAMA.MicroregiaoID, 
	GAMA.UFID

FROM Cidades_UTF8 AS ALFA
INNER JOIN Lista_Municipios_IBGE_Brasil_UTF8 AS BETA
ON ALFA.IBGE = BETA.IBGE
INNER JOIN Municipios_ComplementarIBGE_UTF8 AS GAMA
ON BETA.IBGE7 = GAMA.CodigoIBGE
GO