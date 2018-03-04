CREATE TABLE [dbo].[ActivityTypes] (
    [ActivityTypesID] INT            NOT NULL,
    [ActivityName]    NVARCHAR (100) NOT NULL,
    CONSTRAINT [PK_ActivityTypes_ATyp_ActivityTypesID] PRIMARY KEY CLUSTERED ([ActivityTypesID] ASC)
);

