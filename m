Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web10.10193.1618923586555934565
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Apr 2021 05:59:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=FG3heF+R;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1618923586; x=1776603586;
  h=from:to:subject:date:mime-version;
  bh=zCbeNXU++g/VEk2jTdYk1ikLHGE87z/5iXifHjYI61Q=;
  b=FG3heF+RsOq9VN8v/d4J542qL06PF16U8uDOAFmwlL7D52CINyTz7pSe
   4/s8m/Iu7EnHdh//DTpDlHoY1q381EF5m6Qo/HDHBnBtub/wx7wAfi0Km
   TrT9ZsHeHUghmUD6jDm+NV7+9TSTsGeGM9ryuZ7kMv78NFSHy3sreh37f
   w=;
IronPort-SDR: 5i/845WoScEKo/junD6giykd8n6WW2BeqplzzS8cCPstfdjDiEzR7SosEpKUpQnL7WOWOGFjFD
 Bry777G5xEeA==
IronPort-PHdr: =?us-ascii?q?A9a23=3AtH6Y1xZC/mKVcyghQ0cQzmv/LTGg0IqcDmYuw?=
 =?us-ascii?q?qpisKpHd+GZx7+nAna3zctkgFKBZ4jH8fUM07OQ7/mxHzZYvN3a7zgrS99lb?=
 =?us-ascii?q?1c9k8IYnggtUoauKHbQC7rUVRE8B9lIT1R//nu2YgB/Ecf6YEDO8DXptWZBU?=
 =?us-ascii?q?hrwOhBoKevrB4Xck9q41/yo+53Ufg5EmCexbal9IRmrqQjdrNcajZdiJ6o+x?=
 =?us-ascii?q?BbEoGZDdvhLy29vOV+dhQv36N2q/J5k/SRQuvYh+NBFXK7nYak2TqFWASo/P?=
 =?us-ascii?q?Wwt68LlqRfMTQ2U5nsBSWoWiQZHAxLE7B7hQJj8tDbxu/dn1ymbOc32Sq00W?=
 =?us-ascii?q?Sin4qx2RhLklDsLOjgk+2zRl8d+jr9UoAi5qhJ/3YDafZ2VOvR9cKPcYdwVS?=
 =?us-ascii?q?nFMUdxNWyxDGI6wc5cDA/QHMO1Fr4f9vVwOrR6mCAWiA+3vzTlIhmTo0qIky?=
 =?us-ascii?q?OQtCRzN0hE8H90QrnTbstP1P7oMXOuoyKXHwyjNY/ZY1Tzg74XIaQwhru+SX?=
 =?us-ascii?q?b1ud8rd00wvFwTDjlWLt4PqISiV2/8WvGeB8eVgTuKui3U7qw5vpziv3d0gh?=
 =?us-ascii?q?ZXOhoIQ013J8zhyz4kpK9OiUkF7fcKkH4VKtyGcL4Z4TM0vTn1ptSs4y7AKp?=
 =?us-ascii?q?4O3cTYJxZknwxPSZPOKf5WG7B/jW+idPDN1iXBldb+whhu+7Fatx+n/W8S3z?=
 =?us-ascii?q?VtGsyVLn9/RvX4Ozxze8tWLRudn8kqv2zuDzR3f5+VKLEwulKfWK4YtzqMsm?=
 =?us-ascii?q?pYJvknOETX6lUrsgKOLdkgp/PWj5f79bbX8vJCcMpd5igT5MqszhMOyGf84M?=
 =?us-ascii?q?g0SX2iD/uS8yaHj8VX5QLpUiv02lbHUsI7AKsQboK65BhRV34In5hu7Ezuqz?=
 =?us-ascii?q?c4UnX8dI15fYx2IlZbmO0rOIfDjEfewnVGskCxxy//aOb3hB43BLnnFkLj/Y?=
 =?us-ascii?q?bZw81NQxBYpwd1R5Z9YEKwNLfb9V0PrtdHVDgc1MwmuzObmDNV92JkeWWWKA?=
 =?us-ascii?q?qKBK6PSrUGH5vwxLOmKfoMVvTH9K/4+5/Hwk3A5gkQQcrKz0pQJc3C5Hu9mI?=
 =?us-ascii?q?1mHbnrpmdcNC3sFvg07TODykl2NTSZTZ2quX6I7/jw6CIWmApvfRoCqm7GB2?=
 =?us-ascii?q?Ca7HoZKZmBdEFyNEXDoeJmYW/cLcCKSOMhhkj4aWre9V48tzxautBX1y+kvE?=
 =?us-ascii?q?u2BsDwfvo7k/Nx0/PHI0wA1/iBzF96a0WyGUydzhGxCD2sn26tjpmR5y0yfy?=
 =?us-ascii?q?u5phPdEEsRJ4PFEWRt8MoTTmb9UEdf3D0jkedGSRVu9Bp2dHTwvQ9R56JdOX?=
 =?us-ascii?q?n08UZ32lQzOwSesRboSkaeGCYcc+KvRxGnqO8t40DDN06x33ApueddGKWDz3?=
 =?us-ascii?q?v03zAPUHYOcyy2k?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AUwKcbapbVhwW2HicEvg5JakaV5vHL9V00z?=
 =?us-ascii?q?AX/kB9WHVpW+STncy2gbA/3Rj7lD4eVBgb6Ki9EYOHRm7R8oMwxIEXM6urUg?=
 =?us-ascii?q?WOghrSEKhJ64z+zzr8XxDv7+I179YRT4FSAMD9ZGIK6/rSzxK/F78bsbq62Y?=
 =?us-ascii?q?Cyg+DmyWxxCTtGUMhbhDtRLia+PglISBJdBZw/faDslfZvgza7Y3wYYoCaKx?=
 =?us-ascii?q?A+LpH+jubGnp7nfhIKbiRPgGfu7Q+A07LmDwOemi4XTjIn+8ZRzUH+jwf76q?=
 =?us-ascii?q?+/2svLryP06m7J45xa3Pvnx9dTbfb87fQ9FzT2hg6kILlmQr2J1QpFxN2H1V?=
 =?us-ascii?q?BCqqivnz4Qe+hj4XLYeW+45SDg3gHxuQxF11bSjX+Ch3zbp9flABoEYvAvua?=
 =?us-ascii?q?tpNj/ir2spppVVzb9C1WPxjessMTrw2ADGo+Xuez4vvEyuunYmmfMUlBVkIP?=
 =?us-ascii?q?YjQY4Ul6A50W9vVLc4dRiW1KkXVNNDK+zx37JsXWqnUljlnk9JqebBYl0/Gw?=
 =?us-ascii?q?7DW1MFt9CezlFt7QxE5kYc3YgFkn8L6ZI6TPB/lpr5G6lsjfVQQtQNbaR7bd?=
 =?us-ascii?q?1xPvefGyjKWhLDMGWbPFThGuUGIhv22u/K3Ik=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2DlAwBzz35g/0HBJQpagQkJgUmBI4F?=
 =?us-ascii?q?/gUyxG4F8CwEBAQEBAQEBAQgBNAQBAYZHJjUIDgIDAQEMAQEGAQEBAQEGBAG?=
 =?us-ascii?q?BA4VRDII4IoQeXgEMCWsmAQQbgmqBfqoFgTQaAmWEWIUbCQGBMIFlhRyCXoY?=
 =?us-ascii?q?DQY8tBIUgnVieZQcDgwydBB4PlEsDkDSVHqM+AgQCBAUCFoFWAYIQcIM6Txc?=
 =?us-ascii?q?CnHqBKwIGCgEBAwmLf4EQAQE?=
