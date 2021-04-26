Received: from mx0.itk-engineering.de (mx0.itk-engineering.de [212.121.145.30])
 by mx.groups.io with SMTP id smtpd.web08.6167.1619440881889221682
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Apr 2021 05:41:22 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: itk-engineering.de, ip: 212.121.145.30, mailfrom: martin.hollingsworth@itk-engineering.de)
From: "Martin Hollingsworth" <martin.hollingsworth@itk-engineering.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Switching a recipe between git head and git tag (for a release)
Thread-Topic: Switching a recipe between git head and git tag (for a release)
Thread-Index: Adc6mU0jp2GxFawMRMOiPpbMwjMfkQ==
Date: Mon, 26 Apr 2021 12:41:18 +0000
Message-ID: <f0ca1454c6894538bf2393bb6b232ff4@itk-engineering.de>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-c2processedorg: bf590b95-2eae-4fb0-b3c4-e2662b925c35
MIME-Version: 1.0
x-msw-jemd-newsletter: false
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_f0ca1454c6894538bf2393bb6b232ff4itkengineeringde_"

--_000_f0ca1454c6894538bf2393bb6b232ff4itkengineeringde_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello community,

I am looking for a best practice / a simple solution for switching the SRCR=
EV in a bitbake recipe between git master HEAD (default, used in nightly bu=
ilds) and a tagged release version (needed for a reproducible release confi=
g).



How can I minimize the amount of changes necessary to the recipe when switc=
hing to a release version?



Thanks and regards,

Martin


--_000_f0ca1454c6894538bf2393bb6b232ff4itkengineeringde_
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
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
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
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello community,<o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">I am looking for a best practic=
e / a simple solution for switching the SRCREV in a bitbake recipe between =
git master HEAD (default, used in nightly builds) and a tagged release vers=
ion (needed for a reproducible release
 config).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">How can I minimize the amount o=
f changes necessary to the recipe when switching to a release version?<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Thanks and regards,<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Martin<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_f0ca1454c6894538bf2393bb6b232ff4itkengineeringde_--
