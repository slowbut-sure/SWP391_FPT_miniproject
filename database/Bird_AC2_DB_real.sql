USE [BirdAccommodation]
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
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([post_id], [title], [content], [reference], [image]) VALUES (1, N'How to take care a bird', N'Caring for a bird can be a rewarding and fulfilling experience, but it also requires a lot of responsibility and commitment. Birds are social animals that need attention, care, and stimulation to thrive. In this article, we will discuss some essential tips on how to care for your bird.
', N'Ref1', NULL)
INSERT [dbo].[Post] ([post_id], [title], [content], [reference], [image]) VALUES (2, N'Title2', N'Content2', N'Ref2', NULL)
INSERT [dbo].[Post] ([post_id], [title], [content], [reference], [image]) VALUES (3, N'Title3', N'Content3', N'Ref3', NULL)
SET IDENTITY_INSERT [dbo].[Post] OFF
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image], [isHighlight], [isPack]) VALUES (1, N'Food and Supplies', N'We offer a wide range of bird food, supplements, and other supplies to ensure that your pet receives the best possible nutrition. Our knowledgeable staff can help you choose the right food and supplements for your bird''s specific needs.', 1, 200, N'bird-food.jpg', 0, 1)
INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image], [isHighlight], [isPack]) VALUES (2, N'Boarding', N'When you''re away, our bird boarding services provide a safe and comfortable environment for your pet. Our facilities are staffed 24/7, and our experienced caretakers will provide your bird with the care and attention they need.', 1, 200, N'bird-boarding.jpg', 1, 1)
INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image], [isHighlight], [isPack]) VALUES (3, N'Grooming', N'We offer bird grooming services to keep your pet looking and feeling their best. Our team of experts can help with beak and nail trimming, wing clipping, and feather maintenance.', 1, 200, N'bird-grooming.jpg', 0, 0)
INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image], [isHighlight], [isPack]) VALUES (4, N'Training', N'Our bird training services can help your pet develop important life skills and improve their behavior. We offer basic training, tricks, and socialization to help your bird reach their full potential.', 1, 200, N'bird-training.jpg', 1, 0)
INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image], [isHighlight], [isPack]) VALUES (5, N'Play areas', N'Our spacious bird play areas provide plenty of room for your pet to fly and play. Our play areas are designed to keep your bird safe and entertained.', 1, 200, N'bird-play-area.jpg', 1, 0)
INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image], [isHighlight], [isPack]) VALUES (6, N'Enrichment activities', N'Our team of experts can create bird enrichment activities to keep your pet entertained and stimulated. Our activities range from bird puzzles and games to training sessions and interactive play.', 1, 200, N'bird-wallpaper2.jpg', 0, 0)
INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image], [isHighlight], [isPack]) VALUES (7, N'Photography', N'Taking photographs of birds while they are staying at the accommodation to document their stay', 1, 200, N'bird-photography.jpg', 1, 0)
INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image], [isHighlight], [isPack]) VALUES (8, N'Bird Rescue and Rehabilitation Centers', N'Bird rescue and rehabilitation centers provide medical care and rehabilitation services for injured or sick birds. They also offer temporary accommodations for birds that cannot be released back into the wild due to their injuries.', 1, 200, N'bird-rescue.jpg', 0, 1)
INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image], [isHighlight], [isPack]) VALUES (9, N'Birdhouse Design and Installation', N'Provide birdhouse design and installation services for clients who want to build custom birdhouses that cater to the specific needs of different bird species.', 1, 200, N'bird-house-design.jpg', 0, 1)
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([user_id], [email], [password], [name], [address], [phone], [role], [status], [user_img], [token]) VALUES (6, N'thanhtd@gmail.com', N'123456', N'Truong Dinh Thanh', N'Di An', N'0838258443', 0, 1, N'avaThanh.jpg', NULL)
INSERT [dbo].[User] ([user_id], [email], [password], [name], [address], [phone], [role], [status], [user_img], [token]) VALUES (7, N'tungtp@gmail.com', N'123456', N'Truong Phuoc Tung', N'18 Nguyen Hue District 3', N'0838902344', 0, 1, N'avTung.jpg', NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[Bird] ON 

INSERT [dbo].[Bird] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (26, 6, 3, 2, N'White Eagle', N'White head eagle', 1, N'White head Eagle.jpg', N'The claws are very sharp')
INSERT [dbo].[Bird] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (27, 6, 6, 1, N'Cute Owl', N'Eurasian Eagle Owl', 0, N'Eurasian Eagle Owl.jpg', N'Very ferocious')
INSERT [dbo].[Bird] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (28, 6, 1, 3, N'Long Neck', N'African Ostrish', 1, N'African Ostrish.jpg', N'Eat so much and run very fast')
INSERT [dbo].[Bird] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (29, 6, 8, 2, N'Rhythm', N'Phoenicopteridae', 0, N'Phoenicopteridae.jpg', N'Red and white feathers')
INSERT [dbo].[Bird] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (30, 6, 9, 3, N'Black Magic', N'Black Crow', 0, N'Black Crow.jpg', N'Eat a lot and be a bit naughty')
INSERT [dbo].[Bird] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (31, 7, 3, 2, N'Speed', N'Martial Eagle', 0, N'Martial Eagle.jpg', N'Not friendly with strangers')
INSERT [dbo].[Bird] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (32, 7, 3, 1, N'Black', N'Verreaux Eagle', 1, N'Verreaux Eagle.jpg', N'Jet-black feathers')
INSERT [dbo].[Bird] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (33, 7, 3, 3, N'Luxurious', N'White-bellied eagle', 1, N'White-bellied Eagle.jpg', N'Very ferocious')
INSERT [dbo].[Bird] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (34, 7, 3, 2, N'Clumsy', N'Philippine Eagle', 1, N'Philippine Eagle.jpg', N'Quite big and eat a lot')
INSERT [dbo].[Bird] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (35, 6, 3, 2, N'Happy', N'Harpy Eagle', 1, N'Harpy Eagle.jpg', N'Very strong')
SET IDENTITY_INSERT [dbo].[Bird] OFF
GO
SET IDENTITY_INSERT [dbo].[Booking] ON 

INSERT [dbo].[Booking] ([booking_id], [user_id], [bird_id], [date_from], [date_to], [status]) VALUES (41, 6, 26, CAST(N'2023-02-14' AS Date), CAST(N'2023-02-16' AS Date), 1)
INSERT [dbo].[Booking] ([booking_id], [user_id], [bird_id], [date_from], [date_to], [status]) VALUES (42, 6, 27, CAST(N'2023-03-28' AS Date), CAST(N'2023-03-31' AS Date), 0)
INSERT [dbo].[Booking] ([booking_id], [user_id], [bird_id], [date_from], [date_to], [status]) VALUES (43, 6, 28, CAST(N'2023-04-23' AS Date), CAST(N'2023-04-25' AS Date), 2)
INSERT [dbo].[Booking] ([booking_id], [user_id], [bird_id], [date_from], [date_to], [status]) VALUES (44, 6, 29, CAST(N'2023-03-25' AS Date), CAST(N'2023-03-26' AS Date), 3)
INSERT [dbo].[Booking] ([booking_id], [user_id], [bird_id], [date_from], [date_to], [status]) VALUES (45, 7, 32, CAST(N'2023-08-01' AS Date), CAST(N'2023-08-03' AS Date), 1)
INSERT [dbo].[Booking] ([booking_id], [user_id], [bird_id], [date_from], [date_to], [status]) VALUES (46, 7, 31, CAST(N'2023-07-19' AS Date), CAST(N'2023-07-21' AS Date), 2)
INSERT [dbo].[Booking] ([booking_id], [user_id], [bird_id], [date_from], [date_to], [status]) VALUES (47, 7, 33, CAST(N'2023-09-26' AS Date), CAST(N'2023-09-28' AS Date), 2)
INSERT [dbo].[Booking] ([booking_id], [user_id], [bird_id], [date_from], [date_to], [status]) VALUES (48, 7, 34, CAST(N'2023-09-29' AS Date), CAST(N'2023-10-02' AS Date), 0)
INSERT [dbo].[Booking] ([booking_id], [user_id], [bird_id], [date_from], [date_to], [status]) VALUES (49, 6, 35, CAST(N'2023-12-11' AS Date), CAST(N'2023-12-12' AS Date), 3)
INSERT [dbo].[Booking] ([booking_id], [user_id], [bird_id], [date_from], [date_to], [status]) VALUES (50, 6, 30, CAST(N'2023-01-01' AS Date), CAST(N'2023-01-03' AS Date), 4)
SET IDENTITY_INSERT [dbo].[Booking] OFF
GO
SET IDENTITY_INSERT [dbo].[Bill] ON

INSERT [dbo].[Bill] ([bill_id], [booking_id], [total_service_amount], [payment_status], [payment_method], [checkout_date], [checkout_img]) VALUES (21, 41, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([bill_id], [booking_id], [total_service_amount], [payment_status], [payment_method], [checkout_date], [checkout_img]) VALUES (22, 42, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([bill_id], [booking_id], [total_service_amount], [payment_status], [payment_method], [checkout_date], [checkout_img]) VALUES (23, 43, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([bill_id], [booking_id], [total_service_amount], [payment_status], [payment_method], [checkout_date], [checkout_img]) VALUES (24, 44, 1600, 1, N'0', CAST(N'2023-03-26' AS Date) , N'Phoenicopteridae Bill.jpg')
INSERT [dbo].[Bill] ([bill_id], [booking_id], [total_service_amount], [payment_status], [payment_method], [checkout_date], [checkout_img]) VALUES (25, 45, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([bill_id], [booking_id], [total_service_amount], [payment_status], [payment_method], [checkout_date], [checkout_img]) VALUES (26, 46, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([bill_id], [booking_id], [total_service_amount], [payment_status], [payment_method], [checkout_date], [checkout_img]) VALUES (27, 47, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([bill_id], [booking_id], [total_service_amount], [payment_status], [payment_method], [checkout_date], [checkout_img]) VALUES (28, 48, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([bill_id], [booking_id], [total_service_amount], [payment_status], [payment_method], [checkout_date], [checkout_img]) VALUES (29, 49, 1800, 1, N'1', CAST(N'2023-03-26' AS Date), N'Harpy Eagle Bill.jpg')
INSERT [dbo].[Bill] ([bill_id], [booking_id], [total_service_amount], [payment_status], [payment_method], [checkout_date], [checkout_img]) VALUES (30, 50, 0, 0, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Bill] OFF
GO
SET IDENTITY_INSERT [dbo].[BookingDetail] ON 

INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (207, 41, 1, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (208, 41, 2, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (209, 41, 8, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (210, 41, 9, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (211, 41, 4, 200, 2, 2)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (212, 41, 5, 200, 1, 1)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (213, 41, 7, 200, 2, 2)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (214, 42, 1, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (215, 42, 2, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (216, 42, 8, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (217, 42, 9, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (218, 42, 3, 200, 1, 1)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (219, 42, 4, 200, 2, 2)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (220, 42, 5, 200, 1, 1)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (221, 43, 1, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (222, 43, 2, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (223, 43, 8, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (224, 43, 9, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (225, 43, 5, 200, 2, 1)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (226, 43, 6, 200, 2, 1)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (227, 43, 7, 200, 2, 1)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (228, 44, 2, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (229, 44, 1, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (230, 44, 8, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (231, 44, 9, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (232, 44, 4, 200, 2, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (233, 44, 7, 200, 2, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (234, 45, 1, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (235, 45, 2, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (236, 45, 8, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (237, 45, 9, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (238, 45, 3, 200, 1, 1)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (239, 45, 4, 200, 1, 1)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (240, 45, 5, 200, 1, 1)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (241, 45, 6, 200, 1, 1)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (242, 45, 7, 200, 1, 1)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (243, 46, 1, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (244, 46, 2, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (245, 46, 8, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (246, 46, 9, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (247, 46, 3, 200, 2, 1)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (248, 46, 4, 200, 2, 1)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (249, 46, 5, 200, 2, 1)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (250, 46, 7, 200, 2, 1)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (251, 47, 1, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (252, 47, 2, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (253, 47, 8, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (254, 47, 9, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (255, 47, 3, 200, 2, 1)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (256, 47, 4, 200, 2, 1)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (257, 47, 5, 200, 2, 1)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (258, 47, 6, 200, 1, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (259, 47, 7, 200, 2, 1)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (260, 48, 1, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (261, 48, 2, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (262, 48, 8, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (263, 48, 9, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (264, 48, 3, 200, 2, 2)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (265, 48, 4, 200, 2, 2)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (266, 48, 5, 200, 2, 2)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (267, 48, 6, 200, 2, 2)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (268, 49, 1, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (269, 49, 2, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (270, 49, 8, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (271, 49, 9, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (272, 49, 3, 200, 1, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (273, 49, 4, 200, 1, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (274, 49, 5, 200, 1, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (275, 49, 6, 200, 1, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (276, 49, 7, 200, 1, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (277, 50, 1, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (278, 50, 2, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (279, 50, 8, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (280, 50, 9, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (281, 50, 3, 200, 2, 2)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (282, 50, 4, 200, 2, 2)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (283, 50, 5, 200, 2, 2)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (284, 50, 6, 200, 2, 2)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (285, 50, 7, 200, 2, 2)
SET IDENTITY_INSERT [dbo].[BookingDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[DailyReport] ON 

INSERT [dbo].[DailyReport] ([dreport_id], [booking_id], [date], [service_report_text], [feedback_content]) VALUES (183, 43, CAST(N'2023-03-25' AS Date), N'Good Bird', N'Oke Thanks')
INSERT [dbo].[DailyReport] ([dreport_id], [booking_id], [date], [service_report_text], [feedback_content]) VALUES (184, 44, CAST(N'2023-03-26' AS Date), N'Beautiful Bird', N'Haha Thanks')
INSERT [dbo].[DailyReport] ([dreport_id], [booking_id], [date], [service_report_text], [feedback_content]) VALUES (185, 47, CAST(N'2023-03-26' AS Date), N'Very good bird', N'Thanks')
INSERT [dbo].[DailyReport] ([dreport_id], [booking_id], [date], [service_report_text], [feedback_content]) VALUES (186, 46, CAST(N'2023-03-26' AS Date), N'Nice', N'')
INSERT [dbo].[DailyReport] ([dreport_id], [booking_id], [date], [service_report_text], [feedback_content]) VALUES (187, 49, CAST(N'2023-03-26' AS Date), N'Fully taken care of', N'Nice Thanks')
SET IDENTITY_INSERT [dbo].[DailyReport] OFF
GO
SET IDENTITY_INSERT [dbo].[Review] ON 
INSERT [dbo].[Review] ([review_id], [user_id], [booking_id], [rating], [comment], [isGood]) VALUES (4, 6, 44, 5, N'Good care facility, dedicated and friendly staff', 1)
INSERT [dbo].[Review] ([review_id], [user_id], [booking_id], [rating], [comment], [isGood]) VALUES (5, 6, 49, 5, N'Good care service', 1)
SET IDENTITY_INSERT [dbo].[Review] OFF
GO
SET IDENTITY_INSERT [dbo].[DailyReportImage] ON 

INSERT [dbo].[DailyReportImage] ([dr_image_id], [dreport_id], [service_report_image]) VALUES (53, 183, N'African Ostrish Report.jpg')
INSERT [dbo].[DailyReportImage] ([dr_image_id], [dreport_id], [service_report_image]) VALUES (54, 184, N'Phoenicopteridae Report.jpg')
INSERT [dbo].[DailyReportImage] ([dr_image_id], [dreport_id], [service_report_image]) VALUES (55, 185, N'White-bellied Eagle Report.jpg')
INSERT [dbo].[DailyReportImage] ([dr_image_id], [dreport_id], [service_report_image]) VALUES (56, 186, N'Martial Eagle Report.jpg')
INSERT [dbo].[DailyReportImage] ([dr_image_id], [dreport_id], [service_report_image]) VALUES (57, 187, N'Harpy Eagle Report.jpg')
SET IDENTITY_INSERT [dbo].[DailyReportImage] OFF
GO