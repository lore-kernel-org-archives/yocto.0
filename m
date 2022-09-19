Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DCA7C54EE9
	for <webhook@archiver.kernel.org>; Mon, 19 Sep 2022 07:36:36 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (NAM10-DM6-obe.outbound.protection.outlook.com [40.92.41.91])
 by mx.groups.io with SMTP id smtpd.web12.17301.1663572980016770644
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Sep 2022 00:36:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=Itwk997x;
 spf=pass (domain: hotmail.com, ip: 40.92.41.91,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YIusEjfrDIK3Jh4a5rXc+uMGGInGSY7Ucoz2nAQhnlt0Yoaknu21w999F0IWOeYXH0xozsNpDkjunAcQoAFcvWO2Ut+qoKbBab169pnegzwduFOIJtmiModoSBkF3FU2ZgNIif/xz3Mpq2T6l6UKsAT/cWT0ge3vXpF16LB6Vc1DAoo3t6uSb2O6pIBLmNHf5dMgxrI6EK3u/c38j+T7bxet9yZS6bXmjOB9qSOk7gDEdfTCzcZAlzUhp+iYZV9v3hfVjaiCc6cpphllmHjX/M3mTMZavx6HZJ0ENxEv4GncNk/nRughC2aSSYc+qn1+DwBxciZwHJgHUTqjnmFpVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=03x2GtsHbhlDEK4i00PpEu2Q5be9AiJkuOuG4qC+FXM=;
 b=RraXuvY7j/dK2wl95M9XNa+81Un+d/7oah+j0PAn5lCMSIAz8V9IRIK2Ipru6hESbn+klj7uSc7B7toZDaNMRAVuMZdG5UjuJn8MFoZfpsYgEP7N9fAItLQdno9s60Sv88HO/ZYAL/C0fILyBUmvzCs7RubmaWjAQ1MvR73zQi9qRTXr4GlPJNFOqVm5bovLY4wvoS7aVWWldc0tO0lOwQIJlrFtG+MJqZuYPlx4vYHvQBuMBK9+Mb0IBSywP9+zeb6jNSEusroNvcB1I6JNkmJWRWF6rpVfVTXdRsHr8H9YUQ5bUH7Dz0M8B+NNptHWjt8DBnxLUB/UDCcpjcrn3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=03x2GtsHbhlDEK4i00PpEu2Q5be9AiJkuOuG4qC+FXM=;
 b=Itwk997xadYAWm6jHvWmWHGpOplXPRET7/B2qmw9OotuNY6et3VJwivYgZK8PxDXYhFgrcuFILMOf/bODHnXfCGiKPr4x9yExJdgcI9wpUmeFXwAl6GU8sLzsltbEJV1Tty50FJDOYHnqS8A7hxxl2y6XKLDFXTOPA8jnvxUK8yFCMo6iTM7ZWdEPYNKyw6r3GNTHSRCurHCafVEGmTDiphKkFUvSAT60+u1U8tAXnf7dEKqEX/uEAOKt98a6xkX0duMcqTDkVick7Zm4uOQGBD8dk4dZ0jpMWB2x0dOPyR/mFe1cYNN6ITuKbHHLtLhpiFjzNh2RA/gH/B8OzdS1g==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by DM4PR84MB1591.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:8:4a::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5632.16; Mon, 19 Sep 2022 07:36:17 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40%4]) with mapi id 15.20.5632.018; Mon, 19 Sep 2022
 07:36:17 +0000
From: Edgar Mobile <heideggm@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding Vulkan to core-image-weston
Thread-Topic: [yocto] Adding Vulkan to core-image-weston
Thread-Index: AQHYycEskKLcduGixUqgdEVWou0Ata3h+FKAgABURlCAAP7uAIADFZtO
Date: Mon, 19 Sep 2022 07:36:17 +0000
Message-ID: 
 <PH0PR84MB1835D30B90E3ED9ADADA471BC74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
References: 
 <PH0PR84MB1835D4BD7B71CB2ED806C2CEC7489@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-tD-v_Cb4F7cOqyQRWpgWOBavxqhgJPhZzQ2gw1dkWxw@mail.gmail.com>
 <SJ0PR84MB1846B369EB668E66A065A4FCC7489@SJ0PR84MB1846.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_jSuNdush++p=NWW86M2rs2fpnTzOuRw1xjvDBrAdsZw@mail.gmail.com>
In-Reply-To: 
 <CANNYZj_jSuNdush++p=NWW86M2rs2fpnTzOuRw1xjvDBrAdsZw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [BJ15cLOta0Kar5mw/UhUG9Ay/jsypKWg]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR84MB1835:EE_|DM4PR84MB1591:EE_
