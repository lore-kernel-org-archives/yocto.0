Received: from 7.mo69.mail-out.ovh.net (7.mo69.mail-out.ovh.net [46.105.50.32])
 by mx.groups.io with SMTP id smtpd.web12.35778.1599459834075331883
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Sep 2020 23:23:55 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: 3mdeb.com, ip: 46.105.50.32, mailfrom: maciej.pijanowski@3mdeb.com)
Received: from player759.ha.ovh.net (unknown [10.110.103.226])
	by mo69.mail-out.ovh.net (Postfix) with ESMTP id BB9729A675
	for <yocto@lists.yoctoproject.org>; Mon,  7 Sep 2020 08:23:51 +0200 (CEST)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player759.ha.ovh.net (Postfix) with ESMTPSA id 006AF15E63ECD
	for <yocto@lists.yoctoproject.org>; Mon,  7 Sep 2020 06:23:50 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-97G002f39554db-aa73-4f62-b2bd-4cf027553a34,
                    A52277E91956C8CB11091154D406F43C05F5F736) smtp.auth=maciej.pijanowski@3mdeb.com
Subject: Re: [yocto] bitbake recipe / Network UPS tool
To: yocto@lists.yoctoproject.org
References: <731bd3a4-f5e5-6b2b-a537-a2bcb87d986a@optimcloud.com>
From: "Maciej Pijanowski" <maciej.pijanowski@3mdeb.com>
Message-ID: <22fba728-c053-d538-7faa-84e39c9f3206@3mdeb.com>
Date: Mon, 7 Sep 2020 08:23:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <731bd3a4-f5e5-6b2b-a537-a2bcb87d986a@optimcloud.com>
X-Ovh-Tracer-Id: 15129561476287639046
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedrudegledgheegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefuvfhfhffkffgfgggjtgesrgdtreertdefjeenucfhrhhomhepofgrtghivghjucfrihhjrghnohifshhkihcuoehmrggtihgvjhdrphhijhgrnhhofihskhhiseefmhguvggsrdgtohhmqeenucggtffrrghtthgvrhhnpeeggeeivdetudetieefjeehgeejkefhvdelheduveeileejudeuhfeitdfhffevvdenucffohhmrghinhepghhithhhuhgsrdgtohhmpdhgnhhurdhorhhgpdgruhhgrdhinhdptghonhhfrdhinhdprhhulhgvshdrihhnpdihohgtthhophhrohhjvggtthdrohhrghdpfehmuggvsgdrtghomhdptghouggvrdhlshenucfkpheptddrtddrtddrtddpkeehrddvvddvrdduudejrddvvddvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeehledrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehmrggtihgvjhdrphhijhgrnhhofihskhhiseefmhguvggsrdgtohhmpdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhg
Content-Type: multipart/alternative;
 boundary="------------2D98AB05A8F6DF5E5E0DB1EC"
Content-Language: en-US

--------------2D98AB05A8F6DF5E5E0DB1EC
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi,

I happen to have this recipe lying around. I have not upstreamed it for so=
me
reason (probably lack of time and I have not been using this package at=20
the end,
so it is not properly tested out). I gave it a try today and at least it=
=20
builds.

Please try it out:=20
https://github.com/3mdeb/meta-openembedded/commit/e523d0bb4bddf0ef85218044=
59b265c14100f83c

If it works for you, please let me know. I would be happy to push the=20
patches upstream.

