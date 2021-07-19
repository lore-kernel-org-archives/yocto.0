Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web08.28686.1626704542664268843
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Jul 2021 07:22:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=jvQJV36s;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1626704542; x=1784384542;
  h=from:to:subject:date:mime-version;
  bh=RzvvjYg+l5F2OLT6Lgv64vr9SFwgTqC0yRd+AhyhaPw=;
  b=jvQJV36sl8Txx4/o/WTUsbsiPOCkP5hQz74ZoHwbPKUomVNC5UlnSMos
   BWDSO8eF1vakTSMTtrhs0o57yrnC3gck+ual8Lp8d0Do328UckFXxwo8B
   95IozYVHqBKm6XUjKkM0xI8T6Y8xS9r5PVDciaVxKV+RpV/e/f04Icscg
   k=;
IronPort-SDR: VRs1v5Kho5prVImrJM7Jyvdb/T9vrW3XVZkTQeMtMC4XuteStTHKihmmLVHqG+27qGAq9pVqVJ
 dtvXRSx0ggug==
IronPort-PHdr: =?us-ascii?q?A9a23=3AfOGcjxfdAwbCBXuzaoDDFS/6lGM+0NnLVj580?=
 =?us-ascii?q?XLHo4xHfqnrxZn+JkuXvawr0AWRG96DoK0ew6qO6ua8AD1Guc7A+Fk5M7V0H?=
 =?us-ascii?q?ycfjssXmwFySOWkMmbcaMDQUiohAc5ZX0Vk9XzoeWJcGcL5ekGA6ibqtW1aF?=
 =?us-ascii?q?RrwLxd6KfroEYDOkcu3y/qy+5rOaAlUmTaxe7x/IAuqoQnLuMQanYRuJ6Qvx?=
 =?us-ascii?q?hDUpndEZ/layXlnKF6Omxvw/Nu88IJm/y9Np/8v6slMXLngca8lV7JYFjMmM?=
 =?us-ascii?q?2405M3vqxbOSBaE62UfXGsLjBdGGhDJ4x7mUJj/tCv6rfd91zKBPcLqV7A0W?=
 =?us-ascii?q?C+t4LltRRT1lSoILT858GXQisxtkKJWpQ+qqhJjz4LIZoyeKfxzdb7fc9wHX?=
 =?us-ascii?q?2pMRsZfWTJcDIOgYYUBDOsBMvpXoITmvVQCsRm+CBOwCO/z1DNFgGL9060g0?=
 =?us-ascii?q?+QmFAHLxAIsEdUJsHTSt9X6KrkdUfutwKLV0DvDc+1Z2Snj54jObxssv+yHU?=
 =?us-ascii?q?bZ+fsTMzEUjGR7Og1KLqYz5ITyVyPoCs26B4+plUuKvjXUnpB9vrTi03cojk?=
 =?us-ascii?q?ZPGiZwOylHE7iV53Jg6JdijSEJhfdGkF55QujicOoBrTcwsX3tmtzwmyr0ap?=
 =?us-ascii?q?5G7Zi4KxYwpyRPRd/GKcoqF7xP9WOqMPzp1h3Jodbawihu97ESuxO3xWMap3?=
 =?us-ascii?q?FtOrCdIktbBu3EQ2xHN7sWKSfhw81q81TiA0Q3Y9+JKIVgsmKbGN5It2LA9m?=
 =?us-ascii?q?5gJvUjeGiL7ll/6ga6Xe0k85+Sk9/7rb7rpq5OGOIJ4kBzyP6Qol8eiG+o3K?=
 =?us-ascii?q?BIOUHKe+emk0b3j+lD2T6tSg/0tl6nZrIjaJcMGpq6lGwNV0pgs6xK4Dzq+1?=
 =?us-ascii?q?tQYnX8HI0hAeBKcjIXkO03CLOzlAfulhVSjii1nyOvcMbL/GZXMLmPDkKv/c?=
 =?us-ascii?q?rZ48E5Q0hY8zdda555MC7EBJuz8WlPpudDFEhM1KQK5zuT9BNlg0o4TV3iDD?=
 =?us-ascii?q?66YPa/KtF+H/OMvI+2CZI8Pvzb9LuAo5+XyjXAnh18SY6+p0YESaHC/GPRmO?=
 =?us-ascii?q?FuWbmT3gtoaCmgFpBQxTPfqiV2ZTT5ceXOyX7km6j4nD4KmCJ/PRpqxj7yZw?=
 =?us-ascii?q?Ce7AppWa3hGC1CLDXjoa4KEVuwIaCKTOc9hjicEWaKhSo8myR6uqAj6y6J9L?=
 =?us-ascii?q?urT+C0Xq47s1MRv6+3UjxEy+m88M8PImXCKRH1ztmcJXCMtmrF4qlB60k2E0?=
 =?us-ascii?q?6Vzn7pfD9MZr6dYVQwmMrbYzvdmEJbjXQndec+TT1SrScngBis+GIEf2dgLN?=
 =?us-ascii?q?gxYHNO5gx3Ym2KRH7ILmrrDL9R0z5mdlTClPNpw1XvAkqwmiUIrT9BnP2Srn?=
 =?us-ascii?q?b9k6wXWHMjClEDPxPXiTrgVwCOYrDTL9mGJpkwNCGZN?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AHz36SazgOx2vBsOIz1IEKrPwF71zdoMgy1?=
 =?us-ascii?q?knxilNoH1uA66lfqWV98jzuiWYtN9vYgBYpTntAsW9qArnhPlICNAqTNGftW?=
 =?us-ascii?q?rdyQiVxeNZjLcKqgeIc0fDH4hmupuIGJIfNDSfNzZHZbKQ2njdLz5Tq+P3lZ?=
 =?us-ascii?q?yVuQ=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2D/BACjifVg/0LBJQpagRKCc4F/gU2?=
 =?us-ascii?q?zeQsBAQEBAQEBAQEIAUEEAQGHVyZLBgEBARIBAQYCAQEBBgQBgQ2FaQyCOCK?=
 =?us-ascii?q?EH14BDAlrJgEEG4JqgX6pXBoCZYRohRQJAYMViAyGCEOPN6Rwn0oHA4MkkWy?=
 =?us-ascii?q?MOysSlWYDkHWWCKALhH8CBAIEBQIWgXOBfHCECRcCnHyBQwmKdoERAQE?=
