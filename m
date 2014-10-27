Return-Path: <lixin.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54D2DE00902; Sun, 26 Oct 2014 23:05:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.9 required=5.0 tests=BAYES_00,DEAR_SOMETHING,
	RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: *  2.0 DEAR_SOMETHING BODY: Contains 'Dear (something)'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 67 seconds by postgrey-1.32 at yocto-www;
	Sun, 26 Oct 2014 23:05:33 PDT
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BF21E0084A
	for <yocto@yoctoproject.org>; Sun, 26 Oct 2014 23:05:33 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.04,793,1406563200"; d="scan'208";a="42376102"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 27 Oct 2014 14:01:13 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id s9R64EeN014520;
	Mon, 27 Oct 2014 14:04:14 +0800
Received: from G08CNEXMBPEKD02.g08.fujitsu.local ([10.167.33.84]) by
	G08CNEXCHPEKD03.g08.fujitsu.local ([10.167.33.85]) with mapi id
	14.03.0181.006; Mon, 27 Oct 2014 14:04:21 +0800
From: "Li, Xin" <lixin.fnst@cn.fujitsu.com>
To: Albert K <alberk@gmail.com>, Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Luajit Compile Error
Thread-Index: AQHP24xbLkTXTqP1fEKewsgmrjLMUJwXBqMAgAAKIACALIzIMA==
Date: Mon, 27 Oct 2014 06:04:22 +0000
Message-ID: <A8FC939F80655644A89BB21CCD3741E87C17AF@G08CNEXMBPEKD02.g08.fujitsu.local>
References: <CACjDgAMqZ31WnnnQQn-bC1c1G302EcE0mMTEg01x8rn4989M8Q@mail.gmail.com>
	<CAMKF1sqjcM3OQVkgh-fxPEW007CAaAy7MzoP7Y2ZZ-Hi_3Z5Jg@mail.gmail.com>
	<CACjDgAMhqJMHpT++Lwpy4vkbeJQOZtOOGBgg1HMSf1=-kiSHtg@mail.gmail.com>
In-Reply-To: <CACjDgAMhqJMHpT++Lwpy4vkbeJQOZtOOGBgg1HMSf1=-kiSHtg@mail.gmail.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.226.37]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Luajit Compile Error
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
X-List-Received-Date: Mon, 27 Oct 2014 06:05:36 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hi,

I also build the package luajit ,but it has the following errors.
Can someone help me?

Thanks.

-----------------------------------------------------------------------
[lixin@ubinux-yocto-15 temp]$ cat log.do_compile.14752
DEBUG: Executing shell function do_compile
NOTE: make -j 10 CROSS=3Di586-poky-linux- TARGET_CFLAGS=3D --sysroot=3D/yoc=
to/work001/fnst/lixin/poky/build.x86/tmp/sysroots/qemux86  -m32 -march=3Di5=
86 TARGET_LDFLAGS=3D --sysroot=3D/yocto/work001/fnst/lixin/poky/build.x86/t=
mp/sysroots/qemux86 TARGET_SHLDFLAGS=3D --sysroot=3D/yocto/work001/fnst/lix=
in/poky/build.x86/tmp/sysroots/qemux86 HOST_CC=3Dgcc  -m32
=3D=3D=3D=3D Building LuaJIT 2.0.3 =3D=3D=3D=3D
make -C src
make[1]: Entering directory `/yocto/work001/fnst/lixin/poky/build.x86/tmp/w=
ork/i586-poky-linux/luajit/2.0.3-r0/LuaJIT-2.0.3/src'
BUILDVM   lj_vm.s
BUILDVM   lj_ffdef.h
BUILDVM   lj_bcdef.h
Error: pointer size mismatch in cross-build.
Try: make HOST_CC=3D"gcc -m32" CROSS=3D...

make[1]: *** [lj_vm.s] Error 1
Error: pointer size mismatch in cross-build.
Try: make HOST_CC=3D"gcc -m32" CROSS=3D...

make[1]: *** Waiting for unfinished jobs....
make[1]: *** [lj_ffdef.h] Error 1
Error: pointer size mismatch in cross-build.
Try: make HOST_CC=3D"gcc -m32" CROSS=3D...

make[1]: *** [lj_bcdef.h] Error 1
make[1]: Leaving directory `/yocto/work001/fnst/lixin/poky/build.x86/tmp/wo=
rk/i586-poky-linux/luajit/2.0.3-r0/LuaJIT-2.0.3/src'
make: *** [default] Error 2
ERROR: oe_runmake failed
WARNING: /yocto/work001/fnst/lixin/poky/build.x86/tmp/work/i586-poky-linux/=
luajit/2.0.3-r0/temp/run.do_compile.14752:1 exit 1 from
  exit 1