On 06.09.2020 15:27, Yocto wrote:
> Okay heres the bitbake file, the archive manually extracts to, but if=20
> i run bitbake nut
>
> SECTION =3D "console/network"
>
> DESCRIPTION =3D "Network UPS Tools is a collection of programs which=20
> provide a common\
> interface for monitoring and administering UPS, PDU and SCD hardware.\
> It uses a layered approach to connect all of the parts."\
>
> LICENSE =3D "GPLv3"
>
> SRC_URI =3D "https://github.com/networkupstools/nut/archive/v2.7.4.tar.g=
z"
>
> LIC_FILES_CHKSUM =3D=20
> "file://LICENSE-GPL3;md5=3Df27defe1e96c2e1ecd4e0c9be8967949"
>
> SRC_URI[md5sum] =3D "81f5b97ed35fde35d57e1f87f23ad932"
> SRC_URI[sha256sum] =3D=20
> "d580915fdf7090655c1c7c98eb116b61952553f06f0039b1f93c9f5a13e2d36b"
>
> S =3D "${WORKDIR}/${PN}-${PV}"
>
> #inherit autotools-brokensep
> inherit autotools
>
> EXTRA_OECONF =3D "--with-usb --with-serial --with-dev"
>
>
> running bitbake nut i get this result
>
> ERROR: nut-2.7.4-r0 do_configure: autoreconf execution failed.
> ERROR: nut-2.7.4-r0 do_configure: Execution of=20
> '/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0=
/temp/run.do_configure.635947'=20
> failed with exit code 1:
> automake (GNU automake) 1.16.2
> Copyright (C) 2020 Free Software Foundation, Inc.
> License GPLv2+: GNU GPL version 2 or later=20
> <https://gnu.org/licenses/gpl-2.0.html>
> This is free software: you are free to change and redistribute it.
> There is NO WARRANTY, to the extent permitted by law.
>
> Written by Tom Tromey <tromey@redhat.com>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 and Alexandre Duret-Lutz <adl@gnu.o=
rg>.
> AUTOV is 1.16
> autoreconf: Entering directory `.'
> autoreconf: configure.ac: not using Gettext
> autoreconf: running: aclocal=20
> --system-acdir=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-li=
nux/nut/2.7.4-r0/recipe-sysroot/usr/share/aclocal/=20
> --automake-acdir=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-=
linux/nut/2.7.4-r0/recipe-sysroot-native/usr/share/aclocal-1.16=20
> -I=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/=
nut-2.7.4/m4/=20
> -I=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/=
recipe-sysroot-native/usr/share/aclocal/=20
> --force -I m4
> autoreconf: configure.ac: tracing
> autoreconf: running: libtoolize --copy --force
> libtoolize: putting auxiliary files in AC_CONFIG_AUX_DIR, '.'.
> libtoolize: copying file './ltmain.sh'
> libtoolize: putting macros in AC_CONFIG_MACRO_DIRS, 'm4'.
> libtoolize: copying file 'm4/libtool.m4'
> libtoolize: copying file 'm4/ltoptions.m4'
> libtoolize: copying file 'm4/ltsugar.m4'
> libtoolize: copying file 'm4/ltversion.m4'
> libtoolize: copying file 'm4/lt~obsolete.m4'
> autoreconf: running:=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/=
recipe-sysroot-native/usr/bin/autoconf=20
> --include=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/n=
ut/2.7.4-r0/nut-2.7.4/m4/=20
> --include=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/n=
ut/2.7.4-r0/recipe-sysroot-native/usr/share/aclocal/=20
> --force
> autoreconf: running:=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/=
recipe-sysroot-native/usr/bin/autoheader=20
> --include=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/n=
ut/2.7.4-r0/nut-2.7.4/m4/=20
> --include=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/n=
ut/2.7.4-r0/recipe-sysroot-native/usr/share/aclocal/=20
> --force
> autoreconf: running: automake --add-missing --copy --force-missing
> configure.ac:19: installing './compile'
> configure.ac:15: installing './missing'
> clients/Makefile.am: installing './depcomp'
> configure.ac:1268: error: required file=20
> 'scripts/augeas/nutupsconf.aug.in' not found
> configure.ac:1268: error: required file 'scripts/devd/nut-usb.conf.in'=
=20
> not found
> configure.ac:1268: error: required file=20
> 'scripts/udev/nut-usbups.rules.in' not found
> autoreconf: automake failed with exit status: 1
> WARNING:=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/=
temp/run.do_configure.635947:301=20
> exit 1 from 'exit 1'
> WARNING: Backtrace (BB generated script):
> =C2=A0=C2=A0=C2=A0 #1: bbfatal_log,=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/=
temp/run.do_configure.635947,=20
> line 301
> =C2=A0=C2=A0=C2=A0 #2: die,=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/=
temp/run.do_configure.635947,=20
> line 246
> =C2=A0=C2=A0=C2=A0 #3: autotools_do_configure,=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/=
temp/run.do_configure.635947,=20
> line 234
> =C2=A0=C2=A0=C2=A0 #4: do_configure,=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/=
temp/run.do_configure.635947,=20
> line 150
> =C2=A0=C2=A0=C2=A0 #5: main,=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/=
temp/run.do_configure.635947,=20
> line 305
>
> Backtrace (metadata-relative locations):
> =C2=A0=C2=A0=C2=A0 #1: bbfatal_log,=20
> /var/home/dingo/overc/poky/meta/classes/logging.bbclass, line 72
> =C2=A0=C2=A0=C2=A0 #2: die, /var/home/dingo/overc/poky/meta/classes/base=
.bbclass,=20
> line 56
> =C2=A0=C2=A0=C2=A0 #3: autotools_do_configure,=20
> /var/home/dingo/overc/poky/meta/classes/autotools.bbclass, line 232
> =C2=A0=C2=A0=C2=A0 #4: do_configure, autogenerated, line 2
> ERROR: Logfile of failure stored in:=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/=
temp/log.do_configure.635947
> Log data follows:
> | DEBUG: Executing shell function autotools_preconfigure
> | DEBUG: Shell function autotools_preconfigure finished
> | DEBUG: Executing python function autotools_aclocals
> | DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc',=20
> 'bit-64', 'x86_64-linux', 'common']
> | DEBUG: Python function autotools_aclocals finished
> | DEBUG: Executing shell function do_configure
> | automake (GNU automake) 1.16.2
> | Copyright (C) 2020 Free Software Foundation, Inc.
> | License GPLv2+: GNU GPL version 2 or later=20
> <https://gnu.org/licenses/gpl-2.0.html>
> | This is free software: you are free to change and redistribute it.
> | There is NO WARRANTY, to the extent permitted by law.
> |
> | Written by Tom Tromey <tromey@redhat.com>
> |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 and Alexandre Duret-Lutz <ad=
l@gnu.org>.
> | AUTOV is 1.16
> | NOTE: Executing ACLOCAL=3D"aclocal=20
> --system-acdir=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-li=
nux/nut/2.7.4-r0/recipe-sysroot/usr/share/aclocal/=20
> --automake-acdir=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-=
linux/nut/2.7.4-r0/recipe-sysroot-native/usr/share/aclocal-1.16"=20
> autoreconf -Wcross --verbose --install --force --exclude=3Dautopoint -I=
=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/=
nut-2.7.4/m4/=20
> -I=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/=
recipe-sysroot-native/usr/share/aclocal/
> | autoreconf: Entering directory `.'
> | autoreconf: configure.ac: not using Gettext
> | autoreconf: running: aclocal=20
> --system-acdir=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-li=
nux/nut/2.7.4-r0/recipe-sysroot/usr/share/aclocal/=20
> --automake-acdir=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-=
linux/nut/2.7.4-r0/recipe-sysroot-native/usr/share/aclocal-1.16=20
> -I=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/=
nut-2.7.4/m4/=20
> -I=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/=
recipe-sysroot-native/usr/share/aclocal/=20
> --force -I m4
> | autoreconf: configure.ac: tracing
> | autoreconf: running: libtoolize --copy --force
> | libtoolize: putting auxiliary files in AC_CONFIG_AUX_DIR, '.'.
> | libtoolize: copying file './ltmain.sh'
> | libtoolize: putting macros in AC_CONFIG_MACRO_DIRS, 'm4'.
> | libtoolize: copying file 'm4/libtool.m4'
> | libtoolize: copying file 'm4/ltoptions.m4'
> | libtoolize: copying file 'm4/ltsugar.m4'
> | libtoolize: copying file 'm4/ltversion.m4'
> | libtoolize: copying file 'm4/lt~obsolete.m4'
> | autoreconf: running:=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/=
recipe-sysroot-native/usr/bin/autoconf=20
> --include=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/n=
ut/2.7.4-r0/nut-2.7.4/m4/=20
> --include=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/n=
ut/2.7.4-r0/recipe-sysroot-native/usr/share/aclocal/=20
> --force
> | autoreconf: running:=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/=
recipe-sysroot-native/usr/bin/autoheader=20
> --include=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/n=
ut/2.7.4-r0/nut-2.7.4/m4/=20
> --include=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/n=
ut/2.7.4-r0/recipe-sysroot-native/usr/share/aclocal/=20
> --force
> | autoreconf: running: automake --add-missing --copy --force-missing
> | configure.ac:19: installing './compile'
> | configure.ac:15: installing './missing'
> | clients/Makefile.am: installing './depcomp'
> | configure.ac:1268: error: required file=20
> 'scripts/augeas/nutupsconf.aug.in' not found
> | configure.ac:1268: error: required file=20
> 'scripts/devd/nut-usb.conf.in' not found
> | configure.ac:1268: error: required file=20
> 'scripts/udev/nut-usbups.rules.in' not found
> | autoreconf: automake failed with exit status: 1
> | ERROR: autoreconf execution failed.
> | WARNING:=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/=
temp/run.do_configure.635947:301=20
> exit 1 from 'exit 1'
> | WARNING: Backtrace (BB generated script):
> | =C2=A0=C2=A0=C2=A0 #1: bbfatal_log,=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/=
temp/run.do_configure.635947,=20
> line 301
> | =C2=A0=C2=A0=C2=A0 #2: die,=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/=
temp/run.do_configure.635947,=20
> line 246
> | =C2=A0=C2=A0=C2=A0 #3: autotools_do_configure,=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/=
temp/run.do_configure.635947,=20
> line 234
> | =C2=A0=C2=A0=C2=A0 #4: do_configure,=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/=
temp/run.do_configure.635947,=20
> line 150
> | =C2=A0=C2=A0=C2=A0 #5: main,=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/=
temp/run.do_configure.635947,=20
> line 305
> | ERROR: Execution of=20
> '/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0=
/temp/run.do_configure.635947'=20
> failed with exit code 1:
> | automake (GNU automake) 1.16.2
> | Copyright (C) 2020 Free Software Foundation, Inc.
> | License GPLv2+: GNU GPL version 2 or later=20
> <https://gnu.org/licenses/gpl-2.0.html>
> | This is free software: you are free to change and redistribute it.
> | There is NO WARRANTY, to the extent permitted by law.
> |
> | Written by Tom Tromey <tromey@redhat.com>
> |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 and Alexandre Duret-Lutz <ad=
l@gnu.org>.
> | AUTOV is 1.16
> | autoreconf: Entering directory `.'
> | autoreconf: configure.ac: not using Gettext
> | autoreconf: running: aclocal=20
> --system-acdir=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-li=
nux/nut/2.7.4-r0/recipe-sysroot/usr/share/aclocal/=20
> --automake-acdir=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-=
linux/nut/2.7.4-r0/recipe-sysroot-native/usr/share/aclocal-1.16=20
> -I=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/=
nut-2.7.4/m4/=20
> -I=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/=
recipe-sysroot-native/usr/share/aclocal/=20
> --force -I m4
> | autoreconf: configure.ac: tracing
> | autoreconf: running: libtoolize --copy --force
> | libtoolize: putting auxiliary files in AC_CONFIG_AUX_DIR, '.'.
> | libtoolize: copying file './ltmain.sh'
> | libtoolize: putting macros in AC_CONFIG_MACRO_DIRS, 'm4'.
> | libtoolize: copying file 'm4/libtool.m4'
> | libtoolize: copying file 'm4/ltoptions.m4'
> | libtoolize: copying file 'm4/ltsugar.m4'
> | libtoolize: copying file 'm4/ltversion.m4'
> | libtoolize: copying file 'm4/lt~obsolete.m4'
> | autoreconf: running:=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/=
recipe-sysroot-native/usr/bin/autoconf=20
> --include=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/n=
ut/2.7.4-r0/nut-2.7.4/m4/=20
> --include=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/n=
ut/2.7.4-r0/recipe-sysroot-native/usr/share/aclocal/=20
> --force
> | autoreconf: running:=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/=
recipe-sysroot-native/usr/bin/autoheader=20
> --include=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/n=
ut/2.7.4-r0/nut-2.7.4/m4/=20
> --include=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/n=
ut/2.7.4-r0/recipe-sysroot-native/usr/share/aclocal/=20
> --force
> | autoreconf: running: automake --add-missing --copy --force-missing
> | configure.ac:19: installing './compile'
> | configure.ac:15: installing './missing'
> | clients/Makefile.am: installing './depcomp'
> | configure.ac:1268: error: required file=20
> 'scripts/augeas/nutupsconf.aug.in' not found
> | configure.ac:1268: error: required file=20
> 'scripts/devd/nut-usb.conf.in' not found
> | configure.ac:1268: error: required file=20
> 'scripts/udev/nut-usbups.rules.in' not found
> | autoreconf: automake failed with exit status: 1
> | WARNING:=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/=
temp/run.do_configure.635947:301=20
> exit 1 from 'exit 1'
> | WARNING: Backtrace (BB generated script):
> | =C2=A0=C2=A0=C2=A0 #1: bbfatal_log,=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/=
temp/run.do_configure.635947,=20
> line 301
> | =C2=A0=C2=A0=C2=A0 #2: die,=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/=
temp/run.do_configure.635947,=20
> line 246
> | =C2=A0=C2=A0=C2=A0 #3: autotools_do_configure,=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/=
temp/run.do_configure.635947,=20
> line 234
> | =C2=A0=C2=A0=C2=A0 #4: do_configure,=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/=
temp/run.do_configure.635947,=20
> line 150
> | =C2=A0=C2=A0=C2=A0 #5: main,=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/=
temp/run.do_configure.635947,=20
> line 305
> |
> | Backtrace (metadata-relative locations):
> | =C2=A0=C2=A0=C2=A0 #1: bbfatal_log,=20
> /var/home/dingo/overc/poky/meta/classes/logging.bbclass, line 72
> | =C2=A0=C2=A0=C2=A0 #2: die, /var/home/dingo/overc/poky/meta/classes/ba=
se.bbclass,=20
> line 56
> | =C2=A0=C2=A0=C2=A0 #3: autotools_do_configure,=20
> /var/home/dingo/overc/poky/meta/classes/autotools.bbclass, line 232
> | =C2=A0=C2=A0=C2=A0 #4: do_configure, autogenerated, line 2
> ERROR: Task=20
> (/var/home/dingo/overc/meta-ups/recipes-support/nut/nut_2.7.4.bb:do_conf=
igure)=20
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 528 tasks of which 527 didn't need to=20
> be rerun and 1 failed.
>
> Summary: 1 task failed:
> /var/home/dingo/overc/meta-ups/recipes-support/nut/nut_2.7.4.bb:do_confi=
gure=20
>
> Summary: There was 1 WARNING message shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit=20
> code.
>
> ls=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/
> build=C2=A0 license-destdir=C2=A0 nut-2.7.4=C2=A0 recipe-sysroot=20
> recipe-sysroot-native=C2=A0 temp
>
> and ls=20
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/=
nut-2.7.4
> aclocal.m4=C2=A0 autom4te.cache=C2=A0 compile=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0 config.sub=C2=A0=C2=A0=C2=A0 COPYING=20
> docs=C2=A0=C2=A0=C2=A0=C2=A0 INSTALL=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 lib=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ltmain.sh=C2=
=A0=C2=A0=C2=A0 Makefile.am NEWS=C2=A0=C2=A0=C2=A0=C2=A0=20
> server=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TODO
> AUTHORS=C2=A0=C2=A0=C2=A0=C2=A0 clients=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0 conf=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 configure=C2=A0=C2=A0=C2=A0=C2=A0 data drivers=C2=A0=20
> INSTALL.nut=C2=A0 LICENSE-GPL2=C2=A0 m4=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Makefile.in README=C2=A0=C2=A0=20
> test-driver=C2=A0 tools
> autogen.sh=C2=A0 common=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 config.guess=C2=A0 configure.ac=C2=A0 depcomp=20
> include=C2=A0 install-sh=C2=A0=C2=A0 LICENSE-GPL3=C2=A0 MAINTAINERS=C2=
=A0 missing scripts=20
> tests=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 UPGRADING
>
>
>=20

--=20
Maciej Pijanowski
Embedded Systems Engineer
GPG: 9963C36AAC3B2B46
https://3mdeb.com | @3mdeb_com


--------------2D98AB05A8F6DF5E5E0DB1EC
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <p>Hi,<br>
      <br>
      I happen to have this recipe lying around. I have not upstreamed
      it for some<br>
      reason (probably lack of time and I have not been using this
      package at the end,<br>
      so it is not properly tested out). I gave it a try today and at
      least it builds.<br>
      <br>
      Please try it out:
<a class=3D"moz-txt-link-freetext" href=3D"https://github.com/3mdeb/meta-o=
penembedded/commit/e523d0bb4bddf0ef8521804459b265c14100f83c">https://github=
.com/3mdeb/meta-openembedded/commit/e523d0bb4bddf0ef8521804459b265c14100f83=
c</a><br>
      <br>
      If it works for you, please let me know. I would be happy to push
      the patches upstream.<br>
    </p>
    <div class=3D"moz-cite-prefix">On 06.09.2020 15:27, Yocto wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:731bd3a4-f5e5-6b2b-a537-a2bcb87d986a@optimcloud.com">Oka=
y
      heres the bitbake file, the archive manually extracts to, but if i
      run bitbake nut
      <br>
      <br>
      SECTION =3D "console/network"
      <br>
      <br>
      DESCRIPTION =3D "Network UPS Tools is a collection of programs which
      provide a common\
      <br>
      interface for monitoring and administering UPS, PDU and SCD
      hardware.\
      <br>
      It uses a layered approach to connect all of the parts."\
      <br>
      <br>
      LICENSE =3D "GPLv3"
      <br>
      <br>
      SRC_URI =3D
      <a class=3D"moz-txt-link-rfc2396E" href=3D"https://github.com/networ=
kupstools/nut/archive/v2.7.4.tar.gz">"https://github.com/networkupstools/nu=
t/archive/v2.7.4.tar.gz"</a>
      <br>
      <br>
      LIC_FILES_CHKSUM =3D
      <a class=3D"moz-txt-link-rfc2396E" href=3D"file://LICENSE-GPL3;md5=
=3Df27defe1e96c2e1ecd4e0c9be8967949">"file://LICENSE-GPL3;md5=3Df27defe1e9=
6c2e1ecd4e0c9be8967949"</a>
      <br>
      <br>
      SRC_URI[md5sum] =3D "81f5b97ed35fde35d57e1f87f23ad932"
      <br>
      SRC_URI[sha256sum] =3D
      "d580915fdf7090655c1c7c98eb116b61952553f06f0039b1f93c9f5a13e2d36b"
      <br>
      <br>
      S =3D "${WORKDIR}/${PN}-${PV}"
      <br>
      <br>
      #inherit autotools-brokensep
      <br>
      inherit autotools
      <br>
      <br>
      EXTRA_OECONF =3D "--with-usb --with-serial --with-dev"
      <br>
      <br>
      <br>
      running bitbake nut i get this result
      <br>
      <br>
      ERROR: nut-2.7.4-r0 do_configure: autoreconf execution failed.
      <br>
      ERROR: nut-2.7.4-r0 do_configure: Execution of
'/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/t=
emp/run.do_configure.635947'
      failed with exit code 1:
      <br>
      automake (GNU automake) 1.16.2
      <br>
      Copyright (C) 2020 Free Software Foundation, Inc.
      <br>
      License GPLv2+: GNU GPL version 2 or later
      <a class=3D"moz-txt-link-rfc2396E" href=3D"https://gnu.org/licenses/=
gpl-2.0.html">&lt;https://gnu.org/licenses/gpl-2.0.html&gt;</a>
      <br>
      This is free software: you are free to change and redistribute it.
      <br>
      There is NO WARRANTY, to the extent permitted by law.
      <br>
      <br>
      Written by Tom Tromey <a class=3D"moz-txt-link-rfc2396E" href=3D"mai=
lto:tromey@redhat.com">&lt;tromey@redhat.com&gt;</a>
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 and Alexandre Duret-Lutz <a cla=
ss=3D"moz-txt-link-rfc2396E" href=3D"mailto:adl@gnu.org">&lt;adl@gnu.org&gt=
;</a>.
      <br>
      AUTOV is 1.16
      <br>
      autoreconf: Entering directory `.'
      <br>
      autoreconf: configure.ac: not using Gettext
      <br>
      autoreconf: running: aclocal
