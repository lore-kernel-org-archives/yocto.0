Return-Path: <kaiu@gmx.de>
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCFC2E00A1D
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 07:09:03 -0700 (PDT)
Received: from mail-vc0-f178.google.com ([209.85.220.178]) by mail.gmx.com
	(mrgmx002) with ESMTPSA (Nemesis) id 0M2ts6-1Wsc1q1gk2-00sihH for
	<yocto@yoctoproject.org>; Tue, 22 Apr 2014 16:09:00 +0200
Received: by mail-vc0-f178.google.com with SMTP id hu19so727021vcb.37
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 07:08:59 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.52.108.228 with SMTP id hn4mr619099vdb.43.1398175739117;
	Tue, 22 Apr 2014 07:08:59 -0700 (PDT)
Received: by 10.58.54.67 with HTTP; Tue, 22 Apr 2014 07:08:59 -0700 (PDT)
Date: Tue, 22 Apr 2014 16:08:59 +0200
Message-ID: <CAAKMwiouz+=PX1A=Z8x61C7VcOaVQCCVf8P_kvY9HEaK-PHDPQ@mail.gmail.com>
From: Kai Ulrich <kaiu@gmx.de>
To: yocto@yoctoproject.org
X-Provags-ID: V03:K0:HZTp3tTxhwdjCOzXjizwU2EQlIiYMI7TS6T3DFUlpweD/y2mYtO
	CVQMdk+VTm0031B/4J5J5TQiKbBCzDJc8yRnffoK/zoy8hRX+tnW6IA5eHKAJfZ2RLUj/N5
	kkK9D1W+AX/UJpm2+irbXL+YBF/KQdHd6r9yKgtVhTIKknaxlRthAuKSTnWG8Z/ypJPeOd0
	KeiMpmlcH2HCO1iBoi+zQ==
Subject: eglibc-2.18 is not compiling
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: kaiu@gmx.de
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 22 Apr 2014 14:09:05 -0000
Content-Type: multipart/alternative; boundary=bcaec548a8e943896004f7a2284b

--bcaec548a8e943896004f7a2284b
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I was porting yocto to gentoo. It works quite nice. see
https://wiki.gentoo.org/wiki/Yocto
I do have problems with some custom metas and witheglibc/2.18-r0/eglibc-2.1=
8
.
* meta-ti and yocto on HEAD
* beagle-xm-ml and yocto dora
https://github.com/RobertBerger/meta-mainline/tree/dora-training-v3.13.x/be=
agle-xm-ml

any ideas?

the log says:


DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'common-linux',
'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
DEBUG: Executing shell function do_compile
NOTE: make PARALLELMFLAGS=3D-j 8 SHELL=3D/bin/bash
make -r PARALLELMFLAGS=3D"-j 8" -C
/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7=
a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc
objdir=3D`pwd` all
make[1]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc'

make -j 8 subdir=3Dcsu -C csu ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/csu'

make[2]: Nothing to be done for `subdir_lib'.
make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/csu'

make -j 8 subdir=3Diconv -C iconv ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/iconv'

make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/iconv'

make -j 8 subdir=3Dlocale -C locale ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/locale'

make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/locale'

make -j 8 subdir=3Dlocaledata -C localedata ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/localedata'

make[2]: Nothing to be done for `subdir_lib'.
make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/localedata'

make -j 8 subdir=3Diconvdata -C iconvdata ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/iconvdata'

make[2]: Nothing to be done for `subdir_lib'.
make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/iconvdata'

make -j 8 subdir=3Dassert -C assert ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/assert'

make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/assert'

make -j 8 subdir=3Dctype -C ctype ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/ctype'

make[2]: Nothing to be done for `subdir_lib'.
make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/ctype'

make -j 8 subdir=3Dintl -C intl ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/intl'

make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/intl'

make -j 8 subdir=3Dcatgets -C catgets ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/catgets'

make[2]: Nothing to be done for `subdir_lib'.
make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/catgets'

make -j 8 subdir=3Dmath -C math ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/math'

make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/math'

make -j 8 subdir=3Dsetjmp -C setjmp ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/setjmp'

make[2]: Nothing to be done for `subdir_lib'.
make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/setjmp'

make -j 8 subdir=3Dsignal -C signal ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/signal'

make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/signal'

make -j 8 subdir=3Dstdlib -C stdlib ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/stdlib'

make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/stdlib'

make -j 8 subdir=3Dstdio-common -C stdio-common ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/stdio-common=
'

make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/stdio-common=
'

make -j 8 subdir=3Dlibio -C libio ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/libio'

make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/libio'

make -j 8 subdir=3Ddlfcn -C dlfcn ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/dlfcn'

make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/dlfcn'

make -j 8 subdir=3Dmalloc -C malloc ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/malloc'

make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/malloc'

make -j 8 subdir=3Dstring -C string ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/string'

