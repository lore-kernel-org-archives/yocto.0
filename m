Return-Path: <zhenhua.luo@freescale.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A2E1E008D9; Wed, 19 Nov 2014 02:17:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.100.137 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1998 seconds by postgrey-1.32 at yocto-www;
	Wed, 19 Nov 2014 02:17:20 PST
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2on0137.outbound.protection.outlook.com [207.46.100.137])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 071BEE0087D
	for <yocto@yoctoproject.org>; Wed, 19 Nov 2014 02:17:20 -0800 (PST)
Received: from CY1PR0301MB0715.namprd03.prod.outlook.com (25.160.159.145) by
	CY1PR0301MB0713.namprd03.prod.outlook.com (25.160.159.143) with
	Microsoft
	SMTP Server (TLS) id 15.1.16.15; Wed, 19 Nov 2014 09:44:00 +0000
Received: from CY1PR0301MB0715.namprd03.prod.outlook.com ([25.160.159.145]) by
	CY1PR0301MB0715.namprd03.prod.outlook.com ([25.160.159.145]) with
	mapi id 15.01.0016.006; Wed, 19 Nov 2014 09:44:00 +0000
From: "zhenhua.luo@freescale.com" <zhenhua.luo@freescale.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to build the uclibc toolchain by Yocto
Thread-Index: AdAD3MIh8jj8XWfCRVeF5TXkDkOnfw==
Date: Wed, 19 Nov 2014 09:43:59 +0000
Message-ID: <bf6dc5f38cdd4e6a987eafbaa5473656@CY1PR0301MB0715.namprd03.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.88.158.211]
x-microsoft-antispam: BCL:0;PCL:0;RULEID:;SRVR:CY1PR0301MB0713;
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0301MB0713; 
x-forefront-prvs: 04004D94E2
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(53754006)(199003)(189002)(229853001)(107046002)(2351001)(107886001)(122556002)(54356999)(106356001)(15202345003)(21056001)(50986999)(2501002)(2656002)(15975445006)(99396003)(558084003)(19300405004)(87936001)(86362001)(92566001)(31966008)(4396001)(16236675004)(19580395003)(120916001)(40100003)(450100001)(77156002)(62966003)(77096003)(19625215002)(66066001)(46102003)(97736003)(76576001)(64706001)(20776003)(101416001)(110136001)(74316001)(105586002)(108616004)(33646002)(95666004)(99286002)(24736002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY1PR0301MB0713;
	H:CY1PR0301MB0715.namprd03.prod.outlook.com; FPR:; MLV:sfv;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: How to build the uclibc toolchain by Yocto
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
X-List-Received-Date: Wed, 19 Nov 2014 10:17:28 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_bf6dc5f38cdd4e6a987eafbaa5473656CY1PR0301MB0715namprd03_"

--_000_bf6dc5f38cdd4e6a987eafbaa5473656CY1PR0301MB0715namprd03_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

The eglibc is used for meta-toolchain build in Yocto, may I know how to bui=
ld the uclibc meta-toolchain in Yocto?


Best Regards,

Zhenhua

--_000_bf6dc5f38cdd4e6a987eafbaa5473656CY1PR0301MB0715namprd03_
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
	{font-family:\5B8B\4F53;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@\5B8B\4F53";
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
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<p class=3D"MsoNormal">Hi all, <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The eglibc is used for meta-toolchain build in Yocto=
, may I know how to build the uclibc meta-toolchain in Yocto?
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Zhenhua<o:p></o:p></p>
</div>
</body>
</html>

--_000_bf6dc5f38cdd4e6a987eafbaa5473656CY1PR0301MB0715namprd03_--
