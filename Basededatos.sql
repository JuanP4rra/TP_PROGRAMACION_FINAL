USE [master]
GO
/****** Object:  Database [DB_tpintegradosProg3_grupo2]    Script Date: 8/7/2024 08:13:27 ******/
CREATE DATABASE [DB_tpintegradosProg3_grupo2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_tpintegradosProg3_grupo2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DB_tpintegradosProg3_grupo2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_tpintegradosProg3_grupo2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DB_tpintegradosProg3_grupo2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DB_tpintegradosProg3_grupo2] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_tpintegradosProg3_grupo2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_tpintegradosProg3_grupo2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_tpintegradosProg3_grupo2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_tpintegradosProg3_grupo2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_tpintegradosProg3_grupo2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_tpintegradosProg3_grupo2] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_tpintegradosProg3_grupo2] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DB_tpintegradosProg3_grupo2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_tpintegradosProg3_grupo2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_tpintegradosProg3_grupo2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_tpintegradosProg3_grupo2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_tpintegradosProg3_grupo2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_tpintegradosProg3_grupo2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_tpintegradosProg3_grupo2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_tpintegradosProg3_grupo2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_tpintegradosProg3_grupo2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DB_tpintegradosProg3_grupo2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_tpintegradosProg3_grupo2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_tpintegradosProg3_grupo2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_tpintegradosProg3_grupo2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_tpintegradosProg3_grupo2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_tpintegradosProg3_grupo2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_tpintegradosProg3_grupo2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_tpintegradosProg3_grupo2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB_tpintegradosProg3_grupo2] SET  MULTI_USER 
GO
ALTER DATABASE [DB_tpintegradosProg3_grupo2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_tpintegradosProg3_grupo2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_tpintegradosProg3_grupo2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_tpintegradosProg3_grupo2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_tpintegradosProg3_grupo2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB_tpintegradosProg3_grupo2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DB_tpintegradosProg3_grupo2] SET QUERY_STORE = ON
GO
ALTER DATABASE [DB_tpintegradosProg3_grupo2] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DB_tpintegradosProg3_grupo2]
GO
/****** Object:  Table [dbo].[Administradores]    Script Date: 8/7/2024 08:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administradores](
	[Legajo_ADM] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_ADM] [varchar](50) NOT NULL,
	[Apellido_ADM] [varchar](50) NOT NULL,
	[Dni_ADM] [varchar](8) NOT NULL,
	[Sexo_ADM] [varchar](50) NOT NULL,
	[Nacionalidad_ADM] [int] NOT NULL,
	[Fecha_de_Nacimiento_ADM] [date] NULL,
	[Direccion_ADM] [varchar](50) NOT NULL,
	[Id_Localidades_ADM] [int] NOT NULL,
	[Id_Provincias_ADM] [int] NOT NULL,
	[Correo_Electronico_ADM] [varchar](50) NOT NULL,
	[Telefono_ADM] [varchar](50) NOT NULL,
	[Activos_ADM] [bit] NOT NULL,
 CONSTRAINT [PK_Administradores] PRIMARY KEY CLUSTERED 
(
	[Legajo_ADM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dias]    Script Date: 8/7/2024 08:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dias](
	[Id_Dias] [int] IDENTITY(0,1) NOT NULL,
	[DescripcionDia] [varchar](500) NULL,
 CONSTRAINT [PK_Dias] PRIMARY KEY CLUSTERED 
(
	[Id_Dias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiasyHorarios]    Script Date: 8/7/2024 08:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiasyHorarios](
	[Id_DiasyHorarios] [int] NOT NULL,
	[Id_Horarios] [int] NULL,
	[Id_Dias] [int] NULL,
 CONSTRAINT [PK_DiasYHorarios] PRIMARY KEY CLUSTERED 
(
	[Id_DiasyHorarios] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Especialidades]    Script Date: 8/7/2024 08:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especialidades](
	[Id_Especialidad_ES] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion_ES] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Especialidades] PRIMARY KEY CLUSTERED 
(
	[Id_Especialidad_ES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horarios]    Script Date: 8/7/2024 08:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horarios](
	[Id_Horarios] [int] IDENTITY(0,1) NOT NULL,
	[DescripcionHorario] [varchar](500) NULL,
 CONSTRAINT [PK_Horarios] PRIMARY KEY CLUSTERED 
(
	[Id_Horarios] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Localidades]    Script Date: 8/7/2024 08:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localidades](
	[Id_Localidades_LO] [int] IDENTITY(1,1) NOT NULL,
	[Id_Provincias_LO] [int] NOT NULL,
	[Descripcion_LO] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Localidades] PRIMARY KEY CLUSTERED 
(
	[Id_Localidades_LO] ASC,
	[Id_Provincias_LO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicos]    Script Date: 8/7/2024 08:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicos](
	[Legajo_ME] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_ME] [varchar](50) NOT NULL,
	[Apellido_ME] [varchar](50) NOT NULL,
	[Dni_ME] [varchar](8) NOT NULL,
	[Sexo_ME] [varchar](50) NOT NULL,
	[Nacionalidad_ME] [int] NOT NULL,
	[Fecha_de_Nacimiento_ME] [date] NULL,
	[Direccion_ME] [varchar](50) NOT NULL,
	[Id_Localidades_ME] [int] NULL,
	[Id_Provincias_ME] [int] NULL,
	[Correo_Electronico_ME] [varchar](50) NOT NULL,
	[Telefono_ME] [varchar](50) NOT NULL,
	[Especialidad_ME] [int] NOT NULL,
	[Dias_y_Horarios_ME] [int] NOT NULL,
	[Activos_ME] [bit] NOT NULL,
 CONSTRAINT [PK_Medicos] PRIMARY KEY CLUSTERED 
(
	[Legajo_ME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nacionalidades]    Script Date: 8/7/2024 08:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nacionalidades](
	[Id_Nacionalidad_NA] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion_NA] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Nacionalidades] PRIMARY KEY CLUSTERED 
(
	[Id_Nacionalidad_NA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pacientes]    Script Date: 8/7/2024 08:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pacientes](
	[Legajo_PA] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_PA] [varchar](50) NOT NULL,
	[Apellido_PA] [varchar](50) NOT NULL,
	[Dni_PA] [varchar](8) NOT NULL,
	[Sexo_PA] [varchar](50) NOT NULL,
	[Nacionalidad_PA] [int] NOT NULL,
	[Fecha_de_Nacimiento_PA] [date] NULL,
	[Direccion_PA] [varchar](50) NOT NULL,
	[Id_Localidades_PA] [int] NOT NULL,
	[Id_Provincias_PA] [int] NOT NULL,
	[Correo_Electronico_PA] [varchar](50) NOT NULL,
	[Telefono_PA] [varchar](50) NOT NULL,
	[Activos_PA] [bit] NOT NULL,
 CONSTRAINT [PK_Pacientes] PRIMARY KEY CLUSTERED 
(
	[Legajo_PA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincias]    Script Date: 8/7/2024 08:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincias](
	[Id_Provincias_PRO] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion_PRO] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Provincias] PRIMARY KEY CLUSTERED 
(
	[Id_Provincias_PRO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Turnos]    Script Date: 8/7/2024 08:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Turnos](
	[Id_Turnos_TU] [int] IDENTITY(1,1) NOT NULL,
	[Dias_y_Horarios_TU] [varchar](200) NULL,
	[Fecha_TU] [date] NULL,
	[Legajo_Pac_TU] [int] NULL,
	[Legajo_Med_TU] [int] NULL,
	[Observacion_TU] [varchar](200) NULL,
	[Asistencia_TU] [bit] NULL,
	[Activos_TU] [bit] NOT NULL,
 CONSTRAINT [PK_Turnos] PRIMARY KEY CLUSTERED 
(
	[Id_Turnos_TU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 8/7/2024 08:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Id_Usuarios_US] [int] IDENTITY(1,1) NOT NULL,
	[NombreUsuario_US] [varchar](50) NULL,
	[Contraseña_US] [varchar](50) NULL,
	[Id_Usuario_Admin_US] [int] NULL,
	[Id_Usuario_Medico_US] [int] NULL,
	[Activos_US] [bit] NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[Id_Usuarios_US] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Administradores] ON 

INSERT [dbo].[Administradores] ([Legajo_ADM], [Nombre_ADM], [Apellido_ADM], [Dni_ADM], [Sexo_ADM], [Nacionalidad_ADM], [Fecha_de_Nacimiento_ADM], [Direccion_ADM], [Id_Localidades_ADM], [Id_Provincias_ADM], [Correo_Electronico_ADM], [Telefono_ADM], [Activos_ADM]) VALUES (1, N'Teresa', N'Silvia', N'42548555', N'Femenino', 3, CAST(N'1975-02-15' AS Date), N'Migue238', 2, 1, N'TeresaSilva@example.com', N'11484448', 1)
INSERT [dbo].[Administradores] ([Legajo_ADM], [Nombre_ADM], [Apellido_ADM], [Dni_ADM], [Sexo_ADM], [Nacionalidad_ADM], [Fecha_de_Nacimiento_ADM], [Direccion_ADM], [Id_Localidades_ADM], [Id_Provincias_ADM], [Correo_Electronico_ADM], [Telefono_ADM], [Activos_ADM]) VALUES (2, N'Pedro', N'Manuel', N'45689555', N'Masculino', 2, CAST(N'1980-06-22' AS Date), N'Migue659', 5, 3, N'PedroManuel2@example.com', N'11479766', 1)
INSERT [dbo].[Administradores] ([Legajo_ADM], [Nombre_ADM], [Apellido_ADM], [Dni_ADM], [Sexo_ADM], [Nacionalidad_ADM], [Fecha_de_Nacimiento_ADM], [Direccion_ADM], [Id_Localidades_ADM], [Id_Provincias_ADM], [Correo_Electronico_ADM], [Telefono_ADM], [Activos_ADM]) VALUES (3, N'Daniel', N'Alvaro', N'49888845', N'Masculino', 1, CAST(N'1985-11-30' AS Date), N'Tucu98', 3, 2, N'DanielAlvaro62@example.com', N'116568988', 1)
INSERT [dbo].[Administradores] ([Legajo_ADM], [Nombre_ADM], [Apellido_ADM], [Dni_ADM], [Sexo_ADM], [Nacionalidad_ADM], [Fecha_de_Nacimiento_ADM], [Direccion_ADM], [Id_Localidades_ADM], [Id_Provincias_ADM], [Correo_Electronico_ADM], [Telefono_ADM], [Activos_ADM]) VALUES (4, N'Jose', N'Alejandro', N'46897556', N'Masculino', 3, CAST(N'1972-03-09' AS Date), N'Sang689', 6, 4, N'JoseAle33@example.com', N'114789821', 1)
INSERT [dbo].[Administradores] ([Legajo_ADM], [Nombre_ADM], [Apellido_ADM], [Dni_ADM], [Sexo_ADM], [Nacionalidad_ADM], [Fecha_de_Nacimiento_ADM], [Direccion_ADM], [Id_Localidades_ADM], [Id_Provincias_ADM], [Correo_Electronico_ADM], [Telefono_ADM], [Activos_ADM]) VALUES (5, N'Carlos', N'Antonio', N'42897956', N'Masculino', 4, CAST(N'1990-07-13' AS Date), N'Sanfer235', 7, 5, N'CarlsoAntonio3@example.com', N'1146464546', 1)
INSERT [dbo].[Administradores] ([Legajo_ADM], [Nombre_ADM], [Apellido_ADM], [Dni_ADM], [Sexo_ADM], [Nacionalidad_ADM], [Fecha_de_Nacimiento_ADM], [Direccion_ADM], [Id_Localidades_ADM], [Id_Provincias_ADM], [Correo_Electronico_ADM], [Telefono_ADM], [Activos_ADM]) VALUES (6, N'Maria', N'Silvia', N'4898925', N'Femenino', 5, CAST(N'1983-09-25' AS Date), N'Santa689', 9, 6, N'MariaSilviadasda@example.com', N'11465889', 1)
INSERT [dbo].[Administradores] ([Legajo_ADM], [Nombre_ADM], [Apellido_ADM], [Dni_ADM], [Sexo_ADM], [Nacionalidad_ADM], [Fecha_de_Nacimiento_ADM], [Direccion_ADM], [Id_Localidades_ADM], [Id_Provincias_ADM], [Correo_Electronico_ADM], [Telefono_ADM], [Activos_ADM]) VALUES (7, N'Luis', N'Carlos', N'4545664', N'Masculino', 2, CAST(N'1977-12-01' AS Date), N'SanFer223', 11, 7, N'LuisCario@example.com', N'1144674546', 1)
INSERT [dbo].[Administradores] ([Legajo_ADM], [Nombre_ADM], [Apellido_ADM], [Dni_ADM], [Sexo_ADM], [Nacionalidad_ADM], [Fecha_de_Nacimiento_ADM], [Direccion_ADM], [Id_Localidades_ADM], [Id_Provincias_ADM], [Correo_Electronico_ADM], [Telefono_ADM], [Activos_ADM]) VALUES (8, N'lucas', N'Veras', N'12316355', N'Masculino', 6, CAST(N'1988-05-07' AS Date), N'Migue03', 12, 8, N'Lucasmedico@example.com', N'1184454454', 1)
INSERT [dbo].[Administradores] ([Legajo_ADM], [Nombre_ADM], [Apellido_ADM], [Dni_ADM], [Sexo_ADM], [Nacionalidad_ADM], [Fecha_de_Nacimiento_ADM], [Direccion_ADM], [Id_Localidades_ADM], [Id_Provincias_ADM], [Correo_Electronico_ADM], [Telefono_ADM], [Activos_ADM]) VALUES (9, N'Veronica', N'Sanches', N'45489446', N'Femenino', 1, CAST(N'1982-10-18' AS Date), N'Esp10', 13, 9, N'VeroMedic@example.com', N'1131454464', 1)
INSERT [dbo].[Administradores] ([Legajo_ADM], [Nombre_ADM], [Apellido_ADM], [Dni_ADM], [Sexo_ADM], [Nacionalidad_ADM], [Fecha_de_Nacimiento_ADM], [Direccion_ADM], [Id_Localidades_ADM], [Id_Provincias_ADM], [Correo_Electronico_ADM], [Telefono_ADM], [Activos_ADM]) VALUES (10, N'Flor', N'Cario', N'41454446', N'Femenino', 4, CAST(N'1991-04-14' AS Date), N'Fran253', 14, 10, N'FlorCario05@example.com', N'11413151313', 1)
INSERT [dbo].[Administradores] ([Legajo_ADM], [Nombre_ADM], [Apellido_ADM], [Dni_ADM], [Sexo_ADM], [Nacionalidad_ADM], [Fecha_de_Nacimiento_ADM], [Direccion_ADM], [Id_Localidades_ADM], [Id_Provincias_ADM], [Correo_Electronico_ADM], [Telefono_ADM], [Activos_ADM]) VALUES (11, N'Franco', N'Carrizo', N'43455446', N'Masculino', 7, CAST(N'1979-08-23' AS Date), N'SanGI58', 15, 11, N'Francocarri@example.com', N'11223131314', 1)
INSERT [dbo].[Administradores] ([Legajo_ADM], [Nombre_ADM], [Apellido_ADM], [Dni_ADM], [Sexo_ADM], [Nacionalidad_ADM], [Fecha_de_Nacimiento_ADM], [Direccion_ADM], [Id_Localidades_ADM], [Id_Provincias_ADM], [Correo_Electronico_ADM], [Telefono_ADM], [Activos_ADM]) VALUES (12, N'Javier', N'Rodol', N'45784464', N'Masculino', 7, CAST(N'1987-01-05' AS Date), N'Tucu35', 16, 12, N'JavierRodlf@example.com', N'11215444454', 1)
INSERT [dbo].[Administradores] ([Legajo_ADM], [Nombre_ADM], [Apellido_ADM], [Dni_ADM], [Sexo_ADM], [Nacionalidad_ADM], [Fecha_de_Nacimiento_ADM], [Direccion_ADM], [Id_Localidades_ADM], [Id_Provincias_ADM], [Correo_Electronico_ADM], [Telefono_ADM], [Activos_ADM]) VALUES (13, N'Milagros', N'Leguiza', N'45654544', N'Femenino', 5, CAST(N'1973-11-11' AS Date), N'TcM05', 17, 13, N'MILIbr@example.com', N'1121232131', 1)
INSERT [dbo].[Administradores] ([Legajo_ADM], [Nombre_ADM], [Apellido_ADM], [Dni_ADM], [Sexo_ADM], [Nacionalidad_ADM], [Fecha_de_Nacimiento_ADM], [Direccion_ADM], [Id_Localidades_ADM], [Id_Provincias_ADM], [Correo_Electronico_ADM], [Telefono_ADM], [Activos_ADM]) VALUES (14, N'Sofia', N'Martin', N'44444122', N'Femenino', 6, CAST(N'1984-06-29' AS Date), N'Fgr035', 18, 14, N'sofi_Martin@example.com', N'116464363', 1)
INSERT [dbo].[Administradores] ([Legajo_ADM], [Nombre_ADM], [Apellido_ADM], [Dni_ADM], [Sexo_ADM], [Nacionalidad_ADM], [Fecha_de_Nacimiento_ADM], [Direccion_ADM], [Id_Localidades_ADM], [Id_Provincias_ADM], [Correo_Electronico_ADM], [Telefono_ADM], [Activos_ADM]) VALUES (15, N'Beatriz', N'Miguel', N'45487799', N'Femenino', 2, CAST(N'1992-03-22' AS Date), N'SAnT021', 19, 15, N'BeatrisMigue@example.com', N'116446546', 1)
SET IDENTITY_INSERT [dbo].[Administradores] OFF
GO
SET IDENTITY_INSERT [dbo].[Dias] ON 

INSERT [dbo].[Dias] ([Id_Dias], [DescripcionDia]) VALUES (0, N'Martes-Miércoles-Jueves')
INSERT [dbo].[Dias] ([Id_Dias], [DescripcionDia]) VALUES (1, N'Viernes-Sábado-Domingo')
INSERT [dbo].[Dias] ([Id_Dias], [DescripcionDia]) VALUES (2, N'Lunes-Martes-Miércoles')
INSERT [dbo].[Dias] ([Id_Dias], [DescripcionDia]) VALUES (3, N'Jueves -Viernes-Sábado')
INSERT [dbo].[Dias] ([Id_Dias], [DescripcionDia]) VALUES (4, N'Domingo-Lunes-Martes')
INSERT [dbo].[Dias] ([Id_Dias], [DescripcionDia]) VALUES (5, N'Miércoles-Jueves-Viernes')
INSERT [dbo].[Dias] ([Id_Dias], [DescripcionDia]) VALUES (6, N'Sábado-Domingo-Lunes')
SET IDENTITY_INSERT [dbo].[Dias] OFF
GO
INSERT [dbo].[DiasyHorarios] ([Id_DiasyHorarios], [Id_Horarios], [Id_Dias]) VALUES (1, 0, 0)
INSERT [dbo].[DiasyHorarios] ([Id_DiasyHorarios], [Id_Horarios], [Id_Dias]) VALUES (2, 1, 1)
INSERT [dbo].[DiasyHorarios] ([Id_DiasyHorarios], [Id_Horarios], [Id_Dias]) VALUES (3, 3, 2)
INSERT [dbo].[DiasyHorarios] ([Id_DiasyHorarios], [Id_Horarios], [Id_Dias]) VALUES (4, 4, 3)
INSERT [dbo].[DiasyHorarios] ([Id_DiasyHorarios], [Id_Horarios], [Id_Dias]) VALUES (5, 2, 4)
INSERT [dbo].[DiasyHorarios] ([Id_DiasyHorarios], [Id_Horarios], [Id_Dias]) VALUES (6, 5, 1)
INSERT [dbo].[DiasyHorarios] ([Id_DiasyHorarios], [Id_Horarios], [Id_Dias]) VALUES (7, 6, 2)
INSERT [dbo].[DiasyHorarios] ([Id_DiasyHorarios], [Id_Horarios], [Id_Dias]) VALUES (8, 4, 6)
INSERT [dbo].[DiasyHorarios] ([Id_DiasyHorarios], [Id_Horarios], [Id_Dias]) VALUES (9, 0, 3)
GO
SET IDENTITY_INSERT [dbo].[Especialidades] ON 

INSERT [dbo].[Especialidades] ([Id_Especialidad_ES], [Descripcion_ES]) VALUES (1, N'Cirujano')
INSERT [dbo].[Especialidades] ([Id_Especialidad_ES], [Descripcion_ES]) VALUES (2, N'Traumatologo')
INSERT [dbo].[Especialidades] ([Id_Especialidad_ES], [Descripcion_ES]) VALUES (3, N'Alergologia')
INSERT [dbo].[Especialidades] ([Id_Especialidad_ES], [Descripcion_ES]) VALUES (4, N'Anestesiologia')
INSERT [dbo].[Especialidades] ([Id_Especialidad_ES], [Descripcion_ES]) VALUES (5, N'Cardiología')
INSERT [dbo].[Especialidades] ([Id_Especialidad_ES], [Descripcion_ES]) VALUES (6, N'Endocrinología')
INSERT [dbo].[Especialidades] ([Id_Especialidad_ES], [Descripcion_ES]) VALUES (7, N'Estomatología')
INSERT [dbo].[Especialidades] ([Id_Especialidad_ES], [Descripcion_ES]) VALUES (8, N'Farmacología Clínica')
INSERT [dbo].[Especialidades] ([Id_Especialidad_ES], [Descripcion_ES]) VALUES (9, N'Foniatría')
INSERT [dbo].[Especialidades] ([Id_Especialidad_ES], [Descripcion_ES]) VALUES (10, N'Genética')
INSERT [dbo].[Especialidades] ([Id_Especialidad_ES], [Descripcion_ES]) VALUES (11, N'Geriatría')
INSERT [dbo].[Especialidades] ([Id_Especialidad_ES], [Descripcion_ES]) VALUES (12, N'Hematología')
INSERT [dbo].[Especialidades] ([Id_Especialidad_ES], [Descripcion_ES]) VALUES (13, N'Cirugía cardíaca')
INSERT [dbo].[Especialidades] ([Id_Especialidad_ES], [Descripcion_ES]) VALUES (14, N'Cirugía craneofacial')
INSERT [dbo].[Especialidades] ([Id_Especialidad_ES], [Descripcion_ES]) VALUES (15, N'Dermatología')
SET IDENTITY_INSERT [dbo].[Especialidades] OFF
GO
SET IDENTITY_INSERT [dbo].[Horarios] ON 

INSERT [dbo].[Horarios] ([Id_Horarios], [DescripcionHorario]) VALUES (0, N'9:00 - 10:000
, 
10:00 - 11:00
, 11:00 - 12:00
, 12:00 - 13:00')
INSERT [dbo].[Horarios] ([Id_Horarios], [DescripcionHorario]) VALUES (1, N'12:00 - 13:00, 
13:00 - 14:00, 
14:00 - 15:00, 
15:00 - 16:00')
INSERT [dbo].[Horarios] ([Id_Horarios], [DescripcionHorario]) VALUES (2, N'16:00 - 17:00, 
17:00 - 18:00
, 18:00 - 19:00
, 19:00 - 20:00')
INSERT [dbo].[Horarios] ([Id_Horarios], [DescripcionHorario]) VALUES (3, N'18:00 - 19:00, 
19:00 - 20:00
, 
20:00 - 21:00
, 21:00 - 22:00')
INSERT [dbo].[Horarios] ([Id_Horarios], [DescripcionHorario]) VALUES (4, N'8:00 - 9:00
, 9:00 - 10:00
, 10:00 - 11:00
, 11:00 - 12:00')
INSERT [dbo].[Horarios] ([Id_Horarios], [DescripcionHorario]) VALUES (5, N'21:00 - 21:30, 
21:30 - 22:00, 
22:00 - 22:30')
INSERT [dbo].[Horarios] ([Id_Horarios], [DescripcionHorario]) VALUES (6, N'6:00 - 7:00
, 7:00 - 8:00, 
8:00 - 9:00, 
9:00 - 10:00')
SET IDENTITY_INSERT [dbo].[Horarios] OFF
GO
SET IDENTITY_INSERT [dbo].[Localidades] ON 

INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (2, 1, N'La Plata')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (3, 2, N'San Fernando del Valle de Catamarca')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (5, 3, N'Resistencia')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (6, 4, N'Rawson')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (7, 5, N'Córdoba')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (9, 6, N'Corrientes')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (11, 7, N'Paraná')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (12, 8, N'Formosa')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (13, 9, N'San Salvador de Jujuy')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (14, 10, N'Santa Rosa')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (15, 11, N'La Rioja')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (16, 12, N'Mendoza')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (17, 13, N'Posadas')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (18, 14, N'Neuquén')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (19, 15, N'Viedma')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (20, 1, N'Mar del Plata')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (21, 1, N'Bahía Blanca')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (22, 2, N'Belén')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (24, 2, N'Tinogasta')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (25, 3, N'Sáenz Peña')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (26, 3, N'Villa Ángela')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (27, 4, N'Comodoro Rivadavia')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (28, 4, N'Puerto Madryn')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (29, 5, N'Villa Carlos Paz')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (30, 5, N'Río Cuarto')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (31, 6, N'Goya')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (32, 6, N'Paso de los Libres')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (33, 7, N'Concordia')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (34, 7, N'Gualeguaychú')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (35, 8, N'Clorinda')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (36, 8, N'Pirané')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (37, 9, N'Palpalá')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (38, 9, N'Libertador General San Martín')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (39, 10, N'General Pico')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (40, 10, N'Toay')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (41, 11, N'Chilecito')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (42, 11, N'Aimogasta')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (43, 12, N'San Rafael')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (44, 12, N'Godoy Cruz')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (45, 13, N'Oberá')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (46, 13, N'Eldorado')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (47, 14, N'San Martín de los Andes')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (48, 14, N'Zapala')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (49, 15, N'Bariloche')
INSERT [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO], [Descripcion_LO]) VALUES (50, 15, N'Cipolletti')
SET IDENTITY_INSERT [dbo].[Localidades] OFF
GO
SET IDENTITY_INSERT [dbo].[Medicos] ON 

INSERT [dbo].[Medicos] ([Legajo_ME], [Nombre_ME], [Apellido_ME], [Dni_ME], [Sexo_ME], [Nacionalidad_ME], [Fecha_de_Nacimiento_ME], [Direccion_ME], [Id_Localidades_ME], [Id_Provincias_ME], [Correo_Electronico_ME], [Telefono_ME], [Especialidad_ME], [Dias_y_Horarios_ME], [Activos_ME]) VALUES (1, N'Juan', N'Pérez', N'12345678', N'Masculino', 6, CAST(N'1975-02-15' AS Date), N'Calle Falsa 123', 13, 9, N'juan.perez@ejemplo.com', N'123-456-7890', 1, 1, 1)
INSERT [dbo].[Medicos] ([Legajo_ME], [Nombre_ME], [Apellido_ME], [Dni_ME], [Sexo_ME], [Nacionalidad_ME], [Fecha_de_Nacimiento_ME], [Direccion_ME], [Id_Localidades_ME], [Id_Provincias_ME], [Correo_Electronico_ME], [Telefono_ME], [Especialidad_ME], [Dias_y_Horarios_ME], [Activos_ME]) VALUES (2, N'María', N'Gómez', N'23456789', N'Femenino', 3, CAST(N'1980-06-22' AS Date), N'Avenida Siempre Viva 742', 30, 5, N'maria.gomez@ejemplo.com', N'234-567-1401', 14, 4, 1)
INSERT [dbo].[Medicos] ([Legajo_ME], [Nombre_ME], [Apellido_ME], [Dni_ME], [Sexo_ME], [Nacionalidad_ME], [Fecha_de_Nacimiento_ME], [Direccion_ME], [Id_Localidades_ME], [Id_Provincias_ME], [Correo_Electronico_ME], [Telefono_ME], [Especialidad_ME], [Dias_y_Horarios_ME], [Activos_ME]) VALUES (3, N'Carlos', N'Martínez', N'34567891', N'Masculino', 3, CAST(N'1985-11-30' AS Date), N'Calle Luna 456', 21, 1, N'carlos.martinez@ejemplo.com', N'345-524-9012', 13, 3, 1)
INSERT [dbo].[Medicos] ([Legajo_ME], [Nombre_ME], [Apellido_ME], [Dni_ME], [Sexo_ME], [Nacionalidad_ME], [Fecha_de_Nacimiento_ME], [Direccion_ME], [Id_Localidades_ME], [Id_Provincias_ME], [Correo_Electronico_ME], [Telefono_ME], [Especialidad_ME], [Dias_y_Horarios_ME], [Activos_ME]) VALUES (4, N'Ana', N'López', N'45678902', N'Femenino', 1, CAST(N'1972-03-09' AS Date), N'Calle Sol 789', 24, 2, N'ana.lopez@ejemplo.com', N'456-789-0123', 12, 3, 1)
INSERT [dbo].[Medicos] ([Legajo_ME], [Nombre_ME], [Apellido_ME], [Dni_ME], [Sexo_ME], [Nacionalidad_ME], [Fecha_de_Nacimiento_ME], [Direccion_ME], [Id_Localidades_ME], [Id_Provincias_ME], [Correo_Electronico_ME], [Telefono_ME], [Especialidad_ME], [Dias_y_Horarios_ME], [Activos_ME]) VALUES (5, N'Luis', N'Fernández', N'56789013', N'Masculino', 2, CAST(N'1990-07-13' AS Date), N'Calle Estrella 101', 29, 5, N'luis.fernandez@ejemplo.com', N'567-890-5125', 11, 6, 1)
INSERT [dbo].[Medicos] ([Legajo_ME], [Nombre_ME], [Apellido_ME], [Dni_ME], [Sexo_ME], [Nacionalidad_ME], [Fecha_de_Nacimiento_ME], [Direccion_ME], [Id_Localidades_ME], [Id_Provincias_ME], [Correo_Electronico_ME], [Telefono_ME], [Especialidad_ME], [Dias_y_Horarios_ME], [Activos_ME]) VALUES (6, N'Laura', N'García', N'67890124', N'Femenino', 3, CAST(N'1983-09-25' AS Date), N'Avenida Sol 123', 5, 3, N'laura.garcia@ejemplo.com', N'678-901-2345', 10, 4, 1)
INSERT [dbo].[Medicos] ([Legajo_ME], [Nombre_ME], [Apellido_ME], [Dni_ME], [Sexo_ME], [Nacionalidad_ME], [Fecha_de_Nacimiento_ME], [Direccion_ME], [Id_Localidades_ME], [Id_Provincias_ME], [Correo_Electronico_ME], [Telefono_ME], [Especialidad_ME], [Dias_y_Horarios_ME], [Activos_ME]) VALUES (7, N'Jorge', N'Rodríguez', N'78901235', N'Masculino', 1, CAST(N'1977-12-01' AS Date), N'Calle Luna 456', 22, 2, N'jorge.rodriguez@ejemplo.com', N'789-012-3456', 9, 1, 1)
INSERT [dbo].[Medicos] ([Legajo_ME], [Nombre_ME], [Apellido_ME], [Dni_ME], [Sexo_ME], [Nacionalidad_ME], [Fecha_de_Nacimiento_ME], [Direccion_ME], [Id_Localidades_ME], [Id_Provincias_ME], [Correo_Electronico_ME], [Telefono_ME], [Especialidad_ME], [Dias_y_Horarios_ME], [Activos_ME]) VALUES (8, N'Elena', N'Hernández', N'89012346', N'Femenino', 7, CAST(N'1988-05-07' AS Date), N'Calle Sol 789', 29, 5, N'elena.hernandez@ejemplo.com', N'890-123-4567', 8, 1, 1)
INSERT [dbo].[Medicos] ([Legajo_ME], [Nombre_ME], [Apellido_ME], [Dni_ME], [Sexo_ME], [Nacionalidad_ME], [Fecha_de_Nacimiento_ME], [Direccion_ME], [Id_Localidades_ME], [Id_Provincias_ME], [Correo_Electronico_ME], [Telefono_ME], [Especialidad_ME], [Dias_y_Horarios_ME], [Activos_ME]) VALUES (9, N'Ricardo', N'González', N'90123457', N'Masculino', 3, CAST(N'1982-10-18' AS Date), N'Avenida Siempre Viva 742', 30, 5, N'ricardo.gonzalez@ejemplo.com', N'901-234-5678', 7, 2, 1)
INSERT [dbo].[Medicos] ([Legajo_ME], [Nombre_ME], [Apellido_ME], [Dni_ME], [Sexo_ME], [Nacionalidad_ME], [Fecha_de_Nacimiento_ME], [Direccion_ME], [Id_Localidades_ME], [Id_Provincias_ME], [Correo_Electronico_ME], [Telefono_ME], [Especialidad_ME], [Dias_y_Horarios_ME], [Activos_ME]) VALUES (10, N'Marta', N'Sánchez', N'01234568', N'Femenino', 1, CAST(N'1991-04-14' AS Date), N'Calle Falsa 123', 12, 8, N'marta.sanchez@ejemplo.com', N'012-345-6789', 6, 6, 1)
INSERT [dbo].[Medicos] ([Legajo_ME], [Nombre_ME], [Apellido_ME], [Dni_ME], [Sexo_ME], [Nacionalidad_ME], [Fecha_de_Nacimiento_ME], [Direccion_ME], [Id_Localidades_ME], [Id_Provincias_ME], [Correo_Electronico_ME], [Telefono_ME], [Especialidad_ME], [Dias_y_Horarios_ME], [Activos_ME]) VALUES (11, N'Pedro', N'Torres', N'12345679', N'Masculino', 2, CAST(N'1979-08-23' AS Date), N'Calle Estrella 101', 46, 13, N'pedro.torres@ejemplo.com', N'134-456-7891', 5, 2, 1)
INSERT [dbo].[Medicos] ([Legajo_ME], [Nombre_ME], [Apellido_ME], [Dni_ME], [Sexo_ME], [Nacionalidad_ME], [Fecha_de_Nacimiento_ME], [Direccion_ME], [Id_Localidades_ME], [Id_Provincias_ME], [Correo_Electronico_ME], [Telefono_ME], [Especialidad_ME], [Dias_y_Horarios_ME], [Activos_ME]) VALUES (12, N'Clara', N'Ramírez', N'23456742', N'Femenino', 5, CAST(N'1987-01-05' AS Date), N'Avenida Siempre Viva 742', 49, 15, N'clara.ramirez@ejemplo.com', N'234-567-8902', 4, 5, 1)
INSERT [dbo].[Medicos] ([Legajo_ME], [Nombre_ME], [Apellido_ME], [Dni_ME], [Sexo_ME], [Nacionalidad_ME], [Fecha_de_Nacimiento_ME], [Direccion_ME], [Id_Localidades_ME], [Id_Provincias_ME], [Correo_Electronico_ME], [Telefono_ME], [Especialidad_ME], [Dias_y_Horarios_ME], [Activos_ME]) VALUES (13, N'Diego', N'Flores', N'34567892', N'Masculino', 5, CAST(N'1973-11-11' AS Date), N'Calle Falsa 123', 29, 5, N'diego.flores@ejemplo.com', N'345-678-9013', 3, 1, 1)
INSERT [dbo].[Medicos] ([Legajo_ME], [Nombre_ME], [Apellido_ME], [Dni_ME], [Sexo_ME], [Nacionalidad_ME], [Fecha_de_Nacimiento_ME], [Direccion_ME], [Id_Localidades_ME], [Id_Provincias_ME], [Correo_Electronico_ME], [Telefono_ME], [Especialidad_ME], [Dias_y_Horarios_ME], [Activos_ME]) VALUES (14, N'Lucía', N'Díaz', N'45678903', N'Femenino', 2, CAST(N'1984-06-29' AS Date), N'Calle Luna 456', 5, 3, N'lucia.diaz@ejemplo.com', N'456-789-0124', 2, 6, 1)
INSERT [dbo].[Medicos] ([Legajo_ME], [Nombre_ME], [Apellido_ME], [Dni_ME], [Sexo_ME], [Nacionalidad_ME], [Fecha_de_Nacimiento_ME], [Direccion_ME], [Id_Localidades_ME], [Id_Provincias_ME], [Correo_Electronico_ME], [Telefono_ME], [Especialidad_ME], [Dias_y_Horarios_ME], [Activos_ME]) VALUES (15, N'Oscar', N'Morales', N'56789014', N'Masculino', 4, CAST(N'1992-03-22' AS Date), N'Calle Estrella 101', 24, 2, N'oscar.morales@ejemplo.com', N'567-890-1235', 1, 5, 1)
SET IDENTITY_INSERT [dbo].[Medicos] OFF
GO
SET IDENTITY_INSERT [dbo].[Nacionalidades] ON 

INSERT [dbo].[Nacionalidades] ([Id_Nacionalidad_NA], [Descripcion_NA]) VALUES (1, N'Argentino/a')
INSERT [dbo].[Nacionalidades] ([Id_Nacionalidad_NA], [Descripcion_NA]) VALUES (2, N'Portugues/a')
INSERT [dbo].[Nacionalidades] ([Id_Nacionalidad_NA], [Descripcion_NA]) VALUES (3, N'Aleman/a')
INSERT [dbo].[Nacionalidades] ([Id_Nacionalidad_NA], [Descripcion_NA]) VALUES (4, N'Canadiense/a')
INSERT [dbo].[Nacionalidades] ([Id_Nacionalidad_NA], [Descripcion_NA]) VALUES (5, N'Británico/a')
INSERT [dbo].[Nacionalidades] ([Id_Nacionalidad_NA], [Descripcion_NA]) VALUES (6, N'Español/la')
INSERT [dbo].[Nacionalidades] ([Id_Nacionalidad_NA], [Descripcion_NA]) VALUES (7, N'Frances/sa')
SET IDENTITY_INSERT [dbo].[Nacionalidades] OFF
GO
SET IDENTITY_INSERT [dbo].[Pacientes] ON 

INSERT [dbo].[Pacientes] ([Legajo_PA], [Nombre_PA], [Apellido_PA], [Dni_PA], [Sexo_PA], [Nacionalidad_PA], [Fecha_de_Nacimiento_PA], [Direccion_PA], [Id_Localidades_PA], [Id_Provincias_PA], [Correo_Electronico_PA], [Telefono_PA], [Activos_PA]) VALUES (1, N'Roberto', N'Pérez', N'87654321', N'Masculino', 6, CAST(N'1980-05-10' AS Date), N'Calle Falsa 123', 24, 2, N'roberto.perez@ejemplo.com', N'111-222-3333', 1)
INSERT [dbo].[Pacientes] ([Legajo_PA], [Nombre_PA], [Apellido_PA], [Dni_PA], [Sexo_PA], [Nacionalidad_PA], [Fecha_de_Nacimiento_PA], [Direccion_PA], [Id_Localidades_PA], [Id_Provincias_PA], [Correo_Electronico_PA], [Telefono_PA], [Activos_PA]) VALUES (2, N'Lucía', N'Martínez', N'87654322', N'Femenino', 5, CAST(N'1992-03-14' AS Date), N'Avenida Siempre Viva 742', 21, 1, N'lucia.martinez@ejemplo.com', N'222-333-4444', 1)
INSERT [dbo].[Pacientes] ([Legajo_PA], [Nombre_PA], [Apellido_PA], [Dni_PA], [Sexo_PA], [Nacionalidad_PA], [Fecha_de_Nacimiento_PA], [Direccion_PA], [Id_Localidades_PA], [Id_Provincias_PA], [Correo_Electronico_PA], [Telefono_PA], [Activos_PA]) VALUES (3, N'Mateo', N'González', N'87654323', N'Masculino', 7, CAST(N'1985-07-20' AS Date), N'Calle Luna 456', 24, 2, N'mateo.gonzalez@ejemplo.com', N'333-444-5555', 1)
INSERT [dbo].[Pacientes] ([Legajo_PA], [Nombre_PA], [Apellido_PA], [Dni_PA], [Sexo_PA], [Nacionalidad_PA], [Fecha_de_Nacimiento_PA], [Direccion_PA], [Id_Localidades_PA], [Id_Provincias_PA], [Correo_Electronico_PA], [Telefono_PA], [Activos_PA]) VALUES (4, N'Sofía', N'López', N'87654324', N'Femenino', 2, CAST(N'1991-09-05' AS Date), N'Calle Sol 789', 29, 5, N'sofia.lopez@ejemplo.com', N'444-555-6666', 1)
INSERT [dbo].[Pacientes] ([Legajo_PA], [Nombre_PA], [Apellido_PA], [Dni_PA], [Sexo_PA], [Nacionalidad_PA], [Fecha_de_Nacimiento_PA], [Direccion_PA], [Id_Localidades_PA], [Id_Provincias_PA], [Correo_Electronico_PA], [Telefono_PA], [Activos_PA]) VALUES (5, N'Fernando', N'Fernández', N'87654325', N'Masculino', 1, CAST(N'1977-12-11' AS Date), N'Calle Estrella 101', 5, 3, N'fernando.fernandez@ejemplo.com', N'555-666-7777', 1)
INSERT [dbo].[Pacientes] ([Legajo_PA], [Nombre_PA], [Apellido_PA], [Dni_PA], [Sexo_PA], [Nacionalidad_PA], [Fecha_de_Nacimiento_PA], [Direccion_PA], [Id_Localidades_PA], [Id_Provincias_PA], [Correo_Electronico_PA], [Telefono_PA], [Activos_PA]) VALUES (6, N'Camila', N'García', N'87654326', N'Femenino', 3, CAST(N'1989-11-30' AS Date), N'Avenida Sol 123', 22, 2, N'camila.garcia@ejemplo.com', N'666-777-8888', 1)
INSERT [dbo].[Pacientes] ([Legajo_PA], [Nombre_PA], [Apellido_PA], [Dni_PA], [Sexo_PA], [Nacionalidad_PA], [Fecha_de_Nacimiento_PA], [Direccion_PA], [Id_Localidades_PA], [Id_Provincias_PA], [Correo_Electronico_PA], [Telefono_PA], [Activos_PA]) VALUES (7, N'Marcos', N'Rodríguez', N'87654327', N'Masculino', 4, CAST(N'1983-06-15' AS Date), N'Calle Luna 456', 22, 2, N'marcos.rodriguez@ejemplo.com', N'777-888-9999', 1)
INSERT [dbo].[Pacientes] ([Legajo_PA], [Nombre_PA], [Apellido_PA], [Dni_PA], [Sexo_PA], [Nacionalidad_PA], [Fecha_de_Nacimiento_PA], [Direccion_PA], [Id_Localidades_PA], [Id_Provincias_PA], [Correo_Electronico_PA], [Telefono_PA], [Activos_PA]) VALUES (8, N'Valentina', N'Hernández', N'87654328', N'Femenino', 5, CAST(N'1995-08-25' AS Date), N'Calle Sol 789', 5, 3, N'valentina.hernandez@ejemplo.com', N'888-999-0000', 1)
INSERT [dbo].[Pacientes] ([Legajo_PA], [Nombre_PA], [Apellido_PA], [Dni_PA], [Sexo_PA], [Nacionalidad_PA], [Fecha_de_Nacimiento_PA], [Direccion_PA], [Id_Localidades_PA], [Id_Provincias_PA], [Correo_Electronico_PA], [Telefono_PA], [Activos_PA]) VALUES (9, N'Gabriel', N'González', N'87654329', N'Masculino', 6, CAST(N'1978-01-17' AS Date), N'Avenida Siempre Viva 742', 5, 3, N'gabriel.gonzalez@ejemplo.com', N'999-000-1111', 1)
INSERT [dbo].[Pacientes] ([Legajo_PA], [Nombre_PA], [Apellido_PA], [Dni_PA], [Sexo_PA], [Nacionalidad_PA], [Fecha_de_Nacimiento_PA], [Direccion_PA], [Id_Localidades_PA], [Id_Provincias_PA], [Correo_Electronico_PA], [Telefono_PA], [Activos_PA]) VALUES (10, N'María', N'Sánchez', N'87654330', N'Femenino', 3, CAST(N'1982-04-14' AS Date), N'Calle Falsa 123', 29, 5, N'maria.sanchez@ejemplo.com', N'000-111-2222', 1)
INSERT [dbo].[Pacientes] ([Legajo_PA], [Nombre_PA], [Apellido_PA], [Dni_PA], [Sexo_PA], [Nacionalidad_PA], [Fecha_de_Nacimiento_PA], [Direccion_PA], [Id_Localidades_PA], [Id_Provincias_PA], [Correo_Electronico_PA], [Telefono_PA], [Activos_PA]) VALUES (11, N'Jorge', N'Torres', N'87654331', N'Masculino', 4, CAST(N'1990-02-19' AS Date), N'Calle Estrella 101', 46, 13, N'jorge.torres@ejemplo.com', N'111-222-3334', 1)
INSERT [dbo].[Pacientes] ([Legajo_PA], [Nombre_PA], [Apellido_PA], [Dni_PA], [Sexo_PA], [Nacionalidad_PA], [Fecha_de_Nacimiento_PA], [Direccion_PA], [Id_Localidades_PA], [Id_Provincias_PA], [Correo_Electronico_PA], [Telefono_PA], [Activos_PA]) VALUES (12, N'Julieta', N'Ramírez', N'87654332', N'Femenino', 7, CAST(N'1986-03-22' AS Date), N'Avenida Siempre Viva 742', 46, 13, N'julieta.ramirez@ejemplo.com', N'222-333-4445', 1)
INSERT [dbo].[Pacientes] ([Legajo_PA], [Nombre_PA], [Apellido_PA], [Dni_PA], [Sexo_PA], [Nacionalidad_PA], [Fecha_de_Nacimiento_PA], [Direccion_PA], [Id_Localidades_PA], [Id_Provincias_PA], [Correo_Electronico_PA], [Telefono_PA], [Activos_PA]) VALUES (13, N'Nicolás', N'Flores', N'87654333', N'Masculino', 2, CAST(N'1975-07-18' AS Date), N'Calle Falsa 123', 29, 5, N'nicolas.flores@ejemplo.com', N'333-444-5556', 1)
INSERT [dbo].[Pacientes] ([Legajo_PA], [Nombre_PA], [Apellido_PA], [Dni_PA], [Sexo_PA], [Nacionalidad_PA], [Fecha_de_Nacimiento_PA], [Direccion_PA], [Id_Localidades_PA], [Id_Provincias_PA], [Correo_Electronico_PA], [Telefono_PA], [Activos_PA]) VALUES (14, N'Martina', N'Díaz', N'87654334', N'Femenino', 1, CAST(N'1993-11-29' AS Date), N'Calle Luna 456', 49, 15, N'martina.diaz@ejemplo.com', N'444-555-6667', 1)
INSERT [dbo].[Pacientes] ([Legajo_PA], [Nombre_PA], [Apellido_PA], [Dni_PA], [Sexo_PA], [Nacionalidad_PA], [Fecha_de_Nacimiento_PA], [Direccion_PA], [Id_Localidades_PA], [Id_Provincias_PA], [Correo_Electronico_PA], [Telefono_PA], [Activos_PA]) VALUES (15, N'Diego', N'Morales', N'87654335', N'Masculino', 2, CAST(N'1988-10-13' AS Date), N'Calle Estrella 101', 5, 3, N'diego.morales@ejemplo.com', N'555-666-7778', 1)
SET IDENTITY_INSERT [dbo].[Pacientes] OFF
GO
SET IDENTITY_INSERT [dbo].[Provincias] ON 

INSERT [dbo].[Provincias] ([Id_Provincias_PRO], [Descripcion_PRO]) VALUES (1, N'Buenos Aires')
INSERT [dbo].[Provincias] ([Id_Provincias_PRO], [Descripcion_PRO]) VALUES (2, N'Catamarca')
INSERT [dbo].[Provincias] ([Id_Provincias_PRO], [Descripcion_PRO]) VALUES (3, N'Chaco')
INSERT [dbo].[Provincias] ([Id_Provincias_PRO], [Descripcion_PRO]) VALUES (4, N'Chubut')
INSERT [dbo].[Provincias] ([Id_Provincias_PRO], [Descripcion_PRO]) VALUES (5, N'Córdoba')
INSERT [dbo].[Provincias] ([Id_Provincias_PRO], [Descripcion_PRO]) VALUES (6, N'Corrientes')
INSERT [dbo].[Provincias] ([Id_Provincias_PRO], [Descripcion_PRO]) VALUES (7, N'Entre Ríos')
INSERT [dbo].[Provincias] ([Id_Provincias_PRO], [Descripcion_PRO]) VALUES (8, N'Formosa')
INSERT [dbo].[Provincias] ([Id_Provincias_PRO], [Descripcion_PRO]) VALUES (9, N'Jujuy')
INSERT [dbo].[Provincias] ([Id_Provincias_PRO], [Descripcion_PRO]) VALUES (10, N'La Pampa')
INSERT [dbo].[Provincias] ([Id_Provincias_PRO], [Descripcion_PRO]) VALUES (11, N'La Rioja')
INSERT [dbo].[Provincias] ([Id_Provincias_PRO], [Descripcion_PRO]) VALUES (12, N'Mendoza')
INSERT [dbo].[Provincias] ([Id_Provincias_PRO], [Descripcion_PRO]) VALUES (13, N'Misiones')
INSERT [dbo].[Provincias] ([Id_Provincias_PRO], [Descripcion_PRO]) VALUES (14, N'Neuquén')
INSERT [dbo].[Provincias] ([Id_Provincias_PRO], [Descripcion_PRO]) VALUES (15, N'Río Negro')
SET IDENTITY_INSERT [dbo].[Provincias] OFF
GO
SET IDENTITY_INSERT [dbo].[Turnos] ON 

INSERT [dbo].[Turnos] ([Id_Turnos_TU], [Dias_y_Horarios_TU], [Fecha_TU], [Legajo_Pac_TU], [Legajo_Med_TU], [Observacion_TU], [Asistencia_TU], [Activos_TU]) VALUES (1, N'Martes_9:00 - 10:000
', CAST(N'2024-07-09' AS Date), 1, 1, NULL, NULL, 1)
INSERT [dbo].[Turnos] ([Id_Turnos_TU], [Dias_y_Horarios_TU], [Fecha_TU], [Legajo_Pac_TU], [Legajo_Med_TU], [Observacion_TU], [Asistencia_TU], [Activos_TU]) VALUES (2, N'Sábado_ 
22:00 - 22:30', CAST(N'2024-07-13' AS Date), 2, 14, NULL, NULL, 1)
INSERT [dbo].[Turnos] ([Id_Turnos_TU], [Dias_y_Horarios_TU], [Fecha_TU], [Legajo_Pac_TU], [Legajo_Med_TU], [Observacion_TU], [Asistencia_TU], [Activos_TU]) VALUES (3, N'Miércoles_ 
10:00 - 11:00
', CAST(N'2024-07-10' AS Date), 3, 13, NULL, NULL, 1)
INSERT [dbo].[Turnos] ([Id_Turnos_TU], [Dias_y_Horarios_TU], [Fecha_TU], [Legajo_Pac_TU], [Legajo_Med_TU], [Observacion_TU], [Asistencia_TU], [Activos_TU]) VALUES (4, N'Domingo_16:00 - 17:00', CAST(N'2024-07-14' AS Date), 4, 12, NULL, NULL, 1)
INSERT [dbo].[Turnos] ([Id_Turnos_TU], [Dias_y_Horarios_TU], [Fecha_TU], [Legajo_Pac_TU], [Legajo_Med_TU], [Observacion_TU], [Asistencia_TU], [Activos_TU]) VALUES (5, N'Viernes_ 
14:00 - 15:00', CAST(N'2024-07-12' AS Date), 5, 11, NULL, NULL, 1)
INSERT [dbo].[Turnos] ([Id_Turnos_TU], [Dias_y_Horarios_TU], [Fecha_TU], [Legajo_Pac_TU], [Legajo_Med_TU], [Observacion_TU], [Asistencia_TU], [Activos_TU]) VALUES (6, N'Viernes_ 
13:00 - 14:00', CAST(N'2024-07-12' AS Date), 6, 9, NULL, NULL, 1)
INSERT [dbo].[Turnos] ([Id_Turnos_TU], [Dias_y_Horarios_TU], [Fecha_TU], [Legajo_Pac_TU], [Legajo_Med_TU], [Observacion_TU], [Asistencia_TU], [Activos_TU]) VALUES (7, N'Jueves_ 11:00 - 12:00
', CAST(N'2024-07-11' AS Date), 7, 8, NULL, NULL, 1)
INSERT [dbo].[Turnos] ([Id_Turnos_TU], [Dias_y_Horarios_TU], [Fecha_TU], [Legajo_Pac_TU], [Legajo_Med_TU], [Observacion_TU], [Asistencia_TU], [Activos_TU]) VALUES (8, N'Miércoles_ 
20:00 - 21:00
', CAST(N'2024-07-10' AS Date), 8, 4, NULL, NULL, 1)
INSERT [dbo].[Turnos] ([Id_Turnos_TU], [Dias_y_Horarios_TU], [Fecha_TU], [Legajo_Pac_TU], [Legajo_Med_TU], [Observacion_TU], [Asistencia_TU], [Activos_TU]) VALUES (9, N'Sábado_ 11:00 - 12:00', CAST(N'2024-07-13' AS Date), 9, 2, NULL, NULL, 1)
INSERT [dbo].[Turnos] ([Id_Turnos_TU], [Dias_y_Horarios_TU], [Fecha_TU], [Legajo_Pac_TU], [Legajo_Med_TU], [Observacion_TU], [Asistencia_TU], [Activos_TU]) VALUES (10, N'Miércoles_ 
10:00 - 11:00
', CAST(N'2024-07-10' AS Date), 10, 1, NULL, NULL, 1)
INSERT [dbo].[Turnos] ([Id_Turnos_TU], [Dias_y_Horarios_TU], [Fecha_TU], [Legajo_Pac_TU], [Legajo_Med_TU], [Observacion_TU], [Asistencia_TU], [Activos_TU]) VALUES (11, N'Miércoles_ 11:00 - 12:00
', CAST(N'2024-07-10' AS Date), 11, 13, NULL, NULL, 1)
INSERT [dbo].[Turnos] ([Id_Turnos_TU], [Dias_y_Horarios_TU], [Fecha_TU], [Legajo_Pac_TU], [Legajo_Med_TU], [Observacion_TU], [Asistencia_TU], [Activos_TU]) VALUES (12, N'Lunes_ 19:00 - 20:00', CAST(N'2024-07-08' AS Date), 12, 12, NULL, NULL, 1)
INSERT [dbo].[Turnos] ([Id_Turnos_TU], [Dias_y_Horarios_TU], [Fecha_TU], [Legajo_Pac_TU], [Legajo_Med_TU], [Observacion_TU], [Asistencia_TU], [Activos_TU]) VALUES (13, N'Jueves_ 12:00 - 13:00', CAST(N'2024-07-11' AS Date), 1, 8, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Turnos] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([Id_Usuarios_US], [NombreUsuario_US], [Contraseña_US], [Id_Usuario_Admin_US], [Id_Usuario_Medico_US], [Activos_US]) VALUES (1, N'Teresa', N'1235', 1, NULL, 1)
INSERT [dbo].[Usuarios] ([Id_Usuarios_US], [NombreUsuario_US], [Contraseña_US], [Id_Usuario_Admin_US], [Id_Usuario_Medico_US], [Activos_US]) VALUES (2, N'Pedro', N'3555', 2, NULL, 1)
INSERT [dbo].[Usuarios] ([Id_Usuarios_US], [NombreUsuario_US], [Contraseña_US], [Id_Usuario_Admin_US], [Id_Usuario_Medico_US], [Activos_US]) VALUES (3, N'Daniel', N'5546', 3, NULL, 1)
INSERT [dbo].[Usuarios] ([Id_Usuarios_US], [NombreUsuario_US], [Contraseña_US], [Id_Usuario_Admin_US], [Id_Usuario_Medico_US], [Activos_US]) VALUES (4, N'Jose', N'4554', 4, NULL, 1)
INSERT [dbo].[Usuarios] ([Id_Usuarios_US], [NombreUsuario_US], [Contraseña_US], [Id_Usuario_Admin_US], [Id_Usuario_Medico_US], [Activos_US]) VALUES (5, N'Carlos', N'4545', 5, NULL, 1)
INSERT [dbo].[Usuarios] ([Id_Usuarios_US], [NombreUsuario_US], [Contraseña_US], [Id_Usuario_Admin_US], [Id_Usuario_Medico_US], [Activos_US]) VALUES (6, N'Maria', N'7899', 6, NULL, 1)
INSERT [dbo].[Usuarios] ([Id_Usuarios_US], [NombreUsuario_US], [Contraseña_US], [Id_Usuario_Admin_US], [Id_Usuario_Medico_US], [Activos_US]) VALUES (7, N'Luis', N'4562', 7, NULL, 1)
INSERT [dbo].[Usuarios] ([Id_Usuarios_US], [NombreUsuario_US], [Contraseña_US], [Id_Usuario_Admin_US], [Id_Usuario_Medico_US], [Activos_US]) VALUES (8, N'lucas', N'4789', 8, NULL, 1)
INSERT [dbo].[Usuarios] ([Id_Usuarios_US], [NombreUsuario_US], [Contraseña_US], [Id_Usuario_Admin_US], [Id_Usuario_Medico_US], [Activos_US]) VALUES (9, N'Veronica', N'1519', 9, NULL, 1)
INSERT [dbo].[Usuarios] ([Id_Usuarios_US], [NombreUsuario_US], [Contraseña_US], [Id_Usuario_Admin_US], [Id_Usuario_Medico_US], [Activos_US]) VALUES (10, N'Flor', N'1214', 10, NULL, 1)
INSERT [dbo].[Usuarios] ([Id_Usuarios_US], [NombreUsuario_US], [Contraseña_US], [Id_Usuario_Admin_US], [Id_Usuario_Medico_US], [Activos_US]) VALUES (11, N'Carrizo', N'4578', 11, NULL, 1)
INSERT [dbo].[Usuarios] ([Id_Usuarios_US], [NombreUsuario_US], [Contraseña_US], [Id_Usuario_Admin_US], [Id_Usuario_Medico_US], [Activos_US]) VALUES (12, N'Javier', N'3594', 12, NULL, 1)
INSERT [dbo].[Usuarios] ([Id_Usuarios_US], [NombreUsuario_US], [Contraseña_US], [Id_Usuario_Admin_US], [Id_Usuario_Medico_US], [Activos_US]) VALUES (13, N'Milagros', N'2389', 13, NULL, 1)
INSERT [dbo].[Usuarios] ([Id_Usuarios_US], [NombreUsuario_US], [Contraseña_US], [Id_Usuario_Admin_US], [Id_Usuario_Medico_US], [Activos_US]) VALUES (14, N'Sofia', N'1579', 14, NULL, 1)
INSERT [dbo].[Usuarios] ([Id_Usuarios_US], [NombreUsuario_US], [Contraseña_US], [Id_Usuario_Admin_US], [Id_Usuario_Medico_US], [Activos_US]) VALUES (15, N'Beatriz', N'8946', 15, NULL, 1)
INSERT [dbo].[Usuarios] ([Id_Usuarios_US], [NombreUsuario_US], [Contraseña_US], [Id_Usuario_Admin_US], [Id_Usuario_Medico_US], [Activos_US]) VALUES (16, N'juan.perez', N'juan2024', NULL, 1, 1)
INSERT [dbo].[Usuarios] ([Id_Usuarios_US], [NombreUsuario_US], [Contraseña_US], [Id_Usuario_Admin_US], [Id_Usuario_Medico_US], [Activos_US]) VALUES (17, N'maria.gomez', N'maria2024', NULL, 2, 1)
INSERT [dbo].[Usuarios] ([Id_Usuarios_US], [NombreUsuario_US], [Contraseña_US], [Id_Usuario_Admin_US], [Id_Usuario_Medico_US], [Activos_US]) VALUES (18, N'carlos.martinez', N'carlos2024', NULL, 3, 1)
INSERT [dbo].[Usuarios] ([Id_Usuarios_US], [NombreUsuario_US], [Contraseña_US], [Id_Usuario_Admin_US], [Id_Usuario_Medico_US], [Activos_US]) VALUES (19, N'ana.lopez', N'ana2024', NULL, 4, 1)
INSERT [dbo].[Usuarios] ([Id_Usuarios_US], [NombreUsuario_US], [Contraseña_US], [Id_Usuario_Admin_US], [Id_Usuario_Medico_US], [Activos_US]) VALUES (20, N'luis.fernandez', N'luis2024', NULL, 5, 1)
INSERT [dbo].[Usuarios] ([Id_Usuarios_US], [NombreUsuario_US], [Contraseña_US], [Id_Usuario_Admin_US], [Id_Usuario_Medico_US], [Activos_US]) VALUES (21, N'laura.garcia', N'laura2024', NULL, 6, 1)
INSERT [dbo].[Usuarios] ([Id_Usuarios_US], [NombreUsuario_US], [Contraseña_US], [Id_Usuario_Admin_US], [Id_Usuario_Medico_US], [Activos_US]) VALUES (22, N'jorge.rodriguez', N'jorge2024', NULL, 7, 1)
INSERT [dbo].[Usuarios] ([Id_Usuarios_US], [NombreUsuario_US], [Contraseña_US], [Id_Usuario_Admin_US], [Id_Usuario_Medico_US], [Activos_US]) VALUES (23, N'elena.hernandez', N'elena2024', NULL, 8, 1)
INSERT [dbo].[Usuarios] ([Id_Usuarios_US], [NombreUsuario_US], [Contraseña_US], [Id_Usuario_Admin_US], [Id_Usuario_Medico_US], [Activos_US]) VALUES (24, N'ricardo.gonzalez', N'ricardo2024', NULL, 9, 1)
INSERT [dbo].[Usuarios] ([Id_Usuarios_US], [NombreUsuario_US], [Contraseña_US], [Id_Usuario_Admin_US], [Id_Usuario_Medico_US], [Activos_US]) VALUES (25, N'marta.sanchez', N'marta2024', NULL, 10, 1)
INSERT [dbo].[Usuarios] ([Id_Usuarios_US], [NombreUsuario_US], [Contraseña_US], [Id_Usuario_Admin_US], [Id_Usuario_Medico_US], [Activos_US]) VALUES (26, N'pedro.torres', N'pedro2024', NULL, 11, 1)
INSERT [dbo].[Usuarios] ([Id_Usuarios_US], [NombreUsuario_US], [Contraseña_US], [Id_Usuario_Admin_US], [Id_Usuario_Medico_US], [Activos_US]) VALUES (27, N'clara.ramirez', N'clara2024', NULL, 12, 1)
INSERT [dbo].[Usuarios] ([Id_Usuarios_US], [NombreUsuario_US], [Contraseña_US], [Id_Usuario_Admin_US], [Id_Usuario_Medico_US], [Activos_US]) VALUES (28, N'diego.flores', N'diego2024', NULL, 13, 1)
INSERT [dbo].[Usuarios] ([Id_Usuarios_US], [NombreUsuario_US], [Contraseña_US], [Id_Usuario_Admin_US], [Id_Usuario_Medico_US], [Activos_US]) VALUES (29, N'lucia.diaz', N'lucia2024', NULL, 14, 1)
INSERT [dbo].[Usuarios] ([Id_Usuarios_US], [NombreUsuario_US], [Contraseña_US], [Id_Usuario_Admin_US], [Id_Usuario_Medico_US], [Activos_US]) VALUES (30, N'oscar.morales', N'oscar2024', NULL, 15, 1)
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Administ__1271B3007CE65946]    Script Date: 8/7/2024 08:13:27 ******/
ALTER TABLE [dbo].[Administradores] ADD  CONSTRAINT [UQ__Administ__1271B3007CE65946] UNIQUE NONCLUSTERED 
(
	[Dni_ADM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Administ__7392EFF8A445EA2C]    Script Date: 8/7/2024 08:13:27 ******/
ALTER TABLE [dbo].[Administradores] ADD  CONSTRAINT [UQ__Administ__7392EFF8A445EA2C] UNIQUE NONCLUSTERED 
(
	[Correo_Electronico_ADM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Administ__996A7D029DECEE80]    Script Date: 8/7/2024 08:13:27 ******/
ALTER TABLE [dbo].[Administradores] ADD  CONSTRAINT [UQ__Administ__996A7D029DECEE80] UNIQUE NONCLUSTERED 
(
	[Telefono_ADM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [unique_correo_electronico_ME]    Script Date: 8/7/2024 08:13:27 ******/
ALTER TABLE [dbo].[Medicos] ADD  CONSTRAINT [unique_correo_electronico_ME] UNIQUE NONCLUSTERED 
(
	[Correo_Electronico_ME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [unique_Telefono_ME]    Script Date: 8/7/2024 08:13:27 ******/
ALTER TABLE [dbo].[Medicos] ADD  CONSTRAINT [unique_Telefono_ME] UNIQUE NONCLUSTERED 
(
	[Telefono_ME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Medicos__41A0C9F2090F5C6D]    Script Date: 8/7/2024 08:13:27 ******/
ALTER TABLE [dbo].[Medicos] ADD  CONSTRAINT [UQ__Medicos__41A0C9F2090F5C6D] UNIQUE NONCLUSTERED 
(
	[Dni_ME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [unique_correo_electronico_PA]    Script Date: 8/7/2024 08:13:27 ******/
ALTER TABLE [dbo].[Pacientes] ADD  CONSTRAINT [unique_correo_electronico_PA] UNIQUE NONCLUSTERED 
(
	[Correo_Electronico_PA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [unique_Telefono_PA]    Script Date: 8/7/2024 08:13:27 ******/
ALTER TABLE [dbo].[Pacientes] ADD  CONSTRAINT [unique_Telefono_PA] UNIQUE NONCLUSTERED 
(
	[Telefono_PA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Paciente__41A16E96BD0B2081]    Script Date: 8/7/2024 08:13:27 ******/
ALTER TABLE [dbo].[Pacientes] ADD  CONSTRAINT [UQ__Paciente__41A16E96BD0B2081] UNIQUE NONCLUSTERED 
(
	[Dni_PA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Usuarios__235887419FE2C2BF]    Script Date: 8/7/2024 08:13:27 ******/
ALTER TABLE [dbo].[Usuarios] ADD UNIQUE NONCLUSTERED 
(
	[NombreUsuario_US] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Administradores] ADD  CONSTRAINT [DF__Administr__Activ__68487DD7]  DEFAULT ((1)) FOR [Activos_ADM]
GO
ALTER TABLE [dbo].[Medicos] ADD  CONSTRAINT [DF__Medicos__Activos__571DF1D5]  DEFAULT ((1)) FOR [Activos_ME]
GO
ALTER TABLE [dbo].[Pacientes] ADD  CONSTRAINT [DF__Pacientes__Activ__6A30C649]  DEFAULT ((1)) FOR [Activos_PA]
GO
ALTER TABLE [dbo].[Turnos] ADD  CONSTRAINT [DF__Turnos__Activos___6B24EA82]  DEFAULT ((1)) FOR [Activos_TU]
GO
ALTER TABLE [dbo].[Usuarios] ADD  DEFAULT ((1)) FOR [Activos_US]
GO
ALTER TABLE [dbo].[Administradores]  WITH CHECK ADD  CONSTRAINT [FK_Administradores_Nacionalidades] FOREIGN KEY([Nacionalidad_ADM])
REFERENCES [dbo].[Nacionalidades] ([Id_Nacionalidad_NA])
GO
ALTER TABLE [dbo].[Administradores] CHECK CONSTRAINT [FK_Administradores_Nacionalidades]
GO
ALTER TABLE [dbo].[DiasyHorarios]  WITH CHECK ADD  CONSTRAINT [PK_DiasYHorarios_Dias] FOREIGN KEY([Id_Dias])
REFERENCES [dbo].[Dias] ([Id_Dias])
GO
ALTER TABLE [dbo].[DiasyHorarios] CHECK CONSTRAINT [PK_DiasYHorarios_Dias]
GO
ALTER TABLE [dbo].[DiasyHorarios]  WITH CHECK ADD  CONSTRAINT [PK_DiasYHorarios_Horarios] FOREIGN KEY([Id_Horarios])
REFERENCES [dbo].[Horarios] ([Id_Horarios])
GO
ALTER TABLE [dbo].[DiasyHorarios] CHECK CONSTRAINT [PK_DiasYHorarios_Horarios]
GO
ALTER TABLE [dbo].[Localidades]  WITH CHECK ADD  CONSTRAINT [FK_Localidades_Provincias] FOREIGN KEY([Id_Provincias_LO])
REFERENCES [dbo].[Provincias] ([Id_Provincias_PRO])
GO
ALTER TABLE [dbo].[Localidades] CHECK CONSTRAINT [FK_Localidades_Provincias]
GO
ALTER TABLE [dbo].[Medicos]  WITH CHECK ADD  CONSTRAINT [FK_Medicos_DiasyHorarios] FOREIGN KEY([Dias_y_Horarios_ME])
REFERENCES [dbo].[DiasyHorarios] ([Id_DiasyHorarios])
GO
ALTER TABLE [dbo].[Medicos] CHECK CONSTRAINT [FK_Medicos_DiasyHorarios]
GO
ALTER TABLE [dbo].[Medicos]  WITH CHECK ADD  CONSTRAINT [FK_Medicos_Especialidades] FOREIGN KEY([Especialidad_ME])
REFERENCES [dbo].[Especialidades] ([Id_Especialidad_ES])
GO
ALTER TABLE [dbo].[Medicos] CHECK CONSTRAINT [FK_Medicos_Especialidades]
GO
ALTER TABLE [dbo].[Medicos]  WITH CHECK ADD  CONSTRAINT [FK_Medicos_Localidades] FOREIGN KEY([Id_Localidades_ME], [Id_Provincias_ME])
REFERENCES [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO])
GO
ALTER TABLE [dbo].[Medicos] CHECK CONSTRAINT [FK_Medicos_Localidades]
GO
ALTER TABLE [dbo].[Medicos]  WITH CHECK ADD  CONSTRAINT [FK_Medicos_Nacionalidades] FOREIGN KEY([Nacionalidad_ME])
REFERENCES [dbo].[Nacionalidades] ([Id_Nacionalidad_NA])
GO
ALTER TABLE [dbo].[Medicos] CHECK CONSTRAINT [FK_Medicos_Nacionalidades]
GO
ALTER TABLE [dbo].[Pacientes]  WITH CHECK ADD  CONSTRAINT [FK_Pacientes_Localidades] FOREIGN KEY([Id_Localidades_PA], [Id_Provincias_PA])
REFERENCES [dbo].[Localidades] ([Id_Localidades_LO], [Id_Provincias_LO])
GO
ALTER TABLE [dbo].[Pacientes] CHECK CONSTRAINT [FK_Pacientes_Localidades]
GO
ALTER TABLE [dbo].[Pacientes]  WITH CHECK ADD  CONSTRAINT [FK_Pacientes_Nacionalidades] FOREIGN KEY([Nacionalidad_PA])
REFERENCES [dbo].[Nacionalidades] ([Id_Nacionalidad_NA])
GO
ALTER TABLE [dbo].[Pacientes] CHECK CONSTRAINT [FK_Pacientes_Nacionalidades]
GO
ALTER TABLE [dbo].[Turnos]  WITH CHECK ADD  CONSTRAINT [FK_Turnos_Medicos] FOREIGN KEY([Legajo_Med_TU])
REFERENCES [dbo].[Medicos] ([Legajo_ME])
GO
ALTER TABLE [dbo].[Turnos] CHECK CONSTRAINT [FK_Turnos_Medicos]
GO
ALTER TABLE [dbo].[Turnos]  WITH CHECK ADD  CONSTRAINT [FK_Turnos_Pacientes] FOREIGN KEY([Legajo_Pac_TU])
REFERENCES [dbo].[Pacientes] ([Legajo_PA])
GO
ALTER TABLE [dbo].[Turnos] CHECK CONSTRAINT [FK_Turnos_Pacientes]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Administradores] FOREIGN KEY([Id_Usuario_Admin_US])
REFERENCES [dbo].[Administradores] ([Legajo_ADM])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Administradores]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Id_Admin] FOREIGN KEY([Id_Usuario_Admin_US])
REFERENCES [dbo].[Administradores] ([Legajo_ADM])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Id_Admin]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Medicos] FOREIGN KEY([Id_Usuario_Medico_US])
REFERENCES [dbo].[Medicos] ([Legajo_ME])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Medicos]
GO
/****** Object:  StoredProcedure [dbo].[SP_EliminarUsuario]    Script Date: 8/7/2024 08:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_EliminarUsuario]
(
@Id_Usuarios INT
)
AS
BEGIN
	IF EXISTS (SELECT 1 FROM Usuarios INNER JOIN Medicos ON @Id_Usuarios = Medicos.Legajo_ME INNER JOIN Turnos ON Medicos.Legajo_ME = Turnos.Legajo_Med_TU WHERE Turnos.Activos_TU = 1)
	BEGIN
	return;
	END

UPDATE Usuarios
SET Activos_US = 0
WHERE Usuarios.Id_Usuarios_US = @Id_Usuarios AND Activos_US = 1
END
GO
/****** Object:  StoredProcedure [dbo].[SP_InformeTurnosAsistidos]    Script Date: 8/7/2024 08:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_InformeTurnosAsistidos]
(
@fechainicio date ,
@fechaFinal date
)
AS
BEGIN
SELECT *
FROM Turnos 
WHERE Turnos.Fecha_TU BETWEEN @fechainicio AND @fechaFinal;
END 
GO
/****** Object:  StoredProcedure [dbo].[SpActualizarContraseña]    Script Date: 8/7/2024 08:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SpActualizarContraseña]
(
    @legajo_ME INT,
    @Contraseña_US VARCHAR(50),
    @NombreUsuario_US VARCHAR(50)
)
AS
BEGIN
Update Usuarios
set
Contraseña_US = @Contraseña_US,
NombreUsuario_US = @NombreUsuario_US
where Id_Usuario_Medico_US = @Legajo_ME
END
GO
/****** Object:  StoredProcedure [dbo].[SpActualizarMedico]    Script Date: 8/7/2024 08:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE       procedure [dbo].[SpActualizarMedico]
(
	@legajo_ME int,
    @Nombre_ME VARCHAR(50),
    @Apellido_ME VARCHAR(50),
    @Dni_ME VARCHAR(50),
    @Sexo_ME VARCHAR(50),
    @Nacionalidad_ME VARCHAR(50),
    @Fecha_De_Nacimiento_ME DATE,
    @Direccion_ME VARCHAR(50),
    @Id_Localidades_ME INT,
    @Id_Provincias_ME INT,
    @Correo_Electronico_ME VARCHAR(50),
    @Telefono_ME VARCHAR(50),
    @Especialidad_ME INT,
    @Dias_y_Horarios_ME varchar(200)
)
as
update Medicos
set
Nombre_ME=@Nombre_ME,
Apellido_ME=@Apellido_ME,
Dni_ME=@Dni_ME,
Sexo_ME=@Sexo_ME,
Nacionalidad_ME=@Nacionalidad_ME,
Fecha_de_Nacimiento_ME=@Fecha_De_Nacimiento_ME,
Direccion_ME=@Direccion_ME,
Id_Localidades_ME=@Id_Localidades_ME,
Id_Provincias_ME=@Id_Provincias_ME,
Correo_Electronico_ME=@Correo_Electronico_ME,
Telefono_ME=@Telefono_ME,
Especialidad_ME=@Especialidad_ME,
Dias_y_Horarios_ME=@Dias_y_Horarios_ME
where Legajo_ME = @legajo_ME AND Activos_ME = 1
return
GO
/****** Object:  StoredProcedure [dbo].[SpActualizarPaciente]    Script Date: 8/7/2024 08:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[SpActualizarPaciente]
(
	@Legajo_PA INT,
    @nombre_PA VARCHAR(50),
    @apellido_PA VARCHAR(50),
    @dni_PA VARCHAR(50),
    @sexo_PA VARCHAR(50),
    @nacionalidad_PA VARCHAR(50),
    @fecha_de_nacimiento_PA DATE,
    @direccion_PA VARCHAR(50),
    @id_localidades_PA INT,
    @id_provincias_PA INT,
    @correo_electronico_PA VARCHAR(50),
    @telefono_PA VARCHAR(50)

)
as
UPDATE Pacientes SET 
Nombre_PA = @nombre_PA,
Apellido_PA = @apellido_PA,
Dni_PA = @dni_PA,
Sexo_PA = @sexo_PA,
Nacionalidad_PA = @nacionalidad_PA,
Fecha_de_Nacimiento_PA = @fecha_de_nacimiento_PA,
Direccion_PA = @direccion_PA,
Id_Localidades_PA = @id_localidades_PA,
Id_Provincias_PA = @id_provincias_PA,
Correo_Electronico_PA = @correo_electronico_PA,
Telefono_PA = @telefono_PA
WHERE Legajo_PA = @Legajo_PA AND Activos_PA = 1
return
GO
/****** Object:  StoredProcedure [dbo].[SpActualizarTurnosxMedico]    Script Date: 8/7/2024 08:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SpActualizarTurnosxMedico]
(
@Id_Turnos_TU INT,
@Observacion_TU VARCHAR (50),
@Asistencia_TU BIT
)
AS
UPDATE Turnos SET 
Observacion_TU = @Observacion_TU,
Asistencia_TU = @Asistencia_TU
WHERE Id_Turnos_TU = @Id_Turnos_TU
return;
GO
/****** Object:  StoredProcedure [dbo].[spAgregarMedico]    Script Date: 8/7/2024 08:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[spAgregarMedico]
(
    @Nombre_ME VARCHAR(50),
    @Apellido_ME VARCHAR(50),
    @Dni_ME VARCHAR(50),
    @Sexo_ME VARCHAR(50),
    @Nacionalidad_ME VARCHAR(50),
    @Fecha_De_Nacimiento_ME DATE,
    @Direccion_ME VARCHAR(50),
    @Id_Localidades_ME INT,
    @Id_Provincias_ME INT,
    @Correo_Electronico_ME VARCHAR(50),
    @Telefono_ME VARCHAR(50),
    @Especialidad_ME INT,
    @Dias_y_Horarios_ME INT
)
AS
BEGIN 
SET IDENTITY_INSERT Medicos ON;

DECLARE @Legajo_ME INT = (select MAX(Legajo_ME) from Medicos)+1

    INSERT INTO Medicos (
        Legajo_ME,
        Nombre_ME, 
        Apellido_ME, 
        Dni_ME, 
        Sexo_ME, 
        Nacionalidad_ME, 
        Fecha_De_Nacimiento_ME, 
        Direccion_ME, 
        Id_Localidades_ME, 
        Id_Provincias_ME, 
        Correo_Electronico_ME, 
        Telefono_ME, 
        Especialidad_ME, 
        Dias_y_Horarios_ME,
		Activos_ME

    ) 
	VALUES
	(
        @Legajo_ME,
		@Nombre_ME, 
        @Apellido_ME, 
        @Dni_ME, 
        @Sexo_ME, 
        @Nacionalidad_ME, 
        @Fecha_De_Nacimiento_ME, 
        @Direccion_ME, 
        @Id_Localidades_ME, 
        @Id_Provincias_ME, 
        @Correo_Electronico_ME, 
        @Telefono_ME, 
        @Especialidad_ME, 
        @Dias_y_Horarios_ME,
		1
    );
	SET IDENTITY_INSERT Medicos OFF;
  RETURN;
END;
GO
/****** Object:  StoredProcedure [dbo].[spAgregarPaciente]    Script Date: 8/7/2024 08:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[spAgregarPaciente]
(
    @nombre_PA VARCHAR(50),
    @apellido_PA VARCHAR(50),
    @dni_PA VARCHAR(50),
    @sexo_PA VARCHAR(50),
    @nacionalidad_PA VARCHAR(50),
    @fecha_de_nacimiento_PA DATE,
    @direccion_PA VARCHAR(50),
    @id_localidades_PA INT,
    @id_provincias_PA INT,
    @correo_electronico_PA VARCHAR(50),
    @telefono_PA VARCHAR(50)
)
AS
BEGIN 

    INSERT INTO Pacientes (
        Nombre_PA, 
        Apellido_PA, 
        Dni_PA, 
        Sexo_PA, 
        Nacionalidad_PA, 
        Fecha_de_Nacimiento_PA, 
        Direccion_PA, 
        Id_Localidades_PA, 
        Id_Provincias_PA, 
        Correo_Electronico_PA, 
        Telefono_PA,
		Activos_PA

    ) 
	VALUES
	(
    @nombre_PA,
    @apellido_PA,
    @dni_PA,
    @sexo_PA,
    @nacionalidad_PA,
    @fecha_de_nacimiento_PA,
    @direccion_PA,
    @id_localidades_PA,
    @id_provincias_PA,
    @correo_electronico_PA,
    @telefono_PA,
	1
    );
  RETURN;
END;
GO
/****** Object:  StoredProcedure [dbo].[spAgregarTurno]    Script Date: 8/7/2024 08:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAgregarTurno]
    @Dias_y_Horarios_TU VARCHAR(200),
    @Legajo_Pac_TU INT,
    @Legajo_Med_TU INT,
	@Fecha_TU DATE

AS
BEGIN
	IF EXISTS (SELECT 1 FROM Turnos WHERE Fecha_TU = @Fecha_TU AND Activos_TU = 1 and @Dias_y_Horarios_TU = Dias_y_Horarios_TU and  @Legajo_Med_TU = Legajo_Med_TU )
	BEGIN
	return;
	END

INSERT INTO Turnos 
(
Dias_y_Horarios_TU, 
Legajo_Pac_TU, 
Legajo_Med_TU,
Fecha_TU
)
VALUES 
(
@Dias_y_Horarios_TU, 
@Legajo_Pac_TU, 
@Legajo_Med_TU,
@Fecha_TU
)
END

GO
/****** Object:  StoredProcedure [dbo].[spAgregarUsuario]    Script Date: 8/7/2024 08:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAgregarUsuario]
(
    @legajo_ME INT,
    @Contraseña_US VARCHAR(50),
    @NombreUsuario_US VARCHAR(50)
)
AS
BEGIN 
     INSERT INTO Usuarios(NombreUsuario_US,Contraseña_US,Id_Usuario_Medico_US) VALUES (@NombreUsuario_US, @Contraseña_US, @legajo_ME);
END;

GO
/****** Object:  StoredProcedure [dbo].[SpBuscarLoginAdmin]    Script Date: 8/7/2024 08:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SpBuscarLoginAdmin]
(
@NombreUsuario_ADM varchar(50),
@Contraseña_ADM varchar(50)
)
AS
SELECT CONCAT (Nombre_ADM, ', ', Apellido_ADM) From Administradores
INNER JOIN Usuarios ON Administradores.Legajo_ADM = Usuarios.Id_Usuario_Admin_US
WHERE Usuarios.NombreUsuario_US = @NombreUsuario_ADM AND Usuarios.Contraseña_US = @Contraseña_ADM AND Activos_US = 1
RETURN
GO
/****** Object:  StoredProcedure [dbo].[SpBuscarLoginMedico]    Script Date: 8/7/2024 08:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SpBuscarLoginMedico]
(
@NombreUsuario_ME varchar(50),
@Contraseña_ME varchar(50)
)
AS
SELECT CONCAT(Nombre_ME,', ',Apellido_ME) From Medicos
INNER JOIN Usuarios ON Medicos.Legajo_ME = Usuarios.Id_Usuario_Medico_US
WHERE Usuarios.NombreUsuario_US = @NombreUsuario_ME AND Usuarios.Contraseña_US = @Contraseña_ME AND Activos_US = 1
RETURN
GO
/****** Object:  StoredProcedure [dbo].[SpEliminaMedico]    Script Date: 8/7/2024 08:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SpEliminaMedico]
(
@Legajo_ME INT
)
AS
BEGIN
	IF EXISTS (SELECT 1 FROM Turnos WHERE Legajo_Med_TU = @Legajo_ME AND Activos_TU = 1)
	BEGIN
	return;
	END

	IF EXISTS (SELECT 1 FROM Usuarios WHERE Usuarios.Id_Usuario_Medico_US = @Legajo_ME AND Activos_US =1)
	BEGIN
	return;
	END

UPDATE Medicos
SET Activos_ME = 0
WHERE Medicos.Legajo_ME = @Legajo_ME
END
GO
/****** Object:  StoredProcedure [dbo].[SpEliminaPaciente]    Script Date: 8/7/2024 08:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SpEliminaPaciente]
(
@Legajo_PA INT
)
AS
BEGIN
	IF EXISTS (SELECT 1 FROM Turnos WHERE Legajo_Pac_TU = @Legajo_PA AND Activos_TU = 1)
	BEGIN
	return;
	END
UPDATE Pacientes
SET Activos_PA = 0
WHERE Legajo_PA = @Legajo_PA AND Activos_PA = 1
RETURN
END
GO
/****** Object:  StoredProcedure [dbo].[SpEliminaTurnos]    Script Date: 8/7/2024 08:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SpEliminaTurnos] 
(
@Id_Turnos_TU INT
)
AS
UPDATE Turnos
SET Activos_TU = 0
WHERE Id_Turnos_TU = @Id_Turnos_TU AND Activos_TU = 1
RETURN
GO
USE [master]
GO
ALTER DATABASE [DB_tpintegradosProg3_grupo2] SET  READ_WRITE 
GO