--system-acdir=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linu=
x/nut/2.7.4-r0/recipe-sysroot/usr/share/aclocal/
--automake-acdir=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-li=
nux/nut/2.7.4-r0/recipe-sysroot-native/usr/share/aclocal-1.16
      -I
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/nu=
t-2.7.4/m4/
      -I
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/re=
cipe-sysroot-native/usr/share/aclocal/
      --force -I m4
      <br>
      autoreconf: configure.ac: tracing
      <br>
      autoreconf: running: libtoolize --copy --force
      <br>
      libtoolize: putting auxiliary files in AC_CONFIG_AUX_DIR, '.'.
      <br>
      libtoolize: copying file './ltmain.sh'
      <br>
      libtoolize: putting macros in AC_CONFIG_MACRO_DIRS, 'm4'.
      <br>
      libtoolize: copying file 'm4/libtool.m4'
      <br>
      libtoolize: copying file 'm4/ltoptions.m4'
      <br>
      libtoolize: copying file 'm4/ltsugar.m4'
      <br>
      libtoolize: copying file 'm4/ltversion.m4'
      <br>
      libtoolize: copying file 'm4/lt~obsolete.m4'
      <br>
      autoreconf: running:
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/re=
cipe-sysroot-native/usr/bin/autoconf
--include=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut=
/2.7.4-r0/nut-2.7.4/m4/
--include=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut=
/2.7.4-r0/recipe-sysroot-native/usr/share/aclocal/
      --force
      <br>
      autoreconf: running:
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/re=
cipe-sysroot-native/usr/bin/autoheader
--include=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut=
/2.7.4-r0/nut-2.7.4/m4/
--include=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut=
/2.7.4-r0/recipe-sysroot-native/usr/share/aclocal/
      --force
      <br>
      autoreconf: running: automake --add-missing --copy --force-missing
      <br>
      configure.ac:19: installing './compile'
      <br>
      configure.ac:15: installing './missing'
      <br>
      clients/Makefile.am: installing './depcomp'
      <br>
      configure.ac:1268: error: required file
      'scripts/augeas/nutupsconf.aug.in' not found
      <br>
      configure.ac:1268: error: required file
      'scripts/devd/nut-usb.conf.in' not found
      <br>
      configure.ac:1268: error: required file
      'scripts/udev/nut-usbups.rules.in' not found
      <br>
      autoreconf: automake failed with exit status: 1
      <br>
      WARNING:
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/te=
mp/run.do_configure.635947:301
      exit 1 from 'exit 1'
      <br>
      WARNING: Backtrace (BB generated script):
      <br>
      =C2=A0=C2=A0=C2=A0 #1: bbfatal_log,
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/te=
mp/run.do_configure.635947,
      line 301
      <br>
      =C2=A0=C2=A0=C2=A0 #2: die,
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/te=
mp/run.do_configure.635947,
      line 246
      <br>
      =C2=A0=C2=A0=C2=A0 #3: autotools_do_configure,
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/te=
mp/run.do_configure.635947,
      line 234
      <br>
      =C2=A0=C2=A0=C2=A0 #4: do_configure,
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/te=
mp/run.do_configure.635947,
      line 150
      <br>
      =C2=A0=C2=A0=C2=A0 #5: main,
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/te=
mp/run.do_configure.635947,
      line 305
      <br>
      <br>
      Backtrace (metadata-relative locations):
      <br>
      =C2=A0=C2=A0=C2=A0 #1: bbfatal_log,
      /var/home/dingo/overc/poky/meta/classes/logging.bbclass, line 72
      <br>
      =C2=A0=C2=A0=C2=A0 #2: die, /var/home/dingo/overc/poky/meta/classes/=
