use Analigrupo5;
go
CREATE PROCEDURE Insert_Proveedor (@Nombre_Proveedor VARCHAR(50),
								   @Descripcion VARCHAR(50),
								   @Telefono  INT,
								   @Nit  VARCHAR(12),
								   @Direccion  VARCHAR(50)
								  )
as

begin

insert into dbo.T_Proveedor values (@Nombre_Proveedor,
									@Descripcion, 
									@Telefono,
									@Nit,
									@Direccion
									);
end 
go

exec dbo.Insert_Proveedor 'Alester',
						 'pRUEBA',
						 54874,
						 '75068-a',
						 'PRUEBA 123 DFASD'
						 ;

---------------------------
go

CREATE PROCEDURE Update_Proveedor (@Id_Proveedor int,
                                   @Nombre_Proveedor VARCHAR(50),
								   @Descripcion VARCHAR(50),
								   @Telefono  INT,
								   @Nit  VARCHAR(12),
								   @Direccion  VARCHAR(50)
								  )
as

begin



UPDATE T_Proveedor set Nombre_Proveedor = @Nombre_Proveedor, 
					   Descripcion = @Descripcion,  
					   Telefono= @Telefono, 
					   Nit = @Nit,
					   Direccion = @Direccion
 WHERE Id_Proveedor = @Id_Proveedor;
end 

go


 EXEC DBO.Update_Proveedor 1, 'Alester',
						 'pRUEBA',
						 54874,
						 '75068-a',
						 'PRUEBA 123 DFASD'			 

---------------------------
GO

CREATE PROCEDURE Select_Proveedor (@Id_Proveedor int)
as
begin

SELECT * 
  FROM T_Proveedor 
 WHERE Id_Proveedor  = @Id_Proveedor 
end 

go

exec dbo.Select_Proveedor 1;

---------------------------
GO

CREATE PROCEDURE Delete_Proveedor (@Id_Proveedor int
								  )
as

begin

DELETE 
FROM T_Proveedor
WHERE Id_Proveedor = @Id_Proveedor;
end 
go

EXEC DBO.Delete_Proveedor 1;
