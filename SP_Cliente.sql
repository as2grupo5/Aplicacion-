use Analigrupo5;
go
CREATE PROCEDURE Insert_Cliente (@Nombre_Cliente VARCHAR(50),
								 @Nit  VARCHAR(12),
								 @Telefono  INT
								  )
as

begin

insert into dbo.T_Clientes values (@Nombre_Cliente,
								   @Nit  ,
								   @Telefono  
									);
end 
go

exec dbo.Insert_Cliente 'Alester',
						 '75068-a',
						 5724545
						 ;

---------------------------
go

CREATE PROCEDURE Update_Cliente (@Id_Cliente int,
                                   @Nombre_Cliente VARCHAR(50),
								   @Nit  VARCHAR(12),
								   @Telefono  INT
								  )
as

begin

UPDATE T_Clientes set Nombre_Cliente = @Nombre_Cliente,
					  Nit  = @Nit,
					  Telefono  = @Telefono
 WHERE Id_Cliente = @Id_Cliente;
end 

go

 EXEC DBO.Update_Cliente 1, 'Alester1',
						 '075068-1',
						 57245454		 

---------------------------
GO

CREATE PROCEDURE Select_Cliente (@Id_Cliente int)
as
begin

SELECT * 
  FROM T_Clientes 
 WHERE Id_Cliente  = @Id_Cliente 
end 

go

exec dbo.Select_Cliente 1;

---------------------------
GO

CREATE PROCEDURE Delete_Cliente (@Id_Cliente int
								  )
as

begin

DELETE 
FROM T_Clientes
WHERE Id_Cliente = @Id_Cliente;
end 
go

EXEC DBO.Delete_Cliente 2;