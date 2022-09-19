Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF295C54EE9
	for <webhook@archiver.kernel.org>; Mon, 19 Sep 2022 14:30:38 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (NAM11-CO1-obe.outbound.protection.outlook.com [40.92.18.18])
 by mx.groups.io with SMTP id smtpd.web08.20636.1663597831099217418
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Sep 2022 07:30:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=nrClr8Sz;
 spf=pass (domain: hotmail.com, ip: 40.92.18.18,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SnupOOAVtpDIsi8q6qQqTRjOyiGWJOZip5WuTkpTvIZckGALhcY6/y4jlD+2wsHOuOos8bSy28YvSwzqJC3HFqAvSrWtIuD44oYhzPt5ZGucf1hgL62uHDMoKWSRBjjzcY7/neSgupTlAkb6NUis2/uptTbcQwNNYXinM7z4dd7J3uHK/r3h9iepMCnBgocG6HZBYuQK5MBrBofhaZF0VmQK20mYfHA4rTZHFXkHnEoMcDxuBkteITXJFJAX2QQEZo7Q4ss0viss0pu8xZEE4E1Daf2/ETUbxAmS+xUJKfAlO74EP307sO1JnMfEMPrE0c5IUzmWOo7T5ow8IZ9drA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GEe/sl2J9f2st6r7l8mLr5mPr4uwKPpSAfdaPXL6Yts=;
 b=MU1FvFt7/lzB0QQ7+rNgi7o2sZVHFHUTTeoFtobxMgtO1JVb0ddLD6G0fJxrMP1+jCMbo/s6uedIlAHEFGSVK7tJ47BZqUZK0RVBcSZUTxQIeIE5eye3ivEIDFVK58B2nKMEUTlo2o7YDWg3IJpj92Ci5OIwD138w+KKhmS4eojOZm1vi+l9NodbFoUskd71pMuzJetpfCSNcqnAYTAObR97DpHz4a6zYHZ3jRGOZVgsEVk+98lIomvxfwQ5jHB6YK2pckl7S08WmgKZFB4UJ4dTAc9WsrYEpvFd28aq3raw+/hvz+Oo0VXoc8VELxKuueb+2Wnrrw4HgxpwLdKLhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GEe/sl2J9f2st6r7l8mLr5mPr4uwKPpSAfdaPXL6Yts=;
 b=nrClr8Sz28yjMIAPupA6uUKDo0G/s7i1G7S5h1Q7RPHgapmM32Lm5OGtDAGnTq6l1sAWMr3+0Zkxk7U5OgPLNy6Tz/y5YM9NAqF+6901U59TyZt13Uw3aQI+c47PT7PR5cdbhVs0WzUlG2Y2qgHwK3dzSqEntaRaWFaZrv+e5tepAtrNnb5MyN0ydTrl2BE8jYml8rQG5yG0ucpJCUoIspxh5T9/rfd8qpwtrnCPg89s/t5OcU4gaKFgFjiaH2f2ZZOJXSBPenTfxxTVbRAjPbk8l8CJxzkpaT7qPDt3Re8zpfvwCND6vLyblouxpM++KnN9B+p6EFigRBoUvn7ypA==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by PH0PR84MB1408.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:173::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.18; Mon, 19 Sep
 2022 14:30:29 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40%4]) with mapi id 15.20.5632.018; Mon, 19 Sep 2022
 14:30:29 +0000
From: Edgar Mobile <heideggm@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding Vulkan to core-image-weston
Thread-Topic: [yocto] Adding Vulkan to core-image-weston
Thread-Index: 
 AQHYycEskKLcduGixUqgdEVWou0Ata3h+FKAgABURlCAAP7uAIADFZtOgAAOLYCAAEOZXIAAEcYAgAAB7hmAAAvIAIAAAptV
Date: Mon, 19 Sep 2022 14:30:29 +0000
Message-ID: 
 <PH0PR84MB183571245531C6D271BD5A90C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
