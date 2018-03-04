CREATE TABLE [dbo].[ActivityReportsPermissions] (
    [CustomerID]      [dbo].[ct_customerid] NOT NULL,
    [EndCutomerID]    [dbo].[ct_customerid] NOT NULL,
    [AgentCustomerID] [dbo].[ct_customerid] NOT NULL,
    CONSTRAINT [PK_ActivityReportsPermissions_CustomerID_EndCutomerID_InvoiceCustomerID] PRIMARY KEY CLUSTERED ([CustomerID] ASC, [EndCutomerID] ASC, [AgentCustomerID] ASC),
    CONSTRAINT [FK_ActivityReportsPermissions_AcRpPr_AgentCustomerID] FOREIGN KEY ([AgentCustomerID]) REFERENCES [dbo].[Customers] ([CustomerID]),
    CONSTRAINT [FK_ActivityReportsPermissions_AcRpPr_CustomerID] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customers] ([CustomerID]),
    CONSTRAINT [FK_ActivityReportsPermissions_AcRpPr_EndCutomerID] FOREIGN KEY ([EndCutomerID]) REFERENCES [dbo].[Customers] ([CustomerID])
);


GO
CREATE NONCLUSTERED INDEX [IFK_ActivityReportsPermissions_AcRpPr_AgentCustomerID]
    ON [dbo].[ActivityReportsPermissions]([AgentCustomerID] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_ActivityReportsPermissions_AcRpPr_CustomerID]
    ON [dbo].[ActivityReportsPermissions]([CustomerID] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_ActivityReportsPermissions_AcRpPr_EndCutomerID]
    ON [dbo].[ActivityReportsPermissions]([EndCutomerID] ASC);

