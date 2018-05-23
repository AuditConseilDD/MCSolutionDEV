CREATE TABLE [dbo].[PersonRoles] (
    [PersonRoleID] INT            IDENTITY (1, 1) NOT NULL,
    [RoleName]       NVARCHAR (100) NOT NULL,
    CONSTRAINT [PK_CustumerRoles_CRol_PersonRoleID] PRIMARY KEY CLUSTERED ([PersonRoleID] ASC)
);

