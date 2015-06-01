Return-Path: <neel.patel@einfochips.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F2F1E0095C; Sun, 31 May 2015 23:49:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [134.170.140.98 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 941 seconds by postgrey-1.32 at yocto-www;
	Sun, 31 May 2015 23:49:45 PDT
Received: from APAC01-HK1-obe.outbound.protection.outlook.com
	(mail-hk1on0098.outbound.protection.outlook.com [134.170.140.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B2F7E0095C
	for <yocto@yoctoproject.org>; Sun, 31 May 2015 23:49:45 -0700 (PDT)
Received: from HK2PR0201MB0931.apcprd02.prod.outlook.com (25.162.244.145) by
	HK2PR0201MB0931.apcprd02.prod.outlook.com (25.162.244.145) with
	Microsoft
	SMTP Server (TLS) id 15.1.172.22; Mon, 1 Jun 2015 06:33:59 +0000
Received: from HK2PR0201MB0931.apcprd02.prod.outlook.com ([25.162.244.145]) by
	HK2PR0201MB0931.apcprd02.prod.outlook.com ([25.162.244.145]) with
	mapi id 15.01.0172.012; Mon, 1 Jun 2015 06:33:59 +0000
From: Neelkumar Patel <neel.patel@einfochips.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: cortexa15 toolchain compilation option
Thread-Index: AdCcNPBGJTK4lznySqa3NX1Quh/tuA==
Date: Mon, 1 Jun 2015 06:33:59 +0000
Message-ID: <HK2PR0201MB0931BD840FB4D45904641EDAFFB60@HK2PR0201MB0931.apcprd02.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=neel.patel@einfochips.com; 
x-originating-ip: [203.88.139.234]
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:HK2PR0201MB0931;
x-microsoft-antispam-prvs: <HK2PR0201MB0931A2AB0D62924F2F9937FBFFB60@HK2PR0201MB0931.apcprd02.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(5005006)(520003)(3002001); SRVR:HK2PR0201MB0931;
	BCL:0; PCL:0; RULEID:; SRVR:HK2PR0201MB0931; 
x-forefront-prvs: 05947791E4
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(189002)(51874003)(199003)(64706001)(68736005)(54356999)(50986999)(19580395003)(15975445007)(107886002)(46102003)(5001860100001)(5001960100002)(110136002)(5001830100001)(62966003)(122556002)(2900100001)(102836002)(77156002)(450100001)(5002640100001)(4001540100001)(97736004)(81156007)(189998001)(105586002)(86362001)(87936001)(2656002)(101416001)(19625215002)(33656002)(66066001)(229853001)(2351001)(40100003)(19300405004)(92566002)(106356001)(18717965001)(16236675004)(5890100001)(2501003)(76576001)(74316001)(21314002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:HK2PR0201MB0931;
	H:HK2PR0201MB0931.apcprd02.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: einfochips.com does not designate
	permitted sender hosts)
MIME-Version: 1.0
X-OriginatorOrg: einfochips.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2015 06:33:59.2962 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0adb040b-ca22-4ca6-9447-ab7b049a22ff
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2PR0201MB0931
Subject: cortexa15 toolchain compilation option
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
X-List-Received-Date: Mon, 01 Jun 2015 06:49:49 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_HK2PR0201MB0931BD840FB4D45904641EDAFFB60HK2PR0201MB0931_"

--_000_HK2PR0201MB0931BD840FB4D45904641EDAFFB60HK2PR0201MB0931_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

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

--_000_HK2PR0201MB0931BD840FB4D45904641EDAFFB60HK2PR0201MB0931_
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
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
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
</div>
***************************************************************************=
***************************************************************************=
******* eInfochips Business Disclaimer: This e-mail message and all attachm=
ents transmitted with it are intended
 solely for the use of the addressee and may contain legally privileged and=
 confidential information. If the reader of this message is not the intende=
d recipient, or an employee or agent responsible for delivering this messag=
e to the intended recipient, you
 are hereby notified that any dissemination, distribution, copying, or othe=
r use of this message or its attachments is strictly prohibited. If you hav=
e received this message in error, please notify the sender immediately by r=
eplying to this message and please
 delete it from your computer. Any views expressed in this message are thos=
e of the individual sender unless otherwise stated. Company has taken enoug=
h precautions to prevent the spread of viruses. However the company accepts=
 no liability for any damage caused
 by any virus transmitted by this email. **********************************=
***************************************************************************=
************************************************
</body>
</html>

--_000_HK2PR0201MB0931BD840FB4D45904641EDAFFB60HK2PR0201MB0931_--
