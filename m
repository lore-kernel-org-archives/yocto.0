Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web08.491.1607537635796596658
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Dec 2020 10:13:58 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com header.s=trusted01 header.b=jsbL074R;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1607537635; x=1765217635;
  h=from:to:subject:date:mime-version;
  bh=ZLmByE46jghC+tlYq4ffXj1trPC6fM7P+cmx69ak6p8=;
  b=jsbL074R5+6ZmFXFZ+7GYfiBrcmq3BiWdViE5PykPqIeA4LJTqjlGXiQ
   gLeXPm5cZyB5MMNeWFPWSLcF9RLkTmpOUURKesETjCC3Q1LqoHOPPdP7y
   11EidtPL9REzsqfTLDlkcY8MUB8YGWZMi1zO4H1Z+u4gdzi+9+ItPAxrp
   I=;
IronPort-PHdr: =?us-ascii?q?9a23=3AMZf8yxWwBhS4dMxyCRjb1tvCg3zV8LGtZVwlr6E/?=
 =?us-ascii?q?grcLSJyIuqrYbRyDt8tkgFKBZ4jH8fUM07OQ7/m/HzVfsd3c6TgrS99lb1c9k8?=
 =?us-ascii?q?IYnggtUoauKHbQC7rUVRE8B9lIT1R//nu2YgB/Ecf6YEDO8DXptWZBUhrwOhBo?=
 =?us-ascii?q?KevrB4Xck9q41/yo+53Ufg5EmCexbal9IRmrrwjdrNQajIlhJ6o+yhbFv2ZDdv?=
 =?us-ascii?q?hLy29vOV+dhQv36N2q/J5k/SRQuvYh+NBFXK7nYak2TqFWASo/PWwt68LlqRfM?=
 =?us-ascii?q?TQ2U5nsBSWoWiQZHAxLE7B7hQJj8tDbxu/dn1ymbOc32Sq00WSin4qx2RhLklD?=
 =?us-ascii?q?sLOjgk+2zRl8d+jr9UoAi5qhJ/3YDafZ2VOvR9cKPcYdwVSnFMUdxNWyxDGI6w?=
 =?us-ascii?q?c5cDA/QHMO1Fr4f9vVwOrR6mCAWiA+3vzTlIhmTo0qIkyOQtCRzN0hE8H90Qrn?=
 =?us-ascii?q?TbstP1P7oMXOuoyKXHwyjNY/ZY1Tzg74XIaQwhru+SXb1ud8rd00wvFwTDjlWL?=
 =?us-ascii?q?t4PqISiV2/8WvGeB8eVgTuKui3U7qw5vpziv3d0ghZXOhoIQ013J8zhyz4kpK9?=
 =?us-ascii?q?OiUkF7fcKkH4VKtyGcL4Z4TM0vTn1ptSs4y7AKp4O3cTYJxZknwxPSZPOKf5WG?=
 =?us-ascii?q?7B/jW+idPDN1iXBldb+whhu+7Fatx+n/W8S3zVtGsyVLn9/RvX4Ozxze8tWLRu?=
 =?us-ascii?q?dn8kqv2zuDzR3f5+VKLEwulKfWKoYtzqMsmpYJvknOETX6lUHsgKKZdUgp/PWj?=
 =?us-ascii?q?5f79bbX8vJCcMpd5igT5MqszhMOyGf84Mg0SX2iD/uS8yaHj8VX5QLpUiv02lb?=
 =?us-ascii?q?HUsJbaJcQdvKG5BhRV34Uj5hqjEzuqzc4UnX8dI15fYx2IlZbmO0rOIfDjEfew?=
 =?us-ascii?q?nVGskCxxy//aOb3hB43BLnnFkLj/YbZw81NQxBYpwd1R5Z9YEKwNLfb9V0Prtd?=
 =?us-ascii?q?HVDwc1MwmuzObmDNV92JkeWWWKAqKBK6PSrUGH5vwxLOmKfoMVvTH9K/4+5/Hw?=
 =?us-ascii?q?k3A5gkQQcrKz0pQJc3C5Hu9mI1mHbnrpmdcNC3sFvg07TODykl2NTSZTZ2quX6?=
 =?us-ascii?q?I7/jw6CIWmApvfRoCqm7GB2Ca7HoZKZmBdEFyNEXDoeJmYW/cLcCKSOMhhkj4a?=
 =?us-ascii?q?Wre9V48tzxautBX1y+kvEu2BsDwfvo7k/Nx0/PHI0wA1/iBzF96a0WyGUydzhG?=
 =?us-ascii?q?xCD2sn26tjpmR5y0yfyu5phPdEEsRJ4PFEWRt8MoTTmb9UEdf3D0jkedGSRVu9?=
 =?us-ascii?q?Bp2dHTwvQ9R56JdOXn08UZ32lQzOwSesRboSkaeGCYcc+KvRxGnqO8t40DDN06?=
 =?us-ascii?q?x33ApueddGKWDz3v03zAPUHYOcy0g=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2D/BABdE9Ff/0LBJQpigQmCcoF8gTgKs?=
 =?us-ascii?q?hYLAQEBAQEBAQEBCAEbFAQBAYZMJjgTAhABAQYBAQEBAQYEAYZRAQuCNyKDTV4?=
 =?us-ascii?q?BDHQmAQQbgx+Bfq5HgTSFV4UlgTiPID6JDYYOBIMTKIJDmmidXQcDgnSbOSuiN?=
 =?us-ascii?q?5N8oSMCBAIEBQIVgW2BenCDOQlHFwINlyaFRHQ3AgYKAQEDCYlLgREBAQ?=
