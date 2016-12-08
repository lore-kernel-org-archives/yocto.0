Return-Path: <c.andersen@kostal.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56447E00828; Thu,  8 Dec 2016 10:10:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [193.22.205.227 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0002]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 345 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 Dec 2016 10:10:18 PST
Received: from securemail.kostal.com (securemail.kostal.com [193.22.205.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5ED8E007B3
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2016 10:10:18 -0800 (PST)
Received: from DEBEMAIL002.kostal.int ([10.20.2.182]) by 
	securemail.kostal.com (8.14.7/8.14.7) with ESMTP id uB8I4NLs019989 
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL) for 
	<yocto@yoctoproject.org>; Thu, 8 Dec 2016 19:04:23 +0100
Received: from DEBEMAIL002.kostal.int (10.20.2.182) by DEBEMAIL002.kostal.int 
	(10.20.2.182) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Thu, 8 Dec 2016 19:04:22 +0100
Received: from DEBEMAIL002.kostal.int ([fe80::e135:11a6:577e:23bb]) by 
	DEBEMAIL002.kostal.int ([fe80::e135:11a6:577e:23bb%12]) with mapi id 
	15.00.1210.000; Thu, 8 Dec 2016 19:04:22 +0100
From: "Andersen, Christian" <c.andersen@kostal.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: vmdk and IMAGE_ROOTFS_EXTRA_SPACE?
Thread-Index: AdJRfWwzHPICgiBRRJauGzo4KGPjHw==
Date: Thu, 8 Dec 2016 18:04:22 +0000
Message-ID: <13ff734520a74049b9eb5dfcb40e0c26@DEBEMAIL002.kostal.int>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.20.2.192]
MIME-Version: 1.0
x-msw-jemd-spam: not checked
Subject: vmdk and IMAGE_ROOTFS_EXTRA_SPACE?
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
X-List-Received-Date: Thu, 08 Dec 2016 18:10:21 -0000
Content-Language: de-DE
Content-Type: multipart/alternative; 
	boundary="_000_13ff734520a74049b9eb5dfcb40e0c26DEBEMAIL002kostalint_"

--_000_13ff734520a74049b9eb5dfcb40e0c26DEBEMAIL002kostalint_
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

is there a way to add some extra space to the rootfs in a vmdk image? It lo=
oks like the option IMAGE_ROOTFS_EXTRA_SPACE is only used by image.bbclass,=
 but not by image-vm.bbclass.

Kind regards
Christian Andersen


KOSTAL Industrie Elektrik GmbH - Sitz L=FCdenscheid, Registergericht Iserlo=
hn HRB 3924 - USt-Id-Nr./Vat No.: DE 813742170
Postanschrift: An der Bellmerei 10, D-58513 L=FCdenscheid * Telefon: +49  2=
351 16-0 * Telefax: +49  2351 16-2400
Werksanschrift: Lange Eck 11, D-58099 Hagen * Tel. +49 2331 8040-601 * Fax =
+49 2331 8040-602
Gesch=E4ftsf=FChrung: Axel Zimmermann, Dipl.-Ing. Marwin Kinzl, Dipl.-Oec. =
Andreas Kostal


--_000_13ff734520a74049b9eb5dfcb40e0c26DEBEMAIL002kostalint_
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<META http-equiv=3D"Content-Type" content=3D"text/html; charset=3DISO-8859-=
1">
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
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Arial",sans-serif;
	color:windowtext;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">is there a way to add some extra space=
 to the rootfs in a vmdk image? It looks like the option IMAGE_ROOTFS_EXTRA=
_SPACE is only used by image.bbclass, but not by
 image-vm.bbclass.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Kind regards<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Christian Andersen</span><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif"><o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
=0A<table>=0A<tbody><tr valign=3D"bottom">=0A<td valign=3D"bottom">=0A<img =
border=3D"0" src=3D"http://www.kostal-solar-electric.com/~/media/Industrie%=
20Elektrik/Header_Logos%20und%20Bilder/blue_Quadrat_Intelligent.ashx" />=0A=
</td>=0A<td width=3D"5"></td>=0A<td valign=3D"bottom" style=3D"font-size: 8=
pt;">=0AKOSTAL Industrie Elektrik GmbH - Sitz L=FCdenscheid, Registergerich=
t Iserlohn HRB 3924 - USt-Id-Nr./Vat No.: DE 813742170=0A<br />=0APostansch=
rift: An der Bellmerei 10, D-58513 L=FCdenscheid * Telefon: +49  2351 16-0 =
* Telefax: +49  2351 16-2400=0A<br />=0AWerksanschrift: Lange Eck 11, D-580=
99 Hagen * Tel. +49 2331 8040-800 * Fax +49 2331 8040-602=0A<br />=0AGesch=
=E4ftsf=FChrung: Axel Zimmermann, Dipl.-Ing. Marwin Kinzl, Dipl.-Oec. Andre=
as Kostal=0A</td>=0A</tr>=0A</tbody></table>=0A=0A=0A=0A</body>
</html>

--_000_13ff734520a74049b9eb5dfcb40e0c26DEBEMAIL002kostalint_--
