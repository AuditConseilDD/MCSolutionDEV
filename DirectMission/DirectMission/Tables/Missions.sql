CREATE TABLE [dbo].[Missions]
(
	[MissionId]				INT NOT NULL IDENTITY(1,1),
	[ConsultantPersonId]	[dbo].[ct_Personid] NOT NULL,
	[EndCustomerPersonId]	[dbo].[ct_Personid] NOT NULL,
	[AgentPersonId]			[dbo].[ct_Personid] NOT NULL,
	[MissionStartDate]		DATETIME NOT NULL,
	[MissionEndDate]		DATETIME NULL ,
	[is_current]			BIT NULL , 
	[CreationDate]			DATETIME NOT NULL,
	[CreateBy]				NVARCHAR(50) NULL,
	[ModificationDate]		DATETIME NOT NULL,
	[ModifiedBy]			NVARCHAR(50) NULL,
    CONSTRAINT [PK_Mission_MissionId] PRIMARY KEY CLUSTERED ([MissionId] ASC),
    CONSTRAINT [FK_Mission_ConsultantPersonId] FOREIGN KEY ([ConsultantPersonId]) REFERENCES [dbo].[Persons] ([PersonID]),
    CONSTRAINT [FK_Mission_EndCustomerPersonId] FOREIGN KEY ([EndCustomerPersonId]) REFERENCES [dbo].[Persons] ([PersonID]),
    CONSTRAINT [FK_Mission_AgentPersonId] FOREIGN KEY ([AgentPersonId]) REFERENCES [dbo].[Persons] ([PersonID])
)
GO

CREATE UNIQUE NONCLUSTERED INDEX [uncidx_Mission_Cons_EndC_Agent] ON [dbo].[Missions]
(
	[ConsultantPersonId],
	[EndCustomerPersonId],
	[AgentPersonId]
)
GO