x-ms-office365-filtering-correlation-id: 36a1635d-e7a4-4f4d-5ab5-08da9a11a3b6
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 lY8vyecQIXQ79TuGWASQ7RnG3bOA7TJ1UlJ2Dr8F53e6I4xzCyij9dyqYiOqP7nsjwAKGiku+AO/i3Bv+0qF9v3RutnbWTnjJoWlj9VyFjU0OFmt16VM8XcD4GrB0ov+oQ91zfm5oRrvc81/by7taBCTzcqzDzaXwmEfFCut+kRkPIMzAwomVtRZJXG23UGekk/wvP0RuED8UHb/lqvkyLZg6iOugbhoyiegQk7AoMeiPLqgNoiPUCdOO0wii26KsdU0nSKtvgy5JKDd0ug683jSXDkjRgAKe2/f81pllWOojAGN2kMU5l/bvPVFoVF9aeuVyDXN+M73tKbjiypkesj0PHrKLdWMeEDqoGzGTmm8rnZpKLVbfihccA82AoysZWfIl+caNNt6TsFfWSAAEkZCHAUYOK/hEBT6SVGFKXtqs4PlgyvKJwbkbjKa1x8p2dtwLIpfC9IWUnaJGwoXRlOz4eMC472QI5AMc+HbY3h0x37AiOvmNOFcr4wnrHxKEY6RkXkYi1L4QI5iZL8tAkn+rvD1zYnLO4FxR2leB2xUrPt+sV+m4TyxwsnZn04zBYbCP47EsvvSfxNy8Pp4rnKIGFlYOgB2lgFq/8Z6ecO/Ar3O55WLXE7f/Bk4cbMAcROrLxE13gtKgecl+r+wy0pgDJpPF5vx9spRfDLV0O5ea9C5/WhY7m7uYTtmMxnH
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?bvMAjlZ6q906q10nULmdC29MUl2M0xSqFjwMbL24qhVTVjSZuSiKuk66bI?=
 =?iso-8859-1?Q?wMNU0QO5bHomdFzxLj8OdHohFMdYV/6PIWU5WY3a9qx2X5aM2bOd1X4tJt?=
 =?iso-8859-1?Q?4AB+bwbe9q/Hf4yeOXpkr0ejQJ0mZlKfAHN25KL/XUkrIEz/c1tDzT9/7r?=
 =?iso-8859-1?Q?U3HBjajOKCeeewJ8EwSd/Zr0ySr5ISX30XBpHO+Gclm6s/om+SEH2WcHsj?=
 =?iso-8859-1?Q?l6H4blX12ioodeS4wWTOSy5/Zyzm2Kyim9KOxuzvuYn65u9RnmacCkYH5Y?=
 =?iso-8859-1?Q?uYIeQ8TM0vgAAssGnL+kfNb6mMK/I8dm+ouP8l6IUdYbsWRjhoceXgPgF0?=
 =?iso-8859-1?Q?utfJbiE2UEKicwVBsrGEQj4nPF/DyKsv+p+V9MSftBzewdG8XcR9lyVG6P?=
 =?iso-8859-1?Q?wKNAKbLpTt1cQpWljdTogu11nSxQ7bIzGbMysQhzfyNc925JtxKBWm/JDn?=
 =?iso-8859-1?Q?mgbm0HSEx3n+Ia4l2jsIA1ZCQfOfHve5dUUpdXAOcXeGBfsuUyL3t4Np62?=
 =?iso-8859-1?Q?kGp1vdG5oZyTtGhzCbb6m5vqAwSB54L43gMpsZg4RpZcCF6ILb/UY/gF8j?=
 =?iso-8859-1?Q?GL/fqqLfBcmVACS819zDhK534bHJ268tGa5yPucWseXZ98y5DUVHYjM0NK?=
 =?iso-8859-1?Q?u0y5H1U6BolHB3rLyUxwT0saGC2zLlmpk27dxI95Ik/M+xlbmvxMdTdi3U?=
 =?iso-8859-1?Q?xsBFktY6FZGqDQDr50mYq0/bR8/0CXyNIPDB+EO4PPgnEDpKoiWeJjc0+S?=
 =?iso-8859-1?Q?eAwehouWbb7uyitntObmqKWHDzZfJ42jYl4RzK4QHoxme4OeQmUs59bbST?=
 =?iso-8859-1?Q?UX0LS+Ox96A3tpwGDdvqEDCZzQwFt8Vk1vZU/dxLNyfTikcDgfk0E+rZh6?=
 =?iso-8859-1?Q?xxNwdeXaejZMdsCCYtvb/HFfbVT1yLKRMiA0vQBY+ZTallbtI6+Jvcii1P?=
 =?iso-8859-1?Q?5V/J70yD1zN3ydj+/iV+YWWuvwS48T8ZHYS5wtIMIo0jeGaEHkrHiUjc1B?=
 =?iso-8859-1?Q?mC1CvRBGPIguI90Xeo0V11oRtbsJOTtfKFKdAvKaNuuw8C8GhxuB8Pqqr1?=
 =?iso-8859-1?Q?OYzH8N+yFYqfEG2NI3y6FSM/nArflsE3RQI48yKNhN5ecie4Pf5EsnjqpP?=
 =?iso-8859-1?Q?VnYn9wvJz0RH2UBau9brQrQCkGLFa0HPkiWB8+B+YDlWT6/ncTQhcZTk9Q?=
 =?iso-8859-1?Q?64pj6PDTE1ujlRyQZwY8WGxluFiicL4mqBqCh7uI/0LVqpVY/SJF9GprH7?=
 =?iso-8859-1?Q?9tUV60HtGa/FXkUG3DlWsmq5rYwWfU1wP2ykbTA5ycnrTeXkwiWyVjOIX5?=
 =?iso-8859-1?Q?Mkv7?=
