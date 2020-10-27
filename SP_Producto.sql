use Analigrupo5;
go
CREATE PROCEDURE Insert_Producto (@Id_tipo INT,
								  @Id_Color INT,
								  @Id_Proveedor  INT,
								  @Nombre_producto  VARCHAR(50),
								  @Descripcion VARCHAR(50),
								  @Fecha_ingreso DATE,
								  @Cantidad  INT,
								  @Imagen_producto Varchar(150)
								  )
as

begin

insert into dbo.T_Producto values (@Id_tipo,
									@Id_Color,
									@Id_Proveedor,
									@Nombre_producto,
									@Descripcion,
									CONVERT(DATE,@Fecha_ingreso),
									@Cantidad,
									@Imagen 
									);
end 
go

/*exec dbo.Insert_Producto 2,2,2,'Alester',
						 'pRUEBA',
						 '13-OCT-2020',
						 50,
						 NULL
						 ;*/

---------------------------
go

CREATE PROCEDURE Update_Producto (@Id_Producto INT,
								   @Id_tipo INT,
								   @Id_Color INT,
								   @Id_Proveedor  INT,
								   @Nombre_producto  VARCHAR(50),
								   @Descripcion VARCHAR(50),
								   @Fecha_ingreso DATE,
								   @Cantidad  INT,
								   @Imagen_producto varchar2(150)
								  )
as

begin



UPDATE T_Producto set Id_tipo = @Id_tipo,  
					  Id_Color= @Id_Color, 
					  Id_Proveedor = @Id_Proveedor,
					  Nombre_producto = @Nombre_producto,
					  Descripcion = @Descripcion,
					  Fecha_ingreso = @Fecha_ingreso,
					  Cantidad= @Cantidad,
					  Imagen = @Imagen_producto
 WHERE Id_producto = @Id_Producto;
end 

go

/*
 EXEC DBO.Update_Producto 1,2,2,2,'Alester1',
						 'pRUEBA1',
						 '15-OCT-2020',
						 50,
						 NULL
						 ;	*/	 

---------------------------
GO

CREATE PROCEDURE Select_Producto (@Id_Producto int)
as
begin

SELECT * 
  FROM T_Producto
 WHERE Id_Producto  = @Id_Producto 
end 

go

--exec dbo.Select_Producto 1;

---------------------------
GO

CREATE PROCEDURE Delete_Producto (@Id_Producto int
								  )
as

begin

DELETE 
FROM T_Producto
WHERE Id_Producto = @Id_Producto;
end 
go

--EXEC DBO.Delete_Producto 1;
