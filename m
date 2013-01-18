Return-Path: <jessica.zhang@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A40C5E006D2
	for <yocto@yoctoproject.org>; Fri, 18 Jan 2013 07:09:05 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 18 Jan 2013 07:09:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,493,1355126400"; d="scan'208";a="275508851"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by fmsmga001.fm.intel.com with ESMTP; 18 Jan 2013 07:09:04 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.209]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.62]) with mapi id
	14.01.0355.002; Fri, 18 Jan 2013 07:09:03 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Flavio Castro Alves Filho <flavio.alves@gmail.com>
Thread-Topic: [yocto] Eclipse Plugin
Thread-Index: AQHN9KvFtc8WGUaUVUagiLFVR9+DMphN5YOAgAGk5ID//6XHAA==
Date: Fri, 18 Jan 2013 15:09:03 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C57DD4A5F@ORSMSX101.amr.corp.intel.com>
References: <CANmViri9tO7geBequNB5V7bVgJi49VyzybdbLodrSvbaoYJ0fw@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C57DD45A6@ORSMSX101.amr.corp.intel.com>
	<CAFNBftf-+ae4b4a0yf+t60RXYmheD7f7wr1v38t9JQM40eK1aw@mail.gmail.com>
In-Reply-To: <CAFNBftf-+ae4b4a0yf+t60RXYmheD7f7wr1v38t9JQM40eK1aw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Raul Rosetto Munoz <munoz0raul@gmail.com>
Subject: Re: Eclipse Plugin
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
X-List-Received-Date: Fri, 18 Jan 2013 15:09:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Flavio,

See my comments or questions below...

Thanks,
Jessica

-----Original Message-----
From: Flavio Castro Alves Filho [mailto:flavio.alves@gmail.com]
Sent: Friday, January 18, 2013 4:25 AM
To: Zhang, Jessica
Cc: Raul Rosetto Munoz; yocto@yoctoproject.org
Subject: Re: [yocto] Eclipse Plugin

Hello,

I'm facing similar issue (in fact, Raul and I are working together on this =
deploy).

I'll describe the steps that we followed. Our system is Ubuntu 12.04 LTS an=
d our Eclipse version is Juno.

1) We build core-image-minimal using poky 1.3 (danny), meta-ti, meta-openem=
bedded/meta-oe
[JZ}So if you want to use the image rootfs packages as target sysroot, plea=
se build an -sdk or -dev image which contains the dev packages for your app=
lication need

2) We build toolchain from the build system, using meta-ide-support

3) We downloaded Eclipse classic from Eclipse's website

4) We installed the Eclipse's components, according to Yocto dev manual ins=
tructions

5) We installed Yocto ADT plugin from the repository (version 1.3)

We extracted the generated root filesystem in another directory, in order t=
o properly configure the Eclipse Yocto plugin.

[JZ] Base on your info, in the eclipse plug-in preference setup, you "Build=
 system derived toolchain" and can you give me your toolchain location and =
sysroot location settings?

For now, installation worked fine. The problem occurs when we try to build =
the hello world application.

We followed the steps from the Yocto dev manual.

Before starting the build, I lanched the reconfigure option. After, when st=
arted to build, the error message indicates 'no make target'.

Looking at the files, I could see that autogen.sh was executed, but the con=
figure script don't. I believe that there is some isse where the IDE is not=
 executing the configure script.

Do you have any clue about how to solve this issue?

Best regards,

Flavio