make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/string'

make -j 8 subdir=3Dwcsmbs -C wcsmbs ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/wcsmbs'

make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/wcsmbs'

make -j 8 subdir=3Dtimezone -C timezone ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/timezone'

make[2]: Nothing to be done for `subdir_lib'.
make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/timezone'

make -j 8 subdir=3Dtime -C time ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/time'

make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/time'

make -j 8 subdir=3Ddirent -C dirent ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/dirent'

make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/dirent'

make -j 8 subdir=3Dgrp -C grp ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/grp'

make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/grp'

make -j 8 subdir=3Dpwd -C pwd ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/pwd'

make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/pwd'

make -j 8 subdir=3Dposix -C posix ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/posix'

make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/posix'

make -j 8 subdir=3Dio -C io ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/io'

make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/io'

make -j 8 subdir=3Dtermios -C termios ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/termios'

make[2]: Nothing to be done for `subdir_lib'.
make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/termios'

make -j 8 subdir=3Dresource -C resource ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/resource'

make[2]: Nothing to be done for `subdir_lib'.
make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/resource'

make -j 8 subdir=3Dmisc -C misc ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/misc'

make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/misc'

make -j 8 subdir=3Dsocket -C socket ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/socket'

make[2]: Nothing to be done for `subdir_lib'.
make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/socket'

make -j 8 subdir=3Dsysvipc -C sysvipc ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/sysvipc'

make[2]: Nothing to be done for `subdir_lib'.
make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/sysvipc'

make -j 8 subdir=3Dgmon -C gmon ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/gmon'

make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/gmon'

make -j 8 subdir=3Dgnulib -C gnulib ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/gnulib'

make[2]: Nothing to be done for `subdir_lib'.
make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/gnulib'

make -j 8 subdir=3Dwctype -C wctype ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/wctype'

make[2]: Nothing to be done for `subdir_lib'.
make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/wctype'

make -j 8 subdir=3Dmanual -C manual ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/manual'

make[2]: Nothing to be done for `subdir_lib'.
make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/manual'

make -j 8 subdir=3Dshadow -C shadow ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/shadow'

make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/shadow'

make -j 8 subdir=3Dgshadow -C gshadow ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/gshadow'

make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/gshadow'

make -j 8 subdir=3Dpo -C po ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/po'

make[2]: Nothing to be done for `subdir_lib'.
make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/po'

make -j 8 subdir=3Dargp -C argp ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/argp'

make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/argp'

make -j 8 subdir=3Dcrypt -C crypt ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/crypt'

make[2]: Nothing to be done for `subdir_lib'.
make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/crypt'

make -j 8 subdir=3Dnptl -C nptl ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/nptl'

make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/nptl'

make -j 8 subdir=3Drt -C rt ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/rt'

make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/rt'

make -j 8 subdir=3Dconform -C conform ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/conform'

make[2]: Nothing to be done for `subdir_lib'.
make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/conform'

make -j 8 subdir=3Ddebug -C debug ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/debug'

make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/debug'

make -j 8 subdir=3Dlibidn -C libidn ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/libidn'

make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/libidn'

make -j 8 subdir=3Dnptl_db -C nptl_db ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/nptl_db'

make[2]: Nothing to be done for `subdir_lib'.
make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/nptl_db'

make -j 8 subdir=3Dinet -C inet ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/inet'

make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/inet'

make -j 8 subdir=3Dresolv -C resolv ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/resolv'

make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/resolv'

make -j 8 subdir=3Dnss -C nss ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/nss'

make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/nss'

make -j 8 subdir=3Dhesiod -C hesiod ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/hesiod'

make[2]: Nothing to be done for `subdir_lib'.
make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/hesiod'

make -j 8 subdir=3Dsunrpc -C sunrpc ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/sunrpc'

make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/sunrpc'

make -j 8 subdir=3Dnis -C nis ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/nis'

make[2]: Nothing to be done for `subdir_lib'.
make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/nis'

make -j 8 subdir=3Dnscd -C nscd ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/nscd'

make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/nscd'

make -j 8 subdir=3Dstreams -C streams ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/streams'

