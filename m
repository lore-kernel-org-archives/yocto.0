Return-Path: <B29882@freescale.com>
Received: from DB3EHSOBE006.bigfish.com (db3ehsobe006.messaging.microsoft.com
	[213.199.154.144])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26F93E0054C
	for <yocto@yoctoproject.org>; Sat, 29 Oct 2011 11:47:26 -0700 (PDT)
Received: from mail9-db3-R.bigfish.com (10.3.81.245) by
	DB3EHSOBE006.bigfish.com (10.3.84.26) with Microsoft SMTP Server id
	14.1.225.22; Sat, 29 Oct 2011 18:47:13 +0000
Received: from mail9-db3 (localhost.localdomain [127.0.0.1])	by
	mail9-db3-R.bigfish.com (Postfix) with ESMTP id 4B5FC198269;
	Sat, 29 Oct 2011 18:47:19 +0000 (UTC)
X-SpamScore: -14
X-BigFish: VS-14(zz9371K1432N98dK444fMc8kzz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3h)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail9-db3 (localhost.localdomain [127.0.0.1]) by mail9-db3
	(MessageSwitch) id 1319914038251781_11393;
	Sat, 29 Oct 2011 18:47:18 +0000 (UTC)
Received: from DB3EHSMHS017.bigfish.com (unknown [10.3.81.248])	by
	mail9-db3.bigfish.com (Postfix) with ESMTP id 2E794E8004E;
	Sat, 29 Oct 2011 18:47:18 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB3EHSMHS017.bigfish.com
	(10.3.87.117) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Sat, 29 Oct 2011 18:47:12 +0000
