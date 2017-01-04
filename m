Return-Path: <Richard.Schmitt@commscope.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81E14E0034A; Wed,  4 Jan 2017 11:08:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.38.73 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 14445 seconds by postgrey-1.32 at yocto-www;
	Wed, 04 Jan 2017 11:08:25 PST
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-bl2nam02on0073.outbound.protection.outlook.com [104.47.38.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 018EFE0030B
	for <yocto@yoctoproject.org>; Wed,  4 Jan 2017 11:08:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=commscope.onmicrosoft.com; s=selector1-commscope-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=CTNOg/Ffc9j5fPTUMCu9Vus2A7A/nz6tzwSem3OREPQ=;
	b=fPfHj/3wUne/qHnbXbT3yhXNz17B3C6a+gO5XmaiguQG1dwzHLaQ9DfZn3iAaluEjLD7NTgPx9R2ztbeoLWZb5yk8J26v2J2YCXYDqHaz2xZITWPcTYvBsGFHsnmvVeWaObm8lBTYyDg7OdKT1/ajQzZJJdbpi55jtypJ7jO0Do=
Received: from BLUPR0601MB1649.namprd06.prod.outlook.com (10.163.212.143) by
	BLUPR0601MB1650.namprd06.prod.outlook.com (10.163.212.144) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.817.10;
	Wed, 4 Jan 2017 14:35:44 +0000
Received: from BLUPR0601MB1649.namprd06.prod.outlook.com ([10.163.212.143]) by
	BLUPR0601MB1649.namprd06.prod.outlook.com ([10.163.212.143]) with
	mapi id 15.01.0817.009; Wed, 4 Jan 2017 14:35:43 +0000
From: "Schmitt, Richard" <Richard.Schmitt@commscope.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] SDK: Missing 32 bit sysroot
Thread-Index: AdJmkkGX/1gtcOKOQrCzjRub+AkGRg==
Date: Wed, 4 Jan 2017 14:35:43 +0000
Message-ID: <BLUPR0601MB16492D49CB64E48D8814700DE6610@BLUPR0601MB1649.namprd06.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Richard.Schmitt@commscope.com; 
x-originating-ip: [131.239.32.100]
x-ms-office365-filtering-correlation-id: e79ebdae-c214-4ee2-60d0-08d434aef6ec
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:BLUPR0601MB1650; 
x-microsoft-exchange-diagnostics: 1; BLUPR0601MB1650;
	7:igewJNDeSCvDpIg2rrZxmfhYdTnV/TrY6VxyFBspRJPaW+rX6WJveqYEd2Tv6d2/0NvPyD1wOubTZxWZZScIR8TBycXgTh/cbyP/O/V74muAsuJcqZ0sfjMnP3HJWR4OgDmKYXeoSA+r2VI3YuxtBenzRAPsP54Ff6Hsp6Ofz9xoSUjY43YkAIzjWQ95l/S8jg0y78pK9nB3u7CAXqXwmgkNJAcoHQ8zrg4B1820GfhE+r4xc+EzrtDlb6TrRuoeefoCSu/gALH3Rev0FbyqLNAVBw79Rj0DdbstTEzdNAgikYQ7+k9Ysj7FgJOZwRec6fKSMC5dQ3RTTNgwfexMteasRV7FaagI2l4/xAUsK4vpuNxVFh+hptKWd0ABkT+vJgKXOVMjy94huwXNvV8YZyYEGWQjARxbTfDzJefj/o6NSWEmPnRdkXn3bOtsCUBOJt8l+A4dpXAeD09MIWgXdg==
x-microsoft-antispam-prvs: <BLUPR0601MB16504331E84E06971CCBD5CBE6610@BLUPR0601MB1650.namprd06.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6041248)(20161123564025)(20161123562025)(20161123555025)(20161123560025)(6072148);
	SRVR:BLUPR0601MB1650; BCL:0; PCL:0; RULEID:;
	SRVR:BLUPR0601MB1650; 
x-forefront-prvs: 0177904E6B
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(7916002)(39450400003)(52054003)(199003)(189002)(790700001)(33656002)(7906003)(450100001)(2351001)(3846002)(102836003)(106356001)(105586002)(6116002)(7736002)(2900100001)(25786008)(101416001)(8936002)(5640700003)(92566002)(2906002)(99286003)(122556002)(68736007)(86362001)(55016002)(74316002)(9686002)(2501003)(66066001)(3280700002)(8676002)(107886002)(81156014)(1730700003)(81166006)(6506006)(97736004)(6916009)(38730400001)(189998001)(5630700001)(77096006)(606005)(50986999)(3660700001)(7696004)(110136003)(5660300001)(6436002)(54356999);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR0601MB1650;
	H:BLUPR0601MB1649.namprd06.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: commscope.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: commscope.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2017 14:35:43.5821 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31472f81-8fe4-49ec-8bc3-fa1c295640d7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR0601MB1650
Subject: SDK: Missing 32 bit sysroot
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
X-List-Received-Date: Wed, 04 Jan 2017 19:08:29 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BLUPR0601MB16492D49CB64E48D8814700DE6610BLUPR0601MB1649_"

