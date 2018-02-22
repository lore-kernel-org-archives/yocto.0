Return-Path: <alessio.pulizzotto@comau.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B903E00DC3; Thu, 22 Feb 2018 04:14:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 901 seconds by postgrey-1.32 at yocto-www;
	Thu, 22 Feb 2018 04:14:06 PST
Received: from fsasmgp12.fiatgroup.com (mx2fcms.fiatgroup.com
	[212.123.238.168])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC57FE00D17
	for <yocto@yoctoproject.org>; Thu, 22 Feb 2018 04:14:06 -0800 (PST)
X-AuditID: d47beea8-0e3ff7000000b164-4a-5a8eb08708f1
Received: from MXPA4FGAW.fgremc.it ( [151.92.70.64])
	by fsasmgp12.fiatgroup.com (ESMTP IBM SMTP Gateway) with SMTP id
	01.9B.45412.780BE8A5; Thu, 22 Feb 2018 12:59:04 +0100 (CET)
Received: from MXPA2FGAW.fgremc.it (151.92.70.62) by MXPA4FGAW.fgremc.it
	(151.92.70.64) with Microsoft SMTP Server (TLS) id 15.0.1320.4;
	Thu, 22 Feb 2018 12:59:03 +0100
Received: from MXPA2FGAW.fgremc.it ([fe80::6010:a347:db1a:a4d0]) by
	MXPA2FGAW.fgremc.it ([fe80::6010:a347:db1a:a4d0%17]) with mapi id
	15.00.1320.000; Thu, 22 Feb 2018 12:59:03 +0100
From: "Pulizzotto Alessio (COMAU)" <alessio.pulizzotto@comau.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Problem in the building phase - Yocto 2.4.1 for Siemens IoT 2040
	(Intel Quark)
Thread-Index: AdOr08nTGvNDMpx+QJ+L6i4VwuBrSg==
Date: Thu, 22 Feb 2018 11:59:02 +0000
Message-ID: <dcad044fec2b4e0ab2efbaea4043fe76@MXPA2FGAW.fgremc.it>
Accept-Language: it-IT, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [151.92.70.225]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrHLMWRmVeSWpSXmKPExsUyPcbNQbdjQ1+UwTFdi0kv17A5MHq0n+hj
	C2CM4rJJSc3JLEst0rdL4Mp4vvUuW8Fqk4oNM0IaGN/pdTFyckgImEh8Xf2FuYuRi0NIYDOj
	RMPtX2wQzhpGiT1tX9ghnJ2MEqce7GcHaWETcJTomD6VFcQWETCVeHHsC1AHB4ewQKTElA/u
	EOE4iU1LnjFB2HoST7vugbWyCKhK9HddZwIp5xVwkjh1JwIkzCggKzFh9yJGEJtZQFzixfQT
	7BDHCUgs2XOeGcIWlXj5+B8rhG0gsXXpPhYIW1Hi5e9JbBC9mRLPPn8Eq+EVEJQ4OfMJywRG
	4VlIxs5CUjYLSRlEXEdiwe5PbBC2tsSyha+ZYewzBx4zIYsvYGRfxSieVpxYnJteYGikl5aZ
	WJJelF9aoJecn7uJERgrV6rfrdjBeGKz2yFGAQ5GJR7eiJLeKCHWxLLiytxDjBIczEoivEtD
	+6KEeFMSK6tSi/Lji0pzUosPMUpzsCiJ857W7YkSEkhPLEnNTk0tSC2CyTJxcEo1MFq7f9a+
	1a92+PzKTB+p6W1VHCy/n7OqM3q531v7+HHvNZ37C3bvUOLk+L3++kLHuRWFPosE/COyD8td
	MAvfvEKsKHqNY5XkhIXuusJRu0SPCeV92vwk/OXcJ7ujfY8/ntUfop2r1H/mcd8CK7Zbxwu1
	indk9RktNfXw/O2cFvOvhMvz+72zpUosxRmJhlrMRcWJAOHKPRORAgAA
X-Mailman-Approved-At: Fri, 23 Feb 2018 08:14:11 -0800
Subject: Problem in the building phase - Yocto 2.4.1 for Siemens IoT 2040 (Intel Quark)
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
X-List-Received-Date: Thu, 22 Feb 2018 12:14:08 -0000
Content-Language: it-IT
Content-Type: multipart/alternative;
	boundary="_000_dcad044fec2b4e0ab2efbaea4043fe76MXPA2FGAWfgremcit_"

--_000_dcad044fec2b4e0ab2efbaea4043fe76MXPA2FGAWfgremcit_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm writing you because I have some problems with the building of an 2.4.1 =
image of the Yocto.

I am using a Siemens IoT 2040 hardware witch have an intel quark cpu.

My error is the follow, in the "bitbake name-image":

"ExpansionError during parsing ***/poky/meta-java/recipies-extended/xmlpull=
/xmlpull_1.1.3.4c.bb"

And at the end:

"module bb.data has no attribute 'getVar'"


Do you have any suggestions to resolve it?

I am trying to build the image using Ubuntu 17 (I know that this OS hasn't =
been tested for this procedure).

Thank you in advance

Best Regards


Alessio Pulizzotto
Automation Engineer

Comau S.p.A. - Automation Systems
Via Rivalta 49 - 10095 Grugliasco (To) - Italy
e-mail: alessio.pulizzotto@comau.com<mailto:alessio.pulizzotto@comau.com>



--_000_dcad044fec2b4e0ab2efbaea4043fe76MXPA2FGAWfgremcit_
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
span.StileMessaggioDiPostaElettronica17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 2.0cm 2.0cm 2.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"IT" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;m writing you because I=
 have some problems with the building of an 2.4.1 image of the Yocto.<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am using a Siemens IoT 2040 h=
ardware witch have an intel quark cpu.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">My error is the follow, in the =
&#8220;bitbake name-image&#8221;:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&#8220;ExpansionError during pa=
rsing ***/poky/meta-java/recipies-extended/xmlpull/xmlpull_1.1.3.4c.bb&#822=
1;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">And at the end:<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&#8220;module bb.data has no at=
tribute &#8216;getVar&#8217;&#8221;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Do you have any suggestions to =
resolve it?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am trying to build the image =
using Ubuntu 17 (I know that this OS hasn&#8217;t been tested for this proc=
edure).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you in advance<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Best Regards<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;font-family:&quot;=
Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;font-family:&quot;=
Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;font-family:&quot;=
Arial&quot;,sans-serif">Alessio Pulizzotto</span></b><b><span style=3D"font=
-family:&quot;Arial&quot;,sans-serif"><o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Ari=
al&quot;,sans-serif">Automation Engineer</span><span style=3D"font-family:&=
quot;Arial&quot;,sans-serif"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:navy"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;font-family:&quot;=
Arial&quot;,sans-serif">Comau S.p.A. &#8211; Automation Systems<o:p></o:p><=
/span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Ari=
al&quot;,sans-serif">Via Rivalta 49 &#8211; 10095 Grugliasco (To) &#8211; I=
taly<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"PT-BR" style=3D"font-size:8.0pt;font-f=
amily:&quot;Arial&quot;,sans-serif">e-mail:
<a href=3D"mailto:alessio.pulizzotto@comau.com"><span style=3D"color:window=
text">alessio.pulizzotto@comau.com</span></a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_dcad044fec2b4e0ab2efbaea4043fe76MXPA2FGAWfgremcit_--
