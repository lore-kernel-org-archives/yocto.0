Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E750C433F5
	for <webhook@archiver.kernel.org>; Tue, 22 Feb 2022 19:53:22 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web09.2372.1645559601188514459
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Feb 2022 11:53:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=BN/aFMDi;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1645559601; x=1803239601;
  h=from:to:subject:date:mime-version;
  bh=1PsUz1NLavrV9CH7grw2QTWiamAgSmTXumoYqSp7xPo=;
  b=BN/aFMDiQG6NDYUMfspn7NXuH2WlJSV4zp1HeBxM8D4roFIeTgVO5jeT
   pBQVTn694jSEON7AQ+NxS0K7o3S2IQYfEzCS65NhZBxm/vWOHPhJOFY/c
   2IcnXfzqA46Br7qrblNmpF5SorpXoSqZ0j1t6FMXYXgY1waYPnO7/B+0r
   Y=;
IronPort-SDR: 
 z+oUxxzhFGKOkfubSICJ/TaolNBtYzLYYdb2735hjiYkzW8W0kzujUVyNBxNUdJdJoy+FEcPoj
 pO+t7m+KiJsA==
IronPort-PHdr: =?us-ascii?q?A9a23=3AaoWCARBukTofVvxdWS/wUyQUCEQY04WdBeb1w?=
 =?us-ascii?q?qQuh78GSKm/5ZOqZBWZua83ygOQFtyGsboE07OQ7/q5HzRYoN6oizMrSNR0T?=
 =?us-ascii?q?RgLiMEbzUQLIfWuLgnFFsPsdDEwB89YVVVorDmROElRH9viNRWJ+iXhpTEdF?=
 =?us-ascii?q?Q/iOgVrO+/7BpDdj9it1+C15pbffxhEiCCybL9sMhm6twrcutQZjYd/Kqs91?=
 =?us-ascii?q?AbCrn9Ud+hL329lKkyfkwvm6sus4JJv9jlbtu48+cJHTaj0ZbkzQ6ZCDDQhP?=
 =?us-ascii?q?WA15cnrugfGQACS+HYSUXgYnwRRDQTd4x70Qpn+si3htupgwyaaJtH5Tao1W?=
 =?us-ascii?q?Tu58ahmTgLjhTodOD449GHXjdFwjL5erRm8qRFz35LYbYeIP/d4Y6jTf84VR?=
 =?us-ascii?q?XBZU8hRSSJPH5+8YYUMAeoAIelXoJLwqEESoRu8HwSgGP/jxiFOi3Tr3aM6y?=
 =?us-ascii?q?eMhEQTe0QAuGNwOt3LUrM7rO6gMSuC51LTDwyjfb/xIxzfy9o7IeQ0/rPqRW?=
 =?us-ascii?q?b5/f9ffxUwhGwjYiViQspDlMC2L1usTtWiX9e9gVeWpi248tQ5+vCOvy9w3h?=
 =?us-ascii?q?YbTmI0V0VDF9T5lwIkrIN24U1R3bsKjEJtVriyXMZZ9Tcw+TW9yoik61qEGt?=
 =?us-ascii?q?oChfCgM0JkpyRDSZuCGfoWK4x/vSvudLCl7iX9lfL+yiBm//VWuxOD8Wce4z?=
 =?us-ascii?q?VJHoyhFn9TDt30BygLe58yER/Z+40qtxDmB2gbO4e9HOUA5jbfXJ4I7zrM+l?=
 =?us-ascii?q?Jcfq1nPEyv4lUnsjaKbd10o9vW05+j9bbjrqYWQOoBuhg3jMqkjnNG0D/4iP?=
 =?us-ascii?q?QgURWeb/Pyx1Ljk/ULkXrpHluY2kqzFsJDCIsQbu7K5DxdV0ok97xa/CC+r0?=
 =?us-ascii?q?NIYnXkBNl1FfQmHgovpNl3SPPz0EO2zg1K2nztx3P/JJKPuAo7NL3jYjLfuY?=
 =?us-ascii?q?7N961VGxAUvytBf4opYCrAHIP3tRk/8rMHUAgMjPwG6wevrEshx24cQVG6VA?=
 =?us-ascii?q?6KUMbvesVqS6eIuJ+mMapUVuDH4K/U9/P7ukWE2mUEDcqmvx5cXbXe4HvJ9I?=
 =?us-ascii?q?0qHf3XsmcwMHnwQsQUgV+zriEaCUSJNaHa3RKIw/C00CIWjDYvbXICinKSB3?=
 =?us-ascii?q?DunHp1Rfm1HCleMHmv0d4WDQPoMbCOSItR9kjwfT7SgS4gh2g2ytA/907pnN?=
 =?us-ascii?q?O3U+i8Gup3/yNh5/erTlQs99W88M8PImXCKRH1ztmcJXCMtmrF4qlB60k2E0?=
 =?us-ascii?q?6Vzn7pfD9MZr6dYVQwmMrbYzvdmEJbjXQndec+TT1SrScngBis+GIEf2dgLN?=
 =?us-ascii?q?gxYHNO5gx3Ym2KRH7ILmrrDL9R0z5mdlTClPNpw1XvAkqwmiUIrT9BnP2Srn?=
 =?us-ascii?q?b9k6wXWHMjClEDPxPXiTrgVwCOYrDTL9mGJpkwNCGZN?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2DoAwCVHvlh/0LBJQpagQkJgVGBIYI?=
 =?us-ascii?q?FgU6Sbp83gXwLAQEBAQEBAQEBCAFBBAEBiGcmNQgOAQIEAQEBEgEBBgEBAQE?=
 =?us-ascii?q?BBgQBgRuFaQyCNSKEH14BDAlrJgEEG4J9gg6wFoEzGgJlhGqFEwkBgTCBZoV?=
 =?us-ascii?q?Egn+GF0OPPwSRMXSBDUyCHZ9XoFMHA4NGn0swFZZOA5E2LZYdIKEphHkCBAI?=
 =?us-ascii?q?EBQIWgWIBghNwgzpQFwKcfoEsAgYLAQEDCYw8gRABAQ?=
