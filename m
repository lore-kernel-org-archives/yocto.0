Return-Path: <zhenhua.luo@freescale.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97704E00924; Wed, 10 Dec 2014 01:48:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.100.128 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2on0128.outbound.protection.outlook.com [207.46.100.128])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59238E008D7
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 01:48:06 -0800 (PST)
Received: from CY1PR0301MB0715.namprd03.prod.outlook.com (25.160.159.145) by
	CY1PR0301MB0618.namprd03.prod.outlook.com (25.160.142.25) with
	Microsoft SMTP
	Server (TLS) id 15.1.31.17; Wed, 10 Dec 2014 09:48:03 +0000
Received: from CY1PR0301MB0715.namprd03.prod.outlook.com ([25.160.159.145]) by
	CY1PR0301MB0715.namprd03.prod.outlook.com ([25.160.159.145]) with
	mapi id 15.01.0031.000; Wed, 10 Dec 2014 09:48:03 +0000
From: "zhenhua.luo@freescale.com" <zhenhua.luo@freescale.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Conditional patching in a recipe
Thread-Index: AdAUXhZEJi85aUGCR6GFHisy6iQBnQ==
Date: Wed, 10 Dec 2014 09:48:02 +0000
Message-ID: <CY1PR0301MB0715F77504B47C208EB8AF29E4620@CY1PR0301MB0715.namprd03.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.88.158.211]
x-microsoft-antispam: BCL:0;PCL:0;RULEID:;SRVR:CY1PR0301MB0618;
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0301MB0618; 
x-forefront-prvs: 0421BF7135
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(199003)(189002)(53754006)(33656002)(450100001)(46102003)(64706001)(77156002)(62966003)(54606007)(20776003)(76576001)(229853001)(19625215002)(86362001)(107046002)(106356001)(54206007)(50986999)(2656002)(101416001)(87936001)(54356999)(4396001)(68736005)(21056001)(31966008)(19580395003)(15975445007)(19300405004)(97736003)(110136001)(74316001)(99286002)(102836002)(2501002)(40100003)(105586002)(122556002)(99396003)(2351001)(66066001)(16236675004)(92566001)(120916001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY1PR0301MB0618;
	H:CY1PR0301MB0715.namprd03.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "B18196@freescale.com" <B18196@freescale.com>
Subject: Conditional patching in a recipe
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
X-List-Received-Date: Wed, 10 Dec 2014 09:48:12 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1PR0301MB0715F77504B47C208EB8AF29E4620CY1PR0301MB0715_"

--_000_CY1PR0301MB0715F77504B47C208EB8AF29E4620CY1PR0301MB0715_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,



I have a recipe R that builds fine and is a runtime dependency for two othe=
r packages - say D1 and D2.



What I would like to do is to add a patch to R and apply it if and only if =
both D1 and D2 will be built and packaged. In particular, the patch is need=
ed at runtime only by D2 and D1 doesn't care. However, if only D1 is packag=
ed, there should be no additional patch.



The closest solution to this that I could think of is to create

R1=3Dcopy(R) that will be a patched runtime dependency for D2. Then, R1 wil=
l be marked as RREPLACE and RCONFLICTS R.



Is this the right approach? Are there other solutions?


Best Regards,

Zhenhua

--_000_CY1PR0301MB0715F77504B47C208EB8AF29E4620CY1PR0301MB0715_
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
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
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
<p class=3D"MsoPlainText">Hi all,<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">I have a recipe R that builds fine and is a runti=
me dependency for two other packages - say D1 and D2.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">What I would like to do is to add a patch to R an=
d apply it if and only if both D1 and D2 will be built and packaged. In par=
ticular, the patch is needed at runtime only by D2 and D1 doesn't care. How=
ever, if only D1 is packaged, there
 should be no additional patch.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">The closest solution to this that I could think o=
f is to create<o:p></o:p></p>
<p class=3D"MsoPlainText">R1=3Dcopy(R) that will be a patched runtime depen=
dency for D2. Then, R1 will be marked as RREPLACE and RCONFLICTS R.<o:p></o=
:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Is this the right approach? Are there other solut=
ions?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Zhenhua<o:p></o:p></p>
</div>
</body>
</html>

--_000_CY1PR0301MB0715F77504B47C208EB8AF29E4620CY1PR0301MB0715_--
