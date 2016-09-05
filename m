Return-Path: <richard.zhang@pica8.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED5C0E00B04; Mon,  5 Sep 2016 03:58:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.36.123 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 912 seconds by postgrey-1.32 at yocto-www;
	Mon, 05 Sep 2016 03:58:01 PDT
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0123.outbound.protection.outlook.com [104.47.36.123])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 850A3E00A6D
	for <yocto@yoctoproject.org>; Mon,  5 Sep 2016 03:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=pica8com.onmicrosoft.com; s=selector1-pica8-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=yflUT4zUvs5+pvuOFNgBMI6WvKchc3D55sh/NfF8bqM=;
	b=CMloupSXocG1qQOWVVGr2S+S4jsO3XZjJSmKTqEaM3qnzkY9oTrlcGu2E4duy1fJyG71JjjvepGBAKZ8Wmm5J7/Exu94v4hnM3QznjRn76QwnkiaMmCOGDW1+jwqL3Ubno673Nyw2aKk7VD8iu9UlqCdW/ucKq52wHykWNsQnmY=
Received: from BN3PR1201MB0963.namprd12.prod.outlook.com (10.165.76.133) by
	BN3PR1201MB0962.namprd12.prod.outlook.com (10.165.76.26) with Microsoft
	SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id
	15.1.599.9; Mon, 5 Sep 2016 10:42:47 +0000
Received: from BN3PR1201MB0963.namprd12.prod.outlook.com ([10.165.76.133]) by
	BN3PR1201MB0963.namprd12.prod.outlook.com ([10.165.76.133]) with
	mapi id 15.01.0599.016; Mon, 5 Sep 2016 10:42:47 +0000
From: Richard Zhang <richard.zhang@pica8.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to use a defconfig file when kernel come from EXTERNALSRC?
Thread-Index: AdIHYTNmrMDJiyXHT+Smbhs2MpomkA==
Date: Mon, 5 Sep 2016 10:42:47 +0000
Message-ID: <BN3PR1201MB09636BBBB6A93EEC9B1FDDE7A5E60@BN3PR1201MB0963.namprd12.prod.outlook.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=richard.zhang@pica8.com; 
x-originating-ip: [124.193.174.202]
x-ms-office365-filtering-correlation-id: cb5a5e02-ecd1-404b-323c-08d3d579607c
x-microsoft-exchange-diagnostics: 1; BN3PR1201MB0962;
	6:MDeEk7Aq//nsFoca0XTIal+AztihCLqUHxQYWaKnRI1ANfHihJJrVt2kYUpA5hVBfW15knrEqNU3/UBJabMQNkMS8lRbuueQ5NNucBTCl3wN932KOBomTS3haWeD8M8KbmZbajaP+J9HtF4mGhyaoJDFfQ+MaYt0tjp6DOhiomPuzovTGE9uhDiRx1No09EohblaaKKjEATNGE+THNbzNAvGXYZCF2eSzx5UV7UJ3GHOBC7zBNRzi4sc5fWRulgblPBSBQYWYj7RNyn47wGsLBxJuv0vLjhEs4ntGyNQo0q3rqyassorVs5FTaJ/LxXv;
	5:MGnMZQpnVHoW0TSyJDaUFzD70Hx0X/qSZ7kMimD2qpzWLLl8f28Bp1q2MzSBfhBz1jrOFUH089DdGJhITiIjyEBjuPgMGjEYBQC9+upy7k1b8JPJnwsSaHjt/98YNj3XC/0Yhm3nC9oKciGxw5R+Zw==;
	24:uIBkR72b74MLyTC+6mBIqcC7m3am8D6vpRKrYflHTMfwXSCKGdRk4cGi8Uy7uZaUUkfY3EzG610Eh8g/RCQ4UTu2HYHQPZTqYz1RrvJUqv0=;
	7:JBKTWIfYZb3B39d1Pf6Wt7u0+nirvJTKujMnB+YLEtcyM+OmAnQTZju0aqkq4hbQ2Q8ZXbpm91b3fSN5seOqz4zvWI1Lx7rrqtTaQUBqleQiiIMz4RNeRAHDOzFeo0d8DZJGgI5eSREcmMUfAugOazhgWYZsnC8RY5zyf+E2+nld9NEiI4nOlWpPhQoflWoz7XTg5JCiYZkZR2yOlL1cnZlDGiSI9WWPRIc4/t6iCTb374+v6o3Sd2ldB2DYCC1V
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN3PR1201MB0962;
x-microsoft-antispam-prvs: <BN3PR1201MB09623A431ACD04E63BB871E9A5E60@BN3PR1201MB0962.namprd12.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(102415321)(6040176)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6043046)(6042046);
	SRVR:BN3PR1201MB0962; BCL:0; PCL:0; RULEID:;
	SRVR:BN3PR1201MB0962; 
