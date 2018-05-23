CREATE TABLE [dbo].[EmailsSent] (
    [EmailSentID]             BIGINT                IDENTITY (1, 1) NOT NULL,
    [StatusID]       TINYINT               NOT NULL,
    [SenderPersonID]    [dbo].[ct_Personid] NOT NULL,
    [RecipientPersonID] [dbo].[ct_Personid] NOT NULL,
    [TemplateID] INT                   NOT NULL,
    [QueuedDatetime]      DATETIME              NOT NULL,
    [SentDatetime]        DATETIME              NULL,
    CONSTRAINT [PK_Emails_Em_EmailID] PRIMARY KEY CLUSTERED ([EmailSentID] ASC),
    CONSTRAINT [FK_Emails_Em_RecipientPersonID] FOREIGN KEY ([RecipientPersonID]) REFERENCES [dbo].[Persons] ([PersonID]),
    CONSTRAINT [FK_Emails_Em_SenderPersonID] FOREIGN KEY ([SenderPersonID]) REFERENCES [dbo].[Persons] ([PersonID]),
    CONSTRAINT [FK_Emails_Em_TemplateID] FOREIGN KEY ([TemplateID]) REFERENCES [dbo].[EmailSentTemplates] ([EmailSentTemplateID]),
    CONSTRAINT [FK_Emails_Emst_EmailStatusID] FOREIGN KEY ([StatusID]) REFERENCES [dbo].[EmailSentStatuses] ([EmailSentStatusID])
);


GO
CREATE NONCLUSTERED INDEX [IFK_Emails_Em_RecipientPersonID]
    ON [dbo].[EmailsSent]([RecipientPersonID] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_Emails_Em_SenderPersonID]
    ON [dbo].[EmailsSent]([SenderPersonID] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_Emails_Em_TemplateID]
    ON [dbo].[EmailsSent]([TemplateID] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_Emails_Emst_EmailStatusID]
    ON [dbo].[EmailsSent]([StatusID] ASC);

