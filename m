Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web11.1115.1619631023311726738
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Apr 2021 10:30:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=YK+XPzuC;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1619631023; x=1777311023;
  h=from:to:subject:date:mime-version;
  bh=+Vj9djvxCtmlY7ESLH6au+dP0fX7nXf1N+Vj3bs67kc=;
  b=YK+XPzuCEB1p1EosPh+0ox6B1kmSPZ1keRkn1IAM4aphUC9rA0joyAsn
   pmETzhhSzAmQ5/7GXhoz+DaKYMfirIC2aGd5zcKann5ywYOnxFh+Hirji
   SFul4PFXd1obIKcuMZPg8yECbfRlg69Ba3273OSCdBPHMlNE15wkMhSPZ
   s=;
IronPort-SDR: SEVS3u9sB3W4kZjmxDiO19xZY8F+Q2YhpUG4L9YhVLKRK5GquB+S7KGlG9Vcx+Mtud/0EkxxEP
 et6sUc6IW3bg==
IronPort-PHdr: =?us-ascii?q?A9a23=3AJnrFUR3OnwLPGAWlsmDO3AMyDhhPgJ3EezUN4?=
 =?us-ascii?q?59isYplN5qZl7zcNUDSrc9gkEXOFd2Cra4d2qyM6fqrCTBIyK3CmUhKSIZLW?=
 =?us-ascii?q?R4BhJdetC0bK+nBN3fGKuX3ZTcxBsVIWQwt1Xi6NU9IBJS2PAWK8TW94jEIB?=
 =?us-ascii?q?xrwKxd+KPjrFY7OlcS30P2594HObwlSizexfLd/IA+ooQnPqMUajohvJ6ksw?=
 =?us-ascii?q?RbVv3VEfPhby3l1LlyJhRb84cmw/J9n8ytOvv8q6tBNX6bncakmVLJUFDspP?=
 =?us-ascii?q?Xw7683trhnDUBCA5mAAXWUMkxpHGBbK4RfnVZrsqCT6t+592C6HPc3qSL0/R?=
 =?us-ascii?q?Dqv47t3RBLulSwKMSMy/mPKhcxqlK9VoAyvqQFjw4DaY4+VNeZxcazGcNwAW?=
 =?us-ascii?q?WZBXNxcWzBdDo+iaYYEEuoPPfxfr4n4v1YCoxywBQ6qBOP01DBHmGT20bUn2?=
 =?us-ascii?q?Oo8DQHJwhIgEMwIsH/Jstj+KaMeXu6owqXNwznIcvRb2Szh6IfWbBAuv/eMU?=
 =?us-ascii?q?ah1ccrWz0kvDB3KgUuLqYH+JDyazPoCs3Ob7up7SeKglWsnqxprrjezwccsj?=
 =?us-ascii?q?5DEi4QIwV/L6St32pw6JcGkSEFle96kFoNduiGGO4V2Tc4sQ25ltScmxrMIp?=
 =?us-ascii?q?JO2YSoHxYolyhLBdfCKfImF7xbtWeifLjp0mHxodb2xihu9/0atxOzxWtW03?=
 =?us-ascii?q?VtMsyFLnN7MtnUX2BzS7MiKUvR9/ka92TaPygDc8ftILlwzlareLZMq370+l?=
 =?us-ascii?q?oILvEjeAiP6gkv7ga2Mekk5/uWl5f7rb7Tmq5OEKoN4lhvyP6shl8ClDuk0K?=
 =?us-ascii?q?BUCUmid9O+hzrPs51f5T69PjvAul6nZt43VKtoDq66iBg9Vzp4j6xGiDze6y?=
 =?us-ascii?q?NgYnWcILFZCeB+fkYjmIVHOIPb9Dfekh1mhlDNmy+zbMrH7BJXCNGLPn6z7c?=
 =?us-ascii?q?rlj8E5dyBEzzcxB6JJREbENOu78Wkj0tNDADx85NRK7w/r/Bdlgyo8SQ2yCD?=
 =?us-ascii?q?62DPK/PtVKF6PgjLuiMaYMNvTbyMfkl5/rgjX8jnl8deLGk3YALaH+mAPRpP?=
 =?us-ascii?q?UOZbWDpgtcGF2cKpRQxQ/LxiFCZSjFcfWi9X7k85zEgFIKpE4LDRpu3jLOd2?=
 =?us-ascii?q?ye7G4VaZnpaBVCUDXfoa4KEVu8MaSKVPsBhjjsEWKOlS48gzhGuqBT6x6BnL?=
 =?us-ascii?q?+rT5iIYqZXj1MBv5+3UlxE96yB7D9iH32GKVWF0kTBAezhjlrF4qlB64lOCy?=
 =?us-ascii?q?rRjxe1fHsBU/+lOUAoxKdjb1eMwQ4TjXQndef+NSU26WZO3BjotScorxN0Da?=
 =?us-ascii?q?Fo7HM+t2EPtxS2vVvUwkLqQCZEvturnw3XvKsA14D6G6ZJgxRFyWddCK2Cgw?=
 =?us-ascii?q?Kt48RPeCpXhmUyUjLexaakZx2jG82LVnjnGh11RTAMlCfaNZnsYfEaD9bzE?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3ArSE1+6mQNoUL7L8l+DFGcDIdq/zpDfNSim?=
 =?us-ascii?q?dD5ilNYBxZY6Wkvuqpm+kW0gKxtSYJVBgb6LK9EYSjYVeZz5565oENIayvNT?=
 =?us-ascii?q?ONhEKEJJxvhLGO/xTOACv7n9Qw6Y5Ec7JiTOH2F0Rwl8zg4AK1euxQpOWv1I?=
 =?us-ascii?q?CNqaPgw2x2TQdsApsQjDtRLgqACEV5SE1nKPMCdaa03cZMqzq+dXl/VK3SOl?=
 =?us-ascii?q?A/U/HHt5n3kvvdDiIuPQIt6wWFkFqTiILSLh7w5HkjegIK6rck/GjDnWXCl8?=
 =?us-ascii?q?CemsD+7iXy/Eq71f9rseqk7uFyPoils+h9EESWti+YIKBoW7iMpzYwydvfkW?=
 =?us-ascii?q?oCoZ3pqwwjM9l0y165RBDSnTLdny3jzR404X7j1lPwuwqaneXJABY5Fu5IhY?=
 =?us-ascii?q?d1UDv8gnBQxu1U4eZz4EKg3qAnai/9oA=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2ADBQBgmolg/0HBJQpagQkJgnGBf4F?=
 =?us-ascii?q?Msx4LAQEBAQEBAQEBCAEoDAQBAYZOJjgTAgQBAQwBAQYBAQEBAQYEAYEDhVA?=
 =?us-ascii?q?BDII4IoQeXgEMCWsmAQQbgmqBfoEYqTGBNBoCZYRhhQgGCQGBMIFlhR2CXoY?=
 =?us-ascii?q?EQYdTAodYBIMoWYI6OpwSnnIHA4MQiXSTJR8QlFoDkDmVKYt7l1oCBAIEBQI?=
 =?us-ascii?q?WgWuBfHCDOk8XApIdil2BKwIGCgEBAwmLf4EQAQE?=
