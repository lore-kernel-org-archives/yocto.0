Return-Path: <suram@freescale.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CD85E00A37; Sat,  5 Dec 2015 22:03:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.100.102 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0001]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 908 seconds by postgrey-1.32 at yocto-www;
	Sat, 05 Dec 2015 22:03:06 PST
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2on0102.outbound.protection.outlook.com [207.46.100.102])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 472DEE00A18
	for <yocto@yoctoproject.org>; Sat,  5 Dec 2015 22:03:06 -0800 (PST)
Received: from BY1PR03MB1339.namprd03.prod.outlook.com (10.162.109.21) by
	BY1PR03MB1339.namprd03.prod.outlook.com (10.162.109.21) with Microsoft
	SMTP Server (TLS) id 15.1.337.19; Sun, 6 Dec 2015 05:47:56 +0000
Received: from BY1PR03MB1339.namprd03.prod.outlook.com ([10.162.109.21]) by
	BY1PR03MB1339.namprd03.prod.outlook.com ([10.162.109.21]) with mapi id
	15.01.0337.015; Sun, 6 Dec 2015 05:47:56 +0000
From: Suram Suram <suram@freescale.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: testsuite for meta-selinux
Thread-Index: AdEv6Opm7le2LfCqSIadlCOx6ExcEg==
Date: Sun, 6 Dec 2015 05:47:55 +0000
Message-ID: <BY1PR03MB13398A9786969B9BF6D630BFA10A0@BY1PR03MB1339.namprd03.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=suram@freescale.com; 
x-originating-ip: [192.88.169.1]
x-microsoft-exchange-diagnostics: 1; BY1PR03MB1339;
	5:HxjkU+3XiO9+iDRsYwilKXTYJqHm113PdEXSVrlTM6awi3H/zYi0AV/n6BtfM/WvHdmr8ZCGYyZUs/cmOtsWhZLQ1rAm13HdolpkhmZQPyA7mQFNYkxDV/m+XX4EJOA8RaAA0eYaITFV9pcZmeKlgA==;
	24:bSZfSorbjOmGJM7i8EEIP/t7U94xpVdG8WgQHhRUjAKf9i57ohVdqZmQqUpteCH2oCMR1qiIyZH/wZUecbiIMMfA/2yXilUFO1gm2CMUS3I=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BY1PR03MB1339;
x-microsoft-antispam-prvs: <BY1PR03MB1339AA7492E11B0586A77BF8A10A0@BY1PR03MB1339.namprd03.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(520078)(8121501046)(3002001)(10201501046);
	SRVR:BY1PR03MB1339; BCL:0; PCL:0; RULEID:; SRVR:BY1PR03MB1339; 
x-forefront-prvs: 0782EC617F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(189002)(199003)(105586002)(81156007)(110136002)(97736004)(2351001)(16236675004)(107886002)(5002640100001)(229853001)(99286002)(2501003)(5003600100002)(10400500002)(106356001)(189998001)(66066001)(5001960100002)(76576001)(11100500001)(19617315012)(102836003)(6116002)(450100001)(77096005)(86362001)(54356999)(1096002)(15975445007)(50986999)(1220700001)(790700001)(87936001)(19300405004)(74316001)(101416001)(19625215002)(33656002)(19580395003)(5004730100002)(5008740100001)(2900100001)(122556002)(92566002)(40100003)(3846002)(586003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BY1PR03MB1339;
	H:BY1PR03MB1339.namprd03.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: freescale.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Dec 2015 05:47:55.6508 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 710a03f5-10f6-4d38-9ff4-a80b81da590d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR03MB1339
Subject: testsuite for meta-selinux
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
X-List-Received-Date: Sun, 06 Dec 2015 06:03:10 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BY1PR03MB13398A9786969B9BF6D630BFA10A0BY1PR03MB1339namp_"

--_000_BY1PR03MB13398A9786969B9BF6D630BFA10A0BY1PR03MB1339namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
Iam trying to use the selinux testsuite taken from
SELinuxProject<https://github.com/SELinuxProject>/selinux-testsuite<https:/=
/github.com/SELinuxProject/selinux-testsuite>
When trying to compile, it is complaining with the following error
ERROR: You must have selinux-policy-devel installed.

I would like to know how to enable selinux-policy-devel in the meta-selinux=
 layer.

Regards
Suram

--_000_BY1PR03MB13398A9786969B9BF6D630BFA10A0BY1PR03MB1339namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:m=3D"http://schema=
s.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html=
40">
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
h1
	{mso-style-priority:9;
	mso-style-link:"Heading 1 Char";
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:24.0pt;
	font-family:"Times New Roman",serif;}
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
span.Heading1Char
	{mso-style-name:"Heading 1 Char";
	mso-style-priority:9;
	mso-style-link:"Heading 1";
	font-family:"Times New Roman",serif;
	font-weight:bold;}
span.author
	{mso-style-name:author;}
span.path-divider
	{mso-style-name:path-divider;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
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
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal">Iam trying to use the selinux testsuite taken from <=
o:p></o:p></p>
<h1><span class=3D"author"><a href=3D"https://github.com/SELinuxProject">SE=
LinuxProject</a></span><span class=3D"path-divider">/</span><strong><a href=
=3D"https://github.com/SELinuxProject/selinux-testsuite">selinux-testsuite<=
/a></strong>
<o:p></o:p></h1>
<p class=3D"MsoNormal">When trying to compile, it is complaining with the f=
ollowing error<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: You must have selinux-policy-devel installed.=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I would like to know how to enable selinux-policy-de=
vel in the meta-selinux layer.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards<o:p></o:p></p>
<p class=3D"MsoNormal">Suram<o:p></o:p></p>
</div>
</body>
</html>

--_000_BY1PR03MB13398A9786969B9BF6D630BFA10A0BY1PR03MB1339namp_--
