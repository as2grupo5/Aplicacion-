use Analigrupo5;
go
CREATE PROCEDURE Insert_Factura_Enc (@Id_Cliente INT,
									 @Id_Empleado INT,
									 @Fecha     Date
								  )
as

begin

insert into dbo.T_Factura values (@Id_Cliente ,
								   @Id_Empleado ,
								   @Fecha
									);
end 
go

exec dbo.Insert_Factura_Enc 3,
						 2,
						 '21-OCT-2020'
						 ;

---------------------------
go

CREATE PROCEDURE Update_Factura_Enc (@Id_Factura INT,
                                     @Id_Cliente INT,
									 @Id_Empleado INT,
									 @Fecha     Date
								  )
as

begin

UPDATE T_Factura set Id_Cliente = Id_Cliente,
			  		  Id_Empleado = @Id_Empleado,
		 			  Fecha = @Fecha
 WHERE Id_Factura = @Id_Factura;
end 

go

 EXEC DBO.Update_Factura_Enc 1, 3,
						 2,
						 '20-OCT-2020'
						 ;	 

---------------------------
GO

CREATE PROCEDURE Select_Factura_Enc (@Id_Factura int)
as
begin

SELECT * 
  FROM T_Factura 
 WHERE Id_Factura  = @Id_Factura 
end 

go

exec dbo.Select_Factura_Enc 1;

---------------------------
GO

CREATE PROCEDURE Delete_Factura_Enc (@Id_Factura int)
as

begin

DELETE 
FROM T_Factura
WHERE Id_Factura = @Id_Factura;
end 
go

EXEC DBO.Delete_Factura_Enc 1;
