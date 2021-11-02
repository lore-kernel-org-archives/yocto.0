Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1CDDBC433F5
	for <webhook@archiver.kernel.org>; Tue,  2 Nov 2021 16:23:53 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web08.136.1635870232233975438
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Nov 2021 09:23:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=ZmNsXhbU;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1635870232; x=1793550232;
  h=from:to:subject:date:mime-version;
  bh=4VfS4FdaONMD2bvkWZJLgJWZn0hfbVUIOBVynq+oZTo=;
  b=ZmNsXhbUDz+VybV8piFOoO3zbo0Rj7XVj7GZmHm0uAhNmQYGJZ98PP06
   5LCO55u6z8LVo4Ya8RaDRrs+jHSB2G6fDmupWlXDF+2o09A1v8APyGzyR
   Qd8VSIEh9wNyr3eghcBdevLYoWlaQwNgIbFVuLjt9XddePOGBRidWZvqw
   E=;
IronPort-SDR: 
 9gKd3ILX1n/vsfmkI3sHWEDH9M7japG28nVwXJRbbLt+oV95siJjQWFPNHJ6Amia3FYpYqf30W
 uE0bhvY93ZFQ==
IronPort-PHdr: =?us-ascii?q?A9a23=3ABtbWYBwUtB2i2bfXCzK8zVBlVkEcU1XcAAcZ5?=
 =?us-ascii?q?9Idhq5Udez7ptK+ZhWZva0m1gSBHd2Cra4e06yO6+GocFdDyK7JiGoFfp1IW?=
 =?us-ascii?q?k1NouQttCtkPvS4D1bmJuXhdS0wEZcKflZk+3amLRodQ56mNBXdrXKo8DEdB?=
 =?us-ascii?q?Aj0OxZrKeTpAI7SiNm82/yv95HJbAhEmiexbaluIBmqogndqMcbipZmJqot1?=
 =?us-ascii?q?xfFuHRFd/pKyW9yOV6fgxPw7dqs8ZB+9Chdp+gv/NNaX6XgeKQ4Q71YDDA4P?=
 =?us-ascii?q?G0w+cbmqxrNQxaR63UFSmkZnQZGDAbD7BHhQ5f+qTD6ufZn2CmbJsL5U7Y5U?=
 =?us-ascii?q?im/4qhxSR/ojCAHNyMl8GzSl8d9gr5XrA6nqhdixYPffYObO+dkfq7Ffd0UW?=
 =?us-ascii?q?3dPXtpfWSJCA4Ozc4QAAvEbMupErYnwvUcCoQegCQSqGejhyiVIhnjz3aAi3?=
 =?us-ascii?q?egvFgbG3Ao7H90QrnvUt835P7oPX+Cp0qbI0yvMb/VL0jrj9YPEdh4ur+yJU?=
 =?us-ascii?q?b5+bMHczlIvFx/bgVWOt4PlOSmZ1uEKs2id9OpvS/ygi3U8pg5quDeg2Nwsi?=
 =?us-ascii?q?4nShoIJ1F/E8D55zJwpKt2/TU52eNipG4ZfuC+GLYV5WN8iQ312tyYgzL0Lo?=
 =?us-ascii?q?ZC1cSYWxZkmxRPSauKLf5WW7x/gVOucJTh1iX14dLyxhxu8/lWsx+n+W8S03?=
 =?us-ascii?q?1tHrzdJn8fIu30O1BHe99WLRPR780y82jiPzxje5vxYLUwum6fWKYQtzqAum?=
 =?us-ascii?q?pcTq0jOHy77lF3rgKOKbEkp9eel5/7ob7n8u5ORN4l5gRzkPKs0gMywG+E4P?=
 =?us-ascii?q?xALX2ic5OuzyqXu/Vb8QLVWlv02lbTZsIzCKcQbuKG5BwhV354/5BmlFDepz?=
 =?us-ascii?q?NEYnWIDIV9Bex+Lk5blN0vIIP/iF/uwmE6jnylwx/HGJb3hHovCLn3YkLv7Y?=
 =?us-ascii?q?bl97EtcxBIyzdBZ+Z1UFqkMLO/vVkPrutHVDAU1PxKqz+vnEtlw14ITVXqKA?=
 =?us-ascii?q?qCDMaPStVGI5vgoI+mJfIIVoyr9JOY75/Hwi381g1odfa6v3ZsMdn+3AO9mL?=
 =?us-ascii?q?l6CbnX2nNgBCmcLvhEiTOP0jV2CSiRfaGq1X6I5/j07Ep6pDZ/fRoCxh7yMx?=
 =?us-ascii?q?Ce6HppKaWBaDVCBCnPod4SfW/cQcyKeOM9gkjsYWri9TI8hzQuutAj4y7V5M?=
 =?us-ascii?q?uXU5jcUtZX51Nh6tKXvkkR45Dt/E8O112CWU3oyj2QDWzguxqd9rEdhjFCZ3?=
 =?us-ascii?q?uIw1+1fHsBUz/dISRshc4/bxPB9E8r1WA/KYpGOUlnwEfu8BjRkBPc2xcQDb?=
 =?us-ascii?q?l05U+6+gw7O2WKBS/8orP3BTMgv7q/C0n63IsF70HvLz4ErhlQ9U9BTOGi9w?=
 =?us-ascii?q?KV48l6AVMbyj0yFmvPyJuwn1ynX+TLbpVc=3D?=
