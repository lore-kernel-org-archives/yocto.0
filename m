Return-Path: <ikatsnelson@vmem.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B61CAE00B7D; Fri, 20 Nov 2015 18:02:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.169.67 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 873 seconds by postgrey-1.32 at yocto-www;
	Fri, 20 Nov 2015 18:02:00 PST
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0067.outbound.protection.outlook.com [65.55.169.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3F50E00B70
	for <yocto@yoctoproject.org>; Fri, 20 Nov 2015 18:02:00 -0800 (PST)
Received: from DM2PR0501MB1535.namprd05.prod.outlook.com (10.160.133.13) by
	DM2PR0501MB1536.namprd05.prod.outlook.com (10.160.133.139) with
	Microsoft
	SMTP Server (TLS) id 15.1.331.20; Sat, 21 Nov 2015 01:47:25 +0000
Received: from DM2PR0501MB1535.namprd05.prod.outlook.com ([10.160.133.13]) by
	DM2PR0501MB1535.namprd05.prod.outlook.com ([10.160.133.13]) with
	mapi id 15.01.0325.019; Sat, 21 Nov 2015 01:47:25 +0000
From: Ilya Katsnelson <ikatsnelson@vmem.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: linux-yocto_4.1.bbapend
Thread-Index: AdEj+s4o6HsZj0tTTyOW98Xplx4Mbg==
Date: Sat, 21 Nov 2015 01:47:24 +0000
Message-ID: <DM2PR0501MB153513529A5553C8E9054E02D7190@DM2PR0501MB1535.namprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=ikatsnelson@vmem.com; 
x-originating-ip: [207.140.105.155]
x-microsoft-exchange-diagnostics: 1; DM2PR0501MB1536;
	5:cIa1vdtqTTaGFsgvBhx3hYn9nMeTWn9wrZShi83AkGFJbAinSj/ooeAK3XWp6p3k5y6cNHd90dy2OilpFMQAKxiGKvETRhhvYqpMhcZI6TxWSUfRv077qTTrrkYa3IIHY4a+6Ba+AQrKjxntPhdVMA==;
	24:QbHwosIyVsz5aGmyAtR4FRBKi1KWUHrYoHqetkNY3nC/5Ucqskb/akqg3TkYKLPDJuZr2p16Rj2DJWAAm70DT9b/jihmfBi97S/rsPK9Lfw=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DM2PR0501MB1536;
x-microsoft-antispam-prvs: <DM2PR0501MB15366A50EC9D6FE91CFA0DBCD7190@DM2PR0501MB1536.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(108003899814671);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(520078)(5005006)(8121501046)(10201501046)(3002001);
	SRVR:DM2PR0501MB1536; BCL:0; PCL:0; RULEID:;
	SRVR:DM2PR0501MB1536; 
x-forefront-prvs: 076777155F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(199003)(189002)(77096005)(87936001)(54356999)(66066001)(2501003)(586003)(102836003)(86362001)(15975445007)(19580395003)(106356001)(189998001)(3846002)(99286002)(16236675004)(790700001)(92566002)(81156007)(50986999)(40100003)(5003600100002)(122556002)(5008740100001)(105586002)(2900100001)(11100500001)(101416001)(450100001)(19617315012)(76576001)(19300405004)(10400500002)(229853001)(5001960100002)(5001920100001)(19625215002)(6116002)(5002640100001)(110136002)(74316001)(33656002)(5007970100001)(2351001)(97736004)(5004730100002)(107886002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM2PR0501MB1536;
	H:DM2PR0501MB1535.namprd05.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: vmem.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: vmem.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2015 01:47:24.7043 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6fa3283e-bf88-4e4a-8ab2-b90d2044551b
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM2PR0501MB1536
Subject: linux-yocto_4.1.bbapend
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
X-List-Received-Date: Sat, 21 Nov 2015 02:02:04 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM2PR0501MB153513529A5553C8E9054E02D7190DM2PR0501MB1535_"

--_000_DM2PR0501MB153513529A5553C8E9054E02D7190DM2PR0501MB1535_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello:

Sorry for a wide spam but I couldn't find the right area in Bugzilla where =
to put this question/error to.

I was debugging a properly generated BSP and found this potential problem:
There is a file named scripts/lib/bsp/substrate/target/arch/arm/recipes-ker=
nel/linux/linux-yocto_4.1.bbapend<https://git.yoctoproject.org/cgit/cgit.cg=
i/poky/tree/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/=
linux-yocto_4.1.bbapend>. Should it be called scripts/lib/bsp/substrate/tar=
get/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend. There is extra =
p in the extension.

Thank you,
-Ilya.



--_000_DM2PR0501MB153513529A5553C8E9054E02D7190DM2PR0501MB1535_
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
<p class=3D"MsoNormal">Hello:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Sorry for a wide spam but I couldn&#8217;t find the =
right area in Bugzilla where to put this question/error to.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I was debugging a properly generated BSP and found t=
his potential problem:<o:p></o:p></p>
<p class=3D"MsoNormal">There is a file named <span style=3D"font-family:&qu=
ot;Courier New&quot;">
<a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/scripts/lib=
/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbapend=
">scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yoct=
o_4.1.bbapend</a></span>. Should it
 be called <span style=3D"font-family:&quot;Courier New&quot;">scripts/lib/=
bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbap<b>p=
</b>end</span>. There is extra
<b>p</b> in the extension.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you,<o:p></o:p></p>
<p class=3D"MsoNormal">-Ilya.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_DM2PR0501MB153513529A5553C8E9054E02D7190DM2PR0501MB1535_--
