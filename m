Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,SPF_HELO_NONE autolearn=no
	autolearn_force=no version=3.4.0
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E55C433F5
	for <webhook@archiver.kernel.org>; Fri, 24 Sep 2021 11:10:29 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web10.6601.1632481826212295239
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Sep 2021 04:10:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=NxC90thE;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1632481826; x=1790161826;
  h=from:to:subject:date:mime-version;
  bh=or2yrjJM01zX5JGjxOOm9mkp6ggf3i5VcADUmmq4Xm4=;
  b=NxC90thEGl5AAacGBLzuYkn/7DSarsN99Bwi2uYWmN40kciHENpv6U+G
   DG3yztj+w7Cy3ztfObfHGj1nq0J6UWUTylPssCOd2IE43n8gLbZuu9Tuj
   /U08kkhHV8KNqnb6uMGu7WTUsGk2FngVv6jbyjkEkVjIBp4DS71u5sdFR
   U=;
IronPort-SDR: 
 ZUNVm+Ir9VavJO13avAJSQDNJ6tiXk4iMzfdhxQZkAZclhPiAh/2i8Ui9OSHpb9FpXx51sIJAp
 rbn0BnmQszlQ==
IronPort-PHdr: =?us-ascii?q?A9a23=3ATaH5zhA1FGYoVELvxSIDUyQU7EMY04WdBeb1w?=
 =?us-ascii?q?qQuh78GSKm/5ZOqZBWZua81ygaWBM6AtrptsKn/i+jYQ2sO4JKM4jgpUadnc?=
 =?us-ascii?q?Fs7s/gQhBEqG8WfCEf2f7bAZi0+G9leBhc+pynoeUdaF9zjaFLMv3a88SAdG?=
 =?us-ascii?q?gnlNQpyO+/5BpPeg9642uys55HfeRhEiTigbb99Ihi7rRjau9ULj4dlNqs/0?=
 =?us-ascii?q?AbCrGFSe+RRy2NoJFaTkAj568yt4pNt8Dletuw4+cJYXqr0Y6o3TbpDDDQ7K?=
 =?us-ascii?q?G81/9HktQPCTQSU+HQRVHgdnwdSDAjE6BH6WYrxsjf/u+Fg1iSWIdH6QLYpU?=
 =?us-ascii?q?jmk8qxlSgLniD0fOjA57m/Zl9BwgqxYrhKguxNwzJXZb5uJOPp8ZK7RYc8WS?=
 =?us-ascii?q?XRHU81MVyJBGIS8b44XAuYPOuhYqI/9p0AQohSgHgmgHP7kxCJUhnDow601z?=
 =?us-ascii?q?eIhGhzY0Qc9G94BvmnaoND7OKwPVu2117XIwivdb/xI3zfx8o3IchcnofGXQ?=
 =?us-ascii?q?71/b9HRxFI0GAzfkFqQsozkPyiJ1usTtmib9PBsWv6oi24isgx8pCWkycgwh?=
 =?us-ascii?q?IfTnI0V1kzE+jtjwIYzPdC2RkB2bMKlHZZStiyWKZZ6T90hTmxovCs3xbILt?=
 =?us-ascii?q?YO1ciUKx5or2hrSZv6HfoWH4x/vSficLDN7iX9mZb+zmhm8/E69weP/Tsm5y?=
 =?us-ascii?q?EtGojZfntTCtH0BzQLf5taHR/dn/0qs2C6D2x3P5u1eLk05mrDXJpE7zrItl?=
 =?us-ascii?q?pcet1nIEDXsl0XslqCWc10p+u2v6+v6fLrrvoScN4poigHmNaQuh9C/Dfw4M?=
 =?us-ascii?q?gcQW2ib/vyx26H58k3iXLpKi+Y2n63dvZ3ZOcgXuLS1AwlP3Yo58BmwFSmp0?=
 =?us-ascii?q?M8YnHkcMFJKZheHj5PzN17SJ/D4CO+zg1WqkDh12/DLJqDtDonXInXNkrrtZ?=
 =?us-ascii?q?6hx51BcxQYpzN1S5opYCrQbL/LyXk/xusbYDhg8MwGs2ObnFMty1p0AVmKJG?=
 =?us-ascii?q?KOZNaTSsVmT5u0xPeaMf5QYty3nJPc7/P7vjWQ5mUMDcqmsxpsbcmy3HvNjI?=
 =?us-ascii?q?0mBe3rjns8BEXsWvgo5VOHriFqCXiJPZ3a1RK884jA7CJm6DYfYXIysgLuB0?=
 =?us-ascii?q?zunHp1RfmBGEFeMEXX2eIqYR/cAciWSItVukm9Mab/0AZ4m3g2pnAv70KZ8a?=
 =?us-ascii?q?PvT8TEfrYjk1tV++6vUjx54vWhlCM+B1EmJTnpohSUZQDQq27hlpk5wwUvF1?=
 =?us-ascii?q?rJ31a92D9tWsrlsVQEhOJPHi6RBF93sVwSJVZ/JdW3nCJ3yGi08UN83hdoJZ?=
 =?us-ascii?q?V1wFs6KhBnOxDuxH7IQjPqAA5liofGU5GT4O8sokyWO76ImlVRzGqNy?=
