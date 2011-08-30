Return-Path: <eballetbo@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42FE3E0124B
	for <yocto@yoctoproject.org>; Tue, 30 Aug 2011 02:41:26 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iafi7 with SMTP id i7so2020927iaf.35
	for <yocto@yoctoproject.org>; Tue, 30 Aug 2011 02:41:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Y3/Kw1FFwdkJErF+FCSKTV/DNTDqUaK5k8v9aEUpkHo=;
	b=CVkBDFcGJ/KCDSXTIS9Pmt2TfCd1VWznec1LNJtI0zi/I/XbbJHBnd9ovDqQz0b5Kj
	wh3GreMeL5wRMpl3cYmVPonEV1F+XsM7TUYnLkfeORPyECS1qyB9GmetMUf1MFXc95wr
	8gLMKsEpBJxfFeSVsir/dN1jqevnvupzMZCVs=
MIME-Version: 1.0
Received: by 10.231.55.210 with SMTP id v18mr12750787ibg.26.1314697285044;
	Tue, 30 Aug 2011 02:41:25 -0700 (PDT)
Received: by 10.231.54.4 with HTTP; Tue, 30 Aug 2011 02:41:24 -0700 (PDT)
Date: Tue, 30 Aug 2011 11:41:24 +0200
Message-ID: <CAFqH_53pVga6ptkRQxdNzztuae0Wd33rixq+BAGCfjGHfjorxA@mail.gmail.com>
From: =?UTF-8?Q?Enric_Balletb=C3=B2_i_Serra?= <eballetbo@gmail.com>
To: yocto@yoctoproject.org
Subject: lttng-ust fails to build in current mainline for beagleboard.
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
X-List-Received-Date: Tue, 30 Aug 2011 09:41:26 -0000
Content-Type: text/plain; charset=UTF-8

Hi all,

Seems the package lttng-ust fails to build in current mainline, is
currently the build for beagleboard broken ?

The log looks like:

ERROR: Function 'do_compile' failed (see
/home/eballetbo/Workspace/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/lttng-ust-0.15-r2/temp/log.do_compile.24087
for further information)
ERROR: Logfile of failure stored in:
/home/eballetbo/Workspace/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/lttng-ust-0.15-r2/temp/log.do_compile.24087
Log data follows:
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi',
'common']
| NOTE: make -j 4
| make  all-recursive
| make[1]: Entering directory
`/home/eballetbo/Workspace/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/lttng-ust-0.15-r2/ust-0.15'
| Making all in snprintf
| make[2]: Entering directory
`/home/eballetbo/Workspace/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/lttng-ust-0.15-r2/ust-0.15/snprintf'
| /bin/sh ../arm-poky-linux-gnueabi-libtool  --tag=CC   --mode=compile
arm-poky-linux-gnueabi-gcc  -march=armv7-a -fno-tree-vectorize
-mthumb-interwork -mfloat-abi=softfp -mfpu=neon -mtune=cortex-a8
--sysroot=/home/eballetbo/Workspace/yocto/build/tmp/sysroots/igep0020
-DHAVE_CONFIG_H -I. -I.. -I../include/ust  -I../include
-I../libustcomm  -DUST_COMPONENT="ust_snprintf" -fPIC
-fno-strict-aliasing -Wall -O2 -pipe -g -feliminate-unused-debug-types
-MT libustsnprintf_la-vfprintf.lo -MD -MP -MF
.deps/libustsnprintf_la-vfprintf.Tpo -c -o
libustsnprintf_la-vfprintf.lo `test -f 'vfprintf.c' || echo
'./'`vfprintf.c
| arm-poky-linux-gnueabi-libtool: compile:  arm-poky-linux-gnueabi-gcc
-march=armv7-a -fno-tree-vectorize -mthumb-interwork
-mfloat-abi=softfp -mfpu=neon -mtune=cortex-a8
--sysroot=/home/eballetbo/Workspace/yocto/build/tmp/sysroots/igep0020
-DHAVE_CONFIG_H -I. -I.. -I../include/ust -I../include -I../libustcomm
-DUST_COMPONENT=ust_snprintf -fPIC -fno-strict-aliasing -Wall -O2
-pipe -g -feliminate-unused-debug-types -MT
libustsnprintf_la-vfprintf.lo -MD -MP -MF
.deps/libustsnprintf_la-vfprintf.Tpo -c vfprintf.c  -fPIC -DPIC -o
.libs/libustsnprintf_la-vfprintf.o
| vfprintf.c: In function 'ust_safe_vfprintf':
| vfprintf.c:956:1: error: unrecognizable insn:
| (insn 3968 3967 3969 145 (set (subreg:SI (reg/v:DI 160 [ _umax ]) 0)
|         (sign_extend:SI (mem:QI (plus:SI (mult:SI (reg/v:SI 166 [ nextarg ])
|                         (const_int 8 [0x8]))
|                     (reg/f:SI 370 [ argtable.7 ])) [0 *D.6937_569+0
S1 A32]))) vfprintf.c:555 -1
|      (nil))
| vfprintf.c:956:1: internal compiler error: in extract_insn, at recog.c:2109
| Please submit a full bug report,
| with preprocessed source if appropriate.
| See <http://gcc.gnu.org/bugs.html> for instructions.
| make[2]: *** [libustsnprintf_la-vfprintf.lo] Error 1
| make[2]: Leaving directory
`/home/eballetbo/Workspace/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/lttng-ust-0.15-r2/ust-0.15/snprintf'
| make[1]: *** [all-recursive] Error 1
| make[1]: Leaving directory
`/home/eballetbo/Workspace/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/lttng-ust-0.15-r2/ust-0.15'
| make: *** [all] Error 2
| ERROR: oe_runmake failed
| ERROR: Function 'do_compile' failed (see
/home/eballetbo/Workspace/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/lttng-ust-0.15-r2/temp/log.do_compile.24087
for further information)
NOTE: package lttng-ust-0.15-r2: task do_compile: Failed
ERROR: Task 2016
(/home/eballetbo/Workspace/yocto/meta/recipes-kernel/lttng/lttng-ust_0.15.bb,
do_compile) failed with exit code '1'

Cheers,
   Enric

