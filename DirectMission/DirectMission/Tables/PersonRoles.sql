CREATE TABLE [dbo].[PersonRoles]
(
	[PersonRoleId]			INT NOT NULL IDENTITY(1,1),
	[PersonID]					[dbo].[ct_Personid],
	[RoleId]					INT NOT NULL,
    CONSTRAINT [PK_PersonRoles_PersonRoleId] PRIMARY KEY CLUSTERED ([PersonRoleId] ASC),
	CONSTRAINT [FK_PersonRoles_Persons_PersonID] FOREIGN KEY ([PersonID]) REFERENCES [dbo].[Persons] ([PersonID]),
	CONSTRAINT [FK_PersonRoles_Roles_PersonRoleID] FOREIGN KEY ([RoleID]) REFERENCES [dbo].[Roles] ([RoleID])
)
GO

CREATE UNIQUE NONCLUSTERED INDEX [uncidx_PersonRole_PersonID_AddressID] ON [dbo].[PersonRoles]
(	[PersonID],
	[RoleId])
GO
