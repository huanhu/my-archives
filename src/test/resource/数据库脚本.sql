
------------------------------- 表结构 -------------------------------

--创建表[Department]
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[id] [char](32) NOT NULL,
	[parrentId] [char](32) NULL,
	[name] [nvarchar](32) NOT NULL,
	[level] [smallint] NOT NULL,
	[leader] [char](32) NULL,
	[remark] [nvarchar](300) NULL,
	[createTime] [bigint] NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

--创建表[DepartmentUser]
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepartmentUser](
	[departmentId] [char](32) NOT NULL,
	[userId] [char](32) NOT NULL,
 CONSTRAINT [PK_DepartmentUser] PRIMARY KEY CLUSTERED
(
	[departmentId] ASC,
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

--修改表[MaterialContains]字段名称
exec sp_rename '[dbo].[MaterialContains].rowMaterialId','rawMaterialId'

--修改表[PartitionBooking]字段类型
ALTER TABLE [dbo].[PartitionBooking] ALTER COLUMN partitionAreaNum nvarchar(32) NULL

--修改表[PcEntity]字段类型、添加字段
ALTER TABLE [dbo].[PcEntity] ALTER COLUMN partitionAreaNum nvarchar(32) NULL
ALTER TABLE [dbo].[PcEntity] ALTER COLUMN sourcePartitionAreaNum nvarchar(32) NULL
ALTER TABLE [dbo].[PcEntity] ADD pcTypeOverallId char(32) NULL

--修改表[PcFeatureExData]添加字段
ALTER TABLE [dbo].[PcFeatureExData] ADD pcTypeOverallId char(32) NULL
ALTER TABLE [dbo].[PcFeatureExData] ADD pcFeatureExFieldId char(32) NULL

--修改表[PcFeatureExField]字段名称
exec sp_rename '[dbo].[PcFeatureExField].regEx','regex'

--修改表[PcLogTransfer]字段类型
ALTER TABLE [dbo].[PcLogTransfer] ALTER COLUMN targetPartitionAreaNum nvarchar(32) NULL

--表[PcType]添加字段
ALTER TABLE [dbo].[PcType] ADD pcTypeOverallId char(32) NULL
ALTER TABLE [dbo].[PcType] ADD enabled bit NOT NULL default 1
ALTER TABLE [dbo].[PcType] ADD title nvarchar(32) NOT NULL default 1

--创建表[PcTypeOverall]
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PcTypeOverall](
	[id] [char](32) NOT NULL,
	[pcTypeId] [char](32) NOT NULL,
	[drawingNo] [nvarchar](50) NULL,
	[drawingTitle] [nvarchar](50) NULL,
	[constructNo] [nvarchar](8) NULL,
	[designInstitute] [nvarchar](50) NULL,
	[designer] [nvarchar](50) NULL,
	[drawBy] [nvarchar](50) NULL,
	[auditor] [nvarchar](50) NULL,
	[proofreader] [nvarchar](50) NULL,
	[approver] [nvarchar](50) NULL,
	[approvedDate] [bigint] NULL,
	[remark] [nvarchar](200) NULL,
	[order] [int] NULL,
	[dwgFileId] [char](32) NULL,
	[status] [smallint] NOT NULL,
	[version] [smallint] NOT NULL,
	[targetCount] [int] NULL,
	[createTime] [bigint] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_PcTypeOverall] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

--创建表[PcTypeOverallMaterial]
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PcTypeOverallMaterial](
	[pcTypeOverallId] [char](32) NOT NULL,
	[materialId] [char](32) NOT NULL,
	[count] [numeric](12, 4) NULL,
 CONSTRAINT [PK_PcTypeOverallMaterial] PRIMARY KEY CLUSTERED
(
	[pcTypeOverallId] ASC,
	[materialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

--创建表[PcTypeShape]
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PcTypeShape](
	[pcTypeOverallId] [char](32) NOT NULL,
	[weight] [numeric](9, 3) NULL,
	[totalLength] [numeric](12, 3) NULL,
	[totalWidth] [numeric](12, 3) NULL,
	[totalHeight] [numeric](12, 3) NULL,
	[areaNet] [numeric](9, 3) NULL,
	[areaGross] [numeric](9, 3) NULL,
	[concreteVolume] [numeric](9, 3) NULL,
	[concreteStrength] [nvarchar](8) NULL,
	[concreteCover] [numeric](9, 3) NULL,
	[rebarUsage] [numeric](12, 3) NULL,
	[rebarExtensionLength] [numeric](9, 3) NULL,
	[remark] [nvarchar](200) NULL,
 CONSTRAINT [PK_PcTypeShape] PRIMARY KEY CLUSTERED
(
	[pcTypeOverallId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

--修改表[WorkStation]字段可为空
ALTER TABLE [dbo].[WorkStation] ALTER COLUMN elmtId  varchar(50) NULL

--给表[PcTypeOverall]添加约束
ALTER TABLE [dbo].[PcTypeOverall] ADD CONSTRAINT [DF_PcTypeOverall_deleted] DEFAULT ((0)) FOR [deleted]
GO

--给表[Department]添加约束
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_Department] FOREIGN KEY([parrentId])
REFERENCES [dbo].[Department] ([id])
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_Department]
GO
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_User] FOREIGN KEY([leader])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_User]
GO

--给表[DepartmentUser]添加约束
ALTER TABLE [dbo].[DepartmentUser]  WITH CHECK ADD  CONSTRAINT [FK_DepartmentUser_Department] FOREIGN KEY([departmentId])
REFERENCES [dbo].[Department] ([id])
GO
ALTER TABLE [dbo].[DepartmentUser] CHECK CONSTRAINT [FK_DepartmentUser_Department]
GO
ALTER TABLE [dbo].[DepartmentUser]  WITH CHECK ADD  CONSTRAINT [FK_DepartmentUser_User] FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[DepartmentUser] CHECK CONSTRAINT [FK_DepartmentUser_User]
GO

--给表[PcEntity]添加约束
ALTER TABLE [dbo].[PcEntity] WITH CHECK ADD CONSTRAINT [FK_PcEntity_PcTypeOverall] FOREIGN KEY([pcTypeOverallId])
REFERENCES [dbo].[PcTypeOverall] ([id])
GO
ALTER TABLE [dbo].[PcEntity] CHECK CONSTRAINT [FK_PcEntity_PcTypeOverall]
GO

--给表[PcFeatureExData]添加约束
ALTER TABLE [dbo].[PcFeatureExData] WITH CHECK ADD CONSTRAINT [FK_PcFeatureExData_PcFeatureExField] FOREIGN KEY([pcFeatureExFieldId])
REFERENCES [dbo].[PcFeatureExField] ([id])
GO
ALTER TABLE [dbo].[PcFeatureExData] CHECK CONSTRAINT [FK_PcFeatureExData_PcFeatureExField]
GO
ALTER TABLE [dbo].[PcFeatureExData] WITH CHECK ADD CONSTRAINT [FK_PcFeatureExData_PcTypeOverall] FOREIGN KEY([pcTypeOverallId])
REFERENCES [dbo].[PcTypeOverall] ([id])
GO
ALTER TABLE [dbo].[PcFeatureExData] CHECK CONSTRAINT [FK_PcFeatureExData_PcTypeOverall]
GO
ALTER TABLE [dbo].[PcFeatureExField] WITH CHECK ADD CONSTRAINT [FK_PcFeatureExField_PcRoot] FOREIGN KEY([pcRootId])
REFERENCES [dbo].[PcRoot] ([id])
GO
ALTER TABLE [dbo].[PcFeatureExField] CHECK CONSTRAINT [FK_PcFeatureExField_PcRoot]
GO

--给表[PcType]添加约束
ALTER TABLE [dbo].[PcType] WITH CHECK ADD CONSTRAINT [FK_PcType_PcTypeOverall] FOREIGN KEY([pcTypeOverallId])
REFERENCES [dbo].[PcTypeOverall] ([id])
GO
ALTER TABLE [dbo].[PcType] CHECK CONSTRAINT [FK_PcType_PcTypeOverall]
GO

--给表[PcTypeOverall]添加约束
ALTER TABLE [dbo].[PcTypeOverall]  WITH CHECK ADD  CONSTRAINT [FK_PcTypeOverall_DwgFile] FOREIGN KEY([dwgFileId])
REFERENCES [dbo].[DwgFile] ([id])
GO
ALTER TABLE [dbo].[PcTypeOverall] CHECK CONSTRAINT [FK_PcTypeOverall_DwgFile]
GO
ALTER TABLE [dbo].[PcTypeOverall]  WITH CHECK ADD  CONSTRAINT [FK_PcTypeOverall_PcType] FOREIGN KEY([pcTypeId])
REFERENCES [dbo].[PcType] ([id])
GO
ALTER TABLE [dbo].[PcTypeOverall] CHECK CONSTRAINT [FK_PcTypeOverall_PcType]
GO

--给表[PcTypeOverallMaterial]添加约束
ALTER TABLE [dbo].[PcTypeOverallMaterial]  WITH CHECK ADD  CONSTRAINT [FK_PcTypeOverallMaterial_Material] FOREIGN KEY([materialId])
REFERENCES [dbo].[Material] ([id])
GO
ALTER TABLE [dbo].[PcTypeOverallMaterial] CHECK CONSTRAINT [FK_PcTypeOverallMaterial_Material]
GO
ALTER TABLE [dbo].[PcTypeOverallMaterial]  WITH CHECK ADD  CONSTRAINT [FK_PcTypeOverallMaterial_PcTypeOverall] FOREIGN KEY([pcTypeOverallId])
REFERENCES [dbo].[PcTypeOverall] ([id])
GO
ALTER TABLE [dbo].[PcTypeOverallMaterial] CHECK CONSTRAINT [FK_PcTypeOverallMaterial_PcTypeOverall]
GO

--给表[PcTypeShape]添加约束
ALTER TABLE [dbo].[PcTypeShape]  WITH CHECK ADD  CONSTRAINT [FK_PcTypeShape_PcTypeOverall] FOREIGN KEY([pcTypeOverallId])
REFERENCES [dbo].[PcTypeOverall] ([id])
GO
ALTER TABLE [dbo].[PcTypeShape] CHECK CONSTRAINT [FK_PcTypeShape_PcTypeOverall]
GO

------------------------------- 表数据 -------------------------------

insert into [PCMS_Ver1700].[dbo].[PcTypeOverall]
([id],
 [pcTypeId],
 [drawingNo],
 [drawingTitle],
 [constructNo],
 [designInstitute],
 [designer],
 [drawBy],
 [auditor],
 [proofreader],
 [approver],
 [approvedDate],
 [remark],
 [order],
 [dwgFileId],
 [status],
 [version],
 [targetCount],
 [createTime],
 [deleted])
 select LEFT(NEWID(),32), a.id, null, null, a.constructNo, a.designInstitute, a.designer, null, a.auditor, null, null, a.approvedDate,
 a.remark, a.[order], a.dwgFileId, '0', '1', null, a.createTime, a.deleted
 from [PCMS_Ver1700].[dbo].[PcType] as a

 update PcType  set pcTypeOverallId = (select id from PcTypeOverall where pcTypeId = PcType.id )

 update PcFeatureExData set pcTypeOverallId = (select id from PcTypeOverall where pcTypeId = PcFeatureExData.pcTypeId )

 update PcEntity  set pcTypeOverallId = (select id from PcTypeOverall where pcTypeId = PcEntity.pcTypeId )

 insert into PcTypeOverallMaterial (pcTypeOverallId ,materialId ,count )
select PcTypeOverall.id, ISNULL( PcTypeMaterial.materialId,'0') materialId ,ISNULL( PcTypeMaterial.count,'0') count from PcTypeOverall
 join PcTypeMaterial  on PcTypeMaterial.pcTypeId = PcTypeOverall.pcTypeId

 insert into PcTypeShape (pcTypeOverallId  , weight , concreteVolume  , remark  )
 select PcTypeOverall.id,PcTypeEx.weight,PcTypeEx.concreteVolume,PcTypeEx.remark from PcTypeOverall
 left join PcTypeEx on PcTypeOverall.pcTypeId=PcTypeEx.pcTypeId













