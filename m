Return-Path: <zhenhua.luo@freescale.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BEA3E00957; Tue, 20 Oct 2015 07:34:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.100.130 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 5613 seconds by postgrey-1.32 at yocto-www;
	Tue, 20 Oct 2015 07:34:52 PDT
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2on0130.outbound.protection.outlook.com [207.46.100.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8346E00843
	for <yocto@yoctoproject.org>; Tue, 20 Oct 2015 07:34:52 -0700 (PDT)
Received: from BN3PR03MB1367.namprd03.prod.outlook.com (10.163.34.153) by
	BN3PR03MB1365.namprd03.prod.outlook.com (10.163.34.151) with Microsoft
	SMTP Server (TLS) id 15.1.300.14; Tue, 20 Oct 2015 13:01:11 +0000
Received: from BN3PR03MB1367.namprd03.prod.outlook.com ([10.163.34.153]) by
	BN3PR03MB1367.namprd03.prod.outlook.com ([10.163.34.153]) with mapi id
	15.01.0300.010; Tue, 20 Oct 2015 13:01:11 +0000
From: Luo Zhenhua <zhenhua.luo@freescale.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: multiple yocto-kernel-cache mirrors support in linux-yocto style
	recipe
Thread-Index: AdELNg4rKpiINEBpRpWudZIBQwyziQ==
Date: Tue, 20 Oct 2015 13:01:11 +0000
Message-ID: <BN3PR03MB1367AA0561777CD38E796C40E4390@BN3PR03MB1367.namprd03.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=zhenhua.luo@freescale.com; 
x-originating-ip: [199.59.231.64]
x-microsoft-exchange-diagnostics: 1; BN3PR03MB1365;
	5:EY5PzpG5/7FG33RhHjc4BZypWQEzhvzBxl/3vckKrLElNL8yWff3H7YKH31EeUZ5taaAuvllgQEP5OCPUauHXdIy4fBvap5z8x9H8ADTiUYCSmNKx9Y5QNR9P8yr0CyhJWpjiq/411ePu60ROSKucg==;
	24:t8zM+C1zcO3LeE1go1F9xomjTW7YLjmvp6KJMo1+SQC9ZFBvEwQHZ+JiahdukipXRslyQxdsMhHrYk+KX41yCkFRSRQVqSRxl/9k4gyfTa0=;
	20:PfvRbVrJFGJ9aNnVKzllYymjUQ8NVXZ3ASB0QzbTdE+CNT/7qCxYxt/20UgNe7luEvAIZo7A5R7oZQRBlrBqTA==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN3PR03MB1365;
x-microsoft-antispam-prvs: <BN3PR03MB13653A37EF634A27FE00E623E4390@BN3PR03MB1365.namprd03.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(108003899814671);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(520078)(5005006)(8121501046)(3002001);
	SRVR:BN3PR03MB1365; BCL:0; PCL:0; RULEID:; SRVR:BN3PR03MB1365; 
x-forefront-prvs: 073515755F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(199003)(189002)(19300405004)(19580395003)(87936001)(77096005)(2501003)(102836002)(66066001)(74316001)(230783001)(2900100001)(10400500002)(46102003)(229853001)(5008740100001)(15975445007)(92566002)(2351001)(450100001)(11100500001)(122556002)(5007970100001)(50986999)(16236675004)(97736004)(5004730100002)(81156007)(54356999)(86362001)(33656002)(105586002)(5001920100001)(5001960100002)(5003600100002)(110136002)(101416001)(5002640100001)(99286002)(106356001)(19625215002)(64706001)(189998001)(76576001)(40100003)(107886002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR03MB1365;
	H:BN3PR03MB1367.namprd03.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: freescale.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2015 13:01:11.2823 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 710a03f5-10f6-4d38-9ff4-a80b81da590d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR03MB1365
Subject: multiple yocto-kernel-cache mirrors support in linux-yocto style recipe
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
X-List-Received-Date: Tue, 20 Oct 2015 14:34:57 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN3PR03MB1367AA0561777CD38E796C40E4390BN3PR03MB1367namp_"

--_000_BN3PR03MB1367AA0561777CD38E796C40E4390BN3PR03MB1367namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I created a bbappend for linux-yocto_4.1.bb to use our own kernel source gi=
t url, a yocto-kernel-cache git tree is created to manage the distro specif=
ic kernel fragments, I want to use both Yocto yocto-kernel-cache and our ow=
n yocto-kernel-cache git, can this multiple yocto-kernel-cache mirrors be s=
upported by linux-yocto style bb file? If no, what's the best method to han=
dle such multiple kernel fragments mirrors case?


Best Regards,

Zhenhua


--_000_BN3PR03MB1367AA0561777CD38E796C40E4390BN3PR03MB1367namp_
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:SimSun;
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
<p class=3D"MsoNormal">Hi, <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I created a bbappend for linux-yocto_4.1.bb to use o=
ur own kernel source git url, a yocto-kernel-cache git tree is created to m=
anage the distro specific kernel fragments, I want to use both Yocto yocto-=
kernel-cache and our own yocto-kernel-cache
 git, can this multiple yocto-kernel-cache mirrors be supported by linux-yo=
cto style bb file? If no, what&#8217;s the best method to handle such multi=
ple kernel fragments mirrors case?
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Zhenhua<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BN3PR03MB1367AA0561777CD38E796C40E4390BN3PR03MB1367namp_--
