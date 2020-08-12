Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
 by mx.groups.io with SMTP id smtpd.web12.841.1597270758199180039
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Aug 2020 15:19:18 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=syntax error for token:  (domain: kernel.crashing.org, ip: 76.164.61.194, mailfrom: mark.hatle@kernel.crashing.org)
Received: from Marks-MacBook-Pro-16.local ([76.164.61.198])
	(authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 07CMIuWc014460
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Wed, 12 Aug 2020 17:19:14 -0500
Subject: Re: [yocto] [poky][master][PATCH] qemu.inc: Use virtual/libgl instead of mesa
To: Alexander Kanavin <alex.kanavin@gmail.com>,
        Chandana kalluri <ckalluri@xilinx.com>
Cc: yocto@lists.yoctoproject.org,
        Sai Hari Chandana Kalluri <chandana.kalluri@xilinx.com>
References: <1597266150-3500-1-git-send-email-chandana.kalluri@xilinx.com>
 <CANNYZj-4r-CnZyh383ARSTxaQYWKfw7qhRP3LZG5xhk7gunqOQ@mail.gmail.com>
From: "Mark Hatle" <mark.hatle@kernel.crashing.org>
Message-ID: <72757fb8-063c-a0c5-e4f9-26173ba6dcac@kernel.crashing.org>
Date: Wed, 12 Aug 2020 17:18:56 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CANNYZj-4r-CnZyh383ARSTxaQYWKfw7qhRP3LZG5xhk7gunqOQ@mail.gmail.com>
X-MIME-Autoconverted: from 8bit to quoted-printable by kernel.crashing.org id 07CMIuWc014460
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 8/12/20 4:32 PM, Alexander Kanavin wrote:
> Virgl is not verified with anything else than mesa, and will almost cert=
ainly
> fail. And so does qemu.

It's not up to OE/YP to verify alternatives, it's up to the people providi=
ng the
alternatives.

The question is, is this a MESA dependency or a virtual/gl dependency.  If=
 it's
the former, then mesa is correct.  But everything I've seen (recently) it'=
s a
virtual/gl dependency and mesa was just specified.

> I think you should rather remove glx and virglrenderer from qemu PACKAGE=
CONFIG,
> so that mesa is not pulled in at all.

QEMU has video emulation and I thought GLX was added for optimization purp=
oses.
 Has this changed in QEMU 5?

--Mark

> Alex
>=20
> On Wed, 12 Aug 2020 at 23:02, Chandana kalluri <ckalluri@xilinx.com
> <mailto:ckalluri@xilinx.com>> wrote:
>=20
>     If there are multiple providers of virtual/libgl and mesa is not the=
 default
>     provider, the recipe compilation fails.=C2=A0 Use virtual/libgl to p=
ick the default
>     provider.
>=20
>     Signed-off-by: Sai Hari Chandana Kalluri <chandana.kalluri@xilinx.co=
m
>     <mailto:chandana.kalluri@xilinx.com>>
>     ---
>     =C2=A0meta/recipes-devtools/qemu/qemu.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-
>     =C2=A0meta/recipes-graphics/virglrenderer/virglrenderer_0.8.2.bb
>     <http://virglrenderer_0.8.2.bb> | 2 +-
>     =C2=A02 files changed, 2 insertions(+), 2 deletions(-)
>=20
>     diff --git a/meta/recipes-devtools/qemu/qemu.inc
>     b/meta/recipes-devtools/qemu/qemu.inc
>     index b1c822b..dada4b8 100644
>     --- a/meta/recipes-devtools/qemu/qemu.inc
>     +++ b/meta/recipes-devtools/qemu/qemu.inc
>     @@ -163,7 +163,7 @@ PACKAGECONFIG[nettle] =3D
>     "--enable-nettle,--disable-nettle,nettle"
>     =C2=A0PACKAGECONFIG[libusb] =3D "--enable-libusb,--disable-libusb,li=
busb1"
>     =C2=A0PACKAGECONFIG[fdt] =3D "--enable-fdt,--disable-fdt,dtc"
>     =C2=A0PACKAGECONFIG[alsa] =3D "--audio-drv-list=3D'oss alsa',,alsa-l=
ib"
>     -PACKAGECONFIG[glx] =3D "--enable-opengl,--disable-opengl,mesa"
>     +PACKAGECONFIG[glx] =3D "--enable-opengl,--disable-opengl,virtual/li=
bgl"
>     =C2=A0PACKAGECONFIG[lzo] =3D "--enable-lzo,--disable-lzo,lzo"
>     =C2=A0PACKAGECONFIG[numa] =3D "--enable-numa,--disable-numa,numactl"
>     =C2=A0PACKAGECONFIG[gnutls] =3D "--enable-gnutls,--disable-gnutls,gn=
utls"
>     diff --git a/meta/recipes-graphics/virglrenderer/virglrenderer_0.8.2=
.bb
>     <http://virglrenderer_0.8.2.bb>
>     b/meta/recipes-graphics/virglrenderer/virglrenderer_0.8.2.bb
>     <http://virglrenderer_0.8.2.bb>
>     index 29b1262..5282119 100644
>     --- a/meta/recipes-graphics/virglrenderer/virglrenderer_0.8.2.bb
>     <http://virglrenderer_0.8.2.bb>
>     +++ b/meta/recipes-graphics/virglrenderer/virglrenderer_0.8.2.bb
>     <http://virglrenderer_0.8.2.bb>
>     @@ -8,7 +8,7 @@ HOMEPAGE =3D "https://virgil3d.github.io/"
>     =C2=A0LICENSE =3D "MIT"
>     =C2=A0LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dc81c08eeefd9418fca8=
f88309a76db10"
>=20
>     -DEPENDS =3D "libdrm mesa libepoxy"
>     +DEPENDS =3D "libdrm virtual/libgl libepoxy"
>     =C2=A0SRCREV =3D "7d204f3927be65fb3365dce01dbcd04d447a4985"
>     =C2=A0SRC_URI =3D "git://anongit.freedesktop.org/virglrenderer
>     <http://anongit.freedesktop.org/virglrenderer> \
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
>     file://0001-gallium-Expand-libc-check-to-be-platform-OS-check.patch =
\
>     --=20
>     2.7.4
>=20
>=20
>=20
>=20
>=20
