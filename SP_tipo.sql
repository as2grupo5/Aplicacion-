use Analigrupo5;
GO
CREATE PROCEDURE Insert_Tipo (@Descripcion_Tipo VARCHAR(50)
								  )
as

begin

insert into dbo.T_Tipo values (@Descripcion_Tipo);
end 

GO

exec dbo.Insert_Tipo  'PRUEBA';
						 
----------------------

GO

CREATE PROCEDURE Update_Tipo (@IdTipo INT,
							  @Descripcion_Tipo VARCHAR(50))
as

begin

UPDATE T_Tipo set Descripcion_Tipo = @Descripcion_Tipo
 WHERE Id_Tipo = @IdTipo;
end 

go

 EXEC DBO.Update_Tipo 1, 'PRUEBA2';	 
---------------------------
GO

CREATE PROCEDURE Select_Tipo (@IdTipo int)
as
begin

SELECT * 
  FROM T_Tipo 
 WHERE Id_Tipo  = @IdTipo 
end 

go

exec dbo.Select_Tipo 1;

---------------------------
GO

CREATE PROCEDURE Delete_Tipo (@IdTipo int)
as

begin

DELETE 
FROM T_Tipo
WHERE Id_Tipo = @IdTipo;
end 
go

EXEC DBO.Delete_Tipo 1;
