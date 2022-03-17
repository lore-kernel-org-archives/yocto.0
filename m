Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E2D3C433EF
	for <webhook@archiver.kernel.org>; Thu, 17 Mar 2022 13:02:29 +0000 (UTC)
Received: from NAM02-BN1-obe.outbound.protection.outlook.com
 (NAM02-BN1-obe.outbound.protection.outlook.com [40.92.15.45])
 by mx.groups.io with SMTP id smtpd.web08.9830.1647522147829578111
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Mar 2022 06:02:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=eVLnl2tg;
 spf=pass (domain: hotmail.com, ip: 40.92.15.45,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lytqn2a9IotdSoEwD9TqMm5WCKhQIR2XfTZlCLZ8Ppl/4NTxUGzmzs2PI4VGD8ZUIUD7D7ThP0LVm07nGHgn5Sjuombn30ysIYrsQCy8Wj744xEmkXSELlFa1EkCAZEsbFDn3qShWpYBqYt2JSwxbakyYuop6/scWbVWTlKhOdZkZ6JGlOqFvj8S3NsXrGwM+/ToIK0rKaJT+9OoU9huGgFIMBGZibP4jRSdUKGRAf16+o1lRQ+alaCenClA2VmSsYST2yKhjlroxqPTo5wYj+6/4UOWWOyZf+jeHwviW500gliP/4X5NzXtmnXi3eEZlekdKJQC5amrlQXup79uog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HZh/CyDkGJ6fzxO3/AlCshOaWRX7TZXG9FCBSICGveU=;
 b=cCu7DMiMtSIN7zh/MLOCGTAnoPcSpbcn02IqgtWy67CXeBpHKzas0UjOjSPn8xX2n98GRtpTPdAcG1JD0WAljH6HmnBVZERTtAPtcTnAeDsw3amomLJ72d2UmCBIXe9W6070WSNwAx9GG6uOQfaLLLxGglMVx39RXQQz2OgnAV2ISkck1KRODLN/8qWs805iCLHgphSqMZ0A3y+/sWUUeDII+Xr/IqJmkHhLPLndXAoBPhqZYPBylMCSBOIs3Qw+ZqRbWJN9PjvYQjxzsF6pgSoVBdUulh8aWrWvijZkt919dvwfZxKXqezmXn56PU9nokTGQyb2zlMbNZJIo/pCWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HZh/CyDkGJ6fzxO3/AlCshOaWRX7TZXG9FCBSICGveU=;
 b=eVLnl2tgbAOWTU1d/U0to7Y7MRE4CR7SVlFt15r6IJUk2MMaWxzrKYaaCnX6qv+7GLJvFX2Y41pU8cKDyNW2xKLvLcOxikldqUlzHb1M/dzFzf3UHQdNJp1Y9hHWFFi+D2Cz7eZZ6ICUX1s3df4Li4XWAoBHHYxIQD/cIILOnj5mq62VfjyokMN4zdMLDDPEVtpgxXNhF5M1e912m/JFs82QT/aKqu7MUsdhGnNw9p+WK6L52qkQLX21/tqTzzDWmtHRtvzWUT0H9AL6ae41cmuNwTZxqHM2oe+lw8tpGGCbC8OMkIAsB0bK+20z8XVd5OJT4GSun5qZvBKbHeM7HA==
Received: from DM8PR16MB4357.namprd16.prod.outlook.com (2603:10b6:8:30::8) by
 SJ0PR16MB4093.namprd16.prod.outlook.com (2603:10b6:a03:323::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.17; Thu, 17 Mar
 2022 13:02:25 +0000
Received: from DM8PR16MB4357.namprd16.prod.outlook.com
 ([fe80::ece2:62d7:a186:7b83]) by DM8PR16MB4357.namprd16.prod.outlook.com
 ([fe80::ece2:62d7:a186:7b83%5]) with mapi id 15.20.5081.017; Thu, 17 Mar 2022
 13:02:25 +0000
From: Edgar Mobile <heideggm@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu:
 qemu-system-aarch64: Virtio VGA not available.
Thread-Topic: [yocto] runqemu - ERROR - Failed to run qemu:
 qemu-system-aarch64: Virtio VGA not available.
Thread-Index: 
 AQHYOSrnDihWuD59JE6B4gVYRW8F9azCGF2AgAE4Js6AABH+AIAAAdnkgAAM7oCAABqstw==
Date: Thu, 17 Mar 2022 13:02:25 +0000
Message-ID: 
 <DM8PR16MB43579E0AB862CEFBE772AE42C7129@DM8PR16MB4357.namprd16.prod.outlook.com>
References: 
 <DM8PR16MB43578CD48FE66AE37B2C3545C7119@DM8PR16MB4357.namprd16.prod.outlook.com>
 <CANNYZj_5Msuteo-xTAZ3UeynnHKC9hWyWL_gc3_zH+ubHq_PGg@mail.gmail.com>
 <DM8PR16MB4357DD3F1C9DEAB3058508B5C7129@DM8PR16MB4357.namprd16.prod.outlook.com>
 <CANNYZj9ousDr7Bci_6gFkXRFDvnr591vXyWeMmBLC=LWTWfKwg@mail.gmail.com>
 <DM8PR16MB4357E7702635621F70A968D4C7129@DM8PR16MB4357.namprd16.prod.outlook.com>
 <CANNYZj_VA0Ta_XiE9ionCSUhCZZ-sVmCSDQt3uQ62C+9vPA+oA@mail.gmail.com>
In-Reply-To: 
 <CANNYZj_VA0Ta_XiE9ionCSUhCZZ-sVmCSDQt3uQ62C+9vPA+oA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [CAmcQPm+8DUOLyf7qYdzznxx4R8sWLIV]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 85efe462-883c-4136-de1c-08da08166212
x-ms-traffictypediagnostic: SJ0PR16MB4093:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 PZccz0JRIhhQFfw+RK+meML+h3JBkeN8EP7+uS8fVAFyeAHK9jRn4hA88wf3Pe5eu4IMdZgERNePOKLtNLtW9fBMtiQzuVEAwiJp76rqxtuMj3S251o1chFwFmXucqUVYobhN5Xz95snydX9dDqxjjveTvPLDCFpFVl8j2OozqdE2SwzhWlYR2mHsuT/u3yAgY9jCBa5q/0Jg6EPBbrP9FDxRcINN6hzf5tO1tqVKbL7/dWY6kx8UwDBXiMUrPENv7jDKvOBSYe6ST0RYt6hahIO/gLAtzy8CVoq0/9bT3XNgyV7BG+IXSqBth/Y5tuRiDf8vajuKwm5LeJdARZd70oAq4BAd42f6u2bpX6qDEqgZBNdU9ymA4GIuYZ/T4I9ygc60LTFGXUPZvJJMNOsq2MH4rv3fTbAwaofCBPQyiyhiQbrjkeB+gjrH3DY7DQbPCfWBlp0SuEFuJRNvunUBcqn6ReE2rw3O1NI7cXyjeDuaaeQUzzF4ZTsLwcLEuw2/nCSejImjUlgReAAwoZStEqq31lReXeiXvhLY5JJGY96YfBMDR8dFtpCQLF7xcxGxK/+tA3PMJWTRWjDFeOiNMpo32U9MztblKP0OOqzvt+Csd+jou2MY3Wf6jtfKKWEpzK5sq4rfRcfjIVv+ImGJKuB/qM+S1FEyyfDE0KUXq8=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?Amb2socUZtoq+UYFrzuNq88ZDacHTTTGpcfmx7Ohgr+HUbWdmfQf8mfgGR?=
 =?iso-8859-1?Q?ZBz7KtQNRyxSciZWHCn7O1ybvlTG3bf50hbB5ZjLhPjAjqtGHYw16V7PA3?=
 =?iso-8859-1?Q?j6IyBPJlibsdjz/wQHCCoxLSn9TjPe1vouHfdoXPofTw7B7na+G9jUS1a3?=
 =?iso-8859-1?Q?kNw494ayJ0qjI9W45RF/ViRclIoM88vm7+h4mgZlz7Ilb+rUKxl98UoSjB?=
 =?iso-8859-1?Q?P3lM0BcAGAfszJ7G6Vb1rBLpmzpwlwce4xwjgemk1HUeFA051bng8ah2MY?=
 =?iso-8859-1?Q?MT9HGalkVeoGEiYuZpqKWOOYGvT9LuXzNzecnbLWS4DePqHsuTsRXxo932?=
 =?iso-8859-1?Q?dTJvlE+sx4mLTtTJKjJkw8MMfXqvRFVtPPdd5D+/NW0LNGjvkkoCRydSlJ?=
 =?iso-8859-1?Q?HWzVvXudNbwfrNUJRQNhZpxEgZNDPxjuwVQ6W4OAZfId+ILgOsGAROOgdd?=
 =?iso-8859-1?Q?JJs0UXvZHsmFns3V2Aw3WxiZzGp5QjsMkzem/bcb2l4PDdY+amtexs2I/8?=
 =?iso-8859-1?Q?XHQKj7L4J8zrg/M5xSRhnq5bo+MlfldDQ2IxP5M+/byeMZKBXp+tjzJtCV?=
 =?iso-8859-1?Q?+DxGuwS8PCc0iUp2zBzTb24UFk7E8mw2Ly4bN2kgRtmQ7Dah4fikGZ9ynj?=
 =?iso-8859-1?Q?pwsYqoMO+zsX8jjnkRxsXnnuxZWGUgs1HCxSTtUW3j62cBk3pKXRP7P3AU?=
 =?iso-8859-1?Q?xe+28D7OAU/6HbZZwvdVQ7ipRY/PvUJDLth5i38TjZJtQ5ZUnxADiqYMyC?=
 =?iso-8859-1?Q?LFmgK8AZjQAqPZjt3cYZkAFeaHjmjTJLteAWcKMp341gQf2tlljtNRwKy2?=
 =?iso-8859-1?Q?fbKn35w6Qg9kwLBrb1kcEGcH4jsCpgg0pwp1lOxp267obIFKH0nT9d77V2?=
 =?iso-8859-1?Q?5Y9p9fuK5D8h4Fr8O+LKWU7iiS25t7DBRd+7gCGf5Tv9VIFCuc55jBLH2H?=
 =?iso-8859-1?Q?4XqzEN3RZ0a4hv3TxD2M2HPnNLNZ8ogXpTqpPa/Ye4nKb5wFN7foF52Ohv?=
 =?iso-8859-1?Q?evpRWRWq7nBiEC9EdCImfp8xBHlJ6JpoN8IVpks6LWmL/okrxNZrKXFzxv?=
 =?iso-8859-1?Q?wRAehCTHeCaWv9wI5In1kMut1Ts6xwM0g1MxVKs8Q/Sw+NfA4jpWWvSo4w?=
 =?iso-8859-1?Q?NvR7jB8Jhz0ss87nVOx+v97WjqrgnRcFr2CdTpN/tf6CzlwpeUz0C0LD88?=
 =?iso-8859-1?Q?wNms3X0h9QnFKg=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_DM8PR16MB43579E0AB862CEFBE772AE42C7129DM8PR16MB4357namp_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-5ce7b.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR16MB4357.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 85efe462-883c-4136-de1c-08da08166212
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2022 13:02:25.3428
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR16MB4093
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Mar 2022 13:02:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56478

--_000_DM8PR16MB43579E0AB862CEFBE772AE42C7129DM8PR16MB4357namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Do you know if bochs driver is available and active for yocto 3.4 or 3.5?

________________________________
From: Alexander Kanavin <alex.kanavin@gmail.com>
Sent: Thursday, March 17, 2022 11:26 AM
To: Edgar Mobile <heideggm@hotmail.com>
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-system-aarc=
h64: Virtio VGA not available.

As I told you, we do not support or test this combination. Which means
that figuring out what the error messages mean and how to fix them is
on you - patches welcome.

Alex

On Thu, 17 Mar 2022 at 11:41, Edgar Mobile <heideggm@hotmail.com> wrote:
>
> I tried that first and it was horribly slow. That's why I try hardware ac=
celeration now.
>
> Do you _know_ it doesn't work? If yes, why?
>
> ________________________________
> From: Alexander Kanavin <alex.kanavin@gmail.com>
> Sent: Thursday, March 17, 2022 10:33 AM
> To: Edgar Mobile <heideggm@hotmail.com>
> Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-system-aa=
rch64: Virtio VGA not available.
>
> If you want an aarch guest on x86, then drop the gl option from
> runqemu. This will fall back to software rendering.
>
> Alex
>
> On Thu, 17 Mar 2022 at 10:33, Edgar Mobile <heideggm@hotmail.com> wrote:
> >
> > Sorry, but I need an Aarch64 guest.
> >
> > Ok, using a newer qemu I now encounter the following problem:
> >
> > root@qemuarm64:/usr/bin# XDG_RUNTIME_DIR=3D/run/user/0 ./eglinfo
> > EGL client extensions string:
> >     EGL_EXT_client_extensions EGL_EXT_device_base
> >     EGL_EXT_device_enumeration EGL_EXT_device_query EGL_EXT_platform_ba=
se
> >     EGL_KHR_client_get_all_proc_addresses EGL_KHR_debug
> >     EGL_EXT_platform_device EGL_EXT_platform_wayland
> >     EGL_KHR_platform_wayland EGL_EXT_platform_x11 EGL_KHR_platform_x11
> >     EGL_MESA_platform_xcb EGL_MESA_platform_gbm EGL_KHR_platform_gbm
> >     EGL_MESA_platform_surfaceless
> >
> > GBM platform:
> > pci id for fd 3: 1234:1111, driver (null)
> > MESA-LOADER: failed to open bochs-drm: /usr/lib/dri/bochs-drm_dri.so: c=
annot open shared object file: No such file or directory (search paths /usr=
/lib/dri)
> > failed to load driver: bochs-drm
> > ...
> >
> >
> > What is this bochs-drm_dri.so and does Yocto / the Mesa in Yocto provid=
e it?
> >
> > ________________________________
> > From: Alexander Kanavin <alex.kanavin@gmail.com>
> > Sent: Wednesday, March 16, 2022 2:51 PM
> > To: Edgar Mobile <heideggm@hotmail.com>
> > Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> > Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-system-=
aarch64: Virtio VGA not available.
> >
> > This configuration is not tested. If you want accelerated gl, build
> > for the qemux86-64 target.
> >
> > Alex
> >
> > On Wed, 16 Mar 2022 at 12:46, Edgar Mobile <heideggm@hotmail.com> wrote=
:
> > >
> > > Greetings,
> > >
> > > I tried to run an Aarch64 Yocto with qemu on amd 64 Host. For that pu=
rpose, I built core-image-weston from Hardknott following the manual
> > >
> > > https://www.mail-archive.com/yocto@lists.yoctoproject.org/msg07306.ht=
ml
> > >
> > > I then try to run
> > >
> > > runqemu sdl gl
> > >
> > > But it always aborts with
> > >
> > > runqemu - ERROR - Failed to run qemu: qemu-system-aarch64: Virtio VGA=
 not available.
> > >
> > > What can I do?
> > >
> > > Regards
> > >
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > Links: You receive all messages sent to this group.
> > > View/Reply Online (#56467): https://lists.yoctoproject.org/g/yocto/me=
ssage/56467
> > > Mute This Topic: https://lists.yoctoproject.org/mt/89819473/1686489
> > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanav=
in@gmail.com]
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > >

--_000_DM8PR16MB43579E0AB862CEFBE772AE42C7129DM8PR16MB4357namp_
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
Do you know if bochs driver is available and active for yocto 3.4 or 3.5?<b=
r>
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
<b>Sent:</b> Thursday, March 17, 2022 11:26 AM<br>
<b>To:</b> Edgar Mobile &lt;heideggm@hotmail.com&gt;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject:</b> Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-syst=
em-aarch64: Virtio VGA not available.</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">As I told you, we do not support or test this comb=
ination. Which means<br>
that figuring out what the error messages mean and how to fix them is<br>
on you - patches welcome.<br>
<br>
Alex<br>
<br>
On Thu, 17 Mar 2022 at 11:41, Edgar Mobile &lt;heideggm@hotmail.com&gt; wro=
te:<br>
&gt;<br>
&gt; I tried that first and it was horribly slow. That's why I try hardware=
 acceleration now.<br>
&gt;<br>
&gt; Do you _know_ it doesn't work? If yes, why?<br>
&gt;<br>
&gt; ________________________________<br>
&gt; From: Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;<br>
&gt; Sent: Thursday, March 17, 2022 10:33 AM<br>
&gt; To: Edgar Mobile &lt;heideggm@hotmail.com&gt;<br>
&gt; Cc: yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt;<=
br>
&gt; Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-system=
-aarch64: Virtio VGA not available.<br>
&gt;<br>
&gt; If you want an aarch guest on x86, then drop the gl option from<br>
&gt; runqemu. This will fall back to software rendering.<br>
&gt;<br>
&gt; Alex<br>
&gt;<br>
&gt; On Thu, 17 Mar 2022 at 10:33, Edgar Mobile &lt;heideggm@hotmail.com&gt=
; wrote:<br>
&gt; &gt;<br>
&gt; &gt; Sorry, but I need an Aarch64 guest.<br>
&gt; &gt;<br>
&gt; &gt; Ok, using a newer qemu I now encounter the following problem:<br>
&gt; &gt;<br>
&gt; &gt; root@qemuarm64:/usr/bin# XDG_RUNTIME_DIR=3D/run/user/0 ./eglinfo<=
br>
&gt; &gt; EGL client extensions string:<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; EGL_EXT_client_extensions EGL_EXT_device_=
base<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; EGL_EXT_device_enumeration EGL_EXT_device=
_query EGL_EXT_platform_base<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; EGL_KHR_client_get_all_proc_addresses EGL=
_KHR_debug<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; EGL_EXT_platform_device EGL_EXT_platform_=
wayland<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; EGL_KHR_platform_wayland EGL_EXT_platform=
_x11 EGL_KHR_platform_x11<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; EGL_MESA_platform_xcb EGL_MESA_platform_g=
bm EGL_KHR_platform_gbm<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; EGL_MESA_platform_surfaceless<br>
&gt; &gt;<br>
&gt; &gt; GBM platform:<br>
&gt; &gt; pci id for fd 3: 1234:1111, driver (null)<br>
&gt; &gt; MESA-LOADER: failed to open bochs-drm: /usr/lib/dri/bochs-drm_dri=
.so: cannot open shared object file: No such file or directory (search path=
s /usr/lib/dri)<br>
&gt; &gt; failed to load driver: bochs-drm<br>
&gt; &gt; ...<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; What is this bochs-drm_dri.so and does Yocto / the Mesa in Yocto =
provide it?<br>
&gt; &gt;<br>
&gt; &gt; ________________________________<br>
&gt; &gt; From: Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;<br>
&gt; &gt; Sent: Wednesday, March 16, 2022 2:51 PM<br>
&gt; &gt; To: Edgar Mobile &lt;heideggm@hotmail.com&gt;<br>
&gt; &gt; Cc: yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org=
&gt;<br>
&gt; &gt; Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-s=
ystem-aarch64: Virtio VGA not available.<br>
&gt; &gt;<br>
&gt; &gt; This configuration is not tested. If you want accelerated gl, bui=
ld<br>
&gt; &gt; for the qemux86-64 target.<br>
&gt; &gt;<br>
&gt; &gt; Alex<br>
&gt; &gt;<br>
&gt; &gt; On Wed, 16 Mar 2022 at 12:46, Edgar Mobile &lt;heideggm@hotmail.c=
om&gt; wrote:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Greetings,<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I tried to run an Aarch64 Yocto with qemu on amd 64 Host. Fo=
r that purpose, I built core-image-weston from Hardknott following the manu=
al<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; <a href=3D"https://www.mail-archive.com/yocto@lists.yoctopro=
ject.org/msg07306.html">
https://www.mail-archive.com/yocto@lists.yoctoproject.org/msg07306.html</a>=
<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I then try to run<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; runqemu sdl gl<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; But it always aborts with<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; runqemu - ERROR - Failed to run qemu: qemu-system-aarch64: V=
irtio VGA not available.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; What can I do?<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Regards<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; &gt; &gt; Links: You receive all messages sent to this group.<br>
&gt; &gt; &gt; View/Reply Online (#56467): <a href=3D"https://lists.yoctopr=
oject.org/g/yocto/message/56467">
https://lists.yoctoproject.org/g/yocto/message/56467</a><br>
&gt; &gt; &gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/m=
t/89819473/1686489">
https://lists.yoctoproject.org/mt/89819473/1686489</a><br>
&gt; &gt; &gt; Group Owner: yocto+owner@lists.yoctoproject.org<br>
&gt; &gt; &gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [alex.kanavin@gm=
ail.com]<br>
&gt; &gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; &gt; &gt;<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_DM8PR16MB43579E0AB862CEFBE772AE42C7129DM8PR16MB4357namp_--