IronPort-Data: =?us-ascii?q?A9a23=3A+C7RH6DDAFAGUhVW/wPhw5YqxClBgxIJ4kV8j?=
 =?us-ascii?q?S/XYbTApDMrhTJRzDdMW2CGPvuDYWvzfd5+aYm0o01TvZLcztBhOVdlrnsFo?=
 =?us-ascii?q?1CmCSbm6XZ1Fqp7Vs+rBpWroHlPsoNON7EsEOhuFiWF/kb3buC4xZVB/fjgq?=
 =?us-ascii?q?oTUWbas1h9ZGFcMpBcJ0XqPqsZh6mJaqYHR7zCl5bsel/bi1GqNgFaYBI61B?=
 =?us-ascii?q?5Wr83uDtNyq0N8RU8dXifpj5DcynFFNZH4TyD3YEpf2fmVUNrbSq+frx7ii9?=
 =?us-ascii?q?WbCrkZ9UonjlL+9eEQHWa/JIQWLkTxdXK3Kbhpq/3R0ifl9bqBBLxkJ49mKt?=
 =?us-ascii?q?4kZJNFlroC9VwoveKjLnv8QXgJwGShzJrxd5LLCOj60tsn7I0juLyK1k6kxX?=
 =?us-ascii?q?BBnVWEf0qMtaY1UztQJLzsRaTiHhvmq2/SqTeJwgdw5K8vmN59ZvWtvpQw1p?=
 =?us-ascii?q?95OrYvrGv2MvoAehm1twJ4QdcsyrvExMVJHBCksqTUWUrvPNK8DoQ=3D=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3A/jzzhqGS4gMq7XqopLqE5ceALOsnbusQ8z?=
 =?us-ascii?q?AXPidKOHhom62j5qWTdZsgvyMc5AxxZJgso7290cq7MBHhHOBOirX5VI3KND?=
 =?us-ascii?q?UO01HYT72Kg7GD/9TnIUPDHvs378tdm18UMrLNMWQ=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AFBQCTsU1h/0LhJQpaHgEBCxIMQAm?=
 =?us-ascii?q?Cc4F/gU2VSJ4TCwEBAQEBAQEBAQgBQQQBAYdGJjgTAQIEAQEBEgEBBgEBAQE?=
 =?us-ascii?q?BBgQBgSOFaQyCNSKEH14BFWsmAQQbE4JXgX6xFYEzGgJlhGmFDwkBgTCBZoQ?=
 =?us-ascii?q?QVEmCc4YMQ48/BIohNjGBCwsEaZI2DyqLf59qBwODLYkslSMvFJV6A5EMliK?=
 =?us-ascii?q?gLzeEUQIEAgQFAhaBeIF9cFCCalAXAo47Fo4ugSwCBgsBAQMJkRyBEAEB?=
X-IPAS-Result: =?us-ascii?q?A2AFBQCTsU1h/0LhJQpaHgEBCxIMQAmCc4F/gU2VSJ4TC?=
 =?us-ascii?q?wEBAQEBAQEBAQgBQQQBAYdGJjgTAQIEAQEBEgEBBgEBAQEBBgQBgSOFaQyCN?=
 =?us-ascii?q?SKEH14BFWsmAQQbE4JXgX6xFYEzGgJlhGmFDwkBgTCBZoQQVEmCc4YMQ48/B?=
 =?us-ascii?q?IohNjGBCwsEaZI2DyqLf59qBwODLYkslSMvFJV6A5EMliKgLzeEUQIEAgQFA?=
 =?us-ascii?q?haBeIF9cFCCalAXAo47Fo4ugSwCBgsBAQMJkRyBEAEB?=