make[2]: Nothing to be done for `subdir_lib'.
make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/streams'

make -j 8 subdir=3Dlogin -C login ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/login'

make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/login'

make -j 8 subdir=3Delf -C elf ..=3D../ subdir_lib
make[2]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/elf'

make -f
/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7=
a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi/e=
lf/
librtld.mk -f rtld-Rules
make[3]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/elf'

make subdir=3Dcsu -C ../csu ..=3D../
objdir=3D/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/w=
ork/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-=
gnueabi
-f Makefile -f ../elf/rtld-Rules rtld-all rtld-modules=3D'rtld-check_fds.os
rtld-errno.os rtld-divdi3.os rtld-sysdep.os'
make subdir=3Ddirent -C ../dirent ..=3D../
objdir=3D/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/w=
ork/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-=
gnueabi
-f Makefile -f ../elf/rtld-Rules rtld-all rtld-modules=3D'rtld-closedir.os
rtld-readdir.os rtld-rewinddir.os rtld-getdents.os rtld-fdopendir.os'
make subdir=3Dgmon -C ../gmon ..=3D../
objdir=3D/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/w=
ork/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-=
gnueabi
-f Makefile -f ../elf/rtld-Rules rtld-all rtld-modules=3D'rtld-profil.os
rtld-prof-freq.os'
make subdir=3Dio -C ../io ..=3D../
objdir=3D/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/w=
ork/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-=
gnueabi
-f Makefile -f ../elf/rtld-Rules rtld-all rtld-modules=3D'rtld-xstat64.os
rtld-fxstat64.os rtld-lxstat64.os rtld-open.os rtld-read.os rtld-write.os
rtld-lseek.os rtld-access.os rtld-fcntl.os rtld-close.os'
make subdir=3Dmisc -C ../misc ..=3D../
objdir=3D/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/w=
ork/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-=
gnueabi
-f Makefile -f ../elf/rtld-Rules rtld-all rtld-modules=3D'rtld-mmap.os
rtld-munmap.os rtld-mprotect.os'
make subdir=3Dnptl -C ../nptl ..=3D../
objdir=3D/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/w=
ork/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-=
gnueabi
-f Makefile -f ../elf/rtld-Rules rtld-all
rtld-modules=3D'rtld-libc-lowlevellock.os rtld-libc-cancellation.os
rtld-libc_multiple_threads.os rtld-forward.os'
make subdir=3Dposix -C ../posix ..=3D../
objdir=3D/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/w=
ork/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-=
gnueabi
-f Makefile -f ../elf/rtld-Rules rtld-all rtld-modules=3D'rtld-uname.os
rtld-_exit.os rtld-getpid.os rtld-environ.os'
make subdir=3Dsetjmp -C ../setjmp ..=3D../
objdir=3D/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/w=
ork/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-=
gnueabi
-f Makefile -f ../elf/rtld-Rules rtld-all rtld-modules=3D'rtld-setjmp.os
rtld-__longjmp.os'
make[4]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/setjmp'

make[4]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/gmon'

make[4]: Nothing to be done for `rtld-all'.
make[4]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/setjmp'

make subdir=3Dsignal -C ../signal ..=3D../
objdir=3D/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/w=
ork/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-=
gnueabi
-f Makefile -f ../elf/rtld-Rules rtld-all rtld-modules=3D'rtld-sigaction.os
rtld-sigrestorer.os rtld-raise.os'
make[4]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/gmon'

make subdir=3Dstdlib -C ../stdlib ..=3D../
objdir=3D/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/w=
ork/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-=
gnueabi
-f Makefile -f ../elf/rtld-Rules rtld-all rtld-modules=3D'rtld-exit.os
rtld-cxa_atexit.os rtld-cxa_thread_atexit_impl.os'
make[4]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/dirent'

make[4]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/csu'

make[4]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/dirent'

make subdir=3Dstring -C ../string ..=3D../
objdir=3D/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/w=
ork/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-=
gnueabi
-f Makefile -f ../elf/rtld-Rules rtld-all rtld-modules=3D'rtld-strchr.os
rtld-strcmp.os rtld-strcpy.os rtld-strlen.os rtld-strnlen.os rtld-memchr.os
rtld-memcmp.os rtld-memmove.os rtld-memset.os rtld-mempcpy.os
rtld-rawmemchr.os rtld-memcpy_neon.os'
make[4]: Nothing to be done for `rtld-all'.
make[4]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/csu'

make subdir=3Dtime -C ../time ..=3D../
objdir=3D/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/w=
ork/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-=
gnueabi
-f Makefile -f ../elf/rtld-Rules rtld-all rtld-modules=3D'rtld-setitimer.os=
'
make[4]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/io'

make[4]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/posix'

make[4]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/signal'

make[4]: Nothing to be done for `rtld-all'.
make[4]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/io'

make[4]: Nothing to be done for `rtld-all'.
make[4]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/posix'

make[4]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/signal'

make[4]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/misc'

make[4]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/time'

make[4]: Nothing to be done for `rtld-all'.
make[4]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/time'

make[4]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/string'

make[4]: Nothing to be done for `rtld-all'.
make[4]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/misc'

make[4]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/stdlib'

make[4]: Nothing to be done for `rtld-all'.
make[4]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/string'

make[4]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/stdlib'

make[4]: Entering directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/nptl'

make[4]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/nptl'

make[3]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/elf'

arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork
-mfloat-abi=3Dsoftfp -mfpu=3Dneon
--sysroot=3D/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tm=
p/sysroots/beagle-xm-ml-tcbootstrap
 -shared -static-libgcc -Wl,-O1  -Wl,-z,defs