X-IPAS-Result: =?us-ascii?q?A2DoAwCVHvlh/0LBJQpagQkJgVGBIYIFgU6Sbp83gXwLA?=
 =?us-ascii?q?QEBAQEBAQEBCAFBBAEBiGcmNQgOAQIEAQEBEgEBBgEBAQEBBgQBgRuFaQyCN?=
 =?us-ascii?q?SKEH14BDAlrJgEEG4J9gg6wFoEzGgJlhGqFEwkBgTCBZoVEgn+GF0OPPwSRM?=
 =?us-ascii?q?XSBDUyCHZ9XoFMHA4NGn0swFZZOA5E2LZYdIKEphHkCBAIEBQIWgWIBghNwg?=
 =?us-ascii?q?zpQFwKcfoEsAgYLAQEDCYw8gRABAQ?=
X-IronPort-AV: E=Sophos;i="5.88,333,1635206400";
   d="scan'208,217";a="455221322"
IronPort-SDR: 
 CLmHyUjB/zgsYmw25yiouj9kCg5T4u6Jr7IdI6HqCaG3diprzDHpoBhtAiBjMXNU6+AJlyszxl
 XAMmeHeu3pU1JOvzJ1X6v7HeLwFezDCHw7Exbf424HY1C9xn3gL3HMcxe/4CHqtNYkNI26Cbeq
 OCl/5Z3ig8DLlSus5qO1bTUZkft7zKwxQlODcsyWXjzvvOEUqGZO5yizWLiEsbqdwibdbNl08y
 PO09eApZWp2w58R63dQdvTvzYQ+X9AIuXIk7oCEZl2HZgAmkYaQR5dYRfQj2wfQMvO8MhGBWG3
 EpU=
