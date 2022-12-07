Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF001C352A1
	for <webhook@archiver.kernel.org>; Wed,  7 Dec 2022 17:53:03 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web11.22677.1670435575821859447
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Dec 2022 09:52:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=D+SXDxrQ;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1670435575; x=1828115575;
  h=from:to:subject:date:mime-version;
  bh=8q/7geRoQMOLUp/l0aKSQ/YmHWJMqBfCVfdkKNIEwvo=;
  b=D+SXDxrQDmc7MZe23odeektzZzo4mzZm5ae5yYRuBq1CehpHvLeY2oCJ
   8oJpklzMraYMb26i9S27AZ/StmnqxilKXynqY/03Ww7ZeT1Rc7pYE3jQS
   T+RAVcmMAy4bYvaSBOyTXOKs/GlczHG33bvHN8RjocZoGZm0mP7IoXZJp
   g=;
X-IPAS-Result: =?us-ascii?q?A2B0BwDA0ZBj/0LBJQpagQkJgUiBKIIHAoFvtQsPAQEBA?=
 =?us-ascii?q?QEBAQEBCAFEBAEBihgmOQUNAQIEAQEBAQMCAwEBAQEBAQMBAQYBAQEBAQEGB?=
 =?us-ascii?q?AGBHIUvOgyCNyKEMF4BDAlrJgEEG4J3ghaBDLIAgTQaAmWEcZxNCQGBN4Flh?=
 =?us-ascii?q?VB1XINMFYY/Q4QPi3AEllN8gUAHNgNEHUADCwdmCkM1F0wrHBsHgQwqKBUDB?=
 =?us-ascii?q?AQDAgYTAyICDSgxFAQpEw0rJm0JAgMiZgMDBCgsAwkhAgEcByYkPAdWNwUDA?=
 =?us-ascii?q?g8gOAYDCQMCH1aBIyYFAwsVJQgFRwQINgUGUBICChESDyxGDkI+ORYGJ28OD?=
 =?us-ascii?q?hMDXYFiBHWBL1mddYEiknyNdqIVBwODagWKK4kMB40HLhaDeZMiAxiRZpdAI?=
 =?us-ascii?q?KIdhRUCBAIEBQIWgXqBfXCDOFEXApx/gTACBwsBAQMJiQuBFAEB?=
IronPort-PHdr: A9a23:yl9VxxDvmjDykSMJ6CicUyQUJUQY04WdBeb1wqQuh78GSKm/5ZOqZ
 BWZua8wygaZFtyDt7oE07OQ7/q8HzRYoN6oizMrTt9lb1c9k8IYnggtUoauKHbQC7rUVRE8B
 9lIT1R//nu2YgB/Ecf6YEDO8DXptWZBUhrwOhBoKevrB4Xck9q41/yo+53Ufg5EmCexbal9I
 RmorQjdrNQajIhtJqos1hfErWZDd+BKyW91P16ekAjw68iq8JJ/7yhcvu8q+tJdX6n9Y6k3Q
 rtUASg8PWso/sPrrx7DTQWO5nsYTGoblwdDDhbG4h/nQJr/qzP2ueVh1iaUO832Vq00Vi+57
 6h3Uh/oiTwIOCA//WrKl8F/lqNboBampxxi347ZZZyeOfRicq/Be94RWGxMVdtTWSNcGIOxd
 4sBAfQcM+ZEoYfzpFoOogexCgS3Huzj1j1Ii2Xq0aEmzegsFxzN0gw6H9IJtXTZtNv5OqAVU
 eCz16nH0yvMb+hO1Tzg9YbIbg4uoe+SUrJ2bMHc11QkGwfLgVuNrIDpMS6e2+MWs2iH8eVgS
 /ygi2g9pwF0pTivwNwshZfXiYIO0V3L7j92z5guJdy4U057fcCrEJ5Lty2AK4R2RcYiTnhut
 S0nxbIIpYS1czIWyJQ72RHfcfqHfpCG7B/tSOucIDV1iXN7dL6imRu/8kitx+nzW8S7zVpEo
 CpInNbRun0J1RHe6seKR/pg8kq/3TuC1APe5/xZLU47k6fQNp0vwqYom5YOrUjPBCH7lUfsg
 KOLckgp9PKk5uXmb7n+u5OQK5V4hw7gPqg0h8CyD/k0PhIAUmSH/+m3yaft8lfjQLpQi/07i
 qzZsJfHKssFvqO5GApV0po76xa4EjemzMwUnXkZI1JBfxKKl47pO1HIIP/iCPe/mFehnTd3y
 /zaI7HtGJPNIWLZnLj6Z7ly9VVcyQoozdBD+Z1UD6oBLOjvVU/2sdzUFh45MwqqzOb7ENhxy
 58SVXiBD6KbKq/erFuF6+w1L+SNZYIZoDP9JOIk5/7qg385g1gdfayx0JsMdHC3AOpmLFufY
 Xb2h9cBFmEKvhEgQ+P0k12PSiVcaGysUKIn5jA7E56mApnGRoC2mrCOwCC7HphOamBAEV+DC
 W3oeJmcW/cQdCKSJddsniEcWbi7V4AhzQ2utBP9y7d/LuvU/TEXtY7k1NVu4+3TlAoy9SBvD
 8iH02CNSH17nn8PRz8uxqB/pk59xUmf3qhkmfBYEsZT5/waGjs9YNTNyOdmDPj2WxndZZGYT
 126Rc28BjM8Rc53xMUBKQ4pCtKpkhfr2yuxH6RThruAGJss6KXe0nPtYcFnxCCV+rMmigxsZ
 8xJLmCrneo3zBTeGYPP227R15uRNO5UiDXR+XmOyyyLu0dDXQNrea/MUGsOfVfbqM+/7UTHG
 ez9QY87OxdMnJbRYpBBbcfk2A0ueQ==