References: 
 <PH0PR84MB1835D4BD7B71CB2ED806C2CEC7489@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-tD-v_Cb4F7cOqyQRWpgWOBavxqhgJPhZzQ2gw1dkWxw@mail.gmail.com>
 <SJ0PR84MB1846B369EB668E66A065A4FCC7489@SJ0PR84MB1846.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_jSuNdush++p=NWW86M2rs2fpnTzOuRw1xjvDBrAdsZw@mail.gmail.com>
 <PH0PR84MB1835D30B90E3ED9ADADA471BC74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj8diBFzwNe_veJG-Vx9cam0u=-uG6O1c=gSL9J9kO6NEg@mail.gmail.com>
 <PH0PR84MB183555F695A0E7C8818C14E5C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj9oFKPYa63AiH4tDJ8Jku0826ySM22uXxxq=vOwbbD+vA@mail.gmail.com>
 <PH0PR84MB1835788AFD16FEB8E4A15790C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj8ANJ_EnvBgi+mZH52kr5rxyhBbBWEDoaOFPR9MDLDgZg@mail.gmail.com>
In-Reply-To: 
 <CANNYZj8ANJ_EnvBgi+mZH52kr5rxyhBbBWEDoaOFPR9MDLDgZg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [pkT4UV177/CpUqSpH/K7iuWckxTitO+N]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR84MB1835:EE_|PH0PR84MB1408:EE_
x-ms-office365-filtering-correlation-id: 396fbcb8-beb3-49af-7a19-08da9a4b805f
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 HtWl7hOhQToznCfSB0uDjE8wriRuVks818eQlRHuUE7JrNghYBi5gK9tEjRjY/x9l4k7TKhZ3daTpfxXDxqL7SYPr7U2q+MqEnZKa1tqmzY7mJsxnj+LTbuI2UEha95jwoY1AHY0W9Gz/KNv2VjImcDuH0PHKVadLZVebtPsrSn+Iia7wnXs33X97g79j821WYhKwS9Id37wTJfMYKfv5rtz7fETEB493sCB/8RUTEQyxYY3EUuK8EcvRBp+HrS7PykZsR/NGbVhcmt7Nyp16b7rsfym/nDYt15Gexsb7mnWZUu0fkwI3cFxmPqm4e9isUDQT9vmwsxvCbopE4HtqGx0M1wYAoosFBjk2pa1NYSh6z46RhQa7rndZNEtA/RwTV5by4j8M1fIEVnf4tTEfiZasYVpL5FNB0qDFJv3aKAk3lEQq46ClH9O3UtCO1B2S2YcbeB0OiOU4q7qiUYTVBtih/4bm0yib1LcBJBcjAtr0xJ7VlYRM4COZ79jzCY9/oQ6EHAy3IEVOJtIi1dpFiX2wpB0pbDP+q1d711Kr+AQ+5GEYmxbJmnU/YMqNQOcOnFfgOFu1yddKJB0LXEPHU41hDP+DBSIQOuFbB6Rj/5Ktyrviz7lOiwopMHQdzDg/pQhW9LzaHPlR5vkFabN0d+4gSs90IE3Jbw2CJuJra6R+mZStPvS4lWkal1hQjnB
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?XXsuK1B5lBHTq9ZyCcuvZUzRPeNWyqzT3u8VxHVE1vzBqcLY9L8k9318?=
 =?Windows-1252?Q?L65T0U8BQNzo7S+emhmZpD/0l3RtjKPLWrLtOPh5Q4zRPwsetoiCjFBh?=
 =?Windows-1252?Q?ohy+1ADUKXOhlugGW/9XgOHlRAZCfnL8ora+hqC15dZdOtkKH8Weld3l?=
 =?Windows-1252?Q?11bHpNrK9Cio/owCA9f9GR6XtKRS4TOPYmsCVwQm/Csfddj+z809I37j?=
 =?Windows-1252?Q?XtI2+/ianrdiir9GQg3gbBX2XJZLHO5fBVx0BihbY/MugiHaMzdcg1Mx?=
 =?Windows-1252?Q?WOhCUlxjddFGOKSRlhP9DsEO0X67lOZGpRcRSRkhDUBhmGXR+kYPQ+J9?=
 =?Windows-1252?Q?oqh4aDGRtyvGG6AXRg37LHaumjlx9bE6lxYOKO6U82zkjb7wlGkzL6H5?=
 =?Windows-1252?Q?yg+CQzdepD10poU0m68AyZhrQ5X0nVXaEGIH/ZHKQYYRTclQimmccZlb?=
 =?Windows-1252?Q?UwTv6DIbh30+l5i8F0pn1uVYxYdrUghwccEJetikeLv6BTAXOJItH13W?=
 =?Windows-1252?Q?LqgjAFTOLrvujk80sZXYmOGI+avenTUZLxYdQPuyXVW99Ypns5ww1XEo?=
 =?Windows-1252?Q?qHglwuU+p5is1FRjOXTrQDKmr+QiAiLTaqEt4LvvlvmrDPTAK8w49WAX?=
 =?Windows-1252?Q?L4bILNCepIig838ixYT0Bx37/O9vecvFyeTBXFWlaprwWIyCptXe05jK?=
 =?Windows-1252?Q?80lfdpaRRPTEegsjpwdzbXrCIao4+l7bADgsCwBxnY3mL1SK4WMCJHyQ?=
 =?Windows-1252?Q?S5YINw1sDhREjDVsiFCXPdD4Ymd5Cyf0GCcQFLAPZJTIyAn013Olx5Kt?=
 =?Windows-1252?Q?YSOf4UBdekl3m8Hmy8EnvsSYd/ZBP33ldAeul9Es3T/y2CVoQ/FTEhmJ?=
 =?Windows-1252?Q?ntHzZ/JuTJMY6iLBn8ShVjoMR6Y50I3fjsIrcq2qs4oKV0r0Ic/NOo6l?=
 =?Windows-1252?Q?Dd53Y+X+TYpfxGd6WVduIWblndPP0D6UmJ1tc8KBFNAdmOs2FFrlYqkR?=
 =?Windows-1252?Q?V0rbBngAZA/rHK4++ICWbMF/toK9sfMt9pBJQW1wt4QXJOMIiABy78SQ?=
 =?Windows-1252?Q?4cuweml1EEUpR3FIN5uO6sF1oR6NUNcMSrMhnpWeW9IP963ysJXxgUAR?=
 =?Windows-1252?Q?MpFWb10i5ebCveimE3tKjmGnqz4T/JQFRysb+ZOlq1WBKivKDy93w/9D?=
 =?Windows-1252?Q?+ujivlFltiD1ASTpnlWFuVDjLfUoiZws6KvPsh6408Xf/8+wxwm1Q1Ut?=
 =?Windows-1252?Q?gguPNmwrXWY/Q7lBS9QckqlWLZisjKSnLMohOA3MnekpSPQj/bUyfzON?=
 =?Windows-1252?Q?z5FPNBXxxOWuRGqOdfsvqlcSh86WmW2jZPoVn4gseiUyE7aC?=
