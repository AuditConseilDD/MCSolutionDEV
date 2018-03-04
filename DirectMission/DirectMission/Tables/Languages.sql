CREATE TABLE [dbo].[Languages] (
    [LanguageID] SMALLINT      NOT NULL,
    [Name]       VARCHAR (100) NOT NULL,
    [Alias]      VARCHAR (100) NOT NULL,
    CONSTRAINT [PK_Languages_Lan_LanguageID] PRIMARY KEY CLUSTERED ([LanguageID] ASC)
);

