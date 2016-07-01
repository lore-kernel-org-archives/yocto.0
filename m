Return-Path: <zhenhua.luo@nxp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8879BE00B48; Fri,  1 Jul 2016 18:15:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.0.41 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 42334 seconds by postgrey-1.32 at yocto-www;
	Fri, 01 Jul 2016 18:14:57 PDT
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
	(mail-he1eur01on0041.outbound.protection.outlook.com [104.47.0.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DF28E00B04
	for <yocto@yoctoproject.org>; Fri,  1 Jul 2016 18:14:57 -0700 (PDT)
Received: from DB3PR04MB0684.eurprd04.prod.outlook.com
	(2a01:111:e400:943c::14) by DB3PR04MB0682.eurprd04.prod.outlook.com
	(2a01:111:e400:943c::12) with Microsoft SMTP Server (TLS) id
	15.1.528.16; Fri, 1 Jul 2016 23:42:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=Op319yl9cbi3Fv8dj1mt9u6pLdbG91BTAxPz8qoRFUs=;
	b=H683V7e9NKUIoSoM86lTr6TDdeLlJxxclQI9mJXj65UG/7fWKCrqc/8DB1nyNRJkmA9c4oItQJ1M4YyafLA3J2TYu+9cW7DABsyTcp9hD8R2y2Iw/Ve4fIsFGmEceGO1I/wCkXGO8JQ1JxpEY8nJzObLsj63csdNpotQQEieLXg=
Received: from DB3PR04MB0684.eurprd04.prod.outlook.com (10.160.49.142) by
	DB3PR04MB0684.eurprd04.prod.outlook.com (10.160.49.142) with Microsoft
	SMTP Server (TLS) id 15.1.523.12; Fri, 1 Jul 2016 09:55:38 +0000
Received: from DB3PR04MB0684.eurprd04.prod.outlook.com
	([fe80::1d30:44c0:d745:ccc5]) by
	DB3PR04MB0684.eurprd04.prod.outlook.com
	([fe80::1d30:44c0:d745:ccc5%18]) with mapi id 15.01.0523.025;
	Fri, 1 Jul 2016 09:55:38 +0000
From: Zhenhua Luo <zhenhua.luo@nxp.com>
To: Ottavio Campana <o.campana@videotec.com>
Thread-Topic: customizing system configuration files in my image
Thread-Index: AdHTeJf7EiONJAneTy2bHmSqA+BuvQABRw9g
Date: Fri, 1 Jul 2016 09:55:38 +0000
Message-ID: <DB3PR04MB068425514BD2F5F577C7ACE1EE250@DB3PR04MB0684.eurprd04.prod.outlook.com>
References: <5637116E3E13BE46B0D936BF364783C1F350A1@MAIA.sede.videotec.com>
In-Reply-To: <5637116E3E13BE46B0D936BF364783C1F350A1@MAIA.sede.videotec.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=zhenhua.luo@nxp.com; 
x-originating-ip: [199.59.225.131]
X-MS-Office365-Filtering-Correlation-Id: 058814b0-7d5b-4447-38f8-08d3a195db29
x-microsoft-exchange-diagnostics: 1; DB3PR04MB0684;
	6:Kl1o+kYUIbxumKFS+b1s+zi9YCYdW4LascCRA6nHyQcM4O9KvGUYX19mUg3OsxEhwtvq3KMTvzejHBRUgo0OShLT5xg6PZTSEJZ94bi1puEiZSSd3wDxNIRZ9kKWvHWSVUoIalKUdZ6SSyBOWwhPf8WL7ztROcHpaoNi3qy9xKQkHj1QvU5c8Kk6ID8Dxf/X/15rgeB0/AttP++4XrQRbhN+62z4JpYZz3ViKi1hzglzYzbHJx1nFpcblRyuAo7X8yaq5GeginJtks4/Fe31dTxRnawA09ERTSXlSb+xtVMAdZgWft2quXIBYyTD5xs0YGuyqW/4QHKoUxFv0L4WiAX35OEyz7CTnQKwEbqkrF8=;
	5:T13p/abJilrtKWy0fvIjJJhg9RB04HPxazNjBwtjIC6sJheGOsVD5tKcQw4Gn++dqgXzXVmwu8YclyYoTUcpacT8tJGTYOFjPPnTdHXFOoMUk32tBtOUWG22/DH2pmL3KbBxqDSXZqWtlPqLCRTUBA==;
	24:nca/9+7UVgYCqwMzbBylXtpBXJTfThT7aqdoiYpKqEm4f290wqmjWxQ/96CGX2wMuhXG46xkUTJOMPsq44BIy2vGyus1x07KUUPUfPMUVUs=;
	7:88G0iqkhu4VV5M9DXQcV8voqto5cZXzNf/n3tpbevUrPc8py83z5sq9bgw/QA2a20QVm7dPznKnHZwzNdUVc7ysujzLO10UoK5bfSlPq4NhdCuOc1SCRBelfglFChI+s3UlM39lCCN5C0iFwaTZtMeX7stLZKj99IFT8jA6MkNvpR5lI2SG1YjOtYcjTUN2Cbdl9f6XvIlbNjTtdpc2ij5E+fp7eCCtR0mwkGiGLtlAF9dnJ6XauVf2S8RYxmTp84soepwqc3SAGIs02pLpo1Q==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB3PR04MB0684;
x-microsoft-antispam-prvs: <DB3PR04MB0684D1195D24B59CDF23A5F0EE250@DB3PR04MB0684.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(148322886591682)(31418570063057)(116415991822766)(128460861657000)(254730959083279)(21748063052155)(81160342030619)(91638250987450);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(102415321)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6055026);
	SRVR:DB3PR04MB0684; BCL:0; PCL:0; RULEID:; SRVR:DB3PR04MB0684; 
x-forefront-prvs: 0990C54589
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(7916002)(199003)(377454003)(189002)(110136002)(66066001)(6116002)(76176999)(2950100001)(790700001)(102836003)(3846002)(101416001)(19625215002)(8936002)(2900100001)(5250100002)(7736002)(189998001)(105586002)(2906002)(4326007)(19580395003)(106356001)(7846002)(3280700002)(18206015028)(19580405001)(5003600100003)(7696003)(54356999)(99936001)(50986999)(11100500001)(19627595001)(19617315012)(19300405004)(586003)(9686002)(15975445007)(97736004)(19609705001)(7906003)(68736007)(8676002)(5002640100001)(15395725005)(33656002)(81156014)(76576001)(81166006)(3660700001)(86362001)(16236675004)(92566002)(17760045003)(74316002)(87936001)(19618635001)(7099028);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR04MB0684;
	H:DB3PR04MB0684.eurprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: nxp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2016 09:55:38.6901 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR04MB0684
X-Microsoft-Exchange-Diagnostics: 1; DB3PR04MB0682;
	2:A64gezREHqJLhWAATs5L6nHOQrNlk4EiRswwA5N07zxXr/vz7gTUhife3rQlxI2NDMBf1Pfuk1y6hn3vv7juFXgXF26J0KgPEwH2VXV4MdRrM7iudkjQXVULSSD3OPMZndzjNm4VuIDRKsvIWN3po8VS9zgzfwJ+ZBVWnhlZ+LcZgZY2I4mGBRQttcoKF37F;
	31:57NDgCw6VNovSS/r4V1EmcxPo5UUFxBA8lK/7gqSWTLL/hl/r4V/od8ZXAUEadSWpkHVJl75vSoVp2h+XsTY1dqZFXmi2q8eCIdnLHUxgt4Lm0EGATdspukNVB0cz14iJmzcwzT+iBUPeZXQ9REEtkwjUJs0ifMQ8l3o5tlMcqP5YkGo/bG4DBzBDCBQ26x0iGzDjcvUcwZInkDeHRZQhw==;
	23:H8ta3gnF1DA6Umi46ukUMjM9n//U/VSsylNUK+BUMyCc8txtdMhebHw+PDvUuG2got+JExBx6wjUasP6jtnJlmet2w2igpaoHQTGC+njJAWxXDHtxH0IYYMAWXAGBoaXN4RWIwi4aK/b8hH9wjTpoMc5AW+JNCbeNNtFTmmfmMYxmnFp6mosOu7rgMv43ugL
X-OriginatorOrg: nxp.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: customizing system configuration files in my image
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
X-List-Received-Date: Sat, 02 Jul 2016 01:15:02 -0000
X-Groupsio-MsgNum: 30862
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_007_DB3PR04MB068425514BD2F5F577C7ACE1EE250DB3PR04MB0684eurp_";
	type="multipart/alternative"

--_007_DB3PR04MB068425514BD2F5F577C7ACE1EE250DB3PR04MB0684eurp_
Content-Type: multipart/alternative;
	boundary="_000_DB3PR04MB068425514BD2F5F577C7ACE1EE250DB3PR04MB0684eurp_"

--_000_DB3PR04MB068425514BD2F5F577C7ACE1EE250DB3PR04MB0684eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Usually I do it by adding bbappend of corresponding packages to override or=
iginal files, the interfaces is provided by init-ifupdown, the inittab is p=
rovided by sysvinit-inittab.

An example: http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-ppc/tree/rec=
ipes-core/init-ifupdown


Best Regards,

Zhenhua

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ottavio Campana
Sent: Friday, July 01, 2016 5:12 PM
To: yocto@yoctoproject.org
Subject: [yocto] customizing system configuration files in my image

Hello,

I would like to customize an image I am developing based on core image mini=
mal.

Particularly, I'd like to customize the files /etc/network/interfaces and /=
etc/inittab .

What should I do achieve that?

Thank you

Ottavio

--
[Videotec Logo]<http://www.videotec.com/>

Ottavio Campana
Product Manager - Electronic R&D Department

Office +39.0445.697.411  Fax +39.0445.697.414
Address  VIDEOTEC S.p.A. - Via Friuli, 6 - 36015 Schio (Vicenza) - Italy


Any information herein transmitted only concerns the person or the company =
named in the address and is deemed to be confidential It is strictly forbid=
den to transmit, post, forward or otherwise use said information to anyone =
other than the recipient. If you have received this message by mistake, ple=
ase contact the sender and delete any relevant information from your comput=
er. This mailbox is only meant for sending and receiving messages pertainin=
g business matters and any other use for personal purposes is forbidden and=
 unauthorized. Therefore, any email sent and received will be handled as or=
dinary business messages and subject to the company's own rules, and may th=
us be read also by people other than the user named in the mailbox address.

[Twitter Logo blue]<http://www.videotec.com/twitter>   [Youtube logo red] <=
http://www.videotec.com/youtube>    [Linkedin logo blue] <http://www.videot=
ec.com/linkedin>




--_000_DB3PR04MB068425514BD2F5F577C7ACE1EE250DB3PR04MB0684eurp_
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma",sans-serif;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Segoe UI",sans-serif;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
p.Testofumetto, li.Testofumetto, div.Testofumetto
	{mso-style-name:"Testo fumetto";
	mso-style-link:"Testo fumetto Carattere";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.TestofumettoCarattere
	{mso-style-name:"Testo fumetto Carattere";
	mso-style-priority:99;
	mso-style-link:"Testo fumetto";
	font-family:"Tahoma",sans-serif;}
span.EmailStyle22
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 56.7pt 56.7pt 56.7pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Usually I do it by add=
ing bbappend of corresponding packages to override original files, the inte=
rfaces is provided by init-ifupdown, the inittab is provided by sysvinit-in=
ittab.
<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">An example: <a href=3D=
"http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-ppc/tree/recipes-core/i=
nit-ifupdown">
http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-ppc/tree/recipes-core/in=
it-ifupdown</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Best Regards,<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Zhenhua<o:p></o:p></sp=
an></p>
</div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> yocto-bounces@yoctoproject.org [mailto:=
yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Ottavio Campana<br>
<b>Sent:</b> Friday, July 01, 2016 5:12 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] customizing system configuration files in my image<=
o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"IT">Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"IT"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">I would like to customize an image I am developing b=
ased on core image minimal.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Particularly, I&#8217;d like to customize the files =
/etc/network/interfaces and /etc/inittab .<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What should I do achieve that?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Ottavio<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"IT" style=3D"font-size:12.0pt;font-fam=
ily:&quot;Times New Roman&quot;,serif">--<o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"border-collapse:collapse">
<tbody>
<tr>
<td width=3D"57" style=3D"width:42.4pt;padding:0in 0in 0in 0in">
<p class=3D"MsoNormal"><a href=3D"http://www.videotec.com/"><span style=3D"=
text-decoration:none"><img border=3D"0" width=3D"97" height=3D"76" id=3D"Im=
magine_x0020_1" src=3D"cid:image001.png@01D1D3C1.2EA0E420" alt=3D"Videotec =
Logo"></span></a><o:p></o:p></p>
</td>
<td width=3D"326" valign=3D"top" style=3D"width:244.5pt;padding:0in 0in 0in=
 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt">Ottavio Campana<=
/span></b><span style=3D"font-size:10.0pt">
<br>
<i>Product Manager - Electronic R&amp;D Department</i> <br>
<br>
<span style=3D"color:red">Office&nbsp;</span>&#43;39.0445.697.411 <span sty=
le=3D"color:red">&nbsp;Fax&nbsp;</span>&#43;39.0445.697.414
<br>
<span style=3D"color:red">Address&nbsp;</span> VIDEOTEC S.p.A. - Via Friuli=
, 6 - 36015 Schio (Vicenza) - Italy &nbsp;
<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"IT" style=3D"font-size:12.0pt;font-fam=
ily:&quot;Times New Roman&quot;,serif"><o:p>&nbsp;</o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0">
<tbody>
<tr>
<td width=3D"383" style=3D"width:286.9pt;padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"text-align:justify"><i><span style=3D"font-=
size:8.0pt;color:gray">Any information herein transmitted only concerns the=
 person or the company named in the address and is deemed to be confidentia=
l It is strictly forbidden to transmit,
 post, forward or otherwise use said information to anyone other than the r=
ecipient. If you have received this message by mistake, please contact the =
sender and delete any relevant information from your computer. This mailbox=
 is only meant for sending and receiving
 messages pertaining business matters and any other use for personal purpos=
es is forbidden and unauthorized. Therefore, any email sent and received wi=
ll be handled as ordinary business messages and subject to the company's ow=
n rules, and may thus be read also
 by people other than the user named in the mailbox address. </span></i><sp=
an style=3D"font-size:8.0pt;color:gray"><br>
<br>
</span><a href=3D"http://www.videotec.com/twitter" title=3D"&quot;http://tw=
itter.com/videotec&quot; "><span style=3D"font-size:8.0pt;text-decoration:n=
one"><img border=3D"0" width=3D"28" height=3D"28" id=3D"Immagine_x0020_2" s=
rc=3D"cid:image002.gif@01D1D3C1.2EA0E420" alt=3D"Twitter Logo blue"></span>=
</a><span style=3D"font-size:8.0pt;color:gray">&nbsp;&nbsp;
</span><a href=3D"http://www.videotec.com/youtube" title=3D"&quot;http://ww=
w.youtube.com/user/videotecspa&quot; "><span style=3D"font-size:8.0pt;text-=
decoration:none"><img border=3D"0" width=3D"28" height=3D"28" id=3D"Immagin=
e_x0020_3" src=3D"cid:image003.gif@01D1D3C1.2EA0E420" alt=3D"Youtube logo r=
ed"></span></a><span style=3D"font-size:8.0pt;color:gray">&nbsp;&nbsp;
</span><a href=3D"http://www.videotec.com/linkedin" title=3D"&quot;http://w=
ww.linkedin.com/company/videotec&quot; "><span style=3D"font-size:8.0pt;tex=
t-decoration:none"><img border=3D"0" width=3D"28" height=3D"28" id=3D"Immag=
ine_x0020_4" src=3D"cid:image004.png@01D1D3C1.2EA0E420" alt=3D"Linkedin log=
o blue"></span></a><span style=3D"font-size:8.0pt;color:gray"><o:p></o:p></=
span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</body>
</html>

--_000_DB3PR04MB068425514BD2F5F577C7ACE1EE250DB3PR04MB0684eurp_--

--_007_DB3PR04MB068425514BD2F5F577C7ACE1EE250DB3PR04MB0684eurp_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=3602;
	creation-date="Fri, 01 Jul 2016 09:55:33 GMT";
	modification-date="Fri, 01 Jul 2016 09:55:33 GMT"
Content-ID: <image001.png@01D1D3C1.2EA0E420>
Content-Transfer-Encoding: base64

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
AAAASUVORK5CYII=

--_007_DB3PR04MB068425514BD2F5F577C7ACE1EE250DB3PR04MB0684eurp_
Content-Type: image/gif; name="image002.gif"
Content-Description: image002.gif
Content-Disposition: inline; filename="image002.gif"; size=1393;
	creation-date="Fri, 01 Jul 2016 09:55:35 GMT";
	modification-date="Fri, 01 Jul 2016 09:55:35 GMT"
Content-ID: <image002.gif@01D1D3C1.2EA0E420>
Content-Transfer-Encoding: base64

R0lGODlhHAAcAMQAAIfG60yv45TM7aXV8W27573f9PT5/bDY8Tyr4Vaz5Mrl9sjk9ev0+/r9/mi5
5kKt4mK35ZrP7v3+/5/R73e/6dDo96zX8PH4/Pj7/rjd81u05dfs+O72/N7v+v///ziq4SH/C1hN
UCBEYXRhWE1QPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6TlRjemtj
OWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iQWRvYmUg
WE1QIENvcmUgNS4zLWMwMTEgNjYuMTQ1NjYxLCAyMDEyLzAyLzA2LTE0OjU2OjI3ICAgICAgICAi
PiA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5
bnRheC1ucyMiPiA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczp4bXA9Imh0dHA6
Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29t
L3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NU
eXBlL1Jlc291cmNlUmVmIyIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ1M2IChN
YWNpbnRvc2gpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkE5QTY2QzA3MzI3NzExRTM5RDAy
OEJBNzI3NzdENEIyIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkE5QTY2QzA4MzI3NzExRTM5
RDAyOEJBNzI3NzdENEIyIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9Inht
cC5paWQ6QTlBNjZDMDUzMjc3MTFFMzlEMDI4QkE3Mjc3N0Q0QjIiIHN0UmVmOmRvY3VtZW50SUQ9
InhtcC5kaWQ6QTlBNjZDMDYzMjc3MTFFMzlEMDI4QkE3Mjc3N0Q0QjIiLz4gPC9yZGY6RGVzY3Jp
cHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz4B//79/Pv6
+fj39vX08/Lx8O/u7ezr6uno5+bl5OPi4eDf3t3c29rZ2NfW1dTT0tHQz87NzMvKycjHxsXEw8LB
wL++vby7urm4t7a1tLOysbCvrq2sq6qpqKempaSjoqGgn56dnJuamZiXlpWUk5KRkI+OjYyLiomI
h4aFhIOCgYB/fn18e3p5eHd2dXRzcnFwb25tbGtqaWhnZmVkY2JhYF9eXVxbWllYV1ZVVFNSUVBP
Tk1MS0pJSEdGRURDQkFAPz49PDs6OTg3NjU0MzIxMC8uLSwrKikoJyYlJCMiISAfHh0cGxoZGBcW
FRQTEhEQDw4NDAsKCQgHBgUEAwIBAAAh+QQAAAAAACwAAAAAHAAcAAAF0KAnjmKjCE7wfYEjKA0p
y9igrngeDNgsV4mcUJio+ESHoVJ48FmWUJxFtohaP4vR5XZdBi6iSNca8RgeXQ2AskLnHobMkAAQ
CiSijaIuzPBzAh4WbgExIxhPQgAaQxQiDBMODj8IQxqVQg4dR0hKmEKOnB4CS585BZwSQUMIjHMM
RwVLap6oMxyrQwByngN4WgRQGWeKCxxUuUNwHmJCEBMFChkREGQiW2NeYCJV2UNZJIneK1MzSeNN
R0BjRaIeNVxKOz3uJScpKy0vhvX9nCEAOw==

--_007_DB3PR04MB068425514BD2F5F577C7ACE1EE250DB3PR04MB0684eurp_
Content-Type: image/gif; name="image003.gif"
Content-Description: image003.gif
Content-Disposition: inline; filename="image003.gif"; size=1385;
	creation-date="Fri, 01 Jul 2016 09:55:36 GMT";
	modification-date="Fri, 01 Jul 2016 09:55:36 GMT"
Content-ID: <image003.gif@01D1D3C1.2EA0E420>
Content-Transfer-Encoding: base64

R0lGODlhHAAcAMQAAP3Fxf/9/f/e3+c5PPaEhfiTlOUwMuMnKexMTv/u7uYxM+QrLfmZmvV8feIi
JP27vPqpqeg+QP/w8f/5+fFqa/mcnv729vy6uvWAgec1N//z8+UtMP3Q0O9bXP///+EfISH/C1hN
UCBEYXRhWE1QPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6TlRjemtj
OWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iQWRvYmUg
WE1QIENvcmUgNS4zLWMwMTEgNjYuMTQ1NjYxLCAyMDEyLzAyLzA2LTE0OjU2OjI3ICAgICAgICAi
PiA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5
bnRheC1ucyMiPiA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczp4bXA9Imh0dHA6
Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29t
L3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NU
eXBlL1Jlc291cmNlUmVmIyIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ1M2IChN
YWNpbnRvc2gpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkVDN0ExOTE0MzI3NzExRTM5RDAy
OEJBNzI3NzdENEIyIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkVDN0ExOTE1MzI3NzExRTM5
RDAyOEJBNzI3NzdENEIyIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9Inht
cC5paWQ6QTlBNjZDMDkzMjc3MTFFMzlEMDI4QkE3Mjc3N0Q0QjIiIHN0UmVmOmRvY3VtZW50SUQ9
InhtcC5kaWQ6QTlBNjZDMEEzMjc3MTFFMzlEMDI4QkE3Mjc3N0Q0QjIiLz4gPC9yZGY6RGVzY3Jp
cHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz4B//79/Pv6
+fj39vX08/Lx8O/u7ezr6uno5+bl5OPi4eDf3t3c29rZ2NfW1dTT0tHQz87NzMvKycjHxsXEw8LB
wL++vby7urm4t7a1tLOysbCvrq2sq6qpqKempaSjoqGgn56dnJuamZiXlpWUk5KRkI+OjYyLiomI
h4aFhIOCgYB/fn18e3p5eHd2dXRzcnFwb25tbGtqaWhnZmVkY2JhYF9eXVxbWllYV1ZVVFNSUVBP
Tk1MS0pJSEdGRURDQkFAPz49PDs6OTg3NjU0MzIxMC8uLSwrKikoJyYlJCMiISAfHh0cGxoZGBcW
FRQTEhEQDw4NDAsKCQgHBgUEAwIBAAAh+QQAAAAAACwAAAAAHAAcAAAFyKAnjuL0NMjyfQvSPBMp
y1ahrHj+KYU1y4CBbogbAH6iCnGJq/wYzOiHIbtIpZdRwnCNGhIiQldK8EgOw0xnzW4LdQcJZEgI
IEUBzBBCGWruWkMUETobMg1HM0MRDjoGMggfFAIyQ42OkCsHHCRElziPJJGTlToOhDmGJBSJpTkR
fTpggB4agnM6GHZ3AWI6EGdDA23EHRlDcR6+Y0tlHlvMRAqzHlbROlkkUNcrVDNK105IQWNGtDU3
TDw+tCUnKSstLzHt9YAhADs=

--_007_DB3PR04MB068425514BD2F5F577C7ACE1EE250DB3PR04MB0684eurp_
Content-Type: image/png; name="image004.png"
Content-Description: image004.png
Content-Disposition: inline; filename="image004.png"; size=1161;
	creation-date="Fri, 01 Jul 2016 09:55:37 GMT";
	modification-date="Fri, 01 Jul 2016 09:55:37 GMT"
Content-ID: <image004.png@01D1D3C1.2EA0E420>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAABwAAAAcCAYAAAByDd+UAAAAAXNSR0ICQMB9xQAAAAlwSFlzAAAO
xAAADsQBlSsOGwAAABl0RVh0U29mdHdhcmUATWljcm9zb2Z0IE9mZmljZX/tNXEAAAQJSURBVEjH
5ZZfTFt1FMcvf/eHDDa2+ODDTNT46otGM5I9L9sLS3Q6jUQzXeZAXNeWgoVNJuzJB9S4OTSbJmgc
vS23fxksBCUrAiODDWEwoDA2kZZS96ct/f/1/O7tem/Z3HR0T97km/ae87vnc+/5/TmHuzj3F577
vBtZVRYUHW3PmDitBSXfDaO5Z+Y4gNz6+nqOiXv5pBPZOis4AmbpklL+f0yxeLkqAeV21/LsQuDt
FHCd3iG+DRsg6nAbuENG6Vdrlu2Po0oj9pqn0T3j3ZcCbqhzKGAmrNGZUXysAwXVSfhqgB+bsMd0
DecnPe+lgIVHHGmwLwauwxeMwDbyJ4rrO8CpTKsCvnE/sF1K3cFWHDAOI5ZA6mrqmpTSqzE/AWC5
AfrOcSgv2+U/pLRmHMicFQa8dqYfPn9YhIUicVQLI9IXajOa0uQcagTkqtuw/+wQ+ie9qLONYh3N
KacWJCD5xf/s915Ads8ywKQW/iOQ7UWVEWtVBmzWtaFAzYv3zJ5FKc9T8cgnX94hgwQlyFqtgEK9
FYU1FuSrTfdvpYemlFbjM8c7oaU0HrWMotY2hmebfqWHjNja2IlPrKNosI9BR/4ivR1P1dpwqmca
Q9d9GHD50Hh+Ak9/6hDHp6bgocDyVrx++jfc8kcRoaUaiiYo+BVwH7Rgxykn/EHJvngnhA+NV9A1
7kYiIS/pSDwB55QXW4+dk6D/BvjW930IheOpIEcstGjeb8Gub3sRi0r2aCwOz+0Q/un6rP0qssW0
mx8NfPNMHwLLMfFBemHUmiXgzuZehMOxtMDuuyH0T3sxtxQEFHt3wOVFQQ2th8NC5oCLtHVe/MaJ
DZUGbG/qxqT7bppvS0MnbSdT5oBf/zJFi4wXn+EqWtHQO5vy+SMxvHLiAsH4zAHLfh6SArK9RyeU
huZNCSyhr88osLRlUArI9mMFD41jLA247eQTBRpQteIL/3/AjomFd1YF3P0IYIkCuMdwFRdmvCpy
bSEVpwH30kkTjSQUJ83v0klDwISiMpf+mA7UnZOB4Xgc2+6tUlrBpT9chCcQdZNrgeSTgR/x2EED
pz1+3PAFcfPWMg6evQRu/08o+bJH3NxzvgBmlwJ49XSfDKzkUUYl7Sb5XIt+jLrv4HkaL/opZplw
DZc8gX0E62AvJDdRdMLnVVtRVGfHRrIxramxieUmN2kvIhtTTo1VLkH0XD6N2yj67CgkZVdb5cOb
Hwd/eX43sZpJS9x6vaJrY7WMNU1MYi+TLKoahZ1Js6LYsvs0v1luE4UpdE0ssC8sIG3iXjrhFBvf
VCNctUIPsq1slB/gZ/FyqBF+1+YKDs7flhth4/A81lNBzaHKzlp0NqeZEOvmX/hqEAdMI43tilb/
b+8F9HO1HeU+AAAAAElFTkSuQmCC

--_007_DB3PR04MB068425514BD2F5F577C7ACE1EE250DB3PR04MB0684eurp_--