Content-Type: multipart/alternative;
	boundary="_000_PH0PR84MB183571245531C6D271BD5A90C74D9PH0PR84MB1835NAMP_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 396fbcb8-beb3-49af-7a19-08da9a4b805f
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2022 14:30:29.2842
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR84MB1408
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Sep 2022 14:30:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58074

--_000_PH0PR84MB183571245531C6D271BD5A90C74D9PH0PR84MB1835NAMP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

What are the qemu params to activate swrast vulkan driver? And do I still n=
eed mesa vulkan package? meson logs show it wasnt't compiled with vulkan-dr=
ivers.

________________________________
From: Alexander Kanavin <alex.kanavin@gmail.com>
Sent: Monday, September 19, 2022 2:20 PM
To: Edgar Mobile <heideggm@hotmail.com>
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding Vulkan to core-image-weston

I think swrast Vulkan driver may be a better option to start with. At least=
 that is contained entirely in qemu guest so you won=92t have to wrestle wi=
th pass through code paths to the host which are all experimental. It=92s e=
ntirely uncharted waters for me as well.

Alex

On Mon 19. Sep 2022 at 14.52, Edgar Mobile <heideggm@hotmail.com<mailto:hei=
deggm@hotmail.com>> wrote:
For the time being I use vulkan-tools so I get vulkaninfo. It fails apparen=
tly due to no appropriate driver available.
I think adding virtio-experimental to mesa may be necessary, right? Or is t=
here another core recipse that will add mesa vulkan drivers?

Regards

________________________________
From: Alexander Kanavin <alex.kanavin@gmail.com<mailto:alex.kanavin@gmail.c=
om>>
Sent: Monday, September 19, 2022 1:31 PM