X-IPAS-Result: =?us-ascii?q?A2D/BABdE9Ff/0LBJQpigQmCcoF8gTgKshYLAQEBAQEBAQE?=
 =?us-ascii?q?BCAEbFAQBAYZMJjgTAhABAQYBAQEBAQYEAYZRAQuCNyKDTV4BDHQmAQQbgx+Bf?=
 =?us-ascii?q?q5HgTSFV4UlgTiPID6JDYYOBIMTKIJDmmidXQcDgnSbOSuiN5N8oSMCBAIEBQI?=
 =?us-ascii?q?VgW2BenCDOQlHFwINlyaFRHQ3AgYKAQEDCYlLgREBAQ?=
X-IronPort-AV: E=Sophos;i="5.78,405,1599523200"; 
   d="scan'208,217";a="331208856"
X-IronPort-AV: E=Sophos;i="5.78,405,1599523200"; 
   d="scan'208,217";a="235905202"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto #zeus -broken atomic modsset
Thread-Topic: #yocto #zeus -broken atomic modsset
Thread-Index: AdbOVtZf/BqN2rUMSqWB3UCyixhNeg==
Date: Wed, 9 Dec 2020 18:12:23 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.48]
MIME-Version: 1.0
Message-ID: <MADEUP.164F1EF6FC714447.19788@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_c4b22587ce49419da5439c529df97618baesystemscom_"

--_000_c4b22587ce49419da5439c529df97618baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


I'm building/running zeus 3.0.4 on intel platform...

Can someone tell me why I might be seeing the following error and how to re=
solve it ?

X.Org X Server 1.20.5
X Protocol Version 11, Revision 0
Build Operating System: Linux 3.10.0-1127.13.1.el7.x86_64 x86_64
Current Operating System: Linux sbcb-default 4.19.135-intel-pk-standard #1 =
SMP PREE broken atomic modeset userspace detected, disabling atomic
MPT Mon Nov 2 15:55:20 UTC 2020 x86_64

Thanks,
Steve

--_000_c4b22587ce49419da5439c529df97618baesystemscom_
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
<p class=3D"MsoNormal">I&#8217;m building/running zeus 3.0.4 on intel platf=
orm&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can someone tell me why I might be seeing the follow=
ing error and how to resolve it ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">X.Org X Server 1.20.5<o:p></o:p></p>
<p class=3D"MsoNormal">X Protocol Version 11, Revision 0<o:p></o:p></p>
<p class=3D"MsoNormal">Build Operating System: Linux 3.10.0-1127.13.1.el7.x=
86_64 x86_64
<o:p></o:p></p>
<p class=3D"MsoNormal">Current Operating System: Linux sbcb-default 4.19.13=
5-intel-pk-standard #1 SMP
<b><span style=3D"color:black">PREE </span><span style=3D"color:red">broken=
 atomic modeset userspace detected, disabling atomic</span></b><o:p></o:p><=
/p>
<p class=3D"MsoNormal">MPT Mon Nov 2 15:55:20 UTC 2020 x86_64<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_c4b22587ce49419da5439c529df97618baesystemscom_--
