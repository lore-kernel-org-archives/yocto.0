Return-Path: <zhenhua.luo@nxp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBC05E00948; Thu, 28 Jan 2016 02:31:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.112.70 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from emea01-am1-obe.outbound.protection.outlook.com
	(mail-am1on0070.outbound.protection.outlook.com [157.56.112.70])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BE81E00838
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 02:31:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
	s=selector1-nxp-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=eehqNW9B/ooG5Fdwyh/O16kJGnFqhyRsbz4H1mz3PIU=;
	b=fzqDdFu6Jdt0gHUCHNtXCsO9FJhbv9OUcJXgodSvArPXkbu7t4pHDFSOIGjnsdTwUPY2yAVjupwEnTxMlF+hWs1yoOnd6V/NKbeks1vtIirLmEmzTRsOfwA+RW+wurKGD59IcLhhacb9U/sy8bK26COIEUBZaLAHD9X6R1MoTuA=
Received: from DB3PR04MB0684.eurprd04.prod.outlook.com
	(2a01:111:e400:943c::14) by DB3PR04MB0681.eurprd04.prod.outlook.com
	(2a01:111:e400:943c::11) with Microsoft SMTP Server (TLS) id
	15.1.390.13; Thu, 28 Jan 2016 10:31:21 +0000
Received: from DB3PR04MB0684.eurprd04.prod.outlook.com
	([fe80::b052:dce2:c6d0:75be]) by
	DB3PR04MB0684.eurprd04.prod.outlook.com
	([fe80::b052:dce2:c6d0:75be%18]) with mapi id 15.01.0390.013;
	Thu, 28 Jan 2016 10:31:22 +0000
From: Zhenhua Luo <zhenhua.luo@nxp.com>
To: Michael Fainstein <Michael.Fainstein@ecitele.com>
Thread-Topic: [yocto] extracting SDK for supporting both 32 and 64 bit
	applications
Thread-Index: AdFZluqAYke+lDXKTjmv6hkKS3eiqgAD0AwA
Date: Thu, 28 Jan 2016 10:31:22 +0000
Message-ID: <DB3PR04MB06845AC6779594E43FF0CD31EEDA0@DB3PR04MB0684.eurprd04.prod.outlook.com>
References: <HE1PR03MB1692CE9536941F298AE054E7EEDA0@HE1PR03MB1692.eurprd03.prod.outlook.com>
In-Reply-To: <HE1PR03MB1692CE9536941F298AE054E7EEDA0@HE1PR03MB1692.eurprd03.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=zhenhua.luo@nxp.com; 
x-originating-ip: [199.59.226.141]
x-microsoft-exchange-diagnostics: 1; DB3PR04MB0681;
	5:h6EFmScGB62EEQV5hVQsyq+GASLgsL1VZJkwBzynMe8c9JwQS5EIvpVVaeFzrmePGvy06MziRGZ3F0hdAPOkmGAIk+Af2pbEG2R4mC4/QOAVFdqU+l6UqgfrGgK6KsP3G/62O4hMZbDuRBx3q6CwSQ==;
	24:GvY/boAF2RN8uT53svleN8B8H3RR87hLwQEl3klrfR1vql6koBbyKVnyD1Ejc0CjMO/XEfZM4UcO5aijkqvgcccJ8823Pd9AHdSt5ysVGCk=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB3PR04MB0681;
x-ms-office365-filtering-correlation-id: c14f7b07-b5ec-496b-090c-08d327ce2abf
x-microsoft-antispam-prvs: <DB3PR04MB0681AAC908B88BE137EF107FEEDA0@DB3PR04MB0681.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046);
	SRVR:DB3PR04MB0681; BCL:0; PCL:0; RULEID:; SRVR:DB3PR04MB0681; 
