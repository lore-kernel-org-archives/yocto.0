Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70F8AC433F5
	for <webhook@archiver.kernel.org>; Fri, 18 Mar 2022 19:35:49 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (NAM10-BN7-obe.outbound.protection.outlook.com [40.92.40.65])
 by mx.groups.io with SMTP id smtpd.web11.14271.1647632148688507026
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Mar 2022 12:35:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=NO+Yo0bM;
 spf=pass (domain: hotmail.com, ip: 40.92.40.65,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RwmzlAUoOmAZNJHfDY409vafeEqrgdqvfieQXie9Y88BNIFLAPSVgtxs/KBT1MR9iAjtVPlnCvb70iyuokGx7O+aDAsVFX/GuNjSLlKaaGzpm5h7MYPM6Ja9pokv+3Ezp9JLcuYdqkjqtVHCfrUiyOVHhNZo8H8K5yoeZE42XHJv9uJPcpP4SxT9L1IaaI1kBhs1/29HXDNzB9iRlvd9vKQ9KZaaKUuzOh0GlkqVWAX+D30M2nJVG1BKf29VA5jbEZoZK4BzP/bCoaJ+YBrmsrAPBApdHT7F7dbcqobsG0v5+OavCyid/esarHJw1aAOIFZRkedWEnQM5TqTVm9dfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZCOkLW0aUB5x5+PLZijkS+9+u0SLStZizVLskskuKrc=;
 b=fLH5mwUy+areXBNtq4gJ3MMVNJmBNsC4GMEgB8xI0Y92/SkNLN1QuenssUbi2Heo7P6xCUMbiKQkWuqpS83mBMZSVG5+uGBBYOlkHt+K1lTb+dGTyPC5s13VyuwmHBqjizI/TT2YJG9qn11nKeYjBZZk4FgJkLTWSNV4GtXyRx6xTaRDPbwrEox/Zem7101Dt6XAOTUZk0Z6r9AX6HUThRjRxbMxj6Rk1+6xif2YJPPxvN4oi/YXLO0RyqN1E8LLqTgvPvueE8fdD7p4MrOug6nxB0nLJblhDJCR3krZtmaKUXNtpSPDcNfLSgINX+j8H8HBt2tEVESPMrVtzuEaZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZCOkLW0aUB5x5+PLZijkS+9+u0SLStZizVLskskuKrc=;
 b=NO+Yo0bMumHNkJ6CIgMqoMCN6CfEznD62xpcWDf9xeUm6NkhIHi4F+nMcV0xQ19gGelbxPVHpi0eTrAtaz7TrZy9xoiKGDGH4f5VeE93CuYpPwIOhkjtijqL1a7y1qdPOo8si1KgErztIlz/V7d/QOpcDMVk0efPfsl/Eks+2bAw8q1KxviMrUASIAA2BcA1MRBo/F6r4QyQqQs6TjYbJgagJKNqc9N8cEBI26zHFxy32yfE19ljOONW8PPDF/4T1GSDJmD0ZUhIT6TkbVYcnDDJzinyJzPmEPvZGTi6g7R6WgZ+3Pq9igE2EfzZaKUfE/V1WAxuhbfYuquWKWKWOg==
Received: from DM8PR16MB4357.namprd16.prod.outlook.com (2603:10b6:8:30::8) by
 SN4PR16MB4877.namprd16.prod.outlook.com (2603:10b6:806:21d::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.18; Fri, 18 Mar
 2022 19:35:46 +0000
Received: from DM8PR16MB4357.namprd16.prod.outlook.com
 ([fe80::ece2:62d7:a186:7b83]) by DM8PR16MB4357.namprd16.prod.outlook.com
 ([fe80::ece2:62d7:a186:7b83%4]) with mapi id 15.20.5081.018; Fri, 18 Mar 2022
 19:35:46 +0000
From: Edgar Mobile <heideggm@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu:
 qemu-system-aarch64: Virtio VGA not available.
Thread-Topic: [yocto] runqemu - ERROR - Failed to run qemu:
 qemu-system-aarch64: Virtio VGA not available.
Thread-Index: 
 AQHYOSrnDihWuD59JE6B4gVYRW8F9azCGF2AgAE4Js6AABH+AIAAAdnkgAAM7oCAABqst4AADeCAgAABtxCAAewkooAAAs4AgAAAtL0=
Date: Fri, 18 Mar 2022 19:35:46 +0000
Message-ID: 
 <DM8PR16MB4357372C0CD28B65FA81C1E7C7139@DM8PR16MB4357.namprd16.prod.outlook.com>
References: 
 <DM8PR16MB43578CD48FE66AE37B2C3545C7119@DM8PR16MB4357.namprd16.prod.outlook.com>
 <CANNYZj_5Msuteo-xTAZ3UeynnHKC9hWyWL_gc3_zH+ubHq_PGg@mail.gmail.com>
 <DM8PR16MB4357DD3F1C9DEAB3058508B5C7129@DM8PR16MB4357.namprd16.prod.outlook.com>
 <CANNYZj9ousDr7Bci_6gFkXRFDvnr591vXyWeMmBLC=LWTWfKwg@mail.gmail.com>
 <DM8PR16MB4357E7702635621F70A968D4C7129@DM8PR16MB4357.namprd16.prod.outlook.com>
 <CANNYZj_VA0Ta_XiE9ionCSUhCZZ-sVmCSDQt3uQ62C+9vPA+oA@mail.gmail.com>
 <DM8PR16MB43579E0AB862CEFBE772AE42C7129@DM8PR16MB4357.namprd16.prod.outlook.com>
 <CANNYZj-Z5sGd7bUB0XuEVYL84BUTA-qsoYg9na1U1kV67nVSKQ@mail.gmail.com>
 <16DD2FD3E4D1257B.29979@lists.yoctoproject.org>
 <DM8PR16MB43571EA20E3A050872A0601EC7139@DM8PR16MB4357.namprd16.prod.outlook.com>
 <CANNYZj8zYVA2Q1p25ExajyqWgjh9E_BXWtOucZU3+Zw6CGFutg@mail.gmail.com>
In-Reply-To: 
 <CANNYZj8zYVA2Q1p25ExajyqWgjh9E_BXWtOucZU3+Zw6CGFutg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [XY6zdd7b8IfHtkQfSoMKz+PMnPbyMRwp]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 45baf9ea-c10c-45fa-6e43-08da09167fe0
x-ms-traffictypediagnostic: SN4PR16MB4877:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 tqbGAnIqVciDH3vbs52h1F/1O0pV21qYMPJbTDy/IvMIEllkQOZFu5mnVpkB4mnY+QyfN6S6nnduZlv4dk/WqAwRumQPWUdbIbAFycFEedb8w2qKar/zsoSPnAXr7Brcm/vEPTA8lhuWLe0ocTlVx1ccxZYU+6fP7wt2XGMxuTBefvn3TkHK3Q8TCDEJNThUrM3lQk2R+XT39MvjCRqzFYggagkg0YBZHKP+ttcxG3a2JVTMjzbOuFgI0IXmTW9p8wHjiepMsntTiyBe6hJQ3gMfi5e5HLpkI8oJmffMGghDaMYcUDZMU8qFpzv0rGFLutKF3jEyWFVHsnOtYqqGzxihNZyqeN/55VqVWYcrNZUMf8bxk7tEwR0DeGEhEf/ZLQkxR8xNQyYxELlOtvz91h50wa0J9QbindbyWGn4Ug26ZCsw69yyQq2fMYxWRC6MjODTzmUJLNj2CtdB9JYR0nLQCG7wye4LR1R2zJ9BTNG0Zxy30viITRWK/C68irMdeipd8xkKwS+N7ON5S2WJmSnODFs6Yj8mHP8H1wiW7b5ZpGi+3d2NZVDtP6nJoyEPB5tvxkaRTo+UG3F8Mp+mcyWxdDXM4bw8StbHZLlWtHGpJs+oxX2sAlm2fAUJkb5X+1WAPp06Vn/IgPucET5kzBv4ZgOH4vv93tyoyblWn/4=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?VuQbiPB3ijJwA8qu0CjgwKvIFTIwKK0jvxZyitQl97OFKRkmAh6hZCssKR?=
 =?iso-8859-1?Q?N5DiqJVK7t8HiAL3UJ7R/1ZBSo9a2KW4C4GvmWDyJ5KYSaWNNt+Qpy0rSZ?=
 =?iso-8859-1?Q?ha2S9iuU6QQwFj1fjIUBiQMld5CtkyD6hklFSw6zzh0EbRVBDP6KafaWcR?=
 =?iso-8859-1?Q?QiqszwqnpCl+n/6+YdEe1f0vzIHOnyL1QolEp9fSyN/x4CkRwwebrGhly6?=
 =?iso-8859-1?Q?7DEVOLNBjYWiG8o0bI00CjJPSnFcwuV7bWMb2ImBYPUYMJ2DHhZatfaE9+?=
 =?iso-8859-1?Q?im7kx/nyFKlsK+fsKvwzG+nLlO11Ls5/wHJTAon/jM6Df+M8Zhmj/+QybZ?=
 =?iso-8859-1?Q?2BgIYO7Qc6wAwkwXDjxuBFIB6stWLQUySRJozjZlZ+jqUrHpS4rIxZoqaW?=
 =?iso-8859-1?Q?gpjOBuCaocftrs4lfC5oMk5fhdc0cwOmTH7JCUyAThuYjM42PGcPpxrVXX?=
 =?iso-8859-1?Q?h2m6cPP7+HyZQfbP4gOuMSJqUhy+1Qt/UA5PA3R80HxMiU1gKAcv69bZG9?=
 =?iso-8859-1?Q?bjBKn2aLm54pUO/5LJnZiobY1QZfnl3t2rlbuMc4pn9LSiPOHFFgBAxkW0?=
 =?iso-8859-1?Q?b6qByNBPhfmuPMUHCw7WPXmYxHD9f11WJHz5xsjJvZJOcE7uAMsPbEZ7fW?=
 =?iso-8859-1?Q?kS67SVkcK5x7jjBOlcXlomgmMh7NRe/mAmQP4xNqO4W+e6dv0iF7Txhvh4?=
 =?iso-8859-1?Q?NRDnsj8bgfS6spTLQ8ibVohzO3AzV+ez3EIvLRZRTNzBkbDHU+gozT6dio?=
 =?iso-8859-1?Q?vZDGZF4e3TlLutTSPUffuoXUD04rsyMMk3ac8z+n3GISrty3bIBzBzvxxD?=
 =?iso-8859-1?Q?qLDXWIhHfrhTBaDWCl5YNhmsN6N1z80jmPbtn3ZgKTJRPRuZnSuAyrWEaB?=
 =?iso-8859-1?Q?CJY9lKTnc3o1zPFIVh6oLPKBPfE7TJZ2O6KDevOKuOnNOi3fzHH5BTZ0Uf?=
 =?iso-8859-1?Q?Hl6X2Z6MZen1DovLAthmmeeB4sY8Bhmxjz7Z9EJiQxe5JC5Jy1LVmjIToE?=
 =?iso-8859-1?Q?OhPDjcM6lunsU8NzFUoRMaN44+lx6KND2HAtJF4vEjl267XwkC4qWg8a81?=
 =?iso-8859-1?Q?OCQ0fC1sbVTACw1PYrPwvZA2XOHRpEeJtJgNV9hk2EjpviJ54pYgdblrff?=
 =?iso-8859-1?Q?mjz6FLxIqh4L9XGYoTcQCTu5iPA6ZcUZFeeJP583yeDXvP0TV5jj6sg/dH?=
 =?iso-8859-1?Q?+EJeBRpwnG8iUA=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_DM8PR16MB4357372C0CD28B65FA81C1E7C7139DM8PR16MB4357namp_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-5ce7b.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR16MB4357.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 45baf9ea-c10c-45fa-6e43-08da09167fe0
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2022 19:35:46.5066
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR16MB4877
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 18 Mar 2022 19:35:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56498

--_000_DM8PR16MB4357372C0CD28B65FA81C1E7C7139DM8PR16MB4357namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

It's a mobile Nvidia Quadro M1000M with an official driver. Driver version.=
..uuuh 495 something.

________________________________
From: Alexander Kanavin <alex.kanavin@gmail.com>
Sent: Friday, March 18, 2022 7:28 PM
To: Edgar Mobile <heideggm@hotmail.com>
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-system-aarc=
h64: Virtio VGA not available.

Cheers :) Just wondering what GPU and driver are you using on the host?

Alex

On Fri, 18 Mar 2022 at 20:26, Edgar Mobile <heideggm@hotmail.com<mailto:hei=
deggm@hotmail.com>> wrote:

Okay, I finally got it running. What I did:


  *   Upgraded all my host packages from this ppa: https://launchpad.net/~s=
avoury1/+archive/ubuntu/display
  *   Built fresh Yocto 3.4, core-image-weston with virgl
  *   Built 6.2 qemu separately and used that. Added -device virtio-gpu-gl-=
pci

Now I have a comfy Gles 3.2 context!

Tx

Display - various (Xenial & newer) : Rob Savoury<https://launchpad.net/~sav=
oury1/+archive/ubuntu/display>
Display PPA (drm 2.4.109, mesa 21.3.3, xserver 1.20.13) Xenial & newer. ***=
 Please always check https:/ /launchpad. net/~savoury1 first for general up=
dates about this ...
launchpad.net<http://launchpad.net>


________________________________
From: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <yo=
cto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>> on behalf =
of Edgar Mobile <heideggm@hotmail.com<mailto:heideggm@hotmail.com>>
Sent: Thursday, March 17, 2022 2:00 PM
To: Alexander Kanavin <alex.kanavin@gmail.com<mailto:alex.kanavin@gmail.com=
>>
Cc: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <yoct=
o@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>>
Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-system-aarc=
h64: Virtio VGA not available.

Ah, that's an interesting information.
The dmesg log gives the impression that virgl starts correctly and in the n=
ormal shell the examples work flawlessly. The problems start once I tell we=
ston to use the ivi-shell instead of the desktop shell.

________________________________
From: Alexander Kanavin <alex.kanavin@gmail.com<mailto:alex.kanavin@gmail.c=
om>>
Sent: Thursday, March 17, 2022 1:51 PM
To: Edgar Mobile <heideggm@hotmail.com<mailto:heideggm@hotmail.com>>
Cc: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <yoct=
o@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>>
Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-system-aarc=
h64: Virtio VGA not available.

There is no hardware acceleration with bochs at all, if you want it,
you need to make virtio/virgl driver work.

Alex

On Thu, 17 Mar 2022 at 14:02, Edgar Mobile <heideggm@hotmail.com<mailto:hei=
deggm@hotmail.com>> wrote:
>
> Do you know if bochs driver is available and active for yocto 3.4 or 3.5?
>
> ________________________________
> From: Alexander Kanavin <alex.kanavin@gmail.com<mailto:alex.kanavin@gmail=
.com>>
> Sent: Thursday, March 17, 2022 11:26 AM
> To: Edgar Mobile <heideggm@hotmail.com<mailto:heideggm@hotmail.com>>
> Cc: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <yo=
cto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>>
> Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-system-aa=
rch64: Virtio VGA not available.
>
> As I told you, we do not support or test this combination. Which means
> that figuring out what the error messages mean and how to fix them is
> on you - patches welcome.
>
> Alex
>
> On Thu, 17 Mar 2022 at 11:41, Edgar Mobile <heideggm@hotmail.com<mailto:h=
eideggm@hotmail.com>> wrote:
> >
> > I tried that first and it was horribly slow. That's why I try hardware =
acceleration now.
> >
> > Do you _know_ it doesn't work? If yes, why?
> >
> > ________________________________
> > From: Alexander Kanavin <alex.kanavin@gmail.com<mailto:alex.kanavin@gma=
il.com>>
> > Sent: Thursday, March 17, 2022 10:33 AM
> > To: Edgar Mobile <heideggm@hotmail.com<mailto:heideggm@hotmail.com>>
> > Cc: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <=
yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>>
> > Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-system-=
aarch64: Virtio VGA not available.
> >
> > If you want an aarch guest on x86, then drop the gl option from
> > runqemu. This will fall back to software rendering.
> >
> > Alex
> >
> > On Thu, 17 Mar 2022 at 10:33, Edgar Mobile <heideggm@hotmail.com<mailto=
:heideggm@hotmail.com>> wrote:
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
> > > From: Alexander Kanavin <alex.kanavin@gmail.com<mailto:alex.kanavin@g=
mail.com>>
> > > Sent: Wednesday, March 16, 2022 2:51 PM
> > > To: Edgar Mobile <heideggm@hotmail.com<mailto:heideggm@hotmail.com>>
> > > Cc: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>=
 <yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>>
> > > Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-syste=
m-aarch64: Virtio VGA not available.
> > >
> > > This configuration is not tested. If you want accelerated gl, build
> > > for the qemux86-64 target.
> > >
> > > Alex
> > >
> > > On Wed, 16 Mar 2022 at 12:46, Edgar Mobile <heideggm@hotmail.com<mail=
to:heideggm@hotmail.com>> wrote:
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
> > > >
> > > >

--_000_DM8PR16MB4357372C0CD28B65FA81C1E7C7139DM8PR16MB4357namp_
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
It's a mobile Nvidia Quadro M1000M with an official driver. Driver version.=
..uuuh 495 something.<br>
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
<b>Sent:</b> Friday, March 18, 2022 7:28 PM<br>
<b>To:</b> Edgar Mobile &lt;heideggm@hotmail.com&gt;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject:</b> Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-syst=
em-aarch64: Virtio VGA not available.</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>Cheers :) Just wondering what GPU and driver are you using on the host=
?</div>
<div><br>
</div>
<div>Alex<br>
</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Fri, 18 Mar 2022 at 20:26, Edgar=
 Mobile &lt;<a href=3D"mailto:heideggm@hotmail.com">heideggm@hotmail.com</a=