X-IPAS-Result: =?us-ascii?q?A2D/BACjifVg/0LBJQpagRKCc4F/gU2zeQsBAQEBAQEBA?=
 =?us-ascii?q?QEIAUEEAQGHVyZLBgEBARIBAQYCAQEBBgQBgQ2FaQyCOCKEH14BDAlrJgEEG?=
 =?us-ascii?q?4JqgX6pXBoCZYRohRQJAYMViAyGCEOPN6Rwn0oHA4MkkWyMOysSlWYDkHWWC?=
 =?us-ascii?q?KALhH8CBAIEBQIWgXOBfHCECRcCnHyBQwmKdoERAQE?=
X-IronPort-AV: E=Sophos;i="5.84,252,1620691200"; 
   d="scan'208,217";a="393872031"
IronPort-SDR: T1Asc3QhgUUx94Bb/eY0sWD/CKL2IMh305MWYz3I8b5VEbrqtZpgBZkPEoohYxYbaaLdLop+fP
 58qGbxHxBNQl9Ffktz68Fup/0TObA+xyO4lr1LFD+BUqR+Qhoomr320e+EbVdlnYQJD5xg1VPL
 sPIJiXjZtW0eJnJ5H8eUQAqXX25pxFmXMw1xFlQqxju3391t4OUQ1+/is0mjnN0/qmoQgwtNGB
 GgGnEMLvRuWmWocQxixNrC3E98SFaW3Xht7A1z3ZfI+u4ELQhPSdkHTLoV27res+wcXeWDkGvH
 XeE=
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto
Thread-Topic: #yocto
Thread-Index: Add8o3pqHl2GNsJGSm+CiKS1UnKvfw==
Date: Mon, 19 Jul 2021 13:41:46 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.1693372A3FC7F77B.32641@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3226b20914d24cb3a206be2e76becfdebaesystemscom_"

--_000_3226b20914d24cb3a206be2e76becfdebaesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


What flag do I set in order to keep the source code for a recipe being buil=
t within the build tree after compilation  ?

Thanks,
Steve

--_000_3226b20914d24cb3a206be2e76becfdebaesystemscom_
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
<p class=3D"MsoNormal">What flag do I set in order to keep the source code =
for a recipe being built within the build tree after compilation &nbsp;?<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_3226b20914d24cb3a206be2e76becfdebaesystemscom_--
