Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35848C4332F
	for <webhook@archiver.kernel.org>; Fri, 25 Nov 2022 23:21:31 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web10.60010.1669418490445603005
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Nov 2022 15:21:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=fPng37X4;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1669418490; x=1827098490;
  h=from:to:subject:date:mime-version;
  bh=/CIFSsYiyIdR4Ue2PdJHbjwQKdUsWqTdTFlCtZqPo+I=;
  b=fPng37X4kEhHg+y76iKyTXkCK3jLwmN9D5dWF/SIaG2MteXmSTN/I3q9
   m5R5eKql80j9khqHF3kHOtTf2rBBkI92XPJjjTr0Mw/k6CUsQ4pSQnfB+
   jR5+fH7eXrnKdZAJWzpwXUS2lWfYaLwtemotP2m5ILS4QqjgtL+iCjoYF
   g=;
X-IPAS-Result: =?us-ascii?q?A2B3BwDYTIFj/0LBJQpaHgEBCxIMQAmBSIEoggUCgW+Sb?=
 =?us-ascii?q?6IUDwEBAQEBAQEBAQgBRAQBAYR7hRQmOQUNAQIEAQEBAQMCAwEBAQEBAQMBA?=
 =?us-ascii?q?QYBAQEBAQEGBAGBG4UvOgyCNSKEMF4BDAlrJgEEG4J2ghaBDK8bgTQaAmWEc?=
 =?us-ascii?q?JxNgUGBZYcYg0sVhj9Dj38EmFsHNgNEHUADCwdmCkMbWA4JHxwlDQUGEgMgb?=
 =?us-ascii?q?AVBDygvZCscGweBDCooFQMEBAMCBhMDIgINKTEUBCkTDSsnbwkCAyJqAwMEK?=
 =?us-ascii?q?CwDCSECARwHJyQ8B1Y6BQMCDyA4BgMJAwIiVYEjJgUDCxUlCAVLBAg5BQZTE?=
 =?us-ascii?q?gIKEQMSDyxFDkg+ORYGJ3MODhMDXYFoBH2BM2ChD6BtogcHA4NooEMuFpcYA?=
 =?us-ascii?q?5F9lzQgpy8CBAIEBQIWgXqBfXCDOFEXApx/gTACBwsBAQMJiU6BFAEB?=
IronPort-PHdr: A9a23:Je089Re0QdBBv/N999xxPOjulGM+8tnLVj580XLHo4xHfqnrxZn+J
 kuXvawr0AWVG9uFoKoYw6qO6ua8AzdGuc7A+Fk5M7V0HycfjssXmwFySOWkMmbcaMDQUiohA
 c5ZX0Vk9XzoeWJcGcL5ekGA6ibqtW1aFRrwLxd6KfroEYDOkcu3y/qy+5rOaAlUmTaxe7x/I
 Au5oAnLt8QbgIRuJro+xxDUpndEZ/layXlnKF6NkRvw/Nu88IJm/y9Np/8v6slMXLngca8lV
 7JYFjMmM2405M3vqxbOSBaE62UfXGsLjBdGGhDJ4x7mUJj/tCv6rfd91zKBPcLqV7A0WC+t4
 LltRRT1lSoILT858GXQisxtkKJWpQ+qqhJjz4LIZoyeKfxzdb7fc9wHX2pMRsZfWTJcDIOgY
 YUBDOsBMvpXoITmvVQCsRm+CBOwCO/z1DNFgGL9060g0+QmFAHLxAIsEdUJsHTSt9X6KrkdU
 futwKLV0DvDc+1Z2Snj54jObxssv+yHUbZ+fsTMzEUjGR7Og1KLqYz5ITyVyPoCs26B4+plU
 uKvjXUnpB9vrTi03cojkZPGiZwOylHE7iV53Jg6JdijSEJhfdGkF55QujicOoBrTcwsX3tmt
 zwmyr0ap5G7Zi4KxYwpyRPRd/GKcoqF7xP9WOqMPzp1h3Jodbawihu97ESuxO3xWMap3FtOr
 CdIktbBu3EQ2xHN7sWKSfhw81q81TiA0Q3Y9+JKIVgsmKbGN5It2LA9m5gJvUjeGiL7ll/6g
 a6Xe0k85+Sk9/7rb7Xmq5OGKoN5iwPzPr4zlsGxAuk1NBUFUXKB9uSmzrLj+FX0QLBNjvIrj
 KbUqIvaJcEHpq6hBA9Vz5oj5w6/Dzi41NQYmmEKLFRFeBKBlYfpPkrOLfP4APujn1igjS1nx
 /bcMbH7GZrCNGbMkKzhfLZm905T1g8zzctF651IDbEBJer/Wk73tNPGEh80KxG4z/r9BNhz1
 I4SQ3+DD6uXPa/IsFKF5/ojI+yWa48UvDb9JeIl5/nrjXIhgl8dYbem3YUJZ3C+BPhmJkKZY
 Xz3gtgfD2gKpREzQ/fwh1KcSj5SZ22yX74i6TE+E4KqF5vMRoeogLCZ2ie0BYVZZnpaBVCUD
 Xfoa4KEVu8RZC6KOM9ujiQEVaS9S48mzRyvtAj6xKZ7LurT4SAYsZPj1MNp5+3Ijx0z9Tt0A
 NiB02GKV2F0hGQIRz0o069jvUxx0FCD0bJ3g68QKdsGreJOWRs9HZrd1PBhTcH1UR7GZs2OS
 lutXpOhGz57BoYgxNQSZG55Gs6+lVbS2CG2BKcPkL6GD4By9bjTiSvfPcF4njzj0686glQ9B
 oN0KWC4i6g33ECTOrWI2Q3NjLqna6kamivK8nyOwHGmtkhVSx9rTajARjYUYU6A/oex3V/LU
 7L7UedvCQBG08PXcsN3
