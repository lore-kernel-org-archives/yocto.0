Return-Path: <zhenhua.luo@nxp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD424E00CAC; Fri, 23 Sep 2016 07:48:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.55 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0055.outbound.protection.outlook.com [104.47.2.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A765E0074B
	for <yocto@yoctoproject.org>; Fri, 23 Sep 2016 07:48:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=aTNPPI38fTxtCCoaKhT0eVs+JydE1et96sCxte7AD7s=;
	b=ARSyhXtR66lDaXRMmDYtjKdQUcTaylckA0gOyiEtl68e6W5MSzM2thHf1KYNMRg0YTxxPqEi7v4nr4DphoOxirMb8HX9ZMr7jS4B8bYjcqEEOmKlI/MjfJ5vHlkag9w7mX3KLw0t5PEG4hhuomNdA4zGSw1Wv4EKGOBMKTrqgQU=
Received: from VI1PR0401MB2638.eurprd04.prod.outlook.com (10.168.66.10) by
	VI1PR0401MB2639.eurprd04.prod.outlook.com (10.168.66.11) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.639.2; Fri, 23 Sep 2016 14:48:35 +0000
Received: from VI1PR0401MB2638.eurprd04.prod.outlook.com ([10.168.66.10]) by
	VI1PR0401MB2638.eurprd04.prod.outlook.com ([10.168.66.10]) with mapi id
	15.01.0639.005; Fri, 23 Sep 2016 14:48:35 +0000
From: Zhenhua Luo <zhenhua.luo@nxp.com>
To: "Anicic Damir (PSI)" <damir.anicic@psi.ch>
Thread-Topic: Freescale DPAA drivers
Thread-Index: AdIVpLC27vdc1JXaQ3WU0FdsIiYGUQAA96ZQ
Date: Fri, 23 Sep 2016 14:48:35 +0000
Message-ID: <VI1PR0401MB263854C888AF837DF1C164B5EEC80@VI1PR0401MB2638.eurprd04.prod.outlook.com>
References: <DB23C91B06C303459B24BC3208AF424A20F9B38A@MBX114.d.ethz.ch>
In-Reply-To: <DB23C91B06C303459B24BC3208AF424A20F9B38A@MBX114.d.ethz.ch>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=zhenhua.luo@nxp.com; 
x-originating-ip: [123.151.195.53]
x-ms-office365-filtering-correlation-id: dd5b0f4e-b1a7-4fdc-4a05-08d3e3c0b277
x-microsoft-exchange-diagnostics: 1; VI1PR0401MB2639;
	6:Qx/xdQ4QnNj2n8rIYnWkvZ3xtPAVbmQoLAvBQxPLa1GAjkFSh43BrXC7R1XiuugUsjRWFYSKLMt3saejakIWXSWbAQDhaN7xRTerxh1xkzRwx8c90XDz2ULWHYp1apuYVndKAffs3j5n/SNQE8g0/5fx58OzI+0Vy7QSCveelum1U7m2ZkmRYL+3dqlJQWD5AmplVPbJmK6FTKoSUmPpz/JPGig0g5ZVAl/dYMSaglDc9mqJDo3LuL9mB6HqCjODHbFbY7zF204DUwuXNN4L/wDkln7vYi8LeFYqsr/knD53ZmevWhDzr6WEWRzDftt21eWypj96RjJo4XgYbauhYw==;
	5:RSLh/Iv3hjKfglHbWn+F1ZuBQe/bw1ycndnVmYZSs2V2/XkZU3sr6lpQLOd0xS86LdP/GhIckwvqzG9hwSJJ7gXWWOW0tjbaTx9r24wvAZIJvC619fuKW6+ueloC+GvUJ4cklqgqse8sfJdOyCttIQ==;
	24:pHUGZRaunxoCu9wDgPcPJ/YTZDRJRxKV07FACQ0L4vXHlgPU6bIaw38db5Fl0z+fuSqSNaDtXj/jAEoTrXr6JBOIT1MPCUgyuSFN1VwdAFE=;
	7:ldpwaGCEwhpYx34TRQ+ccGuiNPqkBLdPVMOez2CbG6V9FqnOEMLL326pMpr88eLrAHnfXQPAfJu+Rdy7kLn1v3TjQdRbZSeW0uqA7rapRrnUp6Nx7OxrUysE3B4ph+jy5NG2AYHM6+shu6eC8l9ELxEotVPE2arQLSKsTOzQ/zNwW13EjaP88EdanAqkv88joSoDq06wC1yuTzNM1XRGhueX6WpzPDvTt40wiy5zcCm68bShTn7XSizMf+pOIyy7TL5jLUBj8r1rNgbjEOUwZ6nh3txX+i6nDt4VNqFK7DrZBqVz1ziJLDeyYlgTmQQ0
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:VI1PR0401MB2639;
x-microsoft-antispam-prvs: <VI1PR0401MB2639A3C87C8243ED1E6393E2EEC80@VI1PR0401MB2639.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040176)(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001)(6055026);
	SRVR:VI1PR0401MB2639; BCL:0; PCL:0; RULEID:;
	SRVR:VI1PR0401MB2639; 
