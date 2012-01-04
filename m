Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB785E0070D
	for <yocto@yoctoproject.org>; Tue,  3 Jan 2012 16:19:43 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by laam7 with SMTP id m7so8843174laa.35
	for <yocto@yoctoproject.org>; Tue, 03 Jan 2012 16:19:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=lvFkalOmdK9w83Jow6DQe1tV8JNKTWFjcGtA8tNwp8s=;
	b=pKUyGbIoyJrrAgjJrBEDVNcG0AsnI2kRYjWWNvr5W8wVWlOGC566By7ooQ/5UH/SZg
	YyvWXoyz8sKU5R/A8kpV8BRTb9L+x692x/7Xp8GPHFEIMd0HRNBM0OHeWwfPT5w1eiKM
	KBsoAeWIh+H1vod7NsvwZa+hpyUClYKdUr+AQ=
Received: by 10.152.128.98 with SMTP id nn2mr43322507lab.14.1325636382235;
	Tue, 03 Jan 2012 16:19:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.115.1 with HTTP; Tue, 3 Jan 2012 16:19:11 -0800 (PST)
In-Reply-To: <ffa7a3dfe6a46305c98f2ae7fd05f21a3d220fa8.1325115602.git.dvhart@linux.intel.com>
References: <cover.1325115602.git.dvhart@linux.intel.com>
	<ffa7a3dfe6a46305c98f2ae7fd05f21a3d220fa8.1325115602.git.dvhart@linux.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 3 Jan 2012 16:19:11 -0800
Message-ID: <CAMKF1so814A+hqP=xqWjhQCeuwkg__V67Q5OMjYqzsh5k+-tKg@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 2/3] distro: Add poky-tiny distro definition
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 04 Jan 2012 00:19:44 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 28, 2011 at 3:45 PM, Darren Hart <dvhart@linux.intel.com> wrote=
:
> Poky-tiny is intended for building very small OS images. The distro
> definition sets the providers for the kernel and the runtime services.
> It also reduces the eglibc component list and other DISTRO_FEATURE
> elements.
>
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> ---
> =C2=A0meta-yocto/conf/distro/poky-tiny.conf | =C2=A0103 +++++++++++++++++=
++++++++++++++++
> =C2=A01 files changed, 103 insertions(+), 0 deletions(-)
> =C2=A0create mode 100644 meta-yocto/conf/distro/poky-tiny.conf
>
> diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/dist=
ro/poky-tiny.conf
> new file mode 100644
> index 0000000..49c4397
> --- /dev/null
> +++ b/meta-yocto/conf/distro/poky-tiny.conf
> @@ -0,0 +1,103 @@
> +# Distribution definition for: poky-tiny
> +#
> +# Copyright (c) 2011, Intel Corporation.
> +# All rights reserved.
> +#

should this be MIT licensed ?
or do u plan to keep it closed.

