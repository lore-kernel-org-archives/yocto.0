Received: from dmzms99802.na.baesystems.com (dmzms99802.na.baesystems.com [149.32.232.66])
 by mx.groups.io with SMTP id smtpd.web10.1474.1601317001818256336
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Sep 2020 11:16:44 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com header.s=trusted01 header.b=KBQVMr22;
 spf=pass (domain: baesystems.com, ip: 149.32.232.66, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1601317001; x=1758997001;
  h=from:to:subject:date:mime-version;
  bh=JN2eSBCHRSOhYM4V6Oy9Ve4ROr2sdsXjZJ3ixPgeLMk=;
  b=KBQVMr22HLg3DQ3PwBbqrnoyNiT4W+TVHrixPM8/45Vfgfbc2/wOhqAY
   yWJ7raxI6bSxwZqkKoIpU/EAoINAqB4M5huw2AM8k6RIJ1j4JifVrY5An
   Aqlv4ZlLX3zaava/7Glth8ekkL6dsIeGm5rxurTD/T2fmoGf2e3p4a1qj
   Y=;
IronPort-PHdr: =?us-ascii?q?9a23=3AlX9pCxPbojvVJvPNMdsl6mtUPXoX/o7sNwtQ0KIM?=
 =?us-ascii?q?zox0I/T6rarrMEGX3/hxlliBBdydt6sbzbCI+P6wEUU7or+5+EgYd5JNUxJXwe?=
 =?us-ascii?q?43pCcHRPC/NEvgMfTxZDY7FskRHHVs/nW8LFQHUJ2mPw6arXK99yMdFQviPgRp?=
 =?us-ascii?q?OOv1BpTSj8Oq3Oyu5pHfeQpFiCe/bL9oMhm7rArdu8gVjIB/Nqs/1xzFr2dSde?=
 =?us-ascii?q?9L321oP1WTnxj95se04pFu9jlbtuwi+cBdT6j0Zrw0QrNEAjsoNWA1/9DrugLY?=
 =?us-ascii?q?TQST/HscU34ZnQRODgPY8Rz1RJbxsi/9tupgxCmXOND9QL4oVTi+6apgVRnlgz?=
 =?us-ascii?q?oFOTEk6mHaksx+grxGrhK9qRJxwI/Ub52aO/dlZKzRYdEaSHBdUspNSSBMBJ63?=
 =?us-ascii?q?YYsVD+oGOOZVt4fxqVwJrRu4HgmjGv3gyiRQinTrwKM6z/ouER/Y0wwmAtkDrm?=
 =?us-ascii?q?nfoNH7O6kPVOy5wrTDwDLYb/NKxzj99pbHchY7rfGJWrJwd9HRxlcxGAPelVif?=
 =?us-ascii?q?spbqMC2O1uUNqGib8/RvVee0i2I9tw5xpT2vy94qh4LUiY0b1krK+j9lwIYpO9?=
 =?us-ascii?q?K4Ukh7bMaqHpZeqyyXNol7T8I8T211pis3yb0LtJq0cSUF1ZgpyR7SZfOaf4WM?=
 =?us-ascii?q?4B/uVOmcLDZliH97fL+yhBW//FW9xuPzUMS/zVVErjJdn9XRqnwBzRLe58qdRv?=
 =?us-ascii?q?dg+kqs1yyD2gHS5+1cPEw4ibDXJpEuz7Iqkpcfq0fOEy3wlU7rlqGZbF8k9fKt?=
 =?us-ascii?q?6+n/Z7XmoYKTOJFshwHlN6QuhtS/AeMlMggSR2Sb+fqz1Lnk/UDhRrVKjvs2nb?=
 =?us-ascii?q?PcsJDBJskWprK1DxNI3oo57RawFS2q388CknYZN1JEeAmHj5T3NFHLO/D0F+uw?=
 =?us-ascii?q?g1OpkDtzxvDGOKPuAonVI3TejLvtZ7hw5kxGxAYuyd1S6YhYB7AALf7rX0/+rt?=
 =?us-ascii?q?3YDhs3MwyuxObnDc1w1pgCWW2RHK+WLqXSvUWN5uIoJemMf5EatyjmK/U+/PHh?=
 =?us-ascii?q?l2E2mUQdfKmywZsYdnW4Hu98L0qFZnrsh88NEX0WsQomUOzqlFqCXCZTZna1Q6?=
 =?us-ascii?q?08+jY7BZmiDYfCXYCtnKeB0D27H51Rem9GFleMEW/yd4WDWfcDdj6dItN7njwD?=
 =?us-ascii?q?T7ihRNxp6Rb7/h79wKZgBu7V4TED84Pk38Ry//fUlxw56XpzFcvXmzWcSGpomU?=
 =?us-ascii?q?sMRiQqx+ZupkdhzU+Z1qp1iOAeEsZcsaBnSAA/YNT5yOphBt3pHkr6YtqXRVDu?=
 =?us-ascii?q?aZ3mPApwBJpl2MMDfUt7XdCliAvO0jGCCbYYjK2QGJEx6eTX2H2ndJU18GrPyK?=
 =?us-ascii?q?R01wpuecBIL2Dz3qM=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2BWBwArJ3Jf/0LBJQpggQmBUYEhgXeBP?=
 =?us-ascii?q?rIaCwEBAQEBAQEBAQgBLwQBAYZ/JjkFDQIQAQEGAQEBAQEGBAGGSQuCNyKDTV4?=
 =?us-ascii?q?BDDc9JgEEG4MfgX62VIE0ij0JAYEvjwo+hF+KEiIEmjWdDAcDgmeaTiuhE5MJo?=
 =?us-ascii?q?AwCBAIEBQIVgWyBeXCDOk8XAg2OVo4QgSsCBgoBAQMJjWSBEQEB?=
X-IPAS-Result: =?us-ascii?q?A2BWBwArJ3Jf/0LBJQpggQmBUYEhgXeBPrIaCwEBAQEBAQE?=
 =?us-ascii?q?BAQgBLwQBAYZ/JjkFDQIQAQEGAQEBAQEGBAGGSQuCNyKDTV4BDDc9JgEEG4Mfg?=
 =?us-ascii?q?X62VIE0ij0JAYEvjwo+hF+KEiIEmjWdDAcDgmeaTiuhE5MJoAwCBAIEBQIVgWy?=
 =?us-ascii?q?BeXCDOk8XAg2OVo4QgSsCBgoBAQMJjWSBEQEB?=
X-IronPort-AV: E=Sophos;i="5.77,313,1596499200"; 
   d="scan'208,217";a="449258634"
X-IronPort-AV: E=Sophos;i="5.77,313,1596499200"; 
   d="scan'208,217";a="223093611"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto #linux #systemd Having issues building command line utilities: ntpq, timedatectl, and ntpstat into kernel image
Thread-Topic: #yocto #linux #systemd Having issues building command line
 utilities: ntpq, timedatectl, and ntpstat into kernel image
Thread-Index: AdaVw3Ud/GE3osMmSPSA4Q+6JVX7YA==
Date: Mon, 28 Sep 2020 18:16:38 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.87]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.16390554C73CDE44.27822@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_b68557c14a3349fe970ab31de71a6099baesystemscom_"

