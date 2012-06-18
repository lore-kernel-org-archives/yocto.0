Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1839FE00746
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 14:06:45 -0700 (PDT)
Received: by eekb45 with SMTP id b45so2186286eek.35
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 14:06:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=iXMpuf7RJ4r1d+W446pOeq1BEO5u0+W+rOnlXXKV0D4=;
	b=hWMoNgJWXROLPG8CAwSw3ZgzcDuulm/fRxh3tOWU/mU8U6kqS8SRe1z7bqj+1ejSWb
	j3QSgyo1aa92fPn0y5gfZskQUUEkLPEbyYeHk/QsZtz9tSjoCoyhd88agVzex9Ou6Yjm
	s+OnY6Q0kDr0B1jx8v7QG07raF7XpDaovREHJpq8p3+pNaCJPfGJgkzCk37XakR+KM/C
	pHZw6V0gnbWgQaGy3hb/pjcNDgHMPo5E29/fDioeDJKAgzx8CBTFeNaw7WK5zE7wPgKl
	GDc0iCbu83Doot0PyY/N5p+8BZxsLq4wW+1Sgv5JVyPKBqh3ZKSaz8kjJGKbB8LPHUdz
	ilKQ==
Received: by 10.14.187.141 with SMTP id y13mr3616837eem.79.1340053604884; Mon,
	18 Jun 2012 14:06:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.188.11 with HTTP; Mon, 18 Jun 2012 14:06:14 -0700 (PDT)
In-Reply-To: <160abe7fb477d772d5563a1b826c307630332a5d.1340050502.git.dvhart@linux.intel.com>
References: <cover.1340050502.git.dvhart@linux.intel.com>
	<ca931379d2b30a750ea068558d0040647adcee75.1340050502.git.dvhart@linux.intel.com>
	<160abe7fb477d772d5563a1b826c307630332a5d.1340050502.git.dvhart@linux.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 18 Jun 2012 14:06:14 -0700
Message-ID: <CAMKF1somYK7Qb4kNfXMH=5wh4kaPdt2vi8s-OywAMwHT2T48WQ@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>,
	Phil Blundell <philb@gnu.org>
Subject: Re: [PATCH 2/2] tiny-init: Basic init mechanism for poky-tiny
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
X-List-Received-Date: Mon, 18 Jun 2012 21:06:46 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

> diff --git a/meta-yocto/recipes-core/tiny-init/files/init b/meta-yocto/re=
cipes-core/tiny-init/files/init
> new file mode 100644
> index 0000000..bf2817d
> --- /dev/null
> +++ b/meta-yocto/recipes-core/tiny-init/files/init
> @@ -0,0 +1,21 @@
> +#!/bin/sh
> +
> +# Mount the Linux kernel virtual filesystems
> +mount none -t proc /proc
> +mount none -t sysfs /sys
> +mkdir /dev/pts
> +mount none -t devpts /dev/pts
> +
> +ifup lo
> +
> +# Allow for distro or local customizations
> +if [ -f /etc/rc.local ] ; then
> + =C2=A0 =C2=A0 =C2=A0 source /etc/rc.local
> +fi
> +
> +# Become session leader and try to find a real tty (e.g. ttyS0)
> +while true; do
> + =C2=A0 =C2=A0 =C2=A0 setsid cttyhack sh
> + =C2=A0 =C2=A0 =C2=A0 echo "Console sh exited with $?, respawning..."
> + =C2=A0 =C2=A0 =C2=A0 sleep 1
> +done
> diff --git a/meta-yocto/recipes-core/tiny-init/files/rc.local.sample b/me=
ta-yocto/recipes-core/tiny-init/files/rc.local.sample
> new file mode 100644
> index 0000000..d9e198a
> --- /dev/null
> +++ b/meta-yocto/recipes-core/tiny-init/files/rc.local.sample
> @@ -0,0 +1,23 @@
> +#!/bin/sh
> +
> +# Start services and customize the boot process here.
> +echo "Running /etc/rc.local..."
> +
> +# Use init scripts included with packages such as dropbear
> +#/etc/init.d/dropbear start
> +
> +# Spawn a getty manually
> +#setsid /sbin/getty 115200 ttyS2
> +
> +# Print a banner
> +#echo "You are running a poky-tiny image brought to you by the Yocto Pro=
ject."
> +
> +# Setup a debugging environment
> +#mkdir /debugfs
> +#mount none -t debugfs /debugfs
> +
> +# Load modules (note: linux-yocto-tiny does not have module support by d=
efault)
> +#modprobe yourdriver
> +
> +# DO NOT run any long running tasks or loops as these will delay
> +# the /init script and the console shell.
> diff --git a/meta-yocto/recipes-core/tiny-init/tiny-init.bb b/meta-yocto/=
recipes-core/tiny-init/tiny-init.bb
> new file mode 100644
> index 0000000..1cf46ed
> --- /dev/null
> +++ b/meta-yocto/recipes-core/tiny-init/tiny-init.bb
> @@ -0,0 +1,26 @@
> +SUMMARY =3D "Poky-tiny init"
> +DESCRIPTION =3D "Basic init system for poky-tiny"
> +LICENSE =3D "MIT"
> +LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9cfbc=
b788c80a0384361b4de20420"
> +
> +PR =3D "r0"
> +
> +SRC_URI =3D "file://init \
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://rc.local.sample \
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 "
> +
> +do_configure() {
> + =C2=A0 =C2=A0 =C2=A0 :
> +}
> +
> +do_compile() {
> + =C2=A0 =C2=A0 =C2=A0 :
> +}
> +
> +do_install() {
> + =C2=A0 =C2=A0 =C2=A0 install -d ${D}${sysconfdir}
> + =C2=A0 =C2=A0 =C2=A0 install -m 0755 ${WORKDIR}/init ${D}
> + =C2=A0 =C2=A0 =C2=A0 install -m 0755 ${WORKDIR}/rc.local.sample ${D}${s=
ysconfdir}
> +}
> +
> +FILES_${PN} =3D "/init ${sysconfdir}/rc.local.sample"
> --
> 1.7.5.4
>


should this recipe rdepend on busybox ? since it uses the binaries from it.=
?

