Return-Path: <denis.sazhaev@regenenergy.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D6A5E00A31; Thu,  6 Aug 2015 13:34:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.100.92 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1077 seconds by postgrey-1.32 at yocto-www;
	Thu, 06 Aug 2015 13:34:36 PDT
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2on0092.outbound.protection.outlook.com [207.46.100.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 918C5E00767
	for <yocto@yoctoproject.org>; Thu,  6 Aug 2015 13:34:36 -0700 (PDT)
Received: from BY1PR0401MB1272.namprd04.prod.outlook.com (10.160.196.148) by
	BY1PR0401MB1271.namprd04.prod.outlook.com (10.160.196.147) with
	Microsoft
	SMTP Server (TLS) id 15.1.225.19; Thu, 6 Aug 2015 20:02:28 +0000
Received: from BY1PR0401MB1272.namprd04.prod.outlook.com ([10.160.196.148]) by
	BY1PR0401MB1272.namprd04.prod.outlook.com ([10.160.196.148]) with
	mapi id 15.01.0225.018; Thu, 6 Aug 2015 20:02:28 +0000
From: Denis Sazhaev <denis.sazhaev@regenenergy.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [bitbake-devel] Clone RSA key secured, password protected git
	repository
Thread-Index: AdDQgYsxZDAmy7jZT/6xFCPYAM1a5g==
Date: Thu, 6 Aug 2015 20:02:28 +0000
Message-ID: <BY1PR0401MB1272DD399E94A1F553F8757BE5740@BY1PR0401MB1272.namprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=denis.sazhaev@regenenergy.com; 
x-originating-ip: [206.223.191.234]
x-microsoft-exchange-diagnostics: 1; BY1PR0401MB1271;
	5:s+1VtADlnu83qyxNOkt27ee+vBkNSMMOn0srxA3UjXJm5A6ZZrh7sRu7p5sFA5r/MswwV6dcb6CAhqwIgTgLe8XWQgXTsdKQHEQd55xHxkQqBCafFI3aQpC9fHFa8jDU3pay80K3TUUg5NwA/HFQjA==;
	24:v1zg586GTFIzglnFhFddYWS+6wbdjznpMV6yj0mPR5VeSOQ0NNsIhBzQsKM4+mWQmXBbQt+7bW9WUuc0/YUIon0W9z3+vTWHdH+0Xmxg7Mw=;
	20:DdX6YvoznC1DsEI1Ug368cm3N18TKT2TqJHJfswi1FxO+QmRDQYltHrlSf0dCYvnlZGfYyc5QIj5MaUBOGjOEA==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BY1PR0401MB1271;
x-microsoft-antispam-prvs: <BY1PR0401MB127138279A75DE896751BB8AE5740@BY1PR0401MB1271.namprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(108003899814671);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(5005006)(3002001); SRVR:BY1PR0401MB1271; BCL:0;
	PCL:0; RULEID:; SRVR:BY1PR0401MB1271; 
x-forefront-prvs: 06607E485E
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(199003)(504964003)(189002)(106356001)(77156002)(99286002)(229853001)(62966003)(450100001)(46102003)(105586002)(19580395003)(2351001)(2656002)(87936001)(50986999)(40100003)(122556002)(19300405004)(86362001)(54356999)(101416001)(64706001)(66066001)(5002640100001)(107886002)(81156007)(5003600100002)(5001860100001)(2900100001)(33656002)(97736004)(5001830100001)(4001540100001)(76576001)(110136002)(189998001)(5001920100001)(19625215002)(551544002)(68736005)(15975445007)(102836002)(74316001)(92566002)(77096005)(16236675004)(5001960100002)(10400500002)(2501003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BY1PR0401MB1271;
	H:BY1PR0401MB1272.namprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: regenenergy.com does not designate
	permitted sender hosts)
MIME-Version: 1.0
X-OriginatorOrg: regenenergy.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2015 20:02:28.2382 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b16e88d7-677b-4b82-993f-9101eb64f1cd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR0401MB1271
X-Mailman-Approved-At: Sat, 08 Aug 2015 11:34:30 -0700
Subject: [bitbake-devel] Clone RSA key secured, password protected git repository
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
X-List-Received-Date: Thu, 06 Aug 2015 20:34:40 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BY1PR0401MB1272DD399E94A1F553F8757BE5740BY1PR0401MB1272_"

--_000_BY1PR0401MB1272DD399E94A1F553F8757BE5740BY1PR0401MB1272_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

There's a project I'm trying to pull in the recipe located on our private s=
erver.
Repository requires an RSA key as well as a password in order to pull files=
 from it.

I'm not sure how to provide a password for the respository that's required =
for authentication.

Currently my format is as follows:
SRC_URI =3D  "git://git@<servername>:/opt/git/repo.git;branch=3DmyBranch;pr=
otocol=3Dssh;user=3Dgit:password"

I have also tried
SRC_URI =3D  "git://git:password@<servername>:/opt/git/repo.git;branch=3Dmy=
Branch;protocol=3Dssh"

With no success.
Does bitbake support publickey + password authentication?
Is the format correct?

The message I'm getting is "Permission denied (publickey,password)."

I've ran git clone command manually and it's working properly. My best gues=
s is that either my SRC_URI format is incorrect or bitbake does not support=
 RSA key + password combination.


Thank you in advance.

--_000_BY1PR0401MB1272DD399E94A1F553F8757BE5740BY1PR0401MB1272_
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
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
<body lang=3D"EN-CA" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">There&#8217;s a project I&#8217;m trying to pull in =
the recipe located on our private server.<o:p></o:p></p>
<p class=3D"MsoNormal">Repository requires an RSA key as well as a password=
 in order to pull files from it.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m not sure how to provide a password for the=
 respository that&#8217;s required for authentication.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Currently my format is as follows:<o:p></o:p></p>
<p class=3D"MsoNormal">SRC_URI =3D &nbsp;&#8220;git://git@&lt;servername&gt=
;:/opt/git/repo.git;branch=3DmyBranch;protocol=3Dssh;user=3Dgit:password&#8=
221;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have also tried <o:p></o:p></p>
<p class=3D"MsoNormal">SRC_URI =3D &nbsp;&#8220;git://git:password@&lt;serv=
ername&gt;:/opt/git/repo.git;branch=3DmyBranch;protocol=3Dssh&#8221;<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">With no success. <o:p></o:p></p>
<p class=3D"MsoNormal">Does bitbake support publickey &#43; password authen=
tication?<o:p></o:p></p>
<p class=3D"MsoNormal">Is the format correct?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The message I&#8217;m getting is &#8220;Permission d=
enied (publickey,password).&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve ran git clone command manually and it&#82=
17;s working properly. My best guess is that either my SRC_URI format is in=
correct or bitbake does not support RSA key &#43; password combination.<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you in advance.<o:p></o:p></p>
</div>
</body>
</html>

--_000_BY1PR0401MB1272DD399E94A1F553F8757BE5740BY1PR0401MB1272_--