To: Edgar Mobile <heideggm@hotmail.com<mailto:heideggm@hotmail.com>>
Cc: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <yoct=
o@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>>
Subject: Re: [yocto] Adding Vulkan to core-image-weston

As I said you need to inspect the working directory of the recipe to find o=
ut what goes where.


Alex

On Mon 19. Sep 2022 at 13.28, Edgar Mobile <heideggm@hotmail.com<mailto:hei=
deggm@hotmail.com>> wrote:
I have the impression that the only binary vulkan-samples installs is /usr/=
bin/spirv-cross . Are there other packages that install more samples?

________________________________
From: Alexander Kanavin <alex.kanavin@gmail.com<mailto:alex.kanavin@gmail.c=
om>>
Sent: Monday, September 19, 2022 8:25 AM

To: Edgar Mobile <heideggm@hotmail.com<mailto:heideggm@hotmail.com>>
Cc: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <yoct=
o@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>>
Subject: Re: [yocto] Adding Vulkan to core-image-weston

I suppose you need to look at compile and install logs for vulkan-samples. =
And how the installed items get split into packages. I=92m short, inspect $=
{WORKDIR} for it.

Alex

On Mon 19. Sep 2022 at 9.36, Edgar Mobile <heideggm@hotmail.com<mailto:heid=
eggm@hotmail.com>> wrote:
Greetings,

I see the libvulkan.so.* libs now, but I don't see any sample binaries that=
 look like Vulkan. Is there a list somewhere for all the files in vulkan-sa=
mples?
Regards

________________________________
From: Alexander Kanavin <alex.kanavin@gmail.com<mailto:alex.kanavin@gmail.c=
om>>
Sent: Saturday, September 17, 2022 8:28 AM

To: Edgar Mobile <heideggm@hotmail.com<mailto:heideggm@hotmail.com>>
Cc: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <yoct=
o@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>>
Subject: Re: [yocto] Adding Vulkan to core-image-weston

If the samples don't link with libvulkan directly, it won't get pulled
into the images. How are they loading that library, is it via dlopen()
somewhere? Invisible dlopen() dependencies typically need to be listed
explicitly in RDEPENDS.

As a quick fix, you can add vulkan-loader to the same
CORE_IMAGE_EXTRA_INSTALL list.

Alex

On Fri, 16 Sept 2022 at 19:17, Edgar Mobile <heideggm@hotmail.com<mailto:he=
ideggm@hotmail.com>> wrote:
>
> Ok, so I switched to Kirkstone and added vulkan-samples to CORE_IMAGE_EXT=
RA_INSTALL.
> But no libvulkan.so in /usr/lib.
>
> Am I missing something?
>
> ________________________________
> From: Alexander Kanavin <alex.kanavin@gmail.com<mailto:alex.kanavin@gmail=
.com>>
> Sent: Friday, September 16, 2022 12:14 PM
> To: Edgar Mobile <heideggm@hotmail.com<mailto:heideggm@hotmail.com>>
> Cc: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <yo=
cto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>>
> Subject: Re: [yocto] Adding Vulkan to core-image-weston
>
> You can start by adding vulkan-samples to the image - the recipe is in
> core. We do not test vulkan in qemu, because the software vulkan
> rendering is still under active development, and marked as
> experimental in virglrenderer.
>
> It may help if you use qemux86_64 and kvm for it, because software
> graphical paths are too slow without it generally.
>
> Alex
>
> On Fri, 16 Sept 2022 at 13:43, Edgar Mobile <heideggm@hotmail.com<mailto:=
heideggm@hotmail.com>> wrote:
> >
> > Greetings,
> >
> > I'd like to test graphics rendering with Vulkan on an Aarch64 Yocto hon=
ister (qemu, host is x64). Can you tell me which parameters I need to add t=
o local.conf to get all libs and headers installed (plus maybe some useful =
tools and demo if present)?
> >
> > Regards
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#58059): https://lists.yoctoproject.org/g/yocto/mess=
age/58059
> > Mute This Topic: https://lists.yoctoproject.org/mt/93720286/1686489
> > Group Owner: yocto+owner@lists.yoctoproject.org<mailto:yocto%2Bowner@li=
sts.yoctoproject.org>
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin=
@gmail.com<mailto:alex.kanavin@gmail.com>]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >

--_000_PH0PR84MB183571245531C6D271BD5A90C74D9PH0PR84MB1835NAMP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
What are the qemu params to activate swrast vulkan driver? And do I still n=
eed mesa vulkan package? meson logs show it wasnt't compiled with vulkan-dr=
ivers.<br>
</div>
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Alexander Kanavin &=
lt;alex.kanavin@gmail.com&gt;<br>
<b>Sent:</b> Monday, September 19, 2022 2:20 PM<br>
<b>To:</b> Edgar Mobile &lt;heideggm@hotmail.com&gt;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject:</b> Re: [yocto] Adding Vulkan to core-image-weston</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"auto">I think swrast Vulkan driver may be a better option to st=
art with. At least that is contained entirely in qemu guest so you won=92t =
have to wrestle with pass through code paths to the host which are all expe=
rimental. It=92s entirely uncharted waters
 for me as well.</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Alex</div>
<div><br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Mon 19. Sep 2022 at 14.52, Edgar=
 Mobile &lt;<a href=3D"mailto:heideggm@hotmail.com" data-auth=3D"NotApplica=
ble">heideggm@hotmail.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left-width:1px; border-left-style:solid; padding-left:1ex; border-left-c=
olor:rgb(204,204,204)">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
For the time being I use vulkan-tools so I get vulkaninfo. It fails apparen=
tly due to no appropriate driver available.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I think adding virtio-experimental to mesa may be necessary, right? Or is t=
here another core recipse that will add mesa vulkan drivers?<br>
</div>
<div>
<div id=3D"x_m_-6479862864363465798appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Regards<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_m_-6479862864363465798divRplyFwdMsg" dir=3D"ltr"><font style=
=3D"font-size:11pt; font-family:Calibri,sans-serif; color:rgb(0,0,0)" face=
=3D"Calibri, sans-serif"><b style=3D"font-family:Calibri,sans-serif">From:<=
/b> Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" data-au=
th=3D"NotApplicable" style=3D"font-family:Calibri,sans-serif">alex.kanavin@=
gmail.com</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Sent:</b> Monday, September 19,=
 2022 1:31 PM</font></div>
</div>
</div>
<div dir=3D"ltr">
<div>
<div id=3D"x_m_-6479862864363465798divRplyFwdMsg" dir=3D"ltr"><font style=
=3D"font-size:11pt; font-family:Calibri,sans-serif; color:rgb(0,0,0)" face=
=3D"Calibri, sans-serif"><br>
<b style=3D"font-family:Calibri,sans-serif">To:</b> Edgar Mobile &lt;<a hre=
f=3D"mailto:heideggm@hotmail.com" data-auth=3D"NotApplicable" style=3D"font=
-family:Calibri,sans-serif">heideggm@hotmail.com</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Cc:</b> <a href=3D"mailto:yocto=
@lists.yoctoproject.org" data-auth=3D"NotApplicable" style=3D"font-family:C=
alibri,sans-serif">
yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctopro=
ject.org" data-auth=3D"NotApplicable" style=3D"font-family:Calibri,sans-ser=
if">yocto@lists.yoctoproject.org</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Subject:</b> Re: [yocto] Adding=
 Vulkan to core-image-weston</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"auto">As I said you need to inspect the working directory of th=
e recipe to find out what goes where.&nbsp;</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Alex</div>
<div><br>
<div>
<div dir=3D"ltr">On Mon 19. Sep 2022 at 13.28, Edgar Mobile &lt;<a href=3D"=
mailto:heideggm@hotmail.com" data-auth=3D"NotApplicable">heideggm@hotmail.c=
om</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex; border-left-width:1px; borde=
r-left-style:solid; padding-left:1ex; border-left-color:rgb(204,204,204)">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I have the impression that the only binary vulkan-samples installs is /usr/=
bin/spirv-cross . Are there other packages that install more samples?<br>
</div>
<div>
<div id=3D"x_m_-6479862864363465798x_m_-8200384101095602077appendonsend"></=
div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_m_-6479862864363465798x_m_-8200384101095602077divRplyFwdMsg" d=
ir=3D"ltr">
<font style=3D"font-size:11pt; font-family:Calibri,sans-serif; color:rgb(0,=
0,0)" face=3D"Calibri, sans-serif"><b style=3D"font-family:Calibri,sans-ser=
if">From:</b> Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.co=
m" data-auth=3D"NotApplicable" style=3D"font-family:Calibri,sans-serif">ale=
x.kanavin@gmail.com</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Sent:</b> Monday, September 19,=
 2022 8:25 AM</font></div>