--_000_BLUPR0601MB16492D49CB64E48D8814700DE6610BLUPR0601MB1649_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have a ARM 32/64 multilib environment set up in my yocto based project.  =
Everythings working fine.  Almost.  I am using the poky krogoth branch with=
 the patch for "bug 1357" https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D1357 cherry-picked.

When I populate the SDK and install it, I do get two toolchains with the co=
rrect multilibs and the correct environment setup files

The two environment setup files are:

environment-setup-aarch32hf-neon-fp-armv8-pokymllib32-linux-gnueabi
environment-setup-aarch64-poky-linux

The two respective toolchains are:

arm-pokymllib32-linux-gnueabi-
aarch64-poky-linux-

Both of these toolchains are set up to use the 64 bit arm sysroot:

/opt/poky/2.1.2/sysroots/aarch64-poky-linux

There is one small issue.  The ARM sysroot that is exported contains linux =
include files that can only be used by the 64 bit toolchain.  For example:

Within the aarch64 sysroot, the linux include file:

/opt/poky/2.1.2/sysroots/aarch64-poky-linux/usr/include/asm/sigcontext.h

Contains the implicit type __uint128_t.  This type is not defined when usin=
g the arm-pokymllib32-linux-gnueabi- toolchain so any 32 bit that includes =
<signal.h> will fail to compile.

In my yocto build directory, I have a target sysroot for both the 32 bit an=
d 64 bit environments:

tmp/sysroot/lib32-machine
tmp/sysroot/machine

where machine is the value of the MACHINE define.

These two sysroots contain different usr/include/asm/sigcontext.h files.

If I copy over the lib32-machine sysroot to the opt/poky/sysroots directory=
 and use that sysroot when compiling 32 bit apps, things appear to work.

Now I am not quite sure the right way to fix this.  There are at least thre=
e possibilities:


1.       The 32 bit toolchain should be able to understand __uint128_t even=
 if it interprets to an array blob

2.       Yocto populate_sdk should export the 32 and 64 bit sysroots

3.       glibc should create include files that are useable in both 32 and =
64 bit environments.

What are folks thoughts here?  Right now I'm manually doing #2.

Thanks,
Rich

--_000_BLUPR0601MB16492D49CB64E48D8814700DE6610BLUPR0601MB1649_
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
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
/* List Definitions */
@list l0
	{mso-list-id:1077366106;
	mso-list-type:hybrid;
	mso-list-template-ids:-1127598924 67698703 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I have a ARM 32/64 multilib environment set up in my=
 yocto based project.&nbsp; Everythings working fine.&nbsp; Almost.&nbsp; I=
 am using the poky krogoth branch with the patch for &#8220;bug 1357&#8221;
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1357">https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D1357</a> cherry-picked.<o:p><=
/o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When I populate the SDK and install it, I do get two=
 toolchains with the correct multilibs and the correct environment setup fi=
les<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The two environment setup files are:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">environment-setup-aarch32hf-neon-fp-armv8-pokymllib3=
2-linux-gnueabi<o:p></o:p></p>
<p class=3D"MsoNormal">environment-setup-aarch64-poky-linux<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The two respective toolchains are:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">arm-pokymllib32-linux-gnueabi-<o:p></o:p></p>
<p class=3D"MsoNormal">aarch64-poky-linux-<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Both of these toolchains are set up to use the 64 bi=
t arm sysroot:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">/opt/poky/2.1.2/sysroots/aarch64-poky-linux<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">There is one small issue.&nbsp; The ARM sysroot that=
 is exported contains linux include files that can only be used by the 64 b=
it toolchain.&nbsp; For example:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Within the aarch64 sysroot, the linux include file:<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">/opt/poky/2.1.2/sysroots/aarch64-poky-linux/usr/incl=
ude/asm/sigcontext.h<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Contains the implicit type __uint128_t.&nbsp; This t=
ype is not defined when using the arm-pokymllib32-linux-gnueabi- toolchain =
so any 32 bit that includes &lt;signal.h&gt; will fail to compile.<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">In my yocto build directory, I have a target sysroot=
 for both the 32 bit and 64 bit environments:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">tmp/sysroot/lib32-machine<o:p></o:p></p>
<p class=3D"MsoNormal">tmp/sysroot/machine<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">where machine is the value of the MACHINE define.<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">These two sysroots contain different usr/include/asm=
/sigcontext.h files.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If I copy over the lib32-machine sysroot to the opt/=
poky/sysroots directory and use that sysroot when compiling 32 bit apps, th=
ings appear to work.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Now I am not quite sure the right way to fix this.&n=
bsp; There are at least three possibilities:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">1.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span><![endif]>The 32 bit toolchain should be able to understand _=
_uint128_t even if it interprets to an array blob<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">2.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span><![endif]>Yocto populate_sdk should export the 32 and 64 bit =
sysroots<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">3.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span><![endif]>glibc should create include files that are useable =
in both 32 and 64 bit environments.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What are folks thoughts here?&nbsp; Right now I&#821=
7;m manually doing #2.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Rich<o:p></o:p></p>
</div>
</body>
</html>

--_000_BLUPR0601MB16492D49CB64E48D8814700DE6610BLUPR0601MB1649_--