x-forefront-prvs: 005671E15D
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(53754006)(199003)(189002)(189998001)(2900100001)(66066001)(105586002)(74316002)(3660700001)(106356001)(1730700003)(81156014)(8676002)(7846002)(2501003)(99286002)(81166006)(68736007)(9686002)(7696003)(7736002)(2906002)(5640700001)(5630700001)(3280700002)(229853001)(86362001)(19580395003)(87936001)(558084003)(122556002)(19300405004)(2351001)(33656002)(3846002)(586003)(790700001)(6116002)(102836003)(450100001)(19625215002)(76576001)(97736004)(92566002)(11100500001)(110136002)(5660300001)(107886002)(15975445007)(77096005)(16236675004)(99936001)(50986999)(8936002)(10400500002)(5002640100001)(101416001)(54356999);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR1201MB0962;
	H:BN3PR1201MB0963.namprd12.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: pica8.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: pica8.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2016 10:42:47.1549 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1649697f-e494-4b71-8227-3f383d0979ad
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR1201MB0962
Subject: How to use a defconfig file when kernel come from EXTERNALSRC?
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
X-List-Received-Date: Mon, 05 Sep 2016 10:58:05 -0000
X-Groupsio-MsgNum: 31781
Content-Language: zh-CN
Content-Type: multipart/mixed;
	boundary="_004_BN3PR1201MB09636BBBB6A93EEC9B1FDDE7A5E60BN3PR1201MB0963_"

--_004_BN3PR1201MB09636BBBB6A93EEC9B1FDDE7A5E60BN3PR1201MB0963_
Content-Type: multipart/alternative;
	boundary="_000_BN3PR1201MB09636BBBB6A93EEC9B1FDDE7A5E60BN3PR1201MB0963_"

--_000_BN3PR1201MB09636BBBB6A93EEC9B1FDDE7A5E60BN3PR1201MB0963_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all



When is use:

EXTERNALSRC_linux-yocto =3D "/path/to/linux/kernel"



I can't add defconfig to the kernel SRC_URI.Then configme







This will lead to error:

SRC_URI +=3D "file://path/defconfig"






Best regards

--_000_BN3PR1201MB09636BBBB6A93EEC9B1FDDE7A5E60BN3PR1201MB0963_
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
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
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
	mso-style-link:"\7EAF\6587\672C Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.5pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.Char
	{mso-style-name:"\7EAF\6587\672C Char";
	mso-style-priority:99;
	mso-style-link:\7EAF\6587\672C;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
/* Page Definitions */
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
<body lang=3D"ZH-CN" link=3D"#0563C1" vlink=3D"#954F72" style=3D"text-justi=
fy-trim:punctuation">
<div class=3D"WordSection1">
<p class=3D"MsoPlainText"><span lang=3D"EN-US">Hi all<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">When is use:<o:p></o:p></spa=
n></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">EXTERNALSRC_linux-yocto =3D =
</span><span lang=3D"EN-US" style=3D"font-family:&quot;Courier New&quot;">&=
#8220;</span><span lang=3D"EN-US">/path/to/linux/kernel</span><span lang=3D=
"EN-US" style=3D"font-family:&quot;Courier New&quot;">&#8221;</span><span l=
ang=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">I can</span><span lang=3D"EN=
-US" style=3D"font-family:&quot;Courier New&quot;">&#8217;</span><span lang=
=3D"EN-US">t add defconfig to the kernel SRC_URI.Then configme<o:p></o:p></=
span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">This will lead to error:<o:p=
></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">SRC_URI &#43;=3D &quot;file:=
//path/defconfig&quot;<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Best regards<o:p></o:p></span><=
/p>
</div>
</body>
</html>

--_000_BN3PR1201MB09636BBBB6A93EEC9B1FDDE7A5E60BN3PR1201MB0963_--

--_004_BN3PR1201MB09636BBBB6A93EEC9B1FDDE7A5E60BN3PR1201MB0963_
Content-Type: application/octet-stream; name="error.log"
Content-Description: error.log
Content-Disposition: attachment; filename="error.log"; size=521;
	creation-date="Mon, 05 Sep 2016 10:41:46 GMT";
	modification-date="Mon, 05 Sep 2016 10:41:46 GMT"
Content-Transfer-Encoding: base64

TG9nIGRhdGEgZm9sbG93czoKfCBERUJVRzogRXhlY3V0aW5nIHB5dGhvbiBmdW5jdGlvbiBkb191
bnBhY2sKfCBERUJVRzogRXhlY3V0aW5nIHB5dGhvbiBmdW5jdGlvbiBiYXNlX2RvX3VucGFjawp8
IE5PVEU6IFVucGFja2luZyAvaG9tZS93b2xmL3NyYy9saW51eC9kZWZjb25maWcgdG8gL21udC9j
MS9naXQvcG9reS9idWlsZC10b2FzdGVyLTQvdG1wL3dvcmsvZ2VuZXJpY3g4Nl82NC1wb2t5LWxp
bnV4L2xpbnV4LXlvY3RvLXBpY2E4LzMuMTYtcjAvCnwgY3A6IGNhbm5vdCBzdGF0ICcvaG9tZS93
b2xmL3NyYy9saW51eC9kZWZjb25maWcnOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5CnwgREVC
VUc6IFB5dGhvbiBmdW5jdGlvbiBiYXNlX2RvX3VucGFjayBmaW5pc2hlZAp8IERFQlVHOiBQeXRo
b24gZnVuY3Rpb24gZG9fdW5wYWNrIGZpbmlzaGVkCnwgRVJST1I6IEZ1bmN0aW9uIGZhaWxlZDog
VW5wYWNrIGZhaWx1cmUgZm9yIFVSTDogJ2ZpbGU6Ly8vaG9tZS93b2xmL3NyYy9saW51eC9kZWZj
b25maWcnLgo=

--_004_BN3PR1201MB09636BBBB6A93EEC9B1FDDE7A5E60BN3PR1201MB0963_--