</div>
</div>
<div dir=3D"ltr">
<div>
<div id=3D"x_m_-6479862864363465798x_m_-8200384101095602077divRplyFwdMsg" d=
ir=3D"ltr">
<font style=3D"font-size:11pt; font-family:Calibri,sans-serif; color:rgb(0,=
0,0)" face=3D"Calibri, sans-serif"><br>
<b style=3D"font-family:Calibri,sans-serif">To:</b> Edgar Mobile &lt;<a hre=
f=3D"mailto:heideggm@hotmail.com" data-auth=3D"NotApplicable" style=3D"font=
-family:Calibri,sans-serif">heideggm@hotmail.com</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Cc:</b> <a href=3D"mailto:yocto=
@lists.yoctoproject.org" data-auth=3D"NotApplicable" style=3D"font-family:C=
alibri,sans-serif">
yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctopro=
ject.org" data-auth=3D"NotApplicable" style=3D"font-family:Calibri,sans-ser=
if">yocto@lists.yoctoproject.org</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Subject:</b> Re: [yocto] Adding=
 Vulkan to core-image-weston</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"auto">I suppose you need to look at compile and install logs fo=
r vulkan-samples. And how the installed items get split into packages. I=92=
m short, inspect ${WORKDIR} for it.</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Alex</div>
<div><br>
<div>
<div dir=3D"ltr">On Mon 19. Sep 2022 at 9.36, Edgar Mobile &lt;<a href=3D"m=
ailto:heideggm@hotmail.com" data-auth=3D"NotApplicable">heideggm@hotmail.co=
m</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex; border-left-width:1px; borde=
r-left-style:solid; padding-left:1ex; border-left-color:rgb(204,204,204)">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Greetings,</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I see the libvulkan.so.* libs now, but I don't see any sample binaries that=
 look like Vulkan. Is there a list somewhere for all the files in vulkan-sa=
mples?</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Regards<br>
</div>
<div>
<div id=3D"x_m_-6479862864363465798x_m_-8200384101095602077x_m_-30313021584=
69435834appendonsend">
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_m_-6479862864363465798x_m_-8200384101095602077x_m_-30313021584=
69435834divRplyFwdMsg" dir=3D"ltr">
<font style=3D"font-size:11pt; font-family:Calibri,sans-serif; color:rgb(0,=
0,0)" face=3D"Calibri, sans-serif"><b style=3D"font-family:Calibri,sans-ser=
if">From:</b> Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.co=
m" data-auth=3D"NotApplicable" style=3D"font-family:Calibri,sans-serif">ale=
x.kanavin@gmail.com</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Sent:</b> Saturday, September 1=
7, 2022 8:28 AM</font></div>
</div>
</div>
<div dir=3D"ltr">
<div>
<div id=3D"x_m_-6479862864363465798x_m_-8200384101095602077x_m_-30313021584=
69435834divRplyFwdMsg" dir=3D"ltr">
<font style=3D"font-size:11pt; font-family:Calibri,sans-serif; color:rgb(0,=
0,0)" face=3D"Calibri, sans-serif"><br>
<b style=3D"font-family:Calibri,sans-serif">To:</b> Edgar Mobile &lt;<a hre=
f=3D"mailto:heideggm@hotmail.com" data-auth=3D"NotApplicable" style=3D"font=
-family:Calibri,sans-serif">heideggm@hotmail.com</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Cc:</b> <a href=3D"mailto:yocto=
@lists.yoctoproject.org" data-auth=3D"NotApplicable" style=3D"font-family:C=
alibri,sans-serif">
yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctopro=
ject.org" data-auth=3D"NotApplicable" style=3D"font-family:Calibri,sans-ser=
if">yocto@lists.yoctoproject.org</a>&gt;<br>
<b style=3D"font-family:Calibri,sans-serif">Subject:</b> Re: [yocto] Adding=
 Vulkan to core-image-weston</font>