base.bbclass,
      line 56
      <br>
      =C2=A0=C2=A0=C2=A0 #3: autotools_do_configure,
      /var/home/dingo/overc/poky/meta/classes/autotools.bbclass, line
      232
      <br>
      =C2=A0=C2=A0=C2=A0 #4: do_configure, autogenerated, line 2
      <br>
      ERROR: Logfile of failure stored in:
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/te=
mp/log.do_configure.635947<br>
      Log data follows:
      <br>
      | DEBUG: Executing shell function autotools_preconfigure
      <br>
      | DEBUG: Shell function autotools_preconfigure finished
      <br>
      | DEBUG: Executing python function autotools_aclocals
      <br>
      | DEBUG: SITE files ['endian-little', 'common-linux',
      'common-glibc', 'bit-64', 'x86_64-linux', 'common']
      <br>
      | DEBUG: Python function autotools_aclocals finished
      <br>
      | DEBUG: Executing shell function do_configure
      <br>
      | automake (GNU automake) 1.16.2
      <br>
      | Copyright (C) 2020 Free Software Foundation, Inc.
      <br>
      | License GPLv2+: GNU GPL version 2 or later
      <a class=3D"moz-txt-link-rfc2396E" href=3D"https://gnu.org/licenses/=
gpl-2.0.html">&lt;https://gnu.org/licenses/gpl-2.0.html&gt;</a>
      <br>
      | This is free software: you are free to change and redistribute
      it.
      <br>
      | There is NO WARRANTY, to the extent permitted by law.
      <br>
      |
      <br>
      | Written by Tom Tromey <a class=3D"moz-txt-link-rfc2396E" href=3D"m=
