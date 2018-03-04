CREATE TABLE [dbo].[Emails] (
    [EmailID]             BIGINT                IDENTITY (1, 1) NOT NULL,
    [EmailStatusID]       TINYINT               NOT NULL,
    [SenderCustomerID]    [dbo].[ct_customerid] NOT NULL,
    [RecipientCustomerID] [dbo].[ct_customerid] NOT NULL,
    [TemplateID]          INT                   NOT NULL,
    [QueuedDatetime]      DATETIME              NOT NULL,
    [SentDatetime]        DATETIME              NULL,
    CONSTRAINT [PK_Emails_Em_EmailID] PRIMARY KEY CLUSTERED ([EmailID] ASC),
    CONSTRAINT [FK_Emails_Em_RecipientCustomerID] FOREIGN KEY ([RecipientCustomerID]) REFERENCES [dbo].[Customers] ([CustomerID]),
    CONSTRAINT [FK_Emails_Em_SenderCustomerID] FOREIGN KEY ([SenderCustomerID]) REFERENCES [dbo].[Customers] ([CustomerID]),
    CONSTRAINT [FK_Emails_Em_TemplateID] FOREIGN KEY ([TemplateID]) REFERENCES [dbo].[EmailTemplates] ([EmailTemplateID]),
    CONSTRAINT [FK_Emails_Emst_EmailStatusID] FOREIGN KEY ([EmailStatusID]) REFERENCES [dbo].[EmailStatuses] ([EmailStatusID])
);


GO
CREATE NONCLUSTERED INDEX [IFK_Emails_Em_RecipientCustomerID]
    ON [dbo].[Emails]([RecipientCustomerID] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_Emails_Em_SenderCustomerID]
    ON [dbo].[Emails]([SenderCustomerID] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_Emails_Em_TemplateID]
    ON [dbo].[Emails]([TemplateID] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_Emails_Emst_EmailStatusID]
    ON [dbo].[Emails]([EmailStatusID] ASC);