>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div>Okay, I finally got it running. What I did:</div>
<div><br>
</div>
<div>
<ul>
<li><span>Upgraded all my host packages from this ppa: <a href=3D"https://l=
aunchpad.net/~savoury1/+archive/ubuntu/display" id=3D"x_gmail-m_57435771280=
67099187LPlnk" target=3D"_blank">
https://launchpad.net/~savoury1/+archive/ubuntu/display</a></span></li><li>=
<span>Built fresh Yocto 3.4, core-image-weston with virgl</span></li><li><s=
pan>Built 6.2 qemu separately and used that. Added <span style=3D"color:rgb=
(0,0,0); font-family:Calibri,Helvetica,sans-serif; font-weight:normal; text=
-align:start; display:inline">
-device virtio-gpu-gl-pci</span></span></li></ul>
<div>Now I have a comfy Gles 3.2 context!</div>
<div><br>
</div>
<div>Tx<br>
</div>
<ul>
<div>
<div id=3D"x_gmail-m_5743577128067099187LPBorder_GTaHR0cHM6Ly9sYXVuY2hwYWQu=
bmV0L35zYXZvdXJ5MS8rYXJjaGl2ZS91YnVudHUvZGlzcGxheQ.." style=3D"width:100%; =
margin-top:16px; margin-bottom:16px; max-width:800px; min-width:424px">
<table id=3D"x_gmail-m_5743577128067099187LPContainer440996" role=3D"presen=
tation" style=3D"padding:12px 36px 12px 12px; width:100%; border-width:1px;=
 border-style:solid; border-color:rgb(200,200,200); border-radius:2px">
