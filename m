Return-Path: <flavio.alves@gmail.com>
Received: from mail-ia0-f174.google.com (mail-ia0-f174.google.com
	[209.85.210.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27AACE00724
	for <yocto@yoctoproject.org>; Sat, 19 Jan 2013 05:37:12 -0800 (PST)
Received: by mail-ia0-f174.google.com with SMTP id o25so1993635iad.5
	for <yocto@yoctoproject.org>; Sat, 19 Jan 2013 05:37:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:content-transfer-encoding;
	bh=+z97sso8DzFMDqXod1rtG1Cgxle+jzm5i2lNKkKuIB0=;
	b=C8ISfFLb7dlWEOGWa2UIIiDLzIgjqeDPX/B+VjZQqZO5nFDMpkPmMhDwNDq3qirPwU
	rSk+yPee1HW0bwM2/qdXOoFu5JDF0Z/g3MFRxR7hRdXsHHtpUNznLFFRi03Uwu5PNdJE
	pYNwY1heUWb5LrXfWoYJbI+vsOH89geJ+tIXdyaLKJ9UVlwl52d2RSkPd7ajELrH+Wwd
	P3f2XbSc7aUh2j8cfwoJr0/CyI/bFUoXCYYgbDAuJcKo9FCsRMkfZOeylfA2niXujWrJ
	vrt/L4YaO3e1ykBU4IX0i4HM6RI1RTcN3rLzdmJS6jBNd0jKCMhg7mtwOtrKdrXl6KFS
	9IHw==
MIME-Version: 1.0
X-Received: by 10.50.34.193 with SMTP id b1mr4823697igj.89.1358602632376; Sat,
	19 Jan 2013 05:37:12 -0800 (PST)
Received: by 10.42.127.141 with HTTP; Sat, 19 Jan 2013 05:37:12 -0800 (PST)
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C57DD4A5F@ORSMSX101.amr.corp.intel.com>
References: <CANmViri9tO7geBequNB5V7bVgJi49VyzybdbLodrSvbaoYJ0fw@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C57DD45A6@ORSMSX101.amr.corp.intel.com>
	<CAFNBftf-+ae4b4a0yf+t60RXYmheD7f7wr1v38t9JQM40eK1aw@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C57DD4A5F@ORSMSX101.amr.corp.intel.com>
Date: Sat, 19 Jan 2013 11:37:12 -0200
Message-ID: <CAFNBfteSSsrvSjocTqi=UZoSO1ZPgyAW5cuuCFtGhz2VwXwzrg@mail.gmail.com>
From: Flavio Castro Alves Filho <flavio.alves@gmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
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
X-List-Received-Date: Sat, 19 Jan 2013 13:37:13 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello Jessica,

2013/1/18 Zhang, Jessica <jessica.zhang@intel.com>:
> Hi Flavio,
>
> See my comments or questions below...
>
> Thanks,
> Jessica
>
> -----Original Message-----
> From: Flavio Castro Alves Filho [mailto:flavio.alves@gmail.com]
> Sent: Friday, January 18, 2013 4:25 AM
> To: Zhang, Jessica
> Cc: Raul Rosetto Munoz; yocto@yoctoproject.org
> Subject: Re: [yocto] Eclipse Plugin
>
> Hello,
>
> I'm facing similar issue (in fact, Raul and I are working together on thi=
s deploy).
>
> I'll describe the steps that we followed. Our system is Ubuntu 12.04 LTS =
and our Eclipse version is Juno.
>
> 1) We build core-image-minimal using poky 1.3 (danny), meta-ti, meta-open=
embedded/meta-oe
> [JZ}So if you want to use the image rootfs packages as target sysroot, pl=
ease build an -sdk or -dev image which contains the dev packages for your a=
pplication need

Ok ... thank you. Actually, I didn't do that.

>
> 2) We build toolchain from the build system, using meta-ide-support
>
> 3) We downloaded Eclipse classic from Eclipse's website
>
> 4) We installed the Eclipse's components, according to Yocto dev manual i=
nstructions
>
> 5) We installed Yocto ADT plugin from the repository (version 1.3)
>
> We extracted the generated root filesystem in another directory, in order=
 to properly configure the Eclipse Yocto plugin.
