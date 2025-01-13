Return-Path: <fran.millocs@live.com.ar>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40642C02183
	for <webhook@archiver.kernel.org>; Mon, 13 Jan 2025 18:55:18 +0000 (UTC)
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (NAM02-DM3-obe.outbound.protection.outlook.com [40.92.43.67])
 by mx.groups.io with SMTP id smtpd.web11.25906.1736794514031773455
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Jan 2025 10:55:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@LIVE.COM.AR header.s=selector1 header.b=DBc7x42K;
 spf=pass (domain: live.com.ar, ip: 40.92.43.67, mailfrom: fran.millocs@live.com.ar)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=okYZ+yhheixzO7EbrDZCi9a/ymRUaZkvivAW0TvTMlfCGACUaTmEDWjBX7Yg74zHp/jSP2utec9/8f32o3WADqXvtUlVZfedzU3yHSJQAPzkqEYVY3g8zY0wvHFG/qSmxAWFpAKDVz2P6G4Wcm+fhFF8EgKkjBQcwSbkiT16ucrnsDJwK5la1XFbUauxX6qqTRykF2c9hKTmM2Fv81wR4G2940tw2HpHMmhA4lzCm2l7ixkpY1vQ3saGk5S9twXTG0l+TXzLE6vek3UPjsMuOHtS7ZbRP2AbCCs0HEenalF+NrDhnHiIDyEYXPeiQJJ7ywVutiKBBEJ9wWpKvubLlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gF+3MaNhjj1VaKh5WDswhHlarPY33jxl+oPPBJ6f+AQ=;
 b=kvY0vcXbEkO5bGftbUOOl7ayLjyk9ncM3eE+PqiFNHj1+6wIlrSwE6cKM2gC434/I+B/9d/nXwI5B/RcXfUTBAe29zZDqg1xcfxBYszr85rTth0lz2WlSBCULTemHb9JrWRrlF4sfbItXJ6/84YPiOBEbxBJbdSpU1ECFfGsKDNLlo7V/f4tSrzdMwLTCnXX407f6qI1kN2RCmYnfldvQH+9BmnBqj8nnRXaJKMEmxojGL0+bEKnf0L5SwtF/t9nWwCmZ6Od00ZFmfFJPKE4vkZx2gvS5sNboss8dQ+9UHgm7MdOGSAkuz8ld11GvblEamU6Kb8RHyLddocsL8Zoeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=LIVE.COM.AR;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gF+3MaNhjj1VaKh5WDswhHlarPY33jxl+oPPBJ6f+AQ=;
 b=DBc7x42KXuie2QHYo/yK61FroMfefxFDoE1sVAuMUZEizR0NmM4Im+i0rlGkTyYWtbXMgy1NH1EYU9dPc/VnO2Lh6f/cvUH6D1k4tNabOjtizVN2FvbWZf/xn2lPi8vldCx0EShpvLCDmsnB6oU2wuL8GRmRmgO8OTSnp0zpB2ozm5CvIurTOqDaZ7gvmjR7AH7UwavGf1AFBv9683qL+y3MSGXnYu9WIU6UN/iBUAcg1VormsrsKlUkOe7xaygiexribs/5H2AZZnoT5viZEkG176eJEo0w4H9dn98Uu/+m759eLCrUI8TLInHr5P0vWgJl5ggKUx+LGUJoAfB+JA==
