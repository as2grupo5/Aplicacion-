use Analigrupo5;
go
CREATE PROCEDURE Insert_Empleado (@PriNombre VARCHAR(30),
                                  @SegNombre VARCHAR(30),
								  @TerNombre VARCHAR(30),
								  @PriApellido VARCHAR(30),
								  @SegApellido VARCHAR(30),
								  @ApeCasada VARCHAR(30),
								  @Telefono INT,
								  @Direccion VARCHAR(100),
								  @Nit INT,
								  @Fecha_nacimiento DATE,
								  @Fecha_ingreso DATE
								  )
as

begin

insert into dbo.T_Empleados values (@PriNombre,
									@SegNombre, 
									@TerNombre,
									@PriApellido,
									@SegApellido,
									@ApeCasada,
									@Telefono,
									@Direccion,
									@Nit,
									@Fecha_nacimiento,
									@Fecha_ingreso
									);
end 
go

/*exec dbo.Insert_Empleado 'Anner',
						 'Alester',
						 NULL,
						 'Lopez',
						 'Lopez',
						 NULL,
						 55745704,
						 'lote 90',
						 75063255,
						 '01/01/2020',
						 '01/01/2020'
						 ;*/
						 
----------------------

GO
						 
CREATE PROCEDURE update_Empleado (@idEmpleado int,
                                  @PriNombre VARCHAR(30),
                                  @SegNombre VARCHAR(30),
								  @TerNombre VARCHAR(30),
								  @PriApellido VARCHAR(30),
								  @SegApellido VARCHAR(30),
								  @ApeCasada VARCHAR(30),
								  @Telefono INT,
								  @Direccion VARCHAR(100),
								  @Nit INT,
								  @Fecha_nacimiento DATE,
								  @Fecha_ingreso DATE
								  )
as

begin



UPDATE T_Empleados set Primer_Nombre = @PriNombre, 
					   Segundo_Nombre = @SegNombre,  
					   Tercer_Nombre = @TerNombre, 
					   Primer_Apellido = @PriApellido, 
					   Segundo_Apellido = @SegApellido, 
					   Apellido_casado = @ApeCasada, 
					   Telefono = @Telefono, 
					   direccion = @Direccion, 
					   Nit = @Nit,
					   Fecha_nacimiento = CONVERT(DATE,@Fecha_nacimiento), 
					   Fecha_ingreso = CONVERT(DATE,@Fecha_ingreso)
 WHERE Id_Empleado = @idEmpleado;
end 

go


 /*EXEC DBO.update_Empleado 1,
                          'ANNER1',
						  'ALESTER1',
						  NULL,
						  'LOPEZ1',
						  'LOPEZ1',
						  NULL,
						  55745704,
						  '90 LOS ANGELE1S',
						  75063255,
						  '09/07/1990',
						  '01/01/2020'			*/			 

---------------------------
GO

CREATE PROCEDURE Select_Empleado (@idEmpleado int)
as
begin

SELECT *
FROM T_Empleados
WHERE Id_Empleado = @idEmpleado;
end 

go
exec dbo.Select_Empleado2 2;

---------------------------
GO

CREATE PROCEDURE Delete_Empleado (@idEmpleado int
								  )
as

begin

DELETE 
FROM T_Empleados
WHERE Id_Empleado = @idEmpleado;
end 
go

--EXEC DBO.Delete_Empleado 1;
