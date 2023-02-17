USE [BirdAccommodation]
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([user_id], [email], [password], [name], [address], [phone], [role], [status], [user_img], [token]) VALUES (1, N'U1@gmail.com', N'12345', N'ADMIN_CORE', N'somewhere', N'0111111111', 1, 1, NULL, NULL)
INSERT [dbo].[User] ([user_id], [email], [password], [name], [address], [phone], [role], [status], [user_img], [token]) VALUES (2, N'U2@gmail.com', N'123456', N'USER_TEST', N'somewhere', N'0111111111', 0, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[BirdType] ON 

INSERT [dbo].[BirdType] ([btype_id], [name]) VALUES (1, N'Ostrich')
INSERT [dbo].[BirdType] ([btype_id], [name]) VALUES (2, N'Cockatiel')
INSERT [dbo].[BirdType] ([btype_id], [name]) VALUES (3, N'Bald Eagle')
INSERT [dbo].[BirdType] ([btype_id], [name]) VALUES (4, N'Hummingbird')
INSERT [dbo].[BirdType] ([btype_id], [name]) VALUES (5, N'Pelican')
INSERT [dbo].[BirdType] ([btype_id], [name]) VALUES (6, N'Owl')
INSERT [dbo].[BirdType] ([btype_id], [name]) VALUES (7, N'Toucan')
INSERT [dbo].[BirdType] ([btype_id], [name]) VALUES (8, N'Flamingo')
INSERT [dbo].[BirdType] ([btype_id], [name]) VALUES (9, N'Crow')
SET IDENTITY_INSERT [dbo].[BirdType] OFF
GO
SET IDENTITY_INSERT [dbo].[Birds] ON 

INSERT [dbo].[Birds] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (1, 2, 2, 2, N'Jobb', N'green cheeked', N'Female', NULL, NULL)
INSERT [dbo].[Birds] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (2, 2, 3, 2, N'Kenny', N'normal grey', N'Male', NULL, NULL)
INSERT [dbo].[Birds] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (3, 2, 4, 2, N'Hekko', N'peached face', N'Male', NULL, NULL)
INSERT [dbo].[Birds] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (4, 2, 5, 3, N'Elest', N'blue and yellow tail', N'Female', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Birds] OFF
GO
SET IDENTITY_INSERT [dbo].[Bookings] ON 

INSERT [dbo].[Bookings] ([booking_id], [user_id], [bird_id], [date_from], [date_to], [status]) VALUES (1, 2, 1, CAST(N'2023-02-15' AS Date), CAST(N'2023-02-22' AS Date), 0)
SET IDENTITY_INSERT [dbo].[Bookings] OFF
GO
SET IDENTITY_INSERT [dbo].[DailyReport] ON 

INSERT [dbo].[DailyReport] ([dreport_id], [booking_id], [date]) VALUES (1, 1, CAST(N'2023-02-15' AS Date))
INSERT [dbo].[DailyReport] ([dreport_id], [booking_id], [date]) VALUES (2, 1, CAST(N'2023-02-16' AS Date))
INSERT [dbo].[DailyReport] ([dreport_id], [booking_id], [date]) VALUES (3, 1, CAST(N'2023-02-17' AS Date))
SET IDENTITY_INSERT [dbo].[DailyReport] OFF
GO
SET IDENTITY_INSERT [dbo].[Services] ON 

INSERT [dbo].[Services] ([service_id], [name], [description], [status], [price]) VALUES (1, N'Food and Supplies', N'Providing a variety of bird food and supplies to meet the needs of different species', 1, 200)
INSERT [dbo].[Services] ([service_id], [name], [description], [status], [price]) VALUES (2, N'Boarding', N'Providing a safe and secure environment for birds to stay while their owners are away', 1, 200)
INSERT [dbo].[Services] ([service_id], [name], [description], [status], [price]) VALUES (3, N'Grooming', N'Cleaning and caring for birds to keep their feathers in good condition', 1, 200)
INSERT [dbo].[Services] ([service_id], [name], [description], [status], [price]) VALUES (4, N'Training', N'Providing training for birds to improve their behavior and socialization skills', 1, 200)
INSERT [dbo].[Services] ([service_id], [name], [description], [status], [price]) VALUES (5, N'Play areas', N'Providing space and activities for birds to play and socialize', 1, 200)
INSERT [dbo].[Services] ([service_id], [name], [description], [status], [price]) VALUES (6, N'Enrichment activities', N'Providing activities and toys to keep birds mentally stimulated and entertained', 1, 200)
INSERT [dbo].[Services] ([service_id], [name], [description], [status], [price]) VALUES (7, N'Photography', N'Taking photographs of birds while they are staying at the accommodation to document their stay', 1, 200)
SET IDENTITY_INSERT [dbo].[Services] OFF
GO
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price]) VALUES (1, 1, 1, 200)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price]) VALUES (2, 1, 2, 200)
GO
SET IDENTITY_INSERT [dbo].[DailyReportDetail] ON 

