Return-Path: <Bjorn.Arnelid@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 50CD6E01246
	for <yocto@yoctoproject.org>; Fri, 18 Jan 2013 05:16:43 -0800 (PST)
Received: from [172.16.140.18] (172.16.140.18) by smtp.enea.com (172.21.1.208)
	with Microsoft SMTP Server id 14.2.318.1;
	Fri, 18 Jan 2013 14:16:41 +0100
Message-ID: <50F94B39.9070503@enea.com>
Date: Fri, 18 Jan 2013 14:16:41 +0100
From: =?windows-1252?Q?Bj=F6rn_Arnelid?= <bjorn.arnelid@enea.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: Flavio Castro Alves Filho <flavio.alves@gmail.com>
References: <CANmViri9tO7geBequNB5V7bVgJi49VyzybdbLodrSvbaoYJ0fw@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C57DD45A6@ORSMSX101.amr.corp.intel.com>
	<CAFNBftf-+ae4b4a0yf+t60RXYmheD7f7wr1v38t9JQM40eK1aw@mail.gmail.com>
	<50F9465D.8010706@enea.com>
	<CAFNBftcJpburTOAuyU2hU0JR6D4jHos-ngd1-bqyX-w5bExW4A@mail.gmail.com>
In-Reply-To: <CAFNBftcJpburTOAuyU2hU0JR6D4jHos-ngd1-bqyX-w5bExW4A@mail.gmail.com>
Received-SPF: None (SESTOEX08.enea.se: bjorn.arnelid@enea.com does not
	designate permitted sender hosts)
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Fri, 18 Jan 2013 13:16:44 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: quoted-printable

Yeah, sounds like problems with your installation.
remove eclipse and try to set it up again - or try to manually copy=20
autotools into your plugin folder.

regards,
Bj=F6rn

