Return-Path: <me@padamj.com>
Received: from mail-pb0-f44.google.com (mail-pb0-f44.google.com
	[209.85.160.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0917DE004D9
	for <yocto@yoctoproject.org>; Fri, 31 Jan 2014 03:49:22 -0800 (PST)
Received: by mail-pb0-f44.google.com with SMTP id rq2so4324799pbb.17
	for <yocto@yoctoproject.org>; Fri, 31 Jan 2014 03:49:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:content-type:content-transfer-encoding
	:subject:message-id:date:to:mime-version;
	bh=+Xc4UhrHOUH4u78KwyJG84Vk1wTYhGR+jY0QBOnX0w8=;
	b=gCjS+NLD0Ovxh8HsC6/BfFm6LCYMEcUhYk41ELGRlSyGctrQApmCwXv33RFI5lrpKJ
	ZTDHgp5i5GrN7t5urKcGwz278VxKNcG0RajVdg8s4wdvCxyXlJyil+e2WqURi1wVXAWv
	uV8fshf0LNxMmmxTdAnWIo+hW3WgylI5RRf5Pd/fo+ai7sJkrt9rwCWt3aQJuudQ5Cyw
	a8QziXoLc8oL4FhaZfKvFjg05Aa2Uzwwe2mZLaImlElNGSTvEnyzlwBO5XsiZ+MPADQx
	P/IuZsU225mfORwNH2N1fUkYXUaJdReyTNhIiMgd+pIVEstDYpTAF/tRks8QQ2aHkPwe
	vPug==
X-Gm-Message-State: ALoCoQnwgeli4hf5/27L/wtnhjKUxmCwDcMIKQD0cjmkiDhNOQXufMBf6c9AAvEfqCEyX9pPI18/
X-Received: by 10.68.139.73 with SMTP id qw9mr20023326pbb.121.1391168961527;
	Fri, 31 Jan 2014 03:49:21 -0800 (PST)
Received: from [172.16.1.4] ([103.25.205.2]) by mx.google.com with ESMTPSA id
	yi8sm65636468pab.16.2014.01.31.03.49.18 for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 31 Jan 2014 03:49:20 -0800 (PST)
From: Padam J. Singh <me@padamj.com>
Message-Id: <05301278-AC33-4DBC-A381-DE2F5CB1E73B@padamj.com>
Date: Fri, 31 Jan 2014 17:15:20 +0530
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 7.1 \(1827\))
X-Mailer: Apple Mail (2.1827)
Subject: Help with ipset bitbake files
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 31 Jan 2014 11:49:25 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hello,

I am trying to create a bitbake file for ipset =
(http://ipset.netfilter.org). Currently using the Poky project.

When executing this recipe, all steps completes OK. However, the =
compiled binaries are not included in the final RPMs or the final =
images.=20

Could someone point out what could be wrong?

once I do:

bitbake -DDD -v ipset

the directory tmp/work/x86_64-poky-linux/ipset/6.20.1-r29/image contains =
the libraries and the binary file ipset, however, the RPM builder only =
includes the libraries and completely ignores the ipset file.

The output from the RPM packaging process is:


Processing files: ipset-6.20.1-r29.x86_64

Provides:
libipset.so.3(LIBIPSET_1.0)(64bit)
elf(buildid) =3D cf8440b26d69aa1801b9d4551d277b18f74a7ce6
elf(buildid) =3D 33d7b60b93579f13ec71d1a156882b5f59dbcbff =
libipset.so.3()(64bit) libipset.so.3(LIBIPSET_4.0)(64bit) =
libipset.so.3(LIBIPSET_4.1)(64bit) libipset.so.3(LIBIPSET_3.0)(64bit) =
libipset.so.3(LIBIPSET_2.0)(64bit)

Requires(interp): /bin/sh

Requires(post): rtld(GNU_HASH) libc.so.6(GLIBC_2.3)(64bit) =
libmnl.so.0(LIBMNL_1.0)(64bit) libc.so.6()(64bit) libdl.so.2()(64bit) =
libmnl0 >=3D 1.0.3 libc.so.6(GLIBC_2.2.5)(64bit) libc6 >=3D 2.18 =
libmnl.so.0()(64bit) /bin/sh

Provides:
libipset.so.3(LIBIPSET_1.0)(64bit) elf(buildid) =3D =
cf8440b26d69aa1801b9d4551d277b18f74a7ce6 elf(buildid) =3D =
33d7b60b93579f13ec71d1a156882b5f59dbcbff libipset.so.3()(64bit) =
libipset.so.3(LIBIPSET_4.0)(64bit) libipset.so.3(LIBIPSET_4.1)(64bit) =
libipset.so.3(LIBIPSET_3.0)(64bit) libipset.so.3(LIBIPSET_2.0)(64bit)
Requires(interp): /bin/sh
Requires(post): rtld(GNU_HASH) libc.so.6(GLIBC_2.3)(64bit) =
libmnl.so.0(LIBMNL_1.0)(64bit) libc.so.6()(64bit) libdl.so.2()(64bit) =
libmnl0 >=3D 1.0.3 libc.so.6(GLIBC_2.2.5)(64bit) libc6 >=3D 2.18 =
libmnl.so.0()(64bit) /bin/sh



Here are the files:

libmnl.inc (dependency for ipset)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=

DESCRIPTION =3D "libmnl is a minimalistic user-space library oriented to =
Netlink developers. There are a lot of common tasks in parsing, =
validating, constructing of both the Netlink header and TLVs that are =
repetitive and easy to get wrong. This library aims to provide simple =
helpers that allows you to re-use code and to avoid re-inventing the =
wheel."
SECTION =3D "base"
LICENSE =3D "GPLv2"
DEPENDS +=3D "virtual/libc"

inherit autotools

PR=3D"r3"

SRC_URI =3D =
"http://netfilter.org/projects/libmnl/files/libmnl-${PV}.tar.bz2"

#EXTRA_OEMAKE =3D "KERNEL_DIR=3D${KERNEL_SOURCE} MANDIR=3D${mandir}"
BBCLASSEXTEND =3D "native"

libmnl_1.0.3.bb
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
require libmnl.inc

LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D4fbd65380cdd255951079008b364516c"

SRC_URI[md5sum] =3D "7d95fc3bea3365bc03c48e484224f65f"
SRC_URI[sha256sum] =3D =
"6f14336e9acdbc62c2dc71bbb59ce162e54e9af5c80153e92476c5443fe784de"


ipset.inc
=3D=3D=3D=3D=3D=3D
DESCRIPTION =3D "IP set framework"
SECTION =3D "base"
LICENSE =3D "GPLv2"
DEPENDS +=3D "virtual/libc"
RDEPENDS_${PN} +=3D "libmnl"

inherit autotools
inherit pkgconfig

PR=3D"r29"

SRC_URI =3D " \
     http://ipset.netfilter.org/ipset-${PV}.tar.bz2 \
     "
EXTRA_OEMAKE =3D "KERNEL_DIR=3D${KERNEL_SOURCE} MANDIR=3D${mandir} =
AM_CPPFLAGS=3D-I../include"
EXTRA_OECONF =3D "--with-kmod=3Dno"
FILES_${PN} +=3D "${sbindir} ${sbindir}/ipset"

PARALLEL_MAKE =3D ""
BBCLASSEXTEND =3D "native"


ipset_6.20.1.bb
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
require ipset.inc

LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D59530bdf33659b29e73d4adb9f9f6552"

SRC_URI[md5sum] =3D "8af741492752fbf24d3a28a9d1473d40"
SRC_URI[sha256sum] =3D =
"356cac020438cd0871acbfc4cb119b8296030f0bb4661ad0d44bbc115ccbce92"




Have been stuck on this for days now, any help or pointer to fix this =
will help.

Thanks,
Padam