> +# Poky-tiny is intended to define a tiny Linux system comprised of a
> +# Linux kernel tailored to support each specific MACHINE and busybox.
> +# Poky-tiny sets some basic policy to ensure a usable system while still
> +# keeping the rootfs and kernel image as small as possible.
> +#
> +# The policies defined are intended to meet the following goals:
> +# o Serial consoles only (no framebuffer or VGA console)
> +# o Basic support for IPV4 networking
> +# o Single user ash shell
> +# o Static images (no support for adding packages or libraries later)
> +# o Read-only or RAMFS root filesystem
> +# o Combined Linux kernel + rootfs in under 4MB
> +# o Allow the user to select between eglibc or uclibc with the TCLIBC va=
riable
> +#
> +# This is currently a partial definition, the following tasks remain:
> +# [ ] Integrate linux-yocto-tiny ktype into linux-yocto
> +# [ ] Define linux-yocto-tiny configs for all supported BSPs
> +# [ ] Drop ldconfig from the installation
> +# [ ] Modify the runqemu scripts to work with ext2 parameter:
> +# =C2=A0 =C2=A0 runqemu qemux86 qemuparams=3D"-nographic" bootparams=3D"=
console=3DttyS0,115200 root=3D0800"
> +# [ ] Modify busybox to allow for DISTRO_FEATURES-like confiruration
> +
> +require conf/distro/poky.conf
> +DISTRO =3D "poky-tiny"
> +
> +# FIXME: consider adding a new "tiny" feature
> +#DISTRO_FEATURES_append =3D " tiny"
> +
> +# Distro config is evaluated after the machine config, so we have to exp=
licitly
> +# set the kernel provider to override a machine config.
> +PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto-tiny"
> +PREFERRED_VERSION_linux-yocto-tiny =3D "3.0%"
> +
> +# We can use task-core-boot, but in the future we may need a new task-co=
re-tiny
> +#POKY_DEFAULT_EXTRA_RDEPENDS +=3D "task-core-boot"
> +# Drop kernel-module-af-packet from RRECOMMENDS
> +POKY_DEFAULT_EXTRA_RRECOMMENDS =3D ""
> +
> +# FIXME: what should we do with this?
> +TCLIBCAPPEND =3D ""
> +
> +# Disable wide char support for ncurses as we don't include it in
> +# in the LIBC features below.
> +ENABLE_WIDEC=3D"false"
> +
> +# Reconfigure eglibc for a smaller installation
> +# Comment out any of the lines below to disable them in the build
> +DISTRO_FEATURES_LIBC_TINY =3D "libc-libm libc-crypt"
> +# Required for "who"
> +DISTRO_FEATURES_LIBC_MINIMAL =3D "libc-utmp libc-getlogin"
> +DISTRO_FEATURES_LIBC_REGEX =3D "libc-posix-regexp"
> +DISTRO_FEATURES_LIBC_NET =3D "libc-inet libc-nis"
> +
> +DISTRO_FEATURES_LIBC =3D "${DISTRO_FEATURES_LIBC_TINY} \
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0${DISTRO_FEATURES_LIBC_MINIMAL} \
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0${DISTRO_FEATURES_LIBC_REGEX} \
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0${DISTRO_FEATURES_LIBC_NET} \
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 "
> +
> +# Comment out any of the lines below to disable them in the build
> +# DISTRO_FEATURES options:
> +# alsa bluetooth ext2 irda pcmcia usbgadget usbhost wifi nfs zeroconf pc=
i
> +DISTRO_FEATURES_TINY =3D "pci"
> +DISTRO_FEATURES_NET =3D "ipv4"
> +DISTRO_FEATURES_USB =3D "usbhost"
> +#DISTRO_FEATURES_USBGADGET =3D "usbgadget"
> +#DISTRO_FEATURES_WIFI =3D "wifi"
> +
> +DISTRO_FEATURES =3D "${DISTRO_FEATURES_TINY} \
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${DISTRO=
_FEATURES_NET} \
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${DISTRO=
_FEATURES_USB} \
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${DISTRO=
_FEATURES_USBGADGET} \
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${DISTRO=
_FEATURES_WIFI} \
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${DISTRO=
_FEATURES_LIBC} \
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0"
> +
> +# Use tmpdevfs and the busybox runtime services
> +VIRTUAL-RUNTIME_dev_manager =3D ""
> +VIRTUAL-RUNTIME_login_manager =3D ""
> +VIRTUAL-RUNTIME_init_manager =3D ""
> +VIRTUAL-RUNTIME_keymaps =3D ""
> +
> +# FIXME: Consider adding "modules" to MACHINE_FEATURES and using that in
> +# task-core-base to select modutils-initscripts or not. =C2=A0Similar wi=
th "net" and
> +# netbase.
> +
> +# By default we only support ext2 and initramfs. We don't build live as =
that
> +# pulls in a lot of dependencies for the live image and the installer, l=
ike
> +# udev, grub, etc. =C2=A0These pull in gettext, which fails to build wit=
h wide
> +# character support.
> +IMAGE_FSTYPES =3D "ext2 cpio.gz"
> +
> +# Drop v86d from qemu dependency list (we support serial)
> +# Drop grub from meta-intel BSPs
> +# FIXME: A different mechanism is needed here. We could define -tiny
> +# =C2=A0 =C2=A0 =C2=A0 =C2=A0variants of all compatible machines, but th=
at leads to a lot
> +# =C2=A0 =C2=A0 =C2=A0 =C2=A0more machine configs to maintain long term.
> +MACHINE_ESSENTIAL_EXTRA_RDEPENDS =3D ""
> --
> 1.7.6.4
>

