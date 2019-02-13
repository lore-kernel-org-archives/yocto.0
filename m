Return-Path: <johann.obermayr@sigmatek.at>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1783DE0097C; Wed, 13 Feb 2019 02:43:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.14.107 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 3544 seconds by postgrey-1.32 at yocto-www;
	Wed, 13 Feb 2019 02:43:06 PST
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
	(mail-eopbgr140107.outbound.protection.outlook.com [40.107.14.107])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DEC6E0091D;
	Wed, 13 Feb 2019 02:43:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigmatek.at;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=Tio3ou7w8EPLHBmSHDY+ODpl+PMWRb2fAHq00tSwaVw=;
	b=nu23rfxdZx4xphpGRnTIHUWrBXMOnaWFieZ7fZ/6myDct4ZFr+c922fW78zdHR1JFGlKT8y2vyQxHhcE8OXnzcsobubx9U38MtDoSkDWufYbPlwAcPhpUqJiffDW8UBAS05Uz43zGQjVV7gnVQGJhcKsu6kfXg2EHb0hc/v61A0=
Received: from VI1PR08MB3375.eurprd08.prod.outlook.com (20.177.58.217) by
	VI1PR08MB3616.eurprd08.prod.outlook.com (20.177.61.79) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1622.16; Wed, 13 Feb 2019 09:11:21 +0000
Received: from VI1PR08MB3375.eurprd08.prod.outlook.com
	([fe80::31e3:ff42:2886:d60c]) by
	VI1PR08MB3375.eurprd08.prod.outlook.com
	([fe80::31e3:ff42:2886:d60c%3]) with mapi id 15.20.1622.016;
	Wed, 13 Feb 2019 09:11:21 +0000
From: Johann Obermayr <johann.obermayr@sigmatek.at>
To: "yocto-bounces@yoctoproject.org" <yocto-bounces@yoctoproject.org>
CC: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Toolchain , kernel-dev and xenomai
Thread-Index: AdTDfB8WHLo6tfD7TFWupum7KDCmKw==
Date: Wed, 13 Feb 2019 09:11:21 +0000
Message-ID: <VI1PR08MB33751690D8A189D395F63C53F5660@VI1PR08MB3375.eurprd08.prod.outlook.com>
Accept-Language: de-AT, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=johann.obermayr@sigmatek.at; 
x-originating-ip: [83.215.235.253]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ab9a5381-4584-4e30-c22d-08d691933899
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600110)(711020)(4605077)(2017052603328)(7153060)(7193020);
	SRVR:VI1PR08MB3616; 
x-ms-traffictypediagnostic: VI1PR08MB3616:
x-microsoft-exchange-diagnostics: =?us-ascii?Q?1; VI1PR08MB3616;
	23:oHH69uvzfLI5wx/6vKA8mRIwlGg5pGQWF9hsZ3/16?=
	=?us-ascii?Q?nXBtiXYfm7NKqjabAIsqrUzubx4LO8RCBJ7fjEspA4zF8iLBRAn6a8md28ts?=
	=?us-ascii?Q?hXijWYfqceHQrC0sRJy9ku8DkjS373BFrpuynZ9q0+6K2JMUhIwoSF5/bgwd?=
	=?us-ascii?Q?vnpO6lVwp4iiF0TlW9QQciijDOO7djqoqFCOW+LC8sP+BpyPEjZxNAORjwoa?=
	=?us-ascii?Q?s4v0lznquTUMsmLsnpo8FFrsv81O2EQMDr0vx9hRi2Tc+RblwvGIteDMOJe1?=
	=?us-ascii?Q?Ty1ZMEGLIpqwldYTRls8pyuP/w9Kj8a5uqN6l9Y8NGZf+MfFGr39HeDCm6tB?=
	=?us-ascii?Q?qWdvzlbPZFPgiuWoSkTxiCbfSAD7XLNXNZk3scJm/DNmmIy961QTu0x7i/6x?=
	=?us-ascii?Q?4vxJIUsiPVoAK+/F6I+3lARxyWPZEZLFOb7u9EyTOC/hPiEQjejLzUluDVvy?=
	=?us-ascii?Q?pea6ZxJOJpjQlv3Rok58GAoq6JKQYnVf1Gf3igpll9SlT2Yc7Oea+/U8eEaT?=
	=?us-ascii?Q?jPyTGE48UQ1pYzWrZ8ct3k2SF5wkZuRGEvr2xSNHkMpnYrOZbWhKVvgX8EGr?=
	=?us-ascii?Q?5ql/NyWVLQDZmCLQbRKL/OaCloYX4wDvN6Yh4hpW16a7d2OD5Wyc7jlVYXHF?=
	=?us-ascii?Q?830w83rA9wW0z1K8ArwYwttU6g0qjN1vU4A7kK0pFzYPYe9yzckY1LxFZ7H+?=
	=?us-ascii?Q?Iq15e+340gUnY+TiX5F8aiyMtWFuZiKPH6v3sPLjO002ZoZOWA9NAqMOAqSS?=
	=?us-ascii?Q?jjNNFUajNKCDD/T7Ewt7/vhJ973L5/whpYfyto0CBPShWrz+Bcy0KXwD4Mq5?=
	=?us-ascii?Q?bXhsJPrV775SX0aNKyqW1i1LpYpQfdNTSUZ8VMcqIKghMuMcjP3i4l9w0mHj?=
	=?us-ascii?Q?DsyswR+FfBHVEH9YRSvyZHftvD+m9tvQt4UsbKFIa6gEo6yUI1qdN7P/ckkZ?=
	=?us-ascii?Q?3RkeNb18A/sIxjMAArJmCcWICeT6LlgkxHN27WK6z4y6Z6JO+oT7DyozWnWT?=
	=?us-ascii?Q?WEQwBGziK1SE869URnbTbOOghUj/cEQCwvp7qHx1p86tL2udTYQCpBRPxuxc?=
	=?us-ascii?Q?x7feNpNQUrfnyxjc2wJMnTF0GLwv9ZLNBZstWNUqnXv9G2q3dsKTHW+OBmqv?=
	=?us-ascii?Q?clOca3vmUdGgM5MNFkEa8oNc/+npodkAJaHHvItScSQG//gLDWqGRO2dyqym?=
	=?us-ascii?Q?xcyyQ834lc8jnQgEEXU1WAxTt8Q+wBnBm2CSHG3LIeMbAYYteh0K5Bx9D1vq?=
	=?us-ascii?Q?KSoKwrL1BV6EDHYAPUr332PryOZ1jyfqjbA4uZs?=
