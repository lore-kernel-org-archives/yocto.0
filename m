Return-Path: <dwatkins@sierrawireless.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4EDEE00D8F; Mon, 28 Oct 2019 13:20:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_SPF_HELO, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.70.72 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from NAM04-SN1-obe.outbound.protection.outlook.com
	(mail-eopbgr700072.outbound.protection.outlook.com [40.107.70.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7629E00D60
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2019 13:20:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=fO4bOolcGMfXwSCfcBx/RceaKgwNYJY7rhSkKXBOXfCkVVJHjvZ/PIdWgeURauhsenpcCm5crz5+/hGzfWkB5Yj7HIvNSEs5KwlM+jHDGND8Hko+5RY1DwMg6fm9xDq85lVWhXAmDVFffKEwifjqfk4vnVpK/y/2y0/D+TvLYrsTCMe/pdQUbxDI3p3dqGnLwqyp0D6Lwjr6gsmF2c/VWRiNOapluVDiCcFQfQExgyq0b1luN0DmunZFnivitUz+nN6LW6z5vr48EaavdFhNgkagi6oycqdSEvUFnomxt8wFWo4Fvoat+svmFvfKRfm9qUP8ZoXcc4OJl2XfWIXkKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=HzU6vE5xb5x70Uj1Y/baGOglEzgGmokZmNAG7pfp8UQ=;
	b=jE0Xa7vA4CiCnOXZCKPoJURG8YTOBPbfieoHzNCaEpc0V6RM8XdApvwdVOXbA2ahofZ4tNrylqKML1/FDYTcDUV1A/Cs2y76oFnYluZOOrtNC5KHAmeiZ5rtdSOqYnLMVPN3oswf7ywp6mYQT1HgCfZMExUwOG95NKQsLZ6fhG7Bw7HOmvm/bYfsNpWBOog0riqnx+CItu2QFTlcwy9skesm3xdzXVw6xvIZYGC+/8V2HolBTBauMq7FLhsv5y4vv/hxJmEDD3uaSB7ABJEmoCf7muvfLGTIemYFV517SewjqOmH8Xxf9zySLUfI0BTAyYP2Ho0ErmpahLz99QXe+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=sierrawireless.com; dmarc=pass action=none
	header.from=sierrawireless.com; dkim=pass header.d=sierrawireless.com; 
	arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sierrawireless.com;
	s=selector2;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=HzU6vE5xb5x70Uj1Y/baGOglEzgGmokZmNAG7pfp8UQ=;
	b=RyAi5ZqIUho9gYCLOUgUv7QpPSObv5ZhR24IB94QfjgC+6j9HfA8dr8kEzuophMAUp1LSd0BRiD2YKfh0hkt3s3GYvGvJEZ/O1+5GrK7rA4tNQnwGiNp1p5HyzTjQ8BfeS4PhHqjzy20c20RS0Ff3rs9PRSMYFjpmzUNVqXI5YM=
Received: from BYAPR02MB5525.namprd02.prod.outlook.com (20.177.231.154) by
	BYAPR02MB3910.namprd02.prod.outlook.com (20.176.248.141) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2387.22; Mon, 28 Oct 2019 20:20:40 +0000
Received: from BYAPR02MB5525.namprd02.prod.outlook.com
	([fe80::4cd9:9d50:e845:7bde]) by
	BYAPR02MB5525.namprd02.prod.outlook.com
	([fe80::4cd9:9d50:e845:7bde%3]) with mapi id 15.20.2387.025;
	Mon, 28 Oct 2019 20:20:40 +0000
From: Darcy Watkins <dwatkins@sierrawireless.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: allarch.bbclass is not clearing ABIEXTENSION
Thread-Index: AdWNy8oDwUlkXF20S6G3ht2cq5leUg==
Date: Mon, 28 Oct 2019 20:20:40 +0000
Message-ID: <BYAPR02MB5525D0259BAA655D17A4C482B2660@BYAPR02MB5525.namprd02.prod.outlook.com>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=dwatkins@sierrawireless.com; 
x-originating-ip: [208.81.120.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e23a49f0-eb40-43a6-7015-08d75be44d4a
x-ms-traffictypediagnostic: BYAPR02MB3910:|BYAPR02MB3910:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR02MB39106CB40AEB5C37E09A4AD2B2660@BYAPR02MB3910.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0204F0BDE2
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(136003)(366004)(39860400002)(396003)(376002)(346002)(199004)(189003)(486006)(3846002)(790700001)(5660300002)(6116002)(66946007)(66556008)(66446008)(66476007)(476003)(86362001)(64756008)(14454004)(26005)(6916009)(6506007)(2906002)(478600001)(2501003)(186003)(71200400001)(102836004)(71190400001)(33656002)(316002)(1730700003)(99286004)(7736002)(7696005)(74316002)(2351001)(8676002)(52536014)(5640700003)(54896002)(236005)(256004)(76116006)(6306002)(9686003)(6436002)(25786009)(8936002)(66066001)(81166006)(81156014)(9326002)(606006)(55016002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB3910;
	H:BYAPR02MB5525.namprd02.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:3; 
received-spf: None (protection.outlook.com: sierrawireless.com does not
	designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1ggeu186VjFrCy0liwrcjAofQFyb4uebmtRb1mRwUH+RfOdTYHhHkIinUM+0BnxEHElJMyf/x6V+YI4Nxha4actoR7GIi2oZsZV5syBj7naDCFEY5TBGD4apAyZvqqbOBcRQPjAhmUD2DREbSv9hkPlexwbmmCePjISaIjzn1X3Vgd8FGY6caDKLsrgf6sfJ7pzzipxdABo9Jx8kVorjcYyp4alVciU2pBZIdj53eqnE9k4Z6xRDRlVGKV58a6a56gR3dKVgq3jZz4gC30NB10DE3E/W49dLD/rnL2cfgqWv6OR+8z9FerkV2Dyd1Y7mAyyUvFjxQmY7peKghAjjE+s4pRqjfKOeXztYy4PSPJr7+tsuwjEWLdip6VYv4EW/AVSTXOxJPXA8WooCJdOQhzTDluy8cYeghqQQSaak14ypg1VYvi+aoOufltjBmoLx6IR0l7YfCgFaw1E4ECAIkCLW3kVLZOY+RDgZt8mjc7o=
MIME-Version: 1.0
X-OriginatorOrg: sierrawireless.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e23a49f0-eb40-43a6-7015-08d75be44d4a
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2019 20:20:40.1850 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yArnb6bzlkt64J5+UPFg1TfFt1BibjaQilUUDunY+bDspfDsoZvzKtpVOqfIWJTj0xwiBYswAHz+VQYfURJFyELqeh8Z+/pY6kV+6gueKOM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB3910
Subject: allarch.bbclass is not clearing ABIEXTENSION
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
X-List-Received-Date: Mon, 28 Oct 2019 20:20:48 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR02MB5525D0259BAA655D17A4C482B2660BYAPR02MB5525namp_"

--_000_BYAPR02MB5525D0259BAA655D17A4C482B2660BYAPR02MB5525namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I discovered that when I attempt to make use of variables such as WORKDIR, =
STAGING_DIR_HOST or RECIPE_SYSROOT in a recipe based on allarch.bbclass, th=
ese variables pointed to nonexistent path locations.  Upon investigation, I=
 determined that under the "tmp/work" directory, it is specifying "all-poky=
-linux-gnueabi" when in fact it should specify "all-poky-linux".

I got it to work properly in my recipe by setting ABIEXTENSION =3D "" (or u=
sing an anonymous python function within my customized bbclass to do this o=
nly when the PACKAGE_ARCH =3D=3D "all").

I believe that the correct action would be to clear it as part of allarch.b=
bclass.

Anyone else experience this issue?

I encountered this using 'warrior' when a custom bbclass I have that uses a=
 script from within the sysroot failed for allarch even though it worked fo=
r the normal arch.



Regards,

Darcy

Darcy Watkins ::  Senior Staff Engineer, Firmware

SIERRA WIRELESS
Direct  +1 604 233 7989   ::  Fax  +1 604 231 1109  ::  Main  +1 604 231 11=
00
13811 Wireless Way  :: Richmond, BC Canada V6V 3A4
[P2]
dwatkins@sierrawireless.com<mailto:dwatkins@sierrawireless.com> :: www.sier=
rawireless.com<http://www.sierrawireless.com/>


--_000_BYAPR02MB5525D0259BAA655D17A4C482B2660BYAPR02MB5525namp_
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-CA" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I discovered that when I attempt to make use of vari=
ables such as WORKDIR, STAGING_DIR_HOST or RECIPE_SYSROOT in a recipe based=
 on allarch.bbclass, these variables pointed to nonexistent path locations.=
&nbsp; Upon investigation, I determined
 that under the &#8220;tmp/work&#8221; directory, it is specifying &#8220;a=
ll-poky-linux-gnueabi&#8221; when in fact it should specify &#8220;all-poky=
-linux&#8221;.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I got it to work properly in my recipe by setting AB=
IEXTENSION =3D &#8220;&#8221; (or using an anonymous python function within=
 my customized bbclass to do this only when the PACKAGE_ARCH =3D=3D &#8220;=
all&#8221;).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I believe that the correct action would be to clear =
it as part of allarch.bbclass.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Anyone else experience this issue?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I encountered this using &#8216;warrior&#8217; when =
a custom bbclass I have that uses a script from within the sysroot failed f=
or allarch even though it worked for the normal arch.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span lang=3D"EN-US=
" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
#656565;mso-fareast-language:EN-CA"><o:p>&nbsp;</o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span lang=3D"EN-US=
" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
#656565;mso-fareast-language:EN-CA">Regards,<o:p></o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span lang=3D"EN-US=
" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
#656565;mso-fareast-language:EN-CA"><o:p>&nbsp;</o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span lang=3D"EN-US=
" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
#656565;mso-fareast-language:EN-CA">Darcy<o:p></o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span lang=3D"EN-US=
" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
#656565;mso-fareast-language:EN-CA"><o:p>&nbsp;</o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span lang=3D"EN-US=
" style=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#=
656565;mso-fareast-language:EN-CA">Darcy Watkins ::&nbsp;&nbsp;Senior Staff=
 Engineer, Firmware<o:p></o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span lang=3D"EN-US=
" style=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#=
E33A2F;mso-fareast-language:EN-CA"><o:p>&nbsp;</o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span lang=3D"EN-US=
" style=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#=
E33A2F;mso-fareast-language:EN-CA">SIERRA WIRELESS<o:p></o:p></span></b></p=
>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E33=
A2F;mso-fareast-language:EN-CA">Direct</span><span lang=3D"EN-US" style=3D"=
font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#656565;mso-=
fareast-language:EN-CA">&nbsp;
 &#43;1 604 233 7989&nbsp; &nbsp;::&nbsp; </span><span lang=3D"EN-US" style=
=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#E33A2F;=
mso-fareast-language:EN-CA">Fax&nbsp;
</span><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot;Aria=
l&quot;,sans-serif;color:#656565;mso-fareast-language:EN-CA">&#43;1 604 231=
 1109&nbsp; ::&nbsp;
</span><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot;Aria=
l&quot;,sans-serif;color:#C00000;mso-fareast-language:EN-CA">Main</span><sp=
an lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sa=
ns-serif;mso-fareast-language:EN-CA">&nbsp;
<span style=3D"color:#656565">&#43;1 604 231 1100</span><o:p></o:p></span><=
/p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#656=
565;mso-fareast-language:EN-CA">13811 Wireless Way&nbsp; ::&nbsp;Richmond, =
BC Canada V6V 3A4<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#656=
565;mso-fareast-language:EN-CA">[P2]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><u><span lang=3D"EN-US=
" style=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:b=
lue;mso-fareast-language:EN-CA"><a href=3D"mailto:dwatkins@sierrawireless.c=
om"><span style=3D"color:blue">dwatkins@sierrawireless.com</span></a></span=
></u><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot;Arial&=
quot;,sans-serif;color:#E43B30;mso-fareast-language:EN-CA">
 :: <a href=3D"http://www.sierrawireless.com/"><span style=3D"color:blue">w=
ww.sierrawireless.com</span></a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BYAPR02MB5525D0259BAA655D17A4C482B2660BYAPR02MB5525namp_--
