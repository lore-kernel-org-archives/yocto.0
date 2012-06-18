Return-Path: <martin.jansa@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20927E013F7
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 14:18:08 -0700 (PDT)
Received: by wgbfg15 with SMTP id fg15so4415032wgb.11
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 14:18:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=W0yr6D8tvRYKYhxFsFxMXNhzvI/0OgcKHD0aFDhfUJ4=;
	b=BesBUBNUc1n7hp2C6k42CBisYMLOdnjuvQuptmi6A+Yfu+LCuvXjvT3R5a4OIV3iaa
	ni6FYnIkVxtRVRbObALT0xxpA7vOjxOfl8EXNYN42gPxuxO0JEq2Ka6bsR4yH2ZziMvs
	/smT2VYAkFuDNqtHaHH89gpKf/+r2inL7dgCzqHlQRmGHGs7rn0zuwMECuK0sooDrwGu
	tlo7GMsVrejQDa3/JkK5kIUd8dOjiQ7kF9EyqwzH1iGWslxfnrZAx3KoKDKowLcKNzUS
	lgejqA5sO19tEAAE9UZ34kRAToBz+J8DLRz8mEk1RJPzyGBtd45OcMMUs/hJyWZ38b6K
	gOew==
Received: by 10.180.84.35 with SMTP id v3mr3781881wiy.20.1340054287789;
	Mon, 18 Jun 2012 14:18:07 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id f7sm49399842wiv.2.2012.06.18.14.18.05
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 18 Jun 2012 14:18:06 -0700 (PDT)
Date: Mon, 18 Jun 2012 23:18:07 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Message-ID: <20120618211807.GM3178@jama.jama.net>
References: <cover.1340050502.git.dvhart@linux.intel.com>
	<ca931379d2b30a750ea068558d0040647adcee75.1340050502.git.dvhart@linux.intel.com>
	<160abe7fb477d772d5563a1b826c307630332a5d.1340050502.git.dvhart@linux.intel.com>
	<CAMKF1somYK7Qb4kNfXMH=5wh4kaPdt2vi8s-OywAMwHT2T48WQ@mail.gmail.com>
	<4FDF999E.2030200@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <4FDF999E.2030200@linux.intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto Project <yocto@yoctoproject.org>, Phil Blundell <philb@gnu.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
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
X-List-Received-Date: Mon, 18 Jun 2012 21:18:09 -0000
X-Groupsio-MsgNum: 7294
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Aaj1jBvBEV7KRjLi"
Content-Disposition: inline

--Aaj1jBvBEV7KRjLi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 18, 2012 at 02:11:58PM -0700, Darren Hart wrote:
>=20
>=20
> On 06/18/2012 02:06 PM, Khem Raj wrote:
> >> diff --git a/meta-yocto/recipes-core/tiny-init/files/init b/meta-yocto=
/recipes-core/tiny-init/files/init
> >> new file mode 100644
> >> index 0000000..bf2817d
> >> --- /dev/null
> >> +++ b/meta-yocto/recipes-core/tiny-init/files/init
> >> @@ -0,0 +1,21 @@
> >> +#!/bin/sh
> >> +
> >> +# Mount the Linux kernel virtual filesystems
> >> +mount none -t proc /proc
> >> +mount none -t sysfs /sys
> >> +mkdir /dev/pts
> >> +mount none -t devpts /dev/pts
> >> +
> >> +ifup lo
> >> +
> >> +# Allow for distro or local customizations
> >> +if [ -f /etc/rc.local ] ; then
> >> +       source /etc/rc.local
> >> +fi
> >> +
> >> +# Become session leader and try to find a real tty (e.g. ttyS0)
> >> +while true; do
> >> +       setsid cttyhack sh
> >> +       echo "Console sh exited with $?, respawning..."
> >> +       sleep 1
> >> +done
> >> diff --git a/meta-yocto/recipes-core/tiny-init/files/rc.local.sample b=
/meta-yocto/recipes-core/tiny-init/files/rc.local.sample
> >> new file mode 100644
> >> index 0000000..d9e198a
> >> --- /dev/null
> >> +++ b/meta-yocto/recipes-core/tiny-init/files/rc.local.sample
> >> @@ -0,0 +1,23 @@
> >> +#!/bin/sh
> >> +
> >> +# Start services and customize the boot process here.
> >> +echo "Running /etc/rc.local..."
> >> +
> >> +# Use init scripts included with packages such as dropbear
> >> +#/etc/init.d/dropbear start
> >> +
> >> +# Spawn a getty manually
> >> +#setsid /sbin/getty 115200 ttyS2
> >> +
> >> +# Print a banner
> >> +#echo "You are running a poky-tiny image brought to you by the Yocto =
Project."
> >> +
> >> +# Setup a debugging environment
> >> +#mkdir /debugfs
> >> +#mount none -t debugfs /debugfs
> >> +
> >> +# Load modules (note: linux-yocto-tiny does not have module support b=
y default)
> >> +#modprobe yourdriver
> >> +
> >> +# DO NOT run any long running tasks or loops as these will delay
> >> +# the /init script and the console shell.
> >> diff --git a/meta-yocto/recipes-core/tiny-init/tiny-init.bb b/meta-yoc=
to/recipes-core/tiny-init/tiny-init.bb
> >> new file mode 100644
> >> index 0000000..1cf46ed
> >> --- /dev/null
> >> +++ b/meta-yocto/recipes-core/tiny-init/tiny-init.bb
> >> @@ -0,0 +1,26 @@
> >> +SUMMARY =3D "Poky-tiny init"
> >> +DESCRIPTION =3D "Basic init system for poky-tiny"
> >> +LICENSE =3D "MIT"
> >> +LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9c=
fbcb788c80a0384361b4de20420"
> >> +
> >> +PR =3D "r0"
> >> +
> >> +SRC_URI =3D "file://init \
> >> +          file://rc.local.sample \
> >> +         "
> >> +
> >> +do_configure() {
> >> +       :
> >> +}
> >> +
> >> +do_compile() {
> >> +       :
> >> +}
> >> +
> >> +do_install() {
> >> +       install -d ${D}${sysconfdir}
> >> +       install -m 0755 ${WORKDIR}/init ${D}
> >> +       install -m 0755 ${WORKDIR}/rc.local.sample ${D}${sysconfdir}
> >> +}
> >> +
> >> +FILES_${PN} =3D "/init ${sysconfdir}/rc.local.sample"
> >> --
> >> 1.7.5.4
> >>
> >=20
> >=20
> > should this recipe rdepend on busybox ? since it uses the binaries from=
 it.?
>=20
> I suppose so, I wasn't even sure how to build an image WITHOUT busybox -
> but I'm sure it's doable, and the RDEPENDS should reflect the
> dependencies accurately.
>=20
> I've updated the patch in the branch:
>=20
> http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=3Ddvhart/tiny=
&id=3Ded5ded75a66c6ae0defaef6301e333615f71d616

RDEPENDS =3D "busybox"

is wrong (missing _${PN} at least) and what if someone is using
tiny-init in image with coreutils/util-linux/whatever is needed to
execute /init without busybox?

> Thanks for catching that.
>=20
> --=20
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--Aaj1jBvBEV7KRjLi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAk/fmw8ACgkQN1Ujt2V2gBwYWwCeJsuhaa5ohf0jJPWcbAesu8uu
yigAnRRh9QF/6cjSoiwfxnUKTUtFwK9i
=KDYW
-----END PGP SIGNATURE-----

--Aaj1jBvBEV7KRjLi--
