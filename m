Return-Path: <zhenhua.luo@freescale.com>
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2lp0205.outbound.protection.outlook.com [207.46.163.205])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DBECE00804
	for <yocto@yoctoproject.org>; Thu, 23 Jan 2014 18:02:51 -0800 (PST)
Received: from DM2PR03MB399.namprd03.prod.outlook.com (10.141.84.148) by
	DM2PR03MB398.namprd03.prod.outlook.com (10.141.84.140) with Microsoft
	SMTP Server (TLS) id 15.0.847.13; Fri, 24 Jan 2014 02:02:36 +0000
Received: from DM2PR03MB399.namprd03.prod.outlook.com ([10.141.84.148]) by
	DM2PR03MB399.namprd03.prod.outlook.com ([10.141.84.148]) with mapi id
	15.00.0847.008; Fri, 24 Jan 2014 02:02:36 +0000
From: "zhenhua.luo@freescale.com" <zhenhua.luo@freescale.com>
To: Harpreet Singh <harpreet.bhatia30@gmail.com>
Thread-Topic: [yocto] Need to customize /etc/network/interface
Thread-Index: AQHPGKD/SCOufyjojUyHpK6VVLs/KZqTHslw
Date: Fri, 24 Jan 2014 02:02:35 +0000
Message-ID: <3e7947cd46d543c2b85752f46dd91289@DM2PR03MB399.namprd03.prod.outlook.com>
References: <CA+_BiB3EVGC2e=T027_fwHhbG=HKydovjG9OFd3wqfpymyQapg@mail.gmail.com>
In-Reply-To: <CA+_BiB3EVGC2e=T027_fwHhbG=HKydovjG9OFd3wqfpymyQapg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [123.151.195.50]
x-forefront-prvs: 01018CB5B3
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009001)(6009001)(377454003)(189002)(199002)(80022001)(81816001)(53806001)(65816001)(59766001)(76482001)(50986001)(83072002)(33646001)(18717965001)(76786001)(93136001)(85306002)(93516002)(81686001)(90146001)(86362001)(63696002)(51856001)(87936001)(74316001)(74876001)(2656002)(16236675002)(56776001)(46102001)(76796001)(74662001)(74706001)(81342001)(15202345003)(19580405001)(76576001)(47976001)(69226001)(80976001)(66066001)(47736001)(19580395003)(31966008)(15975445006)(92566001)(79102001)(54316002)(19300405004)(81542001)(87266001)(54356001)(85852003)(77982001)(19609705001)(4396001)(74502001)(47446002)(83322001)(49866001)(56816005)(94316002)(74366001)(24736002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM2PR03MB398;
	H:DM2PR03MB399.namprd03.prod.outlook.com; CLIP:123.151.195.50;
	FPR:; RD:InfoNoRecords; MX:1; A:1; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Need to customize /etc/network/interface
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
X-List-Received-Date: Fri, 24 Jan 2014 02:02:52 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3e7947cd46d543c2b85752f46dd91289DM2PR03MB399namprd03pro_"

--_000_3e7947cd46d543c2b85752f46dd91289DM2PR03MB399namprd03pro_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

My suggestion is to create a bbappend file for init-ifupdown to override th=
e default interfaces.

$ tree meta-custom/recipes-core/init-ifupdown
|-- files
|   `-- interfaces
`-- init-ifupdown_1.0.bbappend


Best Regards,

Zhenhua

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Harpreet Singh
Sent: Friday, January 24, 2014 9:09 AM
To: yocto@yoctoproject.org
Subject: [yocto] Need to customize /etc/network/interface

Hi
I want to customize /etc/network/interface file according to requirement. I=
 tried creating another reciepe file where i am installing my interface fil=
e to /etc/network/interface i.e. "install -m 0644 ${WORKDIR}/scripts/interf=
aces123 ${D}${sysconfdir}/network/interfaces".
But still in build this interface file is not getting updated. Looks kine d=
uring bitbake, this file is overwritten by standard file.

Please help

--
Regards

Harpreet Singh
9873064104

--_000_3e7947cd46d543c2b85752f46dd91289DM2PR03MB399namprd03pro_
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">My suggestion is to creat=
e a bbappend file for init-ifupdown to override the default interfaces.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">$ tree meta-custom/recipe=
s-core/init-ifupdown<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">|-- files<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">|&nbsp;&nbsp; `-- interfa=
ces<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">`-- init-ifupdown_1.0.bba=
ppend<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Best Regards,<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Zhenhua<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Harpreet Singh<br>
<b>Sent:</b> Friday, January 24, 2014 9:09 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] Need to customize /etc/network/interface<o:p></o:p>=
</span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Hi <o:p></o:p></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">I want to customize /=
etc/network/interface file according to requirement. I tried creating anoth=
er reciepe file where i am installing my interface file to /etc/network/int=
erface i.e. &quot;install -m 0644 ${WORKDIR}/scripts/interfaces123
 ${D}${sysconfdir}/network/interfaces&quot;.<o:p></o:p></p>
</div>
<p class=3D"MsoNormal">But still in build this interface file is not gettin=
g updated. Looks kine during bitbake, this file is overwritten by standard =
file.<br>
<br>
Please help<br clear=3D"all">
<o:p></o:p></p>
<div>
<div>
<div>
<p class=3D"MsoNormal"><br>
-- <o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"color:#3366FF">Regards</span></b><=
o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"color:#3366FF">&nbsp;</span></b><o=
:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"color:#3366FF">Harpreet Singh</spa=
n></b><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"color:#3366FF">9873064104</span></=
b><o:p></o:p></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_3e7947cd46d543c2b85752f46dd91289DM2PR03MB399namprd03pro_--