-Wl,-dynamic-linker=3D/lib/ld-linux.so.3
-B/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/arm=
v7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi=
/csu/
-Wl,--version-script=3D/home/kulrich/Development/yocto_dora/poky/build_beag=
le_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-a=
rm-poky-linux-gnueabi/libc.map
-Wl,-soname=3Dlibc.so.6 -Wl,-z,combreloc -Wl,-z,relro -Wl,--hash-style=3Dbo=
th
-nostdlib -nostartfiles -e __libc_main
-L/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/arm=
v7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi
-L/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/arm=
v7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi=
/math
-L/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/arm=
v7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi=
/elf
-L/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/arm=
v7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi=
/dlfcn
-L/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/arm=
v7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi=
/nss
-L/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/arm=
v7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi=
/nis
-L/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/arm=
v7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi=
/rt
-L/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/arm=
v7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi=
/resolv
-L/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/arm=
v7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi=
/crypt
-L/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/arm=
v7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi=
/nptl
-Wl,-rpath-link=3D/home/kulrich/Development/yocto_dora/poky/build_beagle_xm=
_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-po=
ky-linux-gnueabi:/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_=
ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-pok=
y-linux-gnueabi/math:/home/kulrich/Development/yocto_dora/poky/build_beagle=
_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm=
-poky-linux-gnueabi/elf:/home/kulrich/Development/yocto_dora/poky/build_bea=
gle_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-=
arm-poky-linux-gnueabi/dlfcn:/home/kulrich/Development/yocto_dora/poky/buil=
d_beagle_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/b=
uild-arm-poky-linux-gnueabi/nss:/home/kulrich/Development/yocto_dora/poky/b=
uild_beagle_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r=
0/build-arm-poky-linux-gnueabi/nis:/home/kulrich/Development/yocto_dora/pok=
y/build_beagle_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.1=
8-r0/build-arm-poky-linux-gnueabi/rt:/home/kulrich/Development/yocto_dora/p=
oky/build_beagle_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2=
.18-r0/build-arm-poky-linux-gnueabi/resolv:/home/kulrich/Development/yocto_=
dora/poky/build_beagle_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eg=
libc/2.18-r0/build-arm-poky-linux-gnueabi/crypt:/home/kulrich/Development/y=
octo_dora/poky/build_beagle_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnuea=
bi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi/nptl
-o
/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7=
a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi/l=
ibc.so
-T
/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7=
a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi/s=
hlib.lds
/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7=
a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi/c=
su/abi-note.o
/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7=
a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi/e=
lf/soinit.os
/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7=
a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi/l=
ibc_pic.os
/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7=
a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi/e=
lf/sofini.os
/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7=
a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi/e=
lf/interp.os
/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7=
a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi/e=
lf/ld.so
-lgcc
/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/sysroots/x=
86_64-linux/usr/libexec/armv7a-vfp-neon-poky-linux-gnueabi.gcc-cross-initia=
l/gcc/arm-poky-linux-gnueabi/4.8.1/ld:/home/kulrich/Development/yocto_dora/=
poky/build_beagle_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/=
2.18-r0/build-arm-poky-linux-gnueabi/shlib.lds:150:
syntax error
collect2: error: ld returned 1 exit status
make[2]: ***
[/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi/=
libc.so]
Error 1
make[2]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/elf'

make[1]: *** [elf/subdir_lib] Error 2
make[1]: Leaving directory
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc'

make: *** [all] Error 2
ERROR: oe_runmake failed
WARNING:
/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7=
a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/temp/run.do_compile.31813:1
exit 1 from
  exit 1
ERROR: Function failed: do_compile (log file is located at
/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7=
a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/temp/log.do_compile.31813)

--bcaec548a8e943896004f7a2284b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span>Hi, <br><br>I was porting yocto to gentoo. It w=
orks quite nice. see <a href=3D"https://wiki.gentoo.org/wiki/Yocto" target=
=3D"_blank">https://wiki.gentoo.org/wiki/Yocto</a><br>I do have problems wi=
th some custom metas and with</span><span><span> eglibc/2.18-r0/eglibc-2.18=
</span>.<br>

