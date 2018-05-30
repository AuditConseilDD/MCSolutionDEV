CREATE TABLE [dbo].[Persons] (
    [PersonID]               [dbo].[ct_Personid]  IDENTITY (1, 1) NOT NULL,
    [FirstName]                [dbo].[ct_firstname]   NOT NULL,
    [MiddleName]               [dbo].[ct_firstname]   NOT NULL,
    [LastName]                 [dbo].[ct_lastname]    NOT NULL,
    [Title]                    [dbo].[ct_title]       NOT NULL,
    [DateOfBirth]              [dbo].[ct_lastname]    NOT NULL,
    [AccountStatusId]            TINYINT                NOT NULL,
    [JobTitle]                 [dbo].[ct_jobtitle]    NOT NULL,
    [CreatorPersonID]        [dbo].[ct_Personid]  NULL,
    [BackupPersonID]         [dbo].[ct_Personid]  NULL,
    [BillToPersonID]         [dbo].[ct_Personid]  NULL,
    [PrimaryContactPersonID]   [dbo].[ct_Personid]  NULL,
    [AlternateContactPersonID] [dbo].[ct_Personid]  NULL,
    [AccountOpenedDate]        DATETIME2 (7)          NOT NULL,
    [PhoneNumber]              [dbo].[ct_phone]       NOT NULL,
    [FaxNumber]                [dbo].[ct_phone]       NULL,
    [RunPosition]              NVARCHAR (5)           NULL,
    [WebsiteURL]               [dbo].[ct_url]         NULL,
    [CreatedDate]              DATETIME               NOT NULL,
    [EditedDate]               DATETIME               NOT NULL,
    [NewsLettersEnabled]       BIT                    NOT NULL,
    [PasswordHash]             [dbo].[ct_password]    NOT NULL,
    [ElectronicSignature]      NVARCHAR (100)         NOT NULL,
    [LanguageID]               SMALLINT               NOT NULL,
    CONSTRAINT [PK_Persons_Cust_PersonID] PRIMARY KEY CLUSTERED ([PersonID] ASC),
    CONSTRAINT [FK_Persons_Cust_AccountStatus] FOREIGN KEY ([AccountStatusId]) REFERENCES [dbo].[PersonAccountStatuses] ([PersonAccountStatusID]),
    CONSTRAINT [FK_Persons_Cust_AlternateContactPersonID] FOREIGN KEY ([AlternateContactPersonID]) REFERENCES [dbo].[Persons] ([PersonID]),
    CONSTRAINT [FK_Persons_Cust_BackupPersonID] FOREIGN KEY ([BackupPersonID]) REFERENCES [dbo].[Persons] ([PersonID]),
    CONSTRAINT [FK_Persons_Cust_BillToPersonID] FOREIGN KEY ([BillToPersonID]) REFERENCES [dbo].[Persons] ([PersonID]),
    CONSTRAINT [FK_Persons_Cust_CreatorPersonID] FOREIGN KEY ([CreatorPersonID]) REFERENCES [dbo].[Persons] ([PersonID]),
    CONSTRAINT [FK_Persons_Cust_LanguageID] FOREIGN KEY ([LanguageID]) REFERENCES [dbo].[Languages] ([LanguageID]),
    CONSTRAINT [FK_Persons_Cust_PrimaryContactPersonID] FOREIGN KEY ([PrimaryContactPersonID]) REFERENCES [dbo].[Persons] ([PersonID])
);


GO
CREATE NONCLUSTERED INDEX [IFK_Persons_Cust_AccountStatus]
    ON [dbo].[Persons]([AccountStatusId] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_Persons_Cust_AlternateContactPersonID]
    ON [dbo].[Persons]([AlternateContactPersonID] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_Persons_Cust_BackupPersonID]
    ON [dbo].[Persons]([BackupPersonID] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_Persons_Cust_BillToPersonID]
    ON [dbo].[Persons]([BillToPersonID] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_Persons_Cust_CreatorPersonID]
    ON [dbo].[Persons]([CreatorPersonID] ASC);


GO

CREATE NONCLUSTERED INDEX [IFK_Persons_Cust_LanguageID]
    ON [dbo].[Persons]([LanguageID] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_Persons_Cust_PrimaryContactPersonID]
    ON [dbo].[Persons]([PrimaryContactPersonID] ASC);

