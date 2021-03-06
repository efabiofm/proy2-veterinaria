/****** Object:  Database [ExamenDB]    Script Date: 14/12/2015 4:13:16 p. m. ******/
CREATE DATABASE [ExamenDB]
GO
USE [ExamenDB]
GO
/****** Object:  Table [dbo].[mascotas]    Script Date: 14/12/2015 4:33:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mascotas](
	[id_mascota] [int] IDENTITY(1,1) NOT NULL,
	[raza] [varchar](50) NOT NULL,
	[color] [varchar](50) NOT NULL,
	[edad] [int] NOT NULL,
	[esta_internado] [bit] NOT NULL,
 CONSTRAINT [PK_mascotas] PRIMARY KEY CLUSTERED 
(
	[id_mascota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ptos_contacto]    Script Date: 14/12/2015 4:33:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ptos_contacto](
	[id_pto_contacto] [int] IDENTITY(1,1) NOT NULL,
	[contacto] [varchar](50) NOT NULL,
	[id_usuario] [int] NOT NULL,
 CONSTRAINT [PK_ptos_contacto] PRIMARY KEY CLUSTERED 
(
	[id_pto_contacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tratamientos]    Script Date: 14/12/2015 4:33:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tratamientos](
	[id_historico] [int] IDENTITY(1,1) NOT NULL,
	[enfermedad] [varchar](50) NOT NULL,
	[medicina] [nvarchar](50) NOT NULL,
	[id_mascota] [int] NOT NULL,
 CONSTRAINT [PK_historico_tratamientos] PRIMARY KEY CLUSTERED 
(
	[id_historico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 14/12/2015 4:33:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[usuarios](
	[id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[cedula] [varchar](50) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[edad] [int] NOT NULL,
 CONSTRAINT [PK_usuarios] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[usuarios_x_mascotas]    Script Date: 14/12/2015 4:33:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios_x_mascotas](
	[id_usuario] [int] NOT NULL,
	[id_mascota] [int] NOT NULL,
 CONSTRAINT [PK_usuarios_x_mascotas] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC,
	[id_mascota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[mascotas] ON 

INSERT [dbo].[mascotas] ([id_mascota], [raza], [color], [edad], [esta_internado]) VALUES (1, N'Pitbull', N'Gris', 5, 0)
INSERT [dbo].[mascotas] ([id_mascota], [raza], [color], [edad], [esta_internado]) VALUES (2, N'Huskey', N'Negro', 10, 0)
INSERT [dbo].[mascotas] ([id_mascota], [raza], [color], [edad], [esta_internado]) VALUES (3, N'Angora', N'Blanco', 7, 1)
INSERT [dbo].[mascotas] ([id_mascota], [raza], [color], [edad], [esta_internado]) VALUES (4, N'Schnauzer', N'Gris', 12, 1)
INSERT [dbo].[mascotas] ([id_mascota], [raza], [color], [edad], [esta_internado]) VALUES (5, N'Persa', N'Naranja', 10, 0)
INSERT [dbo].[mascotas] ([id_mascota], [raza], [color], [edad], [esta_internado]) VALUES (6, N'Doberman', N'Negro', 4, 1)
INSERT [dbo].[mascotas] ([id_mascota], [raza], [color], [edad], [esta_internado]) VALUES (7, N'Rottweiler', N'Negro', 7, 1)
INSERT [dbo].[mascotas] ([id_mascota], [raza], [color], [edad], [esta_internado]) VALUES (8, N'Poodle', N'Blanco', 12, 0)
INSERT [dbo].[mascotas] ([id_mascota], [raza], [color], [edad], [esta_internado]) VALUES (9, N'Dachshund', N'Café', 10, 0)
INSERT [dbo].[mascotas] ([id_mascota], [raza], [color], [edad], [esta_internado]) VALUES (10, N'Siamés', N'Gris', 6, 0)
INSERT [dbo].[mascotas] ([id_mascota], [raza], [color], [edad], [esta_internado]) VALUES (11, N'Beagle', N'Café', 3, 1)
INSERT [dbo].[mascotas] ([id_mascota], [raza], [color], [edad], [esta_internado]) VALUES (12, N'Boxer', N'Gris', 2, 1)
INSERT [dbo].[mascotas] ([id_mascota], [raza], [color], [edad], [esta_internado]) VALUES (13, N'Pug', N'Blanco', 7, 1)
INSERT [dbo].[mascotas] ([id_mascota], [raza], [color], [edad], [esta_internado]) VALUES (14, N'Cocker', N'Café', 8, 0)
INSERT [dbo].[mascotas] ([id_mascota], [raza], [color], [edad], [esta_internado]) VALUES (15, N'Galgo', N'Café', 5, 0)
SET IDENTITY_INSERT [dbo].[mascotas] OFF
SET IDENTITY_INSERT [dbo].[ptos_contacto] ON 

INSERT [dbo].[ptos_contacto] ([id_pto_contacto], [contacto], [id_usuario]) VALUES (1, N'2345-6789', 1)
INSERT [dbo].[ptos_contacto] ([id_pto_contacto], [contacto], [id_usuario]) VALUES (2, N'pepe23@mail.com', 1)
INSERT [dbo].[ptos_contacto] ([id_pto_contacto], [contacto], [id_usuario]) VALUES (3, N'7654-8210', 2)
INSERT [dbo].[ptos_contacto] ([id_pto_contacto], [contacto], [id_usuario]) VALUES (4, N'mama31@mail.com', 4)
INSERT [dbo].[ptos_contacto] ([id_pto_contacto], [contacto], [id_usuario]) VALUES (5, N'8765-4321', 3)
INSERT [dbo].[ptos_contacto] ([id_pto_contacto], [contacto], [id_usuario]) VALUES (6, N'sese24@mail.com', 7)
INSERT [dbo].[ptos_contacto] ([id_pto_contacto], [contacto], [id_usuario]) VALUES (7, N'2554-6650', 8)
INSERT [dbo].[ptos_contacto] ([id_pto_contacto], [contacto], [id_usuario]) VALUES (8, N'mema27@gmail.com', 8)
INSERT [dbo].[ptos_contacto] ([id_pto_contacto], [contacto], [id_usuario]) VALUES (9, N'7254-3334', 9)
INSERT [dbo].[ptos_contacto] ([id_pto_contacto], [contacto], [id_usuario]) VALUES (10, N'ezecha33@mail.com', 10)
SET IDENTITY_INSERT [dbo].[ptos_contacto] OFF
SET IDENTITY_INSERT [dbo].[tratamientos] ON 

INSERT [dbo].[tratamientos] ([id_historico], [enfermedad], [medicina], [id_mascota]) VALUES (1, N'Gastritis', N'Paracetamol', 1)
INSERT [dbo].[tratamientos] ([id_historico], [enfermedad], [medicina], [id_mascota]) VALUES (2, N'Pata quebrada', N'Enyesamiento', 1)
INSERT [dbo].[tratamientos] ([id_historico], [enfermedad], [medicina], [id_mascota]) VALUES (6, N'Pulgas', N'Champú antipulgas', 2)
INSERT [dbo].[tratamientos] ([id_historico], [enfermedad], [medicina], [id_mascota]) VALUES (7, N'Otitis', N'Lavado de oídos', 4)
INSERT [dbo].[tratamientos] ([id_historico], [enfermedad], [medicina], [id_mascota]) VALUES (8, N'Pelo reseco', N'Aceite restaurador', 5)
INSERT [dbo].[tratamientos] ([id_historico], [enfermedad], [medicina], [id_mascota]) VALUES (9, N'Rabia', N'Vacuna', 6)
INSERT [dbo].[tratamientos] ([id_historico], [enfermedad], [medicina], [id_mascota]) VALUES (10, N'Parásitos', N'Zentel', 6)
INSERT [dbo].[tratamientos] ([id_historico], [enfermedad], [medicina], [id_mascota]) VALUES (11, N'Vomitos', N'Paracetamol', 6)
INSERT [dbo].[tratamientos] ([id_historico], [enfermedad], [medicina], [id_mascota]) VALUES (12, N'Artritis', N'Cirugía interna', 9)
INSERT [dbo].[tratamientos] ([id_historico], [enfermedad], [medicina], [id_mascota]) VALUES (13, N'Parvoriosis', N'Paracetamol', 10)
INSERT [dbo].[tratamientos] ([id_historico], [enfermedad], [medicina], [id_mascota]) VALUES (14, N'Cistitis', N'Antibióticos', 11)
INSERT [dbo].[tratamientos] ([id_historico], [enfermedad], [medicina], [id_mascota]) VALUES (15, N'Cáncer', N'Quimio', 12)
INSERT [dbo].[tratamientos] ([id_historico], [enfermedad], [medicina], [id_mascota]) VALUES (16, N'Infección ocular', N'Antibióticos', 12)
INSERT [dbo].[tratamientos] ([id_historico], [enfermedad], [medicina], [id_mascota]) VALUES (17, N'Tos', N'Paracetamol', 14)
INSERT [dbo].[tratamientos] ([id_historico], [enfermedad], [medicina], [id_mascota]) VALUES (18, N'Cortadura', N'Vendajes', 15)
INSERT [dbo].[tratamientos] ([id_historico], [enfermedad], [medicina], [id_mascota]) VALUES (19, N'Garrapatas', N'Ampolla', 3)
INSERT [dbo].[tratamientos] ([id_historico], [enfermedad], [medicina], [id_mascota]) VALUES (21, N'Fiebre', N'Panadol', 7)
INSERT [dbo].[tratamientos] ([id_historico], [enfermedad], [medicina], [id_mascota]) VALUES (23, N'Diarrea', N'Loperamida', 9)
INSERT [dbo].[tratamientos] ([id_historico], [enfermedad], [medicina], [id_mascota]) VALUES (24, N'Comezón', N'Talco', 8)
INSERT [dbo].[tratamientos] ([id_historico], [enfermedad], [medicina], [id_mascota]) VALUES (25, N'Falta de apetito', N'Croquetas', 13)
SET IDENTITY_INSERT [dbo].[tratamientos] OFF
SET IDENTITY_INSERT [dbo].[usuarios] ON 

INSERT [dbo].[usuarios] ([id_usuario], [cedula], [nombre], [edad]) VALUES (1, N'102340567', N'Pedro Perez', 23)
INSERT [dbo].[usuarios] ([id_usuario], [cedula], [nombre], [edad]) VALUES (2, N'203450678', N'María Mora', 25)
INSERT [dbo].[usuarios] ([id_usuario], [cedula], [nombre], [edad]) VALUES (3, N'104560789', N'Jose Jimenez', 27)
INSERT [dbo].[usuarios] ([id_usuario], [cedula], [nombre], [edad]) VALUES (4, N'254365475', N'Mario Machado', 31)
INSERT [dbo].[usuarios] ([id_usuario], [cedula], [nombre], [edad]) VALUES (5, N'142235465', N'Luis López', 26)
INSERT [dbo].[usuarios] ([id_usuario], [cedula], [nombre], [edad]) VALUES (6, N'142344545', N'Carlos Castro', 30)
INSERT [dbo].[usuarios] ([id_usuario], [cedula], [nombre], [edad]) VALUES (7, N'123432433', N'Sergio Segura', 24)
INSERT [dbo].[usuarios] ([id_usuario], [cedula], [nombre], [edad]) VALUES (8, N'234554456', N'Melissa Madrigal', 27)
INSERT [dbo].[usuarios] ([id_usuario], [cedula], [nombre], [edad]) VALUES (9, N'243543434', N'Bryan Barrantes', 32)
INSERT [dbo].[usuarios] ([id_usuario], [cedula], [nombre], [edad]) VALUES (10, N'243543322', N'Ezequiel Echandi', 33)
SET IDENTITY_INSERT [dbo].[usuarios] OFF
INSERT [dbo].[usuarios_x_mascotas] ([id_usuario], [id_mascota]) VALUES (1, 1)
INSERT [dbo].[usuarios_x_mascotas] ([id_usuario], [id_mascota]) VALUES (1, 2)
INSERT [dbo].[usuarios_x_mascotas] ([id_usuario], [id_mascota]) VALUES (2, 1)
INSERT [dbo].[usuarios_x_mascotas] ([id_usuario], [id_mascota]) VALUES (2, 4)
INSERT [dbo].[usuarios_x_mascotas] ([id_usuario], [id_mascota]) VALUES (3, 3)
INSERT [dbo].[usuarios_x_mascotas] ([id_usuario], [id_mascota]) VALUES (3, 4)
INSERT [dbo].[usuarios_x_mascotas] ([id_usuario], [id_mascota]) VALUES (4, 8)
INSERT [dbo].[usuarios_x_mascotas] ([id_usuario], [id_mascota]) VALUES (5, 5)
INSERT [dbo].[usuarios_x_mascotas] ([id_usuario], [id_mascota]) VALUES (5, 9)
INSERT [dbo].[usuarios_x_mascotas] ([id_usuario], [id_mascota]) VALUES (6, 7)
INSERT [dbo].[usuarios_x_mascotas] ([id_usuario], [id_mascota]) VALUES (7, 3)
INSERT [dbo].[usuarios_x_mascotas] ([id_usuario], [id_mascota]) VALUES (7, 6)
INSERT [dbo].[usuarios_x_mascotas] ([id_usuario], [id_mascota]) VALUES (8, 10)
INSERT [dbo].[usuarios_x_mascotas] ([id_usuario], [id_mascota]) VALUES (9, 10)
INSERT [dbo].[usuarios_x_mascotas] ([id_usuario], [id_mascota]) VALUES (10, 2)
ALTER TABLE [dbo].[ptos_contacto]  WITH CHECK ADD  CONSTRAINT [FK_ptos_contacto_usuarios] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[ptos_contacto] CHECK CONSTRAINT [FK_ptos_contacto_usuarios]
GO
ALTER TABLE [dbo].[tratamientos]  WITH CHECK ADD  CONSTRAINT [FK_historico_tratamientos_mascotas] FOREIGN KEY([id_mascota])
REFERENCES [dbo].[mascotas] ([id_mascota])
GO
ALTER TABLE [dbo].[tratamientos] CHECK CONSTRAINT [FK_historico_tratamientos_mascotas]
GO
ALTER TABLE [dbo].[usuarios_x_mascotas]  WITH CHECK ADD  CONSTRAINT [FK_usuarios_x_mascotas_mascotas] FOREIGN KEY([id_mascota])
REFERENCES [dbo].[mascotas] ([id_mascota])
GO
ALTER TABLE [dbo].[usuarios_x_mascotas] CHECK CONSTRAINT [FK_usuarios_x_mascotas_mascotas]
GO
ALTER TABLE [dbo].[usuarios_x_mascotas]  WITH CHECK ADD  CONSTRAINT [FK_usuarios_x_mascotas_usuarios] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[usuarios_x_mascotas] CHECK CONSTRAINT [FK_usuarios_x_mascotas_usuarios]
GO