x-microsoft-antispam-prvs: <VI1PR08MB36165C07E9B8AE818EF2722EF5660@VI1PR08MB3616.eurprd08.prod.outlook.com>
x-forefront-prvs: 094700CA91
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(136003)(366004)(346002)(396003)(39840400004)(376002)(189003)(199004)(7736002)(478600001)(74316002)(97736004)(33656002)(14454004)(316002)(81156014)(81166006)(2501003)(2906002)(8936002)(68736007)(476003)(44832011)(486006)(8676002)(105586002)(26005)(6506007)(2351001)(102836004)(106356001)(186003)(71190400001)(71200400001)(4744005)(19627235002)(256004)(790700001)(3846002)(25786009)(450100002)(6116002)(6916009)(6436002)(66066001)(74482002)(86362001)(6306002)(9686003)(54896002)(7696005)(55016002)(5640700003)(53936002)(99286004)(4326008);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR08MB3616;
	H:VI1PR08MB3375.eurprd08.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: sigmatek.at does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: b8trX/Xpwi16uhuU4jZyxudE3zTB4VypOtI+h3zDYAZOFMNEC6xcbziVi3xO0NI/82FrvzywEz9HuJ2HPpBVh44mfHzqfPdlKRP654eMP/BhMXrXVzKF1qCJlHE8WW3thEn+QrtdGA5yZTjF4DopwItjjJo3kY5zrA9iBacBUaCH9lLrYH1Tr+Nc3Dsw7TSYfzhurow7irFhv+TMKyF3YFM3QMxgWtuZi5eZkN2jZ5riJaJy++p/WXJVm7pafRFS8ySL40f68lyImG2YMyQkg0eIeYSE0HSodQT3d3papAfZehzjFdZhpc2PKf+R34kMLqfty6qTiv8Nos+R1XV3HRziJ/pphLNBGyin62NMKCS0MSP9FVsRmQlXjITAAsQ4LQCs9b8vNdltGfFPt6Qwx7fjC2tR3U3DUd1lERD75m8=
MIME-Version: 1.0
X-OriginatorOrg: sigmatek.at
X-MS-Exchange-CrossTenant-Network-Message-Id: ab9a5381-4584-4e30-c22d-08d691933899
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2019 09:11:21.5064 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bcb1d87a-d2bc-486e-a62b-9ac9c746bc1b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3616
Subject: Toolchain , kernel-dev and xenomai
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 13 Feb 2019 10:43:08 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_VI1PR08MB33751690D8A189D395F63C53F5660VI1PR08MB3375eurp_"

--_000_VI1PR08MB33751690D8A189D395F63C53F5660VI1PR08MB3375eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

At this time we work with 1.3.2 (yes, it's very old, but we are working to =
change to v2.5.x)

We have some trouble with your toolchain.

  1.  Kernel/scripts/basic/fixdep   is missing.

If I will compile in the toolchain kernel source directory "make scripts" I=
 get some other errors (see b) )


       b) Xenomai integrates its files as linked. And this links are instal=
led with the toolchain. So the files are not really available.


Thanks & Regards
  Johann


--_000_VI1PR08MB33751690D8A189D395F63C53F5660VI1PR08MB3375eurp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.tlid-translation
	{mso-style-name:tlid-translation;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1278223723;
	mso-list-type:hybrid;
	mso-list-template-ids:-1142499924 67567639 67567641 67567643 67567631 6756=
7641 67567643 67567631 67567641 67567643;}
@list l0:level1
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">At this time we work with 1.3.2=
 (yes, it&#8217;s very old, but we are working to change to v2.5.x)<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">We have some trouble with your =
toolchain.<o:p></o:p></span></p>
<ol style=3D"margin-top:0cm" start=3D"1" type=3D"a">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l0 level1 =
lfo1"><span lang=3D"EN-US">Kernel/scripts/basic/fixdep&nbsp;&nbsp; is missi=
ng.<o:p></o:p></span></li></ol>
<p class=3D"MsoListParagraph"><span lang=3D"EN-US">If I will compile in the=
 toolchain kernel source directory &#8220;make scripts&#8221; I get some ot=
her errors (see b) )<o:p></o:p></span></p>
<p class=3D"MsoListParagraph"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span>=
</p>
<p class=3D"MsoNormal"><span class=3D"tlid-translation"><span lang=3D"EN-US=
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Xenomai integrates its files as l=
inked. And this links are installed with the toolchain. So the files are no=
t really available.</span></span><span lang=3D"EN-US"><o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:D=
E"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:DE"><o:p>&nbsp;<=
/o:p></span></p>
<p class=3D"MsoNormal">Thanks &amp; Regards<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; Johann<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_VI1PR08MB33751690D8A189D395F63C53F5660VI1PR08MB3375eurp_--
