Return-Path: <neel.patel@einfochips.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE31BE00A38; Mon,  1 Jun 2015 00:02:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [134.170.140.80 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from APAC01-HK1-obe.outbound.protection.outlook.com
	(mail-hk1on0080.outbound.protection.outlook.com [134.170.140.80])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F28E8E009AD
	for <yocto@yoctoproject.org>; Mon,  1 Jun 2015 00:02:38 -0700 (PDT)
Received: from HK2PR0201MB0931.apcprd02.prod.outlook.com (25.162.244.145) by
	HK2PR0201MB0929.apcprd02.prod.outlook.com (25.162.244.143) with
	Microsoft
	SMTP Server (TLS) id 15.1.172.22; Mon, 1 Jun 2015 07:02:34 +0000
Received: from HK2PR0201MB0931.apcprd02.prod.outlook.com ([25.162.244.145]) by
	HK2PR0201MB0931.apcprd02.prod.outlook.com ([25.162.244.145]) with
	mapi id 15.01.0172.012; Mon, 1 Jun 2015 07:02:34 +0000
From: Neelkumar Patel <neel.patel@einfochips.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: cortexa15 toolchain compilation option
Thread-Index: AdCcNPBGJTK4lznySqa3NX1Quh/tuAAA4Zbw
Date: Mon, 1 Jun 2015 07:02:33 +0000
Message-ID: <HK2PR0201MB0931B1E128C7F804CB9DEED6FFB60@HK2PR0201MB0931.apcprd02.prod.outlook.com>
References: <HK2PR0201MB0931BD840FB4D45904641EDAFFB60@HK2PR0201MB0931.apcprd02.prod.outlook.com>
In-Reply-To: <HK2PR0201MB0931BD840FB4D45904641EDAFFB60@HK2PR0201MB0931.apcprd02.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=neel.patel@einfochips.com; 
x-originating-ip: [203.88.139.234]
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(42142001);
	SRVR:HK2PR0201MB0929; 
x-microsoft-antispam-prvs: <HK2PR0201MB092971B95AE0BB4BD13E60A0FFB60@HK2PR0201MB0929.apcprd02.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(5005006)(520003)(3002001); SRVR:HK2PR0201MB0929;
	BCL:0; PCL:0; RULEID:; SRVR:HK2PR0201MB0929; 
x-forefront-prvs: 05947791E4
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(199003)(189002)(51874003)(5002640100001)(2950100001)(2900100001)(189998001)(122556002)(87936001)(2501003)(77156002)(5890100001)(19300405004)(2656002)(64706001)(81156007)(62966003)(86362001)(74316001)(68736005)(97736004)(4001540100001)(450100001)(19580405001)(19580395003)(110136002)(40100003)(107886002)(5001960100002)(92566002)(5001860100001)(16236675004)(66066001)(5001830100001)(102836002)(15975445007)(101416001)(46102003)(106356001)(76576001)(2351001)(19625215002)(18717965001)(54356999)(50986999)(76176999)(33656002)(105586002)(21314002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:HK2PR0201MB0929;
	H:HK2PR0201MB0931.apcprd02.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: einfochips.com does not designate
	permitted sender hosts)
MIME-Version: 1.0
X-OriginatorOrg: einfochips.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2015 07:02:33.9407 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0adb040b-ca22-4ca6-9447-ab7b049a22ff
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2PR0201MB0929
Subject: Re: cortexa15 toolchain compilation option
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
X-List-Received-Date: Mon, 01 Jun 2015 07:02:41 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_HK2PR0201MB0931B1E128C7F804CB9DEED6FFB60HK2PR0201MB0931_"

--_000_HK2PR0201MB0931B1E128C7F804CB9DEED6FFB60HK2PR0201MB0931_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

Sorry option is  -mfloat-abi=3Dhard.

We have to provide below option during compilation.
arm-XXX-gcc  -mfloat-abi=3Dhard hello.c

We do not want to give -mfloat-abi=3Dhard option during compilation.

If we do not provide that option (arm-XXX-gcc  hello.c ) then it gives belo=
w error.
fatal error: gnu/stubs-soft.h: No such file or directory

Thanks
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Neelkumar Patel
Sent: 01 June 2015 12:04
To: yocto@yoctoproject.org
Subject: [yocto] cortexa15 toolchain compilation option

Hi,

We are building the toolchain for cortexa15 CPU in oe-core and we are able =
to build the toolchain but during the compilation of the application we hav=
e to provide manually option "--with-float=3Dhard".

e.g.  We have one application called "hello.c". We have to provide below op=
tion for compilation. If we do not provide --with-float option then we are =
getting compilation error.

arm-XXX-gcc  --with-float=3Dhard  hello.c

Is there any option to remove "-with-float" option during the application c=
ompilation. Is there any change we have to do in oe-core ??

Thanks in Advance.

***************************************************************************=
***************************************************************************=
******* eInfochips Business Disclaimer: This e-mail message and all attachm=
ents transmitted with it are intended solely for the use of the addressee a=
nd may contain legally privileged and confidential information. If the read=
er of this message is not the intended recipient, or an employee or agent r=
esponsible for delivering this message to the intended recipient, you are h=
ereby notified that any dissemination, distribution, copying, or other use =
of this message or its attachments is strictly prohibited. If you have rece=
ived this message in error, please notify the sender immediately by replyin=
g to this message and please delete it from your computer. Any views expres=
sed in this message are those of the individual sender unless otherwise sta=
ted. Company has taken enough precautions to prevent the spread of viruses.=
 However the company accepts no liability for any damage caused by any viru=
s transmitted by this email. **********************************************=
***************************************************************************=
************************************

--_000_HK2PR0201MB0931B1E128C7F804CB9DEED6FFB60HK2PR0201MB0931_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<body lang=3D"EN-IN" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hi,<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Sorry option is &nbsp;=
<b>-mfloat-abi=3Dhard.<o:p></o:p></b></span></p>
<p class=3D"MsoNormal"><b><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></=
span></b></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">We have to provide bel=
ow option during compilation.<b><o:p></o:p></b></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">arm-XXX-gcc<b>&nbsp; -=
mfloat-abi=3Dhard
</b>hello.c<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">We do not want to give=
 <b>-mfloat-abi=3Dhard
</b>option during compilation.<b><o:p></o:p></b></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">If we do not provide t=
hat option (arm-XXX-gcc<b>&nbsp;
</b>hello.c ) then it gives below error.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">fatal error: gnu/stubs=
-soft.h: No such file or directory<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Thanks<o:p></o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span =
lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&qu=
ot;sans-serif&quot;"> yocto-bounces@yoctoproject.org [mailto:yocto-bounces@=
yoctoproject.org]
<b>On Behalf Of </b>Neelkumar Patel<br>
<b>Sent:</b> 01 June 2015 12:04<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] cortexa15 toolchain compilation option<o:p></o:p></=
span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We are building the toolchain for cortexa15 CPU in o=
e-core and we are able to build the toolchain but during the compilation of=
 the application we have to provide manually option &#8220;--with-float=3Dh=
