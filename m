Return-Path: <Michael.Fainstein@ecitele.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96133E00948; Wed, 27 Jan 2016 23:17:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.112.101 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1911 seconds by postgrey-1.32 at yocto-www;
	Wed, 27 Jan 2016 23:17:53 PST
Received: from emea01-am1-obe.outbound.protection.outlook.com
	(mail-am1on0101.outbound.protection.outlook.com [157.56.112.101])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 903AAE0090E
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2016 23:17:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ECI365.onmicrosoft.com; s=selector1-ecitele-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=O92aMnftlx6FfrHqNnnMf5R3hNgiG+mNU9pqdHbJUmY=;
	b=JDmL9xyIKBYgA/suuH7JBMjaIZOXQjo7Q/sfyhnoKMV0nmpVY/z3RQqlD10tbHrXOmfY4zUsroAcNfMFWgBefIDmjf54nZ58AlOQfHevWeiANievvNbYwHvmHK4lZKU5qh61Px7pOfzFzpdTFoVaj0WcgHKNEQv4ukEluvo7btY=
Received: from HE1PR03MB1692.eurprd03.prod.outlook.com (10.169.118.18) by
	HE1PR03MB1691.eurprd03.prod.outlook.com (10.169.118.17) with Microsoft
	SMTP Server (TLS) id 15.1.396.15; Thu, 28 Jan 2016 06:46:00 +0000
Received: from HE1PR03MB1692.eurprd03.prod.outlook.com ([10.169.118.18]) by
	HE1PR03MB1692.eurprd03.prod.outlook.com ([10.169.118.18]) with mapi id
	15.01.0396.015; Thu, 28 Jan 2016 06:46:00 +0000
From: Michael Fainstein <Michael.Fainstein@ecitele.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: extracting SDK for supporting both 32 and 64 bit applications
Thread-Index: AdFZluqAYke+lDXKTjmv6hkKS3eiqg==
Date: Thu, 28 Jan 2016 06:45:59 +0000
Message-ID: <HE1PR03MB1692CE9536941F298AE054E7EEDA0@HE1PR03MB1692.eurprd03.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Michael.Fainstein@ecitele.com; 
x-originating-ip: [147.234.241.1]
x-microsoft-exchange-diagnostics: 1; HE1PR03MB1691;
	5:x9Om0escHtdWu+lC7saJ77qrlxxnww30paMXKehM3Gvszwgn+eOZrv2juMLqWTP+Cws6W2EIQkdYmh7jAMYCY6BBnhCC9Kd9FaI8Pw7uNhc7D7xaAiDETSD0kAhAdNW+AUt76emCGoLAcJxjNZUSHA==;
	24:zJ7pAB7QKh/ZbZ4WxI1IPdP4/Ng/oUr4v/kkEjneAifighHCOY70N1KvKQVy11Rko6+h5vT7oxlT8bmYMRvtM2NL8AHwxGScgZPiv9PiCpo=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:HE1PR03MB1691;
x-ms-office365-filtering-correlation-id: aa82e470-440f-45fe-7470-08d327aeaef1
x-microsoft-antispam-prvs: <HE1PR03MB169106D4C25533E484182868EEDA0@HE1PR03MB1691.eurprd03.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046);
	SRVR:HE1PR03MB1691; BCL:0; PCL:0; RULEID:; SRVR:HE1PR03MB1691; 
x-forefront-prvs: 083526BF8A
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(199003)(189002)(40100003)(450100001)(122556002)(92566002)(107886002)(110136002)(74316001)(5001960100002)(76576001)(97736004)(5008740100001)(790700001)(105586002)(10400500002)(3846002)(102836003)(6116002)(3280700002)(106356001)(5004730100002)(2906002)(1220700001)(189998001)(3470700001)(1096002)(5003600100002)(2351001)(3660700001)(586003)(5002640100001)(229853001)(66066001)(77096005)(16236675004)(19300405004)(1730700002)(11100500001)(19580395003)(2900100001)(15975445007)(86362001)(101416001)(2501003)(50986999)(81156007)(87936001)(19625215002)(33656002)(54356999);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1PR03MB1691;
	H:HE1PR03MB1692.eurprd03.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: ecitele.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: ecitele.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2016 06:45:59.9099 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2c514a61-08de-4519-b4c0-921fef62c42a
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR03MB1691
Subject: extracting SDK for supporting both 32 and 64 bit applications
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
X-List-Received-Date: Thu, 28 Jan 2016 07:17:56 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_HE1PR03MB1692CE9536941F298AE054E7EEDA0HE1PR03MB1692eurp_"

--_000_HE1PR03MB1692CE9536941F298AE054E7EEDA0HE1PR03MB1692eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

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

--_000_HE1PR03MB1692CE9536941F298AE054E7EEDA0HE1PR03MB1692eurp_
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
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
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
</body>
</html>

--_000_HE1PR03MB1692CE9536941F298AE054E7EEDA0HE1PR03MB1692eurp_--
