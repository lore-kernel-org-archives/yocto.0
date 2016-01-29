Return-Path: <alexandre.osorio@eldorado.org.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63EEFE00903; Fri, 29 Jan 2016 10:41:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from smtp1.eldorado.org.br (smtp1.eldorado.org.br [200.148.226.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 825E8E0073D
	for <yocto@yoctoproject.org>; Fri, 29 Jan 2016 10:41:30 -0800 (PST)
Received: from serv030.corp.eldorado.org.br (200.148.226.2) by
	smtp1.eldorado.org.br (200.148.226.10) with Microsoft SMTP Server (TLS)
	id 14.3.123.3; Fri, 29 Jan 2016 16:41:19 -0200
Received: from serv030.corp.eldorado.org.br (192.168.4.30) by
	serv030.corp.eldorado.org.br (192.168.4.30) with Microsoft SMTP Server
	(TLS) id 15.0.775.38; Fri, 29 Jan 2016 16:41:22 -0200
Received: from serv030.corp.eldorado.org.br ([fe80::493e:4247:53f3:53b7]) by
	serv030.corp.eldorado.org.br ([fe80::493e:4247:53f3:53b7%14]) with mapi
	id 15.00.0775.031; Fri, 29 Jan 2016 16:41:22 -0200
From: Alexandre Freire da Silva Osorio <alexandre.osorio@eldorado.org.br>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: network drivers are not installed when MACHINE qemux86-64
Thread-Index: AdFaw/+YN5qH+7JEQ0ibcfihtOrzHA==
Date: Fri, 29 Jan 2016 18:41:21 +0000
Message-ID: <f0bdfb388a6d44448446852d1ef2a8f2@serv030.corp.eldorado.org.br>
Accept-Language: pt-BR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [177.220.10.3]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAC+NgFtrHIsWRWlGSWpSXmKPExsVyYsojJl3/TavDDBYvmnCFy2LSyzVsDowe7Sf62AIYo1gz85LyKxJYM74c+spYMEGqovFOWANjv3gXIxeHkMBORonjXd/Zuxg5gZx9jBLnf7JCJE4zSjzY1MsKkmAT8JS4/raNGcQWETCVeHHsCxuILSzgJHGw9xwLRNxdonHGWyhbT6L/xWwmEJtFQFXi6YbVYHFeAW+Jo233wGxGAVmJuX/2gi1mFhCXuPVkPli9hIC2xPZX+1ghbB2JTddWsUDYzhIz93+BqhGQWLLnPDOErSTRe/sdVFxU4uXjf1C9uhL/Vh5hh7ADJabefAQ1x1TizZJLULatxIm1f5lh5v/YegOqV17i/737UDUOEjcOvYeqUZA48Owr1K4AiR8LfkHVB0scvLAXKl4usWjRTDaY+OPVd+Dun7hyEVRNpETH9BMsExgNZiF5H8LOl9h88AvLLHBwCUqcnPmEZQEj8ypGqeLckgJDveT8ogK91JyU/KLElHy9/KJ0vaSiTYzANLDbY/XVHYwXVrsfYmTi4LzFKM1xgEmIIy2xuKQgsbhYiCUvPy9VCppWpBoY5e/KcBQJ9i3hXHSCe03gbSalE8dZCn8u2Hq59wsbk7emdoFw7tl/jgV3T7NoXfafPuPZ6immXT7JKad2z362tcaqnL/MrnuZ7qvgJam3zbb7BSyrCJ5gzti/UesaV2RWCHuLrfyGiV4lOTcuVpnq7Vhdy39274RC/gzRiUsO2J/e+c1ZYvEyJZbijERDLeai4kQA9N8xzdECAAA=
Subject: network drivers are not installed when MACHINE qemux86-64
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
X-List-Received-Date: Fri, 29 Jan 2016 18:41:33 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_f0bdfb388a6d44448446852d1ef2a8f2serv030corpeldoradoorgb_"

--_000_f0bdfb388a6d44448446852d1ef2a8f2serv030corpeldoradoorgb_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi!

When I build a core-image-lsb image for MACHINE qemux86-64, the network dri=
vers are not enabled. When building the same image for genericx86-64, this =
problem doesn't occur and all the drivers are enabled.

I appreciate any help to solve why in qemux86-64 the drivers are not enable=
d.

Thanks.

Alexandre

--_000_f0bdfb388a6d44448446852d1ef2a8f2serv030corpeldoradoorgb_
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
<p class=3D"MsoNormal">Hi!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">When I build a core-image-lsb i=
mage for MACHINE qemux86-64, the network drivers are not enabled. When buil=
ding the same image for genericx86-64, this problem doesn&#8217;t occur and=
 all the drivers are enabled.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I appreciate any help to solve =
why in qemux86-64 the drivers are not enabled.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Alexandre<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_f0bdfb388a6d44448446852d1ef2a8f2serv030corpeldoradoorgb_--
