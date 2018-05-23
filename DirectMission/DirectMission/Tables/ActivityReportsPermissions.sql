CREATE TABLE [dbo].[ActivityReportsPermissions] (
    [PersonID]      [dbo].[ct_Personid] NOT NULL,
    [EndCutomerID]    [dbo].[ct_Personid] NOT NULL,
    [AgentPersonID] [dbo].[ct_Personid] NOT NULL,
    CONSTRAINT [PK_ActivityReportsPermissions_PersonID_EndCutomerID_InvoicePersonID] PRIMARY KEY CLUSTERED ([PersonID] ASC, [EndCutomerID] ASC, [AgentPersonID] ASC),
    CONSTRAINT [FK_ActivityReportsPermissions_AcRpPr_AgentPersonID] FOREIGN KEY ([AgentPersonID]) REFERENCES [dbo].[Persons] ([PersonID]),
    CONSTRAINT [FK_ActivityReportsPermissions_AcRpPr_PersonID] FOREIGN KEY ([PersonID]) REFERENCES [dbo].[Persons] ([PersonID]),
    CONSTRAINT [FK_ActivityReportsPermissions_AcRpPr_EndCutomerID] FOREIGN KEY ([EndCutomerID]) REFERENCES [dbo].[Persons] ([PersonID])
);


GO
CREATE NONCLUSTERED INDEX [IFK_ActivityReportsPermissions_AcRpPr_AgentPersonID]
    ON [dbo].[ActivityReportsPermissions]([AgentPersonID] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_ActivityReportsPermissions_AcRpPr_PersonID]
    ON [dbo].[ActivityReportsPermissions]([PersonID] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_ActivityReportsPermissions_AcRpPr_EndCutomerID]
    ON [dbo].[ActivityReportsPermissions]([EndCutomerID] ASC);

