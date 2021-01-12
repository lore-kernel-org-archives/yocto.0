Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web10.15185.1610482178566836336
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Jan 2021 12:09:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=PU7hmpCd;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1610482178; x=1768162178;
  h=from:to:subject:date:mime-version;
  bh=VhSvd4tOO8kQVDuo4obwTWTkJb5We4/CbyEuoD9M9/U=;
  b=PU7hmpCdC+VKP7bA3/Tt6Sk92Rh3wPoMX8HFnIL4uza2FHRSijZ8+c+K
   MRqSpTTeId6KIJxS0a/av9lCsbyuER+dJgqNvC00UMI83rHr2+OtOaZDz
   7QE7FrtY0g52BdIbLbYTGEKu6mEFc21CH5jUpS5nCiuJ0uBnTtgBEH9bB
   8=;
IronPort-PHdr: =?us-ascii?q?9a23=3AVxw+5xGUkGXelHsuXlG2IJ1GYnF86YWxBRYc798d?=
 =?us-ascii?q?s5kLTJ76p829bnLW6fgltlLVR4KTs6sC17OG9fi4EjFYqdbZ6TZeKcMKD0dEwe?=
 =?us-ascii?q?wt3CUYSPafDkP6KPO4JwcbJ+9lEGFfwnegLEJOE9z/bVCB6le77DoVBwmtfVEt?=
 =?us-ascii?q?fre9FYHdldm42P6v8JPPfQpImCC9YbRvJxmqsAndrMYbjZZhJ6or1hfFvnREdu?=
 =?us-ascii?q?RKyWh1IV6fgwvw6t2/8ZJ+8Slcoe4t+9JFXa7nY6k2ULtUASg8PWso/sPrrx7D?=
 =?us-ascii?q?TQWO5nsYTGoblwdDDhbG4h/nQJr/qzP2ueVh1iaUO832Vq00Vi+576h3Uh/oiT?=
 =?us-ascii?q?wIOCA//WrKl8F/lqNboBampxxi347ZZZyeOfRicq/Be94RWGxMVdtTWSNcGIOx?=
 =?us-ascii?q?d4sBAfQcM+ZEoYfzpFoOogexCgS3Huzj1j1Ii2Xq0aEmzegsFxzN0gw6H9IJtX?=
 =?us-ascii?q?TZtNv5OqAVUeCz16nH0yvMb+hO1Tzg9YbIbg4uoe+SUrJ2bMHc11QkGwfLgVuN?=
 =?us-ascii?q?rIDpMS6e2+MWs2iH8eVgS/ygi2g9pwF0pTivwNwshZfXiYIO0V3L7j92z5guJd?=
 =?us-ascii?q?y4U057fcCrEJ5Lty2AK4R2RcYiTnhutS0nxbIIpYS1czIWyJQ72RHfcfqHfpCG?=
 =?us-ascii?q?7B/tSOucIDV1iXN7dL6imRu/8kitx+nzW8S7zVpEoCpInNbRun0J1RHe6seKR/?=
 =?us-ascii?q?pg8kq/3TuC1APe5/xZLU47k6fQNp0vwqYom5YOrUjPBCH7lUfsgKOIaEkp+vKk?=
 =?us-ascii?q?5uXmb7n+u5OQK5V4hw7xP6g0lcGzG/k0PwgIUmOG4+qzzqfj8lf8QLhSi/02lb?=
 =?us-ascii?q?TWv47CKMQAo665HxdV0oE+6xajFzum0MoXnX0ALF9dZB2IlZPpNE3LIPDjCfqy?=
 =?us-ascii?q?h1ehnCt1y/zcOL3uGI/BIWPZn7j/ZrZ861VcyBYtwtBa/JJYEK0OIPX2WkPptd?=
 =?us-ascii?q?zYCAE2MxCszur6FNlxzI0TVGCVDqOHLq/fsUWE6+MuLuWUYY8aojf9K/wr5/70?=
 =?us-ascii?q?in85nEcQfbK13ZQJdnC3APJmL1+cYXrrhNcBCnkFsRQlTOHxk1KNSyBcZ22yXq?=
 =?us-ascii?q?In+jE0FoemDZzZSo+xh7yB2T+3HodKaWBeFlCMDXDoep2EWvcLdC2SPshhnycA?=
 =?us-ascii?q?VbigUI8hyQquuBX6yrpgMuXU5ioYtYr51Nhy5e3ciw099SBuA8SayWGNQDI8om?=
 =?us-ascii?q?RdDS4x17x4iUh80UuYl7l/iOBfDcZU5f5CTkE9L5GWh7hrDNvuXSrFf8yVUxC3?=
 =?us-ascii?q?Rd66BikrSdA8yMNIZFxyTYaMlBfGimCPBLkOmrGQQNQP7q/C0n65DI499k2Hnu?=
 =?us-ascii?q?F1lEUrXMZJc2ihgLVy+hP7DYfEiFSCi6uvbuIX2yubpzTL9naHoEwNCF04aq7C?=
 =?us-ascii?q?R31KPkY=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2D7BABqAf5f/0LhJQpigQmCcoF+gUKyN?=
 =?us-ascii?q?QsBAQEBAQEBAQEIAS8EAQGGPiY4EwIQAQEGAQEBAQEGBAGGUguCOCKDTV4BDHQ?=
 =?us-ascii?q?mAQQbgx+BfrBqgTSFWIUJgTiPND6PHgSDPJJ4iladcAcDgnebViuiYJQSoUACB?=
 =?us-ascii?q?AIEBQIWgW2BenCDOk8XAg2caoErAgYKAQEDCYxKgREBAQ?=
