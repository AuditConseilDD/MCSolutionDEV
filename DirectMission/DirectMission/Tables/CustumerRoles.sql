CREATE TABLE [dbo].[CustumerRoles] (
    [CustomerRoleID] INT            IDENTITY (1, 1) NOT NULL,
    [RoleName]       NVARCHAR (100) NOT NULL,
    CONSTRAINT [PK_CustumerRoles_CRol_CustomerRoleID] PRIMARY KEY CLUSTERED ([CustomerRoleID] ASC)
);