ailto:tromey@redhat.com">&lt;tromey@redhat.com&gt;</a>
      <br>
      |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 and Alexandre Duret-Lutz=
 <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:adl@gnu.org">&lt;adl@gnu=
.org&gt;</a>.
      <br>
      | AUTOV is 1.16
      <br>
      | NOTE: Executing ACLOCAL=3D"aclocal
--system-acdir=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linu=
x/nut/2.7.4-r0/recipe-sysroot/usr/share/aclocal/
--automake-acdir=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-li=
nux/nut/2.7.4-r0/recipe-sysroot-native/usr/share/aclocal-1.16"
      autoreconf -Wcross --verbose --install --force --exclude=3Dautopoint
      -I
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/nu=
t-2.7.4/m4/
      -I
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/re=
cipe-sysroot-native/usr/share/aclocal/<br>
      | autoreconf: Entering directory `.'
      <br>
      | autoreconf: configure.ac: not using Gettext
      <br>
      | autoreconf: running: aclocal
--system-acdir=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linu=
x/nut/2.7.4-r0/recipe-sysroot/usr/share/aclocal/
--automake-acdir=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-li=
nux/nut/2.7.4-r0/recipe-sysroot-native/usr/share/aclocal-1.16
      -I
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/nu=
t-2.7.4/m4/
      -I
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/re=
cipe-sysroot-native/usr/share/aclocal/
      --force -I m4
      <br>
      | autoreconf: configure.ac: tracing
      <br>
      | autoreconf: running: libtoolize --copy --force
      <br>
      | libtoolize: putting auxiliary files in AC_CONFIG_AUX_DIR, '.'.
      <br>
      | libtoolize: copying file './ltmain.sh'
      <br>
      | libtoolize: putting macros in AC_CONFIG_MACRO_DIRS, 'm4'.
      <br>
      | libtoolize: copying file 'm4/libtool.m4'
      <br>
      | libtoolize: copying file 'm4/ltoptions.m4'
      <br>
      | libtoolize: copying file 'm4/ltsugar.m4'
      <br>
      | libtoolize: copying file 'm4/ltversion.m4'
      <br>
      | libtoolize: copying file 'm4/lt~obsolete.m4'
      <br>
      | autoreconf: running:
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/re=
cipe-sysroot-native/usr/bin/autoconf
--include=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut=
/2.7.4-r0/nut-2.7.4/m4/
--include=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut=
/2.7.4-r0/recipe-sysroot-native/usr/share/aclocal/
      --force
      <br>
      | autoreconf: running:
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/re=
cipe-sysroot-native/usr/bin/autoheader
--include=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut=
/2.7.4-r0/nut-2.7.4/m4/
--include=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut=
/2.7.4-r0/recipe-sysroot-native/usr/share/aclocal/
      --force
      <br>
      | autoreconf: running: automake --add-missing --copy
      --force-missing
      <br>
      | configure.ac:19: installing './compile'
      <br>
      | configure.ac:15: installing './missing'
      <br>
      | clients/Makefile.am: installing './depcomp'
      <br>
      | configure.ac:1268: error: required file
      'scripts/augeas/nutupsconf.aug.in' not found
      <br>
      | configure.ac:1268: error: required file
      'scripts/devd/nut-usb.conf.in' not found
      <br>
      | configure.ac:1268: error: required file
      'scripts/udev/nut-usbups.rules.in' not found
      <br>
      | autoreconf: automake failed with exit status: 1
      <br>
      | ERROR: autoreconf execution failed.
      <br>
      | WARNING:
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/te=
mp/run.do_configure.635947:301
      exit 1 from 'exit 1'
      <br>
      | WARNING: Backtrace (BB generated script):
      <br>
      | =C2=A0=C2=A0=C2=A0 #1: bbfatal_log,
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/te=
mp/run.do_configure.635947,
      line 301
      <br>
      | =C2=A0=C2=A0=C2=A0 #2: die,
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/te=
mp/run.do_configure.635947,
      line 246
      <br>
      | =C2=A0=C2=A0=C2=A0 #3: autotools_do_configure,
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/te=
mp/run.do_configure.635947,
      line 234
      <br>
      | =C2=A0=C2=A0=C2=A0 #4: do_configure,
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/te=
mp/run.do_configure.635947,
      line 150
      <br>
      | =C2=A0=C2=A0=C2=A0 #5: main,
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/te=
mp/run.do_configure.635947,
      line 305
      <br>
      | ERROR: Execution of
'/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/t=
emp/run.do_configure.635947'
      failed with exit code 1:
      <br>
      | automake (GNU automake) 1.16.2
      <br>
      | Copyright (C) 2020 Free Software Foundation, Inc.
      <br>
      | License GPLv2+: GNU GPL version 2 or later
      <a class=3D"moz-txt-link-rfc2396E" href=3D"https://gnu.org/licenses/=
gpl-2.0.html">&lt;https://gnu.org/licenses/gpl-2.0.html&gt;</a>
      <br>
      | This is free software: you are free to change and redistribute
      it.
      <br>
      | There is NO WARRANTY, to the extent permitted by law.
      <br>
      |
      <br>
      | Written by Tom Tromey <a class=3D"moz-txt-link-rfc2396E" href=3D"m=
ailto:tromey@redhat.com">&lt;tromey@redhat.com&gt;</a>
      <br>
      |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 and Alexandre Duret-Lutz=
 <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:adl@gnu.org">&lt;adl@gnu=
.org&gt;</a>.
      <br>
      | AUTOV is 1.16
      <br>
      | autoreconf: Entering directory `.'
      <br>
      | autoreconf: configure.ac: not using Gettext
      <br>
      | autoreconf: running: aclocal
