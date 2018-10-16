USE [master]
GO
/****** Object:  Database [QEQC07]    Script Date: 16/10/2018 10:58:22 ******/
CREATE DATABASE [QEQC07]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QEQC07', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\QEQC07.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QEQC07_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\QEQC07_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [QEQC07] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QEQC07].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QEQC07] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QEQC07] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QEQC07] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QEQC07] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QEQC07] SET ARITHABORT OFF 
GO
ALTER DATABASE [QEQC07] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QEQC07] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QEQC07] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QEQC07] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QEQC07] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QEQC07] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QEQC07] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QEQC07] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QEQC07] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QEQC07] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QEQC07] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QEQC07] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QEQC07] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QEQC07] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QEQC07] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QEQC07] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QEQC07] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QEQC07] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QEQC07] SET  MULTI_USER 
GO
ALTER DATABASE [QEQC07] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QEQC07] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QEQC07] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QEQC07] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QEQC07] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QEQC07', N'ON'
GO
ALTER DATABASE [QEQC07] SET QUERY_STORE = OFF
GO
USE [QEQC07]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [QEQC07]
GO
/****** Object:  User [QEQC07]    Script Date: 16/10/2018 10:58:22 ******/
CREATE USER [QEQC07] FOR LOGIN [QEQC07] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [QEQC07]
GO
/****** Object:  Table [dbo].[CARACTERISTICAS]    Script Date: 16/10/2018 10:58:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARACTERISTICAS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Caracteristica] [varchar](100) NOT NULL,
 CONSTRAINT [PK_CARACTERISTICAS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CATEGORIAS]    Script Date: 16/10/2018 10:58:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORIAS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Categoria] [varchar](100) NOT NULL,
 CONSTRAINT [PK_CATEGORIAS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERSONAJES]    Script Date: 16/10/2018 10:58:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERSONAJES](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Foto] [varchar](100) NOT NULL,
	[fkCategoria] [int] NOT NULL,
 CONSTRAINT [PK_PERSONAJES] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PREGUNTAS]    Script Date: 16/10/2018 10:58:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PREGUNTAS](
	[fkPersonaje] [int] NOT NULL,
	[fkCaracteristica] [int] NOT NULL,
	[Tiene] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RANKING]    Script Date: 16/10/2018 10:58:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RANKING](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Puntaje] [int] NOT NULL,
 CONSTRAINT [PK_RANKING] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIOS]    Script Date: 16/10/2018 10:58:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIOS](
	[Usuario] [varchar](100) NOT NULL,
	[Mail] [varchar](100) NOT NULL,
	[Contraseña] [varchar](100) NOT NULL,
	[Admin] [bit] NOT NULL,
	[Botin] [int] NOT NULL,
 CONSTRAINT [PK_USUARIOS] PRIMARY KEY CLUSTERED 
(
	[Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PERSONAJES]  WITH CHECK ADD  CONSTRAINT [FK_PERSONAJES_CATEGORIAS] FOREIGN KEY([fkCategoria])
REFERENCES [dbo].[CATEGORIAS] ([id])
GO
ALTER TABLE [dbo].[PERSONAJES] CHECK CONSTRAINT [FK_PERSONAJES_CATEGORIAS]
GO
ALTER TABLE [dbo].[PREGUNTAS]  WITH CHECK ADD  CONSTRAINT [FK_CARACTERISTICASxPERSONAJES_CARACTERISTICAS] FOREIGN KEY([fkCaracteristica])
REFERENCES [dbo].[CARACTERISTICAS] ([id])
GO
ALTER TABLE [dbo].[PREGUNTAS] CHECK CONSTRAINT [FK_CARACTERISTICASxPERSONAJES_CARACTERISTICAS]
GO
ALTER TABLE [dbo].[PREGUNTAS]  WITH CHECK ADD  CONSTRAINT [FK_CARACTERISTICASxPERSONAJES_PERSONAJES] FOREIGN KEY([fkPersonaje])
REFERENCES [dbo].[PERSONAJES] ([id])
GO
ALTER TABLE [dbo].[PREGUNTAS] CHECK CONSTRAINT [FK_CARACTERISTICASxPERSONAJES_PERSONAJES]
GO
/****** Object:  StoredProcedure [dbo].[EliminarPersonaje]    Script Date: 16/10/2018 10:58:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[EliminarPersonaje]
	
	@idpersonaje int

AS
BEGIN
	
	SET NOCOUNT ON;

    DELETE FROM PERSONAJES
	WHERE id = @idpersonaje

END

GO
/****** Object:  StoredProcedure [dbo].[ListarCaracteristicas]    Script Date: 16/10/2018 10:58:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ListarCaracteristicas]
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * FROM CARACTERISTICAS
	  
END


GO
/****** Object:  StoredProcedure [dbo].[ListarCaracteristicasPersonaje]    Script Date: 16/10/2018 10:58:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ListarCaracteristicasPersonaje]
	
	@idpersonaje int

AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT CARACTERISTICAS.Caracteristica 
	FROM PREGUNTAS
	INNER JOIN CARACTERISTICAS ON CARACTERISTICAS.id = PREGUNTAS.fkCaracteristica
	INNER JOIN PERSONAJES ON PERSONAJES.id = PREGUNTAS.fkPersonaje
	WHERE fkPersonaje = @idpersonaje

END

GO
/****** Object:  StoredProcedure [dbo].[ListarCategorias]    Script Date: 16/10/2018 10:58:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ListarCategorias]
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * FROM Categorias
  
END


GO
/****** Object:  StoredProcedure [dbo].[ListarPersonajes]    Script Date: 16/10/2018 10:58:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ListarPersonajes]
	
	@categoria varchar(100)

AS
BEGIN
	
	SET NOCOUNT ON;

	IF(@categoria != 'todos')
	BEGIN
		IF EXISTS (SELECT * FROM CATEGORIAS WHERE Categoria = @categoria)
		BEGIN
			DECLARE @idcategoria int
			SELECT @idcategoria = id FROM CATEGORIAS WHERE Categoria = @categoria

			SELECT PERSONAJES.id, Nombre, Foto, CATEGORIAS.id AS 'IdCategoria', CATEGORIAS.Categoria
			FROM PERSONAJES
			INNER JOIN CATEGORIAS ON CATEGORIAS.id = PERSONAJES.fkCategoria
			WHERE fkCategoria = @idcategoria
		END
	END
	ELSE
	BEGIN
		SELECT PERSONAJES.id, Nombre, Foto, CATEGORIAS.id AS 'IdCategoria', CATEGORIAS.Categoria
		FROM PERSONAJES
		INNER JOIN CATEGORIAS ON CATEGORIAS.id = PERSONAJES.fkCategoria
	END
	  
END


GO
/****** Object:  StoredProcedure [dbo].[RegistrarUsuario]    Script Date: 16/10/2018 10:58:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RegistrarUsuario]

@usuario varchar(100),
@mail varchar(100),
@contra varchar(100),
@perfil varchar(100)

AS
BEGIN
	

	SET NOCOUNT ON;
	IF NOT EXISTS(SELECT * FROM USUARIOS WHERE Usuario = @usuario)
	BEGIN
		DECLARE @idperfil int
		IF(@perfil != 'administrador')
		BEGIN
			SELECT @idperfil = 0
		END
		ELSE
		BEGIN
			SELECT @idperfil = 1
		END

		INSERT INTO USUARIOS VALUES (@usuario, @mail, @contra, @idperfil, 0)
	END  

END
GO
/****** Object:  StoredProcedure [dbo].[TraerCaracteristica]    Script Date: 16/10/2018 10:58:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TraerCaracteristica]

	@idcaracteristica int
	
AS
BEGIN
	
	SELECT * FROM CARACTERISTICAS
	WHERE id = @idcaracteristica

END


GO
/****** Object:  StoredProcedure [dbo].[TraerPersonaje]    Script Date: 16/10/2018 10:58:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TraerPersonaje]
	
	@idpersonaje int

AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * FROM PERSONAJES
	WHERE id = @idpersonaje	

END


GO
/****** Object:  StoredProcedure [dbo].[TraerPregunta]    Script Date: 16/10/2018 10:58:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TraerPregunta] 
	
	@idpersonaje int,
	@idcaracteristica int

AS
BEGIN
	
	IF EXISTS (SELECT * FROM PREGUNTAS WHERE fkPersonaje = @idpersonaje AND fkCaracteristica = @idcaracteristica)
	BEGIN
		SELECT * FROM PREGUNTAS
		WHERE fkPersonaje = @idpersonaje AND fkCaracteristica = @idcaracteristica
	END
	
END


GO
USE [master]
GO
ALTER DATABASE [QEQC07] SET  READ_WRITE 
GO
