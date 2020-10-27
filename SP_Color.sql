use Analigrupo5;
GO
CREATE PROCEDURE Insert_Color (@Descripcion_Color VARCHAR(50)
								  )
as

begin

insert into dbo.T_color values (@Descripcion_Color);
end 

GO

exec dbo.Insert_Color  'RoJo';
						 
----------------------

GO

CREATE PROCEDURE Update_Color (@IdColor INT,
							  @Descripcion_color VARCHAR(50))
as

begin

UPDATE T_Color set Descripcion_Color = @Descripcion_color
 WHERE Id_Color = @IdColor;
end 

go

 EXEC DBO.Update_Color 1, 'PRUEBA2';	 
---------------------------
GO

CREATE PROCEDURE Select_Color (@IdColor int)
as
begin

SELECT * 
  FROM T_Color 
 WHERE Id_Color  = @IdColor 
end 

go

exec dbo.Select_Color 1;

---------------------------
GO

CREATE PROCEDURE Delete_Color (@IdColor int)
as

begin

DELETE 
FROM T_color
WHERE Id_Color = @IdColor;
end 
go

EXEC DBO.Delete_Color 1;