ard&#8221;.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">e.g.&nbsp; We have one application called &#8220;hel=
lo.c&#8221;. We have to provide below option for compilation. If we do not =
provide
<b>--with-float</b> option then we are getting compilation error.<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">arm-XXX-gcc&nbsp; <b>--with-float=3Dhard</b> &nbsp;h=
ello.c<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there any option to remove &#8220;&#8212;with-flo=
at&#8221; option during the application compilation. Is there any change we=
 have to do in oe-core ??<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks in Advance.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,&quot;serif&quot;">************************************=
***************************************************************************=
********************************************** eInfochips
 Business Disclaimer: This e-mail message and all attachments transmitted w=
ith it are intended solely for the use of the addressee and may contain leg=
ally privileged and confidential information. If the reader of this message=
 is not the intended recipient,
 or an employee or agent responsible for delivering this message to the int=
ended recipient, you are hereby notified that any dissemination, distributi=
on, copying, or other use of this message or its attachments is strictly pr=
ohibited. If you have received this
 message in error, please notify the sender immediately by replying to this=
 message and please delete it from your computer. Any views expressed in th=
is message are those of the individual sender unless otherwise stated. Comp=
any has taken enough precautions
 to prevent the spread of viruses. However the company accepts no liability=
 for any damage caused by any virus transmitted by this email. ************=
***************************************************************************=
**********************************************************************
<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_HK2PR0201MB0931B1E128C7F804CB9DEED6FFB60HK2PR0201MB0931_--