<tbody>
<tr style=3D"border-spacing:0px" valign=3D"top">
<td style=3D"width:100%">
<div id=3D"x_gmail-m_5743577128067099187LPTitle440996" style=3D"font-size:2=
1px; font-weight:300; margin-right:8px; font-family:&quot;wf_segoe-ui_light=
&quot;,&quot;Segoe UI Light&quot;,&quot;Segoe WP Light&quot;,&quot;Segoe UI=
&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif; margin-bottom:12px">
<a id=3D"x_gmail-m_5743577128067099187LPUrlAnchor440996" href=3D"https://la=
unchpad.net/~savoury1/+archive/ubuntu/display" target=3D"_blank" style=3D"t=
ext-decoration:none">Display - various (Xenial &amp; newer) : Rob Savoury</=
a></div>
<div id=3D"x_gmail-m_5743577128067099187LPDescription440996" style=3D"font-=
size:14px; max-height:100px; color:rgb(102,102,102); font-family:&quot;wf_s=
egoe-ui_normal&quot;,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial=
,sans-serif; margin-bottom:12px; margin-right:8px; overflow:hidden">
Display PPA (drm 2.4.109, mesa 21.3.3, xserver 1.20.13) Xenial &amp; newer.=
 *** Please always check https:/ /launchpad. net/~savoury1 first for genera=
