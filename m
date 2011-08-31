Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0688E0071A
	for <yocto@yoctoproject.org>; Wed, 31 Aug 2011 11:18:56 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 31 Aug 2011 11:18:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="43856219"
Received: from unknown (HELO [10.255.14.3]) ([10.255.14.3])
	by orsmga002.jf.intel.com with ESMTP; 31 Aug 2011 11:18:56 -0700
Message-ID: <4E5E7B0F.8030901@linux.intel.com>
Date: Wed, 31 Aug 2011 11:18:55 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:6.0) Gecko/20110816 Thunderbird/6.0
MIME-Version: 1.0
To: =?ISO-8859-1?Q?Enric_Balletb=F2_i_Serra?= <eballetbo@gmail.com>
References: <CAFqH_53pVga6ptkRQxdNzztuae0Wd33rixq+BAGCfjGHfjorxA@mail.gmail.com>
In-Reply-To: <CAFqH_53pVga6ptkRQxdNzztuae0Wd33rixq+BAGCfjGHfjorxA@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: lttng-ust fails to build in current mainline for beagleboard.
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
X-List-Received-Date: Wed, 31 Aug 2011 18:18:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

On 08/30/2011 02:41 AM, Enric Balletbò i Serra wrote:
> Hi all,
>
> Seems the package lttng-ust fails to build in current mainline, is
> currently the build for beagleboard broken ?
>
This is a known issue, see
http://bugzilla.pokylinux.org/show_bug.cgi?id=1381

The problem appears to be an issue in the Compiler.

Sau!

> The log looks like:
>
> ERROR: Function 'do_compile' failed (see
> /home/eballetbo/Workspace/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/lttng-ust-0.15-r2/temp/log.do_compile.24087
> for further information)
> ERROR: Logfile of failure stored in:
> /home/eballetbo/Workspace/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/lttng-ust-0.15-r2/temp/log.do_compile.24087
> Log data follows:
> | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi',
> 'common']
> | NOTE: make -j 4
> | make  all-recursive
> | make[1]: Entering directory
> `/home/eballetbo/Workspace/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/lttng-ust-0.15-r2/ust-0.15'
> | Making all in snprintf
> | make[2]: Entering directory
> `/home/eballetbo/Workspace/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/lttng-ust-0.15-r2/ust-0.15/snprintf'
> | /bin/sh ../arm-poky-linux-gnueabi-libtool  --tag=CC   --mode=compile
> arm-poky-linux-gnueabi-gcc  -march=armv7-a -fno-tree-vectorize
> -mthumb-interwork -mfloat-abi=softfp -mfpu=neon -mtune=cortex-a8
> --sysroot=/home/eballetbo/Workspace/yocto/build/tmp/sysroots/igep0020
> -DHAVE_CONFIG_H -I. -I.. -I../include/ust  -I../include
> -I../libustcomm  -DUST_COMPONENT="ust_snprintf" -fPIC
> -fno-strict-aliasing -Wall -O2 -pipe -g -feliminate-unused-debug-types
> -MT libustsnprintf_la-vfprintf.lo -MD -MP -MF
> .deps/libustsnprintf_la-vfprintf.Tpo -c -o
> libustsnprintf_la-vfprintf.lo `test -f 'vfprintf.c' || echo
> './'`vfprintf.c
> | arm-poky-linux-gnueabi-libtool: compile:  arm-poky-linux-gnueabi-gcc
> -march=armv7-a -fno-tree-vectorize -mthumb-interwork
> -mfloat-abi=softfp -mfpu=neon -mtune=cortex-a8
> --sysroot=/home/eballetbo/Workspace/yocto/build/tmp/sysroots/igep0020
> -DHAVE_CONFIG_H -I. -I.. -I../include/ust -I../include -I../libustcomm
> -DUST_COMPONENT=ust_snprintf -fPIC -fno-strict-aliasing -Wall -O2
> -pipe -g -feliminate-unused-debug-types -MT
> libustsnprintf_la-vfprintf.lo -MD -MP -MF
> .deps/libustsnprintf_la-vfprintf.Tpo -c vfprintf.c  -fPIC -DPIC -o
> .libs/libustsnprintf_la-vfprintf.o
> | vfprintf.c: In function 'ust_safe_vfprintf':
> | vfprintf.c:956:1: error: unrecognizable insn:
> | (insn 3968 3967 3969 145 (set (subreg:SI (reg/v:DI 160 [ _umax ]) 0)
> |         (sign_extend:SI (mem:QI (plus:SI (mult:SI (reg/v:SI 166 [ nextarg ])
> |                         (const_int 8 [0x8]))
> |                     (reg/f:SI 370 [ argtable.7 ])) [0 *D.6937_569+0
> S1 A32]))) vfprintf.c:555 -1
> |      (nil))
> | vfprintf.c:956:1: internal compiler error: in extract_insn, at recog.c:2109
> | Please submit a full bug report,
> | with preprocessed source if appropriate.
> | See<http://gcc.gnu.org/bugs.html>  for instructions.
> | make[2]: *** [libustsnprintf_la-vfprintf.lo] Error 1
> | make[2]: Leaving directory
> `/home/eballetbo/Workspace/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/lttng-ust-0.15-r2/ust-0.15/snprintf'
> | make[1]: *** [all-recursive] Error 1
> | make[1]: Leaving directory
> `/home/eballetbo/Workspace/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/lttng-ust-0.15-r2/ust-0.15'
> | make: *** [all] Error 2
> | ERROR: oe_runmake failed
> | ERROR: Function 'do_compile' failed (see
> /home/eballetbo/Workspace/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/lttng-ust-0.15-r2/temp/log.do_compile.24087
> for further information)
> NOTE: package lttng-ust-0.15-r2: task do_compile: Failed
> ERROR: Task 2016
> (/home/eballetbo/Workspace/yocto/meta/recipes-kernel/lttng/lttng-ust_0.15.bb,
> do_compile) failed with exit code '1'
>
> Cheers,
>     Enric
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

