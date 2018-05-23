CREATE TABLE [dbo].[ActivityReports] (
    [ActivityReportID]                INT                   IDENTITY (1, 1) NOT NULL,
    [DateCreation]                    DATETIME              NOT NULL,
    [PersonID]                      [dbo].[ct_Personid] NOT NULL,
    [EndPersonID]                   [dbo].[ct_Personid] NOT NULL,
    [AgentPersonID]                 [dbo].[ct_Personid] NOT NULL,
    [HasBeenSentByEmail]              BIT                   NOT NULL,
    [IsSignedByPerson]              BIT                   NULL,
    [IsSignedByEndPerson]           BIT                   NULL,
    [IsSignedByAgentPerson]         BIT                   NULL,
    [IsRejectedByEndPerson]         BIT                   NULL,
    [RejectionDetailsEndPersonID]   INT                   NULL,
    [IsRejectedByAgentPerson]       BIT                   NULL,
    [RejectionDetailsAgentPersonID] INT                   NULL,
    CONSTRAINT [PK_ActivityReports_ARpt_ActivityReportID] PRIMARY KEY CLUSTERED ([ActivityReportID] ASC),
    CONSTRAINT [FK_ActivityReports_ARpt_AgentPersonID] FOREIGN KEY ([AgentPersonID]) REFERENCES [dbo].[Persons] ([PersonID]),
    CONSTRAINT [FK_ActivityReports_ARpt_PersonID] FOREIGN KEY ([PersonID]) REFERENCES [dbo].[Persons] ([PersonID]),
    CONSTRAINT [FK_ActivityReports_ARpt_EndPersonID] FOREIGN KEY ([EndPersonID]) REFERENCES [dbo].[Persons] ([PersonID]),
    CONSTRAINT [FK_ActivityReports_ARpt_RejectionDetailsAgentPersonID] FOREIGN KEY ([RejectionDetailsAgentPersonID]) REFERENCES [dbo].[ActivityReportRejectionDetails] ([ActivityReportRejectionDetailsID]),
    CONSTRAINT [FK_ActivityReports_ARpt_RejectionDetailsEndPersonID] FOREIGN KEY ([RejectionDetailsEndPersonID]) REFERENCES [dbo].[ActivityReportRejectionDetails] ([ActivityReportRejectionDetailsID])
);


GO
CREATE NONCLUSTERED INDEX [IFK_ActivityReports_ARpt_AgentPersonID]
    ON [dbo].[ActivityReports]([AgentPersonID] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_ActivityReports_ARpt_PersonID]
    ON [dbo].[ActivityReports]([PersonID] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_ActivityReports_ARpt_EndPersonID]
    ON [dbo].[ActivityReports]([EndPersonID] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_ActivityReports_ARpt_RejectionDetailsAgentPersonID]
    ON [dbo].[ActivityReports]([RejectionDetailsAgentPersonID] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_ActivityReports_ARpt_RejectionDetailsEndPersonID]
    ON [dbo].[ActivityReports]([RejectionDetailsEndPersonID] ASC);