l updates about this ...</div>
<div id=3D"x_gmail-m_5743577128067099187LPMetadata440996" style=3D"font-siz=
e:14px; font-weight:400; color:rgb(166,166,166); font-family:&quot;wf_segoe=
-ui_normal&quot;,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,san=
s-serif">
<a href=3D"http://launchpad.net" target=3D"_blank">launchpad.net</a></div>
</td>
</tr>
</tbody>
</table>
</div>
</div>
<br>
</ul>
</div>
<div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_gmail-m_5743577128067099187divRplyFwdMsg" dir=3D"ltr"><font st=
yle=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>Fr=
om:</b>
<a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lis=
ts.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org"=
 target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt; on behalf of Edgar =
Mobile &lt;<a href=3D"mailto:heideggm@hotmail.com" target=3D"_blank">heideg=
gm@hotmail.com</a>&gt;<br>
<b>Sent:</b> Thursday, March 17, 2022 2:00 PM<br>
<b>To:</b> Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" =
target=3D"_blank">alex.kanavin@gmail.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctop=
roject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;<br>
<b>Subject:</b> Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-syst=
em-aarch64: Virtio VGA not available.</font>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Ah, that's an interesting information.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
The dmesg log gives the impression that virgl starts correctly and in the n=
ormal shell the examples work flawlessly. The problems start once I tell we=
ston to use the ivi-shell instead of the desktop shell.<br>
</div>
<div>
<div id=3D"x_gmail-m_5743577128067099187x_appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_gmail-m_5743577128067099187x_divRplyFwdMsg" dir=3D"ltr"><font =
style=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>=
From:</b> Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" t=
arget=3D"_blank">alex.kanavin@gmail.com</a>&gt;<br>
<b>Sent:</b> Thursday, March 17, 2022 1:51 PM<br>
<b>To:</b> Edgar Mobile &lt;<a href=3D"mailto:heideggm@hotmail.com" target=
=3D"_blank">heideggm@hotmail.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctop=
roject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;<br>
<b>Subject:</b> Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-syst=
em-aarch64: Virtio VGA not available.</font>
<div>&nbsp;</div>
</div>
<div><font size=3D"2"><span style=3D"font-size:11pt">
<div>There is no hardware acceleration with bochs at all, if you want it,<b=
r>
you need to make virtio/virgl driver work.<br>
<br>
Alex<br>
<br>
On Thu, 17 Mar 2022 at 14:02, Edgar Mobile &lt;<a href=3D"mailto:heideggm@h=
otmail.com" target=3D"_blank">heideggm@hotmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Do you know if bochs driver is available and active for yocto 3.4 or 3=
.5?<br>
&gt;<br>
&gt; ________________________________<br>
&gt; From: Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" =
target=3D"_blank">alex.kanavin@gmail.com</a>&gt;<br>
&gt; Sent: Thursday, March 17, 2022 11:26 AM<br>
&gt; To: Edgar Mobile &lt;<a href=3D"mailto:heideggm@hotmail.com" target=3D=
"_blank">heideggm@hotmail.com</a>&gt;<br>
&gt; Cc: <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">=
yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctopro=
ject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;<br>
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
&gt; On Thu, 17 Mar 2022 at 11:41, Edgar Mobile &lt;<a href=3D"mailto:heide=
ggm@hotmail.com" target=3D"_blank">heideggm@hotmail.com</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; I tried that first and it was horribly slow. That's why I try har=
dware acceleration now.<br>
&gt; &gt;<br>
&gt; &gt; Do you _know_ it doesn't work? If yes, why?<br>
&gt; &gt;<br>
&gt; &gt; ________________________________<br>
&gt; &gt; From: Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.=
com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt;<br>
&gt; &gt; Sent: Thursday, March 17, 2022 10:33 AM<br>
&gt; &gt; To: Edgar Mobile &lt;<a href=3D"mailto:heideggm@hotmail.com" targ=
et=3D"_blank">heideggm@hotmail.com</a>&gt;<br>
&gt; &gt; Cc: <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_bl=
ank">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoc=
toproject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;<br>
&gt; &gt; Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-s=
ystem-aarch64: Virtio VGA not available.<br>
&gt; &gt;<br>
&gt; &gt; If you want an aarch guest on x86, then drop the gl option from<b=
r>
&gt; &gt; runqemu. This will fall back to software rendering.<br>
&gt; &gt;<br>
&gt; &gt; Alex<br>
&gt; &gt;<br>
&gt; &gt; On Thu, 17 Mar 2022 at 10:33, Edgar Mobile &lt;<a href=3D"mailto:=
heideggm@hotmail.com" target=3D"_blank">heideggm@hotmail.com</a>&gt; wrote:=
<br>
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
&gt; &gt; &gt; From: Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@g=
mail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt;<br>
&gt; &gt; &gt; Sent: Wednesday, March 16, 2022 2:51 PM<br>
&gt; &gt; &gt; To: Edgar Mobile &lt;<a href=3D"mailto:heideggm@hotmail.com"=
 target=3D"_blank">heideggm@hotmail.com</a>&gt;<br>
&gt; &gt; &gt; Cc: <a href=3D"mailto:yocto@lists.yoctoproject.org" target=
=3D"_blank">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@li=
sts.yoctoproject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt=
;<br>
&gt; &gt; &gt; Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu: q=
emu-system-aarch64: Virtio VGA not available.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; This configuration is not tested. If you want accelerated gl=
, build<br>
&gt; &gt; &gt; for the qemux86-64 target.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Alex<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; On Wed, 16 Mar 2022 at 12:46, Edgar Mobile &lt;<a href=3D"ma=
ilto:heideggm@hotmail.com" target=3D"_blank">heideggm@hotmail.com</a>&gt; w=
rote:<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Greetings,<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; I tried to run an Aarch64 Yocto with qemu on amd 64 Hos=
t. For that purpose, I built core-image-weston from Hardknott following the=
 manual<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; <a href=3D"https://www.mail-archive.com/yocto@lists.yoc=
toproject.org/msg07306.html" target=3D"_blank">
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
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt;<br>
</div>
</span></font></div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</body>
</html>

--_000_DM8PR16MB4357372C0CD28B65FA81C1E7C7139DM8PR16MB4357namp_--

