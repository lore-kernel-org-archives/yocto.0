Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE26C433F5
	for <webhook@archiver.kernel.org>; Thu, 17 Mar 2022 09:33:25 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (NAM12-BN8-obe.outbound.protection.outlook.com [40.92.21.62])
 by mx.groups.io with SMTP id smtpd.web12.8185.1647509604350550454
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Mar 2022 02:33:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=s8pvgLXG;
 spf=pass (domain: hotmail.com, ip: 40.92.21.62,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bxj4y8mFOnHwzaxZ+6iUX2faHiMxR8X/g0jKdka1QwOlt6wZS8JJjWgshFH8bQa6BfRBD/Nv/aHVHSnMPgn/LZtTp/TlTJlApuLK7ErZL0J4b0NEYKv99e80bgcOpWh9oZhbEkUUGMcHufdRQUxP9ii7JP/agNyrbCqmeanaNNLKREhiAFE6sQi1rIBWeR5blv/ju+5Zvq8YvM7X//Q8ElkHo/M/f3b/wnuCtSqJqW6RISzSD5BB2sp14P+FwmaPbN/myCZnMYYPHXlNDB2xLQ2uRpq2/wY+xZz6FynlLo75h0Y4LQMm4rdk8qui+Qcvg/uMMS5+2u6RWKLpuQ4UJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TMR+/JCmo8YjWEIbrBkIL73/BiZzPamKdPDoowacwO0=;
 b=iUWfvZHFk/TsJZ5FGmlFmIQa6G4hcBxKy1iWum/UR53Fg4L2ewhNqjyxDaDc1/MT4HsjixT3d07d7/hivFwKBClJZgK14mu6yHsdR80FVkxteILw5/nfH/gbfLLZoUb8fcz+9kZMeRWR/sTMDOV3ecopiScUf0tXQPJosuliaNHjFhx/M0bU25T/5Q8B57rxUs8ICPxfhWkKUG9iVhvWSzh3D3OSo6Xx3OKVEOU7hYZYM2l3Ur81/kF+3bLxN1crxYybiuJDfO7hHn7hH7ygim5AKjWmzOtv8O+rpYmQLcOULUBb4PKf7n1zWQEoKUftfGxYIrKjBPqeUMiEeUR8Aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TMR+/JCmo8YjWEIbrBkIL73/BiZzPamKdPDoowacwO0=;
 b=s8pvgLXG+xiomNb8blZ+UneY3JyyquyQzoRNtx6e3YApDcOUqtcMMb6ob78XP3+e9Hgq8VIVE1ExaiuptCFmtrEOw7tCD75EecuCmMA6TQO1iVmn4eS8ZVv17TshDYo3TEJa8NBHR4nocCaYqRw5CuAOqhRrwT2Dqvvqng1RV/WdJC8mQILshjC5HUfX3j0YqBptYVRfW7v8OIp2nCAClQPrfPaYiXl9Y9IrueAqOBQhAbDITGdm2oTwApx/ydQKsQmrCSnEJlZMCQm7lb7GKUDwmkmD+cxt1/DXn7QH+CnExjafJLDi2MfigcxVo4czYVnFLDqqNElIWPDLeKNXXw==
Received: from DM8PR16MB4357.namprd16.prod.outlook.com (2603:10b6:8:30::8) by
 BL0PR16MB2548.namprd16.prod.outlook.com (2603:10b6:208:7c::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5081.17; Thu, 17 Mar 2022 09:33:22 +0000
Received: from DM8PR16MB4357.namprd16.prod.outlook.com
 ([fe80::ece2:62d7:a186:7b83]) by DM8PR16MB4357.namprd16.prod.outlook.com
 ([fe80::ece2:62d7:a186:7b83%5]) with mapi id 15.20.5081.017; Thu, 17 Mar 2022
 09:33:22 +0000
From: Edgar Mobile <heideggm@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu:
 qemu-system-aarch64: Virtio VGA not available.
Thread-Topic: [yocto] runqemu - ERROR - Failed to run qemu:
 qemu-system-aarch64: Virtio VGA not available.
Thread-Index: AQHYOSrnDihWuD59JE6B4gVYRW8F9azCGF2AgAE4Js4=
Date: Thu, 17 Mar 2022 09:33:22 +0000
Message-ID: 
 <DM8PR16MB4357DD3F1C9DEAB3058508B5C7129@DM8PR16MB4357.namprd16.prod.outlook.com>
References: 
 <DM8PR16MB43578CD48FE66AE37B2C3545C7119@DM8PR16MB4357.namprd16.prod.outlook.com>
 <CANNYZj_5Msuteo-xTAZ3UeynnHKC9hWyWL_gc3_zH+ubHq_PGg@mail.gmail.com>
In-Reply-To: 
 <CANNYZj_5Msuteo-xTAZ3UeynnHKC9hWyWL_gc3_zH+ubHq_PGg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [nwd0cLA8GiCMFLJTdX9MBnifBipyF68D]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9c3c1702-f769-4d8f-0709-08da07f92db3
x-ms-traffictypediagnostic: BL0PR16MB2548:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 bqkqTwIaxA0eynd7cpD9YP0AFukLbjtdhQpScIRHSGNVeuG1A/Tg2r36GvQoeGcUDpA7g6P/cYzSgbfNR1SWBFa38A+R9AQ/HUab0rJXRPiF/lrq1x5t8K6pDnZ0/av+cV4W46jEZ1y8cyJMiAHfN34VSadi8RfTAqR3xD8IWAjicG0UUeiFpiYfCHIdAklq28aAqAJ5MfLqOE6G5Y1fojWiBfTKN/p8vRI7uzCH6hWitNxBLaiMalzPQHkQ24HUCcbMe1P+2f81a+R71xQpTFxgo3CS/RsB4n2oP36HYouPh6T8Ao0DDkMLTpiW8QZCgnRbp4vh2G6QpNMSFmN6AVksMYuaj476CUIFqxNLCJv+nrv4nihu4BOqW1VrcUvnt6NnXeQehguUYVjR/zWa8wFg3EOLuawUOw9Qj9SwxUj78p4xXt+UBAfWP91WKEv8oLz/iTQRhD6q3l87Nj1UCMis9m3U0oqjKZj5/cLYxoA0qJBPD+ajscE9/e5/G6BA1ofKFdN9c+AoPCduaxc93rOJlSsWf3Z/Csy4g7BQtDnG4SGV0lq+6A5imJGzCmgqdCVPdmia/HrLttUEiEscTbnf2vwK94iKvNsfopAXbmjoJskNFuWqoNyjO5I1q7IEo5awa4CJGs3vTTflBQkyRBS/smzkQoe952+C+lYGT5o=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?77Fs3zNRTFXQNCd+PptcIx/1fhZlhZe0GEPCY+NUnqayC8PADusUrZBoMF?=
 =?iso-8859-1?Q?BYI+kQp45xjVVr++fdMVFCU83R2uQVPO7b87QLnaeUTzi6+miS26z4NecK?=
 =?iso-8859-1?Q?X7USDOkYI9oQL2WDtJpakIE/hoit+aRqGZT/2E/leX50mBYvTXsq69yjX4?=
 =?iso-8859-1?Q?svT8hGmukcRwA35dcsI0oS/YYCOsVRoYwStlx4ayKmyi1Mras37QwGJ2hb?=
 =?iso-8859-1?Q?TX3FE1JxhoFIGMyzaq0tTDqRomQ7vGD2Bf2lezXGJa9cJmga6Rs+AZzfCH?=
 =?iso-8859-1?Q?qwx+yOUyUL8m5EzV5hkEtX5eRkviXHVIswmGXUWa6kFVtwFIf3Y3/BXpua?=
 =?iso-8859-1?Q?x7dHATVHRQkXtZxyOlpkuq3tcW+ePo8WCy6Qc+Ek7D4ZZ9kHm5fXTuUG2o?=
 =?iso-8859-1?Q?VKKEaqmRvu/NKkFPcc3CRQkQnRl5mX0niEL753Dh7H66icR3X7hYK3R12D?=
 =?iso-8859-1?Q?oQG9/9jV5x7z9/vq3APvIpzgCrEputv0oIl84inrpJMQQNQYlWoZPlEhVf?=
 =?iso-8859-1?Q?zWnon6Zl6DngOiufN9AmDx+/8+m952pBU1PAhVG3VRIunxRInVLbzXciy5?=
 =?iso-8859-1?Q?97+LsAfkHGteHt8sblzrOktG9V39tyegMPFCLnNiOp48XhUWJW7EoQ4YPi?=
 =?iso-8859-1?Q?1C2trOe7MSHBy2p0Nxtts01fbOSbykyMgu0Tl2ERRJ1ymk8Q+FRfgGP1hT?=
 =?iso-8859-1?Q?C0E/tDS78ZRu4nRzXaa+d94HE7mF6GAd37+PO3JD3VqNQ8bz8wgFGGIyh/?=
 =?iso-8859-1?Q?PACgjbG2a2rUfgBP7B84e34NCDrVnSTFULXbf/v/GhX+9/o1+vTtRX1Qwk?=
 =?iso-8859-1?Q?BHymGG2iINVg/RHWp+3kPJ7+1kwAtIMNYCk25BWQmyL8EfR624tly2/K+w?=
 =?iso-8859-1?Q?6PrKh4FiDflcMl1VrfI0xA0wFDhiOTxdNgkeGKdI2aYGgUni4fe5Iplx7A?=
 =?iso-8859-1?Q?ShH+zj5kAR8nZqWNKLAQ6hngnx5mJBr3YoTMMO8dXTco0+RsT4DFQlICdx?=
 =?iso-8859-1?Q?npk+HZBbs9M2CRuIpxfKpXthwo50kmZ2y15WNNYICrlycFgRGJUHRoaQZY?=
 =?iso-8859-1?Q?DY9D2ausNP4Pf0jhd5Un6lmj7ksecU0mYmmpk9vQYxEWVH6rTnkM+S+CgU?=
 =?iso-8859-1?Q?Oo5zNlLZY/PmRoaobNPlsJiz5OZdP7rMPotnGzIQdx2e+KtlZTOIttmNXT?=
 =?iso-8859-1?Q?hlD8Fye6mM69aw=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_DM8PR16MB4357DD3F1C9DEAB3058508B5C7129DM8PR16MB4357namp_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-5ce7b.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR16MB4357.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 9c3c1702-f769-4d8f-0709-08da07f92db3
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2022 09:33:22.0523
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR16MB2548
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Mar 2022 09:33:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56474

--_000_DM8PR16MB4357DD3F1C9DEAB3058508B5C7129DM8PR16MB4357namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Sorry, but I need an Aarch64 guest.

Ok, using a newer qemu I now encounter the following problem:

root@qemuarm64:/usr/bin# XDG_RUNTIME_DIR=3D/run/user/0 ./eglinfo
EGL client extensions string:
    EGL_EXT_client_extensions EGL_EXT_device_base
    EGL_EXT_device_enumeration EGL_EXT_device_query EGL_EXT_platform_base
    EGL_KHR_client_get_all_proc_addresses EGL_KHR_debug
    EGL_EXT_platform_device EGL_EXT_platform_wayland
    EGL_KHR_platform_wayland EGL_EXT_platform_x11 EGL_KHR_platform_x11
    EGL_MESA_platform_xcb EGL_MESA_platform_gbm EGL_KHR_platform_gbm
    EGL_MESA_platform_surfaceless

GBM platform:
pci id for fd 3: 1234:1111, driver (null)
MESA-LOADER: failed to open bochs-drm: /usr/lib/dri/bochs-drm_dri.so: canno=
t open shared object file: No such file or directory (search paths /usr/lib=
/dri)
failed to load driver: bochs-drm
...


What is this bochs-drm_dri.so and does Yocto / the Mesa in Yocto provide it=
?

________________________________
From: Alexander Kanavin <alex.kanavin@gmail.com>
Sent: Wednesday, March 16, 2022 2:51 PM
To: Edgar Mobile <heideggm@hotmail.com>
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-system-aarc=
h64: Virtio VGA not available.

This configuration is not tested. If you want accelerated gl, build
for the qemux86-64 target.

Alex

On Wed, 16 Mar 2022 at 12:46, Edgar Mobile <heideggm@hotmail.com> wrote:
>
> Greetings,
>
> I tried to run an Aarch64 Yocto with qemu on amd 64 Host. For that purpos=
e, I built core-image-weston from Hardknott following the manual
>
> https://www.mail-archive.com/yocto@lists.yoctoproject.org/msg07306.html
>
> I then try to run
>
> runqemu sdl gl
>
> But it always aborts with
>
> runqemu - ERROR - Failed to run qemu: qemu-system-aarch64: Virtio VGA not=
 available.
>
> What can I do?
>
> Regards
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56467): https://lists.yoctoproject.org/g/yocto/messag=
e/56467
> Mute This Topic: https://lists.yoctoproject.org/mt/89819473/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

--_000_DM8PR16MB4357DD3F1C9DEAB3058508B5C7129DM8PR16MB4357namp_
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
Sorry, but I need an Aarch64 guest.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Ok, using a newer qemu I now encounter the following problem:</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<span style=3D"font-weight:normal;orphans:auto;widows:auto;display:inline !=
important">root@qemuarm64:/usr/bin# XDG_RUNTIME_DIR=3D/run/user/0 ./eglinfo=
</span><br>
<span style=3D"font-weight:normal;orphans:auto;widows:auto;display:inline !=
important">EGL client extensions string:</span><br style=3D"font-weight:nor=
mal;orphans:auto;widows:auto">
<span style=3D"font-weight:normal;orphans:auto;widows:auto;display:inline !=
important">&nbsp;&nbsp;&nbsp; EGL_EXT_client_extensions EGL_EXT_device_base=
</span><br style=3D"font-weight:normal;orphans:auto;widows:auto">
<span style=3D"font-weight:normal;orphans:auto;widows:auto;display:inline !=
important">&nbsp;&nbsp;&nbsp; EGL_EXT_device_enumeration EGL_EXT_device_que=
ry EGL_EXT_platform_base</span><br style=3D"font-weight:normal;orphans:auto=
;widows:auto">
<span style=3D"font-weight:normal;orphans:auto;widows:auto;display:inline !=
important">&nbsp;&nbsp;&nbsp; EGL_KHR_client_get_all_proc_addresses EGL_KHR=
_debug</span><br style=3D"font-weight:normal;orphans:auto;widows:auto">
<span style=3D"font-weight:normal;orphans:auto;widows:auto;display:inline !=
important">&nbsp;&nbsp;&nbsp; EGL_EXT_platform_device EGL_EXT_platform_wayl=
and</span><br style=3D"font-weight:normal;orphans:auto;widows:auto">
<span style=3D"font-weight:normal;orphans:auto;widows:auto;display:inline !=
important">&nbsp;&nbsp;&nbsp; EGL_KHR_platform_wayland EGL_EXT_platform_x11=
 EGL_KHR_platform_x11</span><br style=3D"font-weight:normal;orphans:auto;wi=
dows:auto">
<span style=3D"font-weight:normal;orphans:auto;widows:auto;display:inline !=
important">&nbsp;&nbsp;&nbsp; EGL_MESA_platform_xcb EGL_MESA_platform_gbm E=
GL_KHR_platform_gbm</span><br style=3D"font-weight:normal;orphans:auto;wido=
ws:auto">
<span style=3D"font-weight:normal;orphans:auto;widows:auto;display:inline !=
important">&nbsp;&nbsp;&nbsp; EGL_MESA_platform_surfaceless</span><br style=
=3D"font-weight:normal;orphans:auto;widows:auto">
<br style=3D"font-weight:normal;orphans:auto;widows:auto">
<span style=3D"font-weight:normal;orphans:auto;widows:auto;display:inline !=
important">GBM platform:</span><br style=3D"font-weight:normal;orphans:auto=
;widows:auto">
<span style=3D"font-weight:normal;orphans:auto;widows:auto;display:inline !=
important">pci id for fd 3: 1234:1111, driver (null)</span><br style=3D"fon=
t-weight:normal;orphans:auto;widows:auto">
<span style=3D"font-weight:normal;orphans:auto;widows:auto;display:inline !=
important">MESA-LOADER: failed to open bochs-drm: /usr/lib/dri/bochs-drm_dr=
i.so: cannot open shared object file: No such file or directory (search pat=
hs /usr/lib/dri)</span><br style=3D"font-weight:normal;orphans:auto;widows:=
auto">
<span style=3D"font-weight:normal;orphans:auto;widows:auto;display:inline !=
important">failed to load driver: bochs-drm</span></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
...</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
What is this <span style=3D"font-weight:normal;orphans:auto;widows:auto;dis=
play:inline !important">
bochs-drm_dri.so</span> and does Yocto / the Mesa in Yocto provide it?<br>
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
<b>Sent:</b> Wednesday, March 16, 2022 2:51 PM<br>
<b>To:</b> Edgar Mobile &lt;heideggm@hotmail.com&gt;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject:</b> Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-syst=
em-aarch64: Virtio VGA not available.</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">This configuration is not tested. If you want acce=
lerated gl, build<br>
for the qemux86-64 target.<br>
<br>
Alex<br>
<br>
On Wed, 16 Mar 2022 at 12:46, Edgar Mobile &lt;heideggm@hotmail.com&gt; wro=
te:<br>
&gt;<br>
&gt; Greetings,<br>
&gt;<br>
&gt; I tried to run an Aarch64 Yocto with qemu on amd 64 Host. For that pur=
pose, I built core-image-weston from Hardknott following the manual<br>
&gt;<br>
&gt; <a href=3D"https://www.mail-archive.com/yocto@lists.yoctoproject.org/m=
sg07306.html">
https://www.mail-archive.com/yocto@lists.yoctoproject.org/msg07306.html</a>=
<br>
&gt;<br>
&gt; I then try to run<br>
&gt;<br>
&gt; runqemu sdl gl<br>
&gt;<br>
&gt; But it always aborts with<br>
&gt;<br>
&gt; runqemu - ERROR - Failed to run qemu: qemu-system-aarch64: Virtio VGA =
not available.<br>
&gt;<br>
&gt; What can I do?<br>
&gt;<br>
&gt; Regards<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#56467): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/56467">
https://lists.yoctoproject.org/g/yocto/message/56467</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/89819473=
/1686489">https://lists.yoctoproject.org/mt/89819473/1686489</a><br>
&gt; Group Owner: yocto+owner@lists.yoctoproject.org<br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub">=
https://lists.yoctoproject.org/g/yocto/unsub</a> [alex.kanavin@gmail.com]<b=
r>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_DM8PR16MB4357DD3F1C9DEAB3058508B5C7129DM8PR16MB4357namp_--