--_000_b68557c14a3349fe970ab31de71a6099baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


I am trying to build an image with the following command line utilities bui=
lt in: ntpq, timedatectl, and ntpstat.

Note : ntp is builtinto my image and working correctly.

I performed a simple test using "IMAGE_INSTALL_append =3D " ntpq", get no e=
rrors but the command is NOT present upon booting the image (same for the o=
ther 2).

I am working with Rocko 2.4.1, ntp 4.2.8p10.

Can you tell me (1) if they are supported, (2) how to pull them into my ima=
ge so I might run from kernel ?

Thanks,
Steve

--_000_b68557c14a3349fe970ab31de71a6099baesystemscom_
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
span.EmailStyle17
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
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying to build an image with the following com=
mand line utilities built in: ntpq, timedatectl, and ntpstat.<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Note : ntp is builtinto my image and working correct=
ly.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I performed a simple test using &#8220;IMAGE_INSTALL=
_append =3D &#8220; ntpq&#8221;, get no errors but the command is NOT prese=
nt upon booting the image (same for the other 2).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am working with Rocko 2.4.1, ntp 4.2.8p10.<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can you tell me (1) if they are supported, (2) how t=
o pull them into my image so I might run from kernel ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_b68557c14a3349fe970ab31de71a6099baesystemscom_--