x-forefront-prvs: 083526BF8A
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(377454003)(189002)(199003)(4326007)(19580405001)(87936001)(81156007)(40100003)(92566002)(3660700001)(2906002)(790700001)(86362001)(5250100002)(5004730100002)(66066001)(102836003)(110136002)(97736004)(16236675004)(2900100001)(1220700001)(76576001)(15975445007)(5001960100002)(19625215002)(54356999)(74316001)(2950100001)(3846002)(586003)(3470700001)(19580395003)(76176999)(33656002)(101416001)(1096002)(3280700002)(19300405004)(189998001)(6116002)(50986999)(106356001)(105586002)(5002640100001)(5003600100002)(5008740100001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR04MB0681;
	H:DB3PR04MB0684.eurprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: nxp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2016 10:31:22.1718 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR04MB0681
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: extracting SDK for supporting both 32 and 64 bit	applications
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
X-List-Received-Date: Thu, 28 Jan 2016 10:31:28 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB3PR04MB06845AC6779594E43FF0CD31EEDA0DB3PR04MB0684eurp_"

--_000_DB3PR04MB06845AC6779594E43FF0CD31EEDA0DB3PR04MB0684eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Michael,

If you mean the standalone toolchain on host, the 32b and 64b build should =
be done by different toolchain, you need to install both 32b and 64b toolch=
ain.

If you mean the rootfs on target board, you can select a 64b target and add=
 32b package in corresponding rootfs bb file, e.g. IMAGE_INSTALL_append =3D=
 " lib32-zlib lib32-gcc ...'.


Best Regards,

Zhenhua

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Michael Fainstein
Sent: Thursday, January 28, 2016 2:46 PM
To: yocto@yoctoproject.org
Subject: [yocto] extracting SDK for supporting both 32 and 64 bit applicati=
ons

Dear community,

I am using Freescale's SDK 1.8 based on poky 1.6.2.

How can extract SDK that supports building of both 32 and 64 bit applicatio=
ns?

I defined configuration for my board to be 32 bit with 64 bit kernel and ex=
tracted SDK for application development.
Everything works fine: I can build 32 bit applications and execute them on =
my board and peek at PCI memory that is far above 32 bit memory limit.
I can build and load kernel loadable modules using bitbake.
However, building kernel modules using extracted SDK fails: while there are=
 64 bit tools in bitbake environment, there are no 64 bit tools and 64 bit =
headers in extracted SDK environment.
I tried also to define my board as 64 bit with multilibs and added to my im=
age 32-bit libraries. However, in this configuration the extracted SDK didn=
't contain 32 bit tools and headers. How do I add both 32 and 64 bit tools =
and headers to native SDK?


Thank you,
Michael

--_000_DB3PR04MB06845AC6779594E43FF0CD31EEDA0DB3PR04MB0684eurp_
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle19
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hi Michael, <o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">If you mean the standa=
lone toolchain on host, the 32b and 64b build should be done by different t=
oolchain, you need to install both 32b and 64b toolchain.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">If you mean the rootfs=
 on target board, you can select a 64b target and add 32b package in corres=
ponding rootfs bb file, e.g. IMAGE_INSTALL_append =3D &#8220; lib32-zlib li=
b32-gcc &#8230;&#8217;.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
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
<b>On Behalf Of </b>Michael Fainstein<br>
<b>Sent:</b> Thursday, January 28, 2016 2:46 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] extracting SDK for supporting both 32 and 64 bit ap=
plications<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Dear community,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am using Freescale&#8217;s SDK 1.8 based on poky 1=
.6.2.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">How can extract SDK that supports building of both 3=
2 and 64 bit applications?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I defined configuration for my board to be 32 bit wi=
th 64 bit kernel and extracted SDK for application development.<o:p></o:p><=
/p>
<p class=3D"MsoNormal">Everything works fine: I can build 32 bit applicatio=
ns and execute them on my board and peek at PCI memory that is far above 32=
 bit memory limit.<o:p></o:p></p>
<p class=3D"MsoNormal">I can build and load kernel loadable modules using b=
itbake.<o:p></o:p></p>
<p class=3D"MsoNormal">However, building kernel modules using extracted SDK=
 fails: while there are 64 bit tools in bitbake environment, there are no 6=
4 bit tools and 64 bit headers in extracted SDK environment.<o:p></o:p></p>
<p class=3D"MsoNormal">I tried also to define my board as 64 bit with multi=
libs and added to my image 32-bit libraries. However, in this configuration=
 the extracted SDK didn&#8217;t contain 32 bit tools and headers. How do I =
add both 32 and 64 bit tools and headers
 to native SDK?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you,<o:p></o:p></p>
<p class=3D"MsoNormal">Michael<o:p></o:p></p>
</div>
</div>
</body>
</html>

--_000_DB3PR04MB06845AC6779594E43FF0CD31EEDA0DB3PR04MB0684eurp_--
