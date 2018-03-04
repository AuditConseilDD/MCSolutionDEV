CREATE TABLE [dbo].[EmailTemplates] (
    [EmailTemplateID] INT            IDENTITY (1, 1) NOT NULL,
    [Label]           NVARCHAR (50)  NOT NULL,
    [Subject]         NVARCHAR (512) NOT NULL,
    [Body]            NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_EmailTemplates_Emtp_EmailTemplateID] PRIMARY KEY CLUSTERED ([EmailTemplateID] ASC)
);

