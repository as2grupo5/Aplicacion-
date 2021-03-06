USE [master]
GO
/****** Object:  Database [Analigrupo5]    Script Date: 20/10/2020 00:34:12 ******/
CREATE DATABASE [Analigrupo5] ON  PRIMARY 
( NAME = N'Analigrupo5', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Analigrupo5.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Analigrupo5_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Analigrupo5_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Analigrupo5] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Analigrupo5].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Analigrupo5] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Analigrupo5] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Analigrupo5] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Analigrupo5] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Analigrupo5] SET ARITHABORT OFF 
GO
ALTER DATABASE [Analigrupo5] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Analigrupo5] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Analigrupo5] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Analigrupo5] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Analigrupo5] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Analigrupo5] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Analigrupo5] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Analigrupo5] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Analigrupo5] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Analigrupo5] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Analigrupo5] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Analigrupo5] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Analigrupo5] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Analigrupo5] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Analigrupo5] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Analigrupo5] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Analigrupo5] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Analigrupo5] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Analigrupo5] SET  MULTI_USER 
GO
ALTER DATABASE [Analigrupo5] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Analigrupo5] SET DB_CHAINING OFF 
GO
USE [Analigrupo5]
GO
/****** Object:  Table [dbo].[T_Clientes]    Script Date: 20/10/2020 00:34:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Clientes](
	[Id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Cliente] [varchar](50) NULL,
	[Nit] [varchar](12) NULL,
	[Telefono] [int] NULL,
 CONSTRAINT [Pk_T_Clientes] PRIMARY KEY CLUSTERED 
(
	[Id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_color]    Script Date: 20/10/2020 00:34:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_color](
	[Id_Color] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion_Color] [varchar](50) NULL,
 CONSTRAINT [Pk_T_color] PRIMARY KEY CLUSTERED 
(
	[Id_Color] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Detalle]    Script Date: 20/10/2020 00:34:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Detalle](
	[Id_Detalle] [int] IDENTITY(1,1) NOT NULL,
	[Id_Factura] [int] NULL,
	[Id_Producto] [int] NULL,
	[Cantidad] [int] NULL,
	[Precio] [int] NULL,
 CONSTRAINT [Pk_T_Detalle] PRIMARY KEY CLUSTERED 
(
	[Id_Detalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Empleados]    Script Date: 20/10/2020 00:34:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Empleados](
	[Id_Empleado] [int] IDENTITY(1,1) NOT NULL,
	[Primer_Nombre] [varchar](30) NULL,
	[Segundo_Nombre] [varchar](30) NULL,
	[Tercer_Nombre] [varchar](30) NULL,
	[Primer_Apellido] [varchar](30) NULL,
	[Segundo_Apellido] [varchar](30) NULL,
	[Apellido_casado] [varchar](30) NULL,
	[Telefono] [int] NULL,
	[direccion] [varchar](100) NULL,
	[Nit] [int] NULL,
	[Fecha_nacimiento] [date] NULL,
	[Fecha_ingreso] [date] NULL,
 CONSTRAINT [Pk_id_Empleado] PRIMARY KEY CLUSTERED 
(
	[Id_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Factura]    Script Date: 20/10/2020 00:34:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Factura](
	[Id_Factura] [int] IDENTITY(1,1) NOT NULL,
	[Id_Cliente] [int] NULL,
	[Id_Empleado] [int] NULL,
	[Fecha] [date] NULL,
 CONSTRAINT [Pk_T_Factura] PRIMARY KEY CLUSTERED 
(
	[Id_Factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Motorista]    Script Date: 20/10/2020 00:34:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Motorista](
	[Id_motorista] [int] IDENTITY(1,1) NOT NULL,
	[Id_Empleado] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[Placa] [varchar](6) NULL,
	[Estado] [varchar](10) NULL,
 CONSTRAINT [Pk_Id_motorista] PRIMARY KEY CLUSTERED 
(
	[Id_motorista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Nivel]    Script Date: 20/10/2020 00:34:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Nivel](
	[Id_Nivel] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion_tipo] [varchar](50) NULL,
 CONSTRAINT [Pk_T_Nivel] PRIMARY KEY CLUSTERED 
(
	[Id_Nivel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Producto]    Script Date: 20/10/2020 00:34:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Producto](
	[Id_producto] [int] IDENTITY(1,1) NOT NULL,
	[Id_tipo] [int] NULL,
	[Id_Color] [int] NULL,
	[Id_Proveedor] [int] NULL,
	[Nombre_producto] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[Fecha_ingreso] [date] NULL,
	[Cantidad] [int] NULL,
	[Imagen_producto] [image] NULL,
 CONSTRAINT [Pk_T_Producto] PRIMARY KEY CLUSTERED 
(
	[Id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Proveedor]    Script Date: 20/10/2020 00:34:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Proveedor](
	[Id_proveedor] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_proveedor] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[telefono] [int] NULL,
	[Nit] [varchar](12) NULL,
	[Direccion] [varchar](50) NULL,
 CONSTRAINT [Pk_Id_proveedor] PRIMARY KEY CLUSTERED 
(
	[Id_proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Tipo]    Script Date: 20/10/2020 00:34:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Tipo](
	[Id_tipo] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion_tipo] [varchar](50) NULL,
 CONSTRAINT [Pk_T_Tipo] PRIMARY KEY CLUSTERED 
(
	[Id_tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Usuarios]    Script Date: 20/10/2020 00:34:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Usuarios](
	[Id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[Id_Empleado] [int] NULL,
	[Id_Nivel] [int] NULL,
	[Usuario] [varchar](50) NULL,
	[Passw] [varchar](20) NULL,
 CONSTRAINT [Pk_T_Usuarios] PRIMARY KEY CLUSTERED 
(
	[Id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[T_Detalle]  WITH CHECK ADD  CONSTRAINT [Fk_Det_Fac] FOREIGN KEY([Id_Factura])
REFERENCES [dbo].[T_Factura] ([Id_Factura])
GO
ALTER TABLE [dbo].[T_Detalle] CHECK CONSTRAINT [Fk_Det_Fac]
GO
ALTER TABLE [dbo].[T_Detalle]  WITH CHECK ADD  CONSTRAINT [Fk_Det_Prod] FOREIGN KEY([Id_Producto])
REFERENCES [dbo].[T_Producto] ([Id_producto])
GO
ALTER TABLE [dbo].[T_Detalle] CHECK CONSTRAINT [Fk_Det_Prod]
GO
ALTER TABLE [dbo].[T_Factura]  WITH CHECK ADD  CONSTRAINT [Fk_Fac_Cli] FOREIGN KEY([Id_Cliente])
REFERENCES [dbo].[T_Clientes] ([Id_cliente])
GO
ALTER TABLE [dbo].[T_Factura] CHECK CONSTRAINT [Fk_Fac_Cli]
GO
ALTER TABLE [dbo].[T_Factura]  WITH CHECK ADD  CONSTRAINT [Fk_Fac_Emp] FOREIGN KEY([Id_Empleado])
REFERENCES [dbo].[T_Empleados] ([Id_Empleado])
GO
ALTER TABLE [dbo].[T_Factura] CHECK CONSTRAINT [Fk_Fac_Emp]
GO
ALTER TABLE [dbo].[T_Motorista]  WITH CHECK ADD  CONSTRAINT [Fk_Emp_Mot] FOREIGN KEY([Id_Empleado])
REFERENCES [dbo].[T_Empleados] ([Id_Empleado])
GO
ALTER TABLE [dbo].[T_Motorista] CHECK CONSTRAINT [Fk_Emp_Mot]
GO
ALTER TABLE [dbo].[T_Producto]  WITH CHECK ADD  CONSTRAINT [Fk_Pro_Col] FOREIGN KEY([Id_Color])
REFERENCES [dbo].[T_color] ([Id_Color])
GO
ALTER TABLE [dbo].[T_Producto] CHECK CONSTRAINT [Fk_Pro_Col]
GO
ALTER TABLE [dbo].[T_Producto]  WITH CHECK ADD  CONSTRAINT [Fk_Pro_Prov] FOREIGN KEY([Id_Proveedor])
REFERENCES [dbo].[T_Proveedor] ([Id_proveedor])
GO
ALTER TABLE [dbo].[T_Producto] CHECK CONSTRAINT [Fk_Pro_Prov]
GO
ALTER TABLE [dbo].[T_Producto]  WITH CHECK ADD  CONSTRAINT [Fk_Pro_tip] FOREIGN KEY([Id_tipo])
REFERENCES [dbo].[T_Tipo] ([Id_tipo])
GO
ALTER TABLE [dbo].[T_Producto] CHECK CONSTRAINT [Fk_Pro_tip]
GO
ALTER TABLE [dbo].[T_Usuarios]  WITH CHECK ADD  CONSTRAINT [Fk_Usu_Emp] FOREIGN KEY([Id_Empleado])
REFERENCES [dbo].[T_Empleados] ([Id_Empleado])
GO
ALTER TABLE [dbo].[T_Usuarios] CHECK CONSTRAINT [Fk_Usu_Emp]
GO
ALTER TABLE [dbo].[T_Usuarios]  WITH CHECK ADD  CONSTRAINT [Fk_Usu_Niv] FOREIGN KEY([Id_Nivel])
REFERENCES [dbo].[T_Nivel] ([Id_Nivel])
GO
ALTER TABLE [dbo].[T_Usuarios] CHECK CONSTRAINT [Fk_Usu_Niv]
GO
USE [master]
GO
ALTER DATABASE [Analigrupo5] SET  READ_WRITE 
GO
