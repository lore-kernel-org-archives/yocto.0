Return-Path: <munoz0raul@gmail.com>
Received: from mail-ie0-f181.google.com (mail-ie0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76FA9E006D7
	for <yocto@yoctoproject.org>; Thu, 17 Jan 2013 04:09:46 -0800 (PST)
Received: by mail-ie0-f181.google.com with SMTP id 16so4595725iea.26
	for <yocto@yoctoproject.org>; Thu, 17 Jan 2013 04:09:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=SIPKeoIvuHZhxaVvN9/SeuEIe7MaGtNngDNqRfmMrSE=;
	b=LnWRvCL+j8A1rSjFFa/HHmhcsO3/caBmpurnWUS6jZZF74cW1NcKJMoGAwDZVLVZkM
	8K7apwN8vrCXioh9BuKxp87heAMRvnA+ggbusMOMez8kRyw3Ua/CWqC0pCk0jpFJRvkD
	ePaK3cf/WJOn9M3BVPjomERwXLE+zk/O6jUm9veI3jRm107612D+pGgYIrPRXPsOcgFt
	/jtFlK6v0FFoRzcaf8jcQYw0spyTmrGb3iAp4AZVkl5l+Sxy9XgnGapr2GbI1cDhWCDJ
	iXKxlCcGhGn7k11P98FeWBj9ycU9YSLjoYehaevWYxPbgc4/dq4rLP9ZynGIJGmnCkWk
	Wlnw==
MIME-Version: 1.0
X-Received: by 10.50.217.129 with SMTP id oy1mr7534638igc.26.1358424586046;
	Thu, 17 Jan 2013 04:09:46 -0800 (PST)
Received: by 10.64.147.40 with HTTP; Thu, 17 Jan 2013 04:09:45 -0800 (PST)
Date: Thu, 17 Jan 2013 10:09:45 -0200
Message-ID: <CANmViri9tO7geBequNB5V7bVgJi49VyzybdbLodrSvbaoYJ0fw@mail.gmail.com>
From: Raul Rosetto Munoz <munoz0raul@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Eclipse Plugin
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
X-List-Received-Date: Thu, 17 Jan 2013 12:09:46 -0000
X-Groupsio-MsgNum: 11581
Content-Type: multipart/mixed; boundary=14dae934052be7cd0b04d37ade14

--14dae934052be7cd0b04d37ade14
Content-Type: multipart/alternative; boundary=14dae934052be7ccf604d37ade12

--14dae934052be7ccf604d37ade12
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello All,
I followed the ADT manual to create a eclipse environment.

After create a default Hello World Yocto project I get some compile errors.

At file config.log I saw some errors lines:


configure:2861: checking for arm-poky-linux-gnueabi-gcc
configure:2888: result: arm-poky-linux-gnueabi-gcc  -march=3Darmv5te  -marm
-mthumb-interwork  -mtune=3Darm926ej-s
--sysroot=3D/home/prjs/compsis0001/philinux/arm
configure:3157: checking for C compiler version
configure:3166: arm-poky-linux-gnueabi-gcc  -march=3Darmv5te  -marm
-mthumb-interwork  -mtune=3Darm926ej-s
--sysroot=3D/home/prjs/compsis0001/philinux/arm --version >&5
arm-poky-linux-gnueabi-gcc (GCC) 4.7.2
Copyright (C) 2012 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

configure:3177: $? =3D 0
configure:3166: arm-poky-linux-gnueabi-gcc  -march=3Darmv5te  -marm
-mthumb-interwork  -mtune=3Darm926ej-s
--sysroot=3D/home/prjs/compsis0001/philinux/arm -v >&5
Using built-in specs.
COLLECT_GCC=3Darm-poky-linux-gnueabi-gcc
COLLECT_LTO_WRAPPER=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec=
/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/lto-wrapper
Target: arm-poky-linux-gnueabi
Configured with:
/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-arm/build/build/t=
mp/work-shared/gcc-4.7.2-r13/gcc-4.7.2/configure
--build=3Dx86_64-linux --host=3Di686-pokysdk-linux
--target=3Darm-poky-linux-gnueabi
--prefix=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr
--exec_prefix=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr
--bindir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/bin/armv5te-poky-l=
inux-gnueabi
--sbindir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/bin/armv5te-poky-=
linux-gnueabi
--libexecdir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5t=
e-poky-linux-gnueabi
--datadir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/share
--sysconfdir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/etc
--sharedstatedir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/com
--localstatedir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/var
--libdir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/lib/armv5te-poky-l=
inux-gnueabi
--includedir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/include
--oldincludedir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/include
--infodir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/share/info
--mandir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/share/man
--disable-silent-rules --disable-dependency-tracking
--with-libtool-sysroot=3D/srv/home/pokybuild/yocto-autobuilder/yocto-slave/=
nightly-arm/build/build/tmp/sysroots/i686-nativesdk-pokysdk-linux
--with-gnu-ld --enable-shared --enable-languages=3Dc,c++
--enable-threads=3Dposix --disable-multilib --enable-c99 --enable-long-long
--enable-symvers=3Dgnu --enable-libstdcxx-pch
--program-prefix=3Darm-poky-linux-gnueabi- --without-local-prefix
--enable-target-optspace --enable-lto --enable-libssp --disable-bootstrap
--disable-libgomp --disable-libmudflap --with-system-zlib
--with-linker-hash-style=3Dgnu --with-ppl=3Dno --with-cloog=3Dno
--enable-checking=3Drelease --enable-cheaders=3Dc_global --with-float=3Dsof=
t
--with-gxx-include-dir=3D/opt/poky/1.3/sysroots/armv5te-poky-linux-gnueabi/=
usr/include/c++
--with-build-time-tools=3D/srv/home/pokybuild/yocto-autobuilder/yocto-slave=
/nightly-arm/build/build/tmp/sysroots/x86_64-linux/usr/arm-poky-linux-gnuea=
bi/bin
--with-sysroot=3D/opt/poky/1.3/sysroots/armv5te-poky-linux-gnueabi
--with-build-sysroot=3D/srv/home/pokybuild/yocto-autobuilder/yocto-slave/ni=
ghtly-arm/build/build/tmp/sysroots/qemuarm
--disable-libunwind-exceptions --disable-libssp --disable-libgomp
--disable-libmudflap
--with-mpfr=3D/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-arm=
/build/build/tmp/sysroots/i686-nativesdk-pokysdk-linux
--with-mpc=3D/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-arm/=
build/build/tmp/sysroots/i686-nativesdk-pokysdk-linux
--enable-nls
Thread model: posix
gcc version 4.7.2 (GCC)
configure:3177: $? =3D 0
configure:3166: arm-poky-linux-gnueabi-gcc  -march=3Darmv5te  -marm
-mthumb-interwork  -mtune=3Darm926ej-s
--*sysroot=3D/home/prjs/compsis0001/philinux/arm
-V >&5*
*arm-poky-linux-gnueabi-gcc: error: unrecognized command line option '-V'*
*arm-poky-linux-gnueabi-gcc: fatal error: no input files*
*compilation terminated.*
*configure:3177: $? =3D 1*
*configure:3166: arm-poky-linux-gnueabi-gcc  -march=3Darmv5te  -marm
-mthumb-interwork  -mtune=3Darm926ej-s
--sysroot=3D/home/prjs/compsis0001/philinux/arm -qversion >&5*
*arm-poky-linux-gnueabi-gcc: error: unrecognized command line option
'-qversion'*
*arm-poky-linux-gnueabi-gcc: fatal error: no input files*
*compilation terminated.*
*configure:3177: $? =3D 1*
*configure:3197: checking whether the C compiler works*
configure:3219: arm-poky-linux-gnueabi-gcc  -march=3Darmv5te  -marm
-mthumb-interwork  -mtune=3Darm926ej-s
--sysroot=3D/home/prjs/compsis0001/philinux/arm  -g -O0
 --sysroot=3D/opt/poky/1.3  --sysroot=3D/opt/poky/1.3  --sysroot=3D/opt/pok=
y/1.3
conftest.c  >&5
/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
cannot find crt1.o: No such file or directory
/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
cannot find crti.o: No such file or directory
/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
cannot find crtbegin.o: No such file or directory
/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
cannot find -lgcc
/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
cannot find -lgcc_s
/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
cannot find -lc
/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
cannot find -lgcc
/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
cannot find -lgcc_s
/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
cannot find crtend.o: No such file or directory
/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld:
cannot find crtn.o: No such file or directory
collect2: error: ld returned 1 exit status
configure:3223: $? =3D 1
configure:3261: result: no
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "teste"
| #define PACKAGE_TARNAME "teste"
| #define PACKAGE_VERSION "0.1.0"
| #define PACKAGE_STRING "teste 0.1.0"
| #define PACKAGE_BUGREPORT ""
| #define PACKAGE_URL ""
| #define PACKAGE "teste"
| #define VERSION "0.1.0"
| /* end confdefs.h.  */
|
| int
| main ()
| {
|
|   ;
|   return 0;
| }
configure:3266: error: in `/home/prjs/compsis0001/workspace/teste':
configure:3268: error: C compiler cannot create executables
See `config.log' for more details

## ---------------- ##
## Cache variables. ##
## ---------------- ##
...
...
...
## ----------------- ##
## Output variables. ##
## ----------------- ##
...
...
...
/* confdefs.h */
#define PACKAGE_NAME "teste"
#define PACKAGE_TARNAME "teste"
#define PACKAGE_VERSION "0.1.0"
#define PACKAGE_STRING "teste 0.1.0"
#define PACKAGE_BUGREPORT ""
#define PACKAGE_URL ""
#define PACKAGE "teste"
#define VERSION "0.1.0"

configure: exit 77


Some One can Help me?

Thanks

--=20
*Raul Rosetto Mu=F1oz*

--14dae934052be7ccf604d37ade12
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello All,</div><div>I followed the ADT manual t=
o create a eclipse environment.</div><div><br></div><div>After create a def=
ault Hello World Yocto project I get some compile errors.</div><div><br></d=
iv>
<div>At file config.log I saw some errors lines:</div><div><br></div><div><=
br></div><div><font face=3D"&#39;courier new&#39;, monospace">configure:286=
1: checking for arm-poky-linux-gnueabi-gcc</font></div><div><font face=3D"&=
#39;courier new&#39;, monospace">configure:2888: result: arm-poky-linux-gnu=
eabi-gcc =A0-march=3Darmv5te =A0-marm -mthumb-interwork =A0-mtune=3Darm926e=
j-s --sysroot=3D/home/prjs/compsis0001/philinux/arm</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">configure:3157: checki=
ng for C compiler version</font></div><div><font face=3D"&#39;courier new&#=
39;, monospace">configure:3166: arm-poky-linux-gnueabi-gcc =A0-march=3Darmv=
5te =A0-marm -mthumb-interwork =A0-mtune=3Darm926ej-s --sysroot=3D/home/prj=
s/compsis0001/philinux/arm --version &gt;&amp;5</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">arm-poky-linux-gnueabi=
-gcc (GCC) 4.7.2</font></div><div><font face=3D"&#39;courier new&#39;, mono=
space">Copyright (C) 2012 Free Software Foundation, Inc.</font></div><div><=
font face=3D"&#39;courier new&#39;, monospace">This is free software; see t=
he source for copying conditions. =A0There is NO</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">warranty; not even for=
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.</font></div><div><fon=
t face=3D"&#39;courier new&#39;, monospace"><br></font></div><div><font fac=
e=3D"&#39;courier new&#39;, monospace">configure:3177: $? =3D 0</font></div=
>
<div><font face=3D"&#39;courier new&#39;, monospace">configure:3166: arm-po=
ky-linux-gnueabi-gcc =A0-march=3Darmv5te =A0-marm -mthumb-interwork =A0-mtu=
ne=3Darm926ej-s --sysroot=3D/home/prjs/compsis0001/philinux/arm -v &gt;&amp=
;5</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">Using built-in specs.<=
/font></div><div><font face=3D"&#39;courier new&#39;, monospace">COLLECT_GC=
C=3Darm-poky-linux-gnueabi-gcc</font></div><div><font face=3D"&#39;courier =
new&#39;, monospace">COLLECT_LTO_WRAPPER=3D/opt/poky/1.3/sysroots/i686-poky=
sdk-linux/usr/libexec/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi=
/4.7.2/lto-wrapper</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">Target: arm-poky-linux=
-gnueabi</font></div><div><font face=3D"&#39;courier new&#39;, monospace">C=
onfigured with: /srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-a=
rm/build/build/tmp/work-shared/gcc-4.7.2-r13/gcc-4.7.2/configure --build=3D=
x86_64-linux --host=3Di686-pokysdk-linux --target=3Darm-poky-linux-gnueabi =
--prefix=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr --exec_prefix=3D/o=
pt/poky/1.3/sysroots/i686-pokysdk-linux/usr --bindir=3D/opt/poky/1.3/sysroo=
ts/i686-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi --sbindir=3D/opt/p=
oky/1.3/sysroots/i686-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi --li=
bexecdir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/libexec/armv5te-po=
ky-linux-gnueabi --datadir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/=
share --sysconfdir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/etc --shared=
statedir=3D/opt/poky/1.3/sysroots/i686-pokysdk-linux/com --localstatedir=3D=
/opt/poky/1.3/sysroots/i686-pokysdk-linux/var --libdir=3D/opt/poky/1.3/sysr=
oots/i686-pokysdk-linux/usr/lib/armv5te-poky-linux-gnueabi --includedir=3D/=
opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/include --oldincludedir=3D/opt=
/poky/1.3/sysroots/i686-pokysdk-linux/usr/include --infodir=3D/opt/poky/1.3=
/sysroots/i686-pokysdk-linux/usr/share/info --mandir=3D/opt/poky/1.3/sysroo=
ts/i686-pokysdk-linux/usr/share/man --disable-silent-rules --disable-depend=
ency-tracking --with-libtool-sysroot=3D/srv/home/pokybuild/yocto-autobuilde=
r/yocto-slave/nightly-arm/build/build/tmp/sysroots/i686-nativesdk-pokysdk-l=
inux --with-gnu-ld --enable-shared --enable-languages=3Dc,c++ --enable-thre=
ads=3Dposix --disable-multilib --enable-c99 --enable-long-long --enable-sym=
vers=3Dgnu --enable-libstdcxx-pch --program-prefix=3Darm-poky-linux-gnueabi=
- --without-local-prefix --enable-target-optspace --enable-lto --enable-lib=
ssp --disable-bootstrap --disable-libgomp --disable-libmudflap --with-syste=
m-zlib --with-linker-hash-style=3Dgnu --with-ppl=3Dno --with-cloog=3Dno --e=
nable-checking=3Drelease --enable-cheaders=3Dc_global --with-float=3Dsoft -=
-with-gxx-include-dir=3D/opt/poky/1.3/sysroots/armv5te-poky-linux-gnueabi/u=
sr/include/c++ --with-build-time-tools=3D/srv/home/pokybuild/yocto-autobuil=
der/yocto-slave/nightly-arm/build/build/tmp/sysroots/x86_64-linux/usr/arm-p=
oky-linux-gnueabi/bin --with-sysroot=3D/opt/poky/1.3/sysroots/armv5te-poky-=
linux-gnueabi --with-build-sysroot=3D/srv/home/pokybuild/yocto-autobuilder/=
yocto-slave/nightly-arm/build/build/tmp/sysroots/qemuarm --disable-libunwin=
d-exceptions --disable-libssp --disable-libgomp --disable-libmudflap --with=
-mpfr=3D/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-arm/build=
/build/tmp/sysroots/i686-nativesdk-pokysdk-linux --with-mpc=3D/srv/home/pok=
ybuild/yocto-autobuilder/yocto-slave/nightly-arm/build/build/tmp/sysroots/i=
686-nativesdk-pokysdk-linux --enable-nls</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">Thread model: posix</f=
ont></div><div><font face=3D"&#39;courier new&#39;, monospace">gcc version =
4.7.2 (GCC)=A0</font></div><div><font face=3D"&#39;courier new&#39;, monosp=
ace">configure:3177: $? =3D 0</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">configure:3166: arm-po=
ky-linux-gnueabi-gcc =A0-march=3Darmv5te =A0-marm -mthumb-interwork =A0-mtu=
ne=3Darm926ej-s --<b><font color=3D"#ff0000">sysroot=3D/home/prjs/compsis00=
01/philinux/arm -V &gt;&amp;5</font></b></font></div>
<div><font face=3D"&#39;courier new&#39;, monospace" color=3D"#ff0000"><b>a=
rm-poky-linux-gnueabi-gcc: error: unrecognized command line option &#39;-V&=
#39;</b></font></div><div><font face=3D"&#39;courier new&#39;, monospace" c=
olor=3D"#ff0000"><b>arm-poky-linux-gnueabi-gcc: fatal error: no input files=
</b></font></div>
<div><font face=3D"&#39;courier new&#39;, monospace" color=3D"#ff0000"><b>c=
ompilation terminated.</b></font></div><div><font face=3D"&#39;courier new&=
#39;, monospace" color=3D"#ff0000"><b>configure:3177: $? =3D 1</b></font></=
div><div>
<font face=3D"&#39;courier new&#39;, monospace" color=3D"#ff0000"><b>config=
ure:3166: arm-poky-linux-gnueabi-gcc =A0-march=3Darmv5te =A0-marm -mthumb-i=
nterwork =A0-mtune=3Darm926ej-s --sysroot=3D/home/prjs/compsis0001/philinux=
/arm -qversion &gt;&amp;5</b></font></div>
<div><font face=3D"&#39;courier new&#39;, monospace" color=3D"#ff0000"><b>a=
rm-poky-linux-gnueabi-gcc: error: unrecognized command line option &#39;-qv=
ersion&#39;</b></font></div><div><font face=3D"&#39;courier new&#39;, monos=
pace" color=3D"#ff0000"><b>arm-poky-linux-gnueabi-gcc: fatal error: no inpu=
t files</b></font></div>
<div><font face=3D"&#39;courier new&#39;, monospace" color=3D"#ff0000"><b>c=
ompilation terminated.</b></font></div><div><font face=3D"&#39;courier new&=
#39;, monospace" color=3D"#ff0000"><b>configure:3177: $? =3D 1</b></font></=
div><div>
<font face=3D"&#39;courier new&#39;, monospace" color=3D"#ff0000"><b>config=
ure:3197: checking whether the C compiler works</b></font></div><div><font =
face=3D"&#39;courier new&#39;, monospace">configure:3219: arm-poky-linux-gn=
ueabi-gcc =A0-march=3Darmv5te =A0-marm -mthumb-interwork =A0-mtune=3Darm926=
ej-s --sysroot=3D/home/prjs/compsis0001/philinux/arm =A0-g -O0 =A0--sysroot=
=3D/opt/poky/1.3 =A0--sysroot=3D/opt/poky/1.3 =A0--sysroot=3D/opt/poky/1.3 =
conftest.c =A0&gt;&amp;5</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">/opt/poky/1.3/sysroots=
/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gnueabi/gcc/arm-poky-lin=
ux-gnueabi/4.7.2/ld: cannot find crt1.o: No such file or directory</font></=
div>
<div><font face=3D"&#39;courier new&#39;, monospace">/opt/poky/1.3/sysroots=
/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gnueabi/gcc/arm-poky-lin=
ux-gnueabi/4.7.2/ld: cannot find crti.o: No such file or directory</font></=
div>
<div><font face=3D"&#39;courier new&#39;, monospace">/opt/poky/1.3/sysroots=
/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gnueabi/gcc/arm-poky-lin=
ux-gnueabi/4.7.2/ld: cannot find crtbegin.o: No such file or directory</fon=
t></div>
<div><font face=3D"&#39;courier new&#39;, monospace">/opt/poky/1.3/sysroots=
/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gnueabi/gcc/arm-poky-lin=
ux-gnueabi/4.7.2/ld: cannot find -lgcc</font></div><div><font face=3D"&#39;=
courier new&#39;, monospace">/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/=
libexec/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: can=
not find -lgcc_s</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">/opt/poky/1.3/sysroots=
/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gnueabi/gcc/arm-poky-lin=
ux-gnueabi/4.7.2/ld: cannot find -lc</font></div><div><font face=3D"&#39;co=
urier new&#39;, monospace">/opt/poky/1.3/sysroots/i686-pokysdk-linux/usr/li=
bexec/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: canno=
t find -lgcc</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">/opt/poky/1.3/sysroots=
/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gnueabi/gcc/arm-poky-lin=
ux-gnueabi/4.7.2/ld: cannot find -lgcc_s</font></div><div><font face=3D"&#3=
9;courier new&#39;, monospace">/opt/poky/1.3/sysroots/i686-pokysdk-linux/us=
r/libexec/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: c=
annot find crtend.o: No such file or directory</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">/opt/poky/1.3/sysroots=
/i686-pokysdk-linux/usr/libexec/armv5te-poky-linux-gnueabi/gcc/arm-poky-lin=
ux-gnueabi/4.7.2/ld: cannot find crtn.o: No such file or directory</font></=
div>
<div><font face=3D"&#39;courier new&#39;, monospace">collect2: error: ld re=
turned 1 exit status</font></div><div><font face=3D"&#39;courier new&#39;, =
monospace">configure:3223: $? =3D 1</font></div><div><font face=3D"&#39;cou=
rier new&#39;, monospace">configure:3261: result: no</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">configure: failed prog=
ram was:</font></div><div><font face=3D"&#39;courier new&#39;, monospace">|=
 /* confdefs.h */</font></div><div><font face=3D"&#39;courier new&#39;, mon=
ospace">| #define PACKAGE_NAME &quot;teste&quot;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">| #define PACKAGE_TARN=
AME &quot;teste&quot;</font></div><div><font face=3D"&#39;courier new&#39;,=
 monospace">| #define PACKAGE_VERSION &quot;0.1.0&quot;</font></div><div><f=
ont face=3D"&#39;courier new&#39;, monospace">| #define PACKAGE_STRING &quo=
t;teste 0.1.0&quot;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">| #define PACKAGE_BUGR=
EPORT &quot;&quot;</font></div><div><font face=3D"&#39;courier new&#39;, mo=
nospace">| #define PACKAGE_URL &quot;&quot;</font></div><div><font face=3D"=
&#39;courier new&#39;, monospace">| #define PACKAGE &quot;teste&quot;</font=
></div>
<div><font face=3D"&#39;courier new&#39;, monospace">| #define VERSION &quo=
t;0.1.0&quot;</font></div><div><font face=3D"&#39;courier new&#39;, monospa=
ce">| /* end confdefs.h. =A0*/</font></div><div><font face=3D"&#39;courier =
new&#39;, monospace">|=A0</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">| int</font></div><div=
><font face=3D"&#39;courier new&#39;, monospace">| main ()</font></div><div=
><font face=3D"&#39;courier new&#39;, monospace">| {</font></div><div><font=
 face=3D"&#39;courier new&#39;, monospace">|=A0</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">| =A0 ;</font></div><d=
iv><font face=3D"&#39;courier new&#39;, monospace">| =A0 return 0;</font></=
div><div><font face=3D"&#39;courier new&#39;, monospace">| }</font></div><d=
iv><font face=3D"&#39;courier new&#39;, monospace">configure:3266: error: i=
n `/home/prjs/compsis0001/workspace/teste&#39;:</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">configure:3268: error:=
 C compiler cannot create executables</font></div><div><font face=3D"&#39;c=
ourier new&#39;, monospace">See `config.log&#39; for more details</font></d=
iv>
<div><font face=3D"&#39;courier new&#39;, monospace"><br></font></div><div>=
<font face=3D"&#39;courier new&#39;, monospace">## ---------------- ##</fon=
t></div><div><font face=3D"&#39;courier new&#39;, monospace">## Cache varia=
bles. ##</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">## ---------------- ##=
</font></div><div><font face=3D"&#39;courier new&#39;, monospace">...</font=
></div><div><font face=3D"&#39;courier new&#39;, monospace">...</font></div=
><div>
<font face=3D"&#39;courier new&#39;, monospace">...</font></div><div><font =
face=3D"&#39;courier new&#39;, monospace">## ----------------- ##</font></d=
iv><div><font face=3D"&#39;courier new&#39;, monospace">## Output variables=
. ##</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">## ----------------- #=
#</font></div><div><font face=3D"&#39;courier new&#39;, monospace">...</fon=
t></div><div><font face=3D"&#39;courier new&#39;, monospace">...</font></di=
v>
<div><font face=3D"&#39;courier new&#39;, monospace">...</font></div><div><=
font face=3D"&#39;courier new&#39;, monospace">/* confdefs.h */</font></div=
><div><font face=3D"&#39;courier new&#39;, monospace">#define PACKAGE_NAME =
&quot;teste&quot;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">#define PACKAGE_TARNAM=
E &quot;teste&quot;</font></div><div><font face=3D"&#39;courier new&#39;, m=
onospace">#define PACKAGE_VERSION &quot;0.1.0&quot;</font></div><div><font =
face=3D"&#39;courier new&#39;, monospace">#define PACKAGE_STRING &quot;test=
e 0.1.0&quot;</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">#define PACKAGE_BUGREP=
ORT &quot;&quot;</font></div><div><font face=3D"&#39;courier new&#39;, mono=
space">#define PACKAGE_URL &quot;&quot;</font></div><div><font face=3D"&#39=
;courier new&#39;, monospace">#define PACKAGE &quot;teste&quot;</font></div=
>
<div><font face=3D"&#39;courier new&#39;, monospace">#define VERSION &quot;=
0.1.0&quot;</font></div><div><font face=3D"&#39;courier new&#39;, monospace=
"><br></font></div><div><font face=3D"&#39;courier new&#39;, monospace">con=
figure: exit 77</font></div>
<div><br></div><div><br></div><div>Some One can Help me?</div><div><br></di=
v><div>Thanks=A0</div><div><br></div>-- <br><b>Raul Rosetto Mu=F1oz</b>
</div></div>

--14dae934052be7ccf604d37ade12--

--14dae934052be7cd0b04d37ade14
Content-Type: application/octet-stream; name="config.log"
Content-Disposition: attachment; filename="config.log"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_hc1ux7hp0

VGhpcyBmaWxlIGNvbnRhaW5zIGFueSBtZXNzYWdlcyBwcm9kdWNlZCBieSBjb21waWxlcnMgd2hp
bGUKcnVubmluZyBjb25maWd1cmUsIHRvIGFpZCBkZWJ1Z2dpbmcgaWYgY29uZmlndXJlIG1ha2Vz
IGEgbWlzdGFrZS4KCkl0IHdhcyBjcmVhdGVkIGJ5IHRlc3RlIGNvbmZpZ3VyZSAwLjEuMCwgd2hp
Y2ggd2FzCmdlbmVyYXRlZCBieSBHTlUgQXV0b2NvbmYgMi42OS4gIEludm9jYXRpb24gY29tbWFu
ZCBsaW5lIHdhcwoKICAkIC9ob21lL3ByanMvY29tcHNpczAwMDEvd29ya3NwYWNlL3Rlc3RlL2Nv
bmZpZ3VyZSAtLXdpdGgtbGlidG9vbC1zeXNyb290PS9vcHQvcG9reS8xLjMgLS1ob3N0PWFybS1w
b2t5LWxpbnV4LWdudWVhYmkgLS1idWlsZD1pNjg2LWxpbnV4IC0tdGFyZ2V0PWFybS1wb2t5LWxp
bnV4LWdudWVhYmkKCiMjIC0tLS0tLS0tLSAjIwojIyBQbGF0Zm9ybS4gIyMKIyMgLS0tLS0tLS0t
ICMjCgpob3N0bmFtZSA9IHVidW50dQp1bmFtZSAtbSA9IGk2ODYKdW5hbWUgLXIgPSAzLjIuMC0y
My1nZW5lcmljLXBhZQp1bmFtZSAtcyA9IExpbnV4CnVuYW1lIC12ID0gIzM2LVVidW50dSBTTVAg
VHVlIEFwciAxMCAyMjoxOTowOSBVVEMgMjAxMgoKL3Vzci9iaW4vdW5hbWUgLXAgPSB1bmtub3du
Ci9iaW4vdW5hbWUgLVggICAgID0gdW5rbm93bgoKL2Jpbi9hcmNoICAgICAgICAgICAgICA9IHVu
a25vd24KL3Vzci9iaW4vYXJjaCAtayAgICAgICA9IHVua25vd24KL3Vzci9jb252ZXgvZ2V0c3lz
aW5mbyA9IHVua25vd24KL3Vzci9iaW4vaG9zdGluZm8gICAgICA9IHVua25vd24KL2Jpbi9tYWNo
aW5lICAgICAgICAgICA9IHVua25vd24KL3Vzci9iaW4vb3NsZXZlbCAgICAgICA9IHVua25vd24K
L2Jpbi91bml2ZXJzZSAgICAgICAgICA9IHVua25vd24KClBBVEg6IC9vcHQvcG9reS8xLjMvc3lz
cm9vdHMvaTY4Ni1wb2t5c2RrLWxpbnV4L3Vzci9iaW4KUEFUSDogL29wdC9wb2t5LzEuMy9zeXNy
b290cy9pNjg2LXBva3lzZGstbGludXgvdXNyL2Jpbi9hcm12NXRlLXBva3ktbGludXgtZ251ZWFi
aQpQQVRIOiAvdXNyL2xpYi9saWdodGRtL2xpZ2h0ZG0KUEFUSDogL3Vzci9sb2NhbC9zYmluClBB
VEg6IC91c3IvbG9jYWwvYmluClBBVEg6IC91c3Ivc2JpbgpQQVRIOiAvdXNyL2JpbgpQQVRIOiAv
c2JpbgpQQVRIOiAvYmluClBBVEg6IC91c3IvZ2FtZXMKCgojIyAtLS0tLS0tLS0tLSAjIwojIyBD
b3JlIHRlc3RzLiAjIwojIyAtLS0tLS0tLS0tLSAjIwoKY29uZmlndXJlOjIwMDI6IGxvYWRpbmcg
c2l0ZSBzY3JpcHQgL29wdC9wb2t5LzEuMy9zaXRlLWNvbmZpZy1hcm12NXRlLXBva3ktbGludXgt
Z251ZWFiaQp8IGFjX2N2X2NfbGl0dGxlZW5kaWFuPSR7YWNfY3ZfY19saXR0bGVlbmRpYW49eWVz
fQp8IGFjX2N2X2NfYmlnZW5kaWFuPSR7YWNfY3ZfY19iaWdlbmRpYW49bm99CnwgCnwgIyBsaWJu
ZXQKfCBhY19jdl9saWJuZXRfZW5kaWFuZXNzPSR7YWNfY3ZfbGlibmV0X2VuZGlhbmVzcz1saWx9
CnwgCnwgIyBnZW5lcmFsCnwgYWNfY3Zfc2l6ZW9mX2NoYXI9JHthY19jdl9zaXplb2ZfY2hhcj0x
fQp8IGFjX2N2X3NpemVvZl91bnNpZ25lZF9jaGFyPSR7YWNfY3Zfc2l6ZW9mX3Vuc2lnbmVkX2No
YXI9MX0KfCBhY19jdl9zaXplb2ZfY2hhcl9wPSR7YWNfY3Zfc2l6ZW9mX2NoYXJfcD00fQp8IGFj
X2N2X3NpemVvZl91bnNpZ25lZF9jaGFyX3A9JHthY19jdl9zaXplb2ZfdW5zaWduZWRfY2hhcl9w
PTR9CnwgYWNfY3Zfc2l6ZW9mX2ludD0ke2FjX2N2X3NpemVvZl9pbnQ9NH0KfCBhY19jdl9zaXpl
b2ZfdW5zaWduZWRfaW50PSR7YWNfY3Zfc2l6ZW9mX3Vuc2lnbmVkX2ludD00fQp8IGFjX2N2X3Np
emVvZl9pbnRfcD0ke2FjX2N2X3NpemVvZl9pbnRfcD00fQp8IGFjX2N2X3NpemVvZl9sb25nPSR7
YWNfY3Zfc2l6ZW9mX2xvbmc9NH0KfCBhY19jdl9zaXplb2ZfdW5zaWduZWRfbG9uZz0ke2FjX2N2
X3NpemVvZl91bnNpZ25lZF9sb25nPTR9CnwgYWNfY3Zfc2l6ZW9mX2xvbmdfbG9uZz0ke2FjX2N2
X3NpemVvZl9sb25nX2xvbmc9OH0KfCBhY19jdl9zaXplb2ZfdW5zaWduZWRfbG9uZ19sb25nPSR7
YWNfY3Zfc2l6ZW9mX3Vuc2lnbmVkX2xvbmdfbG9uZz04fQp8IGFjX2N2X3NpemVvZl9zaG9ydD0k
e2FjX2N2X3NpemVvZl9zaG9ydD0yfQp8IGFjX2N2X3NpemVvZl91bnNpZ25lZF9zaG9ydD0ke2Fj
X2N2X3NpemVvZl91bnNpZ25lZF9zaG9ydD0yfQp8IGFjX2N2X3NpemVvZl9zaXplX3Q9JHthY19j
dl9zaXplb2Zfc2l6ZV90PTR9CnwgYWNfY3Zfc2l6ZW9mX3NzaXplX3Q9JHthY19jdl9zaXplb2Zf
c3NpemVfdD00fQp8IGFjX2N2X3NpemVvZl92b2lkX3A9JHthY19jdl9zaXplb2Zfdm9pZF9wPTR9
CnwgYWNfY3Zfc2l6ZW9mX2xvbmdfcD0ke2FjX2N2X3NpemVvZl9sb25nX3A9NH0KfCBhY19jdl9z
aXplb2ZfZmxvYXQ9JHthY19jdl9zaXplb2ZfZmxvYXQ9NH0KfCBhY19jdl9zaXplb2Zfb2ZmX3Q9
JHthY19jdl9zaXplb2Zfb2ZmX3Q9NH0KfCBhY19jdl9zaXplb2ZfdWlkX3Q9JHthY19jdl9zaXpl
b2ZfdWlkX3Q9NH0KfCBhY19jdl9zaXplb2ZfZ2lkX3Q9JHthY19jdl9zaXplb2ZfZ2lkX3Q9NH0K
fCBhY19jdl9zaXplb2ZfaW5vX3Q9JHthY19jdl9zaXplb2ZfaW5vX3Q9NH0KfCBhY19jdl9zaXpl
b2ZfZGV2X3Q9JHthY19jdl9zaXplb2ZfZGV2X3Q9OH0KfCBhY19jdl9mdW5jX2xzdGF0X2RlcmVm
ZXJlbmNlc19zbGFzaGVkX3N5bWxpbms9JHthY19jdl9mdW5jX2xzdGF0X2RlcmVmZXJlbmNlc19z
bGFzaGVkX3N5bWxpbms9eWVzfQp8IGFjX2N2X2Z1bmNfbHN0YXRfZW1wdHlfc3RyaW5nX2J1Zz0k
e2FjX2N2X2Z1bmNfbHN0YXRfZW1wdHlfc3RyaW5nX2J1Zz1ub30KfCBhY19jdl9mdW5jX3B0aHJl
YWRfa2V5X2RlbGV0ZT0ke2FjX2N2X2Z1bmNfcHRocmVhZF9rZXlfZGVsZXRlPXllc30KfCBhY19j
dl9mdW5jX3NldHZidWZfcmV2ZXJzZWQ9JHthY19jdl9mdW5jX3NldHZidWZfcmV2ZXJzZWQ9bm99
CnwgYWNfY3ZfZnVuY19zdGF0X2VtcHR5X3N0cmluZ19idWc9JHthY19jdl9mdW5jX3N0YXRfZW1w
dHlfc3RyaW5nX2J1Zz1ub30KfCBhY19jdl9mdW5jX3N0YXRfaWdub3Jlc190cmFpbGluZ19zbGFz
aD0ke2FjX2N2X2Z1bmNfc3RhdF9pZ25vcmVzX3RyYWlsaW5nX3NsYXNoPW5vfQp8IGFjX2N2X3Zh
X3ZhbF9jb3B5PSR7YWNfY3ZfdmFfdmFsX2NvcHk9eWVzfQp8IAp8IGFjX2N2X2hlYWRlcl9uZXRp
bmV0X3NjdHBfaD0ke2FjX2N2X2hlYWRlcl9uZXRpbmV0X3NjdHBfaD1ub30KfCBhY19jdl9oZWFk
ZXJfbmV0aW5ldF9zY3RwX3Vpb19oPSR7YWNfY3ZfaGVhZGVyX25ldGluZXRfc2N0cF91aW9faD1u
b30KfCBhY19jdl9saW51eF92ZXJzPSR7YWNfY3ZfbGludXhfdmVycz0yfQp8IGFjX2N2X3NjdHA9
JHthY19jdl9zY3RwPW5vfQp8IAp8IGFwcl9jdl9wcm9jZXNzX3NoYXJlZF93b3Jrcz0ke2Fwcl9j
dl9wcm9jZXNzX3NoYXJlZF93b3Jrcz1ub30KfCBhcHJfY3ZfdGNwX25vZGVsYXlfd2l0aF9jb3Jr
PSR7YXByX2N2X3RjcF9ub2RlbGF5X3dpdGhfY29yaz15ZXN9CnwgCnwgYWNfY3ZfcGF0aF9FU0Rf
Q09ORklHPW5vCnwgbGZfY3Zfc2FuZV9yZWFsbG9jPXllcwp8IGptX2N2X2Z1bmNfZ2V0dGltZW9m
ZGF5X2Nsb2JiZXI9bm8KfCBzYW1iYV9jdl9IQVZFX0dFVFRJTUVPRkRBWV9UWj15ZXMKfCBiZl9s
c2JmPTEKfCBhY19jdl91Y2hhcj0ke2FjX2N2X3VjaGFyPW5vfQp8IGFjX2N2X3VpbnQ9JHthY19j
dl91aW50PXllc30KfCBhY19jdl91bG9uZz0ke2FjX2N2X3Vsb25nPXllc30KfCBhY19jdl91c2hv
cnQ9JHthY19jdl91c2hvcnQ9eWVzfQp8IAp8ICMgYXVkYWNpdHkKfCBhY19jdl9maWxlX2xpYl9z
cmNfbGlibWFkX2ZyYW1lX2g9JHthY19jdl9maWxlX2xpYl9zcmNfbGlibWFkX2ZyYW1lX2g9bm99
CnwgCnwgIyBiYXNoCnwgYWNfY3ZfY19sb25nX2RvdWJsZT0ke2FjX2N2X2NfbG9uZ19kb3VibGU9
eWVzfQp8IGJhc2hfY3ZfZnVuY19zaWdzZXRqbXA9JHtiYXNoX2N2X2Z1bmNfc2lnc2V0am1wPW1p
c3Npbmd9CnwgCnwgIyBjbGFtYXYKfCBjbGFtYXZfYXZfZnVuY193b3JraW5nX3NucHJpbnRmX2xv
bmc9JHtjbGFtYXZfYXZfZnVuY193b3JraW5nX3NucHJpbnRmX2xvbmc9eWVzfQp8IGNsYW1hdl9h
dl9oYXZlX2luX3BvcnRfdD0ke2NsYW1hdl9hdl9oYXZlX2luX3BvcnRfdD15ZXN9CnwgY2xhbWF2
X2F2X2hhdmVfaW5fYWRkcl90PSR7Y2xhbWF2X2F2X2hhdmVfaW5fYWRkcl90PXllc30KfCBhY19j
dl9mdW5jX21tYXBfZml4ZWRfbWFwcGVkPSR7YWNfY3ZfZnVuY19tbWFwX2ZpeGVkX21hcHBlZD15
ZXN9CnwgCnwgIyBjdnMKfCBjdnNfY3ZfZnVuY19wcmludGZfcHRyPSR7Y3ZzX2N2X2Z1bmNfcHJp
bnRmX3B0cj15ZXN9CnwgCnwgIyBkYgp8IGRiX2N2X2FsaWducF90PSR7ZGJfY3ZfYWxpZ25wX3Q9
J3Vuc2lnbmVkIGxvbmcnfQp8IGRiX2N2X2FsaWduX3Q9JHtkYl9jdl9hbGlnbl90PSd1bnNpZ25l
ZCBsb25nIGxvbmcnfQp8IGRiX2N2X2ZjbnRsX2Zfc2V0ZmQ9JHtkYl9jdl9mY250bF9mX3NldGZk
PXllc30KfCBkYl9jdl9zcHJpbnRmX2NvdW50PSR7ZGJfY3Zfc3ByaW50Zl9jb3VudD15ZXN9Cnwg
CnwgIyBELUJVUwp8IGFjX2N2X2Z1bmNfcG9zaXhfZ2V0cHduYW1fcj0ke2FjX2N2X2Z1bmNfcG9z
aXhfZ2V0cHduYW1fcj15ZXN9CnwgCnwgIyBldHRlcmNhcAp8IGV0dGVyY2FwX2N2X3R5cGVfc29j
a2xlbl90PSR7ZXR0ZXJjYXBfY3ZfdHlwZV9zb2NrbGVuX3Q9eWVzfQp8IAp8ICMgZ2V0dGV4dAp8
IGFtX2N2X2Z1bmNfd29ya2luZ19nZXRsaW5lPSR7YW1fY3ZfZnVuY193b3JraW5nX2dldGxpbmU9
eWVzfQp8IAp8ICMgZ2xpYgp8IGdsaWJfY3Zfc2l6ZW9mX3N5c3RlbV90aHJlYWQ9JHtnbGliX2N2
X3NpemVvZl9zeXN0ZW1fdGhyZWFkPTR9CnwgZ2xpYl9jdl9oYXNfX2lubGluZT0ke2dsaWJfY3Zf
aGFzX19pbmxpbmU9eWVzfQp8IGdsaWJfY3ZfaGFzX19pbmxpbmVfXz0ke2dsaWJfY3ZfaGFzX19p
bmxpbmVfXz15ZXN9CnwgZ2xpYl9jdl9oYXNpbmxpbmU9JHtnbGliX2N2X2hhc2lubGluZT15ZXN9
CnwgZ2xpYl9jdl9zYW5lX3JlYWxsb2M9JHtnbGliX2N2X3NhbmVfcmVhbGxvYz15ZXN9CnwgZ2xp
Yl9jdl9zaXplb2ZfZ211dGV4PSR7Z2xpYl9jdl9zaXplb2ZfZ211dGV4PTI0fQp8IGdsaWJfY3Zf
c3lzX3B0aHJlYWRfY29uZF90aW1lZHdhaXRfcG9zaXg9JHtnbGliX2N2X3N5c19wdGhyZWFkX2Nv
bmRfdGltZWR3YWl0X3Bvc2l4PXllc30KfCBnbGliX2N2X3N5c19wdGhyZWFkX2dldHNwZWNpZmlj
X3Bvc2l4PSR7Z2xpYl9jdl9zeXNfcHRocmVhZF9nZXRzcGVjaWZpY19wb3NpeD15ZXN9CnwgZ2xp
Yl9jdl9zeXNfcHRocmVhZF9tdXRleF90cnlsb2NrX3Bvc2l4PSR7Z2xpYl9jdl9zeXNfcHRocmVh
ZF9tdXRleF90cnlsb2NrX3Bvc2l4PXllc30KfCBnbGliX2N2X3VzY29yZT0ke2dsaWJfY3ZfdXNj
b3JlPW5vfQp8IGdsaWJfY3ZfdmFfdmFsX2NvcHk9JHtnbGliX2N2X3ZhX3ZhbF9jb3B5PXllc30K
fCBnbGliX2N2X3J0bGRnbG9iYWxfYnJva2VuPSR7Z2xpYl9jdl9ydGxkZ2xvYmFsX2Jyb2tlbj15
ZXN9CnwgCnwgIyBnbGliLTIuMAp8IGdsaWJfY3Zfc3RhY2tfZ3Jvd3M9JHtnbGliX2N2X3N0YWNr
X2dyb3dzPW5vfQp8IHV0aWxzX2N2X3N5c19vcGVuX21heD0ke3V0aWxzX2N2X3N5c19vcGVuX21h
eD0xMDE1fQp8IGdsaWJfY3ZfdXNlX3BpZF9zdXJyb2dhdGU9JHtnbGliX2N2X3VzZV9waWRfc3Vy
cm9nYXRlPXllc30KfCBhY19jdl9hbGlnbm9mX2d1aW50MzI9NAp8IGFjX2N2X2FsaWdub2ZfZ3Vp
bnQ2ND00CnwgYWNfY3ZfYWxpZ25vZl91bnNpZ25lZF9sb25nPTQKfCAKfCAjIGd1aWxlCnwgYWNf
Y3ZfdWNoYXI9JHthY19jdl91Y2hhcj1ub30KfCBhY19jdl91aW50PSR7YWNfY3ZfdWludD15ZXN9
CnwgYWNfY3ZfdWxvbmc9JHthY19jdl91bG9uZz15ZXN9CnwgYWNfY3ZfdXNob3J0PSR7YWNfY3Zf
dXNob3J0PXllc30KfCAKfCAjIGludGVyY29tCnwgYWNfY3ZfZnVuY19mbm1hdGNoX3dvcmtzPSR7
YWNfY3ZfZnVuY19mbm1hdGNoX3dvcmtzPXllc30KfCAKfCAjIGppa2VzLW5hdGl2ZQp8IGFjX2N2
X3NpemVvZl93Y2hhcl90PTQKfCAKfCAjIGxmdHAKfCBhY19jdl9uZWVkX3RyaW89JHthY19jdl9u
ZWVkX3RyaW89bm99CnwgbGZ0cF9jdl92YV92YWxfY29weT0ke2xmdHBfY3ZfdmFfdmFsX2NvcHk9
eWVzfQp8IAp8ICMgbGliaWRsCnwgbGliSURMX2N2X2xvbmdfbG9uZ19mb3JtYXQ9JHtsaWJJRExf
Y3ZfbG9uZ19sb25nX2Zvcm1hdD1sbH0KfCAKfCAjIGxpYm5ldCAKfCBhY19jdl9sYmxfdW5hbGln
bmVkX2ZhaWw9JHthY19jdl9sYmxfdW5hbGlnbmVkX2ZhaWw9bm99CnwgYWNfbGlibmV0X2hhdmVf
cGFja2V0X3NvY2tldD0ke2FjX2xpYm5ldF9oYXZlX3BhY2tldF9zb2NrZXQ9eWVzfQp8IAp8ICMg
bGlieGZjZTR1dGlsCnwgd2l0aF9icm9rZW5fcHV0ZW52PSR7d2l0aF9icm9rZW5fcHV0ZW52PW5v
fQp8IAp8ICMgbXlzcWwKfCBteXNxbF9jdl9mdW5jX2F0b21pY19zdWI9JHtteXNxbF9jdl9mdW5j
X2F0b21pY19zdWI9eWVzfQp8IG15c3FsX2N2X2Z1bmNfYXRvbWljX2FkZD0ke215c3FsX2N2X2Z1
bmNfYXRvbWljX2FkZD15ZXN9CnwgCnwgIyBPUkJpdDIKfCBhY19jdl9hbGlnbm9mX0NPUkJBX2Jv
b2xlYW49MQp8IGFjX2N2X2FsaWdub2ZfQ09SQkFfY2hhcj0xCnwgYWNfY3ZfYWxpZ25vZl9DT1JC
QV9kb3VibGU9NAp8IGFjX2N2X2FsaWdub2ZfQ09SQkFfZmxvYXQ9NAp8IGFjX2N2X2FsaWdub2Zf
Q09SQkFfbG9uZz00CnwgYWNfY3ZfYWxpZ25vZl9DT1JCQV9sb25nX2RvdWJsZT00CnwgYWNfY3Zf
YWxpZ25vZl9DT1JCQV9sb25nX2xvbmc9NAp8IGFjX2N2X2FsaWdub2ZfQ09SQkFfb2N0ZXQ9MQp8
IGFjX2N2X2FsaWdub2ZfQ09SQkFfcG9pbnRlcj00CnwgYWNfY3ZfYWxpZ25vZl9DT1JCQV9zaG9y
dD0yCnwgYWNfY3ZfYWxpZ25vZl9DT1JCQV9zdHJ1Y3Q9NAp8IGFjX2N2X2FsaWdub2ZfQ09SQkFf
d2NoYXI9Mgp8IAp8ICMgcGhwCnwgYWNfY3ZfcHJlYWQ9JHthY19jdl9wcmVhZD1ub30KfCBhY19j
dl9wd3JpdGU9JHthY19jdl9wd3JpdGU9bm99CnwgcGhwX2N2X2xpYl9jb29raWVfaW9fZnVuY3Rp
b25zX3VzZV9vZmY2NF90PSR7cGhwX2N2X2xpYl9jb29raWVfaW9fZnVuY3Rpb25zX3VzZV9vZmY2
NF90PXllc30KfCAKfCAjIHJzeW5jCnwgcnN5bmNfY3ZfSEFWRV9CUk9LRU5fTEFSR0VGSUxFPSR7
cnN5bmNfY3ZfSEFWRV9CUk9LRU5fTEFSR0VGSUxFPW5vfQp8IHJzeW5jX2N2X0hBVkVfU09DS0VU
UEFJUj0ke3JzeW5jX2N2X0hBVkVfU09DS0VUUEFJUj15ZXN9CnwgcnN5bmNfY3ZfSEFWRV9MT05H
TE9ORz0ke3JzeW5jX2N2X0hBVkVfTE9OR0xPTkc9eWVzfQp8IHJzeW5jX2N2X0hBVkVfT0ZGNjRf
VD0ke3JzeW5jX2N2X0hBVkVfT0ZGNjRfVD1ub30KfCByc3luY19jdl9IQVZFX1NIT1JUX0lOT19U
PSR7cnN5bmNfY3ZfSEFWRV9TSE9SVF9JTk9fVD1ub30KfCByc3luY19jdl9IQVZFX1VOU0lHTkVE
X0NIQVI9JHtyc3luY19jdl9IQVZFX1VOU0lHTkVEX0NIQVI9bm99CnwgcnN5bmNfY3ZfSEFWRV9C
Uk9LRU5fUkVBRERJUj0ke3JzeW5jX2N2X0hBVkVfQlJPS0VOX1JFQURESVI9bm99CnwgcnN5bmNf
Y3ZfSEFWRV9HRVRUSU1FT0ZEQVlfVFo9JHtyc3luY19jdl9IQVZFX0dFVFRJTUVPRkRBWV9UWj15
ZXN9CnwgcnN5bmNfY3ZfSEFWRV9DOTlfVlNOUFJJTlRGPSR7cnN5bmNfY3ZfSEFWRV9DOTlfVlNO
UFJJTlRGPXllc30KfCByc3luY19jdl9IQVZFX1NFQ1VSRV9NS1NURU1QPSR7cnN5bmNfY3ZfSEFW
RV9TRUNVUkVfTUtTVEVNUD15ZXN9CnwgcnN5bmNfY3ZfUkVQTEFDRV9JTkVUX05UT0E9JHtyc3lu
Y19jdl9SRVBMQUNFX0lORVRfTlRPQT1ub30KfCByc3luY19jdl9SRVBMQUNFX0lORVRfQVRPTj0k
e3JzeW5jX2N2X1JFUExBQ0VfSU5FVF9BVE9OPW5vfQp8IAp8ICMgc2FtYmEKfCBzYW1iYV9jdl9I
QVZFX0dFVFRJTUVPRkRBWV9UWj0ke3NhbWJhX2N2X0hBVkVfR0VUVElNRU9GREFZX1RaPXllc30K
fCAKfCAjIHNjcmVlbgp8IHNjcmVlbl9jdl9zeXNfYmNvcHlfb3ZlcmxhcD0ke3NjcmVlbl9jdl9z
eXNfYmNvcHlfb3ZlcmxhcD1ub30KfCBzY3JlZW5fY3Zfc3lzX21lbWNweV9vdmVybGFwPSR7c2Ny
ZWVuX2N2X3N5c19tZW1jcHlfb3ZlcmxhcD1ub30KfCBzY3JlZW5fY3Zfc3lzX21lbW1vdmVfb3Zl
cmxhcD0ke3NjcmVlbl9jdl9zeXNfbWVtbW92ZV9vdmVybGFwPW5vfQp8IHNjcmVlbl9jdl9zeXNf
Zmlmb19icm9rZW5faW1wbD0ke3NjcmVlbl9jdl9zeXNfZmlmb19icm9rZW5faW1wbD15ZXN9Cnwg
c2NyZWVuX2N2X3N5c19maWZvX3VzYWJsZT0ke3NjcmVlbl9jdl9zeXNfZmlmb191c2FibGU9eWVz
fQp8IHNjcmVlbl9jdl9zeXNfc2VsZWN0X2Jyb2tlbl9yZXR2YWw9JHtzY3JlZW5fY3Zfc3lzX3Nl
bGVjdF9icm9rZW5fcmV0dmFsPW5vfQp8IHNjcmVlbl9jdl9zeXNfc29ja2V0c19ub2ZzPSR7c2Ny
ZWVuX2N2X3N5c19zb2NrZXRzX25vZnM9bm99Cnwgc2NyZWVuX2N2X3N5c19zb2NrZXRzX3VzYWJs
ZT0ke3NjcmVlbl9jdl9zeXNfc29ja2V0c191c2FibGU9eWVzfQp8IHNjcmVlbl9jdl9zeXNfdGVy
bWluZm9fdXNlZD0ke3NjcmVlbl9jdl9zeXNfdGVybWluZm9fdXNlZD15ZXN9CnwgCnwgIyBzbHJu
Cnwgc2xybl9jdl92YV92YWxfY29weT0ke3Nscm5fY3ZfdmFfdmFsX2NvcHk9eWVzfQp8IAp8ICMg
c3NoCnwgYWNfY3ZfaGF2ZV9zcGFjZV9kX25hbWVfaW5fc3RydWN0X2RpcmVudD0ke2FjX2N2X2Rp
cmVudF9oYXZlX3NwYWNlX2RfbmFtZT15ZXN9CnwgYWNfY3ZfaGF2ZV9icm9rZW5fc25wcmludGY9
JHthY19jdl9oYXZlX2Jyb2tlbl9zbnByaW50Zj1ub30KfCBhY19jdl9oYXZlX2FjY3JpZ2h0c19p
bl9tc2doZHI9JHthY19jdl9oYXZlX2FjY3JpZ2h0c19pbl9tc2doZHI9bm99CnwgYWNfY3ZfaGF2
ZV9jb250cm9sX2luX21zZ2hkcj0ke2FjX2N2X2hhdmVfY29udHJvbF9pbl9tc2doZHI9eWVzfQp8
IGFjX2N2X3R5cGVfc3RydWN0X3RpbWVzcGVjPSR7YWNfY3ZfdHlwZV9zdHJ1Y3RfdGltZXNwZWM9
eWVzfQp8IGFjX2N2X2hhdmVfb3BlbnB0eV9jdHR5X2J1Zz0ke2FjX2N2X2hhdmVfb3BlbnB0eV9j
dHR5X2J1Zz15ZXN9CnwgCnwgIyBzdGFydHVwLW5vdGlmaWNhdGlvbgp8IGxmX2N2X3NhbmVfcmVh
bGxvYz15ZXMKfCAKfCAjIHhmZm0KfCBqbV9jdl9mdW5jX3dvcmtpbmdfcmVhZGRpcj15ZXMKfCAK
fCAjIHhvcmcgWDExUjcKfCBhY19jdl9zeXNfbGlua2VyX2g9JHthY19jdl9zeXNfbGlua2VyX2g9
bm99CnwgYWNfY3ZfZmlsZV9fdXNyX3NoYXJlX1gxMV9zZ21sX2RlZnNfZW50PSR7YWNfY3ZfZmls
ZV9fdXNyX3NoYXJlX1gxMV9zZ21sX2RlZnNfZW50PW5vfQp8IAp8ICMgZXZvbHV0aW9uLWRhdGEt
c2VydmVyCnwgYWNfY3ZfbGliaWNvbnZfdXRmOD0ke2FjX2N2X2xpYmljb252X3V0Zjg9eWVzfQp8
IAp8ICNkYnVzCnwgYWNfY3ZfaGF2ZV9hYnN0cmFjdF9zb2NrZXRzPSR7YWNfY3ZfaGF2ZV9hYnN0
cmFjdF9zb2NrZXRzPXllc30KfCAKfCAjbGlicGNpYWNjZXNzCnwgaGF2ZV9tdHJyX2g9eWVzCnwg
CnwgI21vemlsbGEKfCBtb3pfY3Zfc2l6ZV9vZl9KU19CWVRFU19QRVJfV09SRD00CnwgbW96X2N2
X2FsaWduX29mX0pTX0FMSUdOX09GX1BPSU5URVI9NAp8IG1vel9jdl9zaXplX29mX0pTX0JZVEVT
X1BFUl9ET1VCTEU9OAp8IAp8ICNvZm9ubwp8IGFjX2N2X2xpYl9jX3NpZ25hbGZkPSR7YWNfY3Zf
bGliX2Nfc2lnbmFsZmQ9eWVzfQp8IAp8ICN1bmZzLXNlcnZlcgp8IG5mc2RfY3ZfYnJva2VuX3Nl
dGZzdWlkPSR7bmZzZF9jdl9icm9rZW5fc2V0ZnN1aWQ9MH0KfCBuZnNkX2N2X2Z1bmNfc3RhdGZz
PSR7bmZzZF9jdl9mdW5jX3N0YXRmcz1zdGF0ZnMyX2JzaXplfQp8IG5mc2RfY3ZfYnNkX3NpZ25h
bHM9JHtuZnNkX2N2X2JzZF9zaWduYWxzPXllc30KfCAjIGFwcgp8IGFjX2N2X2ZpbGVfX2Rldl96
ZXJvPSR7YWNfY3ZfZmlsZV9fZGV2X3plcm89eWVzfQp8IGFjX2N2X3NpemVvZl9waWRfdD0ke2Fj
X2N2X3NpemVvZl9waWRfdD00fQp8IAp8ICMgc2FtYmEKfCBzYW1iYV9jdl9IQVZFX0lGQUNFX0FJ
WD0ke3NhbWJhX2N2X0hBVkVfSUZBQ0VfQUlYPW5vfQp8IHNhbWJhX2N2X0hBVkVfSUZBQ0VfSUZD
T05GPSR7c2FtYmFfY3ZfSEFWRV9JRkFDRV9JRkNPTkY9eWVzfQp8IHNhbWJhX2N2X0hBVkVfSUZB
Q0VfSUZSRVE9JHtzYW1iYV9jdl9IQVZFX0lGQUNFX0lGUkVRPXllc30KfCBzYW1iYV9jdl9IQVZF
X0lSSVhfU1BFQ0lGSUNfQ0FQQUJJTElUSUVTPSR7c2FtYmFfY3ZfSEFWRV9JUklYX1NQRUNJRklD
X0NBUEFCSUxJVElFUz1ub30KfCAKfCAjIGRiCnwgZGJfY3ZfcGF0aF9hcj0ke2RiX2N2X3BhdGhf
YXI9L3Vzci9iaW4vYXJ9CnwgZGJfY3ZfcGF0aF9jaG1vZD0ke2RiX2N2X3BhdGhfY2htb2Q9L2Jp
bi9jaG1vZH0KfCBkYl9jdl9wYXRoX2NwPSR7ZGJfY3ZfcGF0aF9jcD0vYmluL2NwfQp8IGRiX2N2
X3BhdGhfbG49JHtkYl9jdl9wYXRoX2xuPS9iaW4vbG59CnwgZGJfY3ZfcGF0aF9ta2Rpcj0ke2Ri
X2N2X3BhdGhfbWtkaXI9L2Jpbi9ta2Rpcn0KfCBkYl9jdl9wYXRoX3JhbmxpYj0ke2RiX2N2X3Bh
dGhfcmFubGliPS91c3IvYmluL3JhbmxpYn0KfCBkYl9jdl9wYXRoX3JtPSR7ZGJfY3ZfcGF0aF9y
bT0vYmluL3JtfQp8IGRiX2N2X3BhdGhfc2g9JHtkYl9jdl9wYXRoX3NoPS9iaW4vc2h9CnwgZGJf
Y3ZfcGF0aF9zdHJpcD0ke2RiX2N2X3BhdGhfc3RyaXA9L3Vzci9iaW4vc3RyaXB9CnwgCnwgIyBi
YXNoCnwgYmFzaF9jdl9oYXZlX21ic3RhdGVfdD0ke2Jhc2hfY3ZfaGF2ZV9tYnN0YXRlX3Q9eWVz
fQp8IGJhc2hfY3ZfbXVzdF9yZWluc3RhbGxfc2lnaGFuZGxlcnM9JHtiYXNoX2N2X211c3RfcmVp
bnN0YWxsX3NpZ2hhbmRsZXJzPW5vfQp8IGJhc2hfY3ZfZnVuY19zdHJjb2xsX2Jyb2tlbj0ke2Jh
c2hfY3ZfZnVuY19zdHJjb2xsX2Jyb2tlbj1ub30KfCBiYXNoX2N2X2R1cDJfYnJva2VuPSR7YmFz
aF9jdl9kdXAyX2Jyb2tlbj1ub30KfCBiYXNoX2N2X29wZW5kaXJfbm90X3JvYnVzdD0ke2Jhc2hf
Y3Zfb3BlbmRpcl9ub3Rfcm9idXN0PW5vfQp8IGJhc2hfY3ZfdHlwZV9ybGltaXQ9JHtiYXNoX2N2
X3R5cGVfcmxpbWl0PXJsaW1fdH0KfCBiYXNoX2N2X2dldGVudl9yZWRlZj0ke2Jhc2hfY3ZfZ2V0
ZW52X3JlZGVmPXllc30KfCBiYXNoX2N2X3VsaW1pdF9tYXhmZHM9JHtiYXNoX2N2X3VsaW1pdF9t
YXhmZHM9eWVzfQp8IGJhc2hfY3ZfZ2V0Y3dkX2NhbGxzX3BvcGVuPSR7YmFzaF9jdl9nZXRjd2Rf
Y2FsbHNfcG9wZW49bm99CnwgYmFzaF9jdl9wcmludGZfYV9mb3JtYXQ9JHtiYXNoX2N2X3ByaW50
Zl9hX2Zvcm1hdD15ZXN9CnwgYmFzaF9jdl9wZ3JwX3BpcGU9JHtiYXNoX2N2X3BncnBfcGlwZT1u
b30KfCBiYXNoX2N2X2pvYl9jb250cm9sX21pc3Npbmc9JHtiYXNoX2N2X2pvYl9jb250cm9sX21p
c3Npbmc9cHJlc2VudH0KfCBiYXNoX2N2X3N5c19uYW1lZF9waXBlcz0ke2Jhc2hfY3Zfc3lzX25h
bWVkX3BpcGVzPXByZXNlbnR9CnwgYmFzaF9jdl91bnVzYWJsZV9ydHNpZ3M9JHtiYXNoX2N2X3Vu
dXNhYmxlX3J0c2lncz1ub30KfCAKfCAjIGNvcmV1dGlscwp8IGdsX2N2X2Z1bmNfZnN0YXRhdF96
ZXJvX2ZsYWc9JHtnbF9jdl9mdW5jX2ZzdGF0YXRfemVyb19mbGFnPXllc30KfCAKfCAjIG15c3Fs
CnwgYWNfY3Zfc3lzX3Jlc3RhcnRhYmxlX3N5c2NhbGxzPSR7YWNfY3Zfc3lzX3Jlc3RhcnRhYmxl
X3N5c2NhbGxzPXllc30KfCBhY19jdl9jb252X2xvbmdsb25nX3RvX2Zsb2F0PSR7YWNfY3ZfY29u
dl9sb25nbG9uZ190b19mbG9hdD15ZXN9CnwgCnwgIyBUQ0wKfCB0Y2xfY3ZfYXBpX3NlcmlhbD0k
e3RjbF9jdl9hcGlfc2VyaWFsPXRlcm1pb3N9CnwgCnwgIyBweXRob24KfCBhY19jdl9oYXZlX2xv
bmdfbG9uZ19mb3JtYXQ9eWVzCnwgIyBnZW5lcmFsCnwgYWNfY3ZfaGF2ZV9kZWNsX3N5c19zaWds
aXN0PSR7YWNfY3ZfaGF2ZV9kZWNsX3N5c19zaWdsaXN0PXllc30KfCBhY19jdl9mdW5jX3JlYWxs
b2Nfd29ya3M9JHthY19jdl9mdW5jX3JlYWxsb2Nfd29ya3M9eWVzfQp8IGFjX2N2X2Z1bmNfcmVh
bGxvY18wX25vbm51bGw9JHthY19jdl9mdW5jX3JlYWxsb2NfMF9ub25udWxsPXllc30KfCBhY19j
dl9mdW5jX21hbGxvY193b3Jrcz0ke2FjX2N2X2Z1bmNfbWFsbG9jX3dvcmtzPXllc30KfCBhY19j
dl9mdW5jX21hbGxvY18wX25vbm51bGw9JHthY19jdl9mdW5jX21hbGxvY18wX25vbm51bGw9eWVz
fQp8IGFjX2N2X2Z1bmNfbWVtY21wX3dvcmtpbmc9JHthY19jdl9mdW5jX21lbWNtcF93b3JraW5n
PXllc30KfCBhY19jdl9mdW5jX2dldHBncnBfdm9pZD15ZXMKfCBhY19jdl9mdW5jX3NldHBncnBf
dm9pZD15ZXMKfCBhY19jdl9mdW5jX3NldGdyZW50X3ZvaWQ9eWVzCnwgYWNfY3ZfZnVuY19nZXRn
cmdpZF9yPSR7YWNfY3ZfZnVuY19nZXRncmdpZF9yPXllc30KfCBhY19jdl9mdW5jX2dldHB3dWlk
X3I9JHthY19jdl9mdW5jX2dldHB3dWlkX3I9eWVzfQp8IGFjX2N2X2Z1bmNfcG9zaXhfZ2V0cHd1
aWRfcj0ke2FjX2N2X2Z1bmNfcG9zaXhfZ2V0cHd1aWRfcj15ZXN9CnwgYWNfY3ZfZnVuY19wb3Np
eF9nZXRncmdpZF9yPSR7YWNfY3ZfZnVuY19wb3NpeF9nZXRncmdpZF9yPXllc30KfCBhY19jdl90
eXBlX3VpZF90PXthY19jdl90eXBlX3VpZF90PXllc30KfCBhY19jdl9mdW5jX2dldGFkZHJpbmZv
PSR7YWNfY3ZfZnVuY19nZXRhZGRyaW5mbz15ZXN9CnwgCnwgIyBiYXNoCnwgYmFzaF9jdl91bmRl
cl9zeXNfc2lnbGlzdD0ke2Jhc2hfY3ZfdW5kZXJfc3lzX3NpZ2xpc3Q9eWVzfQp8IGJhc2hfY3Zf
c3lzX3NpZ2xpc3Q9JHtiYXNoX2N2X3N5c19zaWdsaXN0PXllc30KfCAKfCAjIGNsYW1hdgp8IGNs
YW1hdl9hdl9mdW5jX3dvcmtpbmdfc25wcmludGZfbG9uZz0ke2NsYW1hdl9hdl9mdW5jX3dvcmtp
bmdfc25wcmludGZfbG9uZz15ZXN9CnwgY2xhbWF2X2F2X2hhdmVfaW5fcG9ydF90PSR7Y2xhbWF2
X2F2X2hhdmVfaW5fcG9ydF90PXllc30KfCBjbGFtYXZfYXZfaGF2ZV9pbl9hZGRyX3Q9JHtjbGFt
YXZfYXZfaGF2ZV9pbl9hZGRyX3Q9eWVzfQp8IGFjX2N2X2Z1bmNfbW1hcF9maXhlZF9tYXBwZWQ9
JHthY19jdl9mdW5jX21tYXBfZml4ZWRfbWFwcGVkPXllc30KfCAKfCAjIGNvcmV1dGlscwp8IGZ1
X2N2X3N5c19zdGF0X3N0YXRmczJfYnNpemU9JHtmdV9jdl9zeXNfc3RhdF9zdGF0ZnMyX2JzaXpl
PXllc30KfCAKfCAjIGdsaWIKfCBnbGliX2N2X3N0cmxjcHk9JHtnbGliX2N2X3N0cmxjcHk9bm99
CnwgYWNfY3ZfZnVuY19wcmludGZfdW5peDk4PSR7YWNfY3ZfZnVuY19wcmludGZfdW5peDk4PXll
c30KfCBhY19jdl9mdW5jX3NucHJpbnRmX2M5OT0ke2FjX2N2X2Z1bmNfc25wcmludGZfYzk5PXll
c30KfCBhY19jdl9mdW5jX3ZzbnByaW50Zl9jOTk9JHthY19jdl9mdW5jX3ZzbnByaW50Zl9jOTk9
eWVzfQp8IGdsaWJfY3ZfY29tcGxpYW50X3Bvc2l4X21lbWFsaWduPSR7Z2xpYl9jdl9jb21wbGlh
bnRfcG9zaXhfbWVtYWxpZ249MX0KfCBnbGliX2N2X2xvbmdfbG9uZ19mb3JtYXQ9JHtnbGliX2N2
X2xvbmdfbG9uZ19mb3JtYXQ9bGx9CnwgIyBnbGliLTEueCByZXF1aXJlcyB0aGlzIGFuZCBwa2dj
b25maWctbmF0aXZlIC8gcGtnY29uZmlnLW5hdGl2ZXNkayB1c2UKfCAjIHRoYXQgdG8gYXZvaWQg
YSBkZXBlbmRlbmN5IGxvb3AuCnwgZ2xpYl9jdl9fX3ZhX2NvcHk9JHtnbGliX2N2X19fdmFfY29w
eT15ZXN9CnwgZ2xpYl9jdl92YV9jb3B5PSR7Z2xpYl9jdl92YV9jb3B5PXllc30KfCBnbGliX2N2
X2hhdmVfcXNvcnRfcj0ke2dsaWJfY3ZfaGF2ZV9xc29ydF9yPXllc30KfCAKfCAjZGJ1cy1nbGli
CnwgYWNfY3ZfaGF2ZV9hYnN0cmFjdF9zb2NrZXRzPSR7YWNfY3ZfaGF2ZV9hYnN0cmFjdF9zb2Nr
ZXRzPXllc30KfCAKfCAjIGdudWNhc2gKfCBhbV9jdl9zY2FuZl9sbGQ9JHthbV9jdl9zY2FuZl9s
bGQ9eWVzfQp8IAp8ICMgZ3VpbGUKfCBhY19jdl9mdW5jX3B0aHJlYWRfYXR0cl9nZXRzdGFjaz0k
e2FjX2N2X2Z1bmNfcHRocmVhZF9hdHRyX2dldHN0YWNrPXllc30KfCAKfCAjZ2NjLXpsaWIKfCBh
Y19jdl9mdW5jX2dldHBhZ2VzaXplPSR7YWNfY3ZfZnVuY19nZXRwYWdlc2l6ZT15ZXN9CnwgYWNf
Y3ZfZnVuY19tZW1jcHk9JHthY19jdl9mdW5jX21lbWNweT15ZXN9CnwgYWNfY3ZfZnVuY19zdHJl
cnJvcj0ke2FjX2N2X2Z1bmNfc3RyZXJyb3I9eWVzfQp8IAp8ICMgc3F1aWQKfCBhY19jdl9hZl91
bml4X2xhcmdlX2RncmFtPSR7YWNfY3ZfYWZfdW5peF9sYXJnZV9kZ3JhbT15ZXN9CnwgYWNfY3Zf
ZnVuY19zZXRyZXN1aWQ9JHthY19jdl9mdW5jX3NldHJlc3VpZD15ZXN9CnwgYWNfY3ZfZnVuY192
YV9jb3B5PSR7YWNfY3ZfZnVuY192YV9jb3B5PXllc30KfCBhY19jdl9mdW5jX19fdmFfY29weT0k
e2FjX2N2X2Z1bmNfX192YV9jb3B5PXllc30KfCBhY19jdl9lcG9sbF93b3Jrcz0ke2FjX2N2X2Vw
b2xsX3dvcmtzPXllc30KfCAKfCBhY19jdl9jaGVja19zamxqPXNzamxqCnwgCnwgIyBtNAp8IGd0
X2N2X2xvY2FsZV9mcj0ke2d0X2N2X2xvY2FsZV9mcj1mcl9GUn0KfCBnbF9jdl9mdW5jX2J0b3dj
X2VvZj0ke2dsX2N2X2Z1bmNfYnRvd2NfZW9mPXllc30KfCBnbF9jdl9mdW5jX3djcnRvbWJfcmV0
dmFsPSR7Z2xfY3ZfZnVuY193Y3J0b21iX3JldHZhbD15ZXN9CnwgZ2xfY3ZfZnVuY193Y3RvYl93
b3Jrcz0ke2dsX2N2X2Z1bmNfd2N0b2Jfd29ya3M9eWVzfQp8IGdsX2N2X2Z1bmNfbWJydG93Y19p
bmNvbXBsZXRlX3N0YXRlPSR7Z2xfY3ZfZnVuY19tYnJ0b3djX2luY29tcGxldGVfc3RhdGU9eWVz
fQp8IGdsX2N2X2Z1bmNfbWJydG93Y19zYW5pdHljaGVjaz0ke2dsX2N2X2Z1bmNfbWJydG93Y19z
YW5pdHljaGVjaz15ZXN9CnwgZ2xfY3ZfZnVuY19tYnJ0b3djX251bGxfYXJnPSR7Z2xfY3ZfZnVu
Y19tYnJ0b3djX251bGxfYXJnPXllc30KfCBnbF9jdl9mdW5jX21icnRvd2NfcmV0dmFsPSR7Z2xf
Y3ZfZnVuY19tYnJ0b3djX3JldHZhbD15ZXN9CnwgZ2xfY3ZfZnVuY19tYnJ0b3djX251bF9yZXR2
YWw9JHtnbF9jdl9mdW5jX21icnRvd2NfbnVsX3JldHZhbD15ZXN9CnwgCnwgIyB2YV9jb3B5IGFu
ZCBfdmFfY29weQp8IGFjX2N2X3ZhX2NvcHk9JHthY19jdl92YV9jb3B5PXllc30KfCBhY19jdl9f
X3ZhX2NvcHk9JHthY19jdl9fX3ZhX2NvcHk9eWVzfQp8IGFjX2N2X2Z1bmNfdmFfY29weT0ke2Fj
X2N2X2Z1bmNfdmFfY29weT15ZXN9CnwgYWNfY3ZfZnVuY19fX3ZhX2NvcHk9JHthY19jdl9mdW5j
X19fdmFfY29weT15ZXN9CnwgIyBsaWJlbGYKfCBtcl9jdl90YXJnZXRfZWxmPSR7bXJfY3ZfdGFy
Z2V0X2VsZj15ZXN9CnwgCnwgIyBOb3JtYWxseSBrZXJuZWxzIGhhdmUgL2Rldi9yYW5kb20gZW5h
YmxlZAp8IGFjX2N2X2ZpbGVfX2Rldl9yYW5kb209JHthY19jdl9maWxlX19kZXZfcmFuZG9tPXll
c30KfCAKfCAjIEF2b2lkIHN1ZG8gdG8gYXNzdW1lIHZvaWQgZm9yIHVuc2V0ZW52IGluIGNyb3Nz
IGVudmlyb25tZW50LCBvciBlbHNlIGl0IGNvbmZsaWN0cyB3aXRoCnwgIyB0YXJnZXQgc3RkbGli
LmggcHJvdG90eXBlIHdoaWNoIGZvbGxvd3MgUE9TSVggY29tcGlsaWFuY2UuIE1hcmsgZm9yIHVw
c3RyZWFtLgp8IHN1ZG9fY3ZfZnVuY191bnNldGVudl92b2lkPW5vCnwgCnwgIyBzaGFkb3cgZGly
IGluZm8sIHRvIGF2b2lkIHNlYXJjaGluZyBidWlsZCBzeXN0ZW0KfCBzaGFkb3dfY3ZfbWFpbGRp
cj0ke2xvY2Fsc3RhdGVkaXJ9L3Nwb29sL21haWwKfCBzaGFkb3dfY3ZfbWFpbGZpbGU9TWFpbGJv
eAp8IHNoYWRvd19jdl91dG1wZGlyPSR7bG9jYWxzdGF0ZWRpcn0vcnVuCnwgc2hhZG93X2N2X2xv
Z2Rpcj0ke2xvY2Fsc3RhdGVkaXJ9L2xvZwp8IHNoYWRvd19jdl9wYXNzd2RfZGlyPSR7YmluZGly
fQp8IApjb25maWd1cmU6MjE0MzogY2hlY2tpbmcgZm9yIGEgQlNELWNvbXBhdGlibGUgaW5zdGFs
bApjb25maWd1cmU6MjIxMTogcmVzdWx0OiAvdXNyL2Jpbi9pbnN0YWxsIC1jCmNvbmZpZ3VyZToy
MjIyOiBjaGVja2luZyB3aGV0aGVyIGJ1aWxkIGVudmlyb25tZW50IGlzIHNhbmUKY29uZmlndXJl
OjIyNzc6IHJlc3VsdDogeWVzCmNvbmZpZ3VyZToyMzM2OiBjaGVja2luZyBmb3IgYXJtLXBva3kt
bGludXgtZ251ZWFiaS1zdHJpcApjb25maWd1cmU6MjM2MzogcmVzdWx0OiBhcm0tcG9reS1saW51
eC1nbnVlYWJpLXN0cmlwCmNvbmZpZ3VyZToyNDI4OiBjaGVja2luZyBmb3IgYSB0aHJlYWQtc2Fm
ZSBta2RpciAtcApjb25maWd1cmU6MjQ2NzogcmVzdWx0OiAvYmluL21rZGlyIC1wCmNvbmZpZ3Vy
ZToyNDc0OiBjaGVja2luZyBmb3IgZ2F3awpjb25maWd1cmU6MjQ5MDogZm91bmQgL3Vzci9iaW4v
Z2F3awpjb25maWd1cmU6MjUwMTogcmVzdWx0OiBnYXdrCmNvbmZpZ3VyZToyNTEyOiBjaGVja2lu
ZyB3aGV0aGVyIG1ha2Ugc2V0cyAkKE1BS0UpCmNvbmZpZ3VyZToyNTM0OiByZXN1bHQ6IHllcwpj
b25maWd1cmU6MjY1NDogY2hlY2tpbmcgYnVpbGQgc3lzdGVtIHR5cGUKY29uZmlndXJlOjI2Njg6
IHJlc3VsdDogaTY4Ni1wYy1saW51eC1nbnUKY29uZmlndXJlOjI2ODg6IGNoZWNraW5nIGhvc3Qg
c3lzdGVtIHR5cGUKY29uZmlndXJlOjI3MDE6IHJlc3VsdDogYXJtLXBva3ktbGludXgtZ251ZWFi
aQpjb25maWd1cmU6Mjc0MjogY2hlY2tpbmcgaG93IHRvIHByaW50IHN0cmluZ3MKY29uZmlndXJl
OjI3Njk6IHJlc3VsdDogcHJpbnRmCmNvbmZpZ3VyZToyODAyOiBjaGVja2luZyBmb3Igc3R5bGUg
b2YgaW5jbHVkZSB1c2VkIGJ5IG1ha2UKY29uZmlndXJlOjI4MzA6IHJlc3VsdDogR05VCmNvbmZp
Z3VyZToyODYxOiBjaGVja2luZyBmb3IgYXJtLXBva3ktbGludXgtZ251ZWFiaS1nY2MKY29uZmln
dXJlOjI4ODg6IHJlc3VsdDogYXJtLXBva3ktbGludXgtZ251ZWFiaS1nY2MgIC1tYXJjaD1hcm12
NXRlICAtbWFybSAtbXRodW1iLWludGVyd29yayAgLW10dW5lPWFybTkyNmVqLXMgLS1zeXNyb290
PS9ob21lL3ByanMvY29tcHNpczAwMDEvcGhpbGludXgvYXJtCmNvbmZpZ3VyZTozMTU3OiBjaGVj
a2luZyBmb3IgQyBjb21waWxlciB2ZXJzaW9uCmNvbmZpZ3VyZTozMTY2OiBhcm0tcG9reS1saW51
eC1nbnVlYWJpLWdjYyAgLW1hcmNoPWFybXY1dGUgIC1tYXJtIC1tdGh1bWItaW50ZXJ3b3JrICAt
bXR1bmU9YXJtOTI2ZWotcyAtLXN5c3Jvb3Q9L2hvbWUvcHJqcy9jb21wc2lzMDAwMS9waGlsaW51
eC9hcm0gLS12ZXJzaW9uID4mNQphcm0tcG9reS1saW51eC1nbnVlYWJpLWdjYyAoR0NDKSA0Ljcu
MgpDb3B5cmlnaHQgKEMpIDIwMTIgRnJlZSBTb2Z0d2FyZSBGb3VuZGF0aW9uLCBJbmMuClRoaXMg
aXMgZnJlZSBzb2Z0d2FyZTsgc2VlIHRoZSBzb3VyY2UgZm9yIGNvcHlpbmcgY29uZGl0aW9ucy4g
IFRoZXJlIGlzIE5PCndhcnJhbnR5OyBub3QgZXZlbiBmb3IgTUVSQ0hBTlRBQklMSVRZIG9yIEZJ
VE5FU1MgRk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFLgoKY29uZmlndXJlOjMxNzc6ICQ/ID0gMApj
b25maWd1cmU6MzE2NjogYXJtLXBva3ktbGludXgtZ251ZWFiaS1nY2MgIC1tYXJjaD1hcm12NXRl
ICAtbWFybSAtbXRodW1iLWludGVyd29yayAgLW10dW5lPWFybTkyNmVqLXMgLS1zeXNyb290PS9o
b21lL3ByanMvY29tcHNpczAwMDEvcGhpbGludXgvYXJtIC12ID4mNQpVc2luZyBidWlsdC1pbiBz
cGVjcy4KQ09MTEVDVF9HQ0M9YXJtLXBva3ktbGludXgtZ251ZWFiaS1nY2MKQ09MTEVDVF9MVE9f
V1JBUFBFUj0vb3B0L3Bva3kvMS4zL3N5c3Jvb3RzL2k2ODYtcG9reXNkay1saW51eC91c3IvbGli
ZXhlYy9hcm12NXRlLXBva3ktbGludXgtZ251ZWFiaS9nY2MvYXJtLXBva3ktbGludXgtZ251ZWFi
aS80LjcuMi9sdG8td3JhcHBlcgpUYXJnZXQ6IGFybS1wb2t5LWxpbnV4LWdudWVhYmkKQ29uZmln
dXJlZCB3aXRoOiAvc3J2L2hvbWUvcG9reWJ1aWxkL3lvY3RvLWF1dG9idWlsZGVyL3lvY3RvLXNs
YXZlL25pZ2h0bHktYXJtL2J1aWxkL2J1aWxkL3RtcC93b3JrLXNoYXJlZC9nY2MtNC43LjItcjEz
L2djYy00LjcuMi9jb25maWd1cmUgLS1idWlsZD14ODZfNjQtbGludXggLS1ob3N0PWk2ODYtcG9r
eXNkay1saW51eCAtLXRhcmdldD1hcm0tcG9reS1saW51eC1nbnVlYWJpIC0tcHJlZml4PS9vcHQv
cG9reS8xLjMvc3lzcm9vdHMvaTY4Ni1wb2t5c2RrLWxpbnV4L3VzciAtLWV4ZWNfcHJlZml4PS9v
cHQvcG9reS8xLjMvc3lzcm9vdHMvaTY4Ni1wb2t5c2RrLWxpbnV4L3VzciAtLWJpbmRpcj0vb3B0
L3Bva3kvMS4zL3N5c3Jvb3RzL2k2ODYtcG9reXNkay1saW51eC91c3IvYmluL2FybXY1dGUtcG9r
eS1saW51eC1nbnVlYWJpIC0tc2JpbmRpcj0vb3B0L3Bva3kvMS4zL3N5c3Jvb3RzL2k2ODYtcG9r
eXNkay1saW51eC91c3IvYmluL2FybXY1dGUtcG9reS1saW51eC1nbnVlYWJpIC0tbGliZXhlY2Rp
cj0vb3B0L3Bva3kvMS4zL3N5c3Jvb3RzL2k2ODYtcG9reXNkay1saW51eC91c3IvbGliZXhlYy9h
cm12NXRlLXBva3ktbGludXgtZ251ZWFiaSAtLWRhdGFkaXI9L29wdC9wb2t5LzEuMy9zeXNyb290
cy9pNjg2LXBva3lzZGstbGludXgvdXNyL3NoYXJlIC0tc3lzY29uZmRpcj0vb3B0L3Bva3kvMS4z
L3N5c3Jvb3RzL2k2ODYtcG9reXNkay1saW51eC9ldGMgLS1zaGFyZWRzdGF0ZWRpcj0vb3B0L3Bv
a3kvMS4zL3N5c3Jvb3RzL2k2ODYtcG9reXNkay1saW51eC9jb20gLS1sb2NhbHN0YXRlZGlyPS9v
cHQvcG9reS8xLjMvc3lzcm9vdHMvaTY4Ni1wb2t5c2RrLWxpbnV4L3ZhciAtLWxpYmRpcj0vb3B0
L3Bva3kvMS4zL3N5c3Jvb3RzL2k2ODYtcG9reXNkay1saW51eC91c3IvbGliL2FybXY1dGUtcG9r
eS1saW51eC1nbnVlYWJpIC0taW5jbHVkZWRpcj0vb3B0L3Bva3kvMS4zL3N5c3Jvb3RzL2k2ODYt
cG9reXNkay1saW51eC91c3IvaW5jbHVkZSAtLW9sZGluY2x1ZGVkaXI9L29wdC9wb2t5LzEuMy9z
eXNyb290cy9pNjg2LXBva3lzZGstbGludXgvdXNyL2luY2x1ZGUgLS1pbmZvZGlyPS9vcHQvcG9r
eS8xLjMvc3lzcm9vdHMvaTY4Ni1wb2t5c2RrLWxpbnV4L3Vzci9zaGFyZS9pbmZvIC0tbWFuZGly
PS9vcHQvcG9reS8xLjMvc3lzcm9vdHMvaTY4Ni1wb2t5c2RrLWxpbnV4L3Vzci9zaGFyZS9tYW4g
LS1kaXNhYmxlLXNpbGVudC1ydWxlcyAtLWRpc2FibGUtZGVwZW5kZW5jeS10cmFja2luZyAtLXdp
dGgtbGlidG9vbC1zeXNyb290PS9zcnYvaG9tZS9wb2t5YnVpbGQveW9jdG8tYXV0b2J1aWxkZXIv
eW9jdG8tc2xhdmUvbmlnaHRseS1hcm0vYnVpbGQvYnVpbGQvdG1wL3N5c3Jvb3RzL2k2ODYtbmF0
aXZlc2RrLXBva3lzZGstbGludXggLS13aXRoLWdudS1sZCAtLWVuYWJsZS1zaGFyZWQgLS1lbmFi
bGUtbGFuZ3VhZ2VzPWMsYysrIC0tZW5hYmxlLXRocmVhZHM9cG9zaXggLS1kaXNhYmxlLW11bHRp
bGliIC0tZW5hYmxlLWM5OSAtLWVuYWJsZS1sb25nLWxvbmcgLS1lbmFibGUtc3ltdmVycz1nbnUg
LS1lbmFibGUtbGlic3RkY3h4LXBjaCAtLXByb2dyYW0tcHJlZml4PWFybS1wb2t5LWxpbnV4LWdu
dWVhYmktIC0td2l0aG91dC1sb2NhbC1wcmVmaXggLS1lbmFibGUtdGFyZ2V0LW9wdHNwYWNlIC0t
ZW5hYmxlLWx0byAtLWVuYWJsZS1saWJzc3AgLS1kaXNhYmxlLWJvb3RzdHJhcCAtLWRpc2FibGUt
bGliZ29tcCAtLWRpc2FibGUtbGlibXVkZmxhcCAtLXdpdGgtc3lzdGVtLXpsaWIgLS13aXRoLWxp
bmtlci1oYXNoLXN0eWxlPWdudSAtLXdpdGgtcHBsPW5vIC0td2l0aC1jbG9vZz1ubyAtLWVuYWJs
ZS1jaGVja2luZz1yZWxlYXNlIC0tZW5hYmxlLWNoZWFkZXJzPWNfZ2xvYmFsIC0td2l0aC1mbG9h
dD1zb2Z0IC0td2l0aC1neHgtaW5jbHVkZS1kaXI9L29wdC9wb2t5LzEuMy9zeXNyb290cy9hcm12
NXRlLXBva3ktbGludXgtZ251ZWFiaS91c3IvaW5jbHVkZS9jKysgLS13aXRoLWJ1aWxkLXRpbWUt
dG9vbHM9L3Nydi9ob21lL3Bva3lidWlsZC95b2N0by1hdXRvYnVpbGRlci95b2N0by1zbGF2ZS9u
aWdodGx5LWFybS9idWlsZC9idWlsZC90bXAvc3lzcm9vdHMveDg2XzY0LWxpbnV4L3Vzci9hcm0t
cG9reS1saW51eC1nbnVlYWJpL2JpbiAtLXdpdGgtc3lzcm9vdD0vb3B0L3Bva3kvMS4zL3N5c3Jv
b3RzL2FybXY1dGUtcG9reS1saW51eC1nbnVlYWJpIC0td2l0aC1idWlsZC1zeXNyb290PS9zcnYv
aG9tZS9wb2t5YnVpbGQveW9jdG8tYXV0b2J1aWxkZXIveW9jdG8tc2xhdmUvbmlnaHRseS1hcm0v
YnVpbGQvYnVpbGQvdG1wL3N5c3Jvb3RzL3FlbXVhcm0gLS1kaXNhYmxlLWxpYnVud2luZC1leGNl
cHRpb25zIC0tZGlzYWJsZS1saWJzc3AgLS1kaXNhYmxlLWxpYmdvbXAgLS1kaXNhYmxlLWxpYm11
ZGZsYXAgLS13aXRoLW1wZnI9L3Nydi9ob21lL3Bva3lidWlsZC95b2N0by1hdXRvYnVpbGRlci95
b2N0by1zbGF2ZS9uaWdodGx5LWFybS9idWlsZC9idWlsZC90bXAvc3lzcm9vdHMvaTY4Ni1uYXRp
dmVzZGstcG9reXNkay1saW51eCAtLXdpdGgtbXBjPS9zcnYvaG9tZS9wb2t5YnVpbGQveW9jdG8t
YXV0b2J1aWxkZXIveW9jdG8tc2xhdmUvbmlnaHRseS1hcm0vYnVpbGQvYnVpbGQvdG1wL3N5c3Jv
b3RzL2k2ODYtbmF0aXZlc2RrLXBva3lzZGstbGludXggLS1lbmFibGUtbmxzClRocmVhZCBtb2Rl
bDogcG9zaXgKZ2NjIHZlcnNpb24gNC43LjIgKEdDQykgCmNvbmZpZ3VyZTozMTc3OiAkPyA9IDAK
Y29uZmlndXJlOjMxNjY6IGFybS1wb2t5LWxpbnV4LWdudWVhYmktZ2NjICAtbWFyY2g9YXJtdjV0
ZSAgLW1hcm0gLW10aHVtYi1pbnRlcndvcmsgIC1tdHVuZT1hcm05MjZlai1zIC0tc3lzcm9vdD0v
aG9tZS9wcmpzL2NvbXBzaXMwMDAxL3BoaWxpbnV4L2FybSAtViA+JjUKYXJtLXBva3ktbGludXgt
Z251ZWFiaS1nY2M6IGVycm9yOiB1bnJlY29nbml6ZWQgY29tbWFuZCBsaW5lIG9wdGlvbiAnLVYn
CmFybS1wb2t5LWxpbnV4LWdudWVhYmktZ2NjOiBmYXRhbCBlcnJvcjogbm8gaW5wdXQgZmlsZXMK
Y29tcGlsYXRpb24gdGVybWluYXRlZC4KY29uZmlndXJlOjMxNzc6ICQ/ID0gMQpjb25maWd1cmU6
MzE2NjogYXJtLXBva3ktbGludXgtZ251ZWFiaS1nY2MgIC1tYXJjaD1hcm12NXRlICAtbWFybSAt
bXRodW1iLWludGVyd29yayAgLW10dW5lPWFybTkyNmVqLXMgLS1zeXNyb290PS9ob21lL3ByanMv
Y29tcHNpczAwMDEvcGhpbGludXgvYXJtIC1xdmVyc2lvbiA+JjUKYXJtLXBva3ktbGludXgtZ251
ZWFiaS1nY2M6IGVycm9yOiB1bnJlY29nbml6ZWQgY29tbWFuZCBsaW5lIG9wdGlvbiAnLXF2ZXJz
aW9uJwphcm0tcG9reS1saW51eC1nbnVlYWJpLWdjYzogZmF0YWwgZXJyb3I6IG5vIGlucHV0IGZp
bGVzCmNvbXBpbGF0aW9uIHRlcm1pbmF0ZWQuCmNvbmZpZ3VyZTozMTc3OiAkPyA9IDEKY29uZmln
dXJlOjMxOTc6IGNoZWNraW5nIHdoZXRoZXIgdGhlIEMgY29tcGlsZXIgd29ya3MKY29uZmlndXJl
OjMyMTk6IGFybS1wb2t5LWxpbnV4LWdudWVhYmktZ2NjICAtbWFyY2g9YXJtdjV0ZSAgLW1hcm0g
LW10aHVtYi1pbnRlcndvcmsgIC1tdHVuZT1hcm05MjZlai1zIC0tc3lzcm9vdD0vaG9tZS9wcmpz
L2NvbXBzaXMwMDAxL3BoaWxpbnV4L2FybSAgLWcgLU8wICAtLXN5c3Jvb3Q9L29wdC9wb2t5LzEu
MyAgLS1zeXNyb290PS9vcHQvcG9reS8xLjMgIC0tc3lzcm9vdD0vb3B0L3Bva3kvMS4zIGNvbmZ0
ZXN0LmMgID4mNQovb3B0L3Bva3kvMS4zL3N5c3Jvb3RzL2k2ODYtcG9reXNkay1saW51eC91c3Iv
bGliZXhlYy9hcm12NXRlLXBva3ktbGludXgtZ251ZWFiaS9nY2MvYXJtLXBva3ktbGludXgtZ251
ZWFiaS80LjcuMi9sZDogY2Fubm90IGZpbmQgY3J0MS5vOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0
b3J5Ci9vcHQvcG9reS8xLjMvc3lzcm9vdHMvaTY4Ni1wb2t5c2RrLWxpbnV4L3Vzci9saWJleGVj
L2FybXY1dGUtcG9reS1saW51eC1nbnVlYWJpL2djYy9hcm0tcG9reS1saW51eC1nbnVlYWJpLzQu
Ny4yL2xkOiBjYW5ub3QgZmluZCBjcnRpLm86IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkKL29w
dC9wb2t5LzEuMy9zeXNyb290cy9pNjg2LXBva3lzZGstbGludXgvdXNyL2xpYmV4ZWMvYXJtdjV0
ZS1wb2t5LWxpbnV4LWdudWVhYmkvZ2NjL2FybS1wb2t5LWxpbnV4LWdudWVhYmkvNC43LjIvbGQ6
IGNhbm5vdCBmaW5kIGNydGJlZ2luLm86IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkKL29wdC9w
b2t5LzEuMy9zeXNyb290cy9pNjg2LXBva3lzZGstbGludXgvdXNyL2xpYmV4ZWMvYXJtdjV0ZS1w
b2t5LWxpbnV4LWdudWVhYmkvZ2NjL2FybS1wb2t5LWxpbnV4LWdudWVhYmkvNC43LjIvbGQ6IGNh
bm5vdCBmaW5kIC1sZ2NjCi9vcHQvcG9reS8xLjMvc3lzcm9vdHMvaTY4Ni1wb2t5c2RrLWxpbnV4
L3Vzci9saWJleGVjL2FybXY1dGUtcG9reS1saW51eC1nbnVlYWJpL2djYy9hcm0tcG9reS1saW51
eC1nbnVlYWJpLzQuNy4yL2xkOiBjYW5ub3QgZmluZCAtbGdjY19zCi9vcHQvcG9reS8xLjMvc3lz
cm9vdHMvaTY4Ni1wb2t5c2RrLWxpbnV4L3Vzci9saWJleGVjL2FybXY1dGUtcG9reS1saW51eC1n
bnVlYWJpL2djYy9hcm0tcG9reS1saW51eC1nbnVlYWJpLzQuNy4yL2xkOiBjYW5ub3QgZmluZCAt
bGMKL29wdC9wb2t5LzEuMy9zeXNyb290cy9pNjg2LXBva3lzZGstbGludXgvdXNyL2xpYmV4ZWMv
YXJtdjV0ZS1wb2t5LWxpbnV4LWdudWVhYmkvZ2NjL2FybS1wb2t5LWxpbnV4LWdudWVhYmkvNC43
LjIvbGQ6IGNhbm5vdCBmaW5kIC1sZ2NjCi9vcHQvcG9reS8xLjMvc3lzcm9vdHMvaTY4Ni1wb2t5
c2RrLWxpbnV4L3Vzci9saWJleGVjL2FybXY1dGUtcG9reS1saW51eC1nbnVlYWJpL2djYy9hcm0t
cG9reS1saW51eC1nbnVlYWJpLzQuNy4yL2xkOiBjYW5ub3QgZmluZCAtbGdjY19zCi9vcHQvcG9r
eS8xLjMvc3lzcm9vdHMvaTY4Ni1wb2t5c2RrLWxpbnV4L3Vzci9saWJleGVjL2FybXY1dGUtcG9r
eS1saW51eC1nbnVlYWJpL2djYy9hcm0tcG9reS1saW51eC1nbnVlYWJpLzQuNy4yL2xkOiBjYW5u
b3QgZmluZCBjcnRlbmQubzogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeQovb3B0L3Bva3kvMS4z
L3N5c3Jvb3RzL2k2ODYtcG9reXNkay1saW51eC91c3IvbGliZXhlYy9hcm12NXRlLXBva3ktbGlu
dXgtZ251ZWFiaS9nY2MvYXJtLXBva3ktbGludXgtZ251ZWFiaS80LjcuMi9sZDogY2Fubm90IGZp
bmQgY3J0bi5vOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5CmNvbGxlY3QyOiBlcnJvcjogbGQg
cmV0dXJuZWQgMSBleGl0IHN0YXR1cwpjb25maWd1cmU6MzIyMzogJD8gPSAxCmNvbmZpZ3VyZToz
MjYxOiByZXN1bHQ6IG5vCmNvbmZpZ3VyZTogZmFpbGVkIHByb2dyYW0gd2FzOgp8IC8qIGNvbmZk
ZWZzLmggKi8KfCAjZGVmaW5lIFBBQ0tBR0VfTkFNRSAidGVzdGUiCnwgI2RlZmluZSBQQUNLQUdF
X1RBUk5BTUUgInRlc3RlIgp8ICNkZWZpbmUgUEFDS0FHRV9WRVJTSU9OICIwLjEuMCIKfCAjZGVm
aW5lIFBBQ0tBR0VfU1RSSU5HICJ0ZXN0ZSAwLjEuMCIKfCAjZGVmaW5lIFBBQ0tBR0VfQlVHUkVQ
T1JUICIiCnwgI2RlZmluZSBQQUNLQUdFX1VSTCAiIgp8ICNkZWZpbmUgUEFDS0FHRSAidGVzdGUi
CnwgI2RlZmluZSBWRVJTSU9OICIwLjEuMCIKfCAvKiBlbmQgY29uZmRlZnMuaC4gICovCnwgCnwg
aW50CnwgbWFpbiAoKQp8IHsKfCAKfCAgIDsKfCAgIHJldHVybiAwOwp8IH0KY29uZmlndXJlOjMy
NjY6IGVycm9yOiBpbiBgL2hvbWUvcHJqcy9jb21wc2lzMDAwMS93b3Jrc3BhY2UvdGVzdGUnOgpj
b25maWd1cmU6MzI2ODogZXJyb3I6IEMgY29tcGlsZXIgY2Fubm90IGNyZWF0ZSBleGVjdXRhYmxl
cwpTZWUgYGNvbmZpZy5sb2cnIGZvciBtb3JlIGRldGFpbHMKCiMjIC0tLS0tLS0tLS0tLS0tLS0g
IyMKIyMgQ2FjaGUgdmFyaWFibGVzLiAjIwojIyAtLS0tLS0tLS0tLS0tLS0tICMjCgphY19jdl9f
X3ZhX2NvcHk9eWVzCmFjX2N2X2FmX3VuaXhfbGFyZ2VfZGdyYW09eWVzCmFjX2N2X2FsaWdub2Zf
Q09SQkFfYm9vbGVhbj0xCmFjX2N2X2FsaWdub2ZfQ09SQkFfY2hhcj0xCmFjX2N2X2FsaWdub2Zf
Q09SQkFfZG91YmxlPTQKYWNfY3ZfYWxpZ25vZl9DT1JCQV9mbG9hdD00CmFjX2N2X2FsaWdub2Zf
Q09SQkFfbG9uZz00CmFjX2N2X2FsaWdub2ZfQ09SQkFfbG9uZ19kb3VibGU9NAphY19jdl9hbGln
bm9mX0NPUkJBX2xvbmdfbG9uZz00CmFjX2N2X2FsaWdub2ZfQ09SQkFfb2N0ZXQ9MQphY19jdl9h
bGlnbm9mX0NPUkJBX3BvaW50ZXI9NAphY19jdl9hbGlnbm9mX0NPUkJBX3Nob3J0PTIKYWNfY3Zf
YWxpZ25vZl9DT1JCQV9zdHJ1Y3Q9NAphY19jdl9hbGlnbm9mX0NPUkJBX3djaGFyPTIKYWNfY3Zf
YWxpZ25vZl9ndWludDMyPTQKYWNfY3ZfYWxpZ25vZl9ndWludDY0PTQKYWNfY3ZfYWxpZ25vZl91
bnNpZ25lZF9sb25nPTQKYWNfY3ZfYnVpbGQ9aTY4Ni1wYy1saW51eC1nbnUKYWNfY3ZfY19iaWdl
bmRpYW49bm8KYWNfY3ZfY19saXR0bGVlbmRpYW49eWVzCmFjX2N2X2NfbG9uZ19kb3VibGU9eWVz
CmFjX2N2X2NoZWNrX3NqbGo9c3NqbGoKYWNfY3ZfY29udl9sb25nbG9uZ190b19mbG9hdD15ZXMK
YWNfY3ZfZGlyZW50X2hhdmVfc3BhY2VfZF9uYW1lPXllcwphY19jdl9lbnZfQ0Nfc2V0PXNldAph
Y19jdl9lbnZfQ0NfdmFsdWU9J2FybS1wb2t5LWxpbnV4LWdudWVhYmktZ2NjICAtbWFyY2g9YXJt
djV0ZSAgLW1hcm0gLW10aHVtYi1pbnRlcndvcmsgIC1tdHVuZT1hcm05MjZlai1zIC0tc3lzcm9v
dD0vaG9tZS9wcmpzL2NvbXBzaXMwMDAxL3BoaWxpbnV4L2FybScKYWNfY3ZfZW52X0NGTEFHU19z
ZXQ9c2V0CmFjX2N2X2Vudl9DRkxBR1NfdmFsdWU9JyAtZyAtTzAgIC0tc3lzcm9vdD0vb3B0L3Bv
a3kvMS4zJwphY19jdl9lbnZfQ1BQRkxBR1Nfc2V0PXNldAphY19jdl9lbnZfQ1BQRkxBR1NfdmFs
dWU9JyAtLXN5c3Jvb3Q9L29wdC9wb2t5LzEuMycKYWNfY3ZfZW52X0NQUF9zZXQ9c2V0CmFjX2N2
X2Vudl9DUFBfdmFsdWU9J2FybS1wb2t5LWxpbnV4LWdudWVhYmktZ2NjIC1FICAtbWFyY2g9YXJt
djV0ZSAgLW1hcm0gLW10aHVtYi1pbnRlcndvcmsgIC1tdHVuZT1hcm05MjZlai1zIC0tc3lzcm9v
dD0vaG9tZS9wcmpzL2NvbXBzaXMwMDAxL3BoaWxpbnV4L2FybScKYWNfY3ZfZW52X0xERkxBR1Nf
c2V0PXNldAphY19jdl9lbnZfTERGTEFHU192YWx1ZT0nIC0tc3lzcm9vdD0vb3B0L3Bva3kvMS4z
JwphY19jdl9lbnZfTElCU19zZXQ9CmFjX2N2X2Vudl9MSUJTX3ZhbHVlPQphY19jdl9lbnZfYnVp
bGRfYWxpYXNfc2V0PXNldAphY19jdl9lbnZfYnVpbGRfYWxpYXNfdmFsdWU9aTY4Ni1saW51eAph
Y19jdl9lbnZfaG9zdF9hbGlhc19zZXQ9c2V0CmFjX2N2X2Vudl9ob3N0X2FsaWFzX3ZhbHVlPWFy
bS1wb2t5LWxpbnV4LWdudWVhYmkKYWNfY3ZfZW52X3RhcmdldF9hbGlhc19zZXQ9c2V0CmFjX2N2
X2Vudl90YXJnZXRfYWxpYXNfdmFsdWU9YXJtLXBva3ktbGludXgtZ251ZWFiaQphY19jdl9lcG9s
bF93b3Jrcz15ZXMKYWNfY3ZfZmlsZV9fZGV2X3JhbmRvbT15ZXMKYWNfY3ZfZmlsZV9fZGV2X3pl
cm89eWVzCmFjX2N2X2ZpbGVfX3Vzcl9zaGFyZV9YMTFfc2dtbF9kZWZzX2VudD1ubwphY19jdl9m
aWxlX2xpYl9zcmNfbGlibWFkX2ZyYW1lX2g9bm8KYWNfY3ZfZnVuY19fX3ZhX2NvcHk9eWVzCmFj
X2N2X2Z1bmNfZm5tYXRjaF93b3Jrcz15ZXMKYWNfY3ZfZnVuY19nZXRhZGRyaW5mbz15ZXMKYWNf
Y3ZfZnVuY19nZXRncmdpZF9yPXllcwphY19jdl9mdW5jX2dldHBhZ2VzaXplPXllcwphY19jdl9m
dW5jX2dldHBncnBfdm9pZD15ZXMKYWNfY3ZfZnVuY19nZXRwd3VpZF9yPXllcwphY19jdl9mdW5j
X2xzdGF0X2RlcmVmZXJlbmNlc19zbGFzaGVkX3N5bWxpbms9eWVzCmFjX2N2X2Z1bmNfbHN0YXRf
ZW1wdHlfc3RyaW5nX2J1Zz1ubwphY19jdl9mdW5jX21hbGxvY18wX25vbm51bGw9eWVzCmFjX2N2
X2Z1bmNfbWFsbG9jX3dvcmtzPXllcwphY19jdl9mdW5jX21lbWNtcF93b3JraW5nPXllcwphY19j
dl9mdW5jX21lbWNweT15ZXMKYWNfY3ZfZnVuY19tbWFwX2ZpeGVkX21hcHBlZD15ZXMKYWNfY3Zf
ZnVuY19wb3NpeF9nZXRncmdpZF9yPXllcwphY19jdl9mdW5jX3Bvc2l4X2dldHB3bmFtX3I9eWVz
CmFjX2N2X2Z1bmNfcG9zaXhfZ2V0cHd1aWRfcj15ZXMKYWNfY3ZfZnVuY19wcmludGZfdW5peDk4
PXllcwphY19jdl9mdW5jX3B0aHJlYWRfYXR0cl9nZXRzdGFjaz15ZXMKYWNfY3ZfZnVuY19wdGhy
ZWFkX2tleV9kZWxldGU9eWVzCmFjX2N2X2Z1bmNfcmVhbGxvY18wX25vbm51bGw9eWVzCmFjX2N2
X2Z1bmNfcmVhbGxvY193b3Jrcz15ZXMKYWNfY3ZfZnVuY19zZXRncmVudF92b2lkPXllcwphY19j
dl9mdW5jX3NldHBncnBfdm9pZD15ZXMKYWNfY3ZfZnVuY19zZXRyZXN1aWQ9eWVzCmFjX2N2X2Z1
bmNfc2V0dmJ1Zl9yZXZlcnNlZD1ubwphY19jdl9mdW5jX3NucHJpbnRmX2M5OT15ZXMKYWNfY3Zf
ZnVuY19zdGF0X2VtcHR5X3N0cmluZ19idWc9bm8KYWNfY3ZfZnVuY19zdGF0X2lnbm9yZXNfdHJh
aWxpbmdfc2xhc2g9bm8KYWNfY3ZfZnVuY19zdHJlcnJvcj15ZXMKYWNfY3ZfZnVuY192YV9jb3B5
PXllcwphY19jdl9mdW5jX3ZzbnByaW50Zl9jOTk9eWVzCmFjX2N2X2hhdmVfYWJzdHJhY3Rfc29j
a2V0cz15ZXMKYWNfY3ZfaGF2ZV9hY2NyaWdodHNfaW5fbXNnaGRyPW5vCmFjX2N2X2hhdmVfYnJv
a2VuX3NucHJpbnRmPW5vCmFjX2N2X2hhdmVfY29udHJvbF9pbl9tc2doZHI9eWVzCmFjX2N2X2hh
dmVfZGVjbF9zeXNfc2lnbGlzdD15ZXMKYWNfY3ZfaGF2ZV9sb25nX2xvbmdfZm9ybWF0PXllcwph
Y19jdl9oYXZlX29wZW5wdHlfY3R0eV9idWc9eWVzCmFjX2N2X2hhdmVfc3BhY2VfZF9uYW1lX2lu
X3N0cnVjdF9kaXJlbnQ9eWVzCmFjX2N2X2hlYWRlcl9uZXRpbmV0X3NjdHBfaD1ubwphY19jdl9o
ZWFkZXJfbmV0aW5ldF9zY3RwX3Vpb19oPW5vCmFjX2N2X2hvc3Q9YXJtLXBva3ktbGludXgtZ251
ZWFiaQphY19jdl9sYmxfdW5hbGlnbmVkX2ZhaWw9bm8KYWNfY3ZfbGliX2Nfc2lnbmFsZmQ9eWVz
CmFjX2N2X2xpYmljb252X3V0Zjg9eWVzCmFjX2N2X2xpYm5ldF9lbmRpYW5lc3M9bGlsCmFjX2N2
X2xpbnV4X3ZlcnM9MgphY19jdl9uZWVkX3RyaW89bm8KYWNfY3ZfcGF0aF9FU0RfQ09ORklHPW5v
CmFjX2N2X3BhdGhfaW5zdGFsbD0nL3Vzci9iaW4vaW5zdGFsbCAtYycKYWNfY3ZfcGF0aF9ta2Rp
cj0vYmluL21rZGlyCmFjX2N2X3ByZWFkPW5vCmFjX2N2X3Byb2dfQVdLPWdhd2sKYWNfY3ZfcHJv
Z19DQz0nYXJtLXBva3ktbGludXgtZ251ZWFiaS1nY2MgIC1tYXJjaD1hcm12NXRlICAtbWFybSAt
bXRodW1iLWludGVyd29yayAgLW10dW5lPWFybTkyNmVqLXMgLS1zeXNyb290PS9ob21lL3ByanMv
Y29tcHNpczAwMDEvcGhpbGludXgvYXJtJwphY19jdl9wcm9nX1NUUklQPWFybS1wb2t5LWxpbnV4
LWdudWVhYmktc3RyaXAKYWNfY3ZfcHJvZ19tYWtlX21ha2Vfc2V0PXllcwphY19jdl9wd3JpdGU9
bm8KYWNfY3Zfc2N0cD1ubwphY19jdl9zaXplb2ZfY2hhcj0xCmFjX2N2X3NpemVvZl9jaGFyX3A9
NAphY19jdl9zaXplb2ZfZGV2X3Q9OAphY19jdl9zaXplb2ZfZmxvYXQ9NAphY19jdl9zaXplb2Zf
Z2lkX3Q9NAphY19jdl9zaXplb2ZfaW5vX3Q9NAphY19jdl9zaXplb2ZfaW50PTQKYWNfY3Zfc2l6
ZW9mX2ludF9wPTQKYWNfY3Zfc2l6ZW9mX2xvbmc9NAphY19jdl9zaXplb2ZfbG9uZ19sb25nPTgK
YWNfY3Zfc2l6ZW9mX2xvbmdfcD00CmFjX2N2X3NpemVvZl9vZmZfdD00CmFjX2N2X3NpemVvZl9w
aWRfdD00CmFjX2N2X3NpemVvZl9zaG9ydD0yCmFjX2N2X3NpemVvZl9zaXplX3Q9NAphY19jdl9z
aXplb2Zfc3NpemVfdD00CmFjX2N2X3NpemVvZl91aWRfdD00CmFjX2N2X3NpemVvZl91bnNpZ25l
ZF9jaGFyPTEKYWNfY3Zfc2l6ZW9mX3Vuc2lnbmVkX2NoYXJfcD00CmFjX2N2X3NpemVvZl91bnNp
Z25lZF9pbnQ9NAphY19jdl9zaXplb2ZfdW5zaWduZWRfbG9uZz00CmFjX2N2X3NpemVvZl91bnNp
Z25lZF9sb25nX2xvbmc9OAphY19jdl9zaXplb2ZfdW5zaWduZWRfc2hvcnQ9MgphY19jdl9zaXpl
b2Zfdm9pZF9wPTQKYWNfY3Zfc2l6ZW9mX3djaGFyX3Q9NAphY19jdl9zeXNfbGlua2VyX2g9bm8K
YWNfY3Zfc3lzX3Jlc3RhcnRhYmxlX3N5c2NhbGxzPXllcwphY19jdl90eXBlX3N0cnVjdF90aW1l
c3BlYz15ZXMKYWNfY3ZfdHlwZV91aWRfdD0ne2FjX2N2X3R5cGVfdWlkX3Q9eWVzfScKYWNfY3Zf
dWNoYXI9bm8KYWNfY3ZfdWludD15ZXMKYWNfY3ZfdWxvbmc9eWVzCmFjX2N2X3VzaG9ydD15ZXMK
YWNfY3ZfdmFfY29weT15ZXMKYWNfY3ZfdmFfdmFsX2NvcHk9eWVzCmFtX2N2X2Z1bmNfd29ya2lu
Z19nZXRsaW5lPXllcwphbV9jdl9zY2FuZl9sbGQ9eWVzCmFwcl9jdl9wcm9jZXNzX3NoYXJlZF93
b3Jrcz1ubwphcHJfY3ZfdGNwX25vZGVsYXlfd2l0aF9jb3JrPXllcwpiYXNoX2N2X2R1cDJfYnJv
a2VuPW5vCmJhc2hfY3ZfZnVuY19zaWdzZXRqbXA9bWlzc2luZwpiYXNoX2N2X2Z1bmNfc3RyY29s
bF9icm9rZW49bm8KYmFzaF9jdl9nZXRjd2RfY2FsbHNfcG9wZW49bm8KYmFzaF9jdl9nZXRlbnZf
cmVkZWY9eWVzCmJhc2hfY3ZfaGF2ZV9tYnN0YXRlX3Q9eWVzCmJhc2hfY3Zfam9iX2NvbnRyb2xf
bWlzc2luZz1wcmVzZW50CmJhc2hfY3ZfbXVzdF9yZWluc3RhbGxfc2lnaGFuZGxlcnM9bm8KYmFz
aF9jdl9vcGVuZGlyX25vdF9yb2J1c3Q9bm8KYmFzaF9jdl9wZ3JwX3BpcGU9bm8KYmFzaF9jdl9w
cmludGZfYV9mb3JtYXQ9eWVzCmJhc2hfY3Zfc3lzX25hbWVkX3BpcGVzPXByZXNlbnQKYmFzaF9j
dl9zeXNfc2lnbGlzdD15ZXMKYmFzaF9jdl90eXBlX3JsaW1pdD1ybGltX3QKYmFzaF9jdl91bGlt
aXRfbWF4ZmRzPXllcwpiYXNoX2N2X3VuZGVyX3N5c19zaWdsaXN0PXllcwpiYXNoX2N2X3VudXNh
YmxlX3J0c2lncz1ubwpjdnNfY3ZfZnVuY19wcmludGZfcHRyPXllcwpkYl9jdl9hbGlnbl90PSd1
bnNpZ25lZCBsb25nIGxvbmcnCmRiX2N2X2FsaWducF90PSd1bnNpZ25lZCBsb25nJwpkYl9jdl9m
Y250bF9mX3NldGZkPXllcwpkYl9jdl9wYXRoX2FyPS91c3IvYmluL2FyCmRiX2N2X3BhdGhfY2ht
b2Q9L2Jpbi9jaG1vZApkYl9jdl9wYXRoX2NwPS9iaW4vY3AKZGJfY3ZfcGF0aF9sbj0vYmluL2xu
CmRiX2N2X3BhdGhfbWtkaXI9L2Jpbi9ta2RpcgpkYl9jdl9wYXRoX3JhbmxpYj0vdXNyL2Jpbi9y
YW5saWIKZGJfY3ZfcGF0aF9ybT0vYmluL3JtCmRiX2N2X3BhdGhfc2g9L2Jpbi9zaApkYl9jdl9w
YXRoX3N0cmlwPS91c3IvYmluL3N0cmlwCmRiX2N2X3NwcmludGZfY291bnQ9eWVzCmV0dGVyY2Fw
X2N2X3R5cGVfc29ja2xlbl90PXllcwpmdV9jdl9zeXNfc3RhdF9zdGF0ZnMyX2JzaXplPXllcwpn
bF9jdl9mdW5jX2J0b3djX2VvZj15ZXMKZ2xfY3ZfZnVuY19mc3RhdGF0X3plcm9fZmxhZz15ZXMK
Z2xfY3ZfZnVuY19tYnJ0b3djX2luY29tcGxldGVfc3RhdGU9eWVzCmdsX2N2X2Z1bmNfbWJydG93
Y19udWxfcmV0dmFsPXllcwpnbF9jdl9mdW5jX21icnRvd2NfbnVsbF9hcmc9eWVzCmdsX2N2X2Z1
bmNfbWJydG93Y19yZXR2YWw9eWVzCmdsX2N2X2Z1bmNfbWJydG93Y19zYW5pdHljaGVjaz15ZXMK
Z2xfY3ZfZnVuY193Y3J0b21iX3JldHZhbD15ZXMKZ2xfY3ZfZnVuY193Y3RvYl93b3Jrcz15ZXMK
Z2xpYl9jdl9fX3ZhX2NvcHk9eWVzCmdsaWJfY3ZfY29tcGxpYW50X3Bvc2l4X21lbWFsaWduPTEK
Z2xpYl9jdl9oYXNfX2lubGluZT15ZXMKZ2xpYl9jdl9oYXNfX2lubGluZV9fPXllcwpnbGliX2N2
X2hhc2lubGluZT15ZXMKZ2xpYl9jdl9oYXZlX3Fzb3J0X3I9eWVzCmdsaWJfY3ZfbG9uZ19sb25n
X2Zvcm1hdD1sbApnbGliX2N2X3J0bGRnbG9iYWxfYnJva2VuPXllcwpnbGliX2N2X3NhbmVfcmVh
bGxvYz15ZXMKZ2xpYl9jdl9zaXplb2ZfZ211dGV4PTI0CmdsaWJfY3Zfc2l6ZW9mX3N5c3RlbV90
aHJlYWQ9NApnbGliX2N2X3N0YWNrX2dyb3dzPW5vCmdsaWJfY3Zfc3RybGNweT1ubwpnbGliX2N2
X3N5c19wdGhyZWFkX2NvbmRfdGltZWR3YWl0X3Bvc2l4PXllcwpnbGliX2N2X3N5c19wdGhyZWFk
X2dldHNwZWNpZmljX3Bvc2l4PXllcwpnbGliX2N2X3N5c19wdGhyZWFkX211dGV4X3RyeWxvY2tf
cG9zaXg9eWVzCmdsaWJfY3ZfdXNjb3JlPW5vCmdsaWJfY3ZfdXNlX3BpZF9zdXJyb2dhdGU9eWVz
CmdsaWJfY3ZfdmFfY29weT15ZXMKZ2xpYl9jdl92YV92YWxfY29weT15ZXMKZ3RfY3ZfbG9jYWxl
X2ZyPWZyX0ZSCmptX2N2X2Z1bmNfZ2V0dGltZW9mZGF5X2Nsb2JiZXI9bm8Kam1fY3ZfZnVuY193
b3JraW5nX3JlYWRkaXI9eWVzCmxmX2N2X3NhbmVfcmVhbGxvYz15ZXMKbGZ0cF9jdl92YV92YWxf
Y29weT15ZXMKbGliSURMX2N2X2xvbmdfbG9uZ19mb3JtYXQ9bGwKbW96X2N2X2FsaWduX29mX0pT
X0FMSUdOX09GX1BPSU5URVI9NAptb3pfY3Zfc2l6ZV9vZl9KU19CWVRFU19QRVJfRE9VQkxFPTgK
bW96X2N2X3NpemVfb2ZfSlNfQllURVNfUEVSX1dPUkQ9NAptcl9jdl90YXJnZXRfZWxmPXllcwpt
eXNxbF9jdl9mdW5jX2F0b21pY19hZGQ9eWVzCm15c3FsX2N2X2Z1bmNfYXRvbWljX3N1Yj15ZXMK
bmZzZF9jdl9icm9rZW5fc2V0ZnN1aWQ9MApuZnNkX2N2X2JzZF9zaWduYWxzPXllcwpuZnNkX2N2
X2Z1bmNfc3RhdGZzPXN0YXRmczJfYnNpemUKcGhwX2N2X2xpYl9jb29raWVfaW9fZnVuY3Rpb25z
X3VzZV9vZmY2NF90PXllcwpyc3luY19jdl9IQVZFX0JST0tFTl9MQVJHRUZJTEU9bm8KcnN5bmNf
Y3ZfSEFWRV9CUk9LRU5fUkVBRERJUj1ubwpyc3luY19jdl9IQVZFX0M5OV9WU05QUklOVEY9eWVz
CnJzeW5jX2N2X0hBVkVfR0VUVElNRU9GREFZX1RaPXllcwpyc3luY19jdl9IQVZFX0xPTkdMT05H
PXllcwpyc3luY19jdl9IQVZFX09GRjY0X1Q9bm8KcnN5bmNfY3ZfSEFWRV9TRUNVUkVfTUtTVEVN
UD15ZXMKcnN5bmNfY3ZfSEFWRV9TSE9SVF9JTk9fVD1ubwpyc3luY19jdl9IQVZFX1NPQ0tFVFBB
SVI9eWVzCnJzeW5jX2N2X0hBVkVfVU5TSUdORURfQ0hBUj1ubwpyc3luY19jdl9SRVBMQUNFX0lO
RVRfQVRPTj1ubwpyc3luY19jdl9SRVBMQUNFX0lORVRfTlRPQT1ubwpzYW1iYV9jdl9IQVZFX0dF
VFRJTUVPRkRBWV9UWj15ZXMKc2FtYmFfY3ZfSEFWRV9JRkFDRV9BSVg9bm8Kc2FtYmFfY3ZfSEFW
RV9JRkFDRV9JRkNPTkY9eWVzCnNhbWJhX2N2X0hBVkVfSUZBQ0VfSUZSRVE9eWVzCnNhbWJhX2N2
X0hBVkVfSVJJWF9TUEVDSUZJQ19DQVBBQklMSVRJRVM9bm8Kc2NyZWVuX2N2X3N5c19iY29weV9v
dmVybGFwPW5vCnNjcmVlbl9jdl9zeXNfZmlmb19icm9rZW5faW1wbD15ZXMKc2NyZWVuX2N2X3N5
c19maWZvX3VzYWJsZT15ZXMKc2NyZWVuX2N2X3N5c19tZW1jcHlfb3ZlcmxhcD1ubwpzY3JlZW5f
Y3Zfc3lzX21lbW1vdmVfb3ZlcmxhcD1ubwpzY3JlZW5fY3Zfc3lzX3NlbGVjdF9icm9rZW5fcmV0
dmFsPW5vCnNjcmVlbl9jdl9zeXNfc29ja2V0c19ub2ZzPW5vCnNjcmVlbl9jdl9zeXNfc29ja2V0
c191c2FibGU9eWVzCnNjcmVlbl9jdl9zeXNfdGVybWluZm9fdXNlZD15ZXMKc2hhZG93X2N2X2xv
Z2Rpcj0nJHtwcmVmaXh9L3Zhci9sb2cnCnNoYWRvd19jdl9tYWlsZGlyPScke3ByZWZpeH0vdmFy
L3Nwb29sL21haWwnCnNoYWRvd19jdl9tYWlsZmlsZT1NYWlsYm94CnNoYWRvd19jdl9wYXNzd2Rf
ZGlyPScke2V4ZWNfcHJlZml4fS9iaW4nCnNoYWRvd19jdl91dG1wZGlyPScke3ByZWZpeH0vdmFy
L3J1bicKc2xybl9jdl92YV92YWxfY29weT15ZXMKc3Vkb19jdl9mdW5jX3Vuc2V0ZW52X3ZvaWQ9
bm8KdGNsX2N2X2FwaV9zZXJpYWw9dGVybWlvcwp1dGlsc19jdl9zeXNfb3Blbl9tYXg9MTAxNQoK
IyMgLS0tLS0tLS0tLS0tLS0tLS0gIyMKIyMgT3V0cHV0IHZhcmlhYmxlcy4gIyMKIyMgLS0tLS0t
LS0tLS0tLS0tLS0gIyMKCkFDTE9DQUw9JyR7U0hFTEx9IC9ob21lL3ByanMvY29tcHNpczAwMDEv
d29ya3NwYWNlL3Rlc3RlL21pc3NpbmcgLS1ydW4gYWNsb2NhbC0xLjEyJwpBTURFUEJBQ0tTTEFT
SD0nXCcKQU1ERVBfRkFMU0U9JyMnCkFNREVQX1RSVUU9JycKQU1UQVI9JyQke1RBUi10YXJ9JwpB
Uj0nYXJtLXBva3ktbGludXgtZ251ZWFiaS1hcicKQVVUT0NPTkY9JyR7U0hFTEx9IC9ob21lL3By
anMvY29tcHNpczAwMDEvd29ya3NwYWNlL3Rlc3RlL21pc3NpbmcgLS1ydW4gYXV0b2NvbmYnCkFV
VE9IRUFERVI9JyR7U0hFTEx9IC9ob21lL3ByanMvY29tcHNpczAwMDEvd29ya3NwYWNlL3Rlc3Rl
L21pc3NpbmcgLS1ydW4gYXV0b2hlYWRlcicKQVVUT01BS0U9JyR7U0hFTEx9IC9ob21lL3ByanMv
Y29tcHNpczAwMDEvd29ya3NwYWNlL3Rlc3RlL21pc3NpbmcgLS1ydW4gYXV0b21ha2UtMS4xMicK
QVdLPSdnYXdrJwpDQz0nYXJtLXBva3ktbGludXgtZ251ZWFiaS1nY2MgIC1tYXJjaD1hcm12NXRl
ICAtbWFybSAtbXRodW1iLWludGVyd29yayAgLW10dW5lPWFybTkyNmVqLXMgLS1zeXNyb290PS9o
b21lL3ByanMvY29tcHNpczAwMDEvcGhpbGludXgvYXJtJwpDQ0RFUE1PREU9JycKQ0ZMQUdTPScg
LWcgLU8wICAtLXN5c3Jvb3Q9L29wdC9wb2t5LzEuMycKQ1BQPSdhcm0tcG9reS1saW51eC1nbnVl
YWJpLWdjYyAtRSAgLW1hcmNoPWFybXY1dGUgIC1tYXJtIC1tdGh1bWItaW50ZXJ3b3JrICAtbXR1
bmU9YXJtOTI2ZWotcyAtLXN5c3Jvb3Q9L2hvbWUvcHJqcy9jb21wc2lzMDAwMS9waGlsaW51eC9h
cm0nCkNQUEZMQUdTPScgLS1zeXNyb290PS9vcHQvcG9reS8xLjMnCkNZR1BBVEhfVz0nZWNobycK
REVGUz0nJwpERVBESVI9Jy5kZXBzJwpETExUT09MPScnCkRTWU1VVElMPScnCkRVTVBCSU49JycK
RUNIT19DPScnCkVDSE9fTj0nLW4nCkVDSE9fVD0nJwpFR1JFUD0nJwpFWEVFWFQ9JycKRkdSRVA9
JycKR1JFUD0nJwpJTlNUQUxMX0RBVEE9JyR7SU5TVEFMTH0gLW0gNjQ0JwpJTlNUQUxMX1BST0dS
QU09JyR7SU5TVEFMTH0nCklOU1RBTExfU0NSSVBUPScke0lOU1RBTEx9JwpJTlNUQUxMX1NUUklQ
X1BST0dSQU09JyQoaW5zdGFsbF9zaCkgLWMgLXMnCkxEPSdhcm0tcG9reS1saW51eC1nbnVlYWJp
LWxkICAtLXN5c3Jvb3Q9L2hvbWUvcHJqcy9jb21wc2lzMDAwMS9waGlsaW51eC9hcm0nCkxERkxB
R1M9JyAtLXN5c3Jvb3Q9L29wdC9wb2t5LzEuMycKTElCT0JKUz0nJwpMSUJTPScnCkxJQlRPT0w9
JycKTElQTz0nJwpMTl9TPScnCkxUTElCT0JKUz0nJwpNQUtFSU5GTz0nJHtTSEVMTH0gL2hvbWUv
cHJqcy9jb21wc2lzMDAwMS93b3Jrc3BhY2UvdGVzdGUvbWlzc2luZyAtLXJ1biBtYWtlaW5mbycK
TUFOSUZFU1RfVE9PTD0nJwpNS0RJUl9QPScvYmluL21rZGlyIC1wJwpOTT0nYXJtLXBva3ktbGlu
dXgtZ251ZWFiaS1ubScKTk1FRElUPScnCk9CSkRVTVA9J2FybS1wb2t5LWxpbnV4LWdudWVhYmkt
b2JqZHVtcCcKT0JKRVhUPScnCk9UT09MNjQ9JycKT1RPT0w9JycKUEFDS0FHRT0ndGVzdGUnClBB
Q0tBR0VfQlVHUkVQT1JUPScnClBBQ0tBR0VfTkFNRT0ndGVzdGUnClBBQ0tBR0VfU1RSSU5HPSd0
ZXN0ZSAwLjEuMCcKUEFDS0FHRV9UQVJOQU1FPSd0ZXN0ZScKUEFDS0FHRV9VUkw9JycKUEFDS0FH
RV9WRVJTSU9OPScwLjEuMCcKUEFUSF9TRVBBUkFUT1I9JzonClJBTkxJQj0nYXJtLXBva3ktbGlu
dXgtZ251ZWFiaS1yYW5saWInClNFRD0nJwpTRVRfTUFLRT0nJwpTSEVMTD0nL2Jpbi9iYXNoJwpT
VFJJUD0nYXJtLXBva3ktbGludXgtZ251ZWFiaS1zdHJpcCcKVkVSU0lPTj0nMC4xLjAnCmFjX2N0
X0FSPScnCmFjX2N0X0NDPScnCmFjX2N0X0RVTVBCSU49JycKYW1fX0VYRUVYVF9GQUxTRT0nJwph
bV9fRVhFRVhUX1RSVUU9JycKYW1fX2Zhc3RkZXBDQ19GQUxTRT0nJwphbV9fZmFzdGRlcENDX1RS
VUU9JycKYW1fX2luY2x1ZGU9J2luY2x1ZGUnCmFtX19pc3JjPScnCmFtX19sZWFkaW5nX2RvdD0n
LicKYW1fX25vZGVwPSdfbm8nCmFtX19xdW90ZT0nJwphbV9fdGFyPSckJHtUQVItdGFyfSBjaG9m
IC0gIiQkdGFyZGlyIicKYW1fX3VudGFyPSckJHtUQVItdGFyfSB4ZiAtJwpiaW5kaXI9JyR7ZXhl
Y19wcmVmaXh9L2JpbicKYnVpbGQ9J2k2ODYtcGMtbGludXgtZ251JwpidWlsZF9hbGlhcz0naTY4
Ni1saW51eCcKYnVpbGRfY3B1PSdpNjg2JwpidWlsZF9vcz0nbGludXgtZ251JwpidWlsZF92ZW5k
b3I9J3BjJwpkYXRhZGlyPScke2RhdGFyb290ZGlyfScKZGF0YXJvb3RkaXI9JyR7cHJlZml4fS9z
aGFyZScKZG9jZGlyPScke2RhdGFyb290ZGlyfS9kb2MvJHtQQUNLQUdFX1RBUk5BTUV9Jwpkdmlk
aXI9JyR7ZG9jZGlyfScKZXhlY19wcmVmaXg9J05PTkUnCmhvc3Q9J2FybS1wb2t5LWxpbnV4LWdu
dWVhYmknCmhvc3RfYWxpYXM9J2FybS1wb2t5LWxpbnV4LWdudWVhYmknCmhvc3RfY3B1PSdhcm0n
Cmhvc3Rfb3M9J2xpbnV4LWdudWVhYmknCmhvc3RfdmVuZG9yPSdwb2t5JwpodG1sZGlyPScke2Rv
Y2Rpcn0nCmluY2x1ZGVkaXI9JyR7cHJlZml4fS9pbmNsdWRlJwppbmZvZGlyPScke2RhdGFyb290
ZGlyfS9pbmZvJwppbnN0YWxsX3NoPScke1NIRUxMfSAvaG9tZS9wcmpzL2NvbXBzaXMwMDAxL3dv
cmtzcGFjZS90ZXN0ZS9pbnN0YWxsLXNoJwpsaWJkaXI9JyR7ZXhlY19wcmVmaXh9L2xpYicKbGli
ZXhlY2Rpcj0nJHtleGVjX3ByZWZpeH0vbGliZXhlYycKbG9jYWxlZGlyPScke2RhdGFyb290ZGly
fS9sb2NhbGUnCmxvY2Fsc3RhdGVkaXI9JyR7cHJlZml4fS92YXInCm1hbmRpcj0nJHtkYXRhcm9v
dGRpcn0vbWFuJwpta2Rpcl9wPSckKE1LRElSX1ApJwpvbGRpbmNsdWRlZGlyPScvdXNyL2luY2x1
ZGUnCnBkZmRpcj0nJHtkb2NkaXJ9JwpwcmVmaXg9J05PTkUnCnByb2dyYW1fdHJhbnNmb3JtX25h
bWU9J3MseCx4LCcKcHNkaXI9JyR7ZG9jZGlyfScKc2JpbmRpcj0nJHtleGVjX3ByZWZpeH0vc2Jp
bicKc2hhcmVkc3RhdGVkaXI9JyR7cHJlZml4fS9jb20nCnN5c2NvbmZkaXI9JyR7cHJlZml4fS9l
dGMnCnRhcmdldF9hbGlhcz0nYXJtLXBva3ktbGludXgtZ251ZWFiaScKdGVzdGVfQ0ZMQUdTPScn
CnRlc3RlX0xJQlM9JycKCiMjIC0tLS0tLS0tLS0tICMjCiMjIGNvbmZkZWZzLmguICMjCiMjIC0t
LS0tLS0tLS0tICMjCgovKiBjb25mZGVmcy5oICovCiNkZWZpbmUgUEFDS0FHRV9OQU1FICJ0ZXN0
ZSIKI2RlZmluZSBQQUNLQUdFX1RBUk5BTUUgInRlc3RlIgojZGVmaW5lIFBBQ0tBR0VfVkVSU0lP
TiAiMC4xLjAiCiNkZWZpbmUgUEFDS0FHRV9TVFJJTkcgInRlc3RlIDAuMS4wIgojZGVmaW5lIFBB
Q0tBR0VfQlVHUkVQT1JUICIiCiNkZWZpbmUgUEFDS0FHRV9VUkwgIiIKI2RlZmluZSBQQUNLQUdF
ICJ0ZXN0ZSIKI2RlZmluZSBWRVJTSU9OICIwLjEuMCIKCmNvbmZpZ3VyZTogZXhpdCA3Nwo=

--14dae934052be7cd0b04d37ade14--