X-IPAS-Result: =?us-ascii?q?A2ADBQBgmolg/0HBJQpagQkJgnGBf4FMsx4LAQEBAQEBA?=
 =?us-ascii?q?QEBCAEoDAQBAYZOJjgTAgQBAQwBAQYBAQEBAQYEAYEDhVABDII4IoQeXgEMC?=
 =?us-ascii?q?WsmAQQbgmqBfoEYqTGBNBoCZYRhhQgGCQGBMIFlhR2CXoYEQYdTAodYBIMoW?=
 =?us-ascii?q?YI6OpwSnnIHA4MQiXSTJR8QlFoDkDmVKYt7l1oCBAIEBQIWgWuBfHCDOk8XA?=
 =?us-ascii?q?pIdil2BKwIGCgEBAwmLf4EQAQE?=
X-IronPort-AV: E=Sophos;i="5.82,258,1613433600"; 
   d="scan'208,217";a="370057382"
IronPort-SDR: j11ghuaPS9NKueBj23cFln8GqhxUO7gX3KwvYLNgeIZMG/xXNkWzTONmFSTQgq+dW3YIhu/q1/
 t0HlbMa1dvKg==
X-IronPort-AV: E=Sophos;i="5.82,258,1613433600"; 
   d="scan'208,217";a="4390907"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto opencl
Thread-Topic: #yocto opencl
Thread-Index: Adc8U9WP5gqlK8L+SxSyMXjFES0bZg==
Date: Wed, 28 Apr 2021 17:30:19 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.100.33
dlp-reaction: no-action
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.167A15D6303F863D.17467@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_c24f5cd4837647458087e16f9036ead5baesystemscom_"

--_000_c24f5cd4837647458087e16f9036ead5baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Can someone tell me is this supported under Yocto in any way?

meta-beignet/recipes-opencl at ross * rossburton/meta-beignet * GitHub<http=
s://github.com/rossburton/meta-beignet/tree/ross/recipes-opencl>

Any docs, or updates ?

Wanted to know if this would work under Zeus, with meta-clang ?
Looking to build opencl shared library support...

Thanks,
Steve

--_000_c24f5cd4837647458087e16f9036ead5baesystemscom_
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
<p class=3D"MsoNormal">Can someone tell me is this supported under Yocto in=
 any way?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://github.com/rossburton/meta-beigne=
t/tree/ross/recipes-opencl"><span style=3D"color:blue">meta-beignet/recipes=
-opencl at ross &middot; rossburton/meta-beignet &middot; GitHub</span></a>=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any docs, or updates ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Wanted to know if this would work under Zeus, with m=
eta-clang ?
<o:p></o:p></p>
<p class=3D"MsoNormal">Looking to build opencl shared library support&#8230=
;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_c24f5cd4837647458087e16f9036ead5baesystemscom_--
