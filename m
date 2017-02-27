Return-Path: <M.Kupke@KOSTAL.COM>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3514BE00726; Mon, 27 Feb 2017 08:09:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [193.22.205.227 listed in list.dnswl.org]
X-Greylist: delayed 304 seconds by postgrey-1.32 at yocto-www;
	Mon, 27 Feb 2017 08:09:20 PST
Received: from securemail.kostal.com (securemail.kostal.com [193.22.205.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B29AFE006C6
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 08:09:20 -0800 (PST)
Received: from DEBEMAIL001.kostal.int ([10.20.2.181]) by 
	securemail.kostal.com (8.14.7/8.14.7) with ESMTP id v1RG4EPk030353 
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL) for 
	<yocto@yoctoproject.org>; Mon, 27 Feb 2017 17:04:14 +0100
Received: from DEBEMAIL002.kostal.int (10.20.2.182) by DEBEMAIL001.kostal.int 
	(10.20.2.181) with Microsoft SMTP Server (TLS) id 15.0.1263.5; Mon, 
	27 Feb 2017 17:04:13 +0100
Received: from DEBEMAIL002.kostal.int ([fe80::e135:11a6:577e:23bb]) by 
	DEBEMAIL002.kostal.int ([fe80::e135:11a6:577e:23bb%12]) with mapi id 
	15.00.1263.000; Mon, 27 Feb 2017 17:04:13 +0100
From: "Kupke , Martin" <M.Kupke@KOSTAL.COM>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: build signature file automatically for ipk
Thread-Index: AdKRD4QQ2JkmR45lTSmBJgDhZ+U9Yw==
Date: Mon, 27 Feb 2017 16:04:13 +0000
Message-ID: <184c8064b92d4bce96aa0e1b7708ae2f@DEBEMAIL002.kostal.int>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.20.2.192]
MIME-Version: 1.0
x-msw-jemd-spam: not checked
Subject: build signature file automatically for ipk
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
X-List-Received-Date: Mon, 27 Feb 2017 16:09:24 -0000
Content-Language: de-DE
Content-Type: multipart/alternative; 
	boundary="_000_184c8064b92d4bce96aa0e1b7708ae2fDEBEMAIL002kostalint_"

--_000_184c8064b92d4bce96aa0e1b7708ae2fDEBEMAIL002kostalint_
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

In bitbake process when building complete image all packages are build, my =
local.conf is set to create IPK packages for opkg. Additionally I overloade=
d PACKAGECONF_append_pn_opkg =3D "gpg sha256 openssl". Now when using opkg =
on the target platform and downloading package list using "opkg update" I g=
et the error that .sig isn't found. Correct, I need to create a signature f=
or packages or depending on opkg.conf for even each packet (that's what I w=
ant).
How to add in build process automatic creation of signature for each file/p=
ackage?

Br,
Martin...


-----
Leopold KOSTAL GmbH & Co. KG - Sitz L=FCdenscheid, Registergericht Iserlohn=
 HRA 2854, phG Kostal Verwaltungsgesellschaft mbH, Registergericht Iserlohn=
 HRB 4061 - USt-Id-Nr./Vat No.: DE 125800885
Post- und Werksanschrift: An der Bellmerei 10, D-58513 L=FCdenscheid * Tele=
fon: +49 2351 16-0 * Telefax: +49 2351 16-2400 Bellmerei
Gesch=E4ftsf=FChrung: Dipl.-Oec. Andreas Kostal (Vorsitzender), Dipl.-Ing. =
Marwin Kinzl, Dr.-Ing. Ludger Laufenberg, Dipl.-Kfm. Ulrich Zimmermann


--_000_184c8064b92d4bce96aa0e1b7708ae2fDEBEMAIL002kostalint_
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
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Arial",sans-serif;
	color:windowtext;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
family:&quot;Arial&quot;,sans-serif">In bitbake process when building compl=
ete image all packages are build, my local.conf is set to create IPK packag=
es for opkg. Additionally I overloaded PACKAGECONF_append_pn_opkg
 =3D &#8220;gpg sha256 openssl&#8221;. Now when using opkg on the target pl=
atform and downloading package list using &#8220;opkg update&#8221; I get t=
he error that .sig isn&#8217;t found. Correct, I need to create a signature=
 for packages or depending on opkg.conf for even each packet (that&#8217;s
 what I want).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">How to add in build process automatic =
creation of signature for each file/package?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Br,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Martin&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
</div>
=0A<font size=3D"2">----<br />Leopold KOSTAL GmbH &amp; Co. KG - Sitz L=FCd=
enscheid, Registergericht Iserlohn HRA 2854, phG Kostal Verwaltungsgesellsc=
haft mbH, Registergericht Iserlohn HRB 4061 - USt-Id-Nr./Vat No.: DE 125800=
885<br />Post- und Werksanschrift: An der Bellmerei 10, D-58513 L=FCdensche=
id * Telefon: +49 2351 16-0 * Telefax: +49 2351 16-2400 Bellmerei<br />Gesc=
h=E4ftsf=FChrung: Dipl.-Oec. Andreas Kostal (Vorsitzender), Dipl.-Ing. Marw=
in Kinzl, Dr.-Ing. Ludger Laufenberg, Dipl.-Kfm. Ulrich Zimmermann</font><b=
r />=0A=0A=0A=0A=0A</body>
</html>

--_000_184c8064b92d4bce96aa0e1b7708ae2fDEBEMAIL002kostalint_--