Received: from PH7P222MB1231.NAMP222.PROD.OUTLOOK.COM (2603:10b6:510:316::9)
 by SA1P222MB1322.NAMP222.PROD.OUTLOOK.COM (2603:10b6:806:3e6::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Mon, 13 Jan
 2025 18:55:12 +0000
Received: from PH7P222MB1231.NAMP222.PROD.OUTLOOK.COM
 ([fe80::7a0e:44d:cc74:141c]) by PH7P222MB1231.NAMP222.PROD.OUTLOOK.COM
 ([fe80::7a0e:44d:cc74:141c%4]) with mapi id 15.20.8335.017; Mon, 13 Jan 2025
 18:55:12 +0000
From: franco ariel <fran.millocs@live.com.ar>
To: Quentin Schulz <quentin.schulz@cherry.de>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>, "alex.kanavin@gmail.com"
	<alex.kanavin@gmail.com>
Subject: Re: [yocto] [HELP] Building custom kernel with different GCC version
Thread-Topic: [yocto] [HELP] Building custom kernel with different GCC version
Thread-Index: AQHbWVeX6ry6+wX5Z02Xi1QqIJBqvrL+qk2AgBZfeICAABwjRw==
Date: Mon, 13 Jan 2025 18:55:11 +0000
Message-ID: 
 <PH7P222MB1231B45ED2513638AE1ECAFCD01F2@PH7P222MB1231.NAMP222.PROD.OUTLOOK.COM>
References: 
 <PH7P222MB1231FED1441DBB6B8B869A22D00F2@PH7P222MB1231.NAMP222.PROD.OUTLOOK.COM>
 <CANNYZj8ZEX2mwKLQ2Kxo4MOWeLqGVrADUTP-v21R9y_8CUnY6A@mail.gmail.com>
 <085a5e57-faff-4dbc-93d1-fba12ab7552e@cherry.de>
In-Reply-To: <085a5e57-faff-4dbc-93d1-fba12ab7552e@cherry.de>
Accept-Language: es-AR, en-US
Content-Language: es-AR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7P222MB1231:EE_|SA1P222MB1322:EE_
x-ms-office365-filtering-correlation-id: c37b0542-8ba1-40b5-70b0-08dd3403cf10
x-microsoft-antispam: 
 BCL:0;ARA:14566002|15030799003|7092599003|15080799006|19110799003|8060799006|8062599003|461199028|102099032|3412199025|440099028;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?UcoDZOPWeMUc41H8GrycyJMDe82rMZzdyDBW2pELziOXwDTT6Dg28IDEBE?=
 =?iso-8859-1?Q?EK3kP8FAH4BpnF+Qjjz0M+oLTxWmCMxW0qFyW2mNmk13K5H0K5psw/XEiF?=
 =?iso-8859-1?Q?+iUWQB0fCPXhsiy4L0TLMk7ozqfsytirMxb7VPOzm1u7Fwe50X1sdto0e0?=
 =?iso-8859-1?Q?cngQh67VAlVLsI5dbEJ1f0cc4dZ9szFKDpo8u2fZVhsCgD0klvajVvOy0j?=
 =?iso-8859-1?Q?bmFIZIGnqLn1pCQmr9vr6VBrKVcWKPzM0giXdEkvYTmg8eH+Dnapyu2PtG?=
 =?iso-8859-1?Q?IiZODJ6Yg1UIwuiwSnh998KtKMAGOEvIC9r7un1I9DsICcvUvr33Sw7XCb?=
 =?iso-8859-1?Q?PTqr2MIW0z9lXqxFdWUYDIU+pwTxZUKdm2kWR9yFheYHZ/n+uAiTt73IHp?=
 =?iso-8859-1?Q?NK1XYAwXbKd8jorquo/6UeH3DhTiEGlaLaT4Gn6IMY0RL37pUtGuof+c7C?=
 =?iso-8859-1?Q?uF0iVLqpZYiwAsqb7d9tk5cMC9eqz1an0LfVB7/j7UcBIliZon8QGKrAMb?=
 =?iso-8859-1?Q?Jk70RK+mJQct8JqgPkKn1qcEsfWQhdTiTwHW3ItkQHrDyDpTJVZOI57QA5?=
 =?iso-8859-1?Q?tQxaCuUv+l4mn50+PkV8lSPF76WLhpxalw+PKKMaEAOCponsQXJB1UpO3U?=
 =?iso-8859-1?Q?nu2pY6+n9UZPUNDJKXSAMGWMdkE12L9H81dBsKfCOyTtHgnLI1T/MXp8o/?=
 =?iso-8859-1?Q?/gHPT45+O6NWW9Hme6fuF1vZ42WvfnHQSjdr0AcdxYe5Z5dF7Y6u8cF0pE?=
 =?iso-8859-1?Q?X2QDNylOwb1ZQCLO4Mzb83YNHJyWkAsTtcMJ524wPdLRY75IfkQbG9VNOd?=
 =?iso-8859-1?Q?oKBOzrb0xYUmozNUpnoFGkbdAeKBPbFHThBbVjmah6UFKKx3up4N9Lk6pN?=
 =?iso-8859-1?Q?di85PQFQuD+kAsOjG7OW9fvodWPEvYXIQYdT7fLFrV15rItQQR5h+TpG2/?=
 =?iso-8859-1?Q?7y7zinzqcHlqAowYetgR+k3aey+SNUqO1NPZe3DlIP7fmbn3WUgBWGO/xO?=
 =?iso-8859-1?Q?VqEJsIpBTA3LbKtmueUBZUbuWQGaGQifSuSE4M2jE1AL+WoDQgf6JI5gUI?=
 =?iso-8859-1?Q?LCiDa7IPh/ynDEnEZHbId/3uU0x8YtFfc7Ngsf+thB+lccRtVX5rn1NYb/?=
 =?iso-8859-1?Q?pDiYBz3ucPFziJXNxANma+4AGkKAM=3D?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?vXRE4IQampVndupC57zQTWn7AfCgRT5gMcE86kkyYTkNN9sckpbYa/L3uL?=
 =?iso-8859-1?Q?IZEQ65drMecBDNJOziJP6pOSiLsEk0++QHQU1TaTvdCogDYfxTKQHu2vF/?=
 =?iso-8859-1?Q?1QV9OOlyx7UFRWsc4O17rEksDcOQRbpsmkpk7vUyRTycHgiXyoP+7VWgsx?=
 =?iso-8859-1?Q?Dl27cflccvUN8ioZaSU5IixgRMPlRTAJJ7GgXw6AStLNvemi4xWiu7xFQr?=
 =?iso-8859-1?Q?SMMw9H7LzldoOXqTR0VFmPMSWC42uW9uJAh+taGZf6/Ez1fASH7UxAs13n?=
 =?iso-8859-1?Q?diLKVcY/HuPw3aVILc/cAvI0AdpGTCpD3+SmDuZryKOdZh3Kb8vQmfddvw?=
 =?iso-8859-1?Q?8gPsln1FnsUn6G3sF7F6qvezGyz878h3Cz7PqhN/R9Nk9CO3zdmpK2I+OI?=
 =?iso-8859-1?Q?yFeLsHlC2bskrSVbaM3BICf7brtiQSaiFIz6dTfd1zWF9VaDDUwtkIzUEq?=
 =?iso-8859-1?Q?NvRmjuUxsfsLkjWKWwvYJSbbyh4XJfP5QglsoAu8/oCjkl4hCz0NQfaVbX?=
 =?iso-8859-1?Q?BVcfQsdfOF0HnJS3I/nm00v+fkCH4J+ZBSOBd3dYc6flbkYj9OEFkXgJbd?=
 =?iso-8859-1?Q?UqYNi55TPt95XDkp1XzIKTUtoRohDWMffOG+9zlLPMGf60neo8glXqz/US?=
 =?iso-8859-1?Q?SCAPeiJjcPEgW/v8NiUZA9iNF7PcdGDTYDGy7MU86pfBeOuLZOxabGacFQ?=
 =?iso-8859-1?Q?CFFL/W3OCbWqqGSQ0fkaMdrn65b4gGAcDbm84eUmGheH+2+fQng0vkljoU?=
 =?iso-8859-1?Q?wU8tR1usdgkiEYp9vUHz8Yc8Ei1N/dfTwnB8DBnM/hCqxFxKhgTXoCmbcE?=
 =?iso-8859-1?Q?8IV0+NIb5PGZnfhTbJzX0BU1g4RzAKpp0WZaBwPFHHOapqtg0KENks6VpW?=
 =?iso-8859-1?Q?PWgURy1KrilZYthgUt5PeoXArBdGhAG1LfDsRHW3nn05vR0Wc6bxxWRpdF?=
 =?iso-8859-1?Q?0YkLQ5Yt0kvqpPCVliBu5+HE+eEBm73X1/QIREwm58imUamrlOa/9H7/+W?=
 =?iso-8859-1?Q?oWRkJ90Oy6pwnzoWZufhuUEDGoWn+Zp/ORX4fOmxJ4rgpnpjlETwrT2Qlw?=
 =?iso-8859-1?Q?jcvSccYzSlKsibht+/Q2Wyz3WZ/mcr7NvAPJ2vAv3llKiiQ9cIOPGtQhzY?=
 =?iso-8859-1?Q?W4A3l/av3S322R/3gjbPuz/qhO3UgbnR8GPBqebWC3AZkZKntOeVcPBfeF?=
 =?iso-8859-1?Q?THTpVFyY10BfVGR9dSkbofSrfZInc+GpwbLE+ABE5Be+AGflKIT4z4YU1e?=
 =?iso-8859-1?Q?7WJGi2dxNhnXbjRUuz6Pq/UKYcNii44PD74PqdtBX+WUDCva64OnHfb+6h?=
 =?iso-8859-1?Q?oE+3Xxqyiib/xxn6OHfWSsnl4gP0lAnRkX628j4q5iOAt3E=3D?=
Content-Type: multipart/alternative;
	boundary="_000_PH7P222MB1231B45ED2513638AE1ECAFCD01F2PH7P222MB1231NAMP_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-f13ea.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7P222MB1231.NAMP222.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: c37b0542-8ba1-40b5-70b0-08dd3403cf10
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2025 18:55:11.9685
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1P222MB1322
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Jan 2025 18:55:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64538

--_000_PH7P222MB1231B45ED2513638AE1ECAFCD01F2PH7P222MB1231NAMP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Quentin,
Thank you for your response.
In the end, I resolved the issue by using a custom GCC and specifying it in=
 the main recipe to ensure the kernel was compiled with my custom GCC versi=
on. The main reason for this approach is that the kernel is a downstream ve=
rsion provided by my board manufacturer.
Frank


________________________________
De: Quentin Schulz <quentin.schulz@cherry.de>
Enviado: lunes, 13 de enero de 2025 12:11
Para: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>; alex.kan=
avin@gmail.com <alex.kanavin@gmail.com>; fran.millocs@live.com.ar <fran.mil=
locs@live.com.ar>
Asunto: Re: [yocto] [HELP] Building custom kernel with different GCC versio=
n

Hi Alex, Frank,

On 12/30/24 12:32 PM, Alexander Kanavin via lists.yoctoproject.org wrote:
> On Sat, 28 Dec 2024 at 19:38, franco ariel via lists.yoctoproject.org
> <fran.millocs=3Dlive.com.ar@lists.yoctoproject.org> wrote:
>> I am currently working on a custom project using the meta-meson layer fo=
r the scarthgap platform. The project requires building a custom Linux kern=
el that explicitly depends on GCC 12.x. However, the meta-meson layer (and =
the associated Yocto environment) defaults to GCC 13.x for both the toolcha=
in and the kernel build.
>> I would like to configure the build system to use GCC 12.x exclusively f=
or building the kernel, while keeping GCC 13.x for all other components in =
the environment. Is there any way to do this?
>
> The quick answer is no.
>
> I'm curious to know what specifically requires gcc 12.x, and not any
> other version?
>

I assume an outdated vendor kernel.

Just backport patches from upstream that fixed build issues with GCC 13,
it'll probably be much easier (and maybe consider upgrading to a newer
kernel (or at least newer stable kernel)) than trying to figure out how
to build the kernel with one GCC and the rest of the system with another
one.