IronPort-Data: A9a23:bfs+K65Ca7tuSLsZueMNlwxRtKzFchMFZxGqfqrLsTDasY5as4F+v
 mdLXD+CPPiPZWajKo0kPo3k8EkDsJGGzII2HAM5ryw0Zn8b8sCt6fZ1jqvT04F+CuWZESqLO
 u1HMoGowPgcFyOa/lH0WlTYhSEUOZugH9IQM8aZfHEvLeNYYH1500g6wrRk2tUAbeWRWmthh
 /uj+6UzB3f4g1aYAkpMg05UgEoy1BhakGpwUm0WPZinjneH/5UmJM53yZWKEpfNatI88thW5
 gr05OrREmvxp3/BAz4++1rxWhVirrX6ZWBihpfKMkSvqkAqm8A87ko0HN1MZhwIhSeSpY5S7
 utDsbiraBsCOoSZzYzxUzEAe81/FatG/rbCOiji6ZTKiUvPNXHlzu5/F107OJZe8eFyaY1M3
 aVAbmtSKEnS3KTontpXScE17ignBNL3MZ0SvDdlyjfCAPs9aZrKTr7b/sNV2Sx2jcdLdRrbT
 5FJN2Y1MkibC/FJEk4sAcsfl6CkuljQeCVD9nmxjI0J2XeGmWSd15CoarI5YOeiVMJegkGwo
 mPd43+/ExYRKNuH0z2H/3mwwOjVkkvGtJk6TeX+raEs2QzIgDJNYPELaWaGTTCCohbWc7pix
 4Y8o0LCcYBaGJSXc+TA
IronPort-HdrOrdr: A9a23:GMn9pKy+fQHWO54J5UuHKrPw+b1zdoMgy1knxilNoERuA6qlfr
 OV7Y0mPH7P+UsssR4b6LS90cW7IE80lqQFnbX5X43SOzUO0VHARO4N0WKI+UyCJ8SKzJ856U
 4WSdkdNDSfNzhHpPe/zBizEt4mztXCy6ysjfe29RxQpAdRB52IpD0JcjpzWncGPzWvEPECfq
 Z1EaF8ygZIV05nFPiGOg==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.96,194,1665446400"; 
   d="scan'208,217";a="38642643"
X-IronPort-AV: E=Sophos;i="5.96,194,1665446400"; 
   d="scan'208,217";a="357500705"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Thud/Zeus support of Linux "memtester"
Thread-Topic: Thud/Zeus support of Linux "memtester"
Thread-Index: AdkBJD6OThGCTe0YSHyG7xCs4O6mYw==
Date: Fri, 25 Nov 2022 23:20:28 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.55.167.138]
Content-Type: multipart/alternative;
	boundary="_000_ddd619f75d1045b886790e0920b05a4abaesystemscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Nov 2022 23:21:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58636
Message-Id: <20221125232131.35848C4332F@smtp.lore.kernel.org>

--_000_ddd619f75d1045b886790e0920b05a4abaesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Does Yocto thud/zeus support the linux "memtester", to find memory subsyste=
m  faults ?

Whay packages would need to be included to support this utility ?

Thanks,
Steve

--_000_ddd619f75d1045b886790e0920b05a4abaesystemscom_
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
<p class=3D"MsoNormal">Does Yocto thud/zeus support the linux &#8220;memtes=
ter&#8221;, to find memory subsystem&nbsp; faults ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Whay packages would need to be included to support t=
his utility ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_ddd619f75d1045b886790e0920b05a4abaesystemscom_--

