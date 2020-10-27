use Analigrupo5;
GO
CREATE PROCEDURE Insert_Usuario (@IdEmpleado INT,
                                 @IdNivel INT,
								 @Usuario VARCHAR(50),
								 @password VARCHAR(20)
								  )
as

begin

insert into dbo.T_Usuarios values (@IdEmpleado ,
                                   @IdNivel ,
								   @Usuario ,
								   @password 
								  );
end 

GO

exec dbo.Insert_Usuario 2,
						 9,
						 'ALOPEZ',
						 '123456';
						 
----------------------

GO

CREATE PROCEDURE Update_Usuario (@IdUsuario INT,
                                 @IdEmpleado INT,
                                 @IdNivel INT,
								 @Usuario VARCHAR(50),
								 @password VARCHAR(20))
as

begin

UPDATE T_Usuarios set Id_Empleado = @IdEmpleado, 
					   Id_Nivel = @IdNivel,  
					   Usuario = @Usuario, 
					   Passw = @password
 WHERE Id_usuario = @IdUsuario;
end 

go

 EXEC DBO.Update_Usuario 1,
                           2,
						   9,
						  'ALOPEZ1',
						  'PRUEBA';	 
---------------------------
GO

CREATE PROCEDURE Select_Usuario (@IdUsuario int)
as
begin

SELECT * 
  FROM T_Usuarios 
 WHERE Id_usuario  = @IdUsuario 
end 

go

exec dbo.Select_Usuario 1;

---------------------------
GO

CREATE PROCEDURE Delete_Usuario (@IdUsuario int)
as

begin

DELETE 
FROM T_Usuarios
WHERE Id_usuario = @IdUsuario;
end 
go

EXEC DBO.Delete_Usuario 1;