--system-acdir=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linu=
x/nut/2.7.4-r0/recipe-sysroot/usr/share/aclocal/
--automake-acdir=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-li=
nux/nut/2.7.4-r0/recipe-sysroot-native/usr/share/aclocal-1.16
      -I
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/nu=
t-2.7.4/m4/
      -I
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/re=
cipe-sysroot-native/usr/share/aclocal/
      --force -I m4
      <br>
      | autoreconf: configure.ac: tracing
      <br>
      | autoreconf: running: libtoolize --copy --force
      <br>
      | libtoolize: putting auxiliary files in AC_CONFIG_AUX_DIR, '.'.
      <br>
      | libtoolize: copying file './ltmain.sh'
      <br>
      | libtoolize: putting macros in AC_CONFIG_MACRO_DIRS, 'm4'.
      <br>
      | libtoolize: copying file 'm4/libtool.m4'
      <br>
      | libtoolize: copying file 'm4/ltoptions.m4'
      <br>
      | libtoolize: copying file 'm4/ltsugar.m4'
      <br>
      | libtoolize: copying file 'm4/ltversion.m4'
      <br>
      | libtoolize: copying file 'm4/lt~obsolete.m4'
      <br>
      | autoreconf: running:
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/re=
cipe-sysroot-native/usr/bin/autoconf
--include=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut=
/2.7.4-r0/nut-2.7.4/m4/
--include=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut=
/2.7.4-r0/recipe-sysroot-native/usr/share/aclocal/
      --force
      <br>
      | autoreconf: running:
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/re=
cipe-sysroot-native/usr/bin/autoheader
--include=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut=
/2.7.4-r0/nut-2.7.4/m4/
--include=3D/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut=
/2.7.4-r0/recipe-sysroot-native/usr/share/aclocal/
      --force
      <br>
      | autoreconf: running: automake --add-missing --copy
      --force-missing
      <br>
      | configure.ac:19: installing './compile'
      <br>
      | configure.ac:15: installing './missing'
      <br>
      | clients/Makefile.am: installing './depcomp'
      <br>
      | configure.ac:1268: error: required file
      'scripts/augeas/nutupsconf.aug.in' not found
      <br>
      | configure.ac:1268: error: required file
      'scripts/devd/nut-usb.conf.in' not found
      <br>
      | configure.ac:1268: error: required file
      'scripts/udev/nut-usbups.rules.in' not found
      <br>
      | autoreconf: automake failed with exit status: 1
      <br>
      | WARNING:
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/te=
mp/run.do_configure.635947:301
      exit 1 from 'exit 1'
      <br>
      | WARNING: Backtrace (BB generated script):
      <br>
      | =C2=A0=C2=A0=C2=A0 #1: bbfatal_log,
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/te=
mp/run.do_configure.635947,
      line 301
      <br>
      | =C2=A0=C2=A0=C2=A0 #2: die,
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/te=
mp/run.do_configure.635947,
      line 246
      <br>
      | =C2=A0=C2=A0=C2=A0 #3: autotools_do_configure,
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/te=
mp/run.do_configure.635947,
      line 234
      <br>
      | =C2=A0=C2=A0=C2=A0 #4: do_configure,
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/te=
mp/run.do_configure.635947,
      line 150
      <br>
      | =C2=A0=C2=A0=C2=A0 #5: main,
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/te=
mp/run.do_configure.635947,
      line 305
      <br>
      |
      <br>
      | Backtrace (metadata-relative locations):
      <br>
      | =C2=A0=C2=A0=C2=A0 #1: bbfatal_log,
      /var/home/dingo/overc/poky/meta/classes/logging.bbclass, line 72
      <br>
      | =C2=A0=C2=A0=C2=A0 #2: die,
      /var/home/dingo/overc/poky/meta/classes/base.bbclass, line 56
      <br>
      | =C2=A0=C2=A0=C2=A0 #3: autotools_do_configure,
      /var/home/dingo/overc/poky/meta/classes/autotools.bbclass, line
      232
      <br>
      | =C2=A0=C2=A0=C2=A0 #4: do_configure, autogenerated, line 2
      <br>
      ERROR: Task
