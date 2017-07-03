Return-Path: <alexandre.osorio@eldorado.org.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61EAEE00BE8; Mon,  3 Jul 2017 08:16:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 902 seconds by postgrey-1.32 at yocto-www;
	Mon, 03 Jul 2017 08:16:50 PDT
Received: from smtp1.eldorado.org.br (smtp1.eldorado.org.br [200.148.226.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88456E00A38
	for <yocto@yoctoproject.org>; Mon,  3 Jul 2017 08:16:49 -0700 (PDT)
X-AuditID: ac10c815-585ff70000006be1-b9-595a5c558e42
Received: from serv030.corp.eldorado.org.br (Unknown_Domain [192.168.4.30])
	(using TLS with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	by smtp1.eldorado.org.br (ELDORADO_SMTP) with SMTP id
	EA.D9.27617.55C5A595; Mon,  3 Jul 2017 12:01:44 -0300 (BRT)
Received: from serv031.corp.eldorado.org.br (192.168.4.31) by
	serv030.corp.eldorado.org.br (192.168.4.30) with Microsoft SMTP Server
	(TLS) id 15.0.775.38; Mon, 3 Jul 2017 12:01:28 -0300
Received: from serv031.corp.eldorado.org.br ([fe80::c032:7018:83d3:b1e3]) by
	serv031.corp.eldorado.org.br ([fe80::c032:7018:83d3:b1e3%14]) with mapi
	id 15.00.0775.031; Mon, 3 Jul 2017 12:01:28 -0300
From: Alexandre Freire da Silva Osorio <alexandre.osorio@eldorado.org.br>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: ERROR: Could not invoke dnf
Thread-Index: AdL0DP06aGBtlP8WTrOYAZIlrWlSCA==
Date: Mon, 3 Jul 2017 15:01:27 +0000
Message-ID: <0a34e1cf6b7b474b901e97bd3e08da92@serv031.corp.eldorado.org.br>
Accept-Language: pt-BR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.10.1.155]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrMLMWRmVeSWpSXmKPExsVyYAWLnG5ETFSkwbazyhaTXq5hc2D0aD/R
	xxbAGMVlk5Kak1mWWqRvl8CV0XPxI0vBROWKj6uOMTYwLpHvYuTgkBAwkdjbJdXFyMUhJLCM
	SeLRtFZmCGcvo8T3xadYIZxTjBJru/oYuxg5OdgEPCWuv21jBrFFBEwlXhz7wgZiCwuoSMzp
	ms8CEdeU+LloBiOErScxY+5bsBoWoJr3t7ezgti8At4SUz93gNmMArISc//sZQexmQXEJW49
	mc8EYksICEgs2XOeGcIWlXj5+B8rhC0v8XXDQWaI+nyJ02/Xs0PMFJQ4OfMJywRGoVlIRs1C
	UjYLSRlEXEdiwe5PbBC2tsSyha+ZYewzBx4zIYsvYGRfxShanFtSYKiXmpOSX5SYkq+XX5Su
	l1S0iREYFWsETojuYHz+w+sQowAHoxIP7wPfqEgh1sSy4srcQ4wSHMxKIrxPIoFCvCmJlVWp
	RfnxRaU5qcWHGKU5WJTEeQuW/o8QEkhPLEnNTk0tSC2CyTJxcEo1MCr05d2vfJb7LPTzgfXC
	RS0bhF3/viqKb5kWt/f0aukKYY81zLe35HpI3OqbwmxyaOrZbs6Q/447nPOyTiwx1Q6PjYpX
	WmZjLjhzVc6cyT4dX3qUqpt8zr5JYs3SnfPvlrSGTSbnt7zw44ZVJl3lU441rHGf0V1eFMIY
	Pn3jIiPtzM0cj3caKbEUZyQaajEXFScCAP9RG7iGAgAA
Subject: ERROR: Could not invoke dnf
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
X-List-Received-Date: Mon, 03 Jul 2017 15:16:53 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0a34e1cf6b7b474b901e97bd3e08da92serv031corpeldoradoorgb_"

--_000_0a34e1cf6b7b474b901e97bd3e08da92serv031corpeldoradoorgb_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm trying to upgrade my build from Morty to Pyro, without success. Maintai=
ning the same recipe for the image generation, the following errors happen =
in do_rootfs (these errors don't occur using Morty).


ERROR: my-image-1.0-r0 do_rootfs: Could not invoke dnf.

Error: Transaction check error:
  file /etc/init.d/networking conflicts between attempted installs of init-=
ifupdown and initscripts
  file /usr/bin/zipdetails conflicts between attempted installs of io-compr=
ess-perl and perl-misc


Please anyone could help?


Thanks.

Alexandre

--_000_0a34e1cf6b7b474b901e97bd3e08da92serv031corpeldoradoorgb_
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
	margin:70.85pt 3.0cm 70.85pt 3.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"PT-BR" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;m trying to upgrade my =
build from Morty to Pyro, without success. Maintaining the same recipe for =
the image generation, the following errors happen in do_rootfs (these error=
s don&#8217;t occur using Morty).
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ERROR: my-image-1.0-r0 do_rootf=
s: Could not invoke dnf.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Error: Transaction check error:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; file /etc/init.d/network=
ing conflicts between attempted installs of init-ifupdown and initscripts<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; file /usr/bin/zipdetails=
 conflicts between attempted installs of io-compress-perl and perl-misc<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Please anyone could help?<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Alexandre<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_0a34e1cf6b7b474b901e97bd3e08da92serv031corpeldoradoorgb_--
