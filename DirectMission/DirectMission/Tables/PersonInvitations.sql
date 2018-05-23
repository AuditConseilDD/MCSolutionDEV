CREATE TABLE [dbo].[PersonInvitations] (
    [PersonID]             [dbo].[ct_Personid] NOT NULL,
    [InitiatorPersonID]    [dbo].[ct_Personid] NOT NULL,
    [InvitationSentCount]    [dbo].[ct_Personid] NOT NULL,
    [LastInvitationSentDate] DATETIME              NOT NULL,
    [AcceptedDate]           DATETIME              NOT NULL,
    CONSTRAINT [PK_PersonInvitations_PersonID_InitiatorPersonID] PRIMARY KEY CLUSTERED ([PersonID] ASC, [InitiatorPersonID] ASC),
    CONSTRAINT [FK_PersonInvitations_CInv_PersonID] FOREIGN KEY ([PersonID]) REFERENCES [dbo].[Persons] ([PersonID]),
    CONSTRAINT [FK_PersonInvitations_CInv_InitiatorPersonID] FOREIGN KEY ([InitiatorPersonID]) REFERENCES [dbo].[Persons] ([PersonID])
);


GO
CREATE NONCLUSTERED INDEX [IFK_PersonInvitations_CInv_PersonID]
    ON [dbo].[PersonInvitations]([PersonID] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_PersonInvitations_CInv_InitiatorPersonID]
    ON [dbo].[PersonInvitations]([InitiatorPersonID] ASC);

