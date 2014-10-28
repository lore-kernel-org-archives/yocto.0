Return-Path: <Neil.Wu@Emerson.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CB21E00848; Mon, 27 Oct 2014 18:40:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DEAR_SOMETHING,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  2.0 DEAR_SOMETHING BODY: Contains 'Dear (something)'
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [144.191.128.191 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from USSTLZ-PINFEZ07.extemr.org (usstlz-pinfez07.extemr.org
	[144.191.128.191])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A248EE007A0
	for <yocto@yoctoproject.org>; Mon, 27 Oct 2014 18:40:37 -0700 (PDT)
Received: from USSTLZ-PMSG008.emrsn.org (10.16.72.190) by
	USSTLZ-PINFEZ07.extemr.org (10.16.8.80) with Microsoft SMTP Server
	(TLS) id 14.3.158.1; Tue, 28 Oct 2014 01:40:36 +0000
Received: from USSTLZ-PMSG012.emrsn.org ([169.254.3.30]) by
	USSTLZ-PMSG008.emrsn.org ([169.254.3.80]) with mapi id 14.03.0158.001;
	Tue, 28 Oct 2014 01:40:36 +0000
From: <Neil.Wu@Emerson.com>
To: <lixin.fnst@cn.fujitsu.com>
Thread-Topic: [yocto] Luajit Compile Error
Thread-Index: AQHP24xbLkTXTqP1fEKewsgmrjLMUJwXBqMAgAAKIACALIzIMIABSQwQ
Date: Tue, 28 Oct 2014 01:40:35 +0000
Message-ID: <3204FE6663E1F14CAF4CA6928E60C85215BC1C1E@USSTLZ-PMSG012.emrsn.org>
References: <CACjDgAMqZ31WnnnQQn-bC1c1G302EcE0mMTEg01x8rn4989M8Q@mail.gmail.com>
	<CAMKF1sqjcM3OQVkgh-fxPEW007CAaAy7MzoP7Y2ZZ-Hi_3Z5Jg@mail.gmail.com>
	<CACjDgAMhqJMHpT++Lwpy4vkbeJQOZtOOGBgg1HMSf1=-kiSHtg@mail.gmail.com>
	<A8FC939F80655644A89BB21CCD3741E87C17AF@G08CNEXMBPEKD02.g08.fujitsu.local>
In-Reply-To: <A8FC939F80655644A89BB21CCD3741E87C17AF@G08CNEXMBPEKD02.g08.fujitsu.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.75.1]
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 28 Oct 2014 01:40:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

This is my .bb file what compile the LuaJIT on arm architecture. I hope it =
can help you!

SUMMARY =3D "Add LuaJIT to rootfs"
HOMEPAGE =3D "http://luajit.org/index.html"
LICENSE =3D "MIT"
FILESEXTRAPATHS_prepend  :=3D "${THISDIR}/${PN}:"
#FILESPATH :=3D "${THISDIR}/${PN}"
LIC_FILES_CHKSUM =3D "file://COPYRIGHT;md5=3D1793ef52a5d577794cd886a501a7f8=
61"

FILES_${PN} +=3D "/usr/share/* \
	/usr/include/* \
	/usr/share/lua/* \
	/usr/share/luajit-2.0.2/* \
	/usr/share/man/* \
	/usr/share/lua/5.1/* \
	/usr/lib/* \
	/usr/bin/*"

SRC_URI =3D "http://luajit.org/download/LuaJIT-${PV}.tar.gz"
SRC_URI[md5sum] =3D "112dfb82548b03377fbefbba2e0e3a5b"
SRC_URI[sha256sum] =3D "c05202974a5890e777b181908ac237625b499aece026654d7cc=
33607e3f46c38"

S =3D "${WORKDIR}/${PN}-${PV}"

