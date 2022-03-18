Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1358FC433EF
	for <webhook@archiver.kernel.org>; Fri, 18 Mar 2022 19:26:06 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (NAM11-DM6-obe.outbound.protection.outlook.com [40.92.19.74])
 by mx.groups.io with SMTP id smtpd.web11.14150.1647631565300650998
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Mar 2022 12:26:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=udQxgxZX;
 spf=pass (domain: hotmail.com, ip: 40.92.19.74,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LV1N2hcrYMCf+j1ID2JJG2ESbgAz+FSV0ALsfw4D22HOH2X/4ilYJvO0EmZ8WCLHzhHsVJrsKIn9QbnWcDTmO0HLTA2jqmwUU/n3rgiCBQNF2KprCAcYVvVpxKkuDbN7pnP8rtvYLPaPTysXw1o2yv/ydYDX3UNVet4/EQbDofnv0//1cgjlDJK2RDU/I7WG0eNX2H4tOqUylcIA2XNd+hgpuUOIWYN2ooVXO3ibV7gcqtDirTWcq1KsYkX2W9dFIgsdS0hWm9owIpS7u7zsEUkbp6GxmfOh+oFAnRq1/RFEwBKt1838KNKJU6DqFync+VwFJS1pJT2IYhkTYdI0xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QtHfjUZbf1BtJSQYJEyARm+Ol2RRjIslIfpKSbpw5jw=;
 b=WpzdC8qwiOJPLu4nH7eDup3eEPCDN24m59H8I9J0X/+dfc3Gdf+HGYqOa5BMT6rNEI011SMa7JGwonYxgwefhaOlzvg1cQbhivjdaCtC5jYYWh+e9pS6wmqjjXlsAJI3jFopwST9BQB3D5LUSTOFazDtr1isORzuEGi7RVkEvKTpcD0nIf8tncOV6zyWwX1hA7WJipQrGGOdqBtX911euv8NgQDPy4YzckmqBU2V6sGYI38fsVlk7OW0EPWxoRQ65KEPlvnBbOW9AWs1YQ4aYSRTFCnuuK4PFWRKjtmjl0uBOtl8EIcqOrf/fZgDKwP1weyzodhVrnamD7Fw0gxYzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QtHfjUZbf1BtJSQYJEyARm+Ol2RRjIslIfpKSbpw5jw=;
 b=udQxgxZXrSuu8x4xIwocTPNNlFSzpEk8OofV/3eUV8lqJQK8oZMDWIvzOy49C8hPdNAWixLza1agxZ1aHuSw/AW6Z2ht/d4KzLqfk4fFIcj+yhCkG6CCwHEcmmZ6R8/PZkdmXpOa5AXFGpKV5XIXZ0ieTx5J0tB/w+jTPNPgrTLXgLiW23wNzvFN/DbYrdGTMW3fTOngHtqvIc7h93pI8JYT2VcmxtqQZd91eAGbkgCr4rS+d90fWbwE59cIiqI0bq0VuF7DbwhaFKVt1rVinSzD7EaNjG4wA2p2NCCVYVtf6T/aforzVG+G4UO9KvZKFtVbUZ8GZm1IBXOjknY3Pg==
Received: from DM8PR16MB4357.namprd16.prod.outlook.com (2603:10b6:8:30::8) by
 BYAPR16MB2629.namprd16.prod.outlook.com (2603:10b6:a03:90::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5081.17; Fri, 18 Mar 2022 19:26:02 +0000
Received: from DM8PR16MB4357.namprd16.prod.outlook.com
 ([fe80::ece2:62d7:a186:7b83]) by DM8PR16MB4357.namprd16.prod.outlook.com
 ([fe80::ece2:62d7:a186:7b83%4]) with mapi id 15.20.5081.018; Fri, 18 Mar 2022
 19:26:02 +0000
From: Edgar Mobile <heideggm@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu:
 qemu-system-aarch64: Virtio VGA not available.
Thread-Topic: [yocto] runqemu - ERROR - Failed to run qemu:
 qemu-system-aarch64: Virtio VGA not available.
Thread-Index: 
 AQHYOSrnDihWuD59JE6B4gVYRW8F9azCGF2AgAE4Js6AABH+AIAAAdnkgAAM7oCAABqst4AADeCAgAABtxCAAewkog==
Date: Fri, 18 Mar 2022 19:26:02 +0000
Message-ID: 
 <DM8PR16MB43571EA20E3A050872A0601EC7139@DM8PR16MB4357.namprd16.prod.outlook.com>
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
In-Reply-To: <16DD2FD3E4D1257B.29979@lists.yoctoproject.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [72s5ig+oTgDCJBgs1C2MHIW3x+c3U+zB]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bae8dc1e-188a-4f7f-72d6-08da091523f3
x-ms-traffictypediagnostic: BYAPR16MB2629:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 5VjoVqNXvqh8FpOFcAn2hCVTlXSGCBQ7IoqW54ZdxOa2kThkOlVih7lPagYRTPLUjETnkiZeS4Pyie+Fc3OBajIeEMD/9G8AlnhUZtKcTCk9vKRSPXkiF66AHZ7xO5KsOdFLne9LQ/kQuotHXC8EfnAagCtw9SrUMd1zMdVTURd1iLpc8FSOtjuRjsEvQWl31eSFKkZ7xebfyNS2bozF2MGH0pdm49a3ZBGQS1czM2Ae32CfTvgyt0V5G224r6iCy3HBLMfi3cD7rL/fGT83mnmyw4Sw/5AHbhX2qxHDV1cbWoF40IpMT4OfcjOvv675oHKvBrRWHA4RM3P+G6XdXvCJ/UP8WIV8FgfonhWfI3hD0AqjcQOlNFMjKFkkgdqgWpHkJY6SxBR3cQOqNrK3N6a1IjLhtkWUtL1Edlg1fu7+BSgFsq72VcOkZ0fmqxlk+RVHl0SeSSel2M5JkzHwmcIIyy0bEdOGBBjYim6kZTp7WM9bLCgLDpvx7Xc/y2kwxbi5EZ66DvplPTV0dSp9+5W3dOSrCNOkvDqOwp5A/XMVIXjKhu/VgftRO/uDzAtGtgCglzOCVk54ae7HpOoSoMmje/SQDpuZGLqzDsNaJ+mzHBRbPGoP3kYjdN4iLqwhFtqy7OhXA/5BF3+Xq4NUOX8Hzo0+v9279PggeklM7xc=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?dB6L7qDUQ6Wd8kxMZlqhj6BqXXVroMJWulswLXdEIRBKLPtgnjBSd/M8au?=
 =?iso-8859-1?Q?1/i5Jc+OzrmRohQV36ELRluIYGMasMSkN0VUYGh5ktXTG+kIZ/c7br3Zkg?=
 =?iso-8859-1?Q?g/fBj5YJcIOUbCjUcmqtvPsw6Oj9YfSKsDm9xorIu6X43L4BFjX4HI4gAE?=
 =?iso-8859-1?Q?IPDNM3ZrYrOtApzECmQQC5kZYr6Efbz5bTWUJvCnDPeBHth0XYMkKm15+a?=
 =?iso-8859-1?Q?ara2BHwiAd3qrKt/XE12l/6cekcex7DYA6dYrVAqajhsOWtZqHD6ThjVz1?=
 =?iso-8859-1?Q?9RqNp4v+WL4fd9mDjnFXC9Dy2yiNg+itc6yRpbssDNBBxbXHuwgkWqw25G?=
 =?iso-8859-1?Q?7UEZ6QGYzImJzArWYFhtfADI/3yHpLEPlQNrMap33Y6h2Uf65MRc+ik7Rx?=
 =?iso-8859-1?Q?CS6ZV1Rv5PVd0vmoPxWFoSN/KNl+fbq1jKH2kWtEk+kzYVf5vLpC6782Hl?=
 =?iso-8859-1?Q?KqP2UiZ/4002OMoIZm7ZNdk63k7l6cZpcgMLzMhRjEgd3cRhX5KSHyFebN?=
 =?iso-8859-1?Q?kGYB7okvEUYnNFCE7yXHQs3mYwkS5t4HZME0/Wrqdv1J/21e4Sz1yNZ6lW?=
 =?iso-8859-1?Q?ITewTskPBC4NcLr1wFCh3WrMWuIDpxY/4vlYmkQmXegxclnN6PCWvaHYu4?=
 =?iso-8859-1?Q?WprxCAKy592KOZjhTpkqFUKT4gz/qO1PxXsrcJ6GQGteDmrWqwTBC2gAmv?=
 =?iso-8859-1?Q?W0uycYC3AOLytbzjVmP+3iHVDUXORuN+zgJZFZ8NbeqjLF16iQZNAusFEZ?=
 =?iso-8859-1?Q?C+w5uHEbM4iK/z0ng9o0a/qWJ6Ea50VlglZm/8HnZrOEi3whktB87zUPOg?=
 =?iso-8859-1?Q?U3Ed6QAm6S1Rw6MhLoR2k+zOHg0zDgr3ubdgjcLvZtZGUugOcNqqOr5TTi?=
 =?iso-8859-1?Q?2xZMdaCzkT0tR9it5mhuUT7IzVZnePuQ7uiMrGbCnalPDStu1uWl+Kwggy?=
 =?iso-8859-1?Q?GN246r1Y2eJYlSK0IvD3i0I8b4EpMzR/KdyMvnnzlDwkO5/W67CrVbFp3K?=
 =?iso-8859-1?Q?gd+V/tdEyans/aOKJn88WTZc/F3kkAdmyvO8pT3GM1ucvJio3EmThyyynl?=
 =?iso-8859-1?Q?wOmlmYW8usGY0lvlgLC/OHXPnvpjBTvqjRxtJNT2qHsJztFWc4NthcZu4+?=
 =?iso-8859-1?Q?13qwSANoEth/VRv3ASOCLZilAeyrh7LLyB3+Xu/jav4WuOwAv+yVAyAN3a?=
 =?iso-8859-1?Q?sf6D4+G+Jz7V0w=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_DM8PR16MB43571EA20E3A050872A0601EC7139DM8PR16MB4357namp_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-5ce7b.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR16MB4357.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 bae8dc1e-188a-4f7f-72d6-08da091523f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2022 19:26:02.7998
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR16MB2629
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 18 Mar 2022 19:26:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56495

--_000_DM8PR16MB43571EA20E3A050872A0601EC7139DM8PR16MB4357namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


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
launchpad.net


________________________________
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of Edgar Mobile <heideggm@hotmail.com>
Sent: Thursday, March 17, 2022 2:00 PM
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-system-aarc=
h64: Virtio VGA not available.

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
> > > >
> > > >

--_000_DM8PR16MB43571EA20E3A050872A0601EC7139DM8PR16MB4357namp_
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
<br>
</div>
<div>Okay, I finally got it running. What I did:</div>
<div><br>
</div>
<div>
<ul>
<li><span>Upgraded all my host packages from this ppa: <a href=3D"https://l=
aunchpad.net/~savoury1/+archive/ubuntu/display" id=3D"LPlnk">
https://launchpad.net/~savoury1/+archive/ubuntu/display</a></span></li><li>=
<span>Built fresh Yocto 3.4, core-image-weston with virgl</span></li><li><s=
pan>Built 6.2 qemu separately and used that. Added <span style=3D"color:rgb=
(0, 0, 0);font-family:Calibri, Helvetica, sans-serif;font-weight:normal;orp=
hans:auto;text-align:start;widows:auto;display:inline !important">
-device virtio-gpu-gl-pci</span></span></li></ul>
<div>Now I have a comfy Gles 3.2 context!</div>
<div><br>
</div>
<div>Tx<br>
</div>
<ul>
<div class=3D"_Entity _EType_OWALinkPreview _EId_OWALinkPreview _EReadonly_=
1">
<div id=3D"LPBorder_GTaHR0cHM6Ly9sYXVuY2hwYWQubmV0L35zYXZvdXJ5MS8rYXJjaGl2Z=
S91YnVudHUvZGlzcGxheQ.." class=3D"LPBorder440996" style=3D"width: 100%; mar=
gin-top: 16px; margin-bottom: 16px; position: relative; max-width: 800px; m=
in-width: 424px;">
<table id=3D"LPContainer440996" role=3D"presentation" style=3D"padding: 12p=
x 36px 12px 12px; width: 100%; border-width: 1px; border-style: solid; bord=
er-color: rgb(200, 200, 200); border-radius: 2px;">
<tbody>
<tr style=3D"border-spacing: 0px;" valign=3D"top">
<td style=3D"width: 100%;">
<div id=3D"LPTitle440996" style=3D"font-size: 21px; font-weight: 300; margi=
n-right: 8px; font-family: &quot;wf_segoe-ui_light&quot;, &quot;Segoe UI Li=
ght&quot;, &quot;Segoe WP Light&quot;, &quot;Segoe UI&quot;, &quot;Segoe WP=
&quot;, Tahoma, Arial, sans-serif; margin-bottom: 12px;">
<a target=3D"_blank" id=3D"LPUrlAnchor440996" href=3D"https://launchpad.net=
/~savoury1/+archive/ubuntu/display" style=3D"text-decoration: none; color: =
var(--themePrimary);">Display - various (Xenial &amp; newer) : Rob Savoury<=
/a></div>
<div id=3D"LPDescription440996" style=3D"font-size: 14px; max-height: 100px=
; color: rgb(102, 102, 102); font-family: &quot;wf_segoe-ui_normal&quot;, &=
quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif; margi=
n-bottom: 12px; margin-right: 8px; overflow: hidden;">
Display PPA (drm 2.4.109, mesa 21.3.3, xserver 1.20.13) Xenial &amp; newer.=
 *** Please always check https:/ /launchpad. net/~savoury1 first for genera=
l updates about this ...</div>
<div id=3D"LPMetadata440996" style=3D"font-size: 14px; font-weight: 400; co=
lor: rgb(166, 166, 166); font-family: &quot;wf_segoe-ui_normal&quot;, &quot=
;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif;">
launchpad.net</div>
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
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> yocto@lists.yoctopr=
oject.org &lt;yocto@lists.yoctoproject.org&gt; on behalf of Edgar Mobile &l=
t;heideggm@hotmail.com&gt;<br>
<b>Sent:</b> Thursday, March 17, 2022 2:00 PM<br>
<b>To:</b> Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
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
<div id=3D"x_appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
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
<div class=3D"x_BodyFragment"><font size=3D"2"><span style=3D"font-size:11p=
t">
<div class=3D"x_PlainText">There is no hardware acceleration with bochs at =
all, if you want it,<br>
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
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt;<br>
</div>
</span></font></div>
</div>
</div>
</div>
</body>
</html>

--_000_DM8PR16MB43571EA20E3A050872A0601EC7139DM8PR16MB4357namp_--