(/var/home/dingo/overc/meta-ups/recipes-support/nut/nut_2.7.4.bb:do_config=
ure)
      failed with exit code '1'
      <br>
      NOTE: Tasks Summary: Attempted 528 tasks of which 527 didn't need
      to be rerun and 1 failed.
      <br>
      <br>
      Summary: 1 task failed:
      <br>
/var/home/dingo/overc/meta-ups/recipes-support/nut/nut_2.7.4.bb:do_configu=
re
      <br>
      Summary: There was 1 WARNING message shown.
      <br>
      Summary: There were 2 ERROR messages shown, returning a non-zero
      exit code.
      <br>
      <br>
      ls
      /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4=
-r0/
      <br>
      build=C2=A0 license-destdir=C2=A0 nut-2.7.4=C2=A0 recipe-sysroot
      recipe-sysroot-native=C2=A0 temp
      <br>
      <br>
      and ls
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/nu=
t-2.7.4<br>
      aclocal.m4=C2=A0 autom4te.cache=C2=A0 compile=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 config.sub=C2=A0=C2=A0=C2=A0 COPYING
      docs=C2=A0=C2=A0=C2=A0=C2=A0 INSTALL=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 l=
ib=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ltmain.sh=C2=
=
=A0=C2=A0=C2=A0 Makefile.am
      NEWS=C2=A0=C2=A0=C2=A0=C2=A0 server=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0 TODO
      <br>
      AUTHORS=C2=A0=C2=A0=C2=A0=C2=A0 clients=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 conf=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0 configure=C2=A0=C2=A0=C2=A0=C2=A0 data
      drivers=C2=A0 INSTALL.nut=C2=A0 LICENSE-GPL2=C2=A0 m4=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Makefile.in
      README=C2=A0=C2=A0 test-driver=C2=A0 tools
      <br>
      autogen.sh=C2=A0 common=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0 config.guess=C2=A0 configure.ac=C2=A0 depcomp
      include=C2=A0 install-sh=C2=A0=C2=A0 LICENSE-GPL3=C2=A0 MAINTAINERS=
=C2=A0 missing scripts=C2=A0
      tests=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 UPGRADING
      <br>
      <br>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Maciej Pijanowski
Embedded Systems Engineer
GPG: 9963C36AAC3B2B46
<a class=3D"moz-txt-link-freetext" href=3D"https://3mdeb.com">https://3mde=
b.com</a> | @3mdeb_com</pre>
  </body>
</html>

--------------2D98AB05A8F6DF5E5E0DB1EC--