IronPort-Data: =?us-ascii?q?A9a23=3AOCduSKBVuxZe4hVW/wPhw5YqxClBgxIJ4kV8j?=
 =?us-ascii?q?S/XYbTApDglhWYPyGcfWzqEafePMzCkfIx1PIvkpxkB65CHzIViOVdlrnsFo?=
 =?us-ascii?q?1CmCSbm6XZ1Fqp7Vs+rBpWroHlPsoNONbEsEOhuFiWF/071aOC7xZVB/fjgq?=
 =?us-ascii?q?oTUWbas1h9ZGFcMpBcJ0XqPqsZh6mJaqYHR7zCl5bsel/bi1GqNgFaYBI61B?=
 =?us-ascii?q?5Wr83uDtNyq0N8RU8dXifpj5DcynFFNZH4TyD3YEpf2fmVUNrbSq+frx7ii9?=
 =?us-ascii?q?WbCrkZ9UonjlL+9eEQHWa/JIQWLkTxdXK3Kbhpq/3R0ifl9bqBBLxkJ49mKt?=
 =?us-ascii?q?4kZJNFlroC9VwoveKjLnv8QXgJwGShzJrxd5LLCOj60tsn7I0juLyG2kqw1V?=
 =?us-ascii?q?h5sVWEf0qMtaY1UztQJLzsRaTiHhvmq2/SqTeJwgdw5K8vmN59ZvWtvpQw1p?=
 =?us-ascii?q?95OrYvrGv2MvoAehm1twJ4QdcsyrvExMVJHBCksqTUVUrvPNK8DoQ=3D=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3Aq8IlTawxYe6k4fHltiCUKrPwRb1zdoMgy1?=
 =?us-ascii?q?knxilNoH1uHPBw+/rFoB1473TJYUcqN03I8OroUJVoKkmxyXca2+QsAYs=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2DECAAaZYFh/0LhJQpaHQEBPAEFBQE?=
 =?us-ascii?q?CAQkBFQmBUoEfGwIBgWKBTbNwCwEBAQEBAQEBAQgBEi8EAQGHVyY4EwECBAE?=
 =?us-ascii?q?BARIBAQYBAQEBAQYEAYEjhWkMgjUihB9eAQwJayYBBBuCaoF+rn+BMxoCZYR?=
 =?us-ascii?q?phQ+BOAIBAQGBY4U1gnqGD0OPPwSSI3OeNaAFBwODNJ5nLxWWDQORGIoqi2Q?=
 =?us-ascii?q?fpWICBAIEBQIWgXiBfXCDOlAXApx/gSwCBgsBAQMJkV+BEAEB?=
X-IPAS-Result: =?us-ascii?q?A2DECAAaZYFh/0LhJQpaHQEBPAEFBQECAQkBFQmBUoEfG?=
 =?us-ascii?q?wIBgWKBTbNwCwEBAQEBAQEBAQgBEi8EAQGHVyY4EwECBAEBARIBAQYBAQEBA?=
 =?us-ascii?q?QYEAYEjhWkMgjUihB9eAQwJayYBBBuCaoF+rn+BMxoCZYRphQ+BOAIBAQGBY?=
 =?us-ascii?q?4U1gnqGD0OPPwSSI3OeNaAFBwODNJ5nLxWWDQORGIoqi2QfpWICBAIEBQIWg?=
 =?us-ascii?q?XiBfXCDOlAXApx/gSwCBgsBAQMJkV+BEAEB?=
X-IronPort-AV: E=Sophos;i="5.87,203,1631577600";
   d="scan'208,217";a="422913272"
IronPort-SDR: 
 ofWrTaYjlNcb8hjBvJOiJhTSBW+X/IJ31PlkB/Ot2nHcUjOhYFy478a7Y+MDwbRXrFHk/60dz4
 CKEnCKSb1yEQ==
X-IronPort-AV: E=Sophos;i="5.87,203,1631577600";
   d="scan'208,217";a="16395782"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: yocto preempt-rt
Thread-Topic: yocto preempt-rt
Thread-Index: AdfQBVSS+xBN07W3QtaQoD00G0U6MA==
Date: Tue, 2 Nov 2021 16:23:47 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
Content-Type: multipart/alternative;
	boundary="_000_100826b456f94f78a8cce7c14a8056e1baesystemscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Nov 2021 16:23:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55215
Message-Id: <20211102162353.1CDDBC433F5@smtp.lore.kernel.org>

--_000_100826b456f94f78a8cce7c14a8056e1baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Is it true that no patch work is required if out under
.../poky/meta/recipes-kernel, there exists  a yocto-linux-rt_##.##.bb recip=
e that matches your kernel release?, and that it will build the full preemp=
tive RT Kernel ?

Thanks,
Steve


--_000_100826b456f94f78a8cce7c14a8056e1baesystemscom_
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
<p class=3D"MsoNormal">Is it true that no patch work is required if out und=
er <o:p>
</o:p></p>
<p class=3D"MsoNormal">&#8230;/poky/meta/recipes-kernel, there exists &nbsp=
;a yocto-linux-rt_##.##.bb recipe that matches your kernel release?, and th=
at it will build the full preemptive RT Kernel ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_100826b456f94f78a8cce7c14a8056e1baesystemscom_--