X-IPAS-Result: =?us-ascii?q?A2D7BABqAf5f/0LhJQpigQmCcoF+gUKyNQsBAQEBAQEBAQE?=
 =?us-ascii?q?IAS8EAQGGPiY4EwIQAQEGAQEBAQEGBAGGUguCOCKDTV4BDHQmAQQbgx+BfrBqg?=
 =?us-ascii?q?TSFWIUJgTiPND6PHgSDPJJ4iladcAcDgnebViuiYJQSoUACBAIEBQIWgW2BenC?=
 =?us-ascii?q?DOk8XAg2caoErAgYKAQEDCYxKgREBAQ?=
X-IronPort-AV: E=Sophos;i="5.79,342,1602547200"; 
   d="scan'208,217";a="338588890"
X-IronPort-AV: E=Sophos;i="5.79,342,1602547200"; 
   d="scan'208,217";a="176277122"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto #kernel
Thread-Topic: #yocto #kernel
Thread-Index: AdbpHa4uv+X65smLT56sbWhYtNALIw==
Date: Tue, 12 Jan 2021 20:09:32 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Message-ID: <MADEUP.16599502C2A622A0.16249@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7366eb1996bd452987cb1207329becb3baesystemscom_"

--_000_7366eb1996bd452987cb1207329becb3baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Working on zeus 3.0.4, for aarch64

I  have a startup script making use of "service" How do I properly configur=
e in support for the "service" command ?
I do not have an error when working under rocko.

The error seen is :    /etc/rc5.d/S15mountnfs.sh: line 70: service: command=
 not found

Usage: @ line 70:  "service rpcbind status >/dev/null"

Thanks,
Steve

--_000_7366eb1996bd452987cb1207329becb3baesystemscom_
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
<p class=3D"MsoNormal">Working on zeus 3.0.4, for aarch64<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&nbsp; have a startup script making use of &#8220;s=
ervice&#8221; How do I properly configure in support for the &#8220;service=
&#8221; command ?<o:p></o:p></p>
<p class=3D"MsoNormal">I do not have an error when working under rocko.<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The error seen is :&nbsp;&nbsp; &nbsp;/etc/rc5.d/S15=
mountnfs.sh: line 70: service: command not found<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Usage: @ line 70: &nbsp;&#8220;service rpcbind statu=
s &gt;/dev/null&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_7366eb1996bd452987cb1207329becb3baesystemscom_--