* meta-ti and yocto on HEAD <br>* </span><span><span></span>beagle-xm-ml
and yocto dora=20
<a href=3D"https://github.com/RobertBerger/meta-mainline/tree/dora-training=
-v3.13.x/beagle-xm-ml" target=3D"_blank">https://github.com/RobertBerger/me=
ta-mainline/tree/dora-training-v3.13.x/beagle-xm-ml</a>
<br><br></span></div><div><span>any ideas?<br></span></div><div><span><br><=
/span></div><span>the log says:<br><br></span><br><span>DEBUG: SITE files [=
&#39;endian-little&#39;, &#39;bit-32&#39;, &#39;arm-common&#39;,=20
&#39;common-linux&#39;, &#39;common-glibc&#39;, &#39;arm-linux&#39;, &#39;a=
rm-linux-gnueabi&#39;,=20
&#39;common&#39;]
<br>
DEBUG: Executing shell function do_compile
<br>
NOTE: make PARALLELMFLAGS=3D-j 8 SHELL=3D/bin/bash
<br>
make -r PARALLELMFLAGS=3D&quot;-j 8&quot; -C=20
/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7=
a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc
 objdir=3D`pwd` all
<br>
make[1]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc&#39;
<br>
make -j 8 subdir=3Dcsu -C csu ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/csu&#39;
<br>
make[2]: Nothing to be done for `subdir_lib&#39;.
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/csu&#39;
<br>
make -j 8 subdir=3Diconv -C iconv ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/iconv&#39;
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/iconv&#39;
<br>
make -j 8 subdir=3Dlocale -C locale ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/locale&#39;
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/locale&#39;
<br>
make -j 8 subdir=3Dlocaledata -C localedata ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/localedata&#=
39;
<br>
make[2]: Nothing to be done for `subdir_lib&#39;.
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/localedata&#=
39;
<br>
make -j 8 subdir=3Diconvdata -C iconvdata ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/iconvdata&#3=
9;
<br>
make[2]: Nothing to be done for `subdir_lib&#39;.
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/iconvdata&#3=
9;
<br>
make -j 8 subdir=3Dassert -C assert ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/assert&#39;
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/assert&#39;
<br>
make -j 8 subdir=3Dctype -C ctype ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/ctype&#39;
<br>
make[2]: Nothing to be done for `subdir_lib&#39;.
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/ctype&#39;
<br>
make -j 8 subdir=3Dintl -C intl ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/intl&#39;
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/intl&#39;
<br>
make -j 8 subdir=3Dcatgets -C catgets ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/catgets&#39;
<br>
make[2]: Nothing to be done for `subdir_lib&#39;.
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/catgets&#39;
<br>
make -j 8 subdir=3Dmath -C math ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/math&#39;
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/math&#39;
<br>
make -j 8 subdir=3Dsetjmp -C setjmp ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/setjmp&#39;
<br>
make[2]: Nothing to be done for `subdir_lib&#39;.
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/setjmp&#39;
<br>
make -j 8 subdir=3Dsignal -C signal ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/signal&#39;
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/signal&#39;
<br>
make -j 8 subdir=3Dstdlib -C stdlib ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/stdlib&#39;
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/stdlib&#39;
<br>
make -j 8 subdir=3Dstdio-common -C stdio-common ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/stdio-common=
&#39;
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/stdio-common=
&#39;
<br>
make -j 8 subdir=3Dlibio -C libio ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/libio&#39;
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/libio&#39;
<br>
make -j 8 subdir=3Ddlfcn -C dlfcn ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/dlfcn&#39;
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/dlfcn&#39;
<br>
make -j 8 subdir=3Dmalloc -C malloc ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/malloc&#39;
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/malloc&#39;
<br>
make -j 8 subdir=3Dstring -C string ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/string&#39;
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/string&#39;
<br>
make -j 8 subdir=3Dwcsmbs -C wcsmbs ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/wcsmbs&#39;
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/wcsmbs&#39;
<br>
make -j 8 subdir=3Dtimezone -C timezone ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/timezone&#39=
;
<br>
make[2]: Nothing to be done for `subdir_lib&#39;.
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/timezone&#39=
;
<br>
make -j 8 subdir=3Dtime -C time ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/time&#39;
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/time&#39;
<br>
make -j 8 subdir=3Ddirent -C dirent ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/dirent&#39;
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/dirent&#39;
<br>
make -j 8 subdir=3Dgrp -C grp ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/grp&#39;
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/grp&#39;
<br>
make -j 8 subdir=3Dpwd -C pwd ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/pwd&#39;
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/pwd&#39;
<br>
make -j 8 subdir=3Dposix -C posix ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/posix&#39;
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/posix&#39;
<br>
make -j 8 subdir=3Dio -C io ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/io&#39;
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/io&#39;
<br>
make -j 8 subdir=3Dtermios -C termios ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/termios&#39;
<br>
make[2]: Nothing to be done for `subdir_lib&#39;.
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/termios&#39;
<br>
make -j 8 subdir=3Dresource -C resource ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/resource&#39=
;
<br>
make[2]: Nothing to be done for `subdir_lib&#39;.
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/resource&#39=
;
<br>
make -j 8 subdir=3Dmisc -C misc ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/misc&#39;
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/misc&#39;
<br>
make -j 8 subdir=3Dsocket -C socket ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/socket&#39;
<br>
make[2]: Nothing to be done for `subdir_lib&#39;.
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/socket&#39;
<br>
make -j 8 subdir=3Dsysvipc -C sysvipc ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/sysvipc&#39;
<br>
make[2]: Nothing to be done for `subdir_lib&#39;.
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/sysvipc&#39;
<br>
make -j 8 subdir=3Dgmon -C gmon ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/gmon&#39;
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/gmon&#39;
<br>
make -j 8 subdir=3Dgnulib -C gnulib ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/gnulib&#39;
<br>
make[2]: Nothing to be done for `subdir_lib&#39;.
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/gnulib&#39;
<br>
make -j 8 subdir=3Dwctype -C wctype ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/wctype&#39;
<br>
make[2]: Nothing to be done for `subdir_lib&#39;.
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/wctype&#39;
<br>
make -j 8 subdir=3Dmanual -C manual ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/manual&#39;
<br>
make[2]: Nothing to be done for `subdir_lib&#39;.
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/manual&#39;
<br>
make -j 8 subdir=3Dshadow -C shadow ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/shadow&#39;
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/shadow&#39;
<br>
make -j 8 subdir=3Dgshadow -C gshadow ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/gshadow&#39;
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/gshadow&#39;
<br>
make -j 8 subdir=3Dpo -C po ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/po&#39;
<br>
make[2]: Nothing to be done for `subdir_lib&#39;.
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/po&#39;
<br>
make -j 8 subdir=3Dargp -C argp ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/argp&#39;
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/argp&#39;
<br>
make -j 8 subdir=3Dcrypt -C crypt ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/crypt&#39;
<br>
make[2]: Nothing to be done for `subdir_lib&#39;.
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/crypt&#39;
<br>
make -j 8 subdir=3Dnptl -C nptl ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/nptl&#39;
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/nptl&#39;
<br>
make -j 8 subdir=3Drt -C rt ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/rt&#39;
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/rt&#39;
<br>
make -j 8 subdir=3Dconform -C conform ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/conform&#39;
<br>
make[2]: Nothing to be done for `subdir_lib&#39;.
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/conform&#39;
<br>
make -j 8 subdir=3Ddebug -C debug ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/debug&#39;
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/debug&#39;
<br>
make -j 8 subdir=3Dlibidn -C libidn ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/libidn&#39;
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/libidn&#39;
<br>
make -j 8 subdir=3Dnptl_db -C nptl_db ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/nptl_db&#39;
<br>
make[2]: Nothing to be done for `subdir_lib&#39;.
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/nptl_db&#39;
<br>
make -j 8 subdir=3Dinet -C inet ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/inet&#39;
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/inet&#39;
<br>
make -j 8 subdir=3Dresolv -C resolv ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/resolv&#39;
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/resolv&#39;
<br>
make -j 8 subdir=3Dnss -C nss ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/nss&#39;
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/nss&#39;
<br>
make -j 8 subdir=3Dhesiod -C hesiod ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/hesiod&#39;
<br>
make[2]: Nothing to be done for `subdir_lib&#39;.
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/hesiod&#39;
<br>
make -j 8 subdir=3Dsunrpc -C sunrpc ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/sunrpc&#39;
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/sunrpc&#39;
<br>
make -j 8 subdir=3Dnis -C nis ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/nis&#39;
<br>
make[2]: Nothing to be done for `subdir_lib&#39;.
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/nis&#39;
<br>
make -j 8 subdir=3Dnscd -C nscd ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/nscd&#39;
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/nscd&#39;
<br>
make -j 8 subdir=3Dstreams -C streams ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/streams&#39;
<br>
make[2]: Nothing to be done for `subdir_lib&#39;.
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/streams&#39;
<br>
make -j 8 subdir=3Dlogin -C login ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/login&#39;
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/login&#39;
<br>
make -j 8 subdir=3Delf -C elf ..=3D../ subdir_lib
<br>
make[2]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/elf&#39;
<br>
make -f=20
/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7=
a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi/e=
lf/<a href=3D"http://librtld.mk" target=3D"_blank">librtld.mk</a>
 -f rtld-Rules
<br>
make[3]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/elf&#39;
<br>
make subdir=3Dcsu -C ../csu ..=3D../=20
objdir=3D/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/w=
ork/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-=
gnueabi
 -f Makefile -f ../elf/rtld-Rules rtld-all=20
rtld-modules=3D&#39;rtld-check_fds.os rtld-errno.os rtld-divdi3.os=20
rtld-sysdep.os&#39;
<br>
make subdir=3Ddirent -C ../dirent ..=3D../=20
objdir=3D/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/w=
ork/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-=
gnueabi
 -f Makefile -f ../elf/rtld-Rules rtld-all=20
rtld-modules=3D&#39;rtld-closedir.os rtld-readdir.os rtld-rewinddir.os=20
rtld-getdents.os rtld-fdopendir.os&#39;
<br>
make subdir=3Dgmon -C ../gmon ..=3D../=20
objdir=3D/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/w=
ork/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-=
gnueabi
 -f Makefile -f ../elf/rtld-Rules rtld-all rtld-modules=3D&#39;rtld-profil.=
os=20
rtld-prof-freq.os&#39;
<br>
make subdir=3Dio -C ../io ..=3D../=20
objdir=3D/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/w=
ork/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-=
gnueabi
 -f Makefile -f ../elf/rtld-Rules rtld-all rtld-modules=3D&#39;rtld-xstat64=
.os
 rtld-fxstat64.os rtld-lxstat64.os rtld-open.os rtld-read.os=20
rtld-write.os rtld-lseek.os rtld-access.os rtld-fcntl.os rtld-close.os&#39;
<br>
make subdir=3Dmisc -C ../misc ..=3D../=20
objdir=3D/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/w=
ork/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-=
gnueabi
 -f Makefile -f ../elf/rtld-Rules rtld-all rtld-modules=3D&#39;rtld-mmap.os=
=20
rtld-munmap.os rtld-mprotect.os&#39;
<br>
make subdir=3Dnptl -C ../nptl ..=3D../=20
objdir=3D/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/w=
ork/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-=
gnueabi
 -f Makefile -f ../elf/rtld-Rules rtld-all=20
rtld-modules=3D&#39;rtld-libc-lowlevellock.os rtld-libc-cancellation.os=20
rtld-libc_multiple_threads.os rtld-forward.os&#39;
<br>
make subdir=3Dposix -C ../posix ..=3D../=20
objdir=3D/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/w=
ork/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-=
gnueabi
 -f Makefile -f ../elf/rtld-Rules rtld-all rtld-modules=3D&#39;rtld-uname.o=
s=20
rtld-_exit.os rtld-getpid.os rtld-environ.os&#39;
<br>
make subdir=3Dsetjmp -C ../setjmp ..=3D../=20
objdir=3D/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/w=
ork/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-=
gnueabi
 -f Makefile -f ../elf/rtld-Rules rtld-all rtld-modules=3D&#39;rtld-setjmp.=
os=20
rtld-__longjmp.os&#39;
<br>
make[4]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/setjmp&#39;
<br>
make[4]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/gmon&#39;
<br>
make[4]: Nothing to be done for `rtld-all&#39;.
<br>
make[4]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/setjmp&#39;
<br>
make subdir=3Dsignal -C ../signal ..=3D../=20
objdir=3D/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/w=
ork/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-=
gnueabi
 -f Makefile -f ../elf/rtld-Rules rtld-all=20
rtld-modules=3D&#39;rtld-sigaction.os rtld-sigrestorer.os rtld-raise.os&#39=
;
<br>
make[4]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/gmon&#39;
<br>
make subdir=3Dstdlib -C ../stdlib ..=3D../=20
objdir=3D/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/w=
ork/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-=
gnueabi
 -f Makefile -f ../elf/rtld-Rules rtld-all rtld-modules=3D&#39;rtld-exit.os=
=20
rtld-cxa_atexit.os rtld-cxa_thread_atexit_impl.os&#39;
<br>
make[4]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/dirent&#39;
<br>
make[4]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/csu&#39;
<br>
make[4]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/dirent&#39;
<br>
make subdir=3Dstring -C ../string ..=3D../=20
objdir=3D/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/w=
ork/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-=
gnueabi
 -f Makefile -f ../elf/rtld-Rules rtld-all rtld-modules=3D&#39;rtld-strchr.=
os=20
rtld-strcmp.os rtld-strcpy.os rtld-strlen.os rtld-strnlen.os=20
rtld-memchr.os rtld-memcmp.os rtld-memmove.os rtld-memset.os=20
rtld-mempcpy.os rtld-rawmemchr.os rtld-memcpy_neon.os&#39;
<br>
make[4]: Nothing to be done for `rtld-all&#39;.
<br>
make[4]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/csu&#39;
<br>
make subdir=3Dtime -C ../time ..=3D../=20
objdir=3D/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/w=
ork/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-=
gnueabi
 -f Makefile -f ../elf/rtld-Rules rtld-all=20
rtld-modules=3D&#39;rtld-setitimer.os&#39;
<br>
make[4]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/io&#39;
<br>
make[4]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/posix&#39;
<br>
make[4]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/signal&#39;
<br>
make[4]: Nothing to be done for `rtld-all&#39;.
<br>
make[4]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/io&#39;
<br>
make[4]: Nothing to be done for `rtld-all&#39;.
<br>
make[4]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/posix&#39;
<br>
make[4]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/signal&#39;
<br>
make[4]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/misc&#39;
<br>
make[4]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/time&#39;
<br>
make[4]: Nothing to be done for `rtld-all&#39;.
<br>
make[4]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/time&#39;
<br>
make[4]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/string&#39;
<br>
make[4]: Nothing to be done for `rtld-all&#39;.
<br>
make[4]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/misc&#39;
<br>
make[4]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/stdlib&#39;
<br>
make[4]: Nothing to be done for `rtld-all&#39;.
<br>
make[4]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/string&#39;
<br>
make[4]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/stdlib&#39;
<br>
make[4]: Entering directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/nptl&#39;
<br>
make[4]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/nptl&#39;
<br>
make[3]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/elf&#39;
<br>
arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv7-a -mthumb-interwork=20
-mfloat-abi=3Dsoftfp -mfpu=3Dneon=20
--sysroot=3D/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tm=
p/sysroots/beagle-xm-ml-tcbootstrap=C2=A0
 =C2=A0-shared -static-libgcc -Wl,-O1=C2=A0 -Wl,-z,defs=20
-Wl,-dynamic-linker=3D/lib/ld-linux.so.3=C2=A0=20
-B/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/arm=
v7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi=
/csu/=C2=A0
=20
-Wl,--version-script=3D/home/kulrich/Development/yocto_dora/poky/build_beag=
le_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-a=
rm-poky-linux-gnueabi/libc.map
 -Wl,-soname=3Dlibc.so.6 -Wl,-z,combreloc -Wl,-z,relro=20
-Wl,--hash-style=3Dboth -nostdlib -nostartfiles -e __libc_main=20
-L/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/arm=
v7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi
=20
-L/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/arm=
v7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi=
/math
=20
-L/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/arm=
v7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi=
/elf
=20
-L/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/arm=
v7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi=
/dlfcn
=20
-L/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/arm=
v7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi=
/nss
=20
-L/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/arm=
v7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi=
/nis
=20
-L/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/arm=
v7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi=
/rt
=20
-L/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/arm=
v7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi=
/resolv
=20
-L/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/arm=
v7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi=
/crypt
=20
-L/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/arm=
v7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi=
/nptl
=20
-Wl,-rpath-link=3D/home/kulrich/Development/yocto_dora/poky/build_beagle_xm=
_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-po=
ky-linux-gnueabi:/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_=
ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-pok=
y-linux-gnueabi/math:/home/kulrich/Development/yocto_dora/poky/build_beagle=
_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm=
-poky-linux-gnueabi/elf:/home/kulrich/Development/yocto_dora/poky/build_bea=
gle_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-=
arm-poky-linux-gnueabi/dlfcn:/home/kulrich/Development/yocto_dora/poky/buil=
d_beagle_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/b=
uild-arm-poky-linux-gnueabi/nss:/home/kulrich/Development/yocto_dora/poky/b=
uild_beagle_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r=
0/build-arm-poky-linux-gnueabi/nis:/home/kulrich/Development/yocto_dora/pok=
y/build_beagle_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.1=
8-r0/build-arm-poky-linux-gnueabi/rt:/home/kulrich/Development/yocto_dora/p=
oky/build_beagle_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2=
.18-r0/build-arm-poky-linux-gnueabi/resolv:/home/kulrich/Development/yocto_=
dora/poky/build_beagle_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eg=
libc/2.18-r0/build-arm-poky-linux-gnueabi/crypt:/home/kulrich/Development/y=
octo_dora/poky/build_beagle_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnuea=
bi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi/nptl
 -o=20
/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7=
a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi/l=
ibc.so
 -T=20
/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7=
a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi/s=
hlib.lds
=20
/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7=
a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi/c=
su/abi-note.o
=20
/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7=
a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi/e=
lf/soinit.os
=20
/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7=
a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi/l=
ibc_pic.os
=20
/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7=
a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi/e=
lf/sofini.os
=20
/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7=
a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi/e=
lf/interp.os
=20
/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7=
a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi/e=
lf/ld.so
 -lgcc=20
<br>
/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/sysroots/x=
86_64-linux/usr/libexec/armv7a-vfp-neon-poky-linux-gnueabi.gcc-cross-initia=
l/gcc/arm-poky-linux-gnueabi/4.8.1/ld:/home/kulrich/Development/yocto_dora/=
poky/build_beagle_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/=
2.18-r0/build-arm-poky-linux-gnueabi/shlib.lds:150:
 syntax error
<br>
collect2: error: ld returned 1 exit status
<br>
make[2]: ***=20
[/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi/=
libc.so]
 Error 1
<br>
make[2]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/elf&#39;
<br>
make[1]: *** [elf/subdir_lib] Error 2
<br>
make[1]: Leaving directory=20
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv=
7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc&#39;
<br>
make: *** [all] Error 2
<br>
ERROR: oe_runmake failed
<br>
WARNING:=20
/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7=
a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/temp/run.do_compile.31813:1
 exit 1 from
<br>
=C2=A0 exit 1
<br>
ERROR: Function failed: do_compile (log file is located at=20
/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7=
a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/temp/log.do_compile.31813)</sp=
an></div>

--bcaec548a8e943896004f7a2284b--
