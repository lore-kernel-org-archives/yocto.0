Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40458C433F5
	for <webhook@archiver.kernel.org>; Thu, 17 Mar 2022 14:00:26 +0000 (UTC)
Received: from NAM02-BN1-obe.outbound.protection.outlook.com
 (NAM02-BN1-obe.outbound.protection.outlook.com [40.92.15.88])
 by mx.groups.io with SMTP id smtpd.web10.10440.1647525625313931041
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Mar 2022 07:00:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=UfXk8kpJ;
 spf=pass (domain: hotmail.com, ip: 40.92.15.88,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PJPs58Lup4CiDukyLHVljuL2sRP97zOanamC2BsB0u8J6QtsfvvgSxDx9DUllJkgdjGhmSe77I7pg5XxDaPVxlePwycJ/+w6Jc62wFyazPkbjSs1y5q9wzv9A+5vA4IUYh+sJHNbVsQBldVQTGL0Dfi93giTUI5gbiaFHUtQpUFOp1GRr51kL8kxyqJtKxqZUhzoAidd7weaxT/Afi4vxDpSkWjMf6r0un5h4S6w5rX72LBYYeIE6XxfDrtDGWNFkhVAzdQM/4bTz79cdonu/Ci0Tb4Ns9VjUI02DPw2wjZaP9OGsaDScclzy4vD0cMF8Nu4erjEb462KwmsahoBLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d6JaGHz4QKyCC7jQypSAQAvf1Md6Uwe0Y4vqDpjHW/U=;
 b=UO4ozz6VKku868gK+lq0xRRQyikc8FmPrPxISxOpUE5Ro3VWZpg1054OLe91DCSjKZRqyjSpIOUs1UrVe9qpRNz48gTavW8CoTBDGxaunJZuhPVL2O9vgpxDsOsGeiLFzZ+7ioVG8JwmIxHu1hJGjRi5UU8wG502TcvHZPSIsaPwXvRMZe9WtTsFWAFi6Sk6SyhaLpkeY2hzFc1czfE15mI9YNNoLtItA1dbXscf0OZrIghAKrH0Weh8ZHXBR1Xoh94OD/AGEfob1Ia8i1YuUSPyymG9jtk4Utr1FnUxjnefDVnbz2hXbye6YglhLvOw/l77s8Zu2RLtJZ32Wlt9/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d6JaGHz4QKyCC7jQypSAQAvf1Md6Uwe0Y4vqDpjHW/U=;
 b=UfXk8kpJ20iOwaeNAmM6IfLXmdXIrGIeNmPSyRx9IkSVMt9gM2QcC3IQErFVon4u60qGEoNb4UHNaT7j8Wga/TZwsJvmHho/9fEKI/fJtE2+/Nedwb+1rZR2gh3UOpkwa326MkgGSSsDCe+1UWxZYjkNU/o7EU7qlXy+obR0Ok91QYRsYleJBY523z0hiYeYQajdYO/rPOQ9okeQ7dB4tc56JJEP6DG7q3gw+5qOEDWE2Bf4seH2KmF+56t3oNnnabuSbf5aN6AhwJDwk5Qld9j82UMi+EogwjiauXICnzqItXNjhZqzBX/Od37hAZ1gtIkD2zgDVMDvu5cKjmnBhg==
Received: from DM8PR16MB4357.namprd16.prod.outlook.com (2603:10b6:8:30::8) by
 BN6PR16MB3137.namprd16.prod.outlook.com (2603:10b6:405:83::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5081.17; Thu, 17 Mar 2022 14:00:23 +0000
Received: from DM8PR16MB4357.namprd16.prod.outlook.com
 ([fe80::ece2:62d7:a186:7b83]) by DM8PR16MB4357.namprd16.prod.outlook.com
 ([fe80::ece2:62d7:a186:7b83%5]) with mapi id 15.20.5081.017; Thu, 17 Mar 2022
 14:00:22 +0000
From: Edgar Mobile <heideggm@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu:
 qemu-system-aarch64: Virtio VGA not available.
Thread-Topic: [yocto] runqemu - ERROR - Failed to run qemu:
 qemu-system-aarch64: Virtio VGA not available.
Thread-Index: 
 AQHYOSrnDihWuD59JE6B4gVYRW8F9azCGF2AgAE4Js6AABH+AIAAAdnkgAAM7oCAABqst4AADeCAgAABtxA=
Date: Thu, 17 Mar 2022 14:00:22 +0000
Message-ID: 
 <DM8PR16MB43574C58D24023675DEE3AD4C7129@DM8PR16MB4357.namprd16.prod.outlook.com>
References: 
 <DM8PR16MB43578CD48FE66AE37B2C3545C7119@DM8PR16MB4357.namprd16.prod.outlook.com>
 <CANNYZj_5Msuteo-xTAZ3UeynnHKC9hWyWL_gc3_zH+ubHq_PGg@mail.gmail.com>
 <DM8PR16MB4357DD3F1C9DEAB3058508B5C7129@DM8PR16MB4357.namprd16.prod.outlook.com>
 <CANNYZj9ousDr7Bci_6gFkXRFDvnr591vXyWeMmBLC=LWTWfKwg@mail.gmail.com>
 <DM8PR16MB4357E7702635621F70A968D4C7129@DM8PR16MB4357.namprd16.prod.outlook.com>
 <CANNYZj_VA0Ta_XiE9ionCSUhCZZ-sVmCSDQt3uQ62C+9vPA+oA@mail.gmail.com>
 <DM8PR16MB43579E0AB862CEFBE772AE42C7129@DM8PR16MB4357.namprd16.prod.outlook.com>
 <CANNYZj-Z5sGd7bUB0XuEVYL84BUTA-qsoYg9na1U1kV67nVSKQ@mail.gmail.com>
In-Reply-To: 
 <CANNYZj-Z5sGd7bUB0XuEVYL84BUTA-qsoYg9na1U1kV67nVSKQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [1r10sLWlSqgzajAlZStuO84+pFMPfFlE]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ec4b194c-1d3c-4f7b-a78a-08da081e7aab
x-ms-traffictypediagnostic: BN6PR16MB3137:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 nuvb3zowBUmDFoR7+oZSm/4XgOM2R4HMWExqLKBJ4TLX5Fk5zH5qK3DUUI4qEJVZer65JPbXck7wy7N0IwgJJkUW3HwnMrvCtlRh6GZ90EoBMyMKpRn6YlMiJsUnA/KXX2F+lhxiALh6cVmCvPfbSk8wsVQByJfORHzGsL5XaIfOYqPGTbrVr+1Fv9xn0W7KGBvgD+MUeXPMsm/ogaTdEFlevJBabvmvocT/N60IptWj7sqA/7iyC5vfzzusgW0EBZbhfWHXygkDFdmPepnPlIO1kABN8NVHNHzrRck9iv2g0kw31uY/X3Z7qz066u3/niYjKekbcMhxkVAbOnbQZgh77Jiyy5NpoSINwKApclIf3mAQcJTuoNYjrQoQ5EDkBGBdEzOZMtGtaSHgaP53V/5w2Nzz42Y436V9zSUCPpf98l/Fo7NUCa2HbsldU7SDrv3SJyNBNbR6mtxDTz5lpgZDp5zqdJIxtUUAALnyVEIqcHDhcygJtND+yoJX5DHWWBUgMjwZEWDakvJ3bwFeR+LgTpWFxIQ/WkYeuxegqADjfHBee7c9k+21VUNJb7554DkOGQWqZ+rGwm4UJB3vN/wX7oVw0zxf9lmx1ynE3qbiNqef+9w87coWbFxZZ5/VzTI3L+0VdLC2f7P2TNE9oGrmDvBMwyfqmQJlh1ZNnfA=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?59OkMkEcAM9iJG0s2kby9R4nf914WZW0VedDJcPz6W4O1MsIJg9NS4wHgO?=
 =?iso-8859-1?Q?U3IQHdIL535dLRMZwicXugKCnA1jWAvDcDuoMBJXj3T/hpqhziIxBLOTx9?=
 =?iso-8859-1?Q?jLhdnuWRaDVV3OTVEEVVKH/rtDFHqRBfwyFlDr5qoNL4ZBxLhC9iSm2oAF?=
 =?iso-8859-1?Q?WmYda021thheh9mt+SIQlTPCzYynAMpeWSXU01JrL06jAy/RnTx32YhIXP?=
 =?iso-8859-1?Q?eU3R7+3d++3mW2/658TWZyEKFA+epqCAhGSXdXD8dTs0aaj8+39TmgKPsi?=
 =?iso-8859-1?Q?O9dP+IPb54pblGxjb83oeMzgtIfFgXZMu59GY7WoAJsH1Qf8jcsExDYJUB?=
 =?iso-8859-1?Q?nJmPpG3pQU0rJP5+2i7NVdFnvn7GN+gc3W5sdj4ByjFEJH65xG33L6YI+1?=
 =?iso-8859-1?Q?vuX3G0Za55Xqpykz6DlBlrivJRl0odtbnkURUazZ7rJLGsNIHpmUpxh+Lp?=
 =?iso-8859-1?Q?FTEDsyhI6l+RvdtZA8xzYo6jJWxgXQtdArY1zlq9F/Mo6/vF1eFCvKUEfO?=
 =?iso-8859-1?Q?jM2XdDycMG1vKs/1gu24WBZQUDLcq8AJtErxtZu93ymuJxWYVZ2hQDjLJ0?=
 =?iso-8859-1?Q?1B+iM50zAR02/ncJ224iQRkoQkN8VgsguUmxTRq8It0qJoSX4FGznJ3L04?=
 =?iso-8859-1?Q?UbfXV334BM3jj6Q4Uuth6HCXu6yA8qrZ7nRI60+n3/CNVRVnbYRIFK262y?=
 =?iso-8859-1?Q?c0jEWWmYM0T6eJfI9nRxet7dWO00gdmAqki3YcF/T7tW43R4WxlyCFntJy?=
 =?iso-8859-1?Q?kVpwlv9g7Vs+OoA/8gLOOD1DDh3pHqvnaaVsj9xlA+l6ywmcyHlvX3cmKL?=
 =?iso-8859-1?Q?EvpkC1r9SmGgykBTY1GWQAVl2+tHRJTHORzFzC7zB/o2yWA2vK32UjycdF?=
 =?iso-8859-1?Q?6ID5gjIwm5W29bg+JTNVQltYr0hW7KgaTT1Q7uYirFyHjjYzx0WHCsD2I0?=
 =?iso-8859-1?Q?hX9e+S4ASCisXdCPJu4s2l7rh7ICYxRIxjJs3V6j/2VEHjo35ByltTvD+4?=
 =?iso-8859-1?Q?+qQHRwfg340kpoigzs9gOUOGtvrYB3KPDdrW7e0d9xSOxQVsTYKf4MFccf?=
 =?iso-8859-1?Q?FnnnI1N8KthQp/Edt9rJTe1SEeEGx3P5HA42GuAe0KOj5CrfXrE0Kd28fg?=
 =?iso-8859-1?Q?ZuTnRVCNmPQ0+o88gQai1MCO5Tbaji08Y6EkSQujmRQHqwWBNl3MD8IJLW?=
 =?iso-8859-1?Q?tVr8+I4AXY0qJw=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_DM8PR16MB43574C58D24023675DEE3AD4C7129DM8PR16MB4357namp_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-5ce7b.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR16MB4357.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 ec4b194c-1d3c-4f7b-a78a-08da081e7aab
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2022 14:00:22.5676
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR16MB3137
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Mar 2022 14:00:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56480

--_000_DM8PR16MB43574C58D24023675DEE3AD4C7129DM8PR16MB4357namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Ah, that's an interesting information.
The dmesg log gives the impression that virgl starts correctly and in the n=
ormal shell the examples work flawlessly. The problems start once I tell we=
ston to use the ivi-shell instead of the desktop shell.

________________________________
From: Alexander Kanavin <alex.kanavin@gmail.com>
Sent: Thursday, March 17, 2022 1:51 PM
To: Edgar Mobile <heideggm@hotmail.com>
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-system-aarc=
h64: Virtio VGA not available.

There is no hardware acceleration with bochs at all, if you want it,
you need to make virtio/virgl driver work.

Alex

On Thu, 17 Mar 2022 at 14:02, Edgar Mobile <heideggm@hotmail.com> wrote:
>
> Do you know if bochs driver is available and active for yocto 3.4 or 3.5?
>
> ________________________________
> From: Alexander Kanavin <alex.kanavin@gmail.com>
> Sent: Thursday, March 17, 2022 11:26 AM
> To: Edgar Mobile <heideggm@hotmail.com>
> Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-system-aa=
rch64: Virtio VGA not available.
>
> As I told you, we do not support or test this combination. Which means
> that figuring out what the error messages mean and how to fix them is
> on you - patches welcome.
>
> Alex
>
> On Thu, 17 Mar 2022 at 11:41, Edgar Mobile <heideggm@hotmail.com> wrote:
> >
> > I tried that first and it was horribly slow. That's why I try hardware =
acceleration now.
> >
> > Do you _know_ it doesn't work? If yes, why?
> >
> > ________________________________
> > From: Alexander Kanavin <alex.kanavin@gmail.com>
> > Sent: Thursday, March 17, 2022 10:33 AM
> > To: Edgar Mobile <heideggm@hotmail.com>
> > Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> > Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-system-=
aarch64: Virtio VGA not available.
> >
> > If you want an aarch guest on x86, then drop the gl option from
> > runqemu. This will fall back to software rendering.
> >
> > Alex
> >
> > On Thu, 17 Mar 2022 at 10:33, Edgar Mobile <heideggm@hotmail.com> wrote=
:
> > >
> > > Sorry, but I need an Aarch64 guest.
> > >
> > > Ok, using a newer qemu I now encounter the following problem:
> > >
> > > root@qemuarm64:/usr/bin# XDG_RUNTIME_DIR=3D/run/user/0 ./eglinfo
> > > EGL client extensions string:
> > >     EGL_EXT_client_extensions EGL_EXT_device_base
> > >     EGL_EXT_device_enumeration EGL_EXT_device_query EGL_EXT_platform_=
base
> > >     EGL_KHR_client_get_all_proc_addresses EGL_KHR_debug
> > >     EGL_EXT_platform_device EGL_EXT_platform_wayland
> > >     EGL_KHR_platform_wayland EGL_EXT_platform_x11 EGL_KHR_platform_x1=
1
> > >     EGL_MESA_platform_xcb EGL_MESA_platform_gbm EGL_KHR_platform_gbm
> > >     EGL_MESA_platform_surfaceless
> > >
> > > GBM platform:
> > > pci id for fd 3: 1234:1111, driver (null)
> > > MESA-LOADER: failed to open bochs-drm: /usr/lib/dri/bochs-drm_dri.so:=
 cannot open shared object file: No such file or directory (search paths /u=
sr/lib/dri)
> > > failed to load driver: bochs-drm
> > > ...
> > >
> > >
> > > What is this bochs-drm_dri.so and does Yocto / the Mesa in Yocto prov=
ide it?
> > >
> > > ________________________________
> > > From: Alexander Kanavin <alex.kanavin@gmail.com>
> > > Sent: Wednesday, March 16, 2022 2:51 PM
> > > To: Edgar Mobile <heideggm@hotmail.com>
> > > Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> > > Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-syste=
m-aarch64: Virtio VGA not available.
> > >
> > > This configuration is not tested. If you want accelerated gl, build
> > > for the qemux86-64 target.
> > >
> > > Alex
> > >
> > > On Wed, 16 Mar 2022 at 12:46, Edgar Mobile <heideggm@hotmail.com> wro=
te:
> > > >
> > > > Greetings,
> > > >
> > > > I tried to run an Aarch64 Yocto with qemu on amd 64 Host. For that =
purpose, I built core-image-weston from Hardknott following the manual
> > > >
> > > > https://www.mail-archive.com/yocto@lists.yoctoproject.org/msg07306.=
html
> > > >
> > > > I then try to run
> > > >
> > > > runqemu sdl gl
> > > >
> > > > But it always aborts with
> > > >
> > > > runqemu - ERROR - Failed to run qemu: qemu-system-aarch64: Virtio V=
GA not available.
> > > >
> > > > What can I do?
> > > >
> > > > Regards
> > > >
> > > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > > Links: You receive all messages sent to this group.
> > > > View/Reply Online (#56467): https://lists.yoctoproject.org/g/yocto/=
message/56467
> > > > Mute This Topic: https://lists.yoctoproject.org/mt/89819473/1686489
> > > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kan=
avin@gmail.com]
> > > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > >

--_000_DM8PR16MB43574C58D24023675DEE3AD4C7129DM8PR16MB4357namp_
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
Ah, that's an interesting information.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
The dmesg log gives the impression that virgl starts correctly and in the n=
ormal shell the examples work flawlessly. The problems start once I tell we=
ston to use the ivi-shell instead of the desktop shell.<br>
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
<b>Sent:</b> Thursday, March 17, 2022 1:51 PM<br>
<b>To:</b> Edgar Mobile &lt;heideggm@hotmail.com&gt;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject:</b> Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-syst=
em-aarch64: Virtio VGA not available.</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">There is no hardware acceleration with bochs at al=
l, if you want it,<br>
you need to make virtio/virgl driver work.<br>
<br>
Alex<br>
<br>
On Thu, 17 Mar 2022 at 14:02, Edgar Mobile &lt;heideggm@hotmail.com&gt; wro=
te:<br>
&gt;<br>
&gt; Do you know if bochs driver is available and active for yocto 3.4 or 3=
.5?<br>
&gt;<br>
&gt; ________________________________<br>
&gt; From: Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;<br>
&gt; Sent: Thursday, March 17, 2022 11:26 AM<br>
&gt; To: Edgar Mobile &lt;heideggm@hotmail.com&gt;<br>
&gt; Cc: yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt;<=
br>
&gt; Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-system=
-aarch64: Virtio VGA not available.<br>
&gt;<br>
&gt; As I told you, we do not support or test this combination. Which means=
<br>
&gt; that figuring out what the error messages mean and how to fix them is<=
br>
&gt; on you - patches welcome.<br>
&gt;<br>
&gt; Alex<br>
&gt;<br>
&gt; On Thu, 17 Mar 2022 at 11:41, Edgar Mobile &lt;heideggm@hotmail.com&gt=
; wrote:<br>
&gt; &gt;<br>
&gt; &gt; I tried that first and it was horribly slow. That's why I try har=
dware acceleration now.<br>
&gt; &gt;<br>
&gt; &gt; Do you _know_ it doesn't work? If yes, why?<br>
&gt; &gt;<br>
&gt; &gt; ________________________________<br>
&gt; &gt; From: Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;<br>
&gt; &gt; Sent: Thursday, March 17, 2022 10:33 AM<br>
&gt; &gt; To: Edgar Mobile &lt;heideggm@hotmail.com&gt;<br>
&gt; &gt; Cc: yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org=
&gt;<br>
&gt; &gt; Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-s=
ystem-aarch64: Virtio VGA not available.<br>
&gt; &gt;<br>
&gt; &gt; If you want an aarch guest on x86, then drop the gl option from<b=
r>
&gt; &gt; runqemu. This will fall back to software rendering.<br>
&gt; &gt;<br>
&gt; &gt; Alex<br>
&gt; &gt;<br>
&gt; &gt; On Thu, 17 Mar 2022 at 10:33, Edgar Mobile &lt;heideggm@hotmail.c=
om&gt; wrote:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Sorry, but I need an Aarch64 guest.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Ok, using a newer qemu I now encounter the following problem=
:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; root@qemuarm64:/usr/bin# XDG_RUNTIME_DIR=3D/run/user/0 ./egl=
info<br>
&gt; &gt; &gt; EGL client extensions string:<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; EGL_EXT_client_extensions EGL_EXT_de=
vice_base<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; EGL_EXT_device_enumeration EGL_EXT_d=
evice_query EGL_EXT_platform_base<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; EGL_KHR_client_get_all_proc_addresse=
s EGL_KHR_debug<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; EGL_EXT_platform_device EGL_EXT_plat=
form_wayland<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; EGL_KHR_platform_wayland EGL_EXT_pla=
tform_x11 EGL_KHR_platform_x11<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; EGL_MESA_platform_xcb EGL_MESA_platf=
orm_gbm EGL_KHR_platform_gbm<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; EGL_MESA_platform_surfaceless<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; GBM platform:<br>
&gt; &gt; &gt; pci id for fd 3: 1234:1111, driver (null)<br>
&gt; &gt; &gt; MESA-LOADER: failed to open bochs-drm: /usr/lib/dri/bochs-dr=
m_dri.so: cannot open shared object file: No such file or directory (search=
 paths /usr/lib/dri)<br>
&gt; &gt; &gt; failed to load driver: bochs-drm<br>
&gt; &gt; &gt; ...<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; What is this bochs-drm_dri.so and does Yocto / the Mesa in Y=
octo provide it?<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; ________________________________<br>
&gt; &gt; &gt; From: Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;<br>
&gt; &gt; &gt; Sent: Wednesday, March 16, 2022 2:51 PM<br>
&gt; &gt; &gt; To: Edgar Mobile &lt;heideggm@hotmail.com&gt;<br>
&gt; &gt; &gt; Cc: yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoprojec=
t.org&gt;<br>
&gt; &gt; &gt; Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu: q=
emu-system-aarch64: Virtio VGA not available.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; This configuration is not tested. If you want accelerated gl=
, build<br>
&gt; &gt; &gt; for the qemux86-64 target.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Alex<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; On Wed, 16 Mar 2022 at 12:46, Edgar Mobile &lt;heideggm@hotm=
ail.com&gt; wrote:<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Greetings,<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; I tried to run an Aarch64 Yocto with qemu on amd 64 Hos=
t. For that purpose, I built core-image-weston from Hardknott following the=
 manual<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; <a href=3D"https://www.mail-archive.com/yocto@lists.yoc=
toproject.org/msg07306.html">
https://www.mail-archive.com/yocto@lists.yoctoproject.org/msg07306.html</a>=
<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; I then try to run<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; runqemu sdl gl<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; But it always aborts with<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; runqemu - ERROR - Failed to run qemu: qemu-system-aarch=
64: Virtio VGA not available.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; What can I do?<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Regards<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; &gt; &gt; &gt; Links: You receive all messages sent to this group.<br>
&gt; &gt; &gt; &gt; View/Reply Online (#56467): <a href=3D"https://lists.yo=
ctoproject.org/g/yocto/message/56467">
https://lists.yoctoproject.org/g/yocto/message/56467</a><br>
&gt; &gt; &gt; &gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.=
org/mt/89819473/1686489">
https://lists.yoctoproject.org/mt/89819473/1686489</a><br>
&gt; &gt; &gt; &gt; Group Owner: yocto+owner@lists.yoctoproject.org<br>
&gt; &gt; &gt; &gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/=
g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [alex.kanav=
in@gmail.com]<br>
&gt; &gt; &gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; &gt; &gt; &gt;<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_DM8PR16MB43574C58D24023675DEE3AD4C7129DM8PR16MB4357namp_--