INSERT [dbo].[DailyReportDetail] ([dreport_detail_id], [dreport_id], [bdetail_id], [service_report_image], [service_report_text]) VALUES (1, 1, 1, N'img1', N'eat')
INSERT [dbo].[DailyReportDetail] ([dreport_detail_id], [dreport_id], [bdetail_id], [service_report_image], [service_report_text]) VALUES (2, 1, 2, N'img2', N'spa')
INSERT [dbo].[DailyReportDetail] ([dreport_detail_id], [dreport_id], [bdetail_id], [service_report_image], [service_report_text]) VALUES (3, 2, 1, N'img1', N'eat')
INSERT [dbo].[DailyReportDetail] ([dreport_detail_id], [dreport_id], [bdetail_id], [service_report_image], [service_report_text]) VALUES (4, 2, 2, N'img2', N'spa')
INSERT [dbo].[DailyReportDetail] ([dreport_detail_id], [dreport_id], [bdetail_id], [service_report_image], [service_report_text]) VALUES (5, 3, 1, N'img1', N'eat')
INSERT [dbo].[DailyReportDetail] ([dreport_detail_id], [dreport_id], [bdetail_id], [service_report_image], [service_report_text]) VALUES (6, 3, 2, N'img2', N'spa')
SET IDENTITY_INSERT [dbo].[DailyReportDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[DailyFeedback] ON 

INSERT [dbo].[DailyFeedback] ([dfeedback_id], [dreport_id], [content]) VALUES (1, 1, N'good')
INSERT [dbo].[DailyFeedback] ([dfeedback_id], [dreport_id], [content]) VALUES (2, 2, N'ok')
INSERT [dbo].[DailyFeedback] ([dfeedback_id], [dreport_id], [content]) VALUES (3, 3, N'good service')
SET IDENTITY_INSERT [dbo].[DailyFeedback] OFF
GO
SET IDENTITY_INSERT [dbo].[Bills] ON 

INSERT [dbo].[Bills] ([bill_id], [booking_id], [total_ammount], [payment_status], [payment_method], [date]) VALUES (1, 1, 1500, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Bills] OFF
GO
SET IDENTITY_INSERT [dbo].[BillDetail] ON 

INSERT [dbo].[BillDetail] ([bdetail_id], [bill_id]) VALUES (1, 1)
SET IDENTITY_INSERT [dbo].[BillDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Reviews] ON 

INSERT [dbo].[Reviews] ([review_id], [user_id], [booking_id], [rating], [comment]) VALUES (1, 2, 1, 4.5, N'They bring for my bird the best service in the world!!')
SET IDENTITY_INSERT [dbo].[Reviews] OFF
GO
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([post_id], [title], [content], [referene]) VALUES (1, N'Title1', N'Content1', N'Ref1')
INSERT [dbo].[Post] ([post_id], [title], [content], [referene]) VALUES (2, N'Title2', N'Content2', N'Ref2')
INSERT [dbo].[Post] ([post_id], [title], [content], [referene]) VALUES (3, N'Title3', N'Content3', N'Ref3')
SET IDENTITY_INSERT [dbo].[Post] OFF
GO
