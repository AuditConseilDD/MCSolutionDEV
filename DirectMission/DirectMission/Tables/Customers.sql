CREATE TABLE [dbo].[Customers] (
    [CustomerID]               [dbo].[ct_customerid]  IDENTITY (1, 1) NOT NULL,
    [Email]                    [dbo].[ct_email]       NOT NULL,
    [FirstName]                [dbo].[ct_firstname]   NOT NULL,
    [MiddleName]               [dbo].[ct_firstname]   NOT NULL,
    [LastName]                 [dbo].[ct_lastname]    NOT NULL,
    [Title]                    [dbo].[ct_title]       NOT NULL,
    [DateOfBirth]              [dbo].[ct_lastname]    NOT NULL,
    [AccountStatus]            TINYINT                NOT NULL,
    [JobTitle]                 [dbo].[ct_jobtitle]    NOT NULL,
    [CreatorCustomerID]        [dbo].[ct_customerid]  NULL,
    [BackupCustomerID]         [dbo].[ct_customerid]  NULL,
    [BillToCustomerID]         [dbo].[ct_customerid]  NULL,
    [CustomerRoleID]           INT                    NOT NULL,
    [PrimaryContactPersonID]   [dbo].[ct_customerid]  NULL,
    [AlternateContactPersonID] [dbo].[ct_customerid]  NULL,
    [AccountOpenedDate]        DATETIME2 (7)          NOT NULL,
    [PhoneNumber]              [dbo].[ct_phone]       NOT NULL,
    [FaxNumber]                [dbo].[ct_phone]       NULL,
    [RunPosition]              NVARCHAR (5)           NULL,
    [WebsiteURL]               [dbo].[ct_url]         NULL,
    [PostalAddressLine1]       [dbo].[ct_addressline] NOT NULL,
    [PostalAddressLine2]       [dbo].[ct_addressline] NULL,
    [PostalCode]               [dbo].[ct_postalcode]  NOT NULL,
    [PostalCity]               [dbo].[ct_city]        NOT NULL,
    [CreatedDate]              DATETIME               NOT NULL,
    [EditedDate]               DATETIME               NOT NULL,
    [NewsLettersEnabled]       BIT                    NOT NULL,
    [PasswordHash]             [dbo].[ct_password]    NOT NULL,
    [ElectronicSignature]      NVARCHAR (100)         NOT NULL,
    [LanguageID]               SMALLINT               NOT NULL,
    CONSTRAINT [PK_Customers_Cust_CustomerID] PRIMARY KEY CLUSTERED ([CustomerID] ASC),
    CONSTRAINT [FK_Customers_Cust_AccountStatus] FOREIGN KEY ([AccountStatus]) REFERENCES [dbo].[CustomerAccountStatuses] ([CustomerAccountStatusID]),
    CONSTRAINT [FK_Customers_Cust_AlternateContactPersonID] FOREIGN KEY ([AlternateContactPersonID]) REFERENCES [dbo].[Customers] ([CustomerID]),
    CONSTRAINT [FK_Customers_Cust_BackupCustomerID] FOREIGN KEY ([BackupCustomerID]) REFERENCES [dbo].[Customers] ([CustomerID]),
    CONSTRAINT [FK_Customers_Cust_BillToCustomerID] FOREIGN KEY ([BillToCustomerID]) REFERENCES [dbo].[Customers] ([CustomerID]),
    CONSTRAINT [FK_Customers_Cust_CreatorCustomerID] FOREIGN KEY ([CreatorCustomerID]) REFERENCES [dbo].[Customers] ([CustomerID]),
    CONSTRAINT [FK_Customers_Cust_CustomerRoleID] FOREIGN KEY ([CustomerRoleID]) REFERENCES [dbo].[CustumerRoles] ([CustomerRoleID]),
    CONSTRAINT [FK_Customers_Cust_LanguageID] FOREIGN KEY ([LanguageID]) REFERENCES [dbo].[Languages] ([LanguageID]),
    CONSTRAINT [FK_Customers_Cust_PrimaryContactPersonID] FOREIGN KEY ([PrimaryContactPersonID]) REFERENCES [dbo].[Customers] ([CustomerID]),
    CONSTRAINT [UQ_Customers_Cust_Email] UNIQUE NONCLUSTERED ([Email] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IFK_Customers_Cust_AccountStatus]
    ON [dbo].[Customers]([AccountStatus] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_Customers_Cust_AlternateContactPersonID]
    ON [dbo].[Customers]([AlternateContactPersonID] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_Customers_Cust_BackupCustomerID]
    ON [dbo].[Customers]([BackupCustomerID] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_Customers_Cust_BillToCustomerID]
    ON [dbo].[Customers]([BillToCustomerID] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_Customers_Cust_CreatorCustomerID]
    ON [dbo].[Customers]([CreatorCustomerID] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_Customers_Cust_CustomerRoleID]
    ON [dbo].[Customers]([CustomerRoleID] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_Customers_Cust_LanguageID]
    ON [dbo].[Customers]([LanguageID] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_Customers_Cust_PrimaryContactPersonID]
    ON [dbo].[Customers]([PrimaryContactPersonID] ASC);

