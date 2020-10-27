use Analigrupo5;
go
CREATE PROCEDURE Insert_Nivel (@DescripcionNivel varchar(50))
as
declare @v_id_nivel int
begin

insert into dbo.T_Nivel values (@DescripcionNivel);
end 
go

exec dbo.Insert_Nivel 'admin';

------------------------------------
go

CREATE PROCEDURE Update_Nivel (@Id_Nivel int,
                               @DescripcionNivel varchar(50)
								  )
as

begin



UPDATE T_Nivel set Descripcion_tipo = @DescripcionNivel
 WHERE Id_Nivel = @Id_Nivel;
end 

go


 EXEC DBO.Update_Nivel 7,'ALESTER1';
						  			 
---------------------------
GO

CREATE PROCEDURE Select_Nivel (@Id_Nivel int)
as
begin

SELECT * 
  FROM T_Nivel 
 WHERE Id_Nivel  = @Id_Nivel 
end 

go

exec dbo.Select_Nivel 7;

---------------------------
GO

CREATE PROCEDURE Delete_Nivel (@Id_Nivel int
								  )
as

begin

DELETE 
FROM T_Nivel
WHERE Id_Nivel = @Id_Nivel;
end 
go

EXEC DBO.Delete_Nivel 7;
