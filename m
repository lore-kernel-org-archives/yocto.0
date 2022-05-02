Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C634C433F5
	for <webhook@archiver.kernel.org>; Mon,  2 May 2022 07:47:47 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (NAM11-BN8-obe.outbound.protection.outlook.com [40.92.20.74])
 by mx.groups.io with SMTP id smtpd.web11.7885.1651477664909966647
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 May 2022 00:47:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=WtCCs+eX;
 spf=pass (domain: hotmail.com, ip: 40.92.20.74,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P8jmzvcOhHaO3SGrBP6s5I4jz9otAH/RszwK7cyYqRx1bkpku7jj1yUBxF5xIozAe4pJYC7zSA97xpdmMZb65nOWHCBA8DgGy9OeXKVXFvQpniKTLE7ztrtsVOFgwZvIb14wYnUPie8iRT4uRAd82NGwO8+P8P6J4tDgx6bxTdJuU4d9YW4lQFUxxVDrGtR3TjhWmCk6K73VOcozczOvXCaHxA7QqV//FFjs2Et7SqjqXJBM/uhGDv7+rx2TLz/iYWE5PNEvAdWLObL5+J4PtnHfb8PTMmH8N3MIJ9KxiJnMZHu/FSj9d2O1A4ycsYdT8xpk9TmORpZMbQcTQHL9ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c5WS1GbJIR7SvPiAYTlXEOwIX+uy1q4x7bxEyegbwwU=;
 b=bNOWpULPczvpGDsQYh4/O2XrC/+MZeRNqWvPLMggtrXZHbiKhLMWCuwPqU+TO0h5cCc/wuHXdfclNrDM3wImLClFPVw1dNgrETwclD183B/PPKDHeBRRkk9kW9dgPUSlNTa6WuNxFrQpJp86QAXK6uUGxgtAQEeotDrrdyy8Qs5yvFvwy4vWBtwqIH7pH/Y7SH072vkLv2eStbCuFuouAt1J9XJ0qfGCQbxRIm5lnKWBukS2gpmXtrgBx9rTXyAItgPJ700A7ZI+S4gpR7qUuoOz+BpS6teL0fwLVM33lh+yMEfSb9nhtKxqT/fqmCbbxRm7iVWqEK4ZldlMkykONg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c5WS1GbJIR7SvPiAYTlXEOwIX+uy1q4x7bxEyegbwwU=;
 b=WtCCs+eXaPX/OcbLiKYUOdGQmGGA9iIfOkSF7yxLq54YciThCXS/3/esNvmVAkxEDXgOjmBnu9+4VIWC+uUs9bIRQn+u5OCTf1mALF0By8MPGihtY3ilp6gunJ6f9Xt7ely3NxxPU9tdNHnY6JjU6OQ3qJo2gi8HTvMNsk+H+g+4W9zdCx6EgPTSIgb2Fi4FduzmnA13UTIv2HDs0WMuQZcV7yBI1+xZs7bVPMge3G07sR6P3zFuTwQAUrWPfBS+cCFmDx7SBicH+6KFwE75mmOTh3O+FcR2tE5acfTg8HECH60c6ekehGYFt+f55UsQVkD6jhV7X9SEp2yfbfJqaw==
Received: from DM8PR16MB4357.namprd16.prod.outlook.com (2603:10b6:8:30::8) by
 MN2PR16MB3134.namprd16.prod.outlook.com (2603:10b6:208:154::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.13; Mon, 2 May
 2022 07:47:42 +0000
Received: from DM8PR16MB4357.namprd16.prod.outlook.com
 ([fe80::2981:ab14:9377:80d8]) by DM8PR16MB4357.namprd16.prod.outlook.com
 ([fe80::2981:ab14:9377:80d8%5]) with mapi id 15.20.5206.024; Mon, 2 May 2022
 07:47:42 +0000
From: Edgar Mobile <heideggm@hotmail.com>
To: Scott Murray <scott.murray@konsulko.com>, Joel Winarske
	<joel.winarske@gmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding systemd to yocto
Thread-Topic: [yocto] Adding systemd to yocto
Thread-Index: AQHYWyPJTFS1N8NLPke707Qwq/uIma0GbgMAgACRQgCABDuUgw==
Date: Mon, 2 May 2022 07:47:42 +0000
Message-ID: 
 <DM8PR16MB4357D696EB8115CD320E035BC7C19@DM8PR16MB4357.namprd16.prod.outlook.com>
References: 
 <DM8PR16MB4357BA2349F9D42C1786A5E8C7FD9@DM8PR16MB4357.namprd16.prod.outlook.com>
 <CABKMkPLwm1e_S+pdqw4j_J-oVokVWphdXiMAkiaME3MZvnyg3Q@mail.gmail.com>
 <5c7ccb89-5af6-78f8-f6b5-416d8e83369@spiteful.org>
In-Reply-To: <5c7ccb89-5af6-78f8-f6b5-416d8e83369@spiteful.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [19ff6yRY9DsBxZ5FW3oY5jCjvfUZdKzZ]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ad858f3e-7c51-4ae0-1b3a-08da2c1009c7
x-ms-traffictypediagnostic: MN2PR16MB3134:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 kyPYZwKAPbWzn3ZexzJqt8OaUGtQzCoZQ8rmTn7GlSFqp/g4y3RXTrMtkJJmIMI0xROpL862kdUA4dlNEYARIVnjfAUZBnFMHCFhUN1dDnu3DIS3PqBi1jBtawMy8XgF3HFo8UDb6JYUThPRDyEAN3c6mKjrOdDCywLXjj6iMVFbkG2WSayEhb8btXwmQsPsnuzDvucQs5P6qUOmAorWBRLlOp1mo1rq0z1csHNKS18aD/BuIMsqSszx6iVKimkpYhyEBY1bQjcQWWlobdp5uvh1Obp4t4CGcENl1CMPF5YXPTa5kwXCGIj01dbR5v0gnd5IRlRNE/VmsuV0wWyw009NAM6i6scmi0QIPCxLNcgYlV5q67w7+BZUawELiTyItX7ox4AbsLVY8/RAwBFZ9OO4cs4oOGMXJ4zdqbrmF6MH5jN0nGKTuJ0udMpwbAq7NBvd/eVzskct8FjY7f7VtAjuK0Hzv6VshDEPctKWQnf3Nrfbw+51aqIxtCNRQu0ovSwrLderLUQsqieIJQKh7s8+Rh3FZjT759f4u4ktQkSXOCZ6lmeQLVXnGHBtipqqTWTV0WRqC7qS0ByIgl/zkbKkUlp/DRCJ5PP6YmRRpL0+HwO7+DRr/k54tag8Cuot
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?QKN4K6kcfDLtrGuRcu9eU990ZS2xrZiWGC+rPFko0IjTejJXNIxiWNdvE4?=
 =?iso-8859-1?Q?Ac8MZ5Vg/j7HbNpzOmy3+e9YvbGKS/SHsWxmNTXZ5NXLjfjwhBBhGh0na1?=
 =?iso-8859-1?Q?wcl3KssyfRv1iavN1UL4dq1umlOvHx1TCRybTlVo7FhJzrjjZT5pw6Fjwf?=
 =?iso-8859-1?Q?Q89QqdDtH8ZKpEk5iKVOz4CSHppo/8dyIvwe7b6RWh+Fl3ysOPoHyHwMQp?=
 =?iso-8859-1?Q?hd/A3IowjYhR/wnYEWgTE0rBdeYCVgewFaIvQNZnTOKlSvLQGuBu9RVc5S?=
 =?iso-8859-1?Q?4MVW6K/hnH2sNqk+EDrv42At/nK4rr8YV1ndkvh685ehjLlqmaGRgcAF8H?=
 =?iso-8859-1?Q?t5qn9lvp6B17uDdi/sd7OPxlc2esqBmBJ9HjNebz/WC9oSMrVFsYigqhk6?=
 =?iso-8859-1?Q?Bo25jUkvJq4wpG0DHCDRdQwIPIW5fyoyO8q+oWmpJaofKGeilEjUOsrFen?=
 =?iso-8859-1?Q?UhIlxLp3eDSdLg1t+fHftZ9W8LdQ13WyZwfxSO+LkB+5TtVNygg77p0KGY?=
 =?iso-8859-1?Q?d3Q886MpjsxlwRkllw2JnMSY+sTRdkUrcmAPxaFiG1BnVPERd90TyvJyxa?=
 =?iso-8859-1?Q?T+u5PH+5msul8A1KRImDAlkEYspCfl8XX/VhVNGwkunUUf5mdkOdtooNhB?=
 =?iso-8859-1?Q?EWFe3fXWT4LIsHCwpF9TpnMYGJiswI6bvcX72Rx4VOAlt3LO9qHO/xu+N3?=
 =?iso-8859-1?Q?qgrNRBg0tFdC6J8Jzkmk8VMTTEkSFvmWOQ5nEETawDJnW00LSKBbit77nM?=
 =?iso-8859-1?Q?C4xHQWJk51opsHWLb0+ChdTmTDMnb60Am9nIt01JNIl9H5iENuGe9/eYhp?=
 =?iso-8859-1?Q?YIficFtGrGavNFNWxVQVXh5jLKzA3kBX7eEyFXOMJxFzrC0J/Mgfg03qER?=
 =?iso-8859-1?Q?dEOxvk69SUzm107u0bRLuxdMM28yg/svYTqzLgC7CTnNc1TpfQEtOGx24O?=
 =?iso-8859-1?Q?2QS1SYwOhCDLfk/YXavpDTmUYM6bqUfd2WoZ308b+6NzgecFQmREB3pBE6?=
 =?iso-8859-1?Q?7py6iNcc9rEcz97fi3q0fD93cA/k4Upq1w9Pp2qVMBbCOEEoK+8my7TnzR?=
 =?iso-8859-1?Q?H32nf4ylStjmnstddz9MelGXl0EsXGLwuQrApvSMUT3QpHW1ysNDgWu7Iu?=
 =?iso-8859-1?Q?0rQya1+pD8kyNrqShOIMuuefAk/iZnpZkM79qV1NRPwweKapEiSuOMVZG7?=
 =?iso-8859-1?Q?HeEpEwgH3m69EHdnE5Uro7QgQAKOSIGKtRCqgLfuTchNSDUHWrx0sAOvTI?=
 =?iso-8859-1?Q?76rwx34BLfB5+HoB2hM4CGG5GLgV3aeHUI6WulT57YknHyMSJ1CfCQ8y6j?=
 =?iso-8859-1?Q?UH4/FMVSw+KyePOY/2rm6cCnUIbfzlGATgNxF5EB87+YDyI1yhdXbfoMSB?=
 =?iso-8859-1?Q?z5XJ4xR9jGY/03eoUD0ortvkGzq3pmMzUgpV/ex63ZbYBeYeHeh/BjBoEC?=
 =?iso-8859-1?Q?VndKnnPmRnOzrtqHE5x+5zc6YQsf5hgk53/ibw=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_DM8PR16MB4357D696EB8115CD320E035BC7C19DM8PR16MB4357namp_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-5ce7b.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR16MB4357.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 ad858f3e-7c51-4ae0-1b3a-08da2c1009c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2022 07:47:42.0863
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR16MB3134
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 02 May 2022 07:47:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56967

--_000_DM8PR16MB4357D696EB8115CD320E035BC7C19DM8PR16MB4357namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I added

INIT_MANAGER=3D"systemd"

To local.conf. Now it complains that weston-xwayland is missing which sound=
s weird for core-image-weston.
Am I missing something?

Regardss

________________________________
From: Scott Murray <scott.murray@konsulko.com>
Sent: Friday, April 29, 2022 3:07 PM
To: Joel Winarske <joel.winarske@gmail.com>; Edgar Mobile <heideggm@hotmail=
.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding systemd to yocto

On Thu, 28 Apr 2022, Joel Winarske wrote:

> Line 30-36 include changes to convert a sysvinit image to systemd.
> https://github.com/jwinarske/manifests/blob/honister/conf/rpi64_config#L3=
0

The INIT_MANAGER variable added in zeus removes the need to tinker with
DISTRO_FEATURES and VIRTUAL-RUNTIME* variables, all it takes to use
systemd is INIT_MANAGER =3D "systemd". See:

meta/conf/distro/include/init-manager-systemd.inc

for what it tweaks.

Scott

--_000_DM8PR16MB4357D696EB8115CD320E035BC7C19DM8PR16MB4357namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I added</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
INIT_MANAGER=3D&quot;systemd&quot;</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
To local.conf. Now it complains that weston-xwayland is missing which sound=
s weird for core-image-weston.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Am I missing something?</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Regardss<br>
</div>
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Scott Murray &lt;sc=
ott.murray@konsulko.com&gt;<br>
<b>Sent:</b> Friday, April 29, 2022 3:07 PM<br>
<b>To:</b> Joel Winarske &lt;joel.winarske@gmail.com&gt;; Edgar Mobile &lt;=
heideggm@hotmail.com&gt;<br>
<b>Cc:</b> Yocto-mailing-list &lt;yocto@lists.yoctoproject.org&gt;<br>
<b>Subject:</b> Re: [yocto] Adding systemd to yocto</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">On Thu, 28 Apr 2022, Joel Winarske wrote:<br>
<br>
&gt; Line 30-36 include changes to convert a sysvinit image to systemd.<br>
&gt; <a href=3D"https://github.com/jwinarske/manifests/blob/honister/conf/r=
pi64_config#L30" data-auth=3D"NotApplicable">
https://github.com/jwinarske/manifests/blob/honister/conf/rpi64_config#L30<=
/a><br>
<br>
The INIT_MANAGER variable added in zeus removes the need to tinker with<br>
DISTRO_FEATURES and VIRTUAL-RUNTIME* variables, all it takes to use<br>
systemd is INIT_MANAGER =3D &quot;systemd&quot;. See:<br>
<br>
meta/conf/distro/include/init-manager-systemd.inc<br>
<br>
for what it tweaks.<br>
<br>
Scott<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_DM8PR16MB4357D696EB8115CD320E035BC7C19DM8PR16MB4357namp_--

