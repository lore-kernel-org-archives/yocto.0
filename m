Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC320C433F5
	for <webhook@archiver.kernel.org>; Thu, 28 Apr 2022 17:19:46 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (NAM12-BN8-obe.outbound.protection.outlook.com [40.92.21.77])
 by mx.groups.io with SMTP id smtpd.web08.404.1651166378156487531
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Apr 2022 10:19:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=QTnuW0EF;
 spf=pass (domain: hotmail.com, ip: 40.92.21.77,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UG97Ea16SWNgS3hWjI3EoiKQU56HAwf97YEobnVmnUQinG4PRjEl2Sbol3nnP6+H1dRNUBiHQUfR6U3bmD4gXcwSQIK9sX3FvjlDBP1phDsfOBqluECDBtHF0CS0C4ueoIc+ROiopxfvSLbssqCwRd+veZNzGHJsGpSKJBoPQ2YTd0Lx6ClZjICCaCklJhM238PSxVM1hLm1kcxDaJaa2dlvVHiQiydvRjn5FVUIQM/9lag15UwuNzBInZ3ZRUTJcYkgwtfJKeraup82rYNHR3YWHYTqzy20xxOOWIz6ZHCMpnmQljpULDUxJ83imCpQmXfd+twL9EXkZAq4Y3oE+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DPBJ0/jA7Va/du5P5oHRsHjkPDiUEpxwtiO8tJZQZwI=;
 b=nGdGCuszYLBCpV0omV+wBbO+DQHGJvScFQLlqx30ttQV/OZoRjogUlMIUKr3u/lyYSZ2pgkE/Wjv8FoBJfmTB1CoUFwMRlh383eHw48D0vc+nX5ofZmwY378uWX0ZNM6RBXCvtvoyH4Qtyiwy7mtpTEKujLDryYIRx86DeyDLFgLGdZuspA+5p+YFFEFBk+blaBx0K5ggZhXLPTSksBBP5vcfA4BvAC6Cm8nC6xP/fpYjFgGL2Zgc1MK6w4DdJ2i75GVRlYgRoOtUEd8UnE28RygT+SD0/wTUyhfAXVv7vt5DA/gHeWdGs++lzfuL/gnmtkz/mIkIMv/4wBG9quPxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DPBJ0/jA7Va/du5P5oHRsHjkPDiUEpxwtiO8tJZQZwI=;
 b=QTnuW0EFavEpvtITgUAnCDwhOmJ4ZxN+aEUwfWTZs/bG8BljUpoIbJCcRk8N9Aa9Wz0m1jv0E6P4chvG8pmf2Z51Q4smLQOGhyEmhepf2z260GCk2WqptaF7shvOrizGu12vE5hd724WK+5pGRf+bPybP6yTDxc7rNB6anuTwNrmltRrccYvTKzKOSdyX1GJG6EJ1yJAVrlBRNiQ1uDPMNXLIPLzzUo7XTjiuM2r3ETDrAt2pv8KqZKmDu8LEL1q4hIIyLwb/oMh0DyxeJVpUIeGSUGQND5in10izJG9iWtlxg/v6aYTIXff5rlSwzctYfZi1XjWHa8HRwh0ZHMOYw==
Received: from DM8PR16MB4357.namprd16.prod.outlook.com (2603:10b6:8:30::8) by
 BN6PR16MB3058.namprd16.prod.outlook.com (2603:10b6:405:83::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5186.23; Thu, 28 Apr 2022 17:19:35 +0000
Received: from DM8PR16MB4357.namprd16.prod.outlook.com
 ([fe80::2981:ab14:9377:80d8]) by DM8PR16MB4357.namprd16.prod.outlook.com
 ([fe80::2981:ab14:9377:80d8%5]) with mapi id 15.20.5206.013; Thu, 28 Apr 2022
 17:19:35 +0000
From: Edgar Mobile <heideggm@hotmail.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Adding systemd to yocto
Thread-Topic: Adding systemd to yocto
Thread-Index: AQHYWyPJTFS1N8NLPke707Qwq/uImQ==
Date: Thu, 28 Apr 2022 17:19:35 +0000
Message-ID: 
 <DM8PR16MB4357BA2349F9D42C1786A5E8C7FD9@DM8PR16MB4357.namprd16.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-tmn: [WRSS6Fze1d1HfF7L+3jW+7FPJB7Ifjmr6AxAsoNfNwyqe4pmQdd528ltf/ftoKuw]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 60bf81da-1a28-4987-3f72-08da293b44bc
x-ms-traffictypediagnostic: BN6PR16MB3058:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 yy2UQu/04f+Ac7LDLV9WJ8Y1tvaVjLvyqjSe4VHyOhJmLCyXNb5tGBsjSx/DfFQRg9KaFC/zVj34JxqEGdTPqN3WNo4MXZcLNZK2i6VaZl1qDh4O8ewWjXu0K1hwjF/clVs0fx7p+LrgY0VxE6MbJEqMYsBf7nePKJA6k4jmHaLPeMdyBPV++cpxLlB1I5mipxBpMNvCIKZ5zsMrkGEV/rz1ofNOfgbaj/JyOfuwG8qzeap2CfyAA7oGIg1aBWoPmrxeSWRLFadAvV+e0Ck27V1xNskNmMguWP3iwdbAYdUD5wXdHlo/bB0IcPgK1zWAJnpWY6DFa1ud/NzTzbiXYEAVTpo09DLm8xjzBowEb4hkuKFRxBQfZussnCDo9aqPzWlrEnLLB3RfFJwV85vpH6bNNmBJ/VjOJlBbfILRSPIkCA6cybHjE05feb0oHbUKx4uFaJn/VpFVcxIhb/rcy3OkTqT2tAlF9Nv2aNG715ijZ45vBEuk4Xp8UHZk88LyxkRholx0CZ+zHEP7apARSIzkp53f1KF94hYV4pOHMVJjJFjiZ0I2jLfbM4JiizP6fOtLjmmlFqFRZH4lZfTWMA==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?GYuSfSUZCfiSEEXWzH7of8nQE91WFtkDND7Nm/rsYbwfL80Ws606j5cIPy?=
 =?iso-8859-1?Q?HrAHLbWpgAJFXNHcGx/g3eF2dDNnncb076Iop4EtEMYdWL2aPhruH2DR0s?=
 =?iso-8859-1?Q?mg2EjJe3gf2lX/jinUGbUNYmqgVgX34RcHn5tCSgWOexSG3Hrb1HPPJw7S?=
 =?iso-8859-1?Q?puIGb4XgZi4EKtnUn5l4klIU47oCbgjNeS7BHvEDmXHWr8DScyW48YFUAa?=
 =?iso-8859-1?Q?OFH+3pDuMCUJYPpJoxxV5KIUCT5WSSUg3enu9Ua3T9qllW02QhmXzso/MF?=
 =?iso-8859-1?Q?2GezmqpD1/4d3XRyXQb4RL41KECFX0upuaD9BEZys/byYaGHhYW42xgDn4?=
 =?iso-8859-1?Q?OnHq9Oq43FPTl6F5QmFiKlFTYlAOmIorM0U0WPkh/IkmY/ysdaTj0XkCJZ?=
 =?iso-8859-1?Q?zSL3+9L1S0vpLJfzEyVttHrLbz1eVq3oeV/BzObJIJb5PDaE6Bywcnq/cV?=
 =?iso-8859-1?Q?qct3Y8Jp70oChkXdeIoq5gJckL0f5ZA5RwWdG4yaVYYJHqk07H4BHCrt+H?=
 =?iso-8859-1?Q?npk5gt5q3Cdyh1QbkX1jopntVWXoZxCqYrNUDgkkef2TB27GpmSgAR1dI6?=
 =?iso-8859-1?Q?ThQUup4S6UtGLQNFj4vDtJr3OH88MwYroSTd05h4rq2QbU1xEIKmQ/YwTf?=
 =?iso-8859-1?Q?2zpw7q02+nwVcWU1UAn4Ans2xpAASRSpgm20eb8PxWw5ShfJVKniZlSGgr?=
 =?iso-8859-1?Q?Ga39lOd4cBuvotzj6eDOXNmfH18ui9sckJuFG3MfvJBdFEecF5bBSksrYA?=
 =?iso-8859-1?Q?g5DLuWYI74hK57iFCyvE/waXJcegnzWd3fNO0w9V88PfAotnZ6efsp7CJP?=
 =?iso-8859-1?Q?Zuv8dzHsho7QWbJUUnP+4cBRFp6t/8Rr8KimNUDIV7dB0wO2BWQtF0OXdA?=
 =?iso-8859-1?Q?U/xzvs9u2ZlekGClp/fBQqXyijyMDrBAhu+OX3QAF2FZS45iUdlw7Df3Xw?=
 =?iso-8859-1?Q?1eEC8sbeVp90joe7SoREBHXdl8P1ouHXEzsTo+4dqM1cba1e2hJqetwndc?=
 =?iso-8859-1?Q?XL9WH/YiVJVT3DZKiOUjacEsviw7wsGNIxeTA662ge+6GEavXF6+SF+8Ar?=
 =?iso-8859-1?Q?3eAH3/YFj0sgGl283AlmSK6/NzyKTPom40l0XY8nT4TcXn4CaVJ2OqrvSN?=
 =?iso-8859-1?Q?HI6HeHtlJxiVhsNcbLCW1x8MRYs4gwVzVR/05kPJ59YW5MzRD/iUY2dbGs?=
 =?iso-8859-1?Q?d5RDLfoAoOTtBUuFOaV3PG62RQFfCiXVNiLCmnAHEr1UZcOLzylqGJj9Vi?=
 =?iso-8859-1?Q?X8pbOG7jzX5riVrN8BxUgMVE2gfstaJqZTH5gXZyqKak1gnpOUwoTsoTBI?=
 =?iso-8859-1?Q?x9U9GvNgk5clD+udwulCzDE1MWjguMO1Amo3BtkXcOT1ksCGihqZrxB7mL?=
 =?iso-8859-1?Q?JbaBVFRwq0wZO2QrDGvakFqtJYwDKbsy+Tj2ijy85DG7b4fotbQbu8gBgf?=
 =?iso-8859-1?Q?A1VPJ3lv2wdEvqVOMWg9SeTO1fYJE0xcQ+paEZ3uZmVQl8fHQ5JARqhMCW?=
 =?iso-8859-1?Q?COix/zVJI/GUgt3wnC6INjvCrqU17KrMh8zhY3lyaJEg=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_DM8PR16MB4357BA2349F9D42C1786A5E8C7FD9DM8PR16MB4357namp_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-5ce7b.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR16MB4357.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 60bf81da-1a28-4987-3f72-08da293b44bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2022 17:19:35.8874
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR16MB3058
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Apr 2022 17:19:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56947

--_000_DM8PR16MB4357BA2349F9D42C1786A5E8C7FD9DM8PR16MB4357namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Greetings,

I tried to add systemd to weston-image-core by adding the following lines i=
n local.conf:

DISTRO_FEATURES:append =3D " systemd" VIRTUAL-RUNTIME_init_manager =3D "sys=
temd"

And indeed, bitbake seems to use them in somve way:

DISTRO_FEATURES=3D"acl alsa argp bluetooth debuginfod ext2 ipv4 ipv6 largef=
ile pcmcia usbgadget usbhost wifi xattr nfs zeroconf pci 3g nfc x11 vfat se=
ccomp largefile opengl ptest multiarch wayland vulkan systemd\" VIRTUAL-RUN=
TIME_init_manager =3D \"systemd pulseaudio sysvinit gobject-introspection-d=
ata ldconfig"
POKY_DEFAULT_DISTRO_FEATURES=3D"largefile opengl ptest multiarch wayland vu=
lkan"

However, if I start the system in qemu none of  the expected systemd binari=
es like systemd, systemd-journal etc. is present. Did I miss something?

Regards

--_000_DM8PR16MB4357BA2349F9D42C1786A5E8C7FD9DM8PR16MB4357namp_
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
 color: rgb(0, 0, 0);" class=3D"elementToProof">
Greetings,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
I tried to add systemd to weston-image-core by adding the following lines i=
n local.conf:</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
<span style=3D"font-weight:normal;orphans:auto;widows:auto;display:inline !=
important">DISTRO_FEATURES:append =3D &quot; systemd&quot; VIRTUAL-RUNTIME_=
init_manager =3D &quot;systemd&quot;<span class=3D"Apple-converted-space">&=
nbsp;</span></span></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
And indeed, bitbake seems to use them in somve way:</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
<span style=3D"font-weight:normal;orphans:auto;widows:auto;display:inline !=
important">DISTRO_FEATURES=3D&quot;acl alsa argp bluetooth debuginfod ext2 =
ipv4 ipv6 largefile pcmcia usbgadget usbhost wifi xattr nfs zeroconf pci 3g=
 nfc x11 vfat seccomp largefile opengl ptest
 multiarch wayland vulkan systemd\&quot; VIRTUAL-RUNTIME_init_manager =3D \=
&quot;systemd pulseaudio sysvinit gobject-introspection-data ldconfig&quot;=
</span><br style=3D"font-weight:normal;orphans:auto;widows:auto">
<span style=3D"font-weight:normal;orphans:auto;widows:auto;display:inline !=
important">POKY_DEFAULT_DISTRO_FEATURES=3D&quot;largefile opengl ptest mult=
iarch wayland vulkan&quot;</span></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
However, if I start the system in qemu none of&nbsp; the expected systemd b=
inaries like systemd, systemd-journal etc. is present. Did I miss something=
?</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
Regards<br>
</div>
</body>
</html>

--_000_DM8PR16MB4357BA2349F9D42C1786A5E8C7FD9DM8PR16MB4357namp_--