x-forefront-prvs: 0074BBE012
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(7916002)(377454003)(199003)(71364002)(189002)(102836003)(586003)(6116002)(76176999)(54356999)(10400500002)(9686002)(3846002)(5002640100001)(7116003)(50986999)(101416001)(86362001)(106356001)(105586002)(790700001)(7696004)(3280700002)(3480700004)(5660300001)(2906002)(19617315012)(33656002)(68736007)(66066001)(11100500001)(110136003)(7736002)(81166006)(76576001)(3660700001)(81156014)(7846002)(92566002)(122556002)(77096005)(4326007)(19580405001)(7906003)(2950100001)(15975445007)(19300405004)(16236675004)(2900100001)(97736004)(19625215002)(189998001)(19580395003)(8676002)(8936002)(74316002)(87936001)(6916009);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2639;
	H:VI1PR0401MB2638.eurprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: nxp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2016 14:48:35.4708 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2639
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Freescale DPAA drivers
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
X-List-Received-Date: Fri, 23 Sep 2016 14:48:41 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR0401MB263854C888AF837DF1C164B5EEC80VI1PR0401MB2638_"

--_000_VI1PR0401MB263854C888AF837DF1C164B5EEC80VI1PR0401MB2638_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I guess you are using the community kernel instead of NXP SDK kernel, the D=
PAA upstream is ongoing currently, to use the full function DPAA drivers, y=
ou can use the kernel recipes in meta-fsl-ppc layer(http://git.yoctoproject=
.org/cgit/cgit.cgi/meta-fsl-ppc/log/).


Best Regards,

Zhenhua

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Anicic Damir (PSI)
Sent: Friday, September 23, 2016 10:14 PM
To: yocto@yoctoproject.org
Subject: [yocto] Freescale DPAA drivers

Hi,

I am using Yocto 2.1, PowerPC64, default kernel 4.1.22
Building for T2080rdb.

Everything builds, but kernel is missing DPAA Freescale drivers
(dpaa_eth at least)


It seems that DPAA Freescale drivers not in any Linux kernel (or am I wrong=
).

Why is that so, is Freescale not planing to include them in kernel ?

Kind regards,

Damir



--_000_VI1PR0401MB263854C888AF837DF1C164B5EEC80VI1PR0401MB2638_
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
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">I guess you are using the community k=
ernel instead of NXP SDK kernel, the DPAA upstream is ongoing currently, to=
 use the full function DPAA drivers, you can use
 the kernel recipes in meta-fsl-ppc layer(<a href=3D"http://git.yoctoprojec=
t.org/cgit/cgit.cgi/meta-fsl-ppc/log/">http://git.yoctoproject.org/cgit/cgi=
t.cgi/meta-fsl-ppc/log/</a>).
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">Best Regards,
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">Zhenhua<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> yocto-bounces@yoctoproject.org=
 [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Anicic Damir (PSI)<br>
<b>Sent:</b> Friday, September 23, 2016 10:14 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] Freescale DPAA drivers<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,sans-serif;color:black">Hi,<br>
<br>
I am using Yocto 2.1, PowerPC64, default kernel 4.1.22<br>
Building for T2080rdb.<br>
<br>
Everything builds, but kernel is missing DPAA Freescale drivers<br>
(dpaa_eth at least)<br>
<br>
<br>
It seems that DPAA Freescale drivers not in any Linux kernel (or am I wrong=
).<br>
<br>
Why is that so, is Freescale not planing to include them in kernel ?<br>
<br>
Kind regards,<br>
<br>
Damir<br>
<br>
<br>
<o:p></o:p></span></p>
</div>
</div>
</div>
</body>
</html>

--_000_VI1PR0401MB263854C888AF837DF1C164B5EEC80VI1PR0401MB2638_--