Content-Type: multipart/alternative;
	boundary="_000_PH0PR84MB1835D30B90E3ED9ADADA471BC74D9PH0PR84MB1835NAMP_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 36a1635d-e7a4-4f4d-5ab5-08da9a11a3b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2022 07:36:17.7948
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR84MB1591
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Sep 2022 07:36:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58067

--_000_PH0PR84MB1835D30B90E3ED9ADADA471BC74D9PH0PR84MB1835NAMP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Greetings,

I see the libvulkan.so.* libs now, but I don't see any sample binaries that=
 look like Vulkan. Is there a list somewhere for all the files in vulkan-sa=
mples?
Regards

________________________________
From: Alexander Kanavin <alex.kanavin@gmail.com>
Sent: Saturday, September 17, 2022 8:28 AM
To: Edgar Mobile <heideggm@hotmail.com>
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding Vulkan to core-image-weston

If the samples don't link with libvulkan directly, it won't get pulled
into the images. How are they loading that library, is it via dlopen()
somewhere? Invisible dlopen() dependencies typically need to be listed
explicitly in RDEPENDS.

As a quick fix, you can add vulkan-loader to the same
CORE_IMAGE_EXTRA_INSTALL list.

Alex

On Fri, 16 Sept 2022 at 19:17, Edgar Mobile <heideggm@hotmail.com> wrote:
>
> Ok, so I switched to Kirkstone and added vulkan-samples to CORE_IMAGE_EXT=
RA_INSTALL.
> But no libvulkan.so in /usr/lib.
>
> Am I missing something?
>
> ________________________________
> From: Alexander Kanavin <alex.kanavin@gmail.com>
> Sent: Friday, September 16, 2022 12:14 PM
> To: Edgar Mobile <heideggm@hotmail.com>
> Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
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
> On Fri, 16 Sept 2022 at 13:43, Edgar Mobile <heideggm@hotmail.com> wrote:
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
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin=
@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >

--_000_PH0PR84MB1835D30B90E3ED9ADADA471BC74D9PH0PR84MB1835NAMP_
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
Greetings,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I see the libvulkan.so.* libs now, but I don't see any sample binaries that=
 look like Vulkan. Is there a list somewhere for all the files in vulkan-sa=
mples?</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Regards<br>
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
<b>Sent:</b> Saturday, September 17, 2022 8:28 AM<br>
<b>To:</b> Edgar Mobile &lt;heideggm@hotmail.com&gt;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject:</b> Re: [yocto] Adding Vulkan to core-image-weston</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">If the samples don't link with libvulkan directly,=
 it won't get pulled<br>
into the images. How are they loading that library, is it via dlopen()<br>
somewhere? Invisible dlopen() dependencies typically need to be listed<br>
explicitly in RDEPENDS.<br>
<br>
As a quick fix, you can add vulkan-loader to the same<br>
CORE_IMAGE_EXTRA_INSTALL list.<br>
<br>
Alex<br>
<br>
On Fri, 16 Sept 2022 at 19:17, Edgar Mobile &lt;heideggm@hotmail.com&gt; wr=
ote:<br>
&gt;<br>
&gt; Ok, so I switched to Kirkstone and added vulkan-samples to CORE_IMAGE_=
EXTRA_INSTALL.<br>
&gt; But no libvulkan.so in /usr/lib.<br>
&gt;<br>
&gt; Am I missing something?<br>
&gt;<br>
&gt; ________________________________<br>
&gt; From: Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;<br>
&gt; Sent: Friday, September 16, 2022 12:14 PM<br>
&gt; To: Edgar Mobile &lt;heideggm@hotmail.com&gt;<br>
&gt; Cc: yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt;<=
br>
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
&gt; On Fri, 16 Sept 2022 at 13:43, Edgar Mobile &lt;heideggm@hotmail.com&g=
t; wrote:<br>
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
&gt; &gt; Group Owner: yocto+owner@lists.yoctoproject.org<br>
&gt; &gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/un=
sub" data-auth=3D"NotApplicable">
https://lists.yoctoproject.org/g/yocto/unsub</a> [alex.kanavin@gmail.com]<b=
r>
&gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; &gt;<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_PH0PR84MB1835D30B90E3ED9ADADA471BC74D9PH0PR84MB1835NAMP_--