2013/1/17 Zhang, Jessica <jessica.zhang@intel.com>:
> Hi Raul,
>
>
>
> Before we can help you debug your issue, can you provide more info
> regarding
> to:
>
>
>
> 1.       How did you setup your cross toolchain? ADT installer or toolcha=
in
> tarball (your build if so, how did you build it.  If not, which one
> did you
> download?)
>
> 2.       And also, please provide more info what's your toolchain setup i=
n
> Eclipse, specifically the Yocto Project ADT preference config under Windo=
w?
>
> Thanks,
>
> Jessica
>
>
>
> From: yocto-bounces@yoctoproject.org
> [mailto:yocto-bounces@yoctoproject.org]
> On Behalf Of Raul Rosetto Munoz
> Sent: Thursday, January 17, 2013 4:10 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] Eclipse Plugin
>
>
>
> Hello All,
>
> I followed the ADT manual to create a eclipse environment.
>
>
>
> After create a default Hello World Yocto project I get some compile error=
s.
>
>
>
> At file config.log I saw some errors lines:
>
>
>
>
>
> configure:2861: checking for arm-poky-linux-gnueabi-gcc
>
> configure:2888: result: arm-poky-linux-gnueabi-gcc  -march=3Darmv5te
> -marm -mthumb-interwork  -mtune=3Darm926ej-s
> --sysroot=3D/home/prjs/compsis0001/philinux/arm
>
> configure:3157: checking for C compiler version
>
> configure:3166: arm-poky-linux-gnueabi-gcc  -march=3Darmv5te  -marm
> -mthumb-interwork  -mtune=3Darm926ej-s
> --sysroot=3D/home/prjs/compsis0001/philinux/arm --version >&5
>
> arm-poky-linux-gnueabi-gcc (GCC) 4.7.2
>
> Copyright (C) 2012 Free Software Foundation, Inc.
>
> This is free software; see the source for copying conditions.  There
> is NO
>
> warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOS=
E.
>
>
>
> configure:3177: $? =3D 0
>
> configure:3166: arm-poky-linux-gnueabi-gcc  -march=3Darmv5te  -marm
> -mthumb-interwork  -mtune=3Darm926ej-s
> --sysroot=3D/home/prjs/compsis0001/philinux/arm -v >&5
>
> Using built-in specs.
>
> COLLECT_GCC=3Darm-poky-linux-gnueabi-gcc
>
> COLLECT_LTO_WRAPPER=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libe
> xec/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/lto-wr
> apper
>
> Target: arm-poky-linux-gnueabi
>
> Configured with:
> /srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-arm/build/bu
> ild/tmp/work-shared/gcc-4.7.2-r13/gcc-4.7.2/configure
> --build=3Dx86_64-linux --host=3Di686-pokysdk-linux
> --target=3Darm-poky-linux-gnueabi
> --prefix=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr
> --exec_prefix=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr
> --bindir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/bin/armv5te-pok
> y-linux-gnueabi
> --sbindir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/bin/armv5te-po
> ky-linux-gnueabi
> --libexecdir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/arm
> v5te-poky-linux-gnueabi
> --datadir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/share
> --sysconfdir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/etc
> --sharedstatedir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/com
> --localstatedir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/var
> --libdir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/lib/armv5te-pok
> y-linux-gnueabi
> --includedir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/include
> --oldincludedir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/include
> --infodir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/share/info
> --mandir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/share/man
> --disable-silent-rules --disable-dependency-tracking
> --with-libtool-sysroot=3D/srv/home/pokybuild/yocto-autobuilder/yocto-sla
> ve/nightly-arm/build/build/tmp/sysroots/i686-nativesdk-pokysdk-linux
> --with-gnu-ld --enable-shared --enable-languages=3Dc,c++
> --enable-threads=3Dposix --disable-multilib --enable-c99
> --enable-long-long --enable-symvers=3Dgnu --enable-libstdcxx-pch
> --program-prefix=3Darm-poky-linux-gnueabi- --without-local-prefix
> --enable-target-optspace --enable-lto --enable-libssp
> --disable-bootstrap --disable-libgomp --disable-libmudflap
> --with-system-zlib --with-linker-hash-style=3Dgnu --with-ppl=3Dno
> --with-cloog=3Dno --enable-checking=3Drelease --enable-cheaders=3Dc_globa=
l
> --with-float=3Dsoft
> --with-gxx-include-dir=3D/opt/poky/1.3/sysroots/armv5te-poky-linux-gnuea
> bi/usr/include/c++
> --with-build-time-tools=3D/srv/home/pokybuild/yocto-autobuilder/yocto-sl
> ave/nightly-arm/build/build/tmp/sysroots/x86_64-linux/usr/arm-poky-lin
> ux-gnueabi/bin
> --with-sysroot=3D/opt/poky/1.3/sysroots/armv5te-poky-linux-gnueabi
> --with-build-sysroot=3D/srv/home/pokybuild/yocto-autobuilder/yocto-slave
> /nightly-arm/build/build/tmp/sysroots/qemuarm
> --disable-libunwind-exceptions --disable-libssp --disable-libgomp
> --disable-libmudflap
> --with-mpfr=3D/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-
> arm/build/build/tmp/sysroots/i686-nativesdk-pokysdk-linux
> --with-mpc=3D/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-a
> rm/build/build/tmp/sysroots/i686-nativesdk-pokysdk-linux
> --enable-nls
>
> Thread model: posix
>
> gcc version 4.7.2 (GCC)
>
> configure:3177: $? =3D 0
>
> configure:3166: arm-poky-linux-gnueabi-gcc  -march=3Darmv5te  -marm
> -mthumb-interwork  -mtune=3Darm926ej-s
> --sysroot=3D/home/prjs/compsis0001/philinux/arm -V >&5
>
> arm-poky-linux-gnueabi-gcc: error: unrecognized command line option '-V'
>
> arm-poky-linux-gnueabi-gcc: fatal error: no input files
>
> compilation terminated.
>
> configure:3177: $? =3D 1
>
> configure:3166: arm-poky-linux-gnueabi-gcc  -march=3Darmv5te  -marm
> -mthumb-interwork  -mtune=3Darm926ej-s
> --sysroot=3D/home/prjs/compsis0001/philinux/arm -qversion >&5
>
> arm-poky-linux-gnueabi-gcc: error: unrecognized command line option
> '-qversion'
>
> arm-poky-linux-gnueabi-gcc: fatal error: no input files
>
> compilation terminated.
>
> configure:3177: $? =3D 1
>
> configure:3197: checking whether the C compiler works
>
> configure:3219: arm-poky-linux-gnueabi-gcc  -march=3Darmv5te  -marm
> -mthumb-interwork  -mtune=3Darm926ej-s
> --sysroot=3D/home/prjs/compsis0001/philinux/arm  -g -O0
> --sysroot=3D/opt/poky/1.3  --sysroot=3D/opt/poky/1.3
> --sysroot=3D/opt/poky/1.3 conftest.c  >&5
>
> /opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-=
gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
> cannot find crt1.o: No such file or directory
>
> /opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-=
gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
> cannot find crti.o: No such file or directory
>
> /opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-=
gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
> cannot find crtbegin.o: No such file or directory
>
> /opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-=
gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
> cannot find -lgcc
>
> /opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-=
gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
> cannot find -lgcc_s
>
> /opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-=
gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
> cannot find -lc
>
> /opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-=
gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
> cannot find -lgcc
>
> /opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-=
gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
> cannot find -lgcc_s
>
> /opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-=
gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
> cannot find crtend.o: No such file or directory
>
> /opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-=
gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
> cannot find crtn.o: No such file or directory
>
> collect2: error: ld returned 1 exit status
>
> configure:3223: $? =3D 1
>
> configure:3261: result: no
>
> configure: failed program was:
>
> | /* confdefs.h */
>
> | #define PACKAGE_NAME "teste"
>
> | #define PACKAGE_TARNAME "teste"
>
> | #define PACKAGE_VERSION "0.1.0"
>
> | #define PACKAGE_STRING "teste 0.1.0"
>
> | #define PACKAGE_BUGREPORT ""
>
> | #define PACKAGE_URL ""
>
> | #define PACKAGE "teste"
>
> | #define VERSION "0.1.0"
>
> | /* end confdefs.h.  */
>
> |
>
> | int
>
> | main ()
>
> | {
>
> |
>
> |   ;
>
> |   return 0;
>
> | }
>
> configure:3266: error: in `/home/prjs/compsis0001/workspace/teste':
>
> configure:3268: error: C compiler cannot create executables
>
> See `config.log' for more details
>
>
>
> ## ---------------- ##
>
> ## Cache variables. ##
>
> ## ---------------- ##
>
> ...
>
> ...
>
> ...
>
> ## ----------------- ##
>
> ## Output variables. ##
>
> ## ----------------- ##
>
> ...
>
> ...
>
> ...
>
> /* confdefs.h */
>
> #define PACKAGE_NAME "teste"
>
> #define PACKAGE_TARNAME "teste"
>
> #define PACKAGE_VERSION "0.1.0"
>
> #define PACKAGE_STRING "teste 0.1.0"
>
> #define PACKAGE_BUGREPORT ""
>
> #define PACKAGE_URL ""
>
> #define PACKAGE "teste"
>
> #define VERSION "0.1.0"
>
>
>
> configure: exit 77
>
>
>
>
>
> Some One can Help me?
>
>
>
> Thanks
>
>
>
> --
> Raul Rosetto Mu=F1oz
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--
Flavio de Castro Alves Filho

flavio.alves@gmail.com
www.linuxembarcado.com
Twitter: http://twitter.com/#!/fraviofii LinkedIn profile: www.linkedin.com=
/in/flaviocastroalves

