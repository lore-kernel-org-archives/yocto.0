Return-Path: <francisco.torres@ttcontrol.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13BE6E00815; Thu, 19 Feb 2015 03:17:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [188.20.77.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.tttech.com (mail.tttech.com [188.20.77.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F13BFE0034A
	for <yocto@yoctoproject.org>; Thu, 19 Feb 2015 03:17:08 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.tttech.com (Postfix) with ESMTP id DF5923F429
	for <yocto@yoctoproject.org>; Thu, 19 Feb 2015 12:17:06 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at tttech.com
Received: from mail.tttech.com ([127.0.0.1])
	by localhost (tttmaildmz.vie.at.tttech.ttt [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id aFDKVpveLTNV for <yocto@yoctoproject.org>;
	Thu, 19 Feb 2015 12:17:06 +0100 (CET)
Received: from TTTEX02.ds1.internal (unknown [10.100.10.136])
	by mail.tttech.com (Postfix) with ESMTPS id C8DE03F427
	for <yocto@yoctoproject.org>; Thu, 19 Feb 2015 12:17:06 +0100 (CET)
Received: from TTTEX02.ds1.internal (10.100.10.136) by TTTEX02.ds1.internal
	(10.100.10.136) with Microsoft SMTP Server (TLS) id 15.0.1044.25;
	Thu, 19 Feb 2015 12:17:05 +0100
Received: from TTTEX02.ds1.internal ([fe80::fd88:4379:bed4:8d08]) by
	TTTEX02.ds1.internal ([fe80::fd88:4379:bed4:8d08%18]) with mapi id
	15.00.1044.021; Thu, 19 Feb 2015 12:17:05 +0100
From: Francisco Torres <francisco.torres@ttcontrol.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: usage of mingw as external toolchain
Thread-Index: AdBMME6SE8vf4vLOSfqlsPmNAUiYCAABR1zQ
Date: Thu, 19 Feb 2015 11:17:05 +0000
Message-ID: <5f157473dedd4514823df75a34619bac@TTTEX02.ds1.internal>
References: <c39bd7040ead4a968d842bd800023b9c@TTTEX02.ds1.internal>
In-Reply-To: <c39bd7040ead4a968d842bd800023b9c@TTTEX02.ds1.internal>
Accept-Language: de-AT, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.100.12.81]
MIME-Version: 1.0
Subject: Re: usage of mingw as external toolchain
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
X-List-Received-Date: Thu, 19 Feb 2015 11:17:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I need to use mingw32 as external toolchain with yocto.

I have successfully built a helloworld recipe (as explained in http://www.y=
octoproject.org/docs/1.0/poky-ref-manual/poky-ref-manual.html#usingpoky-ext=
end-addpkg, 3.1.1. Single .c File Package (Hello World!)) and it is success=
fully generating a .exe that I can run on Windows.

The problem is that when I try to compile an autotooled package (as explain=
ed in same page in 3.1.2. Autotooled Package), there is a compilation probl=
em.
Please I need help to solve this problem.

I am adding in conf/local.conf

EXTERNAL_TOOLCHAIN =3D "/path/to/your/mingw32-install"


The log is:

WARNING: Could not copy license file COPYING: [Errno 2] No such file or dir=
ectory: '/data/fto/build_eldk553_externaltoolchain/tmp/work/x86_64-w64-ming=
w32/hella1/2.2-r0/hella1-2.2/COPYING'
ERROR: Function failed: do_configure (log file is located at /data/fto/buil=
d_eldk553_externaltoolchain/tmp/work/x86_64-w64-mingw32/eglibc/2.18-r0/temp=
/log.do_configure.18393)
ERROR: Logfile of failure stored in: /data/fto/build_eldk553_externaltoolch=
ain/tmp/work/x86_64-w64-mingw32/eglibc/2.18-r0/temp/log.do_configure.18393
Log data follows:
| DEBUG: Executing python function sysroot_cleansstate
| DEBUG: Python function sysroot_cleansstate finished
| DEBUG: SITE files ['endian-little', 'bit-32', 'x86_64-w64-mingw32', 'comm=
on']
| DEBUG: Executing shell function autotools_preconfigure
| DEBUG: Shell function autotools_preconfigure finished
| DEBUG: Executing shell function do_configure
| aclocal.m4:5: error: Exactly version 2.68 of Autoconf is required but you=
 have 2.69
| aclocal.m4:5: the top level
| autom4te: m4 failed with exit status: 63
| NOTE: Running /data/fto/build_eldk553_externaltoolchain/tmp/work/x86_64-w=
64-mingw32/eglibc/2.18-r0/eglibc-2.18/libc/configure  --build=3Dx86_64-linu=
x             --host=3Dx86_64-w64-mingw32   --target=3Dx86_64-w64-mingw32  =
            --prefix=3D/usr                   --exec_prefix=3D/usr         =
     --bindir=3D/usr/bin               --sbindir=3D/usr/sbin             --=
libexecdir=3D/usr/lib/eglibc                 --datadir=3D/usr/share        =
    --sysconfdir=3D/etc               --sharedstatedir=3D/com              =
     --localstatedir=3D/var            --libdir=3D/usr/lib           --incl=
udedir=3D/usr/include                --oldincludedir=3D/usr/include        =
    --infodir=3D/usr/share/info               --mandir=3D/usr/share/man    =
             --disable-silent-rules      --disable-dependency-tracking     =
       --with-libtool-sysroot=3D/data/fto/build_eldk553_externaltoolchain/t=
mp/sysroots/windows --enable-kernel=3D2.6.16                 --without-cvs =
--disable-profile                 --disable-debug --without-gd             =
    --enable-clocale=3Dgnu                 --enable-add-ons                =
 --with-headers=3D/data/fto/build_eldk553_externaltoolchain/tmp/sysroots/wi=
ndows/usr/include                 --without-selinux                 --enabl=
e-obsolete-rpc                 --with-kconfig=3D/data/fto/build_eldk553_ext=
ernaltoolchain/tmp/sysroots/x86_64-linux/usr/bin
| checking build system type... x86_64-pc-linux-gnu
| checking host system type... x86_64-w64-mingw32
| checking for x86_64-w64-mingw32-gcc... x86_64-w64-mingw32-gcc  -m64 --sys=
root=3D/data/fto/build_eldk553_externaltoolchain/tmp/sysroots/windows-tcboo=
tstrap
| checking for suffix of object files... configure: error: in `/data/fto/bu=
ild_eldk553_externaltoolchain/tmp/work/x86_64-w64-mingw32/eglibc/2.18-r0/bu=
ild-x86_64-w64-mingw32':
| configure: error: cannot compute suffix of object files: cannot compile
| See `config.log' for more details
| Configure failed. The contents of all config.log files follows to aid deb=
ugging
| ERROR: oe_runconf failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_configure (log file is located at /data/fto/bu=
ild_eldk553_externaltoolchain/tmp/work/x86_64-w64-mingw32/eglibc/2.18-r0/te=
mp/log.do_configure.18393)
ERROR: Task 348 (/data/fto/eldk553/meta/recipes-core/eglibc/eglibc_2.18.bb,=
 do_configure) failed with exit code '1'
ERROR: Function failed: do_configure (log file is located at /data/fto/buil=
d_eldk553_externaltoolchain/tmp/work/x86_64-w64-mingw32/expat/2.1.0-r0/temp=
/log.do_configure.18397)
ERROR: Logfile of failure stored in: /data/fto/build_eldk553_externaltoolch=
ain/tmp/work/x86_64-w64-mingw32/expat/2.1.0-r0/temp/log.do_configure.18397
Log data follows:
| DEBUG: Executing python function sysroot_cleansstate
| DEBUG: Python function sysroot_cleansstate finished
| DEBUG: SITE files ['endian-little', 'bit-32', 'x86_64-w64-mingw32', 'comm=
on']
| DEBUG: Executing shell function autotools_preconfigure
| DEBUG: Shell function autotools_preconfigure finished
| DEBUG: Executing shell function do_configure
| automake (GNU automake) 1.12.6
| Copyright (C) 2012 Free Software Foundation, Inc.
| License GPLv2+: GNU GPL version 2 or later <http://gnu.org/licenses/gpl-2=
.0.html>
| This is free software: you are free to change and redistribute it.
| There is NO WARRANTY, to the extent permitted by law.
|
| Written by Tom Tromey <tromey@redhat.com>
|        and Alexandre Duret-Lutz <adl@gnu.org>.
| AUTOV is 1.12
| NOTE: Executing ACLOCAL=3D"aclocal --system-acdir=3D/data/fto/build_eldk5=
53_externaltoolchain/tmp/work/x86_64-w64-mingw32/expat/2.1.0-r0/build/acloc=
al-copy/ --automake-acdir=3D/data/fto/build_eldk553_externaltoolchain/tmp/s=
ysroots/x86_64-linux/usr/share/aclocal-1.12" autoreconf --verbose --install=
 --force --exclude=3Dautopoint -I /data/fto/build_eldk553_externaltoolchain=
/tmp/work/x86_64-w64-mingw32/expat/2.1.0-r0/expat-2.1.0/conftools/ -I /data=
/fto/build_eldk553_externaltoolchain/tmp/work/x86_64-w64-mingw32/expat/2.1.=
0-r0/expat-2.1.0/m4/
| autoreconf: Entering directory `.'
| autoreconf: configure.in: not using Gettext
| autoreconf: running: aclocal --system-acdir=3D/data/fto/build_eldk553_ext=
ernaltoolchain/tmp/work/x86_64-w64-mingw32/expat/2.1.0-r0/build/aclocal-cop=
y/ --automake-acdir=3D/data/fto/build_eldk553_externaltoolchain/tmp/sysroot=
s/x86_64-linux/usr/share/aclocal-1.12 -I /data/fto/build_eldk553_externalto=
olchain/tmp/work/x86_64-w64-mingw32/expat/2.1.0-r0/expat-2.1.0/conftools/ -=
I /data/fto/build_eldk553_externaltoolchain/tmp/work/x86_64-w64-mingw32/exp=
at/2.1.0-r0/expat-2.1.0/m4/ -I /data/fto/build_eldk553_externaltoolchain/tm=
p/work/x86_64-w64-mingw32/expat/2.1.0-r0/expat-2.1.0/conftools/ -I /data/ft=
o/build_eldk553_externaltoolchain/tmp/work/x86_64-w64-mingw32/expat/2.1.0-r=
0/expat-2.1.0/m4/ --force
| aclocal: warning: autoconf input should be named 'configure.ac', not 'con=
figure.in'
| autoreconf: configure.in: tracing
| autoreconf: running: libtoolize --copy --force
| libtoolize: putting auxiliary files in AC_CONFIG_AUX_DIR, `conftools'.
| libtoolize: copying file `conftools/ltmain.sh'
| libtoolize: putting macros in AC_CONFIG_MACRO_DIR, `m4'.
| libtoolize: copying file `m4/libtool.m4'
| libtoolize: copying file `m4/ltoptions.m4'
| libtoolize: copying file `m4/ltsugar.m4'
| libtoolize: copying file `m4/ltversion.m4'
| libtoolize: copying file `m4/lt~obsolete.m4'
| libtoolize: Consider adding `-I m4' to ACLOCAL_AMFLAGS in Makefile.am.
| aclocal: warning: autoconf input should be named 'configure.ac', not 'con=
figure.in'
| autoreconf: running: /data/fto/build_eldk553_externaltoolchain/tmp/sysroo=
ts/x86_64-linux/usr/bin/autoconf --include=3D/data/fto/build_eldk553_extern=
altoolchain/tmp/work/x86_64-w64-mingw32/expat/2.1.0-r0/expat-2.1.0/conftool=
s/ --include=3D/data/fto/build_eldk553_externaltoolchain/tmp/work/x86_64-w6=
4-mingw32/expat/2.1.0-r0/expat-2.1.0/m4/ --force
| autoreconf: running: /data/fto/build_eldk553_externaltoolchain/tmp/sysroo=
ts/x86_64-linux/usr/bin/autoheader --include=3D/data/fto/build_eldk553_exte=
rnaltoolchain/tmp/work/x86_64-w64-mingw32/expat/2.1.0-r0/expat-2.1.0/confto=
ols/ --include=3D/data/fto/build_eldk553_externaltoolchain/tmp/work/x86_64-=
w64-mingw32/expat/2.1.0-r0/expat-2.1.0/m4/ --force
| autoreconf: configure.in: not using Automake
| autoreconf: running: gnu-configize
| autoreconf: Leaving directory `.'
| NOTE: Running /data/fto/build_eldk553_externaltoolchain/tmp/work/x86_64-w=
64-mingw32/expat/2.1.0-r0/expat-2.1.0/configure  --build=3Dx86_64-linux    =
              --host=3Dx86_64-w64-mingw32   --target=3Dx86_64-w64-mingw32  =
            --prefix=3D/usr                   --exec_prefix=3D/usr         =
     --bindir=3D/usr/bin               --sbindir=3D/usr/sbin             --=
libexecdir=3D/usr/lib/expat                  --datadir=3D/usr/share        =
    --sysconfdir=3D/etc               --sharedstatedir=3D/com              =
     --localstatedir=3D/var            --libdir=3D/usr/lib           --incl=
udedir=3D/usr/include                --oldincludedir=3D/usr/include        =
    --infodir=3D/usr/share/info               --mandir=3D/usr/share/man    =
             --disable-silent-rules      --disable-dependency-tracking     =
       --with-libtool-sysroot=3D/data/fto/build_eldk553_externaltoolchain/t=
mp/sysroots/windows
| configure: WARNING: unrecognized options: --disable-silent-rules, --disab=
le-dependency-tracking
| configure: loading site script /data/fto/eldk553/meta/site/endian-little
| configure: loading site script /data/fto/eldk553/meta/site/common
| checking build system type... x86_64-pc-linux-gnu
| checking host system type... x86_64-w64-mingw32
| checking for x86_64-w64-mingw32-as... x86_64-w64-mingw32-as
| checking for x86_64-w64-mingw32-dlltool... x86_64-w64-mingw32-dlltool
| checking for x86_64-w64-mingw32-objdump... x86_64-w64-mingw32-objdump
| checking how to print strings... printf
| checking for x86_64-w64-mingw32-gcc... x86_64-w64-mingw32-gcc  -m64 --sys=
root=3D/data/fto/build_eldk553_externaltoolchain/tmp/sysroots/windows
| checking whether the C compiler works... no
| configure: error: in `/data/fto/build_eldk553_externaltoolchain/tmp/work/=
x86_64-w64-mingw32/expat/2.1.0-r0/build':
| configure: error: C compiler cannot create executables
| See `config.log' for more details
| Configure failed. The contents of all config.log files follows to aid deb=
ugging
| ERROR: oe_runconf failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_configure (log file is located at /data/fto/bu=
ild_eldk553_externaltoolchain/tmp/work/x86_64-w64-mingw32/expat/2.1.0-r0/te=
mp/log.do_configure.18397)
ERROR: Task 360 (/data/fto/eldk553/meta/recipes-core/expat/expat_2.1.0.bb, =
do_configure) failed with exit code '1'
NOTE: Tasks Summary: Attempted 447 tasks of which 399 didn't need to be rer=
un and 2 failed.
Waiting for 0 running tasks to finish:

Summary: 2 tasks failed:
  /data/fto/eldk553/meta/recipes-core/eglibc/eglibc_2.18.bb, do_configure
  /data/fto/eldk553/meta/recipes-core/expat/expat_2.1.0.bb, do_configure
Summary: There were 2 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
torres@ttc-visionbuilder:/data/fto/build_eldk553_externaltoolchain$
CONFIDENTIALITY: The contents of this e-mail are confidential and intended =
only for the above addressee(s). If you are not the intended recipient, or =
the person responsible for delivering it to the intended recipient, copying=
 or delivering it to anyone else or using it in any unauthorized manner is =
prohibited and may be unlawful. If you receive this e-mail by mistake, plea=
se notify the sender and the systems administrator at straymail@tttech.com =
immediately.