PARALLEL_MAKEINST=3D"PREFIX=3D${D}/usr"
PARALLEL_MAKE=3D"'PREFIX=3D${D}' 'CROSS=3D${TARGET_SYS}-'  'TARGET_SYS=3DLi=
nux' "
do_install () {
	oe_runmake install
}

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Li, Xin
Sent: Monday, October 27, 2014 2:04 PM
To: Albert K; Khem Raj
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Luajit Compile Error

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
in/poky/build.x86/tmp/sysroots/qemux86 HOST_CC=3Dgcc  -m32 =3D=3D=3D=3D Bui=
lding LuaJIT 2.0.3 =3D=3D=3D=3D make -C src
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
> From: yocto-bounces@yoctoproject.org=20
> [mailto:yocto-bounces@yoctoproject.org]
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
> >> I am getting error when i include luajit package from the=20
> >> meta-embedded and this is build from the core-image-minimal=20
> >> layer(yocto daisy).  Can someone help to point me the right=20
> >> direction for fixing the compile error as show below?  Thanks.
> >>
> >
> > its expecting 32bit gcc to be available on your build host. So=20
> > install gcc-multilib on build machine and it should go on.
> >
> >>
> >> yocto@ubuntu-yocto:/yocto/poky/build/tmp/work/i586-poky-linux/luaji
> >> t/
> >> 2.0.2-r0/temp$
> >> cat log.do_compile.16806
> >> DEBUG: Executing shell function do_compile
> >> NOTE: make -j 4 CROSS=3Di586-poky-linux- TARGET_CFLAGS=3D
> >> --sysroot=3D/yocto/poky/build/tmp/sysroots/qemux86 TARGET_LDFLAGS=3D
> >> --sysroot=3D/yocto/poky/build/tmp/sysroots/qemux86 TARGET_SHLDFLAGS=3D
> >> --sysroot=3D/yocto/poky/build/tmp/sysroots/qemux86 HOST_CC=3Dgcc  -m32=
=20
> >> =3D=3D=3D=3D Building LuaJIT 2.0.2 =3D=3D=3D=3D make -C src
> >> make[1]: Entering directory
> >> `/yocto/poky/build/tmp/work/i586-poky-linux/luajit/2.0.2-r0/LuaJIT-2.0=
.2/src'
> >> HOSTCC    host/minilua.o
> >> HOSTCC    host/buildvm_asm.o
> >> HOSTCC    host/buildvm_peobj.o
> >> HOSTCC    host/buildvm_lib.o
> >> In file included from host/buildvm_peobj.c:9:0:
> >> host/buildvm.h:9:23: fatal error: sys/types.h: No such file or=20
> >> directory  #include <sys/types.h>
> >>                        ^
> >> In file included from host/buildvm_asm.c:6:0:
> >> host/buildvm.h:9:23: fatal error: sys/types.h: No such file or=20
> >> directory  #include <sys/types.h>
> >>                        ^
> >> compilation terminated.
> >> In file included from host/buildvm_lib.c:6:0:
> >> host/buildvm.h:9:23: fatal error: sys/types.h: No such file or=20
> >> directory  #include <sys/types.h>
> >>                        ^
> >> compilation terminated.
> >> compilation terminated.
> >> make[1]: *** [host/buildvm_asm.o] Error 1
> >> make[1]: *** Waiting for unfinished jobs....
> >> make[1]: *** [host/buildvm_peobj.o] Error 1
> >> make[1]: *** [host/buildvm_lib.o] Error 1 In file included from=20
> >> /usr/include/limits.h:25:0,
> >>                  from
> >> /usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed/limits.h:168,
> >>                  from
> >> /usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed/syslimits.h:7,
> >>                  from
> >> /usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed/limits.h:34,
> >>                  from host/minilua.c:32:
> >> /usr/include/features.h:374:25: fatal error: sys/cdefs.h: No such=20
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
> >> ERROR: Function failed: do_compile (log file is located at=20
> >> /yocto/poky/build/tmp/work/i586-poky-linux/luajit/2.0.2-r0/temp/log
> >> .d
> >> o_compile.16806)
> >> yocto@ubuntu-yocto:/yocto/poky/build/tmp/work/i586-poky-linux/luaji
> >> t/
> >> 2.0.2-r0/temp$
> >> cat log.do_compile.16806
> >> DEBUG: Executing shell function do_compile
> >> NOTE: make -j 4 CROSS=3Di586-poky-linux- TARGET_CFLAGS=3D
> >> --sysroot=3D/yocto/poky/build/tmp/sysroots/qemux86 TARGET_LDFLAGS=3D
> >> --sysroot=3D/yocto/poky/build/tmp/sysroots/qemux86 TARGET_SHLDFLAGS=3D
> >> --sysroot=3D/yocto/poky/build/tmp/sysroots/qemux86 HOST_CC=3Dgcc  -m32=
=20
> >> =3D=3D=3D=3D Building LuaJIT 2.0.2 =3D=3D=3D=3D make -C src
> >> make[1]: Entering directory
> >> `/yocto/poky/build/tmp/work/i586-poky-linux/luajit/2.0.2-r0/LuaJIT-2.0=
.2/src'
> >> HOSTCC    host/minilua.o
> >> HOSTCC    host/buildvm_asm.o
> >> HOSTCC    host/buildvm_peobj.o
> >> HOSTCC    host/buildvm_lib.o
> >> In file included from host/buildvm_peobj.c:9:0:
> >> host/buildvm.h:9:23: fatal error: sys/types.h: No such file or=20
> >> directory  #include <sys/types.h>
> >>                        ^
> >> In file included from host/buildvm_asm.c:6:0:
> >> host/buildvm.h:9:23: fatal error: sys/types.h: No such file or=20
> >> directory  #include <sys/types.h>
> >>                        ^
> >> compilation terminated.
> >> In file included from host/buildvm_lib.c:6:0:
> >> host/buildvm.h:9:23: fatal error: sys/types.h: No such file or=20
> >> directory  #include <sys/types.h>
> >>                        ^
> >> compilation terminated.
> >> compilation terminated.
> >> make[1]: *** [host/buildvm_asm.o] Error 1
> >> make[1]: *** Waiting for unfinished jobs....
> >> make[1]: *** [host/buildvm_peobj.o] Error 1
> >> make[1]: *** [host/buildvm_lib.o] Error 1 In file included from=20
> >> /usr/include/limits.h:25:0,
> >>                  from
> >> /usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed/limits.h:168,
> >>                  from
> >> /usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed/syslimits.h:7,
> >>                  from
> >> /usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed/limits.h:34,
> >>                  from host/minilua.c:32:
> >> /usr/include/features.h:374:25: fatal error: sys/cdefs.h: No such=20
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
> >> ERROR: Function failed: do_compile (log file is located at=20
> >> /yocto/poky/build/tmp/work/i586-poky-linux/luajit/2.0.2-r0/temp/log
> >> .d
> >> o_compile.16806)
> >> yocto@ubuntu-yocto:/yocto/poky/build/tmp/work/i586-poky-linux/luaji
> >> t/
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
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

