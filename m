Return-Path: <brad@taser.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10C90E00A25; Thu, 19 Jan 2017 13:03:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, MIME_HTML_MOSTLY, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS, TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.36.64 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.4 MIME_HTML_MOSTLY BODY: Multipart message mostly text/html MIME
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
X-Greylist: delayed 7172 seconds by postgrey-1.32 at yocto-www;
	Thu, 19 Jan 2017 13:02:57 PST
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0064.outbound.protection.outlook.com [104.47.36.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93315E00A16
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 13:02:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=taser.onmicrosoft.com; 
	s=selector1-taser-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=pq04sUm34XMDkOR8APIItqzsBG5XjVYbvUMosGZvn1Q=;
	b=FmmBtwzjKV9iZKTSajYcGOsXNf0KRLPG5r709GvhBdKIVDzxdDfW5vZ+utjgo4tbvJ+ZSChyA6MZTR1AySDS74sSocXoGMF91UC44o+hzEc+g2aR0Oi4PXy1rvwTLXDO6aT66BaNOVMkCu0aLbCSVzLxD43bjH2e+CNqqOsF1rg=
Received: from DM3PR1001MB1231.namprd10.prod.outlook.com (10.164.196.7) by
	DM3PR1001MB1231.namprd10.prod.outlook.com (10.164.196.7) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.803.11; Thu, 19 Jan 2017 18:31:09 +0000
Received: from DM3PR1001MB1231.namprd10.prod.outlook.com ([10.164.196.7]) by
	DM3PR1001MB1231.namprd10.prod.outlook.com ([10.164.196.7]) with mapi id
	15.01.0803.024; Thu, 19 Jan 2017 18:31:09 +0000
From: Brad Litterell <brad@taser.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: unsubscribe
Thread-Index: AdJygjByNr8URjaIR3KkA3S9LXaHsw==
Date: Thu, 19 Jan 2017 18:31:09 +0000
Message-ID: <DM3PR1001MB123166140D0875C3B1EC4F5AD17E0@DM3PR1001MB1231.namprd10.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is ) smtp.mailfrom=brad@taser.com; 
x-originating-ip: [66.162.141.14]
x-ms-office365-filtering-correlation-id: ad500ceb-fa98-45fd-72e3-08d4409956ae
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:DM3PR1001MB1231; 
x-microsoft-exchange-diagnostics: 1; DM3PR1001MB1231;
	7:5AWXfHi7xXzgeRGQu7SBKrBsL/NX9zp0sX2b6hq2zGa/ppABqm+s85puyVIyA0ryNE8fX7xk6JIZ9XVmA3EAemZJeGd7nKqLbj8wfIaumNcwsMaPNsUFRB9aPAWSHu/yPkmEaZyX4EHmTcsStYv8ywMs4oZJCOGj1d3g6ybd81X2X8lb6CmOiheljx9LPA7V0dnl3aCRraArj0qKVeYrvq6qoJ86QeNetZy48cDfQfGfnh8JmvkXCLC4cG7TcnCtev+xSHYEedatZQJNKorTzDTnvtyNGukyCsgV8HtkgfFRymowZzZ/p0iWUYA2GxAhXBUrl8UYcAxDQoRj1QpNYKm1CUctKVGGEEpeT/L57/bECiDjg3ywgvLHVE+Tr/7xYEUIhXPmL5i3VmQhekL2atOkdVS2diAVjAMxHl1Ndxno0bxId0pQ8M8hlzJEeVC2rb+zmNWZyyQFORiYjfRoyQ==;
	20:lX2eXA94CHlHC31KrGKlYTcnDGqLogqqRrdbvI9Ps5yaCdD5nxlgeHb3bvIE2Prlg6mJ3vZ/qKAHyhw8KiNEV0/w8D70TdkVqPXF4PRwWfPz6HItdcygvIQ4NZSyE3QJEy/8/WrK6hcUznYnFh36rYZlcBVeCou7CS7tsNnPTAs=
x-microsoft-antispam-prvs: <DM3PR1001MB12312ECF8EAB6CD22D65F566D17E0@DM3PR1001MB1231.namprd10.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6041248)(20161123562025)(20161123564025)(20161123560025)(20161123555025)(6072148);
	SRVR:DM3PR1001MB1231; BCL:0; PCL:0; RULEID:;
	SRVR:DM3PR1001MB1231; 
x-forefront-prvs: 0192E812EC
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(39450400003)(189002)(199003)(54356999)(66066001)(5660300001)(50986999)(551214005)(97736004)(5630700001)(3846002)(102836003)(38730400001)(101416001)(189998001)(6916009)(558084003)(6116002)(790700001)(110136003)(588024002)(7696004)(107886002)(53936002)(7116003)(221733001)(2900100001)(92566002)(7736002)(33656002)(3480700004)(8936002)(5640700003)(86362001)(74316002)(99286003)(3660700001)(55016002)(25786008)(68736007)(8676002)(6506006)(1730700003)(2501003)(105586002)(106356001)(81166006)(81156014)(9686003)(2351001)(6306002)(6436002)(555874004)(3280700002)(54896002)(77096006)(1240700005)(450100001)(2906002)(122556002)(166393002)(220243001)(239884005)(425394004);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM3PR1001MB1231;
	H:DM3PR1001MB1231.namprd10.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: taser.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: taser.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jan 2017 18:31:09.3435 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b575368d-7461-447d-a9a4-f90f22962981
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR1001MB1231
Subject: unsubscribe
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
X-List-Received-Date: Thu, 19 Jan 2017 21:03:01 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM3PR1001MB123166140D0875C3B1EC4F5AD17E0DM3PR1001MB1231_"

--_000_DM3PR1001MB123166140D0875C3B1EC4F5AD17E0DM3PR1001MB1231_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

unsubscribe

--_000_DM3PR1001MB123166140D0875C3B1EC4F5AD17E0DM3PR1001MB1231_
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
p.CRComment, li.CRComment, div.CRComment
	{mso-style-name:"CR Comment";
	mso-style-link:"CR Comment Char";
	margin-top:7.5pt;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:0in;
	margin-bottom:.0001pt;
	line-height:15.0pt;
	background:#F0F0F0;
	font-size:11.0pt;
	font-family:"Arial",sans-serif;
	color:#333333;}
span.CRCommentChar
	{mso-style-name:"CR Comment Char";
	mso-style-link:"CR Comment";
	font-family:"Arial",sans-serif;
	color:#333333;
	background:#F0F0F0;}
p.code, li.code, div.code
	{mso-style-name:code;
	mso-style-link:"code Char";
	margin:0in;
	margin-bottom:.0001pt;
	background:whitesmoke;
	font-size:11.0pt;
	font-family:"Courier New";
	color:#333333;}
span.codeChar
	{mso-style-name:"code Char";
	mso-style-link:code;
	font-family:"Courier New";
	color:#333333;
	background:whitesmoke;}
span.EmailStyle21
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<p class=3D"MsoNormal">unsubscribe<o:p></o:p></p>
</div>
</body>
</html>

--_000_DM3PR1001MB123166140D0875C3B1EC4F5AD17E0DM3PR1001MB1231_--
