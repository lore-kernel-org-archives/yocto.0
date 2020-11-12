Received: from dmzms99802.na.baesystems.com (dmzms99802.na.baesystems.com [149.32.232.66])
 by mx.groups.io with SMTP id smtpd.web10.3227.1605182583943219645
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Nov 2020 04:03:06 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com header.s=trusted01 header.b=btjcDyvB;
 spf=pass (domain: baesystems.com, ip: 149.32.232.66, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1605182583; x=1762862583;
  h=from:to:subject:date:mime-version;
  bh=Hf+RjtXKz1I88uYo8fBxR3IEaX5QqNDKygimx3qdlY8=;
  b=btjcDyvBbGN9d3y8tN1kIfcXDW5Fx0XzvjITF6PEgT/HKCJiGMGtJzko
   IUkjCzu9jSSYmGhNi8Fr5AYiSuNVhcpvnLRzS1wAz2M1SetCKbnu1Gz9A
   E8iTWb60MVj6ZDDIcJKclW/oWtBIBsyDUnx12gp1uFbs2+72yUjhJEcnL
   c=;
IronPort-PHdr: =?us-ascii?q?9a23=3AKvUtSBWD53J5RapLDg/YhuzY0oHV8LGtZVwlr6E/?=
 =?us-ascii?q?grcLSJyIuqrYbRyDt8tkgFKBZ4jH8fUM07OQ7/m/HzVaut3Z4DgrS99lb1c9k8?=
 =?us-ascii?q?IYnggtUoauKHbQC7rUVRE8B9lIT1R//nu2YgB/Ecf6YEDO8DXptWZBUhrwOhBo?=
 =?us-ascii?q?KevrB4Xck9q41/yo+53Ufg5EmCexbal9IRmrrwjdrNQajZVsJ6o+1hfEoWZDdv?=
 =?us-ascii?q?hLy29vOV+dhQv36N2q/J5k/SRQuvYh+NBFXK7nYak2TqFWASo/PWwt68LlqRfM?=
 =?us-ascii?q?TQ2U5nsBSWoWiQZHAxLE7B7hQJj8tDbxu/dn1ymbOc32Sq00WSin4qx2RhLklD?=
 =?us-ascii?q?sLOjgk+2zRl8d+jr9UoAi5qhJ/3YDafZ2VOvR9cKPcYdwVSnFMUdxNWyxDGI6w?=
 =?us-ascii?q?c5cDA/QHMO1Fr4f9vVwOrR6mCAWiA+3vzTlIhmTo0qIkyOQtCRzN0hE8H90Qrn?=
 =?us-ascii?q?TbstP1P7oMXOuoyKXHwyjNY/ZY1Tzg74XIaQwhru+SXb1ud8rd00wvFwTDjlWL?=
 =?us-ascii?q?t4PqISiV2/8WvGeB8eVgTuKui3U7qw5vpziv3d0ghZXOhoIQ013J8zhyz4kpK9?=
 =?us-ascii?q?OiUkF7fcKkH4VKtyGcL4Z4TM0vTn1ptSs4y7AKp4O3cTYJxZknwxPSZPOKf5WG?=
 =?us-ascii?q?7B/jW+idPDN1iXBldb+whhu+7Fatx+n/W8S3zVtGsyVLn9/RvX4Ozxze8tWLRu?=
 =?us-ascii?q?dn8kqv2zuDzR7f5v9ELEwulKfWK4YtzqMsmpYJvknOETX6lUHsgKKVdEgp/PWj?=
 =?us-ascii?q?5f79bbX8vJCcMpd5igT5MqszhMOyGf84Mg0SX2iD/uS8yaHj8VX5QLpUiv02lb?=
 =?us-ascii?q?HUsIzVJMsBoK65BhRV34I/5xqjEzuqzc4UnX8dI15fYx2IlZbmO0rOIfDjEfew?=
 =?us-ascii?q?nVGskCxxy//aOb3hB43BLnnFkLj/YbZw81NQxBYpwd1R5Z9YEK8NLOzzV0Prtd?=
 =?us-ascii?q?HVDgc1MwmuzObmDNV92JkeWWWKAqKBK6PSrUGH5vwxLOmKfoMVvTH9K/4+5/Hw?=
 =?us-ascii?q?k3A5gkQQcrKz0pQJc3C5Hu9mI1mHbnrpmdcNC3sFvg07TODykl2NTSZTZ2quX6?=
 =?us-ascii?q?I7/jw6CIWmApvfRoCqm7GB2Ca7HoZKZmBdEFyNEXDoeJmYW/cLcCKSOMhhkj4a?=
 =?us-ascii?q?Wre9V48tzxautBX1y+kvEu2BsDwfvo7k/Nx0/PHI0wA1/iBzF96a0WyGUydzhG?=
 =?us-ascii?q?xCD2sn26tjpmR5y0yfyu5phPdEEsRJ4PFEWRt8MoTTmb9UEdf3D0jkedGSRVu9?=
 =?us-ascii?q?Bp2dHTwvQ9R56JdOXn08UZ32lQzOwSesRboSkaeGCYcc+KvRxGnqO8t40DDN06?=
 =?us-ascii?q?x33ApueddGKWDz3v03zAPUHYOcy0g=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2D7BACsI61f/0HhJQpigQmCcoF7gUCyA?=
 =?us-ascii?q?wsBAQEBAQEBAQEIAS8EAQGGZyY4EwIQAQEGAQEBAQEGBAGGUguCNyKDTV4BDHQ?=
 =?us-ascii?q?mAQQbgx+BfrF5gTSFV4RzCQGBLo8cPo8VBJp/nSwHA4JtmwsrgxmPYY59k1GgT?=
 =?us-ascii?q?wIEAgQFAhWBa4F6cIM6TxcCDZxogSwCBgoBAQMJjTcyXwEB?=
X-IPAS-Result: =?us-ascii?q?A2D7BACsI61f/0HhJQpigQmCcoF7gUCyAwsBAQEBAQEBAQE?=
 =?us-ascii?q?IAS8EAQGGZyY4EwIQAQEGAQEBAQEGBAGGUguCNyKDTV4BDHQmAQQbgx+BfrF5g?=
 =?us-ascii?q?TSFV4RzCQGBLo8cPo8VBJp/nSwHA4JtmwsrgxmPYY59k1GgTwIEAgQFAhWBa4F?=
 =?us-ascii?q?6cIM6TxcCDZxogSwCBgoBAQMJjTcyXwEB?=
X-IronPort-AV: E=Sophos;i="5.77,471,1596499200"; 
   d="scan'208,217";a="463063607"
X-IronPort-AV: E=Sophos;i="5.77,471,1596499200"; 
   d="scan'208,217";a="91135390"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto "zeus"
Thread-Topic: #yocto "zeus"
Thread-Index: Ada4655XkpGu+2/XTAO/9E8TyS2IKA==
Date: Thu, 12 Nov 2020 12:03:01 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.87]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.1646C10EBE4A8CF0.4377@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_200fcfe507b44a41ab52c6acf5a20a33baesystemscom_"

--_000_200fcfe507b44a41ab52c6acf5a20a33baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


This is probably a simple question, but since I am new to yocto there is a =
lot to learn...

How do I establish kernel access permissions for the "zeus" kernel so that =
when my application is up and running, (or an application startup script), =
can create read/write files for access/updating in the "/etc" and "/dev" di=
rectories ?

In the few cases I do this I am seeing unable to open errors...
Note the same code appears to work correctly under "rocko"...

Thanks,
Steve

--_000_200fcfe507b44a41ab52c6acf5a20a33baesystemscom_
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
<p class=3D"MsoNormal">This is probably a simple question, but since I am n=
ew to yocto there is a lot to learn&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">How do I establish kernel access permissions for the=
 &#8220;zeus&#8221; kernel so that when my application is up and running, (=
or an application startup script), can create read/write files for access/u=
pdating in the &#8221;/etc&#8221; and &#8220;/dev&#8221; directories ?<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">In the few cases I do this I am seeing unable to ope=
n errors&#8230;
<o:p></o:p></p>
<p class=3D"MsoNormal">Note the same code appears to work correctly under &=
#8220;rocko&#8221;&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_200fcfe507b44a41ab52c6acf5a20a33baesystemscom_--