IronPort-Data: A9a23:3lMn9qqXmfJIeS+hVWvb5jXrCTFeBmKMZxIvgKrLsJaIsI4StFCzt
 garIBmHbq6NY2uheth+b9mwoUoAv5CAzdFqSFBqqnozFiMR9ePIVI+TRqvS04N+DSFhoGZPt
 Zh2hgzodZhsJpPkjk7xdOCn9BGQ7InQLlbGILes1htZGEk1Fk/NtTo5w7Rj29Qw3oDja++wk
 YqaT/P3aQfNNwFcbzp8B5Kr8HuDa9yr5Vv0FnRnDRx6lAe2e0s9VfrzFontR5fMebS4K8bhL
 wr1IBBVyUuCl/slIovNfr8W6STmSJaKVeSFoiI+t6RPHnGuqwRqupvXOsbwZm9wsRaygs5y8
 e9T9qCTDlcCL6vItN80Bkww/yFWZcWq+ZfBIX62tNfDkhWeKj3qyrNkBUwtLJYE9+NsR2pJ8
 JT0KhhUNlbY2KTvken9FLcEascLdaEHOKsEpnx+wDefCPEgWp3OWI3A7NJDzSwsi8VVW/3ZY
 qL1bBIzNU6dPUMfYz/7Dro1jsy2p1n+WAZ463e59fUJvnLjwBRYhe2F3N39P4biqd9utlefr
 X7B12D4GQ0Bcs2YwiaC6mirhOLEgWX8Qo16KVGj3qcyxgbMgDVCU1tICzNXvMWEt6J3YPoHQ
 2R8x8bkhfJaGJCDJjUlYyCFnQ==
IronPort-HdrOrdr: A9a23:UeG1N6swfJsHlwdmPVjCrz6I7skCs4Mji2hC6mlwRA09TyXGra
 2TdaUgvyMc1gx7ZJh5o6H5BEDyewKmyXcV2/hmAV7GZmXbUQSTXeVfBOfZogEIXheOj9K1tp
 0QOpSWaueAamSS5PySiGbXLz9j+qjgzEnCv5a8854Zd3AOV0gW1XYaNu/0KC1LbTgDIaB8OI
 uX58JBqTblU28QdN6HCn4MWPWGj8HXlbr9CCR2TCIP2U2rt3eF+bT6Gx+X0lM1SDVU24ov9m
 DDjkjQ+rijifem0RXRvlWjpai+2eGRh+erNvb8xfT9GQ+cxDpAUb4RF4Fq8gpF4d1Ho2xa6u
 Uk6y1QQvibrUmhNl1d6CGdpzXIwXIg7WTvxkSfhmamqcvlRCgiA84Eno5BdADFgnBQye2U/Z
 g7rF5xjaAnfy/ojWD4/ZzFRhtqnk27rT4rlvMSlWVWVc8bZKVKpYIS8UtJGNNYdRiKn7wPAa
 1rFoXR9fxWeVSVYzTQuXRu2sWlWjA2Eg2dSkYPt8SJ23xdnWx/zUEf2MsD901wgK7Vi6M0l9
 gsHp4Y5Y2mFPVmEp6VLN1xP/eKNg==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.96,225,1665446400"; 
   d="scan'208,217";a="41256681"
X-IronPort-AV: E=Sophos;i="5.96,225,1665446400"; 
   d="scan'208,217";a="359507025"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Does yocto to support a package for bitwise functionality ?
Thread-Topic: Does yocto to support a package for bitwise functionality ?
Thread-Index: AdkKZLoHeduOjDW/TdGVCI3fqmrK+g==
Date: Wed, 7 Dec 2022 17:52:52 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.42.131.30]
Content-Type: multipart/alternative;
	boundary="_000_741ac5ef55e347deafa23cc63bb743c0baesystemscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Dec 2022 17:53:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58749
Message-Id: <20221207175303.EF001C352A1@smtp.lore.kernel.org>

--_000_741ac5ef55e347deafa23cc63bb743c0baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Hello:

Is there a package I can install under Yocto so that scripts can perform bi=
twise functions, to help with converting the read hex data into the correct=
 unit of measurement, i.e. mV, watts, etc. ?

Thanks,
Steve

--_000_741ac5ef55e347deafa23cc63bb743c0baesystemscom_
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
<p class=3D"MsoNormal"><span style=3D"color:#1F4E79;mso-style-textfill-fill=
-color:#1F4E79;mso-style-textfill-fill-alpha:100.0%"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F4E79;mso-style-textfill-fill=
-color:#1F4E79;mso-style-textfill-fill-alpha:100.0%">Hello:<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F4E79;mso-style-textfill-fill=
-color:#1F4E79;mso-style-textfill-fill-alpha:100.0%"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F4E79;mso-style-textfill-fill=
-color:#1F4E79;mso-style-textfill-fill-alpha:100.0%">Is there a package I c=
an install under Yocto so that scripts can perform bitwise functions, to he=
lp with converting the read hex data
 into the correct unit of measurement, i.e. mV, watts, etc. ?<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F4E79;mso-style-textfill-fill=
-color:#1F4E79;mso-style-textfill-fill-alpha:100.0%"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F4E79;mso-style-textfill-fill=
-color:#1F4E79;mso-style-textfill-fill-alpha:100.0%">Thanks,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F4E79;mso-style-textfill-fill=
-color:#1F4E79;mso-style-textfill-fill-alpha:100.0%">Steve<o:p></o:p></span=
></p>
</div>
</body>
</html>

--_000_741ac5ef55e347deafa23cc63bb743c0baesystemscom_--