ERROR: Function failed: do_compile (log file is located at /yocto/work001/f=
nst/lixin/poky/build.x86/tmp/work/i586-poky-linux/luajit/2.0.3-r0/temp/log.=
do_compile.14752)
[lixin@ubinux-yocto-15 temp]$
---------------------------------------------------------------------------=
---------------





> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg]
> On Behalf Of Albert K
> Sent: Monday, September 29, 2014 1:34 PM
> To: Khem Raj
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Luajit Compile Error
>=20
> Dear Sir,
>=20
> Thanks a million.   Adding the gcc-multilib to the build host did the
> trick.  Works like a charm.  Thanks again.
>=20
> On Mon, Sep 29, 2014 at 12:57 PM, Khem Raj <raj.khem@gmail.com> wrote:
> > On Sun, Sep 28, 2014 at 7:22 PM, Albert K <alberk@gmail.com> wrote:
> >> Dear all,
> >>
> >> I am getting error when i include luajit package from the
> >> meta-embedded and this is build from the core-image-minimal
> >> layer(yocto daisy).  Can someone help to point me the right direction
> >> for fixing the compile error as show below?  Thanks.
> >>
> >
> > its expecting 32bit gcc to be available on your build host. So install
> > gcc-multilib on build machine and it should go on.
> >
> >>
> >> yocto@ubuntu-yocto:/yocto/poky/build/tmp/work/i586-poky-linux/luajit/
> >> 2.0.2-r0/temp$
> >> cat log.do_compile.16806
> >> DEBUG: Executing shell function do_compile
> >> NOTE: make -j 4 CROSS=3Di586-poky-linux- TARGET_CFLAGS=3D
> >> --sysroot=3D/yocto/poky/build/tmp/sysroots/qemux86 TARGET_LDFLAGS=3D
> >> --sysroot=3D/yocto/poky/build/tmp/sysroots/qemux86 TARGET_SHLDFLAGS=3D
> >> --sysroot=3D/yocto/poky/build/tmp/sysroots/qemux86 HOST_CC=3Dgcc  -m32
> >> =3D=3D=3D=3D Building LuaJIT 2.0.2 =3D=3D=3D=3D make -C src
> >> make[1]: Entering directory
> >> `/yocto/poky/build/tmp/work/i586-poky-linux/luajit/2.0.2-r0/LuaJIT-2.0=
.2/src'
> >> HOSTCC    host/minilua.o
> >> HOSTCC    host/buildvm_asm.o
> >> HOSTCC    host/buildvm_peobj.o
> >> HOSTCC    host/buildvm_lib.o
> >> In file included from host/buildvm_peobj.c:9:0:
> >> host/buildvm.h:9:23: fatal error: sys/types.h: No such file or
> >> directory  #include <sys/types.h>
> >>                        ^
> >> In file included from host/buildvm_asm.c:6:0:
> >> host/buildvm.h:9:23: fatal error: sys/types.h: No such file or
> >> directory  #include <sys/types.h>
> >>                        ^
> >> compilation terminated.
> >> In file included from host/buildvm_lib.c:6:0:
> >> host/buildvm.h:9:23: fatal error: sys/types.h: No such file or
> >> directory  #include <sys/types.h>
> >>                        ^
> >> compilation terminated.
> >> compilation terminated.
> >> make[1]: *** [host/buildvm_asm.o] Error 1
> >> make[1]: *** Waiting for unfinished jobs....
> >> make[1]: *** [host/buildvm_peobj.o] Error 1
> >> make[1]: *** [host/buildvm_lib.o] Error 1 In file included from
> >> /usr/include/limits.h:25:0,
> >>                  from
> >> /usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed/limits.h:168,
> >>                  from
> >> /usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed/syslimits.h:7,
> >>                  from
> >> /usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed/limits.h:34,
> >>                  from host/minilua.c:32:
> >> /usr/include/features.h:374:25: fatal error: sys/cdefs.h: No such
> >> file or directory  #  include <sys/cdefs.h>
> >>                          ^
> >> compilation terminated.
> >> make[1]: *** [host/minilua.o] Error 1
> >> make[1]: Leaving directory
> >> `/yocto/poky/build/tmp/work/i586-poky-linux/luajit/2.0.2-r0/LuaJIT-2.0=
.2/src'
> >> make: *** [default] Error 2
> >> ERROR: oe_runmake failed
> >> WARNING: exit code 1 from a shell command.
> >> ERROR: Function failed: do_compile (log file is located at
> >> /yocto/poky/build/tmp/work/i586-poky-linux/luajit/2.0.2-r0/temp/log.d
> >> o_compile.16806)
> >> yocto@ubuntu-yocto:/yocto/poky/build/tmp/work/i586-poky-linux/luajit/
> >> 2.0.2-r0/temp$
> >> cat log.do_compile.16806
> >> DEBUG: Executing shell function do_compile
> >> NOTE: make -j 4 CROSS=3Di586-poky-linux- TARGET_CFLAGS=3D
> >> --sysroot=3D/yocto/poky/build/tmp/sysroots/qemux86 TARGET_LDFLAGS=3D
> >> --sysroot=3D/yocto/poky/build/tmp/sysroots/qemux86 TARGET_SHLDFLAGS=3D
> >> --sysroot=3D/yocto/poky/build/tmp/sysroots/qemux86 HOST_CC=3Dgcc  -m32
> >> =3D=3D=3D=3D Building LuaJIT 2.0.2 =3D=3D=3D=3D make -C src
> >> make[1]: Entering directory
> >> `/yocto/poky/build/tmp/work/i586-poky-linux/luajit/2.0.2-r0/LuaJIT-2.0=
.2/src'
> >> HOSTCC    host/minilua.o
> >> HOSTCC    host/buildvm_asm.o
> >> HOSTCC    host/buildvm_peobj.o
> >> HOSTCC    host/buildvm_lib.o
> >> In file included from host/buildvm_peobj.c:9:0:
> >> host/buildvm.h:9:23: fatal error: sys/types.h: No such file or
> >> directory  #include <sys/types.h>
> >>                        ^
> >> In file included from host/buildvm_asm.c:6:0:
> >> host/buildvm.h:9:23: fatal error: sys/types.h: No such file or
> >> directory  #include <sys/types.h>
> >>                        ^
> >> compilation terminated.
> >> In file included from host/buildvm_lib.c:6:0:
> >> host/buildvm.h:9:23: fatal error: sys/types.h: No such file or
> >> directory  #include <sys/types.h>
> >>                        ^
> >> compilation terminated.
> >> compilation terminated.
> >> make[1]: *** [host/buildvm_asm.o] Error 1
> >> make[1]: *** Waiting for unfinished jobs....
> >> make[1]: *** [host/buildvm_peobj.o] Error 1
> >> make[1]: *** [host/buildvm_lib.o] Error 1 In file included from
> >> /usr/include/limits.h:25:0,
> >>                  from
> >> /usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed/limits.h:168,
> >>                  from
> >> /usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed/syslimits.h:7,
> >>                  from
> >> /usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed/limits.h:34,
> >>                  from host/minilua.c:32:
> >> /usr/include/features.h:374:25: fatal error: sys/cdefs.h: No such
> >> file or directory  #  include <sys/cdefs.h>
> >>                          ^
> >> compilation terminated.
> >> make[1]: *** [host/minilua.o] Error 1
> >> make[1]: Leaving directory
> >> `/yocto/poky/build/tmp/work/i586-poky-linux/luajit/2.0.2-r0/LuaJIT-2.0=
.2/src'
> >> make: *** [default] Error 2
> >> ERROR: oe_runmake failed
> >> WARNING: exit code 1 from a shell command.
> >> ERROR: Function failed: do_compile (log file is located at
> >> /yocto/poky/build/tmp/work/i586-poky-linux/luajit/2.0.2-r0/temp/log.d
> >> o_compile.16806)
> >> yocto@ubuntu-yocto:/yocto/poky/build/tmp/work/i586-poky-linux/luajit/
> >> 2.0.2-r0/temp$
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