2013-01-18 14:10, Flavio Castro Alves Filho skrev:
> The problem right now is not regarding compilation issues, but Eclipse
> plugin is not launching the compilation correctly.
>
> I tried to install Eclipse Indigo, with the instructions from Yocto dev m=
anual.
>
> I installed Eclipse, its components and when I try to install the
> Yocto component, I have the following error:
>
> Cannot complete the install because one or more required items could
> not be found.
>    Software being installed: Yocto Plugin for Eclipse
> 1.2.0.201210102158 (org.yocto.sdk.feature.group 1.2.0.201210102158)
>    Missing requirement: Yocto Plugin for Eclipse 1.2.0.201210102158
> (org.yocto.sdk.feature.group 1.2.0.201210102158) requires
> 'org.eclipse.cdt.autotools.core 1.1.0' but it could not be found
>
> I searched for this component in my eclipse/plugins directory and it
> is not available.
>
> But ... when I see the installed components in Eclipse (from the UI),
> it indicates that autotools for CDT is installed.
>
>
> 2013/1/18 Bj=F6rn Arnelid <bjorn.arnelid@enea.com>:
>> 2013-01-18 13:24, Flavio Castro Alves Filho skrev:
>>
>>> Hello,
>>>
>>> I'm facing similar issue (in fact, Raul and I are working together on
>>> this deploy).
>>>
>>> I'll describe the steps that we followed. Our system is Ubuntu 12.04
>>> LTS and our Eclipse version is Juno.
>>>
>>> 1) We build core-image-minimal using poky 1.3 (danny), meta-ti,
>>> meta-openembedded/meta-oe
>>>
>>> 2) We build toolchain from the build system, using meta-ide-support
>>>
>>> 3) We downloaded Eclipse classic from Eclipse's website
>>>
>>> 4) We installed the Eclipse's components, according to Yocto dev
>>> manual instructions
>>>
>>> 5) We installed Yocto ADT plugin from the repository (version 1.3)
>>>
>>> We extracted the generated root filesystem in another directory, in
>>> order to properly configure the Eclipse Yocto plugin.
>>>
>>> For now, installation worked fine. The problem occurs when we try to
>>> build the hello world application.
>>>
>>> We followed the steps from the Yocto dev manual.
>>>
>>> Before starting the build, I lanched the reconfigure option. After,
>>> when started to build, the error message indicates 'no make target'.
>>>
>>> Looking at the files, I could see that autogen.sh was executed, but
>>> the configure script don't. I believe that there is some isse where
>>> the IDE is not executing the configure script.
>>>
>>> Do you have any clue about how to solve this issue?
>>>
>>> Best regards,
>>>
>>> Flavio
>>>
>>>
>>> 2013/1/17 Zhang, Jessica <jessica.zhang@intel.com>:
>>>> Hi Raul,
>>>>
>>>>
>>>>
>>>> Before we can help you debug your issue, can you provide more info
>>>> regarding
>>>> to:
>>>>
>>>>
>>>>
>>>> 1.       How did you setup your cross toolchain? ADT installer or
>>>> toolchain
>>>> tarball (your build if so, how did you build it.  If not, which one di=
d
>>>> you
>>>> download?)
>>>>
>>>> 2.       And also, please provide more info what=92s your toolchain se=
tup
>>>> in
>>>> Eclipse, specifically the Yocto Project ADT preference config under
>>>> Window?
>>>>
>>>> Thanks,
>>>>
>>>> Jessica
>>>>
>>>>
>>>>
>>>> From: yocto-bounces@yoctoproject.org
>>>> [mailto:yocto-bounces@yoctoproject.org]
>>>> On Behalf Of Raul Rosetto Munoz
>>>> Sent: Thursday, January 17, 2013 4:10 AM
>>>> To: yocto@yoctoproject.org
>>>> Subject: [yocto] Eclipse Plugin
>>>>
>>>>
>>>>
>>>> Hello All,
>>>>
>>>> I followed the ADT manual to create a eclipse environment.
>>>>
>>>>
>>>>
>>>> After create a default Hello World Yocto project I get some compile
>>>> errors.
>>>>
>>>>
>>>>
>>>> At file config.log I saw some errors lines:
>>>>
>>>>
>>>>
>>>>
>>>>
>>>> configure:2861: checking for arm-poky-linux-gnueabi-gcc
>>>>
>>>> configure:2888: result: arm-poky-linux-gnueabi-gcc  -march=3Darmv5te  =
-marm
>>>> -mthumb-interwork  -mtune=3Darm926ej-s
>>>> --sysroot=3D/home/prjs/compsis0001/philinux/arm
>>>>
>>>> configure:3157: checking for C compiler version
>>>>
>>>> configure:3166: arm-poky-linux-gnueabi-gcc  -march=3Darmv5te  -marm
>>>> -mthumb-interwork  -mtune=3Darm926ej-s
>>>> --sysroot=3D/home/prjs/compsis0001/philinux/arm --version >&5
>>>>
>>>> arm-poky-linux-gnueabi-gcc (GCC) 4.7.2
>>>>
>>>> Copyright (C) 2012 Free Software Foundation, Inc.
>>>>
>>>> This is free software; see the source for copying conditions.  There i=
s
>>>> NO
>>>>
>>>> warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR
>>>> PURPOSE.
>>>>
>>>>
>>>>
>>>> configure:3177: $? =3D 0
>>>>
>>>> configure:3166: arm-poky-linux-gnueabi-gcc  -march=3Darmv5te  -marm
>>>> -mthumb-interwork  -mtune=3Darm926ej-s
>>>> --sysroot=3D/home/prjs/compsis0001/philinux/arm -v >&5
>>>>
>>>> Using built-in specs.
>>>>
>>>> COLLECT_GCC=3Darm-poky-linux-gnueabi-gcc
>>>>
>>>>
>>>> COLLECT_LTO_WRAPPER=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/li=
bexec/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/lto-wrapp=
er
>>>>
>>>> Target: arm-poky-linux-gnueabi
>>>>
>>>> Configured with:
>>>>
>>>> /srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-arm/build/bu=
ild/tmp/work-shared/gcc-4.7.2-r13/gcc-4.7.2/configure
>>>> --build=3Dx86_64-linux --host=3Di686-pokysdk-linux
>>>> --target=3Darm-poky-linux-gnueabi
>>>> --prefix=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr
>>>> --exec_prefix=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr
>>>>
>>>> --bindir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/bin/armv5te-p=
oky-linux-gnueabi
>>>>
>>>> --sbindir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/bin/armv5te-=
poky-linux-gnueabi
>>>>
>>>> --libexecdir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/a=
rmv5te-poky-linux-gnueabi
>>>> --datadir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/share
>>>> --sysconfdir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/etc
>>>> --sharedstatedir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/com
>>>> --localstatedir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/var
>>>>
>>>> --libdir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/lib/armv5te-p=
oky-linux-gnueabi
>>>> --includedir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/include
>>>> --oldincludedir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/includ=
e
>>>> --infodir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/share/info
>>>> --mandir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/share/man
>>>> --disable-silent-rules --disable-dependency-tracking
>>>>
>>>> --with-libtool-sysroot=3D/srv/home/pokybuild/yocto-autobuilder/yocto-s=
lave/nightly-arm/build/build/tmp/sysroots/i686-nativesdk-pokysdk-linux
>>>> --with-gnu-ld --enable-shared --enable-languages=3Dc,c++
>>>> --enable-threads=3Dposix --disable-multilib --enable-c99 --enable-long=
-long
>>>> --enable-symvers=3Dgnu --enable-libstdcxx-pch
>>>> --program-prefix=3Darm-poky-linux-gnueabi- --without-local-prefix
>>>> --enable-target-optspace --enable-lto --enable-libssp --disable-bootst=
rap
>>>> --disable-libgomp --disable-libmudflap --with-system-zlib
>>>> --with-linker-hash-style=3Dgnu --with-ppl=3Dno --with-cloog=3Dno
>>>> --enable-checking=3Drelease --enable-cheaders=3Dc_global --with-float=
=3Dsoft
>>>>
>>>> --with-gxx-include-dir=3D/opt/poky/1.3/sysroots/armv5te-poky-linux-gnu=
eabi/usr/include/c++
>>>>
>>>> --with-build-time-tools=3D/srv/home/pokybuild/yocto-autobuilder/yocto-=
slave/nightly-arm/build/build/tmp/sysroots/x86_64-linux/usr/arm-poky-linux-=
gnueabi/bin
>>>> --with-sysroot=3D/opt/poky/1.3/sysroots/armv5te-poky-linux-gnueabi
>>>>
>>>> --with-build-sysroot=3D/srv/home/pokybuild/yocto-autobuilder/yocto-sla=
ve/nightly-arm/build/build/tmp/sysroots/qemuarm
>>>> --disable-libunwind-exceptions --disable-libssp --disable-libgomp
>>>> --disable-libmudflap
>>>>
>>>> --with-mpfr=3D/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightl=
y-arm/build/build/tmp/sysroots/i686-nativesdk-pokysdk-linux
>>>>
>>>> --with-mpc=3D/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly=
-arm/build/build/tmp/sysroots/i686-nativesdk-pokysdk-linux
>>>> --enable-nls
>>>>
>>>> Thread model: posix
>>>>
>>>> gcc version 4.7.2 (GCC)
>>>>
>>>> configure:3177: $? =3D 0
>>>>
>>>> configure:3166: arm-poky-linux-gnueabi-gcc  -march=3Darmv5te  -marm
>>>> -mthumb-interwork  -mtune=3Darm926ej-s
>>>> --sysroot=3D/home/prjs/compsis0001/philinux/arm -V >&5
>>>>
>>>> arm-poky-linux-gnueabi-gcc: error: unrecognized command line option '-=
V'
>>>>
>>>> arm-poky-linux-gnueabi-gcc: fatal error: no input files
>>>>
>>>> compilation terminated.
>>>>
>>>> configure:3177: $? =3D 1
>>>>
>>>> configure:3166: arm-poky-linux-gnueabi-gcc  -march=3Darmv5te  -marm
>>>> -mthumb-interwork  -mtune=3Darm926ej-s
>>>> --sysroot=3D/home/prjs/compsis0001/philinux/arm -qversion >&5
>>>>
>>>> arm-poky-linux-gnueabi-gcc: error: unrecognized command line option
>>>> '-qversion'
>>>>
>>>> arm-poky-linux-gnueabi-gcc: fatal error: no input files
>>>>
>>>> compilation terminated.
>>>>
>>>> configure:3177: $? =3D 1
>>>>
>>>> configure:3197: checking whether the C compiler works
>>>>
>>>> configure:3219: arm-poky-linux-gnueabi-gcc  -march=3Darmv5te  -marm
>>>> -mthumb-interwork  -mtune=3Darm926ej-s
>>>> --sysroot=3D/home/prjs/compsis0001/philinux/arm  -g -O0
>>>> --sysroot=3D/opt/poky/1.3  --sysroot=3D/opt/poky/1.3  --sysroot=3D/opt=
/poky/1.3
>>>> conftest.c  >&5
>>>>
>>>>
>>>> /opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-lin=
ux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
>>>> cannot find crt1.o: No such file or directory
>>>>
>>>>
>>>> /opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-lin=
ux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
>>>> cannot find crti.o: No such file or directory
>>>>
>>>>
>>>> /opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-lin=
ux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
>>>> cannot find crtbegin.o: No such file or directory
>>>>
>>>>
>>>> /opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-lin=
ux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
>>>> cannot find -lgcc
>>>>
>>>>
>>>> /opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-lin=
ux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
>>>> cannot find -lgcc_s
>>>>
>>>>
>>>> /opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-lin=
ux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
>>>> cannot find -lc
>>>>
>>>>
>>>> /opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-lin=
ux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
>>>> cannot find -lgcc
>>>>
>>>>
>>>> /opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-lin=
ux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
>>>> cannot find -lgcc_s
>>>>
>>>>
>>>> /opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-lin=
ux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
>>>> cannot find crtend.o: No such file or directory
>>>>
>>>>
>>>> /opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-lin=
ux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
>>>> cannot find crtn.o: No such file or directory
>>>>
>>>> collect2: error: ld returned 1 exit status
>>>>
>>>> configure:3223: $? =3D 1
>>>>
>>>> configure:3261: result: no
>>>>
>>>> configure: failed program was:
>>>>
>>>> | /* confdefs.h */
>>>>
>>>> | #define PACKAGE_NAME "teste"
>>>>
>>>> | #define PACKAGE_TARNAME "teste"
>>>>
>>>> | #define PACKAGE_VERSION "0.1.0"
>>>>
>>>> | #define PACKAGE_STRING "teste 0.1.0"
>>>>
>>>> | #define PACKAGE_BUGREPORT ""
>>>>
>>>> | #define PACKAGE_URL ""
>>>>
>>>> | #define PACKAGE "teste"
>>>>
>>>> | #define VERSION "0.1.0"
>>>>
>>>> | /* end confdefs.h.  */
>>>>
>>>> |
>>>>
>>>> | int
>>>>
>>>> | main ()
>>>>
>>>> | {
>>>>
>>>> |
>>>>
>>>> |   ;
>>>>
>>>> |   return 0;
>>>>
>>>> | }
>>>>
>>>> configure:3266: error: in `/home/prjs/compsis0001/workspace/teste':
>>>>
>>>> configure:3268: error: C compiler cannot create executables
>>>>
>>>> See `config.log' for more details
>>>>
>>>>
>>>>
>>>> ## ---------------- ##
>>>>
>>>> ## Cache variables. ##
>>>>
>>>> ## ---------------- ##
>>>>
>>>> ...
>>>>
>>>> ...
>>>>
>>>> ...
>>>>
>>>> ## ----------------- ##
>>>>
>>>> ## Output variables. ##
>>>>
>>>> ## ----------------- ##
>>>>
>>>> ...
>>>>
>>>> ...
>>>>
>>>> ...
>>>>
>>>> /* confdefs.h */
>>>>
>>>> #define PACKAGE_NAME "teste"
>>>>
>>>> #define PACKAGE_TARNAME "teste"
>>>>
>>>> #define PACKAGE_VERSION "0.1.0"
>>>>
>>>> #define PACKAGE_STRING "teste 0.1.0"
>>>>
>>>> #define PACKAGE_BUGREPORT ""
>>>>
>>>> #define PACKAGE_URL ""
>>>>
>>>> #define PACKAGE "teste"
>>>>
>>>> #define VERSION "0.1.0"
>>>>
>>>>
>>>>
>>>> configure: exit 77
>>>>
>>>>
>>>>
>>>>
>>>>
>>>> Some One can Help me?
>>>>
>>>>
>>>>
>>>> Thanks
>>>>
>>>>
>>>>
>>>> --
>>>> Raul Rosetto Mu=F1oz
>>>>
>>>>
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>
>> Don't you need to develop against a -sdk image?
>> Try building a debug image, extract the file-system and point to that wh=
en
>> developing.
>>
>> regards,
>> Bj=F6rn
>>
>>
>> --
>> Bj=F6rn Arnelid | Software Engineer
>> M: +46-70-971 4459  | bj=F6rn.arnelid@xdin.com
>> XDIN AB | Knarrarn=E4sgatan 7 | SE-164 40 Kista | xdin.com
>>
>> Xdin develop and deliver expertise through committed engineering and IT
>> consultants.
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>


--=20
Bj=F6rn Arnelid | Software Engineer
M: +46-70-971 4459  | bj=F6rn.arnelid@xdin.com
XDIN AB | Knarrarn=E4sgatan 7 | SE-164 40 Kista | xdin.com

Xdin develop and deliver expertise through committed engineering and IT con=
sultants.


