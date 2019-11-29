USE [EmployeePortal]
GO

Truncate Table Employee

/****** Object: Table [dbo].[Employee] Script Date: 11/19/2019 5:51:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Employee] (
    [Id]             INT           IDENTITY (1, 1) NOT NULL,
    [Name]           NVARCHAR (50) NOT NULL,
    [JobDescription] VARCHAR (50)  NOT NULL,
    [Number]         VARCHAR (50)  NOT NULL,
    [Department]     VARCHAR (50)  NULL
);


