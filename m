Return-Path: <brent.skinner@kodakalaris.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 856DEE004F2; Tue, 13 Jan 2015 09:34:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.111.147 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1111 seconds by postgrey-1.32 at yocto-www;
	Tue, 13 Jan 2015 09:34:46 PST
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bon0147.outbound.protection.outlook.com [157.56.111.147])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFE48E002F9
	for <yocto@yoctoproject.org>; Tue, 13 Jan 2015 09:34:46 -0800 (PST)
Received: from BY1PR0301MB0903.namprd03.prod.outlook.com (25.160.195.142) by
	BY1PR0301MB0902.namprd03.prod.outlook.com (25.160.195.141) with
	Microsoft
	SMTP Server (TLS) id 15.1.53.17; Tue, 13 Jan 2015 17:00:12 +0000
Received: from BY1PR0301MB0903.namprd03.prod.outlook.com ([25.160.195.142]) by
	BY1PR0301MB0903.namprd03.prod.outlook.com ([25.160.195.142]) with
	mapi id 15.01.0053.000; Tue, 13 Jan 2015 17:00:11 +0000
From: Cameron B Skinner <brent.skinner@kodakalaris.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [BBB] RTL8188EE not mounting
Thread-Index: AdAvUM8kQPqrgqwnRgy48cVx6zjMXQ==
Date: Tue, 13 Jan 2015 17:00:11 +0000
Message-ID: <BY1PR0301MB0903960DEDEACE9D2470CC5DFC400@BY1PR0301MB0903.namprd03.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [165.170.128.65]
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=brent.skinner@kodakalaris.com; 
x-dmarcaction-test: None
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(3005003);SRVR:BY1PR0301MB0902;
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:;
	SRVR:BY1PR0301MB0902; 
x-forefront-prvs: 045584D28C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(189002)(199003)(19627595001)(106356001)(18206015028)(99286002)(19625215002)(101416001)(62966003)(2501002)(450100001)(77156002)(110136001)(33656002)(64706001)(16236675004)(54206007)(54606007)(99936001)(74316001)(122556002)(68736005)(15975445007)(76576001)(102836002)(97736003)(86362001)(92566002)(105586002)(107886001)(2351001)(66066001)(2656002)(46102003)(19580395003)(19300405004)(17760045003)(87936001)(54356999)(40100003)(19580405001)(229853001)(2900100001)(50986999);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BY1PR0301MB0902;
	H:BY1PR0301MB0903.namprd03.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: kodakalaris.com does not designate
	permitted sender hosts)
MIME-Version: 1.0
X-OriginatorOrg: kodakalaris.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2015 17:00:11.2829 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d29b7a9b-6edb-4720-99a8-3c5c6c3eeeb0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR0301MB0902
Subject: [BBB] RTL8188EE not mounting
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
X-List-Received-Date: Tue, 13 Jan 2015 17:34:50 -0000
X-Groupsio-MsgNum: 22976
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_BY1PR0301MB0903960DEDEACE9D2470CC5DFC400BY1PR0301MB0903_";
	type="multipart/alternative"

--_004_BY1PR0301MB0903960DEDEACE9D2470CC5DFC400BY1PR0301MB0903_
Content-Type: multipart/alternative;
	boundary="_000_BY1PR0301MB0903960DEDEACE9D2470CC5DFC400BY1PR0301MB0903_"

--_000_BY1PR0301MB0903960DEDEACE9D2470CC5DFC400BY1PR0301MB0903_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Let me start by apologizing if the outcome is very obvious to everyone but =
me. I'm VERY new to Linux and newer to Yocto.

I have an RTL8188EE wifi board that I'm connecting to a Beaglebone Black vi=
a USB. If I do an 'lsusb' I can see that there is a Realtek device out ther=
e somewhere. Even though the driver for this exact device appears in the ke=
rnel drivers, the device doesn't mount. I'm running the dizzy version and h=
ave tried building the Sato, Full Command Line and Basic versions hoping th=
at one of them would include whatever it is that I need to recognize this d=
evice.

For the non-Sato versions I did copy the uImage and Modules to the SD card =
thinking they might help.

Any help would be great.

TIA

Brent Skinner | Firmware Supervisor | Document Imaging |
2400 Mt Read Blvd | Rochester, NY, 14615-3029 | brent.skinner@kodakalaris.c=
om |
585 726-0097 Office | www.kodakalaris.com
[cid:image001.png@01D02F28.04412580]


--_000_BY1PR0301MB0903960DEDEACE9D2470CC5DFC400BY1PR0301MB0903_
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
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Let me start by apologizing if the outcome is very o=
bvious to everyone but me. I&#8217;m VERY new to Linux and newer to Yocto.<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have an RTL8188EE wifi board that I&#8217;m connec=
ting to a Beaglebone Black via USB. If I do an &#8216;lsusb&#8217; I can se=
e that there is a Realtek device out there somewhere. Even though the drive=
r for this exact device appears in the kernel drivers,
 the device doesn&#8217;t mount. I&#8217;m running the dizzy version and ha=
ve tried building the Sato, Full Command Line and Basic versions hoping tha=
t one of them would include whatever it is that I need to recognize this de=
vice.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">For the non-Sato versions I did copy the uImage and =
Modules to the SD card thinking they might help.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any help would be great.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">TIA<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:12.0pt;margin-right:0in;=
margin-bottom:0in;margin-left:.75pt;margin-bottom:.0001pt;text-autospace:no=
ne">
<b><span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;=
color:black">Brent Skinner</span></b><span style=3D"font-size:9.0pt;font-fa=
mily:&quot;Arial&quot;,sans-serif;color:black"> | Firmware Supervisor | Doc=
ument Imaging |<br>
2400 Mt Read Blvd | Rochester, NY, 14615-3029 | brent.skinner@kodakalaris.c=
om |<br>
585 726-0097 Office | </span><u><span style=3D"font-size:8.0pt;font-family:=
&quot;Arial&quot;,sans-serif;color:blue">www.kodakalaris.com<o:p></o:p></sp=
an></u></p>
<p class=3D"MsoNormal"><img width=3D"781" height=3D"46" id=3D"Picture_x0020=
_1" src=3D"cid:image001.png@01D02F28.04412580"><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BY1PR0301MB0903960DEDEACE9D2470CC5DFC400BY1PR0301MB0903_--

--_004_BY1PR0301MB0903960DEDEACE9D2470CC5DFC400BY1PR0301MB0903_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=7894;
	creation-date="Tue, 13 Jan 2015 17:00:10 GMT";
	modification-date="Tue, 13 Jan 2015 17:00:10 GMT"
Content-ID: <image001.png@01D02F28.04412580>
Content-Transfer-Encoding: base64

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
jIARGA+B/wFIZfvk/fh76AAAAABJRU5ErkJggg==

--_004_BY1PR0301MB0903960DEDEACE9D2470CC5DFC400BY1PR0301MB0903_--