IronPort-Data: =?us-ascii?q?A9a23=3A0+3oMKJEbQbdYVdhFE+R7ZclxSXFcZb7ZxGr2?=
 =?us-ascii?q?PjKsXjdYENS1D0Gz2QXCmnUM6ncMWDwLo13O4Wz8E0EupSHz99jGVY5pCpnJ?=
 =?us-ascii?q?55ogZOeXIzGdC8cHM8zwvUuxyuL1u1GAjX9BJtcokH0907F3ofJ/SEUOZGgH?=
 =?us-ascii?q?tIQOcacUsxDbVYMpBQJ1XqPr9UEbrtA2rBVNe8sVeTa+KUzMHf9s9J93/l9B?=
 =?us-ascii?q?6ir8HuDt9yq0N8UU8BXiVmmYTbje3cp4JI3fcldLlPXZqVxJb7nH7uYir6++?=
 =?us-ascii?q?m/d+RRrENSijrL9cURMRLPOVeSMoiMOHfP9xEEc/2priftT2Pk0MC+7jx2Sg?=
 =?us-ascii?q?91vxdMLsJu2UgokJYXGkekGQgJEHiRle6ZB/dcrJFDk6Z3KkRyeLiSEL/JGS?=
 =?us-ascii?q?Rte0Zcj0vdwCn1J3fgZMywWKAGEjP6x2Ki8SORnmoIkNsaDAW+1khmM1hnWC?=
 =?us-ascii?q?fojWsCeG/iRo9Bf2Ds0gMMIB/HZe84fajMpahncCyCj82w/UPoW9NpETFGmG?=
 =?us-ascii?q?9GAlG+omA=3D=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3ApA8vW6ltCFZ20BhLc87BYs/Ec2LpDfIa3D?=
 =?us-ascii?q?Abv31ZSRFFG/FwWfrAoBxRviWE7wr5P0tQ/OxoWZPwI080mqQV3WB8B9qftS?=
 =?us-ascii?q?jdyQ2VxeJZnOjfKl/bexEX94ZmpN5dmsFFYbXN5DNB4/oSlzPSLz9P+rW6Gd?=
 =?us-ascii?q?iT9IPjJitWPHlXgxwK1W1ENjo=3D?=
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: zeus intel preempt_rt config
Thread-Topic: zeus intel preempt_rt config
Thread-Index: AdgoJN4tbbvZlWHgT9+WV8upEw1+mw==
Date: Tue, 22 Feb 2022 19:53:18 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
Content-Type: multipart/alternative;
	boundary="_000_6794d070f3e8408fae5cdeed6f04dac4baesystemscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Feb 2022 19:53:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56250
Message-Id: <20220222195322.9E750C433F5@smtp.lore.kernel.org>

--_000_6794d070f3e8408fae5cdeed6f04dac4baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


How do override/modify the kernel .config file generated when building for =
linux-intel-rt (PREEMPT_RT) ?

I dumped /proc/config.gz and it is always the default configuration my chan=
ges/updates are never included.

I do not seem to have this issue when building PREEMPT_RT for Xilinx/ARM ..=
.

I am trying to add additional configuration for docker support (missing ele=
ments seen by /usr/share/docker/check-config.sh).

Thanks,
Steve

--_000_6794d070f3e8408fae5cdeed6f04dac4baesystemscom_
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
<p class=3D"MsoNormal">How do override/modify the kernel .config file gener=
ated when building for linux-intel-rt (PREEMPT_RT) ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I dumped /proc/config.gz and it is always the defaul=
t configuration my changes/updates are never included.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I do not seem to have this issue when building PREEM=
PT_RT for Xilinx/ARM &#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying to add additional configuration for dock=
er support (missing elements seen by /usr/share/docker/check-config.sh).<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve <o:p></o:p></p>
</div>
</body>
</html>

--_000_6794d070f3e8408fae5cdeed6f04dac4baesystemscom_--