X-IronPort-AV: E=Sophos;i="5.85,319,1624320000";
   d="scan'208,217";a="411847899"
IronPort-SDR: 
 4FlO+vFIti2NDbKa9RBJG4EC5htjcMfgIgxVaxUhmIyhSv7xHnGLHLSYXNR9HwOrtmHsZmG+0P
 f0tdfrEw3ZNw==
X-IronPort-AV: E=Sophos;i="5.85,319,1624320000";
   d="scan'208,217";a="13808190"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto -third party licensimg
Thread-Topic: #yocto -third party licensimg
Thread-Index: AdexMv5EEAx8kgB1TNqbL3bZkvnz9g==
Date: Fri, 24 Sep 2021 11:10:22 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
Content-Type: multipart/alternative;
	boundary="_000_ecb7ceb20b4b4a36a4033ddf4c914a36baesystemscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Sep 2021 11:10:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54842
Message-Id: <20210924111029.95E55C433F5@smtp.lore.kernel.org>

--_000_ecb7ceb20b4b4a36a4033ddf4c914a36baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Hello:

I am running zeus 3.0.4...

A vendor has supplied us with a generic license.txt file, which we were abl=
e to add to the acexpci recipe we use to build in their package.
The license provided to us by the vendor is not part of the generic license=
s list that yocto recognizes.

We get a warning though which says:

WARNING: aiox-defaultfs-1.0-r0 do_rootfs: The license listed DataDeviceCorp=
oration was not in the licenses collected for recipe acexpci

Though the warning occurs, I can see the license.txt being saved inside the=
 rootfs on and is saved under tmp/deploy/licenses/acexpci.
I've been trying to get rid of this warning when the image builds, but I ca=
n't seem to find anything in the manuals or online.

The one solution I found says : Add LICENSE_PATH +=3D "${LAYERDIR}/custom-l=
icenses" under conf/layer.conf, this does not resolve this warning.

This is a new item being added to our Yocto build.
The Data Direct vendor does not submit their code to Yocto because they sel=
l thier code.
We are adding code to Yocto that has a private license and we are attemptin=
g to have Yocto accept the license, is this proper way to handle this ?

Can you tell me the proper way to add a custom license to a recipe in yocto=
 ?

Thanks,
Steve

--_000_ecb7ceb20b4b4a36a4033ddf4c914a36baesystemscom_
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
	{mso-style-type:export-only;}
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
<p class=3D"MsoNormal">Hello:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am running zeus 3.0.4&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">A vendor has supplied us with <b>a generic license.t=
xt</b> file, which we were able to add to the acexpci recipe we use to buil=
d in their package.<o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"color:#1F497D">The license provide=
d to us by the vendor is not part of the generic licenses list that yocto r=
ecognizes.<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We get a warning though which says:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><i><span style=3D"color:#ED7D31">WARNING: aiox-defau=
ltfs-1.0-r0 do_rootfs: The license listed DataDeviceCorporation was not in =
the licenses collected for recipe acexpci<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Though the warning occurs, I can see the license.txt=
 being saved inside the rootfs on and is saved under tmp/deploy/licenses/ac=
expci.
<o:p></o:p></p>
<p class=3D"MsoNormal">I&#8217;ve been trying to get rid of this warning wh=
en the image builds, but I can&#8217;t seem to find anything in the manuals=
 or online.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The one solution I found says : Add <b>LICENSE_PATH =
&#43;=3D &quot;${LAYERDIR}/custom-licenses&quot;</b> under conf/layer.conf,
<b><span style=3D"color:red">this does not resolve this warning</span></b>.=
 <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">This is a new item bei=
ng added to our Yocto build.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">The Data Direct vendor=
 does not submit their code to Yocto because they sell thier code.<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">We are adding code to =
Yocto that has a private license and we are attempting to have Yocto accept=
 the license,
<b>is this proper way to handle this ?</b><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><b><span style=3D"color:#1F497D">Can you tell me the=
 proper way to add a custom license to a recipe in yocto ?<o:p></o:p></span=
></b></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_ecb7ceb20b4b4a36a4033ddf4c914a36baesystemscom_--

