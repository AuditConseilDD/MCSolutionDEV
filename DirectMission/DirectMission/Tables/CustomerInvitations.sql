CREATE TABLE [dbo].[CustomerInvitations] (
    [CustomerID]             [dbo].[ct_customerid] NOT NULL,
    [InitiatorCustomerID]    [dbo].[ct_customerid] NOT NULL,
    [InvitationSentCount]    [dbo].[ct_customerid] NOT NULL,
    [LastInvitationSentDate] DATETIME              NOT NULL,
    [AcceptedDate]           DATETIME              NOT NULL,
    CONSTRAINT [PK_CustomerInvitations_CustomerID_InitiatorCustomerID] PRIMARY KEY CLUSTERED ([CustomerID] ASC, [InitiatorCustomerID] ASC),
    CONSTRAINT [FK_CustomerInvitations_CInv_CustomerID] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customers] ([CustomerID]),
    CONSTRAINT [FK_CustomerInvitations_CInv_InitiatorCustomerID] FOREIGN KEY ([InitiatorCustomerID]) REFERENCES [dbo].[Customers] ([CustomerID])
);


GO
CREATE NONCLUSTERED INDEX [IFK_CustomerInvitations_CInv_CustomerID]
    ON [dbo].[CustomerInvitations]([CustomerID] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_CustomerInvitations_CInv_InitiatorCustomerID]
    ON [dbo].[CustomerInvitations]([InitiatorCustomerID] ASC);

