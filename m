Return-Path: <richard.zhang@pica8.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B41BCE0126E; Fri, 12 Aug 2016 03:21:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.114 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 845 seconds by postgrey-1.32 at yocto-www;
	Fri, 12 Aug 2016 03:21:38 PDT
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0114.outbound.protection.outlook.com [104.47.41.114])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C28D5E01086
	for <yocto@yoctoproject.org>; Fri, 12 Aug 2016 03:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=pica8com.onmicrosoft.com; s=selector1-pica8-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=5nEi4Ry4egww/DaEQXZLWZcTkw+lh8HHLn1rSjqZDkE=;
	b=UJFyjUAxmqSIfFfGmO3uqA2rp+nAIkMp2b9O6bG3YQzGcZoh7ZgctyMs8iF0eXtkdnrrf3U68mo4DkixeGuRU2MIBhqCbp5hCUmqMQvN0NaVouNxE6HAnUhz+U15+YM2R6FjHocK3C1uQbQ8qBg4Ng1uUmP3GB6eQb3dQFnYb8o=
Received: from BN3PR1201MB0963.namprd12.prod.outlook.com (10.165.76.133) by
	BN3PR1201MB0962.namprd12.prod.outlook.com (10.165.76.26) with Microsoft
	SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id
	15.1.549.15; Fri, 12 Aug 2016 10:07:30 +0000
Received: from BN3PR1201MB0963.namprd12.prod.outlook.com ([10.165.76.133]) by
	BN3PR1201MB0963.namprd12.prod.outlook.com ([10.165.76.133]) with
	mapi id 15.01.0557.021; Fri, 12 Aug 2016 10:07:30 +0000
From: Richard Zhang <richard.zhang@pica8.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Is There a easy way to check which version of GCC was been used
	to a package
Thread-Index: AdH0gRWKA+GjNknFSCu2GaO1APMOWA==
Date: Fri, 12 Aug 2016 10:07:30 +0000
Message-ID: <BN3PR1201MB0963796463290B74813475BBA51F0@BN3PR1201MB0963.namprd12.prod.outlook.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=richard.zhang@pica8.com; 
x-originating-ip: [124.193.174.202]
x-ms-office365-filtering-correlation-id: 498f6e63-2ec0-4598-1438-08d3c29878d8
x-microsoft-exchange-diagnostics: 1; BN3PR1201MB0962;
	6:XXBfngV8XeRHAIj60euuQyguUzYuU1+cAaHEIB/Hcjv0KAi1biRD1IRtZ/IDBLl6NdPYc35XBXHwcKJ5OxQCVb8+ylftmNpI3C+nITho9cF8z2p0Wc875qoYzWUl+y4t9pESxBiCRfOyIhMEnsPMxPoHmsuh953tMXMzSeGR0vy7z7Ep9UOUtkRsgoUsjzGgB0+xGNB2yuee1mcZqPaXI4NMedvD9rVlaLUQ6EJ5GxTn0G+KpifK+b/suAHU0A4p3cae9/pEjANnzoalCM/9VVtftn81P003Y+D1YfLEKJtgni6Iv1RVXO/+BO9WxMGD;
	5:5bzhBiCi3ozaN/7Yu/Glb07Wjgxb39/+S9svpB+CAqmQHuVi7KPRgEDyhFn5N2YS4MVoOjFfSe4s6927uxduWyHpC83Cw46e5odC1cXUrbD2tnTQLIf1rET5dp6nqwGaHAMC23DmIy4aKYfJUnafxQ==;
	24:KchbjXH+oTG3mpbO16PNVdeWdsw7fQmlUgzS8e2NLL5spKGHxegOqn+sP6YUZa25Vif/QX3+UUvq0CVaw5sF6lureuQ+VznGb02bPJ9sgCU=;
	7:v7iEoKhJWsD0mmG0NuTwRrTLG5bDO3nm91MqylYQsNUp/dvInVp9TnnS44tJuSEikRIh9A0GA9sQEDfUbAytgNdQwHdvHnlT+9qqWiGxou1ccl0ZX5F9tOAjUXdkRVn97Af7R97GptNf18ryJXELScBCiuPZdSXYxkxprMfTTKKaoT7dc93NX9RzNbq0xIOBmA7qtpXhqIn035rwN6ITOjU4dm05/kvJeFH0XdQqxP9edeFCFWsIDgfU/SeVkiKi
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN3PR1201MB0962;
x-microsoft-antispam-prvs: <BN3PR1201MB09622A064FD40F3C3901BAE9A51F0@BN3PR1201MB0962.namprd12.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040176)(601004)(2401047)(5005006)(8121501046)(10201501046)(3002001)(6043046)(6042046);
	SRVR:BN3PR1201MB0962; BCL:0; PCL:0; RULEID:;
	SRVR:BN3PR1201MB0962; 
x-forefront-prvs: 003245E729
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(53754006)(189002)(199003)(33656002)(92566002)(7846002)(7736002)(11100500001)(68736007)(10400500002)(450100001)(2906002)(7696003)(76576001)(50986999)(54356999)(558084003)(74316002)(66066001)(106356001)(122556002)(19580395003)(19300405004)(229853001)(81156014)(110136002)(1730700003)(15975445007)(5002640100001)(5630700001)(16236675004)(2900100001)(81166006)(9686002)(8936002)(87936001)(586003)(102836003)(3846002)(5640700001)(99286002)(19625215002)(105586002)(2501003)(189998001)(6116002)(3660700001)(86362001)(107886002)(2351001)(790700001)(97736004)(8676002)(3280700002)(77096005)(101416001)(43043002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR1201MB0962;
	H:BN3PR1201MB0963.namprd12.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: pica8.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: pica8.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2016 10:07:30.3282 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1649697f-e494-4b71-8227-3f383d0979ad
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR1201MB0962
Subject: Is There a easy way to check which version of GCC was been used to a package
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
X-List-Received-Date: Fri, 12 Aug 2016 10:21:45 -0000
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_BN3PR1201MB0963796463290B74813475BBA51F0BN3PR1201MB0963_"

--_000_BN3PR1201MB0963796463290B74813475BBA51F0BN3PR1201MB0963_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all

After use yocto build linux distro , how could I check the toolchain's vers=
ion?
Is there a version description?




Best Regard.

Richard Zhang

--_000_BN3PR1201MB0963796463290B74813475BBA51F0BN3PR1201MB0963_
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
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
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi all<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:21.0pt"><span lang=3D"EN-US">Af=
ter use yocto build linux distro , how could I check the toolchain&#8217;s =
version?<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:21.0pt"><span lang=3D"EN-US">Is=
 there a version description?<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:21.0pt"><span lang=3D"EN-US"><o=
:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:21.0pt"><span lang=3D"EN-US"><o=
:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:21.0pt"><span lang=3D"EN-US"><o=
:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:21.0pt"><span lang=3D"EN-US"><o=
:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:21.0pt"><span lang=3D"EN-US">Be=
st Regard.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:21.0pt"><span lang=3D"EN-US"><o=
:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:21.0pt"><span lang=3D"EN-US">Ri=
chard Zhang<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_BN3PR1201MB0963796463290B74813475BBA51F0BN3PR1201MB0963_--
