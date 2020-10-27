use Analigrupo5;
go
CREATE PROCEDURE Insert_Motorista (@Id_empleado int,
                                   @Nombre VARCHAR(50),
								   @Placa VARCHAR(6),
								   @Estado VARCHAR(10)
								  )
as

begin

insert into dbo.T_Motorista values (@Id_empleado,
									@Nombre, 
									@Placa,
									@Estado
									);
end 
go

exec dbo.Insert_Motorista 2,
						 'Alester',
						 '751ABC',
						 'ACTVO'
						 ;

---------------------------
go

CREATE PROCEDURE Update_Motorista (@Id_Motorista int,
                                   @Id_empleado int,
                                   @Nombre VARCHAR(50),
								   @Placa VARCHAR(6),
								   @Estado VARCHAR(10)
								  )
as

begin



UPDATE T_Motorista set Id_Empleado = @Id_empleado, 
					   Nombre = @Nombre,  
					   Placa = @Placa, 
					   Estado = @Estado
 WHERE Id_motorista = @Id_Motorista;
end 

go


 EXEC DBO.Update_Motorista 1,
                           2,
						  'ALESTER1',
						  85421,
						  'INACTIVO'			 

---------------------------
GO

CREATE PROCEDURE Select_Motorista (@Id_motorista int)
as
begin

SELECT * 
  FROM T_Motorista 
 WHERE Id_motorista  = @Id_motorista 
end 

go

exec dbo.Select_Motorista 1;

---------------------------
GO

CREATE PROCEDURE Delete_Motorista (@Id_motorista int
								  )
as

begin

DELETE 
FROM T_Motorista
WHERE Id_motorista = @Id_motorista;
end 
go

EXEC DBO.Delete_Motorista 1;
