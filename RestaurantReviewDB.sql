CREATE TABLE [dbo].[RestaurantReview] (
    [Id]              INT            IDENTITY (1, 1) NOT NULL,
    [RestaurantId]    INT            NULL,
    [UserId]          NVARCHAR (128) NULL,
    [parkingfacility] FLOAT (53)     NULL,
    [quality_of_food] FLOAT (53)     NULL,
    [service]         FLOAT (53)     NULL,
    [cleanliness]     FLOAT (53)     NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

