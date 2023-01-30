CREATE DATABASE ps15975_NguyenDangPhat_asm_java5
GO
USE [ps15975_NguyenDangPhat_asm_java5]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[accounts](
	[username] [varchar](255) NOT NULL,
	[activated] [bit] NOT NULL,
	[admin] [bit] NOT NULL,
	[email] [varchar](255) NULL,
	[fullname] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[photo] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[categories]    Script Date: 6/14/2021 1:28:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[categories](
	[id] [varchar](255) NOT NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[orderdetails]    Script Date: 6/14/2021 1:28:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderdetails](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[orderid] [bigint] NULL,
	[productid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[orders]    Script Date: 6/14/2021 1:28:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[orders](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[address] [varchar](255) NULL,
	[createdate] [date] NULL,
	[username] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[products]    Script Date: 6/14/2021 1:28:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[available] [bit] NULL,
	[createdate] [date] NULL,
	[image] [varchar](255) NULL,
	[name] [Nvarchar](255) NULL,
	[price] [float] NULL,
	[categoryid] [varchar](255) NULL,
	[describe] [nvarchar](4000) NULL,
	[loaihang] [nvarchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[accounts] ([username], [activated], [admin], [email], [fullname], [password], [photo]) VALUES (N'admin', 1, 1, N'phatndps15970@fpt.edu.vn', N'admin', N'admin', N'admin.jpg')
INSERT [dbo].[accounts] ([username], [activated], [admin], [email], [fullname], [password], [photo]) VALUES (N'tuan', 1, 0, N'tuan@gmail.com', N'tuan', N'123', N'tuan.jpg')
INSERT [dbo].[accounts] ([username], [activated], [admin], [email], [fullname], [password], [photo]) VALUES (N'khanh', 0, 0, N'khanh@gmail.com', N'khanh', N'123', N'khanh.jpg')
INSERT [dbo].[accounts] ([username], [activated], [admin], [email], [fullname], [password], [photo]) VALUES (N'tu', 1, 0, N'tu@gmail.com', N'tu', N'123', N'tu.jpg')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'1', N'Quan')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'2', N'Áo')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'3', N'Áo khoác')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'4', N'Giày')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'5', N'Túi xách')
SET IDENTITY_INSERT [dbo].[orderdetails] ON 

INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (1, 25000, 2, 4, 1)
SET IDENTITY_INSERT [dbo].[orderdetails] OFF
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (1, N'TP.HCM', CAST(N'2021-06-06' AS Date), N'tuan')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (2, N'Gia Lai', CAST(N'2021-08-06' AS Date), N'tu')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (3, N'TP.HCM', CAST(N'2021-09-06' AS Date), N'tu')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (4, N'123', CAST(N'2021-06-11' AS Date), N'tuan')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (5, N'123', CAST(N'2021-06-11' AS Date), N'tuan')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (6, N'123', CAST(N'2021-06-12' AS Date), N'tuan')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (7, N'123', CAST(N'2021-06-13' AS Date), N'tuan')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (8, N'123', CAST(N'2021-06-13' AS Date), N'tuan')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (9, N'123', CAST(N'2021-06-13' AS Date), N'admin')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (10, N'123', CAST(N'2021-06-13' AS Date), N'tuan')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (11, N'123', CAST(N'2021-06-13' AS Date), N'tuan')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (12, N'123', CAST(N'2021-06-13' AS Date), N'tuan')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (13, N'123', CAST(N'2021-06-13' AS Date), N'khanh')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (14, N'123', CAST(N'2021-06-13' AS Date), N'tuan')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (15, N'123', CAST(N'2021-06-13' AS Date), N'khanh')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (16, N'123', CAST(N'2021-06-14' AS Date), N'Khanh')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (17, N'123', CAST(N'2021-06-14' AS Date), N'tuan')
SET IDENTITY_INSERT [dbo].[orders] OFF
SET IDENTITY_INSERT [dbo].[products] ON 

INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid],[describe],[loaihang]) VALUES (1, 1, CAST(N'2000-01-01' AS Date), N'1.jpg', N'Cùng chung tay giúp đỡ cô giáo cấp 1 từ bỏ nghề bởi di chứng sốt bại liệt ', 3986000, N'2',N'
Cô Đặng Thị Tâm sinh năm 1950, từng là giáo viên dạy cấp 1. Giọng người Hà Nội dịu dàng, trầm ấm đã từng đọc biết bao bài văn, dạy biết bao điều tốt đẹp cho thế hệ học trò. Cô Tâm chẳng ngờ rằng, sẽ có ngày mình lại lâm vào tình cảnh trớ trêu khi đi khám ở bệnh viện.

Cô Tâm từng bị sốt bại liệt khi còn nhỏ khiến hai chân cô đi lại bất tiện. Sau này, cô cũng vì nó mà ngừng sự nghiệp giảng dạy. Nỗi nhớ nghề khiến cô Tâm luôn đau đáu. Khi cô đi bệnh viện khám khối u ở ngực. Chân đi chập chững, ngực đau nhói nhưng không đau đớn bằng việc cô bị người khác chế giễu khi tập tễnh từng bước xếp hàng chờ khám.
Rời bục giảng, cô làm giúp việc để mưu sinh. Cô phải sống cô độc trong căn nhà trọ. Mọi gánh nặng đè lên đôi vai cô. Nhất là khi cô mắc thêm căn bệnh u vú, phải thăm khám và thuốc men thường xuyên. Tiền trọ hàng tháng, tiền ăn hàng ngày khiến cô không thể nào kham nổi.

Cũng từ đó, cô Tâm bước vào mái ấm Sài Gòn Bao Dung sống những ngày tháng hạnh phúc nhất của đời mình.
Cô Tâm không nghĩ rằng cuối đời mình có thể sống được những ngày tháng tươi đẹp như vậy. Nơi này, cô có bạn bè tri kỷ cùng đối thơ, cùng đố nhau về hằng đẳng thức đáng nhớ. Cô từ một người tứ cố vô thân, đã có thêm những anh hai, chị hai, chị ba… cùng ăn, cùng nghỉ, cùng đi dạo mát… Niềm hạnh phúc to lớn ấy đã khiến cô phải thốt lên xúc động rằng: “Tôi nguyện ở đây cho tới chết!”


Tuy nhiên, để làm được điều này, Trăng Khuyết rất mong có thêm kinh phí để cho cô Tâm có thể duy trì sức khỏe vượt qua bệnh tật, để vui khỏe cùng những người bạn già nơi đây. Để tiếp thêm hy vọng cho cô Đặng Thị Tâm, Trăng Khuyết cùng Ví MoMo kêu gọi số tiền khám chữa bệnh tim cho cô là 30.000.000 VNĐ thông qua cộng đồng các nhà hảo tâm, các mạnh thường quân. 

Người hạnh phúc nhất chính là người có cơ hội được cho đi. Rất mong các mạnh thường quân, các nhà hảo tâm sẽ đồng hành cùng chương trình quyên góp lần này của MoMo và Trăng Khuyết hỗ trợ cho những số phận đơn chiếc. Dù đóng góp nào cũng đều đáng quý, cùng là tình yêu thương đong đầy của của cô chú, anh chị dành cho các cụ già neo đơn.

*Sau khi hoàn tất chiến dịch kêu gọi đóng góp, MoMo sẽ chuyển toàn bộ số tiền 30.000.000 đồng đã gây quỹ gửi đến Quỹ Từ Thiện & BTXH Trăng Khuyết hỗ trợ chi phí khám chữa bệnh cho cô Tâm Chúng tôi sẽ cập nhật thêm thông tin về tiến độ dự án đến Quý vị trong thời gian sớm nhất.   ',N'Từng ước mơ và ấp ủ nhiều hoài bão, cô Tâm rời khỏi bục giảng bởi di chứng của sốt bại liệt. Cô Tâm rất cần sự giúp đỡ kinh phí khám chữa bệnh, thuốc men')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid],[describe],[loaihang]) VALUES (2, 1, CAST(N'2000-01-01' AS Date), N'2.jpg', N'Chung tay giúp những ngày cuối đời của thầy giáo Lưu Mạc Phong giảm bớt nỗi lo từ bệnh tật', 4851000, N'2',N'Cuộc sống ngặt nghèo của người thầy giáo

Thầy Lưu Mạc Phong, sinh 1962, dọn về quán trọ Trăng Khuyết sau trận bệnh nặng, đột quỵ và viêm phổi. Trong lúc làm bảo vệ ở một cửa hàng thời trang, thầy Phong đột ngột ngưng thở, ngã khuỵu trước cửa hàng. Thầy được đưa vào bệnh viện 115 cấp cứu. Suốt 2 tuần nằm viện, tiền lương, tiền dành dụm bao năm qua của thầy đã chi trả cho đợt chữa trị đó. 

Sức khỏe không đủ, thầy nghỉ việc bảo vệ, nhà trọ cũng bị công ty lấy lại, không nhà, không tiền, không kế sinh nhai. Cuộc sống ngặt nghèo bủa vây. Trước đây, thầy từng lập gia đình nhưng hôn nhân đổ vỡ, con trai sống cùng mẹ. Một mình thầy lang bạt khắp nơi.
Chẳng ai ngờ rằng người đàn ông gầy gò, xanh xao ấy từng là thầy giáo cấp 1. Đôi bàn tay gân guốc ấy từng ân cần dạy biết bao thế hệ học trò. Nét chữ mạnh mẽ, dứt khoát như nết người kiên cường, tận tụy của thầy Phong. Trong ánh mắt của thấy, vẫn còn ánh lên niềm vui và niềm tự hào khi nhắc về những tháng ngày đứng trên bục giảng.

Đáng tiếc rằng thầy lại không thể nắn nót cuộc đời mình tươi đẹp hơn.

Chung tay hỗ trợ chi phí khám chữa bệnh cho thầy Phong

Sau cơn bạo bệnh, sức khỏe của thầy sa sút hẳn, di chứng để lại thầy không thể làm việc nặng, đi tới đi lui nhiều cũng khó thở bởi không đủ oxy cấp lên phổi. Thầy tiếp tục nhập viện mấy lần nhưng thầy chẳng có gì ngoài cơ thể suy nhược. Trăng Khuyết đã tìm tới thầy trong hoàn cảnh mà khi bệnh viện cho xuất viện, cũng không biết đưa thầy đi đâu về đâu. Ngày thầy vào Quán trọ Trăng Khuyết tại Quận 12, gương mặt hốc hác, thất thần. Nhưng sau những tháng ngày không có chốn đi về, thầy Phong dần hòa nhập và sống vui vẻ bên cạnh những người bạn già của mình. Thầy đọc sách, ngâm thơ, luyện chữ… và chia sẻ về tâm huyết làm nghề giáo của mình “Phạt học trò đau một, thầy cô lại đau tới mười!”

Một người thầy đã từng nhiệt huyết với nghề giáo, giúp bao thế hệ sang sông, vẫn còn ưu tư những khi thăm khám, thuốc men đều đặn bởi di chứng để lại. Vì vậy Quỹ Trăng Khuyết kết hợp cùng Ví MoMo kêu gọi các mạnh thường quân chung tay quyên góp 30.000.000 đồng để góp thêm một phần chi phí giúp cho người thầy vượt qua những ngày khó khăn phía trước. Cuộc sống muôn màu muôn vẻ, bên cạnh những người hạnh phúc thì không thiếu những người bi thương. Chính vì lí do đó mà cuộc sống cần phải có sự sẻ chia, tương trợ lẫn nhau. Rất mong các mạnh thường quân, các nhà hảo tâm sẽ đồng hành cùng chương trình quyên góp lần này của MoMo và Trăng Khuyết hỗ trợ cho những số phận đơn chiếc. Dù đóng góp nào cũng đều đáng quý, cùng là tình yêu thương đong đầy của của cô chú, anh chị dành cho các cụ già neo đơn.

*Sau khi hoàn tất chiến dịch kêu gọi đóng góp, MoMo sẽ chuyển toàn bộ số tiền 30.000.000 đồng đã gây quỹ gửi đến Quỹ Từ Thiện & BTXH Trăng Khuyết hỗ trợ chi phí khám chữa bệnh cho thầy Phong. Chúng tôi sẽ cập nhật thêm thông tin về tiến độ dự án đến Quý vị trong thời gian sớm nhất.',N'Từng là thầy giáo rèn chữ cho biết bao thế hệ, nhưng thầy Phong lại chẳng thể nắn nót cuộc đời mình trở nên đẹp đẽ hơn. Cùng chung tay hỗ trợ kinh phí khám chữa bệnh cho thầy Phong.')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid],[describe],[loaihang]) VALUES (3, 1, CAST(N'2000-01-01' AS Date), N'3.jpg', N'Chung tay hỗ trợ chi phí giúp ông Chương hồi phục sức khỏe sau đại dịch covid-19', 60000, N'2',N'Mất tất cả sau đại dịch

Sau 1 năm, khi tất cả mọi người đã dần chấp nhận sống chung với đại dịch Covid - 19. Dù vậy nỗi đau mà những người còn ở lại thì vẫn chưa thể nguôi ngoai. Ông Lê Hùng Chương sinh 1942 là một trong những hoàn cảnh đáng thương đã mất tất cả sau đại dịch.Chỉ trong thời gian ngắn ngủi, ông mất đi vợ con của mình. Tuy ông may mắn hơn, nhưng sức khỏe cùng kiệt khiến ông không thể nào tiếp tục công việc bảo vệ tại cửa hàng. Không còn người thân, ông sống cô độc tại phòng trọ. Khốn khổ khi tuổi già, thất nghiệp, ông Chương không tiền đóng trọ, không biết xoay sở thế nào để có được bữa ăn qua ngày. Gương mặt hiền hậu ấy càng hằn sâu những nỗi lo toan, vất vả cho những ngày tháng sau này. Những nỗi lo âm thầm

Sau khi được về sống ở mái ấm Sài Gòn Bao Dung, ông Chương vẫn cố gắng dùng công sức của mình để đóng góp cho những hoạt động ở mái ấm.Thương thân mình nên nghĩ thương đến những người bạn già. Dù người gầy gò, ốm yếu nhưng ông vẫn hăng hái giúp đỡ quản lý không gian trong ngoài mái ấm, hỗ trợ những cụ già có sức khỏe yếu hơn ông để đưa đi khám,... Thế nhưng, trong cơ thể nhỏ bé đầy nghị lực ấy, là một lá phổi đã hư tổn, và một trái tim đang chống chọi với bệnh tật. Trăng Khuyết rất đồng cảm trước những mất mát của ông, càng lo lắng cho sức khỏe của ông Chương ở thời điểm hiện tại. Trăng Khuyết mong rằng sẽ có thêm kinh phí để có thể hỗ trợ ông Chương khám chữa bệnh và nâng cao sức khỏe, để ông có thể giúp đỡ những người bạn già kém may mắn hơn mình. Để tiếp thêm hy vọng cho ông, Trăng khuyết kêu gọi số tiền khám chữa bệnh tim là 30.000.000VNĐ thông qua Trái Tim MoMo. Rất mong các mạnh thường quân, các nhà hảo tâm sẽ đồng hành cùng chương trình quyên góp lần này của MoMo và Trăng Khuyết hỗ trợ cho những số phận đơn chiếc. Dù đóng góp nào cũng đều đáng quý, cùng là tình yêu thương đong đầy của của cô chú, anh chị dành cho các cụ già neo đơn.

Cuộc sống muôn màu muôn vẻ, bên cạnh những người hạnh phúc thì không thiếu những người bi thương. Chính vì lý do đó mà cuộc sống cần phải có sự sẻ chia, tương trợ lẫn nhau. ',N'Cùng chung tay hỗ trợ chi phí chăm sóc sức khỏe cho ông Chương, để những ngày tháng cuối đời ông được sống yên bình tại mái ấm')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid],[describe],[loaihang]) VALUES (4, 1, CAST(N'2000-01-01' AS Date), N'4.jpg', N'Chung tay quyên góp kinh phí khám chữa bệnh để gìn giữ trái tim cụ Nhung - linh hồn của bếp ăn Quán trọ Trăng Khuyết', 78000, N'2',N'Trước cổng quán trọ Trăng Khuyết quận 12, có một người phụ nữ đã ngoài 70 đang quét vội những mảnh rác còn vất vưởng ngoài sân để còn chuẩn bị bữa trưa cho các cụ già nơi đây. Thấy cụ cặm cụi vo gạo, nhặt rau, đun nước nấu cơm cho các cụ, thật không khỏi thương cảm cho những mảnh đời neo đơn nơi này! 

Chạnh lòng phận neo đơn…

Đáng lẽ ở cái tuổi 74, cụ Nguyễn Thị Nhung phải được quây quần, được sum vầy bên con cháu người thân, thì cụ lại phải sống lủi thủi, một mình ở đây. Đằng sau đôi bàn tay đã hằn đầy vết chai sạn này là câu chuyện về cuộc đời cụ.Tuổi trẻ bon chen nơi xứ người, cực khổ làm thuê, giúp việc chỉ mong kiếm từng đồng tiền về gửi cho cha mẹ, lo cho em út. Chưa một lần màng đến hạnh phúc riêng của bản thân, vì vậy ở cái tuổi này rồi nhưng cụ chưa một lần lập gia đình. 

“Đi đâu người ta cũng thương cụ hết á con. Về đây cụ cũng không nói cho ai biết, sợ mọi người lại lo lắng” - cụ Nhung ngậm ngùi chia sẻ. Cụ có hai người em, nhưng gia cảnh cũng chẳng khấm khá gì. Cụ âm thầm đến với quán trọ Trăng Khuyết cũng bởi vì không muốn phiền đến gia đình em. 

Quán trọ như là điểm tựa thứ hai của cuộc đời cụ sau khi ba mẹ mất. Căn bếp của cụ Nhung cũng chính là sợi dây vô hình kết nối các cụ già ở quán trọ với nhau. Những bữa cơm ngon đều do một tay cụ đảm nhận. Mọi người ăn xong cụ cũng chính là người dọn dẹp và rửa chén. Mỗi ngày của cụ đều trôi qua một cách vui vẻ bằng sự nhẫn nại, quan tâm và chăm sóc những người già ốm yếu hơn mình. Dẫu không có con cháu, những người bạn già neo đơn ở đây chính là niềm an ủi cuối đời của cụ NhungNhưng có một sự thật đau lòng…

Mỗi cụ già khi tìm về với Trăng Khuyết, đều là những người đã đường cùng, bí lối. Ai cũng có những câu chuyện cay đắng về cuộc đời, và ít nhiều đều mang trong mình những căn bệnh của tuổi già. Và cụ Nhung cũng không ngoại lệ. Những hôm mệt mỏi, cụ lại phải ngửa mặt lên trời cho dễ thở bởi căn bệnh tim và những hôm đau nhức tay chân liên tục bởi bệnh khớp. Vì vậy Quỹ từ thiện & BTXH Trăng Khuyết đã đồng hành cùng MoMo kêu gọi số tiền 20.000.000 đồng để chăm lo tiền khám chữa bệnh và thuốc men cho cụ Nhung. Đằng sau mỗi ánh mắt, mỗi nụ cười của cụ Nhung đều là những nỗi niềm không biết chia sẻ cùng ai. Chỉ mong nhận được sự hỗ trợ của các mạnh thường quân và các nhà hảo tâm để cuộc sống của cụ bớt phần hiu quạnh, cụ độc. Yêu thương được lớn lên từ sự sẻ chia. Mọi đóng góp dù nhỏ hay lớn đều rất đáng quý đối với cụ Nhung, Trăng Khuyết vô cùng biết ơn.

*Sau khi hoàn tất chiến dịch kêu gọi đóng góp, MoMo sẽ chuyển toàn bộ số tiền 20.000.000 đồng đã gây quỹ gửi đến Quỹ Từ Thiện & BTXH Trăng Khuyết hỗ trợ chi phí khám chữa bệnh và thuốc men cho cụ Nhung. Chúng tôi sẽ cập nhật thêm thông tin về tiến độ dự án đến Quý vị trong thời gian sớm nhất.   ',N'Đằng sau đôi bàn tay đầy chai sạn ấy là một cuộc đời đầy cụ độc của cụ Nhung. Hãy cùng chung tay giúp cụ Nhung có kinh phí khám chữa bệnh và thuốc men.')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid],[describe],[loaihang]) VALUES (5, 1, CAST(N'2000-01-01' AS Date), N'5.jpg', N'Góp Heo Vàng hỗ trợ chi phí phẫu thuật cho 20 em nhỏ mắc bệnh tim bẩm sinh dịp Tết Đoàn Viên', 86000, N'1',N'Để trẻ em nghèo mắc bệnh tim bẩm sinh có một cái Tết đoàn viên

Tiếp nối hành trình mang đến cơ hội phẫu thuật tim miễn phí cho trẻ em nghèo trên khắp Việt Nam trong năm 2023, Nhịp tim Việt Nam triển khai chiến dịch gây quỹ Tết đoàn viên nhằm hỗ trợ chi phí phẫu thuật tim bẩm sinh cho các em nhỏ có hoàn cảnh khó khăn trong dịp đầu năm mới. 

Nhịp tim Việt Nam là chương trình hỗ trợ chi phí phẫu thuật tim cho trẻ em nghèo dưới 18 tuổi ở Việt Nam. Ước tính cứ 100 trẻ em sinh ra mỗi năm, có 1 em mắc bệnh tim bẩm sinh; theo thống kê tại Việt Nam hiện có hàng ngàn trẻ em đang chờ để được phẫu thuật tim. Với những gia đình có hoàn cảnh nghèo, khó khăn và nhất là từ vùng sâu vùng xa, việc chăm sóc cho một em nhỏ mắc bệnh tim là một gánh nặng kinh tế to lớn bởi hàng loạt những chi phí thuốc men, khám sức khỏe định kỳ và nhập viện, chưa kể đến chi phí phẫu thuật tim khổng lồ.Thông qua kênh quyên góp của MoMo,  Nhịp tim Việt Nam đặt mục tiêu quyên góp 3.625.000 Heo Vàng từ cộng đồng Heo Đất MoMo, số Heo Vàng sẽ được Nhịp tim Việt Nam quy đổi với 580.000.000 VNĐ, tương ứng chi phí phẫu thuật tim bẩm sinh cho 20 trẻ em nghèo để giúp các em có một trái tim khỏe mạnh và tương lai tươi sáng hơn. Để làm được điều đó, Nhịp tim Việt Nam kêu gọi sự chung tay của cộng đồng thông qua kênh quyên góp MoMo. Mỗi sự đóng góp dù lớn hay nhỏ đều có ý nghĩa vô cùng to lớn giúp cứu sống các em nhỏ và thay đổi cuộc đời các em mãi mãi! 100% các khoản đóng góp qua MoMo sẽ hoàn toàn dùng để chi trả chi phí phẫu thuật tim cho trẻ em.

*Sau khi hoàn tất chiến dịch kêu gọi đóng góp, số Heo Vàng quy đổi thành 580.000.000 và sẽ được dự án Nhịp Tim Việt Nam sử dụng để tiến hành phẫu thuật tim cho 20 trẻ em nghèo. Chúng tôi sẽ cập nhật thêm thông tin về tiến độ dự án đến Quý vị trong thời gian sớm nhất.

Về Nhịp tim Việt Nam
Nhịp tim Việt Nam (NTVN) là chương trình hỗ trợ chi phí phẫu thuật tim cho trẻ em nghèo dưới 18 tuổi ở Việt Nam. Đến tháng 12/2022, sau 16 năm hoạt động, Nhịp tim Việt Nam đã hỗ trợ hơn 9.600 ca phẫu thuật tim cho trẻ em trên toàn Việt Nam và nỗ lực của chương trình là tiếp tục sứ mệnh giúp các bé nghèo được chữa trị kịp thời để không còn một em nào phải chết đi vì chờ đợi phẫu thuật nữa.

Kể từ khi bắt đầu hợp tác với MoMo vào năm 2019, đến chiến dịch T9-2022 | Hưởng ứng Ngày Tim mạch Thế giới chung tay hỗ trợ chi phí phẫu thuật tim bẩm sinh cho trẻ em nghèo, Nhịp tim Việt Nam (NTVN) - VinaCapital Foundation (VCF) đã nhận được tổng nguồn hỗ trợ là 2,260,000,000 đồng giúp 85 em nhỏ mắc dị tật tim bẩm sinh, trong đó 78 ca được giúp chi phí phẫu thuật tim, 5 ca nhận được trợ cấp sau phẫu thuật và 2 ca nhận được laptop hỗ trợ học trực tuyến.',N'Cùng Nhịp Tim Việt Nam gây quỹ hỗ trợ chi phí phẫu thuật tim bẩm sinh để trẻ em nghèo có một cái Tết trọn vẹn hơn')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid],[describe],[loaihang]) VALUES (6, 1, CAST(N'2000-01-01' AS Date), N'6.jpg', N'Góp Heo Vàng cùng Công ty Thành Đạt để xây dựng điểm trường thôn Đề Bâu, tỉnh Điện Biên', 40000, N'1',N'Những khó khăn về đời sống kinh tế khiến cho việc học tập của các em nhỏ còn nhiều trở ngại

Xã Trung Thu, huyện Tủa Chùa, tỉnh Điện Biên là một xã hữu ngạn sông Nậm Mức, với địa hình chủ yếu là đồi núi cao, đan xen với thung lũng. Đây là một trong những xã đặc biệt khó khăn của huyện Tủa Chùa (đây là huyện nghèo của cả nước theo Nghị quyết 30a). Xã có diện tích tự nhiên trên 53 km2, dân số trên 2.700 nhân khẩu chủ yếu là đồng bào người dân tộc Mông. Nơi đây có điều kiện tự nhiên, thiên nhiên khó khăn, khắc nghiệt. Diện tích đất sản xuất ít, bạc màu, chủ yếu là đá tai mèo; mùa mưa đường lầy lội, trơn trượt; mùa đông lạnh giá, nhiều sương muối, đôi khi nhiệt độ xuống dưới 0 độ C; nhiều tháng trong năm thiếu nước trầm trọng do ở vùng cao, nhiều núi đá. Hầu hết người dân trên địa bàn sống dựa vào nông nghiệp với các cây trồng chủ lực như: lúa, ngô, lạc, đậu tương, Su su, khoai sọ, bí, chanh leo và những loại cây mới như dâu tây, măng tây. Thống kê năm 2021, thu nhập bình quân đầu người của xã đạt gần 20 triệu/ người/ năm, tỷ lệ hộ nghèo và cận nghèo cao chiếm trên 80%.Trường Mầm non Trung Thu đóng trên địa bàn thôn Trung Thu, xã Trung Thu, huyện Tủa Chùa, tỉnh Điện Biên được thành lập từ năm 2008. Trường có 7 điểm trường lẻ, trong đó điểm trường xa nhất cách trung tâm xã tới 17 km. Năm học 2022-2023, trường có 16 nhóm lớp với 358 cháu bao gồm: 4 nhóm nhà trẻ với 89 cháu, 12 lớp mẫu giáo 269 cháu.Chung tay xây lớp học mới, tiếp bước cho các em đến trường

Trong số 7 điểm trường thuộc trường Mầm non Trung Thu có điểm trường Đề Bâu đặc biệt khó khăn về cơ sở vật chất. Khoảng cách từ trung tâm đến điểm trường Đề Bâu khoảng 17km. Đây là nơi theo học của 41 trẻ gồm 13 trẻ 3 tuổi, 12 trẻ 4 tuổi và 16 trẻ 5 tuổi. Điểm trường đã có được gần 10 năm, thế nhưng cho tới nay, các em học sinh vẫn học trong phòng học dựng tạm hoặc đi mượn. Không chỉ vậy điểm trường còn chưa có điện và còn thiếu nguồn nước sinh hoạt để đảm bảo việc học tập của các em học sinh cũng như việc bám trường bám lớp của các thầy cô giáo. Dù biết bất cập là thế, nhưng do đời sống kinh tế của người dân trong xã còn nhiều khó khăn nên việc đóng góp kinh phí xây dựng trường còn hạn chế. ',N'Trong số 7 điểm trường thuộc trường Mầm non Trung Thu có điểm trường Đề Bâu đặc biệt khó khăn về cơ sở vật chất. Khoảng cách từ trung tâm đến điểm trường Đề Bâu khoảng 17km. Đây là nơi theo học của 41 trẻ gồm 13 trẻ 3 tuổi, 12 trẻ 4 tuổi và 16 trẻ 5 tuổi.')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid],[describe],[loaihang]) VALUES (7, 1, CAST(N'2000-01-01' AS Date), N'7.jpg', N'Góp Heo Vàng xây dựng điểm trường bản Đông Liếng, tỉnh Điện Biên cùng KTO', 77000, N'1',N'Trường lớp xuống cấp trầm trọng ở điểm trường bản Liếng

Xã Mường Thín là một xã miền núi đặc biệt khó khăn nằm ở phía Tây Nam, huyện Tuần Giáo của tỉnh Điện Biên. Xã cách trung tâm thị trấn 16 km, có diện tích khoảng 60,96 km². Toàn xã có 576 hộ, gần 3.000 nhân khẩu, với 3 dân tộc Kinh, Thái, Mông sinh sống trong đó hơn 80% là đồng bào người Thái. Xã gồm 11 thôn trong đó có bản Liếng – là một xã thuộc diện đặc biệt khó khăn. Nằm khá xa khu trung tâm huyện và các trục đường lớn nên người dân trên địa bàn xã Mường Thín chủ yếu sống dựa vào sản xuất nông - lâm nghiệp và chăn nuôi. Các cây trồng chủ lực của xã là: Lúa nước, ngô, sắn, lạc, đậu tương, hoa màu, cao su, trồng rừng. Bản Liếng có 78 hộ dân với 366 nhân khẩu, chủ yếu là đồng bào người dân tộc H’Mông cùng nhau sinh sống. Do nằm ở vùng sâu xa, đi lại khó khăn vì thế người dân nơi đây chưa có nhiều cơ hội tiếp cận với nền giáo dục tiên tiến. Có lẽ đó cũng chính là lý do khiến trình độ dân trí của họ còn hạn chế. Người dân ở đây làm kinh tế chủ yếu bằng nghề nương rẫy, nhưng đất đồi núi cheo leo khó khai thác nên dù chịu khó làm ăn thì tỉ lệ hộ nghèo vẫn chiếm tới hơn 78%.Xã Mường Thín với 3 trường học đóng trên địa bàn gồm có: 1 trường mầm non Mường Thín, 1 Trường Tiểu học Mường Thín, 1 trường THCS Mường Thín. Trong đó trường Mầm non có 1 trường chính và 3 điểm trưởng lẻ trong đó bao gồm điểm trường bản Liếng. Điểm trường bản Liếng hiện có 2 phòng học gồm 1 phòng học lớp mẫu giáo được xây dựng kiên cố, và 1 phòng lớp nhà trẻ là nhà khung sắt lắp ghép hiện đã xuống cấp trầm trọng. Điểm trường hiện nay có 43 trẻ đang theo học, bao gồm nhóm trẻ 13 cháu; lớp mẫu giáo gộp các bé 3, 4, và 5 tuổi có 30 cháu. Điểm trường dựng tạm bằng khung sắt thép đã trên 10 năm, hiện không còn đảm bảo kiên cố, an toàn để các bé có thể tiếp tục đến trường. Hơn nữa trong năm học mới, điểm trường sẽ có thêm nhiều em học sinh nhập học. Vì vậy việc sửa sang phòng học kiên cố hơn, và có thêm phòng học mới là rất cần thiết để giúp các em nhỏ - những mầm non tương lai của đất nước có thể được học tập trong môi trường tốt hơn. Góp Heo Vàng xây lớp học mới cho các em nhỏ vùng cao

Thấu hiểu những nỗi khó khăn vất vả của người dân và các em học sinh đang theo học tại điểm trường bản Đông Liếng, Ví MoMo kết hợp cùng Trung tâm Tình nguyện Quốc gia, Sức Mạnh 2000 kêu gọi cộng đồng Yêu Heo Đất cùng chung tay quyên góp 1.520.000 Heo Vàng. Số Heo Vàng này sẽ được Công ty TNHH vận tải KTO quy đổi tương ứng với 190.000.000 đồng để tiến hành xây thêm phòng học mới. Mỗi sự đóng góp dù lớn hay nhỏ của các nhà hảo tâm cũng sẽ giúp các em nhỏ đến gần hơn với ước mơ theo đuổi con chữ trong một lớp học an toàn và kiên cố hơn. Hy vọng rằng sự chung tay của cộng đồng sẽ tiếp thêm động lực để các bậc phụ huynh vươn lên trong đời sống kinh tế, các em học sinh vững bước trong con đường đi tới tương lai.',N'Cùng góp Heo Vàng xây dựng điểm trường kiên cố hơn, an toàn hơn để các bé có phòng học khang trang, tiếp tục theo đuổi giấc mơ đến trường')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid],[describe],[loaihang]) VALUES (8, 1, CAST(N'2000-01-01' AS Date), N'8.jpg', N'Góp Heo Vàng mang 10 thư viện đến trẻ em ở vùng khó khăn phía Bắc gồm Hà Giang và Bắc Ninh', 61000, N'1',N'Nỗ lực “trồng người” trên cao nguyên đá

Ở Hà Giang hiện có 192 xã đồng bào vùng dân tộc, với trên 1.300 thôn bản đặc biệt khó khăn. Tỷ lệ hộ nghèo tới hơn 45%, thu nhập trung bình đầu người chỉ vỏn vẹn 25 triệu/ năm. Có trường có lớp học khang trang để con em trong gia đình có thể theo đuổi giấc mơ con chữ, vẫn là ước mong của đồng bào sinh sống tại vùng cao núi đá nơi đây.Hà Giang là một trong những địa phương khó khăn nhất của cả nước với đồng bào dân tộc thiểu số chiếm tỷ lệ cao. Không chỉ vậy điều kiện cơ sở vật chất, giao thông cũng còn nhiều vấn đề nan giải chưa thể khắc phục. Đây cũng chính là nguyên nhân chủ yếu gây cản trở sự phát triển giáo dục tại tỉnh Hà Giang.Toàn tỉnh Hà Giang hiện có 820 cơ sở giáo dục, trong đó có 13 trường phổ thông dân tộc nội trú, 180 trường phổ thông dân tộc bán trú. Với hơn 18.000 cán bộ, giáo viên, hiện Hà Giang thiếu khoảng 1.700 giáo viên, phần lớn là ở bậc mầm non. Cơ sở vật chất trường lớp, trang thiết bị dạy học ở nhiều nơi thiếu thốn và xuống cấp.Tuy nhiên, không vì thế mà các nhà trường không ngừng nỗ lực thực hiện kế hoạch giảng dạy tăng cường Tiếng Việt và đưa văn hoá truyền thống đến các em học sinh Tiểu học vùng dân tộc thiểu số. Tỷ lệ duy trì đến lớp và bỏ học không ngừng cải thiện qua từng năm.Thấu hiểu được những khó khăn, rào cản và tinh thần hiếu học của tập thể thầy trò tỉnh Hà Giang, dự án Thư Viện Ước Mơ mong muốn mang đến cho các em một thư viện sáng tạo được trang bị đầy đủ nội thất hiện đại và hàng ngàn đầu truyện hấp dẫn.

Sách là một trong những yếu tố then chốt trong việc xây dựng và phát triển khả năng học tập ở trẻ ở những giai đoạn đầu. Những trang sách là những câu chuyện ước mơ, mang trẻ đến những vùng đất diệu kỳ mà ở đó các em không phải suy nghĩ về hoàn cảnh hiện tại. Thư viện Ước Mơ mong muốn mang đến một ngôi nhà thứ 2, để trẻ được tự do ước mơ và sáng tạo. Chung tay góp Heo Vàng xây 10 thư viện cho các em nhỏ tại Hà Giang và Bắc Giang

Thông qua kênh quyên góp MoMo, Dự án Thư Viện Ước Mơ đặt mục tiêu quyên góp 1.040.000.000 VNĐ. Chúng tôi kêu gọi cộng đồng Heo Đất MoMo cùng chung tay quyên góp 4.160.000 Heo Vàng, số Heo Vàng này sẽ được các nhà tài trợ quy đổi tương ứng với 832.000.000 đồng. Ngoài ra, số kinh phí còn lại sẽ được kêu gọi các nhà hảo tâm và mạnh thường quân quyên góp thông qua Trái Tim MoMo với số tiền là 208.000.000 đồng. Số tiền này tương đương với việc xây dựng 10 thư viện cho các em học sinh tiểu học thuộc vùng sâu vùng xa, cực Bắc của tổ quốc, giúp các em dân tộc thiểu số có cơ hội được tiếp cận với sách - nguồn sáng tạo vô tận. ',N'Cùng chung tay mang 10 thư viện ước mơ đến với 4.000 trẻ em ở vùng khó khăn thuộc tỉnh Hà Giang và Bắc Ninh để các em có được không gian đọc sách tiện nghi, khơi nguồn sáng tạo và nghệ thuật.')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid],[describe],[loaihang]) VALUES (9, 1, CAST(N'2000-01-01' AS Date), N'9.jpg', N'Áo khoác XML', 80000, N'3',N'Áo đẹp',N'ao')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid],[describe],[loaihang]) VALUES (10, 1, CAST(N'2000-01-01' AS Date), N'10.jpg', N'Áo khoác Cool', 74000, N'3',N'Áo đẹp',N'ao')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid],[describe],[loaihang]) VALUES (11, NULL, CAST(N'2000-01-01' AS Date), N'11.jpg', N'Áo khoác Hologram', 62000, N'3',N'Áo đẹp',N'ao')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid],[describe],[loaihang]) VALUES (12, NULL, CAST(N'2000-01-01' AS Date), N'12.jpg', N'Áo khoác Holo', 51000, N'3',N'Áo đẹp',N'ao')
SET IDENTITY_INSERT [dbo].[products] OFF
ALTER TABLE [dbo].[orderdetails]  WITH CHECK ADD  CONSTRAINT [FKaltatpxipsjtcih4d1h6bn0xr] FOREIGN KEY([productid])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[orderdetails] CHECK CONSTRAINT [FKaltatpxipsjtcih4d1h6bn0xr]
GO
ALTER TABLE [dbo].[orderdetails]  WITH CHECK ADD  CONSTRAINT [FKj4gc2ja2otvwemf4rho2lp3s8] FOREIGN KEY([orderid])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[orderdetails] CHECK CONSTRAINT [FKj4gc2ja2otvwemf4rho2lp3s8]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FKk3cjfcgb621qhahps1tre43e4] FOREIGN KEY([username])
REFERENCES [dbo].[accounts] ([username])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FKk3cjfcgb621qhahps1tre43e4]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK1krrsjgcawsfg8k8u4hm5gi8q] FOREIGN KEY([categoryid])
REFERENCES [dbo].[categories] ([id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK1krrsjgcawsfg8k8u4hm5gi8q]
GO
