USE [cwgxs]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 2018/1/4 11:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[pwd] [varchar](50) NULL,
	[quanxian] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[affiche]    Script Date: 2018/1/4 11:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[affiche](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](200) NULL,
	[content] [varchar](2000) NULL,
	[times] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[after]    Script Date: 2018/1/4 11:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[after](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[phone] [varchar](50) NULL,
	[times] [varchar](50) NULL,
	[content] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dog]    Script Date: 2018/1/4 11:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](200) NULL,
	[author] [varchar](50) NULL,
	[publishing] [varchar](200) NULL,
	[number] [varchar](100) NULL,
	[price] [varchar](50) NULL,
	[storage] [int] NULL,
	[brief] [text] NULL,
	[type] [int] NULL,
	[tate] [int] NULL,
	[sums] [int] NULL,
	[imgpath] [varchar](200) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[orders]    Script Date: 2018/1/4 11:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NULL,
	[bookid] [int] NULL,
	[booksum] [int] NULL,
	[times] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[paihang]    Script Date: 2018/1/4 11:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[paihang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bookid] [int] NULL,
	[name] [varchar](50) NULL,
	[times] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tates]    Script Date: 2018/1/4 11:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tates](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [char](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[types]    Script Date: 2018/1/4 11:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[types](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [char](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[users]    Script Date: 2018/1/4 11:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[pwd] [varchar](50) NULL,
	[realname] [varchar](50) NULL,
	[sex] [varchar](50) NULL,
	[age] [varchar](50) NULL,
	[card] [varchar](50) NULL,
	[address] [varchar](200) NULL,
	[phone] [varchar](50) NULL,
	[email] [varchar](100) NULL,
	[code] [varchar](50) NULL,
	[type] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[admin] ON 

INSERT [dbo].[admin] ([id], [name], [pwd], [quanxian]) VALUES (1, N'admin', N'admin', NULL)
SET IDENTITY_INSERT [dbo].[admin] OFF
SET IDENTITY_INSERT [dbo].[affiche] ON 

INSERT [dbo].[affiche] ([id], [name], [content], [times]) VALUES (2, N'
新手养狗注意事项', N'一、小狗到家10天内不能洗澡不能遛弯！
二、不能喝牛奶，2个月后才可以给它一点肉吃！
三、到家两个月内,以粥状食物或干燥食物加水浸泡后食用为宜。其它一些食物,常会引起消化不良、拉稀等症状，所以切忌不要让狗狗食用。
四、每日喂次狗粮。每次用标准纸杯的2/3（泡软后纸杯的2/3）,切记用热水泡软后再给他吃,千万不能吃多和乱吃。如果想给狗狗增加营养可以每一天加一个煮熟的蛋黄，记住一个蛋黄要分三次喂。
五、不要喂小狗过冷或过热的食物，这会对小狗的口腔造成损伤。
六、不要给小狗吃变质和腐烂的食物。
七、应立即扔掉每顿吃剩的狗食，每次喂食最好将食盆洗净，这样可防止拉稀等一些不必要的事情
的发生！
八、不要把猫粮当作狗粮喂小狗，因为猫粮含的蛋白质太高。最好是买一些幼犬专用狗粮，如麦顿冠能或宠倍思狗粮等天然狗粮? 
九、不要在小狗吃食时打扰它，否则它以后在吃饭时会变得很紧张。 
十、水要供应充分，要准备干净的容器，不要喂生水，要把开水放凉，并不断的更换新鲜水，不要数日不换陈水，要让狗狗自由饮水。', CAST(0x0000A84E00B3823C AS DateTime))
INSERT [dbo].[affiche] ([id], [name], [content], [times]) VALUES (5, N'爱护动物', N'别让人类成为最孤单的生命!保护动物就是保护人类自已。动物是人类亲密的朋友;人类是动物信赖的伙伴。', CAST(0x0000A84E00B85894 AS DateTime))
SET IDENTITY_INSERT [dbo].[affiche] OFF
SET IDENTITY_INSERT [dbo].[after] ON 

INSERT [dbo].[after] ([id], [name], [phone], [times], [content]) VALUES (2, N'1111111', N'023-81234567', N'2001-3-27', N'afterafterafterafterafterafterafterafterafterafterafterafterafterafterafterafterafterafterafterafterafterafter')
SET IDENTITY_INSERT [dbo].[after] OFF
SET IDENTITY_INSERT [dbo].[dog] ON 

INSERT [dbo].[dog] ([id], [name], [author], [publishing], [number], [price], [storage], [brief], [type], [tate], [sums], [imgpath]) VALUES (1, N'毛毛', N'德国', N'2017-09-10', N'2.0KG', N'500', 1, N'金毛是一个均称、有力、活泼的犬种，稳固、身体各部位配合合理，腿既不太长也不笨拙，表情友善，个性热情、机警、自信。因其是一种猎犬，在困苦的工作环境中才能表现出他的本质特点。他的总体外貌、平衡、步态和该犬种的用途应得到比身体任何一个单独部分更多的重视。缺陷：任何与该犬种的理想描述相背离均可视为缺陷，缺陷的严重程度根据其与该犬种的用途相矛盾或与该犬种的特质相悖的程度决定。 


尺寸、比例和体格 
公犬肩高23--24英寸；母犬21-22英寸。高度误差在一英寸以内的，视其背离标准身高的程度受罚。误差超过一英寸的，为失格。 
从胸骨到臀部尖端的距离与肩高的比例为12：11。公犬65-75磅重，母犬55-65磅重。', 14, 1, 4, N'bookimg/yt144416162_P2.jpg')
INSERT [dbo].[dog] ([id], [name], [author], [publishing], [number], [price], [storage], [brief], [type], [tate], [sums], [imgpath]) VALUES (2, N'顶级萨摩宝宝', N'上海', N'2017-10-11', N'10KG', N'1500', 9, N'　　松狮犬，英文名：Chow Chow，身高：46-56厘米,体重约18-27公斤。原产地是中国，起源于西藏，经交配改良成目前品种。松狮狗正如期名，全身都是蓬松浓密的直毛。开始为王宫贵族的猎犬，在中国至少流行了2000年，直到19世纪末，才第一次出现在英国。他最主要的用途是看家，因其肌肉强健、勇敢有力，也有被将士作为警犬送到战场防止敌人入侵。后在民间大量繁殖，也有居民用于帮忙拉小车。同时因其毛厚和肉多而成为皮毛和食肉的提供者。
　　松狮犬的毛很蓬松，毛色有黑、红、蓝、白、奶油等色，毛皮是极有价值的商品。它的主要特征是舌头相当特殊，和沙皮狗一样是蓝黑色的；而且脚不像一般的狗一样，有点像猫似的小圆脚。松狮犬在国外极受青睐，不断有嘴更短、身越圆、毛更蓬松的优秀品种培育出来。松狮犬性格独立机敏、稳重温驯、对主人极其忠诚。你要注意，千万不要在它面前开打其主人的玩笑,小心它当成真的而咬你噢!', 18, 2, 1, N'bookimg/yt144416162_P2.jpg')
INSERT [dbo].[dog] ([id], [name], [author], [publishing], [number], [price], [storage], [brief], [type], [tate], [sums], [imgpath]) VALUES (3, N'拉布拉多', N'加拿大', N'2017-10-01', N'5KG', N'800', 9, N'      拉布拉多,英文名：Labrador retriever，公狗身高56-62cm、母狗54-59cm。拉布拉多又称寻回犬，是一种大型犬类，是非常适合被选作经常出入公共场合的导盲犬或地铁警犬及搜救犬和其他工作犬的狗品种，因原产地在加拿大的纽芬兰与拉布拉多省而得名。跟西伯利亚雪撬犬和金毛寻回犬并列三大无攻击性犬类。拉布拉多智商位列世界犬类第六位。个性忠诚、大气、憨厚、温和、阳光、开朗、活泼，智商极高，也对人很友善，拉布拉多猎犬有四种颜色，分别为：黑色、黄色、巧克力、米白色。最常见的是黑色，黄色。在美国犬业俱乐部中拉布拉多是目前登记数量最多的品种，对小孩尤其的友善，对犬主人略粘人。', 14, 1, 6, N'bookimg/yt144416162_P2.jpg')
INSERT [dbo].[dog] ([id], [name], [author], [publishing], [number], [price], [storage], [brief], [type], [tate], [sums], [imgpath]) VALUES (4, N'ff', N'ggg', N'2018-01-12', N'50', N'800', 2, N'jkl', 17, 1, 0, N'bookimg/4.jpg')
SET IDENTITY_INSERT [dbo].[dog] OFF
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (41, 9, 30, 1, CAST(0x00009A83010EA5B7 AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (42, 9, 43, 1, CAST(0x00009A83010EA5C5 AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (43, 9, 36, 1, CAST(0x00009A83010EA5CA AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (44, 9, 37, 1, CAST(0x00009A83010EA5CA AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (45, 9, 48, 1, CAST(0x00009A83010EA5CF AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (46, 9, 45, 1, CAST(0x00009A83010EA5D8 AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (47, 9, 39, 1, CAST(0x00009A83010EA5D8 AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (48, 9, 47, 2, CAST(0x00009A83010EA5DD AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (49, 9, 50, 1, CAST(0x00009A83010EA5E1 AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (50, 9, 44, 1, CAST(0x00009A83010EA5E1 AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (51, 9, 42, 1, CAST(0x00009A83010EA5E1 AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (52, 9, 53, 1, CAST(0x00009A83010EA5E1 AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (53, 9, 43, 1, CAST(0x00009A83010F1F51 AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (54, 9, 30, 1, CAST(0x00009A83010F1F55 AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (55, 9, 33, 1, CAST(0x00009A83010F1F5A AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (56, 9, 32, 1, CAST(0x00009A83010F1F5A AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (57, 9, 34, 1, CAST(0x00009A83010F1F5A AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (58, 9, 35, 3, CAST(0x00009A83010F1F5A AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (59, 9, 37, 3, CAST(0x00009A83010F1F64 AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (60, 9, 36, 3, CAST(0x00009A83010F1F64 AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (61, 9, 48, 1, CAST(0x00009A83010F1F7B AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (62, 9, 49, 2, CAST(0x00009A83010F1F7B AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (63, 9, 44, 1, CAST(0x00009A83010F1F7B AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (64, 9, 51, 1, CAST(0x00009A83010F1F84 AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (65, 9, 47, 3, CAST(0x00009A83010F1F89 AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (66, 9, 42, 1, CAST(0x00009A83010F1F89 AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (67, 9, 52, 1, CAST(0x00009A83010F1F92 AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (68, 9, 46, 1, CAST(0x00009A83010F1F92 AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (69, 9, 45, 1, CAST(0x00009A83010F1F92 AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (70, 6, 1, 1, CAST(0x00009B730108C86C AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (71, 6, 2, 1, CAST(0x00009B730108C86C AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (72, 6, 3, 1, CAST(0x00009B7600B7CA1F AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (73, 12, 3, 1, CAST(0x00009DF4014C1CFA AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (74, 6, 1, 2, CAST(0x0000A26F0168F288 AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (75, 6, 1, 1, CAST(0x0000A85400A30C81 AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (76, 6, 3, 1, CAST(0x0000A85E00B55A19 AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (77, 6, 3, 1, CAST(0x0000A85E00B6776F AS DateTime))
INSERT [dbo].[orders] ([id], [userid], [bookid], [booksum], [times]) VALUES (78, 6, 3, 2, CAST(0x0000A85E00B6ADCB AS DateTime))
SET IDENTITY_INSERT [dbo].[orders] OFF
SET IDENTITY_INSERT [dbo].[paihang] ON 

INSERT [dbo].[paihang] ([id], [bookid], [name], [times]) VALUES (47, 30, N'金立V9', CAST(0x00009A83010F1F55 AS DateTime))
INSERT [dbo].[paihang] ([id], [bookid], [name], [times]) VALUES (46, 43, N'太师椅', CAST(0x00009A83010F1F51 AS DateTime))
INSERT [dbo].[paihang] ([id], [bookid], [name], [times]) VALUES (53, 36, N'吉利剃须刀', CAST(0x00009A83010F1F7B AS DateTime))
INSERT [dbo].[paihang] ([id], [bookid], [name], [times]) VALUES (52, 37, N'电脑桌', CAST(0x00009A83010F1F64 AS DateTime))
INSERT [dbo].[paihang] ([id], [bookid], [name], [times]) VALUES (54, 48, N'摄像头', CAST(0x00009A83010F1F7B AS DateTime))
INSERT [dbo].[paihang] ([id], [bookid], [name], [times]) VALUES (62, 45, N'LG鼠标', CAST(0x00009A83010F1F92 AS DateTime))
INSERT [dbo].[paihang] ([id], [bookid], [name], [times]) VALUES (40, 39, N'尼康数码相机', CAST(0x00009A83010EA5DD AS DateTime))
INSERT [dbo].[paihang] ([id], [bookid], [name], [times]) VALUES (58, 47, N'充电器', CAST(0x00009A83010F1F89 AS DateTime))
INSERT [dbo].[paihang] ([id], [bookid], [name], [times]) VALUES (42, 50, N'热水器', CAST(0x00009A83010EA5E1 AS DateTime))
INSERT [dbo].[paihang] ([id], [bookid], [name], [times]) VALUES (56, 44, N'鼠标垫', CAST(0x00009A83010F1F7B AS DateTime))
INSERT [dbo].[paihang] ([id], [bookid], [name], [times]) VALUES (59, 42, N'三星手机', CAST(0x00009A83010F1F89 AS DateTime))
INSERT [dbo].[paihang] ([id], [bookid], [name], [times]) VALUES (45, 53, N'234234', CAST(0x00009A83010EA5E1 AS DateTime))
INSERT [dbo].[paihang] ([id], [bookid], [name], [times]) VALUES (48, 33, N'摩托罗拉V3', CAST(0x00009A83010F1F5A AS DateTime))
INSERT [dbo].[paihang] ([id], [bookid], [name], [times]) VALUES (49, 32, N'打印机', CAST(0x00009A83010F1F5A AS DateTime))
INSERT [dbo].[paihang] ([id], [bookid], [name], [times]) VALUES (50, 34, N'犀牛插排', CAST(0x00009A83010F1F5A AS DateTime))
INSERT [dbo].[paihang] ([id], [bookid], [name], [times]) VALUES (51, 35, N'诺基亚110', CAST(0x00009A83010F1F5A AS DateTime))
INSERT [dbo].[paihang] ([id], [bookid], [name], [times]) VALUES (55, 49, N'烟灰缸', CAST(0x00009A83010F1F7B AS DateTime))
INSERT [dbo].[paihang] ([id], [bookid], [name], [times]) VALUES (57, 51, N'海尔手机', CAST(0x00009A83010F1F84 AS DateTime))
INSERT [dbo].[paihang] ([id], [bookid], [name], [times]) VALUES (60, 52, N'彩虹电视', CAST(0x00009A83010F1F92 AS DateTime))
INSERT [dbo].[paihang] ([id], [bookid], [name], [times]) VALUES (61, 46, N'LG键盘', CAST(0x00009A83010F1F92 AS DateTime))
INSERT [dbo].[paihang] ([id], [bookid], [name], [times]) VALUES (68, 1, N'毛毛', CAST(0x0000A85400A30CAA AS DateTime))
INSERT [dbo].[paihang] ([id], [bookid], [name], [times]) VALUES (64, 2, N'顶级萨摩宝宝', CAST(0x00009B730108C86C AS DateTime))
INSERT [dbo].[paihang] ([id], [bookid], [name], [times]) VALUES (66, 3, N'测试名', CAST(0x00009DF4014C1CFF AS DateTime))
INSERT [dbo].[paihang] ([id], [bookid], [name], [times]) VALUES (71, 3, N'拉布拉多', CAST(0x0000A85E00B6ADCB AS DateTime))
SET IDENTITY_INSERT [dbo].[paihang] OFF
SET IDENTITY_INSERT [dbo].[tates] ON 

INSERT [dbo].[tates] ([id], [name]) VALUES (1, N'最新推荐  ')
INSERT [dbo].[tates] ([id], [name]) VALUES (2, N'最新上架  ')
SET IDENTITY_INSERT [dbo].[tates] OFF
SET IDENTITY_INSERT [dbo].[types] ON 

INSERT [dbo].[types] ([id], [name]) VALUES (14, N'吉娃娃    ')
INSERT [dbo].[types] ([id], [name]) VALUES (15, N'蝴蝶犬    ')
INSERT [dbo].[types] ([id], [name]) VALUES (16, N'德国牧羊犬')
INSERT [dbo].[types] ([id], [name]) VALUES (17, N'哈士奇    ')
INSERT [dbo].[types] ([id], [name]) VALUES (18, N'松狮      ')
SET IDENTITY_INSERT [dbo].[types] OFF
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [name], [pwd], [realname], [sex], [age], [card], [address], [phone], [email], [code], [type]) VALUES (6, N'123', N'123', N'张三', N'男', N'28', N'210104200801011111', N'沈阳市大东区', N'13999999999', N'2008@163.om', N'110000', 1)
INSERT [dbo].[users] ([id], [name], [pwd], [realname], [sex], [age], [card], [address], [phone], [email], [code], [type]) VALUES (9, N'123321', N'123', N'123', N'男', N'12', N'123', N'123', N'123', N'123', N'123', 1)
INSERT [dbo].[users] ([id], [name], [pwd], [realname], [sex], [age], [card], [address], [phone], [email], [code], [type]) VALUES (10, N'null', N'null', N'null', N'null', N'null', N'null', N'null', N'null', N'null', N'null', 1)
INSERT [dbo].[users] ([id], [name], [pwd], [realname], [sex], [age], [card], [address], [phone], [email], [code], [type]) VALUES (11, N'1111111', N'111111', N'111', N'男', N'23', N'12121212121212', N'21212121', N'02411111111', N'123@123.com', N'222222', 1)
INSERT [dbo].[users] ([id], [name], [pwd], [realname], [sex], [age], [card], [address], [phone], [email], [code], [type]) VALUES (12, N'666', N'666', N'jack', N'男', N'22', N'2221112131333', N'tes', N'129000000000', N'11@163.com', N'111111', 1)
SET IDENTITY_INSERT [dbo].[users] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_admin]    Script Date: 2018/1/4 11:27:24 ******/
ALTER TABLE [dbo].[admin] ADD  CONSTRAINT [IX_admin] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_affiche]    Script Date: 2018/1/4 11:27:24 ******/
ALTER TABLE [dbo].[affiche] ADD  CONSTRAINT [IX_affiche] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tate]    Script Date: 2018/1/4 11:27:24 ******/
ALTER TABLE [dbo].[tates] ADD  CONSTRAINT [IX_tate] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_type]    Script Date: 2018/1/4 11:27:24 ******/
ALTER TABLE [dbo].[types] ADD  CONSTRAINT [IX_type] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_types]    Script Date: 2018/1/4 11:27:24 ******/
ALTER TABLE [dbo].[types] ADD  CONSTRAINT [IX_types] UNIQUE NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_users]    Script Date: 2018/1/4 11:27:24 ******/
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [IX_users] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[affiche] ADD  CONSTRAINT [DF_affiche_times]  DEFAULT (getdate()) FOR [times]
GO
ALTER TABLE [dbo].[dog] ADD  CONSTRAINT [DF_books_tate]  DEFAULT (1) FOR [tate]
GO
ALTER TABLE [dbo].[dog] ADD  CONSTRAINT [DF_books_sums]  DEFAULT (0) FOR [sums]
GO
ALTER TABLE [dbo].[dog] ADD  CONSTRAINT [DF_books_imgpath]  DEFAULT ('bookimg/emptybook.gif') FOR [imgpath]
GO
ALTER TABLE [dbo].[orders] ADD  CONSTRAINT [DF_orders_times_1]  DEFAULT (getdate()) FOR [times]
GO
ALTER TABLE [dbo].[paihang] ADD  CONSTRAINT [DF_paihang_times]  DEFAULT (getdate()) FOR [times]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_type]  DEFAULT (1) FOR [type]
GO
ALTER TABLE [dbo].[dog]  WITH NOCHECK ADD  CONSTRAINT [FK_books_types] FOREIGN KEY([type])
REFERENCES [dbo].[types] ([id])
GO
ALTER TABLE [dbo].[dog] CHECK CONSTRAINT [FK_books_types]
GO
ALTER TABLE [dbo].[dog]  WITH NOCHECK ADD  CONSTRAINT [CK_books] CHECK  (([storage] > 0))
GO
ALTER TABLE [dbo].[dog] CHECK CONSTRAINT [CK_books]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公告名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'affiche', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公告内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'affiche', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公告时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'affiche', @level2type=N'COLUMN',@level2name=N'times'
GO