Received: from 039-SN1MPN1-003.039d.mgd.msft.net ([169.254.3.150]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.01.0339.002; Sat, 29 Oct 2011 13:47:21 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Brian Park <bsp2020@gmail.com>
Thread-Topic: [yocto] Yocto build problem on Ubuntu 11.10
Thread-Index: AQHMlmsw8w213XG/jE26JWILZvqPag==
Date: Sat, 29 Oct 2011 18:47:20 +0000
Message-ID: <CAEsOVNe3wVa5wBEhNo2vra=CQo5U4aNS2W-jHrd4X3ArZr_5pA@mail.gmail.com>
References: <CAFNE1kTY35o3iu0i9X=aACY6RoDDHjDbMvvbhR0CkDxQH3h-nw@mail.gmail.com>
In-Reply-To: <CAFNE1kTY35o3iu0i9X=aACY6RoDDHjDbMvvbhR0CkDxQH3h-nw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto build problem on Ubuntu 11.10
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 29 Oct 2011 18:47:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <468640BF1FD0214F8EB7395ADC7D96F2@freescale.net>
Content-Transfer-Encoding: quoted-printable

For xkeyboard: Try install the XML parser perl module on your host
machine and see if it resolves it. Seems like that recipe is using the
host's perl when it should not be doing that.That or add inherit
perl-native to the recipe.

-M

On Sat, Oct 29, 2011 at 1:59 AM, Brian Park <bsp2020@gmail.com> wrote:
> Hi,
> I'm trying to build for Beagleboard on Ubuntu 11.10 x64. But it fails to
> build with the following error. Can anyone help me resolve the problem? W=
hen
> I built for x86qemu, i had no problem.
>
> Thanks
>
> Brian
>
> OE Build Configuration:
> BB_VERSION=A0=A0=A0=A0=A0=A0=A0 =3D "1.13.3"
> TARGET_ARCH=A0=A0=A0=A0=A0=A0 =3D "arm"
> TARGET_OS=A0=A0=A0=A0=A0=A0=A0=A0 =3D "linux-gnueabi"
> MACHINE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D "beagleboard"
> DISTRO=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D "poky"
> DISTRO_VERSION=A0=A0=A0 =3D "1.1"
> TUNE_FEATURES=A0=A0=A0=A0 =3D "armv7a vfp neon cortexa8"
> TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =3D "vfp-neon"
> meta
> meta-yocto=A0=A0=A0=A0=A0=A0=A0 =3D "edison:1924f52cc894d4dd6b9d9c1a2248b=
32fc0a24c8c"
>
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> NOTE: Running task 3497 of 5088 (ID: 4091,
> /home/briansp/poky/meta/recipes-devtools/docbook-utils/docbook-utils-nati=
ve_0.6.14.bb,
> do_compile)
> NOTE: Running task 4040 of 5088 (ID: 3660,
> /home/briansp/poky/meta/recipes-support/shared-mime-info/shared-mime-info=
_0.90.bb,
> do_configure)
> NOTE: Running task 4212 of 5088 (ID: 3530,
> /home/briansp/poky/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.1.bb=
,
> do_configure)
> NOTE: package docbook-utils-native-0.6.14-r1: task do_compile: Started
> ERROR: Function 'do_compile' failed (see
> /home/briansp/poky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.1=
4-r1/temp/log.do_compile.2851
> for further information)
> ERROR: Logfile of failure stored in:
> /home/briansp/poky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.1=
4-r1/temp/log.do_compile.2851
> Log data follows:
> | NOTE: make -j 3
> | Making all in backends
> | make[1]: Entering directory
> `/home/briansp/poky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.=
14-r1/docbook-utils-0.6.14/backends'
> | make[1]: Nothing to be done for `all'.
> | make[1]: Leaving directory
> `/home/briansp/poky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.=
14-r1/docbook-utils-0.6.14/backends'
> | Making all in bin
> | make[1]: Entering directory
> `/home/briansp/poky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.=
14-r1/docbook-utils-0.6.14/bin'
> | make[1]: Nothing to be done for `all'.
> | make[1]: Leaving directory
> `/home/briansp/poky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.=
14-r1/docbook-utils-0.6.14/bin'
> | Making all in doc
> | make[1]: Entering directory
> `/home/briansp/poky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.=
14-r1/docbook-utils-0.6.14/doc'
> | Making all in refentry
> | make[2]: Entering directory
> `/home/briansp/poky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.=
14-r1/docbook-utils-0.6.14/doc/refentry'
> | make[2]: Nothing to be done for `all'.
> | make[2]: Leaving directory
> `/home/briansp/poky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.=
14-r1/docbook-utils-0.6.14/doc/refentry'
> | Making all in man
> | make[2]: Entering directory
> `/home/briansp/poky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.=
14-r1/docbook-utils-0.6.14/doc/man'
> | make[2]: Nothing to be done for `all'.
> | make[2]: Leaving directory
> `/home/briansp/poky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.=
14-r1/docbook-utils-0.6.14/doc/man'
> | Making all in HTML
> | make[2]: Entering directory
> `/home/briansp/poky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.=
14-r1/docbook-utils-0.6.14/doc/HTML'
> |
> SGML_CATALOG_FILES=3D/home/briansp/poky-build/tmp/sysroots/x86_64-linux/e=
tc/sgml/catalog
> \
> | =A0=A0=A0 SGML_SEARCH_PATH=3D../..:../../doc:.. \
> | =A0=A0=A0 =A0=A0=A0 jade -t sgml -i html -d ../../docbook-utils.dsl\#ht=
ml \
> | =A0=A0=A0 =A0=A0=A0 =A0=A0=A0 -V '%use-id-as-filename%' ../../doc/docbo=
ok-utils.sgml
> |
> SGML_CATALOG_FILES=3D/home/briansp/poky-build/tmp/sysroots/x86_64-linux/e=
tc/sgml/catalog
> \
> | =A0=A0=A0 SGML_SEARCH_PATH=3D../..:../../doc:.. \
> | =A0=A0=A0 =A0=A0=A0 jade -t sgml -i html -d ../../docbook-utils.dsl\#ht=
ml \
> | =A0=A0=A0 =A0=A0=A0 =A0=A0=A0 -V '%use-id-as-filename%' ../../doc/docbo=
ok-utils.sgml
> |
> SGML_CATALOG_FILES=3D/home/briansp/poky-build/tmp/sysroots/x86_64-linux/e=
tc/sgml/catalog
> \
> | =A0=A0=A0 SGML_SEARCH_PATH=3D../..:../../doc:.. \
> | =A0=A0=A0 =A0=A0=A0 jade -t sgml -i html -d ../../docbook-utils.dsl\#ht=
ml \
> | =A0=A0=A0 =A0=A0=A0 =A0=A0=A0 -V '%use-id-as-filename%' ../../doc/docbo=
ok-utils.sgml
> | jade: symbol lookup error:
> /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/../../usr/lib/=
libospgrove.so.0:
> undefined symbol: _ZN14OpenJade_Grove8ClassDef12sgmlDocumentE
> | make[2]: *** [backend-spec.html] Error 127
> | make[2]: *** Waiting for unfinished jobs....
> | jade: symbol lookup error:
> /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/../../usr/lib/=
libospgrove.so.0:
> undefined symbol: _ZN14OpenJade_Grove8ClassDef12sgmlDocumentE
> | make[2]: *** [docbook2man.html] Error 127
> | jade: symbol lookup error:
> /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/../../usr/lib/=
libospgrove.so.0:
> undefined symbol: _ZN14OpenJade_Grove8ClassDef12sgmlDocumentE
> | make[2]: *** [api.html] Error 127
> | make[2]: Leaving directory
> `/home/briansp/poky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.=
14-r1/docbook-utils-0.6.14/doc/HTML'
> | make[1]: *** [all-recursive] Error 1
> | make[1]: Leaving directory
> `/home/briansp/poky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.=
14-r1/docbook-utils-0.6.14/doc'
> | make: *** [all-recursive] Error 1
> | ERROR: oe_runmake failed
> | ERROR: Function 'do_compile' failed (see
> /home/briansp/poky-build/tmp/work/x86_64-linux/docbook-utils-native-0.6.1=
4-r1/temp/log.do_compile.2851
> for further information)
> NOTE: package docbook-utils-native-0.6.14-r1: task do_compile: Failed
> ERROR: Task 4091
> (/home/briansp/poky/meta/recipes-devtools/docbook-utils/docbook-utils-nat=
ive_0.6.14.bb,
> do_compile) failed with exit code '1'
> Waiting for 1 active tasks to finish:
> 0: shared-mime-info-0.90-r0 do_configure (pid 2877)
> NOTE: package shared-mime-info-0.90-r0: task do_configure: Started
> Waiting for 2 active tasks to finish:
> 0: shared-mime-info-0.90-r0 do_configure (pid 2877)
> 1: xkeyboard-config-2.1-r1 do_configure (pid 2878)
> NOTE: package xkeyboard-config-2.1-r1: task do_configure: Started
> ERROR: Function 'do_configure' failed (see
> /home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/shar=
ed-mime-info-0.90-r0/temp/log.do_configure.2877
> for further information)
> Waiting for 1 active tasks to finish:
> 0: xkeyboard-config-2.1-r1 do_configure (pid 2878)
> ERROR: Logfile of failure stored in:
> /home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/shar=
ed-mime-info-0.90-r0/temp/log.do_configure.2877
> Log data follows:
> | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common=
']
> | automake (GNU automake) 1.11.1
> | Copyright (C) 2009 Free Software Foundation, Inc.
> | License GPLv2+: GNU GPL version 2 or later
> <http://gnu.org/licenses/gpl-2.0.html>
> | This is free software: you are free to change and redistribute it.
> | There is NO WARRANTY, to the extent permitted by law.
> |
> | Written by Tom Tromey <tromey@redhat.com>
> |=A0=A0=A0=A0=A0=A0=A0 and Alexandre Duret-Lutz <adl@gnu.org>.
> | AUTOV is 1.11
> | NOTE: Executing glib-gettextize --force --copy
> | Copying file mkinstalldirs
> | Copying file po/Makefile.in.in
> |
> | Please add the files
> |=A0=A0 codeset.m4 gettext.m4 glibc21.m4 iconv.m4 isc-posix.m4 lcmessage.=
m4
> |=A0=A0 progtest.m4
> | from the
> /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/share/aclocal
> directory to your autoconf macro directory
> | or directly to your aclocal.m4 file.
> | You will also need config.guess and config.sub, which you can get from
> | ftp://ftp.gnu.org/pub/gnu/config/.
> |
> | NOTE: Executing intltoolize --copy --force --automake
> | NOTE: Executing autoreconf --verbose --install --force --exclude=3Dauto=
point
> -I
> /home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/shar=
ed-mime-info-0.90-r0/shared-mime-info-0.90/aclocal-copy/
> -I/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.=
11
> -I
> /home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/shar=
ed-mime-info-0.90-r0/shared-mime-info-0.90/aclocal-copy/
> | autoreconf: Entering directory `.'
> | autoreconf: configure.in: not using Gettext
> | autoreconf: running: aclocal -I
> /home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/shar=
ed-mime-info-0.90-r0/shared-mime-info-0.90/aclocal-copy/
> -I /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1=
.11
> -I
> /home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/shar=
ed-mime-info-0.90-r0/shared-mime-info-0.90/aclocal-copy/
> -I
> /home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/shar=
ed-mime-info-0.90-r0/shared-mime-info-0.90/aclocal-copy/
> -I /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1=
.11
> -I
> /home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/shar=
ed-mime-info-0.90-r0/shared-mime-info-0.90/aclocal-copy/
> --force --warnings=3Dcross
> | aclocal: unknown warning category `cross'
> | autoreconf: configure.in: tracing
> | autoreconf: configure.in: not using Libtool
> | autoreconf: running:
> /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/autoconf
> --include=3D/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-=
gnueabi/shared-mime-info-0.90-r0/shared-mime-info-0.90/aclocal-copy/
> --include=3D/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/share/=
aclocal-1.11
> --include=3D/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-=
gnueabi/shared-mime-info-0.90-r0/shared-mime-info-0.90/aclocal-copy/
> --force --warnings=3Dcross
> | autoreconf: running:
> /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/autoheader
> --include=3D/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-=
gnueabi/shared-mime-info-0.90-r0/shared-mime-info-0.90/aclocal-copy/
> --include=3D/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/share/=
aclocal-1.11
> --include=3D/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-=
gnueabi/shared-mime-info-0.90-r0/shared-mime-info-0.90/aclocal-copy/
> --force --warnings=3Dcross
> | autoreconf: running: automake --foreign --add-missing --copy
> --force-missing --warnings=3Dcross
> | automake: unknown warning category `cross'
> | autoreconf: running: gnu-configize
> | autoreconf: Leaving directory `.'
> | NOTE: Running
> /home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/shar=
ed-mime-info-0.90-r0/shared-mime-info-0.90/configure
> =A0=A0=A0 =A0=A0=A0 =A0--build=3Dx86_64-linux =A0=A0=A0 =A0=A0=A0 =A0 --h=
ost=3Darm-poky-linux-gnueabi
> =A0=A0=A0 =A0 --target=3Darm-poky-linux-gnueabi =A0=A0=A0 =A0=A0=A0 =A0 -=
-prefix=3D/usr
> --exec_prefix=3D/usr =A0=A0=A0 =A0=A0=A0 =A0 --bindir=3D/usr/bin =A0=A0=
=A0 =A0=A0=A0 =A0 --sbindir=3D/usr/sbin
> =A0=A0=A0 =A0 --libexecdir=3D/usr/libexec =A0=A0=A0 =A0=A0=A0 =A0 --datad=
ir=3D/usr/share
> --sysconfdir=3D/etc =A0=A0=A0 =A0=A0=A0 =A0 --sharedstatedir=3D/com
> --localstatedir=3D/var =A0=A0=A0 =A0=A0=A0 =A0 --libdir=3D/usr/lib
> --includedir=3D/usr/include =A0=A0=A0 =A0 --oldincludedir=3D/usr/include
> --infodir=3D/usr/share/info =A0=A0=A0 =A0=A0=A0 =A0 --mandir=3D/usr/share=
/man
> --disable-silent-rules
> --with-libtool-sysroot=3D/home/briansp/poky-build/tmp/sysroots/beagleboar=
d
> --disable-update-mimedb --enable-nls ...
> | configure: WARNING: unrecognized options: --disable-silent-rules,
> --with-libtool-sysroot
> | configure: loading site script /home/briansp/poky/meta/site/endian-litt=
le
> | configure: loading site script /home/briansp/poky/meta/site/arm-common
> | configure: loading site script /home/briansp/poky/meta/site/common-linu=
x
> | configure: loading site script /home/briansp/poky/meta/site/common-glib=
c
> | configure: loading site script /home/briansp/poky/meta/site/arm-linux
> | configure: loading site script /home/briansp/poky/meta/site/common
> | configure: loading site script
> /home/briansp/poky-build/tmp/sysroots/beagleboard/usr/share/arm-poky-linu=
x-gnueabi_config_site.d/zlib_config
> | configure: loading site script
> /home/briansp/poky-build/tmp/sysroots/beagleboard/usr/share/arm-poky-linu=
x-gnueabi_config_site.d/ncurses_config
> | configure: loading site script
> /home/briansp/poky-build/tmp/sysroots/beagleboard/usr/share/arm-poky-linu=
x-gnueabi_config_site.d/eglibc_config
> | checking for a BSD-compatible install... /usr/bin/install -c
> | checking whether build environment is sane... yes
> | checking for arm-poky-linux-gnueabi-strip... arm-poky-linux-gnueabi-str=
ip
> | checking for a thread-safe mkdir -p... /bin/mkdir -p
> | checking for gawk... gawk
> | checking whether make sets $(MAKE)... yes
> | checking for arm-poky-linux-gnueabi-gcc... arm-poky-linux-gnueabi-gcc
> -march=3Darmv7-a -fno-tree-vectorize=A0=A0=A0=A0=A0 -mthumb-interwork -mf=
loat-abi=3Dsoftfp
> -mfpu=3Dneon -mtune=3Dcortex-a8
> --sysroot=3D/home/briansp/poky-build/tmp/sysroots/beagleboard
> | checking whether the C compiler works... yes
> | checking for C compiler default output file name... a.out
> | checking for suffix of executables...
> | checking whether we are cross compiling... yes
> | checking for suffix of object files... o
> | checking whether we are using the GNU C compiler... yes
> | checking whether arm-poky-linux-gnueabi-gcc=A0 -march=3Darmv7-a
> -fno-tree-vectorize=A0=A0=A0=A0=A0 -mthumb-interwork -mfloat-abi=3Dsoftfp=
 -mfpu=3Dneon
> -mtune=3Dcortex-a8 --sysroot=3D/home/briansp/poky-build/tmp/sysroots/beag=
leboard
> accepts -g... yes
> | checking for arm-poky-linux-gnueabi-gcc=A0 -march=3Darmv7-a
> -fno-tree-vectorize=A0=A0=A0=A0=A0 -mthumb-interwork -mfloat-abi=3Dsoftfp=
 -mfpu=3Dneon
> -mtune=3Dcortex-a8 --sysroot=3D/home/briansp/poky-build/tmp/sysroots/beag=
leboard
> option to accept ISO C89... none needed
> | checking for style of include used by make... GNU
> | checking dependency style of arm-poky-linux-gnueabi-gcc=A0 -march=3Darm=
v7-a
> -fno-tree-vectorize=A0=A0=A0=A0=A0 -mthumb-interwork -mfloat-abi=3Dsoftfp=
 -mfpu=3Dneon
> -mtune=3Dcortex-a8
> --sysroot=3D/home/briansp/poky-build/tmp/sysroots/beagleboard... gcc3
> | checking for an ANSI C-conforming const... yes
> | checking whether NLS is requested... yes
> | checking for intltool >=3D 0.35.0... 0.40.6 found
> | checking for intltool-update...
> /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/intltool-updat=
e
> | checking for intltool-merge...
> /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/intltool-merge
> | checking for intltool-extract...
> /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/intltool-extra=
ct
> | checking for xgettext...
> /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/xgettext
> | checking for msgmerge...
> /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/msgmerge
> | checking for msgfmt...
> /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/msgfmt
> | checking for gmsgfmt...
> /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/msgfmt
> | checking for perl... /usr/bin/perl
> | checking for perl >=3D 5.8.1... 5.12.4
> | checking for XML::Parser... configure: error: XML::Parser perl module i=
s
> required for intltool
> | ERROR: oe_runconf failed
> | ERROR: Function 'do_configure' failed (see
> /home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/shar=
ed-mime-info-0.90-r0/temp/log.do_configure.2877
> for further information)
> NOTE: package shared-mime-info-0.90-r0: task do_configure: Failed
> ERROR: Function 'do_configure' failed (see
> /home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xkey=
board-config-2.1-r1/temp/log.do_configure.2878
> for further information)
> ERROR: Logfile of failure stored in:
> /home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xkey=
board-config-2.1-r1/temp/log.do_configure.2878
> Log data follows:
> | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common=
']
> | automake (GNU automake) 1.11.1
> | Copyright (C) 2009 Free Software Foundation, Inc.
> | License GPLv2+: GNU GPL version 2 or later
> <http://gnu.org/licenses/gpl-2.0.html>
> | This is free software: you are free to change and redistribute it.
> | There is NO WARRANTY, to the extent permitted by law.
> |
> | Written by Tom Tromey <tromey@redhat.com>
> |=A0=A0=A0=A0=A0=A0=A0 and Alexandre Duret-Lutz <adl@gnu.org>.
> | AUTOV is 1.11
> | NOTE: Executing glib-gettextize --force --copy
> | Copying file mkinstalldirs
> | Copying file po/Makefile.in.in
> |
> | Please add the files
> |=A0=A0 codeset.m4 gettext.m4 glibc21.m4 iconv.m4 isc-posix.m4 lcmessage.=
m4
> |=A0=A0 progtest.m4
> | from the
> /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/share/aclocal
> directory to your autoconf macro directory
> | or directly to your aclocal.m4 file.
> | You will also need config.guess and config.sub, which you can get from
> | ftp://ftp.gnu.org/pub/gnu/config/.
> |
> | NOTE: Executing intltoolize --copy --force --automake
> | NOTE: Executing autoreconf --verbose --install --force --exclude=3Dauto=
point
> -I
> /home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xkey=
board-config-2.1-r1/xkeyboard-config-2.1/aclocal-copy/
> -I/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.=
11
> -I
> /home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xkey=
board-config-2.1-r1/xkeyboard-config-2.1/aclocal-copy/
> | autoreconf: Entering directory `.'
> | autoreconf: configure.in: not using Gettext
> | autoreconf: running: aclocal -I
> /home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xkey=
board-config-2.1-r1/xkeyboard-config-2.1/aclocal-copy/
> -I /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1=
.11
> -I
> /home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xkey=
board-config-2.1-r1/xkeyboard-config-2.1/aclocal-copy/
> -I
> /home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xkey=
board-config-2.1-r1/xkeyboard-config-2.1/aclocal-copy/
> -I /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1=
.11
> -I
> /home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xkey=
board-config-2.1-r1/xkeyboard-config-2.1/aclocal-copy/
> --force --warnings=3Dcross
> | aclocal: unknown warning category `cross'
> | autoreconf: configure.in: tracing
> | autoreconf: configure.in: not using Libtool
> | autoreconf: running:
> /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/autoconf
> --include=3D/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-=
gnueabi/xkeyboard-config-2.1-r1/xkeyboard-config-2.1/aclocal-copy/
> --include=3D/home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/share/=
aclocal-1.11
> --include=3D/home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-=
gnueabi/xkeyboard-config-2.1-r1/xkeyboard-config-2.1/aclocal-copy/
> --force --warnings=3Dcross
> | autoreconf: configure.in: not using Autoheader
> | autoreconf: running: automake --foreign --add-missing --copy
> --force-missing --warnings=3Dcross
> | automake: unknown warning category `cross'
> | autoreconf: running: gnu-configize
> | autoreconf: Leaving directory `.'
> | NOTE: Running
> /home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xkey=
board-config-2.1-r1/xkeyboard-config-2.1/configure
> =A0=A0=A0 =A0=A0=A0 =A0--build=3Dx86_64-linux =A0=A0=A0 =A0=A0=A0 =A0 --h=
ost=3Darm-poky-linux-gnueabi
> =A0=A0=A0 =A0 --target=3Darm-poky-linux-gnueabi =A0=A0=A0 =A0=A0=A0 =A0 -=
-prefix=3D/usr
> --exec_prefix=3D/usr =A0=A0=A0 =A0=A0=A0 =A0 --bindir=3D/usr/bin =A0=A0=
=A0 =A0=A0=A0 =A0 --sbindir=3D/usr/sbin
> =A0=A0=A0 =A0 --libexecdir=3D/usr/libexec =A0=A0=A0 =A0=A0=A0 =A0 --datad=
ir=3D/usr/share
> --sysconfdir=3D/etc =A0=A0=A0 =A0=A0=A0 =A0 --sharedstatedir=3D/com
> --localstatedir=3D/var =A0=A0=A0 =A0=A0=A0 =A0 --libdir=3D/usr/lib
> --includedir=3D/usr/include =A0=A0=A0 =A0 --oldincludedir=3D/usr/include
> --infodir=3D/usr/share/info =A0=A0=A0 =A0=A0=A0 =A0 --mandir=3D/usr/share=
/man
> --disable-silent-rules
> --with-libtool-sysroot=3D/home/briansp/poky-build/tmp/sysroots/beagleboar=
d
> --with-xkb-rules-symlink=3Dxorg ...
> | configure: WARNING: unrecognized options: --disable-silent-rules,
> --with-libtool-sysroot
> | configure: loading site script /home/briansp/poky/meta/site/endian-litt=
le
> | configure: loading site script /home/briansp/poky/meta/site/arm-common
> | configure: loading site script /home/briansp/poky/meta/site/common-linu=
x
> | configure: loading site script /home/briansp/poky/meta/site/common-glib=
c
> | configure: loading site script /home/briansp/poky/meta/site/arm-linux
> | configure: loading site script /home/briansp/poky/meta/site/common
> | configure: loading site script
> /home/briansp/poky-build/tmp/sysroots/beagleboard/usr/share/arm-poky-linu=
x-gnueabi_config_site.d/zlib_config
> | configure: loading site script
> /home/briansp/poky-build/tmp/sysroots/beagleboard/usr/share/arm-poky-linu=
x-gnueabi_config_site.d/ncurses_config
> | configure: loading site script
> /home/briansp/poky-build/tmp/sysroots/beagleboard/usr/share/arm-poky-linu=
x-gnueabi_config_site.d/eglibc_config
> | checking for a BSD-compatible install... /usr/bin/install -c
> | checking whether build environment is sane... yes
> | checking for arm-poky-linux-gnueabi-strip... arm-poky-linux-gnueabi-str=
ip
> | checking for a thread-safe mkdir -p... /bin/mkdir -p
> | checking for gawk... gawk
> | checking whether make sets $(MAKE)... yes
> | checking whether to enable maintainer-specific portions of Makefiles...=
 no
> | checking for xkbcomp...
> /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/xkbcomp
> | checking whether NLS is requested... yes
> | checking for style of include used by make... GNU
> | checking for arm-poky-linux-gnueabi-gcc... arm-poky-linux-gnueabi-gcc
> -march=3Darmv7-a -fno-tree-vectorize=A0=A0=A0=A0=A0 -mthumb-interwork -mf=
loat-abi=3Dsoftfp
> -mfpu=3Dneon -mtune=3Dcortex-a8
> --sysroot=3D/home/briansp/poky-build/tmp/sysroots/beagleboard
> | checking whether the C compiler works... yes
> | checking for C compiler default output file name... a.out
> | checking for suffix of executables...
> | checking whether we are cross compiling... yes
> | checking for suffix of object files... o
> | checking whether we are using the GNU C compiler... yes
> | checking whether arm-poky-linux-gnueabi-gcc=A0 -march=3Darmv7-a
> -fno-tree-vectorize=A0=A0=A0=A0=A0 -mthumb-interwork -mfloat-abi=3Dsoftfp=
 -mfpu=3Dneon
> -mtune=3Dcortex-a8 --sysroot=3D/home/briansp/poky-build/tmp/sysroots/beag=
leboard
> accepts -g... yes
> | checking for arm-poky-linux-gnueabi-gcc=A0 -march=3Darmv7-a
> -fno-tree-vectorize=A0=A0=A0=A0=A0 -mthumb-interwork -mfloat-abi=3Dsoftfp=
 -mfpu=3Dneon
> -mtune=3Dcortex-a8 --sysroot=3D/home/briansp/poky-build/tmp/sysroots/beag=
leboard
> option to accept ISO C89... none needed
> | checking dependency style of arm-poky-linux-gnueabi-gcc=A0 -march=3Darm=
v7-a
> -fno-tree-vectorize=A0=A0=A0=A0=A0 -mthumb-interwork -mfloat-abi=3Dsoftfp=
 -mfpu=3Dneon
> -mtune=3Dcortex-a8
> --sysroot=3D/home/briansp/poky-build/tmp/sysroots/beagleboard... none
> | checking for intltool >=3D 0.30... 0.40.6 found
> | checking for intltool-update...
> /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/intltool-updat=
e
> | checking for intltool-merge...
> /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/intltool-merge
> | checking for intltool-extract...
> /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/intltool-extra=
ct
> | checking for xgettext...
> /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/xgettext
> | checking for msgmerge...
> /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/msgmerge
> | checking for msgfmt...
> /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/msgfmt
> | checking for gmsgfmt...
> /home/briansp/poky-build/tmp/sysroots/x86_64-linux/usr/bin/msgfmt
> | checking for perl... /usr/bin/perl
> | checking for perl >=3D 5.8.1... 5.12.4
> | checking for XML::Parser... configure: error: XML::Parser perl module i=
s
> required for intltool
> | ERROR: oe_runconf failed
> | ERROR: Function 'do_configure' failed (see
> /home/briansp/poky-build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xkey=
board-config-2.1-r1/temp/log.do_configure.2878
> for further information)
> NOTE: package xkeyboard-config-2.1-r1: task do_configure: Failed
> ERROR: Task 3660
> (/home/briansp/poky/meta/recipes-support/shared-mime-info/shared-mime-inf=
o_0.90.bb,
> do_configure) failed with exit code '1'
> ERROR: Task 3530
> (/home/briansp/poky/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.1.b=
b,
> do_configure) failed with exit code '1'
> ERROR:
> '/home/briansp/poky/meta/recipes-devtools/docbook-utils/docbook-utils-nat=
ive_0.6.14.bb'
> failed
> ERROR:
> '/home/briansp/poky/meta/recipes-support/shared-mime-info/shared-mime-inf=
o_0.90.bb'
> failed
> ERROR:
> '/home/briansp/poky/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.1.b=
b'
> failed
> briansp@Ubuntu:~/poky-build$
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>=


