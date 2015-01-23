Return-Path: <ting.liu@freescale.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB869E00860; Thu, 22 Jan 2015 18:16:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.110.102 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bn0102.outbound.protection.outlook.com [157.56.110.102])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06DE3E00782
	for <yocto@yoctoproject.org>; Thu, 22 Jan 2015 18:16:25 -0800 (PST)
Received: from CY1PR0301MB1194.namprd03.prod.outlook.com (25.160.165.25) by
	CY1PR0301MB1196.namprd03.prod.outlook.com (25.160.165.27) with
	Microsoft SMTP
	Server (TLS) id 15.1.59.20; Fri, 23 Jan 2015 02:02:18 +0000
Received: from CY1PR0301MB1194.namprd03.prod.outlook.com ([25.160.165.25]) by
	CY1PR0301MB1194.namprd03.prod.outlook.com ([25.160.165.25]) with
	mapi id 15.01.0059.007; Fri, 23 Jan 2015 02:02:18 +0000
From: "ting.liu@freescale.com" <ting.liu@freescale.com>
To: =?iso-8859-1?Q?H=E4nel-Baas=2C_Alexander?=
	<alexander.haenel-baas@sieb-meyer.de>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: mount.nfs -> how i include nfs-utils
Thread-Index: AdA2JWepMhOfgrrkSM+VeELOQaX4NwAixvLA
Date: Fri, 23 Jan 2015 02:02:18 +0000
Message-ID: <CY1PR0301MB11947FC2B060F6E507B3539793360@CY1PR0301MB1194.namprd03.prod.outlook.com>
References: <9BA84827B30CBE4996725F98F7DC9123428FB241@SMExchange01.siebmeyer.org>
In-Reply-To: <9BA84827B30CBE4996725F98F7DC9123428FB241@SMExchange01.siebmeyer.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [123.151.195.51]
authentication-results: sieb-meyer.de; dkim=none (message not signed)
	header.d=none;sieb-meyer.de; dmarc=none action=none
	header.from=freescale.com;
x-dmarcaction-test: None
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(3005004);SRVR:CY1PR0301MB1196;
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0301MB1196; 
x-forefront-prvs: 0465429B7F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(377454003)(19625215002)(92566002)(33656002)(87936001)(54356999)(54606007)(99286002)(74316001)(18717965001)(76576001)(54206007)(66066001)(86362001)(62966003)(77156002)(19609705001)(19580405001)(19580395003)(16236675004)(2656002)(40100003)(46102003)(2501002)(50986999)(76176999)(107886001)(122556002)(19300405004)(102836002)(2950100001)(15975445007)(2900100001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY1PR0301MB1196;
	H:CY1PR0301MB1194.namprd03.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2015 02:02:18.0742 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 710a03f5-10f6-4d38-9ff4-a80b81da590d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0301MB1196
Subject: Re: mount.nfs -> how i include nfs-utils
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
X-List-Received-Date: Fri, 23 Jan 2015 02:16:35 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1PR0301MB11947FC2B060F6E507B3539793360CY1PR0301MB1194_"

--_000_CY1PR0301MB11947FC2B060F6E507B3539793360CY1PR0301MB1194_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

mount.nfs is packaged in nfs-utils-client.

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of H?nel-Baas, Alexander
Sent: Thursday, January 22, 2015 5:38 PM
To: yocto@yoctoproject.org
Subject: [yocto] mount.nfs -> how i include nfs-utils

Hi

In terms of my question "how i include nfs-utils" i saw that the nfs-utils =
was compiled correctly.
But there was no mount.nfs in /sbin on the target or in the rootfs image.

What is the step to get this files in the do_rootfs process?

With best regards,
Alexander


--_000_CY1PR0301MB11947FC2B060F6E507B3539793360CY1PR0301MB1194_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
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
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
p.Sprechblasentext, li.Sprechblasentext, div.Sprechblasentext
	{mso-style-name:Sprechblasentext;
	mso-style-link:"Sprechblasentext Zchn";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.SprechblasentextZchn
	{mso-style-name:"Sprechblasentext Zchn";
	mso-style-priority:99;
	mso-style-link:Sprechblasentext;
	font-family:"Tahoma","sans-serif";}
span.EmailStyle22
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 56.7pt 70.85pt;}
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">mount.nfs is packaged =
in nfs-utils-client.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>H?nel-Baas, Alexander<br>
<b>Sent:</b> Thursday, January 22, 2015 5:38 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] mount.nfs -&gt; how i include nfs-utils<o:p></o:p><=
/span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"DE">Hi<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">In terms of my question &#8222;how i include nfs-uti=
ls&#8220; i saw that the nfs-utils was compiled correctly.<o:p></o:p></p>
<p class=3D"MsoNormal">But there was no mount.nfs in /sbin on the target or=
 in the rootfs image.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What is the step to get this files in the do_rootfs =
process?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"DE">With best regards,<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"DE">Alexander<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE"><o:p>&nbsp;</o:p></span></p>
</div>
</div>
</body>
</html>

--_000_CY1PR0301MB11947FC2B060F6E507B3539793360CY1PR0301MB1194_--