<div>&nbsp;</div>
</div>
<div><font style=3D"color:rgb(0,0,0)" size=3D"2"><span style=3D"font-size:1=
1pt">
<div>If the samples don't link with libvulkan directly, it won't get pulled=
<br>
into the images. How are they loading that library, is it via dlopen()<br>
somewhere? Invisible dlopen() dependencies typically need to be listed<br>
explicitly in RDEPENDS.<br>
<br>
As a quick fix, you can add vulkan-loader to the same<br>
CORE_IMAGE_EXTRA_INSTALL list.<br>
<br>
Alex<br>
<br>
On Fri, 16 Sept 2022 at 19:17, Edgar Mobile &lt;<a href=3D"mailto:heideggm@=
hotmail.com" data-auth=3D"NotApplicable">heideggm@hotmail.com</a>&gt; wrote=
:<br>
&gt;<br>
&gt; Ok, so I switched to Kirkstone and added vulkan-samples to CORE_IMAGE_=
EXTRA_INSTALL.<br>
&gt; But no libvulkan.so in /usr/lib.<br>
&gt;<br>
&gt; Am I missing something?<br>
&gt;<br>
&gt; ________________________________<br>
&gt; From: Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" =
data-auth=3D"NotApplicable">alex.kanavin@gmail.com</a>&gt;<br>
&gt; Sent: Friday, September 16, 2022 12:14 PM<br>
&gt; To: Edgar Mobile &lt;<a href=3D"mailto:heideggm@hotmail.com" data-auth=
=3D"NotApplicable">heideggm@hotmail.com</a>&gt;<br>
&gt; Cc: <a href=3D"mailto:yocto@lists.yoctoproject.org" data-auth=3D"NotAp=
plicable">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@list=
s.yoctoproject.org" data-auth=3D"NotApplicable">yocto@lists.yoctoproject.or=
g</a>&gt;<br>
&gt; Subject: Re: [yocto] Adding Vulkan to core-image-weston<br>
&gt;<br>
&gt; You can start by adding vulkan-samples to the image - the recipe is in=
<br>
&gt; core. We do not test vulkan in qemu, because the software vulkan<br>
&gt; rendering is still under active development, and marked as<br>
&gt; experimental in virglrenderer.<br>
&gt;<br>
&gt; It may help if you use qemux86_64 and kvm for it, because software<br>
&gt; graphical paths are too slow without it generally.<br>
&gt;<br>
&gt; Alex<br>
&gt;<br>
&gt; On Fri, 16 Sept 2022 at 13:43, Edgar Mobile &lt;<a href=3D"mailto:heid=
eggm@hotmail.com" data-auth=3D"NotApplicable">heideggm@hotmail.com</a>&gt; =
wrote:<br>
&gt; &gt;<br>
&gt; &gt; Greetings,<br>
&gt; &gt;<br>
&gt; &gt; I'd like to test graphics rendering with Vulkan on an Aarch64 Yoc=
to honister (qemu, host is x64). Can you tell me which parameters I need to=
 add to local.conf to get all libs and headers installed (plus maybe some u=
seful tools and demo if present)?<br>
&gt; &gt;<br>
&gt; &gt; Regards<br>
&gt; &gt;<br>
&gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; &gt; Links: You receive all messages sent to this group.<br>
&gt; &gt; View/Reply Online (#58059): <a href=3D"https://lists.yoctoproject=
.org/g/yocto/message/58059" data-auth=3D"NotApplicable">
https://lists.yoctoproject.org/g/yocto/message/58059</a><br>
&gt; &gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/937=
20286/1686489" data-auth=3D"NotApplicable">
https://lists.yoctoproject.org/mt/93720286/1686489</a><br>
&gt; &gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.o=
rg" data-auth=3D"NotApplicable">
yocto+owner@lists.yoctoproject.org</a><br>
&gt; &gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/un=
sub" data-auth=3D"NotApplicable">
https://lists.yoctoproject.org/g/yocto/unsub</a> [<a href=3D"mailto:alex.ka=
navin@gmail.com" data-auth=3D"NotApplicable">alex.kanavin@gmail.com</a>]<br=
>
&gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; &gt;<br>
</div>
</span></font></div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_PH0PR84MB183571245531C6D271BD5A90C74D9PH0PR84MB1835NAMP_--

