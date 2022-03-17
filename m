Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 854DBC433EF
	for <webhook@archiver.kernel.org>; Thu, 17 Mar 2022 10:41:02 +0000 (UTC)
Received: from NAM04-BN8-obe.outbound.protection.outlook.com
 (NAM04-BN8-obe.outbound.protection.outlook.com [40.92.47.87])
 by mx.groups.io with SMTP id smtpd.web11.8731.1647513661615404662
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Mar 2022 03:41:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=TDdbTosT;
 spf=pass (domain: hotmail.com, ip: 40.92.47.87,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GNL18Hy6MTrVr2kzRv9mj/aQov4S7c68OGdJd9VwMJnmsU02SI+gn8AY21hV8UNlGXB2aYv8j2begW3n7eAdsabKLHA9zIPNOW6nFSYORCN5H4r6jS3We/1IBxXRd5SySMFzqSiKJIJCsgKp3Gwz41djoC8I5Krz3NSaYpgFYYjmVSQ7I9HIE0y4XGpKO+68fapUEnFXzm4pmZ86uMKUbnLE6z16X7Zkjf20a4HUZHH6gDdjwN+XwZZfInNeAhrA9n5Mj63b/sveAe/ERUribHk5pBAaPyz75b2cBRorMV4yOs0EprbVKJku7kGbC/bHUJD9nb1fozSUflR08H4YeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fIZWqOnx+66ebF1IyPCu5aNGYZr1GMpLvh4xvt3jYVw=;
 b=lyRmSwpY8hJRuR8ugg7fU6J3Tk+b73gJ5SaxF83A+7SgHV/6EOPR8njZ+uhzkRwu5FZQfZTtJfqsvQatmJS39VMt50CLqozma6vS13ou54WpjlHtlZwFfqw8b9IH6J31fAosnj2iD3PLzN72G8Qg2YOaepZqKS0Tf9+iojxdBZwmZIuTIjwWmxSf4N4iviVBQ+Vm0Swp1Mb9VTLeZkXPsa4DjkM+rM3VVi7ZLtF4eTucJV542IhwEaki1994wea0m5GHboH+IMsI/a4inDAQPVtYi3+V6ObbfCskgj6Dx/irxHSLL7qmkCkxISiIVF14gKhb9C68fQXp1IohDiXQqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fIZWqOnx+66ebF1IyPCu5aNGYZr1GMpLvh4xvt3jYVw=;
 b=TDdbTosT5yp/ERayzbjfP9Pq5WHN4h1+5YSxyzxPzyaGHt9GvQTq7yVFWpOrIbfZLrAJwKXEwn0KMYA20YDXj7LAK50LIhbg987po0dRq0qfSuFCyW1SqB/F9OqgLHe1jHfM0BIRXbyEkxcn76F9UamTD00PuZ+SAHspDUE3j4L/DUAO2ReZITMizrfFo8IqWhnSHUtkbE/wcgmkQv4HIIA8PeCmM6d/clju+kwYtj9ztra36o4fWTfsSP701XibetwfS96B2+jMeb3LXjpIhKcXssVSHToHILo0TQrbmZwBZ0q0pqiN8llHHYA/Y7Vu2ZT0wKxJFepi232ROoNClg==
Received: from DM8PR16MB4357.namprd16.prod.outlook.com (2603:10b6:8:30::8) by
 BL0PR16MB2276.namprd16.prod.outlook.com (2603:10b6:207:45::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5081.17; Thu, 17 Mar 2022 10:40:59 +0000
Received: from DM8PR16MB4357.namprd16.prod.outlook.com
 ([fe80::ece2:62d7:a186:7b83]) by DM8PR16MB4357.namprd16.prod.outlook.com
 ([fe80::ece2:62d7:a186:7b83%5]) with mapi id 15.20.5081.017; Thu, 17 Mar 2022
 10:40:59 +0000
From: Edgar Mobile <heideggm@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu:
 qemu-system-aarch64: Virtio VGA not available.
Thread-Topic: [yocto] runqemu - ERROR - Failed to run qemu:
 qemu-system-aarch64: Virtio VGA not available.
Thread-Index: AQHYOSrnDihWuD59JE6B4gVYRW8F9azCGF2AgAE4Js6AABH+AIAAAdnk
Date: Thu, 17 Mar 2022 10:40:59 +0000
Message-ID: 
 <DM8PR16MB4357E7702635621F70A968D4C7129@DM8PR16MB4357.namprd16.prod.outlook.com>
References: 
 <DM8PR16MB43578CD48FE66AE37B2C3545C7119@DM8PR16MB4357.namprd16.prod.outlook.com>
 <CANNYZj_5Msuteo-xTAZ3UeynnHKC9hWyWL_gc3_zH+ubHq_PGg@mail.gmail.com>
 <DM8PR16MB4357DD3F1C9DEAB3058508B5C7129@DM8PR16MB4357.namprd16.prod.outlook.com>
 <CANNYZj9ousDr7Bci_6gFkXRFDvnr591vXyWeMmBLC=LWTWfKwg@mail.gmail.com>
In-Reply-To: 
 <CANNYZj9ousDr7Bci_6gFkXRFDvnr591vXyWeMmBLC=LWTWfKwg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [pLBdpKOknuB53+RZHTGPr/J1ch4qtfXo]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b09e8bb1-a977-4f08-a7dd-08da0802a00a
x-ms-traffictypediagnostic: BL0PR16MB2276:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 UcGUqnyHnPgRIanIX5pX8x8s02s5iGG746L3kj+wWrkXa9elQJbosX20EsKILgZsGlPkQ3tON29Dob1Y4+dc+gDSa3hEpUhp6Kskl1p6CZgaFra7Bk4p0hZV9oe0roAIu1zwko2tYn+3cKIfIOX6GgtEnTq9mvkuduEfWs3q8SLFEY4nhRlAY7XtRBuVgZjjWXmkX1UaU7DdFhGy7bnRIu5mFBKHNOgC6k74puMf0mhYkQyJqKxzi+uhpowb1F6ZpvhI31ySLvzpHnfLaPI0ynvVc8gekr32dqZZbjWqYghyUMnAS7lmFjKJvQX9YLP1an3RCL9CsC4LX5MvprXuRMxq0OKzLqXMKWRQrMMdoSaAGSnJOoZQAyqXOKdSmGsZr0wYnRokf2Iycdna9v00VgaJT1BCfFbmc6gNkShMPv+aaOTeWmX+qyrdJyqdmqZXX0RqVOaq2EFWY+rSh+kueUEeKndy6VS97erdwE0V+jpO5zGlv3J29/nYjSGHSmtGn8D0vIhfH95joQ8HBRHEo5UQfpzsGkLbOyCZkA5Y5ySsgPgs+R/cXM5EkeZvG7hS694yLasvSARmnzpx8Gwbbx99AZL6v9RVs5xf3TAY95FYdfvhetibppCQzwIVWKsr+U6lLwPcyKdmgK2BSmek7mg46caAQtjmvabf3a+L0+w=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?SyUFaYNLfu74ceTMITJjTRktPfUoj7MTbEu+m6h/tw1IPBP0X4q1lfKLPb?=
 =?iso-8859-1?Q?qixOu2N8/pT4oPx/YliWfWqv7WQJZ4ioggRLrRk7twkW7/U06yUnzItzhK?=
 =?iso-8859-1?Q?lNTikeD7mc608/sDXVwp/MuJC8EiVwRmDTCr+21/dMZsUJqwVEKt7lTwYJ?=
 =?iso-8859-1?Q?FzP9bKA0LCibyAibQvSCdchc0WYzhpIHbaadDPa5AtsJt7esevnnn+IwzF?=
 =?iso-8859-1?Q?Z/lAHI4bOakq1s0vc88JvE/IUNBfrVVnj6dhftHB2gPntvS9TznVuO6VEQ?=
 =?iso-8859-1?Q?rdbvbUTo81wQXqXW78myBB1xejeOmKhwBNebrKRj0XnIN2q+KQZkLQo/6K?=
 =?iso-8859-1?Q?LoHzjqUXkn0b375K3117vGY+hbvTmaVEKjzRcOAmyRbouutLvZ8X6+JiwM?=
 =?iso-8859-1?Q?kV6+zF72KCMHTjzzDXa6ekPd2Ookq0UVxJ5zVLbK8l4obqi+JRejHbLEvj?=
 =?iso-8859-1?Q?ubj7I7lqG8ZXiNVrd2E1FB2DmY2xMLCKOXMXBWJTtnlF8GRBHovecKYZys?=
 =?iso-8859-1?Q?47CO76zHUFWOAMCgmpeqo2cCC5UEm1b+ohq5eboHlPdWNleqyNrbLGFK3j?=
 =?iso-8859-1?Q?gUp8wUce1hWLMRMKb0aK2ASEbIIwo+nkrxrwJc6XBFgStCBCL0IKSuN0dr?=
 =?iso-8859-1?Q?U9xGTxhTWGHkCr46mHBcJ4Cwki6pSRIenL8sgVn4txxOP/FMQVQsoqRQVN?=
 =?iso-8859-1?Q?TXkIXqwhXbLdRBxGUXEvPoAZovsHPcMrhX4d3YKFfc6rBFv8MEQfyj10mh?=
 =?iso-8859-1?Q?mKhHpItq4PaDniAhpD1aRABIMM0SGK2OAhqDgFGUhRq8eE6GY9So01DATX?=
 =?iso-8859-1?Q?9N2kg222gWLIZxU9S+6lUB7fZ/gfnmxphn85N9VkyJwhwU9L5sNx4MyGte?=
 =?iso-8859-1?Q?Lh3q7BHV/PcSw8SMxjCc4VZNjpGWX94DqgYVbWf9W3mq4oqWIKUxnwjCgK?=
 =?iso-8859-1?Q?5/97LAism5hm6FpW8gmz8JUEgAoTOKIJTs39kDuUAaKSj2VsmFYLGohPEG?=
 =?iso-8859-1?Q?6Bqd0k7ffJX1SmkypqdnYQrRsHN9yOG5bz5SX2Jll1b9kbogab2fXJrQ+o?=
 =?iso-8859-1?Q?mTY9CqZKDiSO4LM1uDKgD2ZWmLd14dpIt2LGUAMOSIzXtWCF5oe/IMSv8J?=
 =?iso-8859-1?Q?rXdEGpaNjbQGFhsVzuS5qynWb4d/atP/By3CF2eqmQJXTBADt9lv5Sft2b?=
 =?iso-8859-1?Q?z3khbyhGmLWN6Q=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_DM8PR16MB4357E7702635621F70A968D4C7129DM8PR16MB4357namp_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-5ce7b.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR16MB4357.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 b09e8bb1-a977-4f08-a7dd-08da0802a00a
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2022 10:40:59.4043
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR16MB2276
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Mar 2022 10:41:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56476

--_000_DM8PR16MB4357E7702635621F70A968D4C7129DM8PR16MB4357namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I tried that first and it was horribly slow. That's why I try hardware acce=
leration now.

Do you _know_ it doesn't work? If yes, why?

________________________________
From: Alexander Kanavin <alex.kanavin@gmail.com>
Sent: Thursday, March 17, 2022 10:33 AM
To: Edgar Mobile <heideggm@hotmail.com>
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-system-aarc=
h64: Virtio VGA not available.

If you want an aarch guest on x86, then drop the gl option from
runqemu. This will fall back to software rendering.

Alex

On Thu, 17 Mar 2022 at 10:33, Edgar Mobile <heideggm@hotmail.com> wrote:
>
> Sorry, but I need an Aarch64 guest.
>
> Ok, using a newer qemu I now encounter the following problem:
>
> root@qemuarm64:/usr/bin# XDG_RUNTIME_DIR=3D/run/user/0 ./eglinfo
> EGL client extensions string:
>     EGL_EXT_client_extensions EGL_EXT_device_base
>     EGL_EXT_device_enumeration EGL_EXT_device_query EGL_EXT_platform_base
>     EGL_KHR_client_get_all_proc_addresses EGL_KHR_debug
>     EGL_EXT_platform_device EGL_EXT_platform_wayland
>     EGL_KHR_platform_wayland EGL_EXT_platform_x11 EGL_KHR_platform_x11
>     EGL_MESA_platform_xcb EGL_MESA_platform_gbm EGL_KHR_platform_gbm
>     EGL_MESA_platform_surfaceless
>
> GBM platform:
> pci id for fd 3: 1234:1111, driver (null)
> MESA-LOADER: failed to open bochs-drm: /usr/lib/dri/bochs-drm_dri.so: can=
not open shared object file: No such file or directory (search paths /usr/l=
ib/dri)
> failed to load driver: bochs-drm
> ...
>
>
> What is this bochs-drm_dri.so and does Yocto / the Mesa in Yocto provide =
it?
>
> ________________________________
> From: Alexander Kanavin <alex.kanavin@gmail.com>
> Sent: Wednesday, March 16, 2022 2:51 PM
> To: Edgar Mobile <heideggm@hotmail.com>
> Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-system-aa=
rch64: Virtio VGA not available.
>
> This configuration is not tested. If you want accelerated gl, build
> for the qemux86-64 target.
>
> Alex
>
> On Wed, 16 Mar 2022 at 12:46, Edgar Mobile <heideggm@hotmail.com> wrote:
> >
> > Greetings,
> >
> > I tried to run an Aarch64 Yocto with qemu on amd 64 Host. For that purp=
ose, I built core-image-weston from Hardknott following the manual
> >
> > https://www.mail-archive.com/yocto@lists.yoctoproject.org/msg07306.html
> >
> > I then try to run
> >
> > runqemu sdl gl
> >
> > But it always aborts with
> >
> > runqemu - ERROR - Failed to run qemu: qemu-system-aarch64: Virtio VGA n=
ot available.
> >
> > What can I do?
> >
> > Regards
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#56467): https://lists.yoctoproject.org/g/yocto/mess=
age/56467
> > Mute This Topic: https://lists.yoctoproject.org/mt/89819473/1686489
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin=
@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >

--_000_DM8PR16MB4357E7702635621F70A968D4C7129DM8PR16MB4357namp_
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
I tried that first and it was horribly slow. That's why I try hardware acce=
leration now.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Do you _know_ it doesn't work? If yes, why?<br>
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
<b>Sent:</b> Thursday, March 17, 2022 10:33 AM<br>
<b>To:</b> Edgar Mobile &lt;heideggm@hotmail.com&gt;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject:</b> Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-syst=
em-aarch64: Virtio VGA not available.</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">If you want an aarch guest on x86, then drop the g=
l option from<br>
runqemu. This will fall back to software rendering.<br>
<br>
Alex<br>
<br>
On Thu, 17 Mar 2022 at 10:33, Edgar Mobile &lt;heideggm@hotmail.com&gt; wro=
te:<br>
&gt;<br>
&gt; Sorry, but I need an Aarch64 guest.<br>
&gt;<br>
&gt; Ok, using a newer qemu I now encounter the following problem:<br>
&gt;<br>
&gt; root@qemuarm64:/usr/bin# XDG_RUNTIME_DIR=3D/run/user/0 ./eglinfo<br>
&gt; EGL client extensions string:<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; EGL_EXT_client_extensions EGL_EXT_device_base<=
br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; EGL_EXT_device_enumeration EGL_EXT_device_quer=
y EGL_EXT_platform_base<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; EGL_KHR_client_get_all_proc_addresses EGL_KHR_=
debug<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; EGL_EXT_platform_device EGL_EXT_platform_wayla=
nd<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; EGL_KHR_platform_wayland EGL_EXT_platform_x11 =
EGL_KHR_platform_x11<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; EGL_MESA_platform_xcb EGL_MESA_platform_gbm EG=
L_KHR_platform_gbm<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; EGL_MESA_platform_surfaceless<br>
&gt;<br>
&gt; GBM platform:<br>
&gt; pci id for fd 3: 1234:1111, driver (null)<br>
&gt; MESA-LOADER: failed to open bochs-drm: /usr/lib/dri/bochs-drm_dri.so: =
cannot open shared object file: No such file or directory (search paths /us=
r/lib/dri)<br>
&gt; failed to load driver: bochs-drm<br>
&gt; ...<br>
&gt;<br>
&gt;<br>
&gt; What is this bochs-drm_dri.so and does Yocto / the Mesa in Yocto provi=
de it?<br>
&gt;<br>
&gt; ________________________________<br>
&gt; From: Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;<br>
&gt; Sent: Wednesday, March 16, 2022 2:51 PM<br>
&gt; To: Edgar Mobile &lt;heideggm@hotmail.com&gt;<br>
&gt; Cc: yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt;<=
br>
&gt; Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-system=
-aarch64: Virtio VGA not available.<br>
&gt;<br>
&gt; This configuration is not tested. If you want accelerated gl, build<br=
>
&gt; for the qemux86-64 target.<br>
&gt;<br>
&gt; Alex<br>
&gt;<br>
&gt; On Wed, 16 Mar 2022 at 12:46, Edgar Mobile &lt;heideggm@hotmail.com&gt=
; wrote:<br>
&gt; &gt;<br>
&gt; &gt; Greetings,<br>
&gt; &gt;<br>
&gt; &gt; I tried to run an Aarch64 Yocto with qemu on amd 64 Host. For tha=
t purpose, I built core-image-weston from Hardknott following the manual<br=
>
&gt; &gt;<br>
&gt; &gt; <a href=3D"https://www.mail-archive.com/yocto@lists.yoctoproject.=
org/msg07306.html">
https://www.mail-archive.com/yocto@lists.yoctoproject.org/msg07306.html</a>=
<br>
&gt; &gt;<br>
&gt; &gt; I then try to run<br>
&gt; &gt;<br>
&gt; &gt; runqemu sdl gl<br>
&gt; &gt;<br>
&gt; &gt; But it always aborts with<br>
&gt; &gt;<br>
&gt; &gt; runqemu - ERROR - Failed to run qemu: qemu-system-aarch64: Virtio=
 VGA not available.<br>
&gt; &gt;<br>
&gt; &gt; What can I do?<br>
&gt; &gt;<br>
&gt; &gt; Regards<br>
&gt; &gt;<br>
&gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; &gt; Links: You receive all messages sent to this group.<br>
&gt; &gt; View/Reply Online (#56467): <a href=3D"https://lists.yoctoproject=
.org/g/yocto/message/56467">
https://lists.yoctoproject.org/g/yocto/message/56467</a><br>
&gt; &gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/898=
19473/1686489">
https://lists.yoctoproject.org/mt/89819473/1686489</a><br>
&gt; &gt; Group Owner: yocto+owner@lists.yoctoproject.org<br>
&gt; &gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/un=
sub">https://lists.yoctoproject.org/g/yocto/unsub</a> [alex.kanavin@gmail.c=
om]<br>
&gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; &gt;<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_DM8PR16MB4357E7702635621F70A968D4C7129DM8PR16MB4357namp_--