X-IPAS-Result: =?us-ascii?q?A2DlAwBzz35g/0HBJQpagQkJgUmBI4F/gUyxG4F8CwEBA?=
 =?us-ascii?q?QEBAQEBAQgBNAQBAYZHJjUIDgIDAQEMAQEGAQEBAQEGBAGBA4VRDII4IoQeX?=
 =?us-ascii?q?gEMCWsmAQQbgmqBfqoFgTQaAmWEWIUbCQGBMIFlhRyCXoYDQY8tBIUgnVieZ?=
 =?us-ascii?q?QcDgwydBB4PlEsDkDSVHqM+AgQCBAUCFoFWAYIQcIM6TxcCnHqBKwIGCgEBA?=
 =?us-ascii?q?wmLf4EQAQE?=
X-IronPort-AV: E=Sophos;i="5.82,236,1613433600"; 
   d="scan'208,217";a="367321128"
IronPort-SDR: chvOit2FIn2KCldgofWqatRBZOMejVPwJ37erB3hFyPO+I0ZSy03rksfle7tyZNMuZNigr65rO
 oCR4FQwW/6hQ==
X-IronPort-AV: E=Sophos;i="5.82,236,1613433600"; 
   d="scan'208,217";a="2861952"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto llvm support
Thread-Topic: #yocto llvm support
Thread-Index: Adc15CeJBNXiVQrnS+CDBQ6ketFtuQ==
Date: Tue, 20 Apr 2021 12:59:44 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.100.33
dlp-reaction: no-action
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.1677926D36628F94.782@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_f4bdc04263474eb99fd144c0dc4b4f47baesystemscom_"

--_000_f4bdc04263474eb99fd144c0dc4b4f47baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Under ../poky/meta/recipes-devtools the is "llvm"...

Devtool search <component>
Devtool sdk-install <component>

Will add this component to my EXT SDK...

Is this a fully functional llvm drop ?,
(i.e. is it compatible with meta-clang?, and can I use them together to bui=
ld 3rd party extensions for my platform ?)

Is it better to add supported components this way rather than building them=
 in directly to EXT SDK ?

Thanks,
Steve

--_000_f4bdc04263474eb99fd144c0dc4b4f47baesystemscom_
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
<p class=3D"MsoNormal">Under ../poky/meta/recipes-devtools the is &#8220;ll=
vm&#8221;&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Devtool search &lt;component&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">Devtool sdk-install &lt;component&gt;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Will add this component to my EXT SDK&#8230;<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is this a fully functional llvm drop ?, <o:p></o:p><=
/p>
<p class=3D"MsoNormal">(i.e. is it compatible with meta-clang?, and can I u=
se them together to build 3<sup>rd</sup> party extensions for my platform ?=
)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is it better to add supported components this way ra=
ther than building them in directly to EXT SDK ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_f4bdc04263474eb99fd144c0dc4b4f47baesystemscom_--