>
> [JZ] Base on your info, in the eclipse plug-in preference setup, you "Bui=
ld system derived toolchain" and can you give me your toolchain location an=
d sysroot location settings?

The toolchain location is the build system location, as indicated in
the documentation. The sysroot location is a different directory where
I extracted the generated .tar.gz file from the end of the build.

But ... to be clear: our problem is that Eclipse is not building the
'autotools hello world' example project. The project is created
correctly, but it is not compiling from the IDE.

When I go, using terminal, to the project directory. I can see the
'autogen.sh' file. If I execute, from IDE, the reconfigure option, I
can see, from terminal, the configure file. But I cannot see the
makefiles.

According to the documentation, when I execute the 'reconfigure'
option from Eclipse, it will execute autogen.sh + configure. What is
happening is that autogen.sh is being executed, but not configure.

>
> For now, installation worked fine. The problem occurs when we try to buil=
d the hello world application.
>
> We followed the steps from the Yocto dev manual.
>
> Before starting the build, I lanched the reconfigure option. After, when =
started to build, the error message indicates 'no make target'.
>
> Looking at the files, I could see that autogen.sh was executed, but the c=
onfigure script don't. I believe that there is some isse where the IDE is n=
ot executing the configure script.
>
> Do you have any clue about how to solve this issue?
>
> Best regards,
>
> Flavio
>
>
> 2013/1/17 Zhang, Jessica <jessica.zhang@intel.com>:
>> Hi Raul,
>>
>>
>>
>> Before we can help you debug your issue, can you provide more info
>> regarding
>> to:
>>
>>
>>
>> 1.       How did you setup your cross toolchain? ADT installer or toolch=
ain
>> tarball (your build if so, how did you build it.  If not, which one
>> did you
>> download?)
>>
>> 2.       And also, please provide more info what's your toolchain setup =
in
>> Eclipse, specifically the Yocto Project ADT preference config under Wind=
ow?
>>
>> Thanks,
>>
>> Jessica
>>
>>
>>
>> From: yocto-bounces@yoctoproject.org
>> [mailto:yocto-bounces@yoctoproject.org]
>> On Behalf Of Raul Rosetto Munoz
>> Sent: Thursday, January 17, 2013 4:10 AM
>> To: yocto@yoctoproject.org
>> Subject: [yocto] Eclipse Plugin
>>
>>
>>
>> Hello All,
>>
>> I followed the ADT manual to create a eclipse environment.
>>
>>
>>
>> After create a default Hello World Yocto project I get some compile erro=
rs.
>>
>>
>>
>> At file config.log I saw some errors lines:
>>
>>
>>
>>
>>
>> configure:2861: checking for arm-poky-linux-gnueabi-gcc
>>
>> configure:2888: result: arm-poky-linux-gnueabi-gcc  -march=3Darmv5te
>> -marm -mthumb-interwork  -mtune=3Darm926ej-s
>> --sysroot=3D/home/prjs/compsis0001/philinux/arm
>>
>> configure:3157: checking for C compiler version
>>
>> configure:3166: arm-poky-linux-gnueabi-gcc  -march=3Darmv5te  -marm
>> -mthumb-interwork  -mtune=3Darm926ej-s
>> --sysroot=3D/home/prjs/compsis0001/philinux/arm --version >&5
>>
>> arm-poky-linux-gnueabi-gcc (GCC) 4.7.2
>>
>> Copyright (C) 2012 Free Software Foundation, Inc.
>>
>> This is free software; see the source for copying conditions.  There
>> is NO
>>
>> warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPO=
SE.
>>
>>
>>
>> configure:3177: $? =3D 0
>>
>> configure:3166: arm-poky-linux-gnueabi-gcc  -march=3Darmv5te  -marm
>> -mthumb-interwork  -mtune=3Darm926ej-s
>> --sysroot=3D/home/prjs/compsis0001/philinux/arm -v >&5
>>
>> Using built-in specs.
>>
>> COLLECT_GCC=3Darm-poky-linux-gnueabi-gcc
>>
>> COLLECT_LTO_WRAPPER=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libe
>> xec/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/lto-wr
>> apper
>>
>> Target: arm-poky-linux-gnueabi
>>
>> Configured with:
>> /srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-arm/build/bu
>> ild/tmp/work-shared/gcc-4.7.2-r13/gcc-4.7.2/configure
>> --build=3Dx86_64-linux --host=3Di686-pokysdk-linux
>> --target=3Darm-poky-linux-gnueabi
>> --prefix=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr
>> --exec_prefix=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr
>> --bindir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/bin/armv5te-pok
>> y-linux-gnueabi
>> --sbindir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/bin/armv5te-po
>> ky-linux-gnueabi
>> --libexecdir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/arm
>> v5te-poky-linux-gnueabi
>> --datadir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/share
>> --sysconfdir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/etc
>> --sharedstatedir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/com
>> --localstatedir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/var
>> --libdir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/lib/armv5te-pok
>> y-linux-gnueabi
>> --includedir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/include
>> --oldincludedir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/include
>> --infodir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/share/info
>> --mandir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/share/man
>> --disable-silent-rules --disable-dependency-tracking
>> --with-libtool-sysroot=3D/srv/home/pokybuild/yocto-autobuilder/yocto-sla
>> ve/nightly-arm/build/build/tmp/sysroots/i686-nativesdk-pokysdk-linux
>> --with-gnu-ld --enable-shared --enable-languages=3Dc,c++
>> --enable-threads=3Dposix --disable-multilib --enable-c99
>> --enable-long-long --enable-symvers=3Dgnu --enable-libstdcxx-pch
>> --program-prefix=3Darm-poky-linux-gnueabi- --without-local-prefix
>> --enable-target-optspace --enable-lto --enable-libssp
>> --disable-bootstrap --disable-libgomp --disable-libmudflap
>> --with-system-zlib --with-linker-hash-style=3Dgnu --with-ppl=3Dno
>> --with-cloog=3Dno --enable-checking=3Drelease --enable-cheaders=3Dc_glob=
al
>> --with-float=3Dsoft
>> --with-gxx-include-dir=3D/opt/poky/1.3/sysroots/armv5te-poky-linux-gnuea
>> bi/usr/include/c++
>> --with-build-time-tools=3D/srv/home/pokybuild/yocto-autobuilder/yocto-sl
>> ave/nightly-arm/build/build/tmp/sysroots/x86_64-linux/usr/arm-poky-lin
>> ux-gnueabi/bin
>> --with-sysroot=3D/opt/poky/1.3/sysroots/armv5te-poky-linux-gnueabi
>> --with-build-sysroot=3D/srv/home/pokybuild/yocto-autobuilder/yocto-slave
>> /nightly-arm/build/build/tmp/sysroots/qemuarm
>> --disable-libunwind-exceptions --disable-libssp --disable-libgomp
>> --disable-libmudflap
>> --with-mpfr=3D/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-
>> arm/build/build/tmp/sysroots/i686-nativesdk-pokysdk-linux
>> --with-mpc=3D/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-a
>> rm/build/build/tmp/sysroots/i686-nativesdk-pokysdk-linux
>> --enable-nls
>>
>> Thread model: posix
>>
>> gcc version 4.7.2 (GCC)
>>
>> configure:3177: $? =3D 0
>>
>> configure:3166: arm-poky-linux-gnueabi-gcc  -march=3Darmv5te  -marm
>> -mthumb-interwork  -mtune=3Darm926ej-s
>> --sysroot=3D/home/prjs/compsis0001/philinux/arm -V >&5
>>
>> arm-poky-linux-gnueabi-gcc: error: unrecognized command line option '-V'
>>
>> arm-poky-linux-gnueabi-gcc: fatal error: no input files
>>
>> compilation terminated.
>>
>> configure:3177: $? =3D 1
>>
>> configure:3166: arm-poky-linux-gnueabi-gcc  -march=3Darmv5te  -marm
>> -mthumb-interwork  -mtune=3Darm926ej-s
>> --sysroot=3D/home/prjs/compsis0001/philinux/arm -qversion >&5
>>
>> arm-poky-linux-gnueabi-gcc: error: unrecognized command line option
>> '-qversion'
>>
>> arm-poky-linux-gnueabi-gcc: fatal error: no input files
>>
>> compilation terminated.
>>
>> configure:3177: $? =3D 1
>>
>> configure:3197: checking whether the C compiler works
>>
>> configure:3219: arm-poky-linux-gnueabi-gcc  -march=3Darmv5te  -marm
>> -mthumb-interwork  -mtune=3Darm926ej-s
>> --sysroot=3D/home/prjs/compsis0001/philinux/arm  -g -O0
>> --sysroot=3D/opt/poky/1.3  --sysroot=3D/opt/poky/1.3
>> --sysroot=3D/opt/poky/1.3 conftest.c  >&5
>>
>> /opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux=
-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
>> cannot find crt1.o: No such file or directory
>>
>> /opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux=
-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
>> cannot find crti.o: No such file or directory
>>
>> /opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux=
-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
>> cannot find crtbegin.o: No such file or directory
>>
>> /opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux=
-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
>> cannot find -lgcc
>>
>> /opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux=
-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
>> cannot find -lgcc_s
>>
>> /opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux=
-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
>> cannot find -lc
>>
>> /opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux=
-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
>> cannot find -lgcc
>>
>> /opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux=
-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
>> cannot find -lgcc_s
>>
>> /opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux=
-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
>> cannot find crtend.o: No such file or directory
>>
>> /opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux=
-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
>> cannot find crtn.o: No such file or directory
>>
>> collect2: error: ld returned 1 exit status
>>
>> configure:3223: $? =3D 1
>>
>> configure:3261: result: no
>>
>> configure: failed program was:
>>
>> | /* confdefs.h */
>>
>> | #define PACKAGE_NAME "teste"
>>
>> | #define PACKAGE_TARNAME "teste"
>>
>> | #define PACKAGE_VERSION "0.1.0"
>>
>> | #define PACKAGE_STRING "teste 0.1.0"
>>
>> | #define PACKAGE_BUGREPORT ""
>>
>> | #define PACKAGE_URL ""
>>
>> | #define PACKAGE "teste"
>>
>> | #define VERSION "0.1.0"
>>
>> | /* end confdefs.h.  */
>>
>> |
>>
>> | int
>>
>> | main ()
>>
>> | {
>>
>> |
>>
>> |   ;
>>
>> |   return 0;
>>
>> | }
>>
>> configure:3266: error: in `/home/prjs/compsis0001/workspace/teste':
>>
>> configure:3268: error: C compiler cannot create executables
>>
>> See `config.log' for more details
>>
>>
>>
>> ## ---------------- ##
>>
>> ## Cache variables. ##
>>
>> ## ---------------- ##
>>
>> ...
>>
>> ...
>>
>> ...
>>
>> ## ----------------- ##
>>
>> ## Output variables. ##
>>
>> ## ----------------- ##
>>
>> ...
>>
>> ...
>>
>> ...
>>
>> /* confdefs.h */
>>
>> #define PACKAGE_NAME "teste"
>>
>> #define PACKAGE_TARNAME "teste"
>>
>> #define PACKAGE_VERSION "0.1.0"
>>
>> #define PACKAGE_STRING "teste 0.1.0"
>>
>> #define PACKAGE_BUGREPORT ""
>>
>> #define PACKAGE_URL ""
>>
>> #define PACKAGE "teste"
>>
>> #define VERSION "0.1.0"
>>
>>
>>
>> configure: exit 77
>>
>>
>>
>>
>>
>> Some One can Help me?
>>
>>
>>
>> Thanks
>>
>>
>>
>> --
>> Raul Rosetto Mu=F1oz
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
>
> --
> Flavio de Castro Alves Filho
>
> flavio.alves@gmail.com
> www.linuxembarcado.com
> Twitter: http://twitter.com/#!/fraviofii LinkedIn profile: www.linkedin.c=
om/in/flaviocastroalves



--
Flavio de Castro Alves Filho

flavio.alves@gmail.com
www.linuxembarcado.com
Twitter: http://twitter.com/#!/fraviofii
LinkedIn profile: www.linkedin.com/in/flaviocastroalves

