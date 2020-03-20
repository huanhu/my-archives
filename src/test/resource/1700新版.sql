USE [PCMS_Ver1700-1]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auth](
	[id] [char](32) NOT NULL,
	[key] [varchar](100) NOT NULL,
	[topic] [nvarchar](100) NOT NULL,
	[moduleId] [char](32) NOT NULL,
 CONSTRAINT [PK_auth] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuthRole](
	[authId] [char](32) NOT NULL,
	[roleId] [char](32) NOT NULL,
 CONSTRAINT [PK_authRole] PRIMARY KEY CLUSTERED
(
	[authId] ASC,
	[roleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Batch](
	[id] [char](32) NOT NULL,
	[contractId] [char](32) NOT NULL,
	[pcTypeId] [char](32) NOT NULL,
	[pcCount] [int] NOT NULL,
	[createTime] [bigint] NOT NULL,
	[deleted] [bit] NOT NULL,
	[countOfUnit] [int] NULL,
 CONSTRAINT [PK_batch] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BatchingPlant](
	[id] [char](32) NOT NULL,
	[name] [nvarchar](16) NOT NULL,
	[spec] [nvarchar](16) NULL,
	[warehouseId] [char](32) NULL,
	[enabled] [bit] NOT NULL,
	[createTime] [bigint] NOT NULL,
	[creator] [char](32) NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_BatchingPlant] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contract](
	[id] [char](32) NOT NULL,
	[projectId] [char](32) NOT NULL,
	[topic] [nvarchar](50) NOT NULL,
	[contractNo] [nvarchar](16) NOT NULL,
	[startDate] [bigint] NULL,
	[endDate] [bigint] NULL,
	[contact] [nvarchar](50) NULL,
	[phone] [varchar](20) NULL,
	[land] [nvarchar](50) NULL,
	[buildingLayer] [nvarchar](50) NULL,
	[buildingNo] [nvarchar](50) NULL,
	[status] [bit] NOT NULL,
	[filed] [bit] NOT NULL,
	[createTime] [bigint] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_contract] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuringKiln](
	[workStationId] [char](32) NOT NULL,
	[rowsCount] [smallint] NOT NULL,
	[columnsCount] [smallint] NOT NULL,
 CONSTRAINT [PK_CuringKiln] PRIMARY KEY CLUSTERED
(
	[workStationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[id] [char](32) NOT NULL,
	[name] [varchar](60) NOT NULL,
	[shortName] [varchar](60) NULL,
	[provinceId] [char](32) NULL,
	[cityId] [char](32) NULL,
	[districtId] [char](32) NULL,
	[industry] [char](32) NULL,
	[nature] [char](32) NULL,
	[scale] [char](32) NULL,
	[level] [char](32) NULL,
	[legalPerson] [varchar](64) NULL,
	[email] [varchar](64) NULL,
	[address] [varchar](128) NULL,
	[cooperateDate] [bigint] NULL,
	[contacts] [varchar](64) NULL,
	[tel] [varchar](16) NULL,
	[status] [smallint] NULL,
	[createTime] [bigint] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
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
-----------------------------------------
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
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dictionary](
	[id] [char](32) NOT NULL,
	[typeId] [char](32) NOT NULL,
	[value] [nvarchar](32) NOT NULL,
	[sort] [int] NOT NULL,
	[enabled] [bit] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_Dictionary] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DictionaryType](
	[id] [char](32) NOT NULL,
	[name] [nvarchar](32) NOT NULL,
	[enabled] [bit] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_DictionaryType] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DwgFile](
	[id] [char](32) NOT NULL,
	[taskId] [int] NOT NULL,
	[dwgPath] [varchar](10) NOT NULL,
	[ocfPath] [varchar](10) NULL,
	[imgPdfUrl] [varchar](100) NULL,
	[status] [smallint] NOT NULL,
	[createTime] [bigint] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_DwgFile] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamineItem](
	[id] [char](32) NOT NULL,
	[processId] [char](32) NOT NULL,
	[pcTypeId] [char](32) NULL,
	[index] [smallint] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[requirement] [nvarchar](100) NULL,
	[methods] [nvarchar](100) NULL,
	[percentage] [smallint] NULL,
	[result] [nvarchar](100) NULL,
	[remark] [nvarchar](100) NULL,
	[type] [smallint] NULL,
	[creator] [char](32) NULL,
	[createTime] [bigint] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_ExamineItem] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamineRecord](
	[id] [char](32) NOT NULL,
	[pcEntityId] [char](32) NOT NULL,
	[processId] [char](32) NOT NULL,
	[examineItemId] [char](32) NULL,
	[workStationId] [char](32) NOT NULL,
	[kilnId] [char](32) NULL,
	[index] [smallint] NOT NULL,
	[name] [nvarchar](50) NULL,
	[requirement] [nvarchar](100) NULL,
	[methods] [nvarchar](100) NULL,
	[percentage] [smallint] NULL,
	[result] [nvarchar](100) NULL,
	[remark] [nvarchar](100) NULL,
	[creator] [char](32) NOT NULL,
	[createTime] [bigint] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_ExamineRecord] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamineRecordPhoto](
	[examineRecordId] [char](32) NOT NULL,
	[photoId] [char](32) NOT NULL,
 CONSTRAINT [PK_ExamineRecordPhoto] PRIMARY KEY CLUSTERED
(
	[examineRecordId] ASC,
	[photoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Floor](
	[id] [char](32) NOT NULL,
	[contractId] [char](32) NOT NULL,
	[no] [nvarchar](4) NOT NULL,
	[beginDate] [bigint] NULL,
	[deliveryDate] [bigint] NULL,
	[index] [int] NULL,
	[createTime] [bigint] NOT NULL,
	[creator] [char](32) NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_Floor] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Form](
	[id] [char](32) NOT NULL,
	[formNo] [varchar](50) NOT NULL,
	[batchingPlantId] [char](32) NULL,
	[mainTitle] [nvarchar](50) NULL,
	[pageSize] [smallint] NULL,
	[formCategoryId] [char](32) NULL,
	[formTemplateId] [char](32) NULL,
	[completed] [bit] NOT NULL,
	[remark] [nvarchar](128) NULL,
	[creator] [char](32) NOT NULL,
	[createTime] [bigint] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_form] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormCategory](
	[id] [char](32) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[order] [int] NULL,
	[createTime] [bigint] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_formCategory] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormPcEntity](
	[formId] [char](32) NOT NULL,
	[pcEntityId] [char](32) NOT NULL,
 CONSTRAINT [PK_formPcEntity] PRIMARY KEY CLUSTERED
(
	[formId] ASC,
	[pcEntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormTemplate](
	[id] [char](32) NOT NULL,
	[topic] [nvarchar](50) NOT NULL,
	[formCategoryId] [char](32) NOT NULL,
	[order] [int] NULL,
	[enable] [bit] NOT NULL,
	[createTime] [bigint] NOT NULL,
	[deleted] [bit] NOT NULL,
	[waterMarkPath] [nvarchar](250) NULL,
	[waterMarkString] [text] NULL,
	[pageSize] [smallint] NULL,
 CONSTRAINT [PK_formTemplate] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormTitle](
	[id] [char](32) NOT NULL,
	[formTemplateId] [char](32) NOT NULL,
	[titleEn] [varchar](50) NOT NULL,
	[titleCn] [nvarchar](50) NOT NULL,
	[order] [int] NULL,
	[titleLength] [int] NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_formField] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormTitleContent](
	[formId] [char](32) NOT NULL,
	[formTitleId] [char](32) NOT NULL,
	[value] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_formFieldValue] PRIMARY KEY CLUSTERED
(
	[formId] ASC,
	[formTitleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kiln](
	[id] [char](32) NOT NULL,
	[workStationId] [char](32) NOT NULL,
	[no] [nvarchar](50) NULL,
	[rowNumber] [smallint] NOT NULL,
	[columnNumber] [smallint] NOT NULL,
	[enabled] [bit] NOT NULL,
	[kilnSensorId] [char](32) NULL,
	[productionTaskId] [char](32) NULL,
 CONSTRAINT [PK_Kiln] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KilnSensor](
	[id] [char](32) NOT NULL,
 CONSTRAINT [PK_KilnSensor] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KilnSensorInfo](
	[id] [char](32) NOT NULL,
	[kilnSensorId] [char](32) NULL,
	[type] [smallint] NOT NULL,
	[name] [nvarchar](10) NULL,
	[currentValue] [float] NULL,
	[createTime] [bigint] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_KilnSensorInfo] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KilnSensorInfoLog](
	[id] [char](32) NOT NULL,
	[kilnSensorInfoId] [char](32) NOT NULL,
	[value] [float] NULL,
	[createTime] [bigint] NOT NULL,
 CONSTRAINT [PK_KilnSensorInfoLog] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[id] [char](32) NOT NULL,
	[code] [varchar](32) NULL,
	[shortCode] [varchar](16) NULL,
	[isBase] [bit] NOT NULL,
	[isNode] [bit] NOT NULL,
	[parentId] [char](32) NULL,
	[name] [nvarchar](32) NOT NULL,
	[spec] [nvarchar](32) NULL,
	[model] [nvarchar](8) NULL,
	[materialTypeId] [char](32) NULL,
	[attribute] [smallint] NULL,
	[unit] [smallint] NULL,
	[unitWeight] [numeric](12, 4) NULL,
	[remark] [nvarchar](256) NULL,
	[creator] [char](32) NOT NULL,
	[createTime] [bigint] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialContains](
	[materialId] [char](32) NOT NULL,
	[rawMaterialId] [char](32) NOT NULL,
	[count] [numeric](12, 4) NULL,
 CONSTRAINT [PK_MaterialContains] PRIMARY KEY CLUSTERED
(
	[materialId] ASC,
	[rawMaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialForm](
	[id] [char](32) NOT NULL,
	[batchingPlantId] [char](32) NULL,
	[no] [varchar](16) NOT NULL,
	[title] [nvarchar](32) NOT NULL,
	[type] [smallint] NOT NULL,
	[price] [numeric](10, 2) NOT NULL,
	[operator2] [nvarchar](8) NULL,
	[operator] [nvarchar](8) NOT NULL,
	[remark] [nvarchar](120) NULL,
	[submited] [smallint] NOT NULL,
	[time] [bigint] NOT NULL,
	[timeRangeBegin] [bigint] NULL,
	[timeRangeEnd] [bigint] NULL,
	[createTime] [bigint] NOT NULL,
	[creator] [char](32) NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_MaterialForm] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialFormElmt](
	[id] [char](32) NOT NULL,
	[materialFormId] [char](32) NOT NULL,
	[materialPurchaseFormId] [char](32) NULL,
	[materialId] [char](32) NOT NULL,
	[storageRoomId] [char](32) NULL,
	[supplierId] [char](32) NULL,
	[price] [numeric](8, 2) NULL,
	[values] [numeric](12, 3) NOT NULL,
	[inspectedValues] [numeric](12, 3) NULL,
	[inStockValues] [numeric](12, 3) NULL,
	[status] [smallint] NOT NULL,
	[type] [smallint] NOT NULL,
 CONSTRAINT [PK_MaterialFormElmt] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialInStock](
	[storageRoomId] [char](32) NOT NULL,
	[materialId] [char](32) NOT NULL,
	[surplus] [numeric](12, 3) NOT NULL,
	[upperLimit] [numeric](12, 3) NULL,
	[lowerConstant] [numeric](12, 3) NULL,
	[lowerPercentage] [numeric](4, 2) NULL,
	[lowerType] [bit] NULL,
	[index] [int] NULL,
 CONSTRAINT [PK_MaterialInStock] PRIMARY KEY CLUSTERED
(
	[storageRoomId] ASC,
	[materialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialLog](
	[id] [char](32) NOT NULL,
	[materialId] [char](32) NOT NULL,
	[materialFormId] [char](32) NULL,
	[storageRoomId] [char](32) NOT NULL,
	[changedValues] [numeric](12, 3) NOT NULL,
	[surplus] [numeric](12, 3) NOT NULL,
	[actionType] [smallint] NOT NULL,
	[remark] [nvarchar](64) NULL,
	[createTime] [bigint] NOT NULL,
	[creator] [char](32) NOT NULL,
 CONSTRAINT [PK_MaterialLog2] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialsInTransit](
	[materialId] [char](32) NOT NULL,
	[values] [numeric](12, 3) NOT NULL,
 CONSTRAINT [PK_MaterialsInTransit] PRIMARY KEY CLUSTERED
(
	[materialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialType](
	[id] [char](32) NOT NULL,
	[name] [nvarchar](16) NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_MaterialType] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialWeighedLog](
	[materialLogId] [char](32) NOT NULL,
	[grossWeight] [numeric](12, 3) NULL,
	[tareWeight] [numeric](12, 3) NULL,
	[netWeight] [numeric](12, 3) NULL,
	[deductionRate] [numeric](4, 2) NULL,
	[deductionWeight] [numeric](12, 3) NULL,
	[supplier] [nvarchar](32) NULL,
	[plateNo] [nvarchar](8) NULL,
	[arrivedTime] [bigint] NULL,
	[leftTime] [bigint] NULL,
	[remark] [nvarchar](128) NULL,
 CONSTRAINT [PK_MaterialWeighedLog] PRIMARY KEY CLUSTERED
(
	[materialLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Module](
	[id] [char](32) NOT NULL,
	[topic] [nvarchar](50) NOT NULL,
	[sort] [smallint] NULL,
 CONSTRAINT [PK_module_1] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MouldFrameSpec](
	[id] [char](32) NOT NULL,
	[no] [nvarchar](16) NOT NULL,
	[totalNum] [int] NULL,
	[length] [int] NULL,
	[width] [int] NULL,
	[height] [int] NULL,
	[exteriorLength] [int] NULL,
	[exteriorWidth] [int] NULL,
	[exteriorHeight] [int] NULL,
	[remark] [nvarchar](128) NULL,
	[creator] [char](32) NOT NULL,
	[createTime] [bigint] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_MouldFrameSpec] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MouldFrameSpecPcType](
	[mouldFrameSpecId] [char](32) NOT NULL,
	[pcTypeId] [char](32) NOT NULL,
 CONSTRAINT [PK_MouldFrameSpecPcType] PRIMARY KEY CLUSTERED
(
	[mouldFrameSpecId] ASC,
	[pcTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pallet](
	[id] [char](32) NOT NULL,
	[palletSpecId] [char](32) NOT NULL,
	[no] [nvarchar](20) NOT NULL,
	[enabled] [bit] NOT NULL,
	[scrapped] [bit] NOT NULL,
	[createTime] [bigint] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_Pallet] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PalletSpec](
	[id] [char](32) NOT NULL,
	[initial] [nvarchar](10) NULL,
	[immovable] [bit] NOT NULL,
	[length] [int] NULL,
	[width] [int] NULL,
	[height] [int] NULL,
	[createTime] [bigint] NOT NULL,
	[delete] [bit] NOT NULL,
 CONSTRAINT [PK_PalletSpec] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partition](
	[id] [char](32) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[acreage] [int] NULL,
	[holdNum] [int] NULL,
	[color] [char](7) NULL,
	[iconTop] [int] NULL,
	[iconLeft] [int] NULL,
	[order] [int] NULL,
	[createTime] [bigint] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_partition] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartitionBooking](
	[pcEntityId] [char](32) NOT NULL,
	[partitionId] [char](32) NOT NULL,
	[partitionAreaNum] [nvarchar](32) NULL,
	[bookingTime] [bigint] NOT NULL,
	[createTime] [bigint] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_partitionBooking] PRIMARY KEY CLUSTERED
(
	[pcEntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartitionMapConfig](
	[index] [int] NOT NULL,
	[partitionId] [char](32) NULL,
	[createTime] [bigint] NOT NULL,
 CONSTRAINT [PK_partitionMapConfig] PRIMARY KEY CLUSTERED
(
	[index] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PcEntity](
	[id] [char](32) NOT NULL,
	[pcTypeId] [char](32) NULL,
	[pcTypeOverallId] [char](32) NULL,
	[batchId] [char](32) NULL,
	[partitionId] [char](32) NULL,
	[partitionAreaNum] [nvarchar](32) NULL,
	[sourcePartitionId] [char](32) NULL,
	[sourcePartitionAreaNum] [nvarchar](32) NULL,
	[floorId] [char](32) NULL,
	[productionTaskId] [char](32) NULL,
	[productionPlanId] [char](32) NULL,
	[productionIndex] [smallint] NULL,
	[pcStatusId] [char](32) NOT NULL,
	[pcNo] [nvarchar](128) NOT NULL,
	[productNo] [varchar](16) NULL,
	[land] [nvarchar](16) NULL,
	[buildingNo] [nvarchar](4) NULL,
	[unitNo] [char](32) NULL,
	[buildingLayer] [nvarchar](4) NULL,
	[layout] [char](32) NULL,
	[constructNo] [nvarchar](8) NULL,
	[deliveryTime] [bigint] NULL,
	[printingTimes] [int] NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_pcEntity] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PcFeatureBalcony](
	[pcTypeId] [char](32) NOT NULL,
	[kind] [smallint] NULL,
	[length] [varchar](20) NULL,
	[width] [varchar](20) NULL,
	[height] [varchar](20) NULL,
	[remark] [nvarchar](200) NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_Pc_Feature_Balcony] PRIMARY KEY CLUSTERED
(
	[pcTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PcFeatureExData](
	[id] [char](32) NOT NULL,
	[pcTypeOverallId] [char](32) NULL,
	[pcFeatureExFieldId] [char](32) NULL,
	[value] [nvarchar](200) NULL,
	[order] [int] NULL,

	[pcTypeId] [char](32) NULL,
    [fieldName] [nvarchar](50) NOT NULL,
    [remark] [nvarchar](50) NULL,
	[pcFieldTypeId] [char](32) NULL,
	[regEx] [nvarchar](200) NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_pcField] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PcFeatureExField](
	[id] [char](32) NOT NULL,
	[pcRootId] [char](32) NOT NULL,
	[fieldName] [nvarchar](50) NOT NULL,
	[fieldType] [smallint] NOT NULL,
	[dataType] [smallint] NOT NULL,
	[regex] [nvarchar](200) NULL,
	[isBase] [smallint] NULL,
	[remark] [nvarchar](50) NULL,
	[deleted] [bit] NOT NULL,
	[order] [int] NULL,
 CONSTRAINT [PK_pcExField] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PcFeatureExFieldOption](
	[id] [char](32) NOT NULL,
	[exFieldId] [char](32) NOT NULL,
	[value] [nvarchar](20) NULL,
 CONSTRAINT [PK_Pc_Feature_ExField_Option] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PcFeatureSlabCompositeReinforcedTruss](
	[pcTypeId] [char](32) NOT NULL,
	[length] [varchar](20) NULL,
	[width] [varchar](20) NULL,
	[totalThick] [smallint] NULL,
	[reinforcedOuterLength] [varchar](20) NULL,
	[trussHeight] [varchar](20) NULL,
	[remark] [nvarchar](200) NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_Pc_Feature_Slab_Composite_ReinforcedTruss] PRIMARY KEY CLUSTERED
(
	[pcTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PcFeatureSlabWallExternal](
	[pcTypeId] [char](32) NOT NULL,
	[kind] [smallint] NULL,
	[length] [varchar](20) NULL,
	[width] [varchar](20) NULL,
	[innerThick] [varchar](20) NULL,
	[outerThick] [varchar](20) NULL,
	[totalThick] [varchar](20) NULL,
	[reinforcedOuterLength] [varchar](20) NULL,
	[remark] [nvarchar](200) NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_Pc_Feature_Slab_Wall_External] PRIMARY KEY CLUSTERED
(
	[pcTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PcFeatureSlabWallInternal](
	[pcTypeId] [char](32) NOT NULL,
	[kind] [smallint] NULL,
	[length] [varchar](20) NULL,
	[width] [varchar](20) NULL,
	[totalThick] [varchar](20) NULL,
	[reinforcedOuterLength] [varchar](20) NULL,
	[remark] [nvarchar](200) NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_Pc_Feature_Slab_Wall_Internal] PRIMARY KEY CLUSTERED
(
	[pcTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PcFeatureStairs](
	[pcTypeId] [char](32) NOT NULL,
	[kind] [smallint] NULL,
	[totalWidth] [varchar](20) NULL,
	[stepNumber] [varchar](20) NULL,
	[stepHeight] [varchar](20) NULL,
	[stepWidth] [varchar](20) NULL,
	[topPlatformLength] [varchar](20) NULL,
	[bottomPlatformLength] [varchar](20) NULL,
	[platformThick] [varchar](20) NULL,
	[remark] [nvarchar](200) NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_Pc_Feature_Stairs] PRIMARY KEY CLUSTERED
(
	[pcTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PcLog](
	[id] [char](32) NOT NULL,
	[pcEntityId] [char](32) NULL,
	[pcStatusId] [char](32) NULL,
	[operatorId] [char](32) NULL,
	[createTime] [bigint] NOT NULL,
	[formId] [char](32) NULL,
 CONSTRAINT [PK_pcLog] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PcLogRemark](
	[pcLogId] [char](32) NOT NULL,
	[remark] [nvarchar](128) NULL,
 CONSTRAINT [PK_PcLogRemark] PRIMARY KEY CLUSTERED
(
	[pcLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PcLogTransfer](
	[pclogId] [char](32) NOT NULL,
	[targetPartitionId] [char](32) NOT NULL,
	[targetPartitionAreaNum] [nvarchar](32) NULL,
 CONSTRAINT [PK_pcEntityTransfer_1] PRIMARY KEY CLUSTERED
(
	[pclogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PcRoot](
	[id] [char](32) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[order] [int] NULL,
	[createTime] [bigint] NOT NULL,
	[type] [smallint] NOT NULL,
	[pricePerCbm] [numeric](7, 2) NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_pcRoot] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PcStatus](
	[id] [char](32) NOT NULL,
	[topic] [nvarchar](50) NOT NULL,
	[order] [int] NULL,
	[moduleId] [char](32) NULL,
 CONSTRAINT [PK_pcStatus] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PcType](
	[id] [char](32) NOT NULL,
	[projectId] [char](32) NOT NULL,
	[pcRootId] [char](32) NOT NULL,
	[pcTypeOverallId] [char](32) NULL,
	[title] [nvarchar](32) NOT NULL,
	[designNo] [nvarchar](32) NOT NULL,
	[name] [nvarchar](50) NULL,
	[constructNo] [nvarchar](8) NULL,
	[designInstitute] [nvarchar](50) NULL,
	[designer] [nvarchar](50) NULL,
	[auditor] [nvarchar](50) NULL,
	[bimFile] [nvarchar](200) NULL,
	[approvedDate] [bigint] NULL,
	[remark] [nvarchar](200) NULL,
	[order] [int] NULL,
	[dwgFileId] [char](32) NULL,
	[createTime] [bigint] NOT NULL,
	[enabled] [bit] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_pcType] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
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
-----------------------------------------
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
-----------------------------------------
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
 CONSTRAINT [PK_PcTypeEx] PRIMARY KEY CLUSTERED
(
	[pcTypeOverallId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PcTypeEx](
	[pcTypeId] [char](32) NOT NULL,
	[weight] [float] NULL,
	[concreteVolume] [float] NULL,
	[rebarWeight] [float] NULL,
	[remark] [nvarchar](200) NULL,
 CONSTRAINT [PK_PcTypeEx] PRIMARY KEY CLUSTERED
(
	[pcTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PcTypeMaterial](
	[pcTypeId] [char](32) NOT NULL,
	[materialId] [char](32) NOT NULL,
	[count] [numeric](12, 4) NULL,
 CONSTRAINT [PK_pcTypeMaterial] PRIMARY KEY CLUSTERED
(
	[pcTypeId] ASC,
	[materialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo](
	[id] [char](32) NOT NULL,
	[url] [varchar](10) NULL,
	[ext] [varchar](5) NULL,
	[imgUrl] [nvarchar](100) NULL,
	[createTime] [bigint] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_photo] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Process](
	[id] [char](32) NOT NULL,
	[index] [smallint] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[technologyId] [char](32) NOT NULL,
	[description] [nvarchar](200) NULL,
	[require] [nvarchar](100) NULL,
	[duration] [nvarchar](10) NULL,
	[dwgFileId] [char](32) NULL,
	[createTime] [bigint] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_Process] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcessData](
	[id] [char](32) NOT NULL,
	[index] [int] NOT NULL,
	[sort] [int] NOT NULL,
	[categoryId] [char](32) NOT NULL,
	[processId] [char](32) NOT NULL,
	[titleId] [char](32) NOT NULL,
	[value] [nvarchar](256) NULL,
 CONSTRAINT [PK_WorkInstruction] PRIMARY KEY CLUSTERED
(
	[id] ASC,
	[index] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcessDataCategory](
	[id] [char](32) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[order] [int] NULL,
	[createTime] [bigint] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_TransferTableCategory] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcessDataTitle](
	[id] [char](32) NOT NULL,
	[categoryId] [char](32) NOT NULL,
	[index] [int] NULL,
	[title] [nvarchar](50) NOT NULL,
	[createTime] [bigint] NOT NULL,
	[isBase] [bit] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_WorkInstructionTitle] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcessNcCode](
	[processId] [char](32) NOT NULL,
	[content] [text] NOT NULL,
	[createTime] [bigint] NOT NULL,
 CONSTRAINT [PK_ProcessNcCode] PRIMARY KEY CLUSTERED
(
	[processId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcessWorkStation](
	[processId] [char](32) NOT NULL,
	[workStationId] [char](32) NOT NULL,
 CONSTRAINT [PK_ProcessWorkStation] PRIMARY KEY CLUSTERED
(
	[processId] ASC,
	[workStationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductionLine](
	[id] [char](32) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[enabled] [bit] NOT NULL,
	[mapUrl] [nvarchar](100) NULL,
	[creator] [char](32) NOT NULL,
	[createTime] [bigint] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_ProductionLine] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductionLineConfig](
	[productionLineId] [char](32) NOT NULL,
	[capacityYear] [numeric](13, 3) NULL,
	[capacityMonth] [numeric](13, 3) NULL,
	[capacityWeek] [numeric](13, 3) NULL,
	[capacityDay] [numeric](13, 3) NULL,
	[ToleranceYear] [numeric](4, 2) NULL,
	[ToleranceMonth] [numeric](4, 2) NULL,
	[ToleranceWeek] [numeric](4, 2) NULL,
	[ToleranceDay] [numeric](4, 2) NULL,
 CONSTRAINT [PK_ProductionLineConfig] PRIMARY KEY CLUSTERED
(
	[productionLineId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductionPlan](
	[id] [char](32) NOT NULL,
	[productionTaskId] [char](32) NOT NULL,
	[batchId] [char](32) NULL,
	[mouldFrameSpecId] [char](32) NULL,
	[count] [smallint] NOT NULL,
 CONSTRAINT [PK_ProductionPlanItem] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductionTask](
	[id] [char](32) NOT NULL,
	[productionLineId] [char](32) NULL,
	[workStationId] [char](32) NULL,
	[palletSpecId] [char](32) NULL,
	[palletId] [char](32) NULL,
	[technologyId] [char](32) NULL,
	[processId] [char](32) NULL,
	[taskStatusId] [char](32) NULL,
	[productionDate] [bigint] NOT NULL,
	[index] [smallint] NOT NULL,
	[shift] [nvarchar](50) NULL,
	[workgroup] [nvarchar](100) NULL,
	[creator] [char](32) NULL,
	[createTime] [bigint] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_ProductionPlan] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductionTaskLog](
	[id] [char](32) NOT NULL,
	[palletId] [char](32) NULL,
	[workStationId] [char](32) NULL,
	[kilnId] [char](32) NULL,
	[processId] [char](32) NULL,
	[productionTaskId] [char](32) NOT NULL,
	[actionType] [int] NOT NULL,
	[createTime] [bigint] NOT NULL,
 CONSTRAINT [PK_PalletLog] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductionTaskMatch](
	[id] [char](32) NOT NULL,
	[palletSpecId] [char](32) NULL,
	[createTime] [bigint] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_ProductionTaskMatch] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductionTaskMatchItem](
	[id] [char](32) NOT NULL,
	[productionTaskMatchId] [char](32) NOT NULL,
	[mouldFrameSpecId] [char](32) NOT NULL,
	[count] [smallint] NOT NULL,
 CONSTRAINT [PK_productionTaskMatchItem] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[id] [char](32) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[shortName] [nvarchar](50) NULL,
	[projectNo] [nvarchar](16) NOT NULL,
	[company] [nvarchar](100) NULL,
	[manager] [nvarchar](50) NULL,
	[level] [int] NULL,
	[filed] [bit] NOT NULL,
	[introduction] [nvarchar](500) NULL,
	[customerId] [char](32) NULL,
	[supervisor] [nvarchar](64) NULL,
	[spending] [decimal](12, 2) NULL,
	[beginDate] [bigint] NULL,
	[createTime] [bigint] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_project] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[id] [char](32) NOT NULL,
	[name] [nvarchar](20) NULL,
	[parentId] [char](32) NULL,
	[areaCode] [char](8) NULL,
	[code] [varchar](64) NULL,
	[shortCode] [varchar](16) NULL,
	[sort] [smallint] NOT NULL,
	[enabled] [bit] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_Region_1] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequestLog](
	[id] [char](32) NOT NULL,
	[url] [varchar](50) NULL,
	[createTime] [bigint] NOT NULL,
 CONSTRAINT [PK_RequestLog] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [char](32) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[createTime] [bigint] NOT NULL,
	[type] [bit] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_role] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StorageRoom](
	[id] [char](32) NOT NULL,
	[warehouseId] [char](32) NOT NULL,
	[name] [nvarchar](8) NOT NULL,
	[storeKeeper] [nvarchar](8) NULL,
	[phone] [nvarchar](20) NULL,
	[index] [smallint] NULL,
	[enabled] [bit] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_StorageRoom] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[id] [char](32) NOT NULL,
	[name] [nvarchar](64) NOT NULL,
	[contract] [nvarchar](16) NULL,
	[tel] [nvarchar](16) NULL,
	[bank] [nvarchar](32) NULL,
	[account] [nvarchar](32) NULL,
	[remark] [nvarchar](64) NULL,
	[creator] [char](32) NOT NULL,
	[createTime] [bigint] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierMaterialType](
	[supplierId] [char](32) NOT NULL,
	[materialTypeId] [char](32) NOT NULL,
 CONSTRAINT [PK_SupplierMaterialType] PRIMARY KEY CLUSTERED
(
	[supplierId] ASC,
	[materialTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskStatus](
	[id] [char](32) NOT NULL,
	[topic] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PlanStatus] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Technology](
	[id] [char](32) NOT NULL,
	[productionLineId] [char](32) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[no] [nvarchar](50) NOT NULL,
	[author] [nvarchar](50) NULL,
	[description] [nvarchar](200) NULL,
	[designDate] [bigint] NULL,
	[checkDate] [bigint] NULL,
	[standardDate] [bigint] NULL,
	[countersignDate] [bigint] NULL,
	[auditor] [nvarchar](50) NULL,
	[createTime] [bigint] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_Technology] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TechnologyPcType](
	[id] [char](32) NOT NULL,
	[technologyId] [char](32) NOT NULL,
	[pcTypeId] [char](32) NOT NULL,
	[pcCount] [smallint] NOT NULL,
 CONSTRAINT [PK_TechnologyPcType] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [char](32) NOT NULL,
	[phone] [varchar](50) NULL,
	[email] [varchar](100) NULL,
	[employeeId] [varchar](50) NULL,
	[password] [varchar](32) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[sex] [bit] NULL,
	[birthday] [bigint] NULL,
	[departmentId] [char](32) NULL,
	[customerId] [char](32) NULL,
	[position] [nvarchar](50) NULL,
	[createTime] [bigint] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserActionLog](
	[id] [char](32) NOT NULL,
	[actionTypeId] [char](32) NULL,
	[description] [nvarchar](200) NOT NULL,
	[userId] [char](32) NULL,
	[createTime] [bigint] NOT NULL,
 CONSTRAINT [PK_activeLog] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserActionType](
	[id] [char](32) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_activeType] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[userId] [char](32) NOT NULL,
	[roleId] [char](32) NOT NULL,
 CONSTRAINT [PK_userRole] PRIMARY KEY CLUSTERED
(
	[userId] ASC,
	[roleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserToken](
	[userId] [char](32) NOT NULL,
	[type] [tinyint] NOT NULL,
	[token] [char](32) NOT NULL,
	[expires] [bigint] NOT NULL,
 CONSTRAINT [PK_userToken] PRIMARY KEY CLUSTERED
(
	[userId] ASC,
	[type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warehouse](
	[id] [char](32) NOT NULL,
	[name] [nvarchar](32) NOT NULL,
	[head] [nvarchar](8) NULL,
	[index] [smallint] NULL,
	[description] [nvarchar](64) NULL,
	[enabled] [bit] NOT NULL,
	[creator] [char](32) NOT NULL,
	[createTime] [bigint] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_Warehouse] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkStation](
	[id] [char](32) NOT NULL,
	[productionLineId] [char](32) NOT NULL,
	[elmtId] [varchar](50) NULL,
	[equipmentType] [smallint] NOT NULL,
	[name] [nvarchar](50) NULL,
	[workStationNo] [nvarchar](10) NOT NULL,
	[creator] [char](32) NOT NULL,
	[createTime] [bigint] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_WorkPlace] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkStationNormal](
	[workStationId] [char](32) NOT NULL,
	[photoelectricForward] [bit] NOT NULL,
	[photoelectricBackward] [bit] NULL,
	[motorForward] [bit] NOT NULL,
	[motorBackward] [bit] NOT NULL,
	[temperature] [varchar](50) NULL,
	[humidity] [varchar](50) NULL,
 CONSTRAINT [PK_WorkStationState] PRIMARY KEY CLUSTERED
(
	[workStationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YearlyPlan](
	[id] [char](32) NOT NULL,
	[topic] [nvarchar](32) NOT NULL,
	[planner] [nvarchar](10) NULL,
	[year] [int] NOT NULL,
	[beginMonth] [smallint] NOT NULL,
	[endMonth] [smallint] NOT NULL,
	[createTime] [bigint] NOT NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_YearlyPlan] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YearlyPlanElmt](
	[id] [char](32) NOT NULL,
	[yearlyPlanId] [char](32) NOT NULL,
	[productionLineId] [char](32) NOT NULL,
	[pcRootId] [char](32) NOT NULL,
	[month] [smallint] NOT NULL,
	[volume] [numeric](13, 3) NULL,
	[pricePerCbm] [numeric](12, 2) NULL,
 CONSTRAINT [PK_YearlyPlanElmt] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Batch] ADD  CONSTRAINT [DF__Batch__countOfUn__68487DD7]  DEFAULT ((1)) FOR [countOfUnit]
GO
ALTER TABLE [dbo].[Contract] ADD  CONSTRAINT [DF_Contract_filed]  DEFAULT ((0)) FOR [filed]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_deleted]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[DwgFile] ADD  CONSTRAINT [DF_DwgFile_deleted]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[Pallet] ADD  CONSTRAINT [DF_Pallet_scrapped]  DEFAULT ((0)) FOR [scrapped]
GO
ALTER TABLE [dbo].[PcEntity] ADD  CONSTRAINT [DF_PcEntity_printNum]  DEFAULT ((0)) FOR [printingTimes]
GO
ALTER TABLE [dbo].[PcTypeOverall] ADD  CONSTRAINT [DF_PcTypeOverall_deleted]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[ProcessData] ADD  CONSTRAINT [DF_ProcessData_sort]  DEFAULT ((0)) FOR [sort]
GO
ALTER TABLE [dbo].[ProcessDataTitle] ADD  CONSTRAINT [DF_ProcessDataTitle_isBase]  DEFAULT ((0)) FOR [isBase]
GO
ALTER TABLE [dbo].[ProductionPlan] ADD  CONSTRAINT [DF_ProductionPlanItem_number]  DEFAULT ((0)) FOR [count]
GO
ALTER TABLE [dbo].[ProductionTaskLog] ADD  CONSTRAINT [DF_ProductionTaskLog_actionType]  DEFAULT ((0)) FOR [actionType]
GO
ALTER TABLE [dbo].[Project] ADD  CONSTRAINT [DF_Project_filed]  DEFAULT ((0)) FOR [filed]
GO
ALTER TABLE [dbo].[Region] ADD  CONSTRAINT [DF_Region_sort]  DEFAULT ((0)) FOR [sort]
GO
ALTER TABLE [dbo].[Region] ADD  CONSTRAINT [DF_Region_deleted]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[Auth]  WITH CHECK ADD  CONSTRAINT [FK_Auth_Module] FOREIGN KEY([moduleId])
REFERENCES [dbo].[Module] ([id])
GO
ALTER TABLE [dbo].[Auth] CHECK CONSTRAINT [FK_Auth_Module]
GO
ALTER TABLE [dbo].[AuthRole]  WITH CHECK ADD  CONSTRAINT [FK_AuthRole_Auth] FOREIGN KEY([authId])
REFERENCES [dbo].[Auth] ([id])
GO
ALTER TABLE [dbo].[AuthRole] CHECK CONSTRAINT [FK_AuthRole_Auth]
GO
ALTER TABLE [dbo].[AuthRole]  WITH CHECK ADD  CONSTRAINT [FK_AuthRole_Role] FOREIGN KEY([roleId])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[AuthRole] CHECK CONSTRAINT [FK_AuthRole_Role]
GO
ALTER TABLE [dbo].[Batch]  WITH CHECK ADD  CONSTRAINT [FK_Batch_Contract] FOREIGN KEY([contractId])
REFERENCES [dbo].[Contract] ([id])
GO
ALTER TABLE [dbo].[Batch] CHECK CONSTRAINT [FK_Batch_Contract]
GO
ALTER TABLE [dbo].[Batch]  WITH CHECK ADD  CONSTRAINT [FK_Batch_PcType] FOREIGN KEY([pcTypeId])
REFERENCES [dbo].[PcType] ([id])
GO
ALTER TABLE [dbo].[Batch] CHECK CONSTRAINT [FK_Batch_PcType]
GO
ALTER TABLE [dbo].[BatchingPlant]  WITH CHECK ADD  CONSTRAINT [FK_BatchingPlant_Warehouse] FOREIGN KEY([warehouseId])
REFERENCES [dbo].[Warehouse] ([id])
GO
ALTER TABLE [dbo].[BatchingPlant] CHECK CONSTRAINT [FK_BatchingPlant_Warehouse]
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [FK_Contract_Project] FOREIGN KEY([projectId])
REFERENCES [dbo].[Project] ([id])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [FK_Contract_Project]
GO
ALTER TABLE [dbo].[CuringKiln]  WITH CHECK ADD  CONSTRAINT [FK_CuringKiln_WorkStation] FOREIGN KEY([workStationId])
REFERENCES [dbo].[WorkStation] ([id])
GO
ALTER TABLE [dbo].[CuringKiln] CHECK CONSTRAINT [FK_CuringKiln_WorkStation]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_City] FOREIGN KEY([cityId])
REFERENCES [dbo].[Region] ([id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_City]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_District] FOREIGN KEY([districtId])
REFERENCES [dbo].[Region] ([id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_District]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Industry] FOREIGN KEY([industry])
REFERENCES [dbo].[Dictionary] ([id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Industry]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Level] FOREIGN KEY([level])
REFERENCES [dbo].[Dictionary] ([id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Level]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Nature] FOREIGN KEY([nature])
REFERENCES [dbo].[Dictionary] ([id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Nature]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Province] FOREIGN KEY([provinceId])
REFERENCES [dbo].[Region] ([id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Province]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Scale] FOREIGN KEY([scale])
REFERENCES [dbo].[Dictionary] ([id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Scale]
GO
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
ALTER TABLE [dbo].[Dictionary]  WITH CHECK ADD  CONSTRAINT [FK_Dictionary_DictionaryType] FOREIGN KEY([typeId])
REFERENCES [dbo].[DictionaryType] ([id])
GO
ALTER TABLE [dbo].[Dictionary] CHECK CONSTRAINT [FK_Dictionary_DictionaryType]
GO
ALTER TABLE [dbo].[ExamineItem]  WITH CHECK ADD  CONSTRAINT [FK_ExamineItem_PcType] FOREIGN KEY([pcTypeId])
REFERENCES [dbo].[PcType] ([id])
GO
ALTER TABLE [dbo].[ExamineItem] CHECK CONSTRAINT [FK_ExamineItem_PcType]
GO
ALTER TABLE [dbo].[ExamineItem]  WITH CHECK ADD  CONSTRAINT [FK_ExamineItem_Process] FOREIGN KEY([processId])
REFERENCES [dbo].[Process] ([id])
GO
ALTER TABLE [dbo].[ExamineItem] CHECK CONSTRAINT [FK_ExamineItem_Process]
GO
ALTER TABLE [dbo].[ExamineItem]  WITH CHECK ADD  CONSTRAINT [FK_ExamineItem_User] FOREIGN KEY([creator])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[ExamineItem] CHECK CONSTRAINT [FK_ExamineItem_User]
GO
ALTER TABLE [dbo].[ExamineRecord]  WITH CHECK ADD  CONSTRAINT [FK_ExamineRecord_ExamineItem] FOREIGN KEY([examineItemId])
REFERENCES [dbo].[ExamineItem] ([id])
GO
ALTER TABLE [dbo].[ExamineRecord] CHECK CONSTRAINT [FK_ExamineRecord_ExamineItem]
GO
ALTER TABLE [dbo].[ExamineRecord]  WITH CHECK ADD  CONSTRAINT [FK_ExamineRecord_Kiln] FOREIGN KEY([kilnId])
REFERENCES [dbo].[Kiln] ([id])
GO
ALTER TABLE [dbo].[ExamineRecord] CHECK CONSTRAINT [FK_ExamineRecord_Kiln]
GO
ALTER TABLE [dbo].[ExamineRecord]  WITH CHECK ADD  CONSTRAINT [FK_ExamineRecord_PcEntity] FOREIGN KEY([pcEntityId])
REFERENCES [dbo].[PcEntity] ([id])
GO
ALTER TABLE [dbo].[ExamineRecord] CHECK CONSTRAINT [FK_ExamineRecord_PcEntity]
GO
ALTER TABLE [dbo].[ExamineRecord]  WITH CHECK ADD  CONSTRAINT [FK_ExamineRecord_Process] FOREIGN KEY([processId])
REFERENCES [dbo].[Process] ([id])
GO
ALTER TABLE [dbo].[ExamineRecord] CHECK CONSTRAINT [FK_ExamineRecord_Process]
GO
ALTER TABLE [dbo].[ExamineRecord]  WITH CHECK ADD  CONSTRAINT [FK_ExamineRecord_User] FOREIGN KEY([creator])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[ExamineRecord] CHECK CONSTRAINT [FK_ExamineRecord_User]
GO
ALTER TABLE [dbo].[ExamineRecord]  WITH CHECK ADD  CONSTRAINT [FK_ExamineRecord_WorkStation] FOREIGN KEY([workStationId])
REFERENCES [dbo].[WorkStation] ([id])
GO
ALTER TABLE [dbo].[ExamineRecord] CHECK CONSTRAINT [FK_ExamineRecord_WorkStation]
GO
ALTER TABLE [dbo].[ExamineRecordPhoto]  WITH CHECK ADD  CONSTRAINT [FK_ExamineRecordPhoto_ExamineRecord] FOREIGN KEY([examineRecordId])
REFERENCES [dbo].[ExamineRecord] ([id])
GO
ALTER TABLE [dbo].[ExamineRecordPhoto] CHECK CONSTRAINT [FK_ExamineRecordPhoto_ExamineRecord]
GO
ALTER TABLE [dbo].[ExamineRecordPhoto]  WITH CHECK ADD  CONSTRAINT [FK_ExamineRecordPhoto_Photo] FOREIGN KEY([photoId])
REFERENCES [dbo].[Photo] ([id])
GO
ALTER TABLE [dbo].[ExamineRecordPhoto] CHECK CONSTRAINT [FK_ExamineRecordPhoto_Photo]
GO
ALTER TABLE [dbo].[Floor]  WITH CHECK ADD  CONSTRAINT [FK_Floor_Contract] FOREIGN KEY([contractId])
REFERENCES [dbo].[Contract] ([id])
GO
ALTER TABLE [dbo].[Floor] CHECK CONSTRAINT [FK_Floor_Contract]
GO
ALTER TABLE [dbo].[Floor]  WITH CHECK ADD  CONSTRAINT [FK_Floor_User] FOREIGN KEY([creator])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Floor] CHECK CONSTRAINT [FK_Floor_User]
GO
ALTER TABLE [dbo].[Form]  WITH CHECK ADD  CONSTRAINT [FK_Form_BatchingPlant] FOREIGN KEY([batchingPlantId])
REFERENCES [dbo].[BatchingPlant] ([id])
GO
ALTER TABLE [dbo].[Form] CHECK CONSTRAINT [FK_Form_BatchingPlant]
GO
ALTER TABLE [dbo].[Form]  WITH CHECK ADD  CONSTRAINT [FK_Form_FormCategory] FOREIGN KEY([formCategoryId])
REFERENCES [dbo].[FormCategory] ([id])
GO
ALTER TABLE [dbo].[Form] CHECK CONSTRAINT [FK_Form_FormCategory]
GO
ALTER TABLE [dbo].[Form]  WITH CHECK ADD  CONSTRAINT [FK_Form_FormTemplate] FOREIGN KEY([formTemplateId])
REFERENCES [dbo].[FormTemplate] ([id])
GO
ALTER TABLE [dbo].[Form] CHECK CONSTRAINT [FK_Form_FormTemplate]
GO
ALTER TABLE [dbo].[Form]  WITH CHECK ADD  CONSTRAINT [FK_Form_User] FOREIGN KEY([creator])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Form] CHECK CONSTRAINT [FK_Form_User]
GO
ALTER TABLE [dbo].[FormPcEntity]  WITH CHECK ADD  CONSTRAINT [FK_FormPcEntity_Form] FOREIGN KEY([formId])
REFERENCES [dbo].[Form] ([id])
GO
ALTER TABLE [dbo].[FormPcEntity] CHECK CONSTRAINT [FK_FormPcEntity_Form]
GO
ALTER TABLE [dbo].[FormPcEntity]  WITH CHECK ADD  CONSTRAINT [FK_FormPcEntity_PcEntity] FOREIGN KEY([pcEntityId])
REFERENCES [dbo].[PcEntity] ([id])
GO
ALTER TABLE [dbo].[FormPcEntity] CHECK CONSTRAINT [FK_FormPcEntity_PcEntity]
GO
ALTER TABLE [dbo].[FormTemplate]  WITH CHECK ADD  CONSTRAINT [FK_FormTemplate_FormCategory] FOREIGN KEY([formCategoryId])
REFERENCES [dbo].[FormCategory] ([id])
GO
ALTER TABLE [dbo].[FormTemplate] CHECK CONSTRAINT [FK_FormTemplate_FormCategory]
GO
ALTER TABLE [dbo].[FormTitle]  WITH CHECK ADD  CONSTRAINT [FK_FormTitle_FormTemplate] FOREIGN KEY([formTemplateId])
REFERENCES [dbo].[FormTemplate] ([id])
GO
ALTER TABLE [dbo].[FormTitle] CHECK CONSTRAINT [FK_FormTitle_FormTemplate]
GO
ALTER TABLE [dbo].[FormTitleContent]  WITH CHECK ADD  CONSTRAINT [FK_FormTitleContent_Form] FOREIGN KEY([formId])
REFERENCES [dbo].[Form] ([id])
GO
ALTER TABLE [dbo].[FormTitleContent] CHECK CONSTRAINT [FK_FormTitleContent_Form]
GO
ALTER TABLE [dbo].[FormTitleContent]  WITH CHECK ADD  CONSTRAINT [FK_FormTitleContent_FormTitle] FOREIGN KEY([formTitleId])
REFERENCES [dbo].[FormTitle] ([id])
GO
ALTER TABLE [dbo].[FormTitleContent] CHECK CONSTRAINT [FK_FormTitleContent_FormTitle]
GO
ALTER TABLE [dbo].[Kiln]  WITH CHECK ADD  CONSTRAINT [FK_Kiln_CuringKiln] FOREIGN KEY([workStationId])
REFERENCES [dbo].[CuringKiln] ([workStationId])
GO
ALTER TABLE [dbo].[Kiln] CHECK CONSTRAINT [FK_Kiln_CuringKiln]
GO
ALTER TABLE [dbo].[Kiln]  WITH CHECK ADD  CONSTRAINT [FK_Kiln_KilnSensor] FOREIGN KEY([kilnSensorId])
REFERENCES [dbo].[KilnSensor] ([id])
GO
ALTER TABLE [dbo].[Kiln] CHECK CONSTRAINT [FK_Kiln_KilnSensor]
GO
ALTER TABLE [dbo].[Kiln]  WITH CHECK ADD  CONSTRAINT [FK_Kiln_ProductionTask] FOREIGN KEY([productionTaskId])
REFERENCES [dbo].[ProductionTask] ([id])
GO
ALTER TABLE [dbo].[Kiln] CHECK CONSTRAINT [FK_Kiln_ProductionTask]
GO
ALTER TABLE [dbo].[KilnSensorInfo]  WITH CHECK ADD  CONSTRAINT [FK_KilnSensorInfo_KilnSensor] FOREIGN KEY([kilnSensorId])
REFERENCES [dbo].[KilnSensor] ([id])
GO
ALTER TABLE [dbo].[KilnSensorInfo] CHECK CONSTRAINT [FK_KilnSensorInfo_KilnSensor]
GO
ALTER TABLE [dbo].[KilnSensorInfoLog]  WITH CHECK ADD  CONSTRAINT [FK_KilnSensorInfoLog_KilnSensorInfo] FOREIGN KEY([kilnSensorInfoId])
REFERENCES [dbo].[KilnSensorInfo] ([id])
GO
ALTER TABLE [dbo].[KilnSensorInfoLog] CHECK CONSTRAINT [FK_KilnSensorInfoLog_KilnSensorInfo]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_MaterialType] FOREIGN KEY([materialTypeId])
REFERENCES [dbo].[MaterialType] ([id])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_MaterialType]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Parent_Child] FOREIGN KEY([parentId])
REFERENCES [dbo].[Material] ([id])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Parent_Child]
GO
ALTER TABLE [dbo].[MaterialContains]  WITH CHECK ADD  CONSTRAINT [FK_MaterialContains_Element] FOREIGN KEY([rawMaterialId])
REFERENCES [dbo].[Material] ([id])
GO
ALTER TABLE [dbo].[MaterialContains] CHECK CONSTRAINT [FK_MaterialContains_Element]
GO
ALTER TABLE [dbo].[MaterialContains]  WITH CHECK ADD  CONSTRAINT [FK_MaterialContains_Material] FOREIGN KEY([materialId])
REFERENCES [dbo].[Material] ([id])
GO
ALTER TABLE [dbo].[MaterialContains] CHECK CONSTRAINT [FK_MaterialContains_Material]
GO
ALTER TABLE [dbo].[MaterialForm]  WITH CHECK ADD  CONSTRAINT [FK_MaterialForm_BatchingPlant] FOREIGN KEY([batchingPlantId])
REFERENCES [dbo].[BatchingPlant] ([id])
GO
ALTER TABLE [dbo].[MaterialForm] CHECK CONSTRAINT [FK_MaterialForm_BatchingPlant]
GO
ALTER TABLE [dbo].[MaterialForm]  WITH CHECK ADD  CONSTRAINT [FK_MaterialForm_User] FOREIGN KEY([creator])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[MaterialForm] CHECK CONSTRAINT [FK_MaterialForm_User]
GO
ALTER TABLE [dbo].[MaterialFormElmt]  WITH CHECK ADD  CONSTRAINT [FK_MaterialFormElmt_Material] FOREIGN KEY([materialId])
REFERENCES [dbo].[Material] ([id])
GO
ALTER TABLE [dbo].[MaterialFormElmt] CHECK CONSTRAINT [FK_MaterialFormElmt_Material]
GO
ALTER TABLE [dbo].[MaterialFormElmt]  WITH CHECK ADD  CONSTRAINT [FK_MaterialFormElmt_MaterialForm] FOREIGN KEY([materialFormId])
REFERENCES [dbo].[MaterialForm] ([id])
GO
ALTER TABLE [dbo].[MaterialFormElmt] CHECK CONSTRAINT [FK_MaterialFormElmt_MaterialForm]
GO
ALTER TABLE [dbo].[MaterialFormElmt]  WITH CHECK ADD  CONSTRAINT [FK_MaterialFormElmt_MaterialPurchaseForm] FOREIGN KEY([materialPurchaseFormId])
REFERENCES [dbo].[MaterialForm] ([id])
GO
ALTER TABLE [dbo].[MaterialFormElmt] CHECK CONSTRAINT [FK_MaterialFormElmt_MaterialPurchaseForm]
GO
ALTER TABLE [dbo].[MaterialFormElmt]  WITH CHECK ADD  CONSTRAINT [FK_MaterialFormElmt_StorageRoom] FOREIGN KEY([storageRoomId])
REFERENCES [dbo].[StorageRoom] ([id])
GO
ALTER TABLE [dbo].[MaterialFormElmt] CHECK CONSTRAINT [FK_MaterialFormElmt_StorageRoom]
GO
ALTER TABLE [dbo].[MaterialFormElmt]  WITH CHECK ADD  CONSTRAINT [FK_MaterialFormElmt_Supplier] FOREIGN KEY([supplierId])
REFERENCES [dbo].[Supplier] ([id])
GO
ALTER TABLE [dbo].[MaterialFormElmt] CHECK CONSTRAINT [FK_MaterialFormElmt_Supplier]
GO
ALTER TABLE [dbo].[MaterialInStock]  WITH CHECK ADD  CONSTRAINT [FK_MaterialInStock_Material] FOREIGN KEY([materialId])
REFERENCES [dbo].[Material] ([id])
GO
ALTER TABLE [dbo].[MaterialInStock] CHECK CONSTRAINT [FK_MaterialInStock_Material]
GO
ALTER TABLE [dbo].[MaterialInStock]  WITH CHECK ADD  CONSTRAINT [FK_MaterialInStock_StorageRoom] FOREIGN KEY([storageRoomId])
REFERENCES [dbo].[StorageRoom] ([id])
GO
ALTER TABLE [dbo].[MaterialInStock] CHECK CONSTRAINT [FK_MaterialInStock_StorageRoom]
GO
ALTER TABLE [dbo].[MaterialLog]  WITH CHECK ADD  CONSTRAINT [FK_MaterialLog_Material] FOREIGN KEY([materialId])
REFERENCES [dbo].[Material] ([id])
GO
ALTER TABLE [dbo].[MaterialLog] CHECK CONSTRAINT [FK_MaterialLog_Material]
GO
ALTER TABLE [dbo].[MaterialLog]  WITH CHECK ADD  CONSTRAINT [FK_MaterialLog_MaterialForm] FOREIGN KEY([materialFormId])
REFERENCES [dbo].[MaterialForm] ([id])
GO
ALTER TABLE [dbo].[MaterialLog] CHECK CONSTRAINT [FK_MaterialLog_MaterialForm]
GO
ALTER TABLE [dbo].[MaterialLog]  WITH CHECK ADD  CONSTRAINT [FK_MaterialLog_StorageRoom] FOREIGN KEY([storageRoomId])
REFERENCES [dbo].[StorageRoom] ([id])
GO
ALTER TABLE [dbo].[MaterialLog] CHECK CONSTRAINT [FK_MaterialLog_StorageRoom]
GO
ALTER TABLE [dbo].[MaterialLog]  WITH CHECK ADD  CONSTRAINT [FK_MaterialLog_User] FOREIGN KEY([creator])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[MaterialLog] CHECK CONSTRAINT [FK_MaterialLog_User]
GO
ALTER TABLE [dbo].[MaterialsInTransit]  WITH CHECK ADD  CONSTRAINT [FK_MaterialsInTransit_Material] FOREIGN KEY([materialId])
REFERENCES [dbo].[Material] ([id])
GO
ALTER TABLE [dbo].[MaterialsInTransit] CHECK CONSTRAINT [FK_MaterialsInTransit_Material]
GO
ALTER TABLE [dbo].[MaterialWeighedLog]  WITH CHECK ADD  CONSTRAINT [FK_MaterialWeighedLog_MaterialLog] FOREIGN KEY([materialLogId])
REFERENCES [dbo].[MaterialLog] ([id])
GO
ALTER TABLE [dbo].[MaterialWeighedLog] CHECK CONSTRAINT [FK_MaterialWeighedLog_MaterialLog]
GO
ALTER TABLE [dbo].[MouldFrameSpecPcType]  WITH CHECK ADD  CONSTRAINT [FK_MouldFrameSpecPcType_MouldFrameSpec] FOREIGN KEY([mouldFrameSpecId])
REFERENCES [dbo].[MouldFrameSpec] ([id])
GO
ALTER TABLE [dbo].[MouldFrameSpecPcType] CHECK CONSTRAINT [FK_MouldFrameSpecPcType_MouldFrameSpec]
GO
ALTER TABLE [dbo].[MouldFrameSpecPcType]  WITH CHECK ADD  CONSTRAINT [FK_MouldFrameSpecPcType_PcType] FOREIGN KEY([pcTypeId])
REFERENCES [dbo].[PcType] ([id])
GO
ALTER TABLE [dbo].[MouldFrameSpecPcType] CHECK CONSTRAINT [FK_MouldFrameSpecPcType_PcType]
GO
ALTER TABLE [dbo].[Pallet]  WITH CHECK ADD  CONSTRAINT [FK_Pallet_PalletSpec] FOREIGN KEY([palletSpecId])
REFERENCES [dbo].[PalletSpec] ([id])
GO
ALTER TABLE [dbo].[Pallet] CHECK CONSTRAINT [FK_Pallet_PalletSpec]
GO
ALTER TABLE [dbo].[PartitionBooking]  WITH CHECK ADD  CONSTRAINT [FK_PartitionBooking_Partition] FOREIGN KEY([partitionId])
REFERENCES [dbo].[Partition] ([id])
GO
ALTER TABLE [dbo].[PartitionBooking] CHECK CONSTRAINT [FK_PartitionBooking_Partition]
GO
ALTER TABLE [dbo].[PartitionBooking]  WITH CHECK ADD  CONSTRAINT [FK_PartitionBooking_PcEntity] FOREIGN KEY([pcEntityId])
REFERENCES [dbo].[PcEntity] ([id])
GO
ALTER TABLE [dbo].[PartitionBooking] CHECK CONSTRAINT [FK_PartitionBooking_PcEntity]
GO
ALTER TABLE [dbo].[PartitionMapConfig]  WITH CHECK ADD  CONSTRAINT [FK_PartitionMapConfig_Partition] FOREIGN KEY([partitionId])
REFERENCES [dbo].[Partition] ([id])
GO
ALTER TABLE [dbo].[PartitionMapConfig] CHECK CONSTRAINT [FK_PartitionMapConfig_Partition]
GO
ALTER TABLE [dbo].[PcEntity]  WITH CHECK ADD  CONSTRAINT [FK_PcEntity_Batch] FOREIGN KEY([batchId])
REFERENCES [dbo].[Batch] ([id])
GO
ALTER TABLE [dbo].[PcEntity] CHECK CONSTRAINT [FK_PcEntity_Batch]
GO
ALTER TABLE [dbo].[PcEntity]  WITH CHECK ADD  CONSTRAINT [FK_PcEntity_Floor] FOREIGN KEY([floorId])
REFERENCES [dbo].[Floor] ([id])
GO
ALTER TABLE [dbo].[PcEntity] CHECK CONSTRAINT [FK_PcEntity_Floor]
GO
ALTER TABLE [dbo].[PcEntity]  WITH CHECK ADD  CONSTRAINT [FK_PcEntity_Layout] FOREIGN KEY([layout])
REFERENCES [dbo].[Dictionary] ([id])
GO
ALTER TABLE [dbo].[PcEntity] CHECK CONSTRAINT [FK_PcEntity_Layout]
GO
ALTER TABLE [dbo].[PcEntity]  WITH CHECK ADD  CONSTRAINT [FK_PcEntity_Partition] FOREIGN KEY([partitionId])
REFERENCES [dbo].[Partition] ([id])
GO
ALTER TABLE [dbo].[PcEntity] CHECK CONSTRAINT [FK_PcEntity_Partition]
GO
ALTER TABLE [dbo].[PcEntity]  WITH CHECK ADD  CONSTRAINT [FK_PcEntity_PcStatus] FOREIGN KEY([pcStatusId])
REFERENCES [dbo].[PcStatus] ([id])
GO
ALTER TABLE [dbo].[PcEntity] CHECK CONSTRAINT [FK_PcEntity_PcStatus]
GO
ALTER TABLE [dbo].[PcEntity]  WITH CHECK ADD  CONSTRAINT [FK_PcEntity_PcType] FOREIGN KEY([pcTypeId])
REFERENCES [dbo].[PcType] ([id])
GO
ALTER TABLE [dbo].[PcEntity] CHECK CONSTRAINT [FK_PcEntity_PcType]
GO
ALTER TABLE [dbo].[PcEntity]  WITH CHECK ADD  CONSTRAINT [FK_PcEntity_PcTypeOverall] FOREIGN KEY([pcTypeOverallId])
REFERENCES [dbo].[PcTypeOverall] ([id])
GO
ALTER TABLE [dbo].[PcEntity] CHECK CONSTRAINT [FK_PcEntity_PcTypeOverall]
GO
ALTER TABLE [dbo].[PcEntity]  WITH CHECK ADD  CONSTRAINT [FK_PcEntity_ProductionPlan] FOREIGN KEY([productionPlanId])
REFERENCES [dbo].[ProductionPlan] ([id])
GO
ALTER TABLE [dbo].[PcEntity] CHECK CONSTRAINT [FK_PcEntity_ProductionPlan]
GO
ALTER TABLE [dbo].[PcEntity]  WITH CHECK ADD  CONSTRAINT [FK_PcEntity_ProductionTask] FOREIGN KEY([productionTaskId])
REFERENCES [dbo].[ProductionTask] ([id])
GO
ALTER TABLE [dbo].[PcEntity] CHECK CONSTRAINT [FK_PcEntity_ProductionTask]
GO
ALTER TABLE [dbo].[PcEntity]  WITH CHECK ADD  CONSTRAINT [FK_PcEntity_SourcePartition] FOREIGN KEY([sourcePartitionId])
REFERENCES [dbo].[Partition] ([id])
GO
ALTER TABLE [dbo].[PcEntity] CHECK CONSTRAINT [FK_PcEntity_SourcePartition]
GO
ALTER TABLE [dbo].[PcEntity]  WITH CHECK ADD  CONSTRAINT [FK_PcEntity_UnitNo] FOREIGN KEY([unitNo])
REFERENCES [dbo].[Dictionary] ([id])
GO
ALTER TABLE [dbo].[PcEntity] CHECK CONSTRAINT [FK_PcEntity_UnitNo]
GO
ALTER TABLE [dbo].[PcFeatureExData]  WITH CHECK ADD  CONSTRAINT [FK_PcFeatureExData_PcFeatureExField] FOREIGN KEY([pcFeatureExFieldId])
REFERENCES [dbo].[PcFeatureExField] ([id])
GO
ALTER TABLE [dbo].[PcFeatureExData] CHECK CONSTRAINT [FK_PcFeatureExData_PcFeatureExField]
GO
ALTER TABLE [dbo].[PcFeatureExData]  WITH CHECK ADD  CONSTRAINT [FK_PcFeatureExData_PcTypeOverall] FOREIGN KEY([pcTypeOverallId])
REFERENCES [dbo].[PcTypeOverall] ([id])
GO
ALTER TABLE [dbo].[PcFeatureExData] CHECK CONSTRAINT [FK_PcFeatureExData_PcTypeOverall]
GO
ALTER TABLE [dbo].[PcFeatureExField]  WITH CHECK ADD  CONSTRAINT [FK_PcFeatureExField_PcRoot] FOREIGN KEY([pcRootId])
REFERENCES [dbo].[PcRoot] ([id])
GO
ALTER TABLE [dbo].[PcFeatureExField] CHECK CONSTRAINT [FK_PcFeatureExField_PcRoot]
GO
ALTER TABLE [dbo].[PcFeatureBalcony]  WITH CHECK ADD  CONSTRAINT [FK_Pc_Feature_Balcony_PcType] FOREIGN KEY([pcTypeId])
REFERENCES [dbo].[PcType] ([id])
GO
ALTER TABLE [dbo].[PcFeatureBalcony] CHECK CONSTRAINT [FK_Pc_Feature_Balcony_PcType]
GO
ALTER TABLE [dbo].[PcFeatureExData]  WITH CHECK ADD  CONSTRAINT [FK_PcField_PcFieldType] FOREIGN KEY([pcFieldTypeId])
REFERENCES [dbo].[PcFeatureExField] ([id])
GO
ALTER TABLE [dbo].[PcFeatureExData] CHECK CONSTRAINT [FK_PcField_PcFieldType]
GO
ALTER TABLE [dbo].[PcFeatureExData]  WITH CHECK ADD  CONSTRAINT [FK_PcField_PcType] FOREIGN KEY([pcTypeId])
REFERENCES [dbo].[PcType] ([id])
GO
ALTER TABLE [dbo].[PcFeatureExData] CHECK CONSTRAINT [FK_PcField_PcType]
GO
ALTER TABLE [dbo].[PcFeatureExFieldOption]  WITH CHECK ADD  CONSTRAINT [FK_Pc_Feature_ExField_Option_Pc_Feature_ExField] FOREIGN KEY([exFieldId])
REFERENCES [dbo].[PcFeatureExField] ([id])
GO
ALTER TABLE [dbo].[PcFeatureExFieldOption] CHECK CONSTRAINT [FK_Pc_Feature_ExField_Option_Pc_Feature_ExField]
GO
ALTER TABLE [dbo].[PcFeatureSlabCompositeReinforcedTruss]  WITH CHECK ADD  CONSTRAINT [FK_Pc_Feature_Slab_Composite_ReinforcedTruss_PcType] FOREIGN KEY([pcTypeId])
REFERENCES [dbo].[PcType] ([id])
GO
ALTER TABLE [dbo].[PcFeatureSlabCompositeReinforcedTruss] CHECK CONSTRAINT [FK_Pc_Feature_Slab_Composite_ReinforcedTruss_PcType]
GO
ALTER TABLE [dbo].[PcFeatureSlabWallExternal]  WITH CHECK ADD  CONSTRAINT [FK_Pc_Feature_Slab_Wall_External_PcType] FOREIGN KEY([pcTypeId])
REFERENCES [dbo].[PcType] ([id])
GO
ALTER TABLE [dbo].[PcFeatureSlabWallExternal] CHECK CONSTRAINT [FK_Pc_Feature_Slab_Wall_External_PcType]
GO
ALTER TABLE [dbo].[PcFeatureSlabWallInternal]  WITH CHECK ADD  CONSTRAINT [FK_Pc_Feature_Slab_Wall_Internal_PcType] FOREIGN KEY([pcTypeId])
REFERENCES [dbo].[PcType] ([id])
GO
ALTER TABLE [dbo].[PcFeatureSlabWallInternal] CHECK CONSTRAINT [FK_Pc_Feature_Slab_Wall_Internal_PcType]
GO
ALTER TABLE [dbo].[PcFeatureStairs]  WITH CHECK ADD  CONSTRAINT [FK_Pc_Feature_Stairs_PcType] FOREIGN KEY([pcTypeId])
REFERENCES [dbo].[PcType] ([id])
GO
ALTER TABLE [dbo].[PcFeatureStairs] CHECK CONSTRAINT [FK_Pc_Feature_Stairs_PcType]
GO
ALTER TABLE [dbo].[PcLog]  WITH CHECK ADD  CONSTRAINT [FK_PcLog_Form] FOREIGN KEY([formId])
REFERENCES [dbo].[Form] ([id])
GO
ALTER TABLE [dbo].[PcLog] CHECK CONSTRAINT [FK_PcLog_Form]
GO
ALTER TABLE [dbo].[PcLog]  WITH CHECK ADD  CONSTRAINT [FK_PcLog_PcEntity] FOREIGN KEY([pcEntityId])
REFERENCES [dbo].[PcEntity] ([id])
GO
ALTER TABLE [dbo].[PcLog] CHECK CONSTRAINT [FK_PcLog_PcEntity]
GO
ALTER TABLE [dbo].[PcLog]  WITH CHECK ADD  CONSTRAINT [FK_PcLog_PcStatus] FOREIGN KEY([pcStatusId])
REFERENCES [dbo].[PcStatus] ([id])
GO
ALTER TABLE [dbo].[PcLog] CHECK CONSTRAINT [FK_PcLog_PcStatus]
GO
ALTER TABLE [dbo].[PcLog]  WITH CHECK ADD  CONSTRAINT [FK_PcLog_User] FOREIGN KEY([operatorId])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[PcLog] CHECK CONSTRAINT [FK_PcLog_User]
GO
ALTER TABLE [dbo].[PcLogRemark]  WITH CHECK ADD  CONSTRAINT [FK_PcLogRemark_PcLog] FOREIGN KEY([pcLogId])
REFERENCES [dbo].[PcLog] ([id])
GO
ALTER TABLE [dbo].[PcLogRemark] CHECK CONSTRAINT [FK_PcLogRemark_PcLog]
GO
ALTER TABLE [dbo].[PcLogTransfer]  WITH CHECK ADD  CONSTRAINT [FK_PcLogTransfer_Partition] FOREIGN KEY([targetPartitionId])
REFERENCES [dbo].[Partition] ([id])
GO
ALTER TABLE [dbo].[PcLogTransfer] CHECK CONSTRAINT [FK_PcLogTransfer_Partition]
GO
ALTER TABLE [dbo].[PcLogTransfer]  WITH CHECK ADD  CONSTRAINT [FK_PcLogTransfer_PcLog] FOREIGN KEY([pclogId])
REFERENCES [dbo].[PcLog] ([id])
GO
ALTER TABLE [dbo].[PcLogTransfer] CHECK CONSTRAINT [FK_PcLogTransfer_PcLog]
GO
ALTER TABLE [dbo].[PcType]  WITH CHECK ADD  CONSTRAINT [FK_PcType_DwgFile] FOREIGN KEY([dwgFileId])
REFERENCES [dbo].[DwgFile] ([id])
GO
ALTER TABLE [dbo].[PcType] CHECK CONSTRAINT [FK_PcType_DwgFile]
GO
ALTER TABLE [dbo].[PcType]  WITH CHECK ADD  CONSTRAINT [FK_PcType_PcRoot] FOREIGN KEY([pcRootId])
REFERENCES [dbo].[PcRoot] ([id])
GO
ALTER TABLE [dbo].[PcType] CHECK CONSTRAINT [FK_PcType_PcRoot]
GO
ALTER TABLE [dbo].[PcType]  WITH CHECK ADD  CONSTRAINT [FK_PcType_PcTypeOverall] FOREIGN KEY([pcTypeOverallId])
REFERENCES [dbo].[PcTypeOverall] ([id])
GO
ALTER TABLE [dbo].[PcType] CHECK CONSTRAINT [FK_PcType_PcTypeOverall]
GO
ALTER TABLE [dbo].[PcType]  WITH CHECK ADD  CONSTRAINT [FK_PcType_Project] FOREIGN KEY([projectId])
REFERENCES [dbo].[Project] ([id])
GO
ALTER TABLE [dbo].[PcType] CHECK CONSTRAINT [FK_PcType_Project]
GO
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
ALTER TABLE [dbo].[PcTypeShape]  WITH CHECK ADD  CONSTRAINT [FK_PcTypeShape_PcTypeOverall] FOREIGN KEY([pcTypeOverallId])
REFERENCES [dbo].[PcTypeOverall] ([id])
GO
ALTER TABLE [dbo].[PcTypeShape] CHECK CONSTRAINT [FK_PcTypeShape_PcTypeOverall]
GO
ALTER TABLE [dbo].[PcTypeEx]  WITH CHECK ADD  CONSTRAINT [FK_PcTypeEx_PcType] FOREIGN KEY([pcTypeId])
REFERENCES [dbo].[PcType] ([id])
GO
ALTER TABLE [dbo].[PcTypeEx] CHECK CONSTRAINT [FK_PcTypeEx_PcType]
GO
ALTER TABLE [dbo].[PcTypeMaterial]  WITH CHECK ADD  CONSTRAINT [FK_PcTypeMaterial_Material] FOREIGN KEY([materialId])
REFERENCES [dbo].[Material] ([id])
GO
ALTER TABLE [dbo].[PcTypeMaterial] CHECK CONSTRAINT [FK_PcTypeMaterial_Material]
GO
ALTER TABLE [dbo].[PcTypeMaterial]  WITH CHECK ADD  CONSTRAINT [FK_PcTypeMaterial_PcType] FOREIGN KEY([pcTypeId])
REFERENCES [dbo].[PcType] ([id])
GO
ALTER TABLE [dbo].[PcTypeMaterial] CHECK CONSTRAINT [FK_PcTypeMaterial_PcType]
GO
ALTER TABLE [dbo].[Process]  WITH CHECK ADD  CONSTRAINT [FK_Process_DwgFile] FOREIGN KEY([dwgFileId])
REFERENCES [dbo].[DwgFile] ([id])
GO
ALTER TABLE [dbo].[Process] CHECK CONSTRAINT [FK_Process_DwgFile]
GO
ALTER TABLE [dbo].[Process]  WITH CHECK ADD  CONSTRAINT [FK_Process_Technology] FOREIGN KEY([technologyId])
REFERENCES [dbo].[Technology] ([id])
GO
ALTER TABLE [dbo].[Process] CHECK CONSTRAINT [FK_Process_Technology]
GO
ALTER TABLE [dbo].[ProcessData]  WITH CHECK ADD  CONSTRAINT [FK_ProcessData_Process] FOREIGN KEY([processId])
REFERENCES [dbo].[Process] ([id])
GO
ALTER TABLE [dbo].[ProcessData] CHECK CONSTRAINT [FK_ProcessData_Process]
GO
ALTER TABLE [dbo].[ProcessData]  WITH CHECK ADD  CONSTRAINT [FK_ProcessData_ProcessDataCategory] FOREIGN KEY([categoryId])
REFERENCES [dbo].[ProcessDataCategory] ([id])
GO
ALTER TABLE [dbo].[ProcessData] CHECK CONSTRAINT [FK_ProcessData_ProcessDataCategory]
GO
ALTER TABLE [dbo].[ProcessData]  WITH CHECK ADD  CONSTRAINT [FK_ProcessData_ProcessDataTitle] FOREIGN KEY([titleId])
REFERENCES [dbo].[ProcessDataTitle] ([id])
GO
ALTER TABLE [dbo].[ProcessData] CHECK CONSTRAINT [FK_ProcessData_ProcessDataTitle]
GO
ALTER TABLE [dbo].[ProcessDataTitle]  WITH CHECK ADD  CONSTRAINT [FK_ProcessDataTitle_ProcessDataCategory] FOREIGN KEY([categoryId])
REFERENCES [dbo].[ProcessDataCategory] ([id])
GO
ALTER TABLE [dbo].[ProcessDataTitle] CHECK CONSTRAINT [FK_ProcessDataTitle_ProcessDataCategory]
GO
ALTER TABLE [dbo].[ProcessNcCode]  WITH CHECK ADD  CONSTRAINT [FK_ProcessNcCode_Process] FOREIGN KEY([processId])
REFERENCES [dbo].[Process] ([id])
GO
ALTER TABLE [dbo].[ProcessNcCode] CHECK CONSTRAINT [FK_ProcessNcCode_Process]
GO
ALTER TABLE [dbo].[ProcessWorkStation]  WITH CHECK ADD  CONSTRAINT [FK_ProcessWorkStation_Process] FOREIGN KEY([processId])
REFERENCES [dbo].[Process] ([id])
GO
ALTER TABLE [dbo].[ProcessWorkStation] CHECK CONSTRAINT [FK_ProcessWorkStation_Process]
GO
ALTER TABLE [dbo].[ProcessWorkStation]  WITH CHECK ADD  CONSTRAINT [FK_ProcessWorkStation_WorkStation] FOREIGN KEY([workStationId])
REFERENCES [dbo].[WorkStation] ([id])
GO
ALTER TABLE [dbo].[ProcessWorkStation] CHECK CONSTRAINT [FK_ProcessWorkStation_WorkStation]
GO
ALTER TABLE [dbo].[ProductionLine]  WITH CHECK ADD  CONSTRAINT [FK_ProductionLine_User] FOREIGN KEY([creator])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[ProductionLine] CHECK CONSTRAINT [FK_ProductionLine_User]
GO
ALTER TABLE [dbo].[ProductionLineConfig]  WITH CHECK ADD  CONSTRAINT [FK_ProductionLineConfig_ProductionLine] FOREIGN KEY([productionLineId])
REFERENCES [dbo].[ProductionLine] ([id])
GO
ALTER TABLE [dbo].[ProductionLineConfig] CHECK CONSTRAINT [FK_ProductionLineConfig_ProductionLine]
GO
ALTER TABLE [dbo].[ProductionPlan]  WITH CHECK ADD  CONSTRAINT [FK_ProductionPlan_Batch] FOREIGN KEY([batchId])
REFERENCES [dbo].[Batch] ([id])
GO
ALTER TABLE [dbo].[ProductionPlan] CHECK CONSTRAINT [FK_ProductionPlan_Batch]
GO
ALTER TABLE [dbo].[ProductionPlan]  WITH CHECK ADD  CONSTRAINT [FK_ProductionPlan_MouldFrameSpec] FOREIGN KEY([mouldFrameSpecId])
REFERENCES [dbo].[MouldFrameSpec] ([id])
GO
ALTER TABLE [dbo].[ProductionPlan] CHECK CONSTRAINT [FK_ProductionPlan_MouldFrameSpec]
GO
ALTER TABLE [dbo].[ProductionPlan]  WITH CHECK ADD  CONSTRAINT [FK_ProductionPlan_ProductionTask] FOREIGN KEY([productionTaskId])
REFERENCES [dbo].[ProductionTask] ([id])
GO
ALTER TABLE [dbo].[ProductionPlan] CHECK CONSTRAINT [FK_ProductionPlan_ProductionTask]
GO
ALTER TABLE [dbo].[ProductionTask]  WITH CHECK ADD  CONSTRAINT [FK_ProductionTask_Pallet] FOREIGN KEY([palletId])
REFERENCES [dbo].[Pallet] ([id])
GO
ALTER TABLE [dbo].[ProductionTask] CHECK CONSTRAINT [FK_ProductionTask_Pallet]
GO
ALTER TABLE [dbo].[ProductionTask]  WITH CHECK ADD  CONSTRAINT [FK_ProductionTask_PalletSpec] FOREIGN KEY([palletSpecId])
REFERENCES [dbo].[PalletSpec] ([id])
GO
ALTER TABLE [dbo].[ProductionTask] CHECK CONSTRAINT [FK_ProductionTask_PalletSpec]
GO
ALTER TABLE [dbo].[ProductionTask]  WITH CHECK ADD  CONSTRAINT [FK_ProductionTask_PlanStatus] FOREIGN KEY([taskStatusId])
REFERENCES [dbo].[TaskStatus] ([id])
GO
ALTER TABLE [dbo].[ProductionTask] CHECK CONSTRAINT [FK_ProductionTask_PlanStatus]
GO
ALTER TABLE [dbo].[ProductionTask]  WITH CHECK ADD  CONSTRAINT [FK_ProductionTask_Process] FOREIGN KEY([processId])
REFERENCES [dbo].[Process] ([id])
GO
ALTER TABLE [dbo].[ProductionTask] CHECK CONSTRAINT [FK_ProductionTask_Process]
GO
ALTER TABLE [dbo].[ProductionTask]  WITH CHECK ADD  CONSTRAINT [FK_ProductionTask_ProductionLine] FOREIGN KEY([productionLineId])
REFERENCES [dbo].[ProductionLine] ([id])
GO
ALTER TABLE [dbo].[ProductionTask] CHECK CONSTRAINT [FK_ProductionTask_ProductionLine]
GO
ALTER TABLE [dbo].[ProductionTask]  WITH CHECK ADD  CONSTRAINT [FK_ProductionTask_Technology] FOREIGN KEY([technologyId])
REFERENCES [dbo].[Technology] ([id])
GO
ALTER TABLE [dbo].[ProductionTask] CHECK CONSTRAINT [FK_ProductionTask_Technology]
GO
ALTER TABLE [dbo].[ProductionTask]  WITH CHECK ADD  CONSTRAINT [FK_ProductionTask_User] FOREIGN KEY([creator])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[ProductionTask] CHECK CONSTRAINT [FK_ProductionTask_User]
GO
ALTER TABLE [dbo].[ProductionTask]  WITH CHECK ADD  CONSTRAINT [FK_ProductionTask_WorkStation] FOREIGN KEY([workStationId])
REFERENCES [dbo].[WorkStation] ([id])
GO
ALTER TABLE [dbo].[ProductionTask] CHECK CONSTRAINT [FK_ProductionTask_WorkStation]
GO
ALTER TABLE [dbo].[ProductionTaskLog]  WITH CHECK ADD  CONSTRAINT [FK_ProductionTaskLog_Kiln] FOREIGN KEY([kilnId])
REFERENCES [dbo].[Kiln] ([id])
GO
ALTER TABLE [dbo].[ProductionTaskLog] CHECK CONSTRAINT [FK_ProductionTaskLog_Kiln]
GO
ALTER TABLE [dbo].[ProductionTaskLog]  WITH CHECK ADD  CONSTRAINT [FK_ProductionTaskLog_Process] FOREIGN KEY([processId])
REFERENCES [dbo].[Process] ([id])
GO
ALTER TABLE [dbo].[ProductionTaskLog] CHECK CONSTRAINT [FK_ProductionTaskLog_Process]
GO
ALTER TABLE [dbo].[ProductionTaskLog]  WITH CHECK ADD  CONSTRAINT [FK_ProductionTaskLog_ProductionTask] FOREIGN KEY([productionTaskId])
REFERENCES [dbo].[ProductionTask] ([id])
GO
ALTER TABLE [dbo].[ProductionTaskLog] CHECK CONSTRAINT [FK_ProductionTaskLog_ProductionTask]
GO
ALTER TABLE [dbo].[ProductionTaskLog]  WITH CHECK ADD  CONSTRAINT [FK_ProductionTaskLog_WorkStation] FOREIGN KEY([workStationId])
REFERENCES [dbo].[WorkStation] ([id])
GO
ALTER TABLE [dbo].[ProductionTaskLog] CHECK CONSTRAINT [FK_ProductionTaskLog_WorkStation]
GO
ALTER TABLE [dbo].[ProductionTaskMatch]  WITH CHECK ADD  CONSTRAINT [FK_ProductionTaskMatch_PalletSpec] FOREIGN KEY([palletSpecId])
REFERENCES [dbo].[PalletSpec] ([id])
GO
ALTER TABLE [dbo].[ProductionTaskMatch] CHECK CONSTRAINT [FK_ProductionTaskMatch_PalletSpec]
GO
ALTER TABLE [dbo].[ProductionTaskMatchItem]  WITH CHECK ADD  CONSTRAINT [FK_ProductionTaskMatchItem_MouldFrameSpec] FOREIGN KEY([mouldFrameSpecId])
REFERENCES [dbo].[MouldFrameSpec] ([id])
GO
ALTER TABLE [dbo].[ProductionTaskMatchItem] CHECK CONSTRAINT [FK_ProductionTaskMatchItem_MouldFrameSpec]
GO
ALTER TABLE [dbo].[ProductionTaskMatchItem]  WITH CHECK ADD  CONSTRAINT [FK_ProductionTaskMatchItem_ProductionTaskMatch] FOREIGN KEY([productionTaskMatchId])
REFERENCES [dbo].[ProductionTaskMatch] ([id])
GO
ALTER TABLE [dbo].[ProductionTaskMatchItem] CHECK CONSTRAINT [FK_ProductionTaskMatchItem_ProductionTaskMatch]
GO
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_Customer] FOREIGN KEY([customerId])
REFERENCES [dbo].[Customer] ([id])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_Project_Customer]
GO
ALTER TABLE [dbo].[Region]  WITH CHECK ADD  CONSTRAINT [FK_Region_Region] FOREIGN KEY([parentId])
REFERENCES [dbo].[Region] ([id])
GO
ALTER TABLE [dbo].[Region] CHECK CONSTRAINT [FK_Region_Region]
GO
ALTER TABLE [dbo].[StorageRoom]  WITH CHECK ADD  CONSTRAINT [FK_StorageRoom_Warehouse] FOREIGN KEY([warehouseId])
REFERENCES [dbo].[Warehouse] ([id])
GO
ALTER TABLE [dbo].[StorageRoom] CHECK CONSTRAINT [FK_StorageRoom_Warehouse]
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_User] FOREIGN KEY([creator])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK_Supplier_User]
GO
ALTER TABLE [dbo].[SupplierMaterialType]  WITH CHECK ADD  CONSTRAINT [FK_SupplierMaterialType_MaterialType] FOREIGN KEY([materialTypeId])
REFERENCES [dbo].[MaterialType] ([id])
GO
ALTER TABLE [dbo].[SupplierMaterialType] CHECK CONSTRAINT [FK_SupplierMaterialType_MaterialType]
GO
ALTER TABLE [dbo].[SupplierMaterialType]  WITH CHECK ADD  CONSTRAINT [FK_SupplierMaterialType_Supplier] FOREIGN KEY([supplierId])
REFERENCES [dbo].[Supplier] ([id])
GO
ALTER TABLE [dbo].[SupplierMaterialType] CHECK CONSTRAINT [FK_SupplierMaterialType_Supplier]
GO
ALTER TABLE [dbo].[Technology]  WITH CHECK ADD  CONSTRAINT [FK_Technology_ProductionLine] FOREIGN KEY([productionLineId])
REFERENCES [dbo].[ProductionLine] ([id])
GO
ALTER TABLE [dbo].[Technology] CHECK CONSTRAINT [FK_Technology_ProductionLine]
GO
ALTER TABLE [dbo].[TechnologyPcType]  WITH CHECK ADD  CONSTRAINT [FK_TechnologyPcType_PcType] FOREIGN KEY([pcTypeId])
REFERENCES [dbo].[PcType] ([id])
GO
ALTER TABLE [dbo].[TechnologyPcType] CHECK CONSTRAINT [FK_TechnologyPcType_PcType]
GO
ALTER TABLE [dbo].[TechnologyPcType]  WITH CHECK ADD  CONSTRAINT [FK_TechnologyPcType_Technology] FOREIGN KEY([technologyId])
REFERENCES [dbo].[Technology] ([id])
GO
ALTER TABLE [dbo].[TechnologyPcType] CHECK CONSTRAINT [FK_TechnologyPcType_Technology]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Customer] FOREIGN KEY([customerId])
REFERENCES [dbo].[Customer] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Customer]
GO
ALTER TABLE [dbo].[UserActionLog]  WITH CHECK ADD  CONSTRAINT [FK_ActiveLog_ActiveType] FOREIGN KEY([actionTypeId])
REFERENCES [dbo].[UserActionType] ([id])
GO
ALTER TABLE [dbo].[UserActionLog] CHECK CONSTRAINT [FK_ActiveLog_ActiveType]
GO
ALTER TABLE [dbo].[UserActionLog]  WITH CHECK ADD  CONSTRAINT [FK_ActiveLog_User] FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[UserActionLog] CHECK CONSTRAINT [FK_ActiveLog_User]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_Role] FOREIGN KEY([roleId])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_Role]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_User] FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_User]
GO
ALTER TABLE [dbo].[UserToken]  WITH CHECK ADD  CONSTRAINT [FK_UserToken_User] FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[UserToken] CHECK CONSTRAINT [FK_UserToken_User]
GO
ALTER TABLE [dbo].[Warehouse]  WITH CHECK ADD  CONSTRAINT [FK_Warehouse_User] FOREIGN KEY([creator])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Warehouse] CHECK CONSTRAINT [FK_Warehouse_User]
GO
ALTER TABLE [dbo].[WorkStation]  WITH CHECK ADD  CONSTRAINT [FK_WorkStation_ProductionLine] FOREIGN KEY([productionLineId])
REFERENCES [dbo].[ProductionLine] ([id])
GO
ALTER TABLE [dbo].[WorkStation] CHECK CONSTRAINT [FK_WorkStation_ProductionLine]
GO
ALTER TABLE [dbo].[WorkStation]  WITH CHECK ADD  CONSTRAINT [FK_WorkStation_User] FOREIGN KEY([creator])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[WorkStation] CHECK CONSTRAINT [FK_WorkStation_User]
GO
ALTER TABLE [dbo].[WorkStationNormal]  WITH CHECK ADD  CONSTRAINT [FK_WorkStationStatus_WorkStation] FOREIGN KEY([workStationId])
REFERENCES [dbo].[WorkStation] ([id])
GO
ALTER TABLE [dbo].[WorkStationNormal] CHECK CONSTRAINT [FK_WorkStationStatus_WorkStation]
GO
ALTER TABLE [dbo].[YearlyPlanElmt]  WITH CHECK ADD  CONSTRAINT [FK_YearlyPlanElmt_PcRoot] FOREIGN KEY([pcRootId])
REFERENCES [dbo].[PcRoot] ([id])
GO
ALTER TABLE [dbo].[YearlyPlanElmt] CHECK CONSTRAINT [FK_YearlyPlanElmt_PcRoot]
GO
ALTER TABLE [dbo].[YearlyPlanElmt]  WITH CHECK ADD  CONSTRAINT [FK_YearlyPlanElmt_ProductionLine] FOREIGN KEY([productionLineId])
REFERENCES [dbo].[ProductionLine] ([id])
GO
ALTER TABLE [dbo].[YearlyPlanElmt] CHECK CONSTRAINT [FK_YearlyPlanElmt_ProductionLine]
GO
ALTER TABLE [dbo].[YearlyPlanElmt]  WITH CHECK ADD  CONSTRAINT [FK_YearlyPlanElmt_YearlyPlan] FOREIGN KEY([yearlyPlanId])
REFERENCES [dbo].[YearlyPlan] ([id])
GO
ALTER TABLE [dbo].[YearlyPlanElmt] CHECK CONSTRAINT [FK_YearlyPlanElmt_YearlyPlan]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户简称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'shortName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'省份Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'provinceId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'城市Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'cityId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区域Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'districtId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业行业' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'industry'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业性质' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'nature'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业规模' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'scale'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'level'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'法人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'legalPerson'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业电子邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业详细地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'合作时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'cooperateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'contacts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'构件图号，可空' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExamineItem', @level2type=N'COLUMN',@level2name=N'pcTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'索引（顺序），非空' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExamineItem', @level2type=N'COLUMN',@level2name=N'index'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项名，非空' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExamineItem', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备，可空' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExamineItem', @level2type=N'COLUMN',@level2name=N'requirement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'方法，可空' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExamineItem', @level2type=N'COLUMN',@level2name=N'methods'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结果，可空' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExamineItem', @level2type=N'COLUMN',@level2name=N'result'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注，可空' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExamineItem', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'检验类型，非空' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExamineItem', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExamineItem', @level2type=N'COLUMN',@level2name=N'creator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'唯一标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Form', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Form', @level2type=N'COLUMN',@level2name=N'formNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Form', @level2type=N'COLUMN',@level2name=N'mainTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Form', @level2type=N'COLUMN',@level2name=N'formCategoryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单模板' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Form', @level2type=N'COLUMN',@level2name=N'formTemplateId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已完成' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Form', @level2type=N'COLUMN',@level2name=N'completed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Form', @level2type=N'COLUMN',@level2name=N'createTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Form', @level2type=N'COLUMN',@level2name=N'deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FormTemplate', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FormTemplate', @level2type=N'COLUMN',@level2name=N'topic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FormTemplate', @level2type=N'COLUMN',@level2name=N'formCategoryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FormTemplate', @level2type=N'COLUMN',@level2name=N'enable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FormTemplate', @level2type=N'COLUMN',@level2name=N'createTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FormTemplate', @level2type=N'COLUMN',@level2name=N'deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FormTitle', @level2type=N'COLUMN',@level2name=N'formTemplateId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表头英文名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FormTitle', @level2type=N'COLUMN',@level2name=N'titleEn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表头中文名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FormTitle', @level2type=N'COLUMN',@level2name=N'titleCn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FormTitle', @level2type=N'COLUMN',@level2name=N'order'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'皮重' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MaterialWeighedLog', @level2type=N'COLUMN',@level2name=N'tareWeight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'净重' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MaterialWeighedLog', @level2type=N'COLUMN',@level2name=N'netWeight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扣率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MaterialWeighedLog', @level2type=N'COLUMN',@level2name=N'deductionRate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扣重' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MaterialWeighedLog', @level2type=N'COLUMN',@level2name=N'deductionWeight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MaterialWeighedLog', @level2type=N'COLUMN',@level2name=N'supplier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'行标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProcessData', @level2type=N'COLUMN',@level2name=N'index'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProcessData', @level2type=N'COLUMN',@level2name=N'sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProcessDataTitle', @level2type=N'COLUMN',@level2name=N'index'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductionPlan', @level2type=N'COLUMN',@level2name=N'productionTaskId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductionPlan', @level2type=N'COLUMN',@level2name=N'batchId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划生产数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductionPlan', @level2type=N'COLUMN',@level2name=N'count'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作组名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductionTask', @level2type=N'COLUMN',@level2name=N'workgroup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Project', @level2type=N'COLUMN',@level2name=N'customerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'监理单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Project', @level2type=N'COLUMN',@level2name=N'supervisor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总支出额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Project', @level2type=N'COLUMN',@level2name=N'spending'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开工时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Project', @level2type=N'COLUMN',@level2name=N'beginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StorageRoom', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'店主 负责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StorageRoom', @level2type=N'COLUMN',@level2name=N'storeKeeper'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'正向光电传感器' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkStationNormal', @level2type=N'COLUMN',@level2name=N'photoelectricForward'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'反向光电传感器' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkStationNormal', @level2type=N'COLUMN',@level2name=N'photoelectricBackward'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'正向电机传感器' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkStationNormal', @level2type=N'COLUMN',@level2name=N'motorForward'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'反向电机传感器' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkStationNormal', @level2type=N'COLUMN',@level2name=N'motorBackward'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'温度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkStationNormal', @level2type=N'COLUMN',@level2name=N'temperature'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'湿度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkStationNormal', @level2type=N'COLUMN',@level2name=N'humidity'
GO