Cheers,
Quentin

--_000_PH7P222MB1231B45ED2513638AE1ECAFCD01F2PH7P222MB1231NAMP_
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
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Hi Quentin,</div>
<div style=3D"margin-top: 1em; margin-bottom: 1em; font-family: Calibri, He=
lvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Thank you for your response.</div>
<div style=3D"margin-top: 1em; margin-bottom: 1em; font-family: Calibri, He=
lvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
In the end, I resolved the issue by using a custom GCC and specifying it in=
 the main recipe to ensure the kernel was compiled with my custom GCC versi=
on. The main reason for this approach is that the kernel is a downstream ve=
rsion provided by my board manufacturer.</div>
<div class=3D"elementToProof" style=3D"margin-top: 1em; margin-bottom: 1em;=
 font-family: Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0=
, 0, 0);">
Frank</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"appendonsend" style=3D"color: inherit;"></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<hr style=3D"display: inline-block; width: 98%;">
<div id=3D"divRplyFwdMsg" dir=3D"ltr" style=3D"color: inherit;"><span style=
=3D"font-family: Calibri, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);=
"><b>De:</b>&nbsp;Quentin Schulz &lt;quentin.schulz@cherry.de&gt;<br>
<b>Enviado:</b>&nbsp;lunes, 13 de enero de 2025 12:11<br>
<b>Para:</b>&nbsp;yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject=
.org&gt;; alex.kanavin@gmail.com &lt;alex.kanavin@gmail.com&gt;; fran.millo=
cs@live.com.ar &lt;fran.millocs@live.com.ar&gt;<br>
<b>Asunto:</b>&nbsp;Re: [yocto] [HELP] Building custom kernel with differen=
t GCC version</span>
<div>&nbsp;</div>
</div>
<div class=3D"elementToProof" style=3D"font-size: 11pt;">Hi Alex, Frank,<br=
>
<br>
On 12/30/24 12:32 PM, Alexander Kanavin via lists.yoctoproject.org wrote:<b=
r>
&gt; On Sat, 28 Dec 2024 at 19:38, franco ariel via lists.yoctoproject.org<=
br>
&gt; &lt;fran.millocs=3Dlive.com.ar@lists.yoctoproject.org&gt; wrote:<br>
&gt;&gt; I am currently working on a custom project using the meta-meson la=
yer for the scarthgap platform. The project requires building a custom Linu=
x kernel that explicitly depends on GCC 12.x. However, the meta-meson layer=
 (and the associated Yocto environment)
 defaults to GCC 13.x for both the toolchain and the kernel build.<br>
&gt;&gt; I would like to configure the build system to use GCC 12.x exclusi=
vely for building the kernel, while keeping GCC 13.x for all other componen=
ts in the environment. Is there any way to do this?<br>
&gt;<br>
&gt; The quick answer is no.<br>
&gt;<br>
&gt; I'm curious to know what specifically requires gcc 12.x, and not any<b=
r>
&gt; other version?<br>
&gt;<br>
<br>
I assume an outdated vendor kernel.<br>
<br>
Just backport patches from upstream that fixed build issues with GCC 13,<br=
>
it'll probably be much easier (and maybe consider upgrading to a newer<br>
kernel (or at least newer stable kernel)) than trying to figure out how<br>
to build the kernel with one GCC and the rest of the system with another<br=
>
one.<br>
<br>
Cheers,<br>
Quentin</div>
</body>
</html>

--_000_PH7P222MB1231B45ED2513638AE1ECAFCD01F2PH7P222MB1231NAMP_--

