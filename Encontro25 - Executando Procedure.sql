USE [CapacitacaoPSG2021H2]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[sp_PesquisarMunicipiosPorSiglaUF]
		@SiglaUF = N'SP'

SELECT	'Return Value' = @return_value

GO
