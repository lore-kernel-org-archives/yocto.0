Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.145.1580746174015966519
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Feb 2020 08:09:34 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 sendgrid.net}: limit exceeded (domain: streamunlimited.com, ip: 140.211.169.56, mailfrom: quentin.schulz@streamunlimited.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BD79E016A2; Mon,  3 Feb 2020 08:09:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [213.33.87.16 listed in list.dnswl.org]
Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53A53E00736
	for <yocto@yoctoproject.org>; Mon,  3 Feb 2020 08:09:31 -0800 (PST)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 48BCSn6Hlzz5tl9;
	Mon,  3 Feb 2020 17:09:29 +0100 (CET)
Date: Mon, 3 Feb 2020 17:09:28 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Ed Vidal <develone@sbcglobal.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto] raspberrypi missing libtclstub8.6.a on target system
Message-ID: <20200203160928.h543cusw2v5dus2j@qschulz>
References: <347196555.692864.1580745699461.ref@mail.yahoo.com>
 <347196555.692864.1580745699461@mail.yahoo.com>
MIME-Version: 1.0
In-Reply-To: <347196555.692864.1580745699461@mail.yahoo.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Ed,

On Mon, Feb 03, 2020 at 04:01:39PM +0000, Ed Vidal wrote:
> Hello all,
> Is it normal to not include the=A0 static librarieson the filesystem root?
> I created a raspberrypi4 image.=A0 This image was created with docker usi=
ng crops.
> bitbake core-image-sato was 7078 tasks
> Build Configuration:BB_VERSION=A0 =A0 =A0 =A0 =A0 =A0=3D "1.44.0"BUILD_SY=
S=A0 =A0 =A0 =A0 =A0 =A0 =3D "x86_64-linux"NATIVELSBSTRING=A0 =A0 =A0 =3D "=
universal"TARGET_SYS=A0 =A0 =A0 =A0 =A0 =A0=3D "arm-poky-linux-gnueabi"MACH=
INE=A0 =A0 =A0 =A0 =A0 =A0 =A0 =3D "raspberrypi4"DISTRO=A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0=3D "poky"DISTRO_VERSION=A0 =A0 =A0 =A0=3D "3.0.1"TUNE_FEATURES=
=A0 =A0 =A0 =A0 =3D "arm vfp cortexa7 neon vfpv4 thumb callconvention-hard"=
TARGET_FPU=A0 =A0 =A0 =A0 =A0 =A0=3D "hard"meta=A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0meta-poky=A0 =A0 =A0 =A0 =A0 =A0=A0meta-yocto-bsp=A0 =A0 =A0 =A0=3D =
"zeus:da81542171f0cab0ea1a9bf45ac3c256e6f343f9"meta-oe=A0 =A0 =A0 =A0 =A0 =
=A0 =A0=A0meta-python=A0 =A0 =A0 =A0 =A0=A0meta-multimedia=A0 =A0 =A0 =3D "=
zeus:aad5b3d070cd8c58828b0975cf861d8ebc90f460"meta-raspberrypi=A0 =A0 =A0=
=3D "master:3ae288aa38e3a1609c6e861918a874416d3f0f13"
> This was part of local.conf
> IMAGE_INSTALL_append =3D " xterm git \gperf tree tcl tk rsync tar pv \gea=
ny cmake man iproute2 squashfs-tools \minicom linux-firmware iputils yasm \=
texinfo python-imaging libmtp python-pip openjpeg \v4l-utils gsl opencv lib=
ftdi=A0 \chkconfig openjpeg lame liba52 gtkmm \gnuplot ghostscript boost py=
thon3 python3-ujson \hexedit graphviz \"On the yocto host system I see seve=
ral version of the libtclstub8.6.a
> find . -name libtclstub8.6.a./work/cortexa7t2hf-neon-vfpv4-poky-linux-gnu=
eabi/tcl/8.6.9-r0/build/libtclstub8.6.a./work/cortexa7t2hf-neon-vfpv4-poky-=
linux-gnueabi/tcl/8.6.9-r0/image/usr/lib/libtclstub8.6.a./work/cortexa7t2hf=
-neon-vfpv4-poky-linux-gnueabi/tcl/8.6.9-r0/package/usr/lib/libtclstub8.6.a=
=2E/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/tcl/8.6.9-r0/recipe-sys=
root-native/usr/lib/libtclstub8.6.a./work/cortexa7t2hf-neon-vfpv4-poky-linu=
x-gnueabi/tcl/8.6.9-r0/sysroot-destdir/usr/lib/libtclstub8.6.a./work/cortex=
a7t2hf-neon-vfpv4-poky-linux-gnueabi/tcl/8.6.9-r0/packages-split/tcl-static=
dev/usr/lib/libtclstub8.6.a./work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueab=
i/gtkwave/3.3.98-r0/recipe-sysroot/usr/lib/libtclstub8.6.a./work/cortexa7t2=
hf-neon-vfpv4-poky-linux-gnueabi/tk/8.6.9-r0/recipe-sysroot/usr/lib/libtcls=
tub8.6.a./work/x86_64-linux/tcl-native/8.6.9-r0/build/libtclstub8.6.a./work=
/x86_64-linux/tcl-native/8.6.9-r0/image/work-cuteradio/build/tmp/work/x86_6=
4-linux/tcl-native/8.6.9-r0/recipe-sysroot-native/usr/lib/libtclstub8.6.a./=
work/x86_64-linux/tcl-native/8.6.9-r0/sysroot-destdir/work-cuteradio/build/=
tmp/work/x86_64-linux/tcl-native/8.6.9-r0/recipe-sysroot-native/usr/lib/lib=
tclstub8.6.a./sysroots-components/x86_64/tcl-native/usr/lib/libtclstub8.6.a=
=2E/sysroots-components/cortexa7t2hf-neon-vfpv4/tcl/usr/lib/libtclstub8.6.a
> EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks dev-pkgs tools-sdk doc-pkgs"
>=20

Please have a look at your mail formatting, I'm missing most new lines
and it makes it hard to read your mail.

You would need staticdev-pkgs in your EXTRA_IMAGE_FEATURES to have the
static libraries of your packages on your system.
https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#ref-=
features-image

Or if you want only that specific static library, you can add
tcl-staticdev to your IMAGE_INSTALL.

How did I know?

=2E/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/tcl/8.6.9-r0/packages-s=
plit/tcl-staticdev/usr/lib/libtclstub8.6.a

Yocto splits the files between packages and you can see where goes what
by having a look at where the file is in ${WORKDIR}/packages-split. Here
it's in tcl-staticdev.

BR,
Quentin
