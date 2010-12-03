Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id F2B834C80FAC
	for <yocto@yoctoproject.org>; Thu,  2 Dec 2010 18:23:11 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 02 Dec 2010 16:23:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,290,1288594800"; 
	d="p7s'?log'?scan'208";a="356383078"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by azsmga001.ch.intel.com with ESMTP; 02 Dec 2010 16:22:56 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.226.128) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 2 Dec 2010 16:22:56 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx606.amr.corp.intel.com ([10.22.226.128]) with mapi;
	Thu, 2 Dec 2010 16:22:55 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Ke, Liping" <liping.ke@intel.com>, "Lu, Lianhao" <lianhao.lu@intel.com>, 
	"Tian, Kevin" <kevin.tian@intel.com>
Date: Thu, 2 Dec 2010 16:22:54 -0800
Thread-Topic: yocto_installer test script update
Thread-Index: AcuRP2G+ThJAQacvTRywh28cpIwTgQAdMP0gABKk1AAAHtt2YA==
Message-ID: <9AFCD584B0B67B48AE8D8585BE30BA9502086DDD@orsmsx504.amr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D30659732FF6C134@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA950208643C@orsmsx504.amr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D30659732FFC465B@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <789F9655DD1B8F43B48D77C5D30659732FFC465B@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto_installer test script update
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
X-List-Received-Date: Fri, 03 Dec 2010 00:23:12 -0000
X-Groupsio-MsgNum: 449
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_000A_01CB923D.2C459890"

------=_NextPart_000_000A_01CB923D.2C459890
Content-Type: multipart/mixed;
	boundary="----=_NextPart_001_000B_01CB923D.2C459890"

------=_NextPart_001_000B_01CB923D.2C459890
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Liping,

I ran into error right away, and it's a very valid situation that we need to
be able to handle.  So in the terminal that I test the installer, I happened
to already have /opt/poky and source the environment-setup-i586 script which
alter all my host sysroot to be under /opt/poky/sysroot/i586-pokysdk-linux/,
etc...which triggered your opkg autotool project configure failed, please
see the attached config.log file for details.

Also, yesterday, I spent quite some time re-wrote lots of prompt messages in
the yocto_main, can you merge them into the new code?

In the installation terminal I saw the following prompt:
	Check User Configuration For Arch Type x86
	Check User Configuration For Arch Type arm
	Check User Configuration For Arch Type powerpc
	Check User Configuration For Arch Type mips
	Check architecture type x86 whether it needs to download images
	Check architecture type arm whether it needs to download images
	Check architecture type powerpc whether it needs to download images
	Check architecture type mips whether it needs to download images
	Do you want to go on installing, please enter Y/N:Y

	Beginning installation process...

	Begin to install selected native ADT!
	make dir ///var/lib/opkg successfully!
	Downloading http://llu-piketon.sh.intel.com/ipk_sdk/Packages.
	Downloading http://llu-piketon.sh.intel.com/ipk_sdk/all/Packages.
	Downloading
http://llu-piketon.sh.intel.com/ipk_sdk/i586-nativesdk/Packages.
	Downloading
http://llu-piketon.sh.intel.com/ipk_sdk/i586-i586-canadian/Packages.
	Downloading
http://llu-piketon.sh.intel.com/ipk_sdk/i586-arm-canadian/Packages.
	Downloading
http://llu-piketon.sh.intel.com/ipk_sdk/i586-powerpc-canadian/Packages.
	Downloading
http://llu-piketon.sh.intel.com/ipk_sdk/i586-mips-canadian/Packages.
	Downloading
http://llu-piketon.sh.intel.com/ipk_sdk/i586-x86_64-canadian/Packages. 

And by looking at your yocto_config file, which as following 
Host Area
YOCTOADT_TARGETS="powerpc"
YOCTOADT_QEMU="Y"
YOCTOADT_NFS_UTIL="Y"
YOCTOADT_BITBAKE="Y"
YOCTOADT_METADATA="Y"

#Target Area
YOCTOADT_TARGET_arm="N"
YOCTOADT_ROOTFS_arm="sato sdk"
YOCTOADT_TARGET_SYSROOT_IMAGE_arm="sato"
YOCTOADT_TARGET_SYSROOT_arm="$HOME/test-yocto/arm"

YOCTOADT_TARGET_x86="Y"
YOCTOADT_ROOTFS_x86="sdk minimal"
YOCTOADT_TARGET_SYSROOT_IMAGE_x86="sdk"
YOCTOADT_TARGET_SYSROOT_x86="$HOME/test-yocto/x86"

YOCTOADT_TARGET_powerpc="N"
YOCTOADT_ROOTFS_powerpc="sdk sato minimal"
YOCTOADT_TARGET_SYSROOT_IMAGE_powerpc="minimal"
YOCTOADT_TARGET_SYSROOT_powerpc="$HOME/test-yocto/mips"

YOCTOADT_TARGET_mips="N"
YOCTOADT_ROOTFS_mips="sdk"
YOCTOADT_TARGET_SYSROOT_IMAGE_mips="sdk"
YOCTOADT_TARGET_SYSROOT_mips="$HOME/test-yocto/mips"

Questions/comments
1. I'm assuming the "Check user configuration" and "Check architecture type"
messages are just for debugging and the in the final code they'll be gone
right?

2. Why I'm seeing so many downloading for all the cross-canadian for all
arches? According to your configure file, shouldn't just
i586-powerpc-canadian?  Also, don't know where the "Downloading http://..."
message from, are they from the opkg install?

Thanks,
Jessica
Ke, Liping wrote:
> Hi, Jessica
> I have update the installer on http://llu-piketon.sh.intel.com/. I
> have tested in your machine roughly, downloading should work if you
> use wget -Y off to turn off all your proxy settings for testing.
> Since there're dangling folders in your machine, I can't rudely
> delete it. You can download the new package and test.    
> 
> There're some other prompt problems I need to adjust. Today is not
> the final code, only for your reviewing and testing. 
> 
> Any problem, just let me know.
> 
> Thanks& Regards,
> criping
> 
> 
> 
>> -----Original Message-----
>> From: Zhang, Jessica
>> Sent: Thursday, December 02, 2010 8:19 AM
>> To: Ke, Liping; Lu, Lianhao; Tian, Kevin
>> Cc: yocto@yoctoproject.org
>> Subject: RE: yocto_installer test script update
>> 
>> Liping,
>> 
>> I've modified couple files mainly for the messaging, styling, etc.
>> Also, globaly changed SDK to ADT (Application Development Tools,
>> which is the new name that came out refering to the toolchains,
>> etc.). Please see attachment. 
>> 
>> Other comments:
>> 1. I'd expect after your do the code clean up, the code logic flow
>> should be more clearer, now the functions and main installation  code
>> are mingled together 2. There're couple places that I commented off
>> with my initial JZ which I don't think there're the needs for the
>> code, we can walk through them tonight...
>> 3. For target sysroot setup, I'd expect similar prompt to the user
>> about the specified configuration and confirmation 4. Also for target
>> sysroot setup, in the yocto_config file, you specify
>> ROOTFS_powerpc="sdk" TARGET_SYSROOT_IMAGE_powerpc="sato"
>> I'd expect the installer will run into error since the download
>> images only contain SDK no sato, sysroot can't be setup using sato,
>> which I think it's missing from the current code...
>> 
>> In general it looks good and main flow that needs to be covered are
>> there... 
>> 
>> Thanks,
>> Jessica
>> 
>> 
>> -----Original Message-----
>> From: Ke, Liping
>> Sent: Wednesday, December 01, 2010 2:06 AM
>> To: Zhang, Jessica; Lu, Lianhao; Tian, Kevin
>> Cc: yocto@yoctoproject.org
>> Subject: yocto_installer test script update
>> 
>> Hi, Jessica
>> 
>> The newer version of the installer is in lianhao's location. You can
>> directly run ./yocto_installer http://llu-piketon.sh.intel.com/ Today
>> we tested both on 32 bit and 64 bit ubuntu host.
>> 
>> It's very initial and rough, I will move many non-root required ops
>> into the outer wrapper script later.
>> 
>> Any early comments are welcomed, just let me know.
>> 
>> Thanks& Regards,
>> criping

------=_NextPart_001_000B_01CB923D.2C459890
Content-Type: application/octet-stream;
	name="config.log"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="config.log"

This file contains any messages produced by compilers while
running configure, to aid debugging if configure makes a mistake.

It was created by opkg configure 0.1.8, which was
generated by GNU Autoconf 2.63.  Invocation command line was

  $ ./configure --prefix=3D/home/jzhang/adt_installer/opkg-0.1.8/.././opkg =
--with-opkglibdir=3D/var/lib --disable-curl --disable-ssl-curl --disable-gp=
g --disable-shave

## --------- ##
## Platform. ##
## --------- ##

hostname =3D jzhang-desktop
uname -m =3D i686
uname -r =3D 2.6.32-25-generic
uname -s =3D Linux
uname -v =3D #45-Ubuntu SMP Sat Oct 16 19:48:22 UTC 2010

/usr/bin/uname -p =3D unknown
/bin/uname -X     =3D unknown

/bin/arch              =3D unknown
/usr/bin/arch -k       =3D unknown
/usr/convex/getsysinfo =3D unknown
/usr/bin/hostinfo      =3D unknown
/bin/machine           =3D unknown
/usr/bin/oslevel       =3D unknown
/bin/universe          =3D unknown

PATH: /opt/poky/sysroots/i586-pokysdk-linux/usr/bin
PATH: /opt/poky/sysroots/i586-pokysdk-linux/usr/bin/i586-poky-linux
PATH: /home/jzhang/poky-master/poky/scripts/..//bitbake//bin/
PATH: /home/jzhang/poky-master/poky/scripts/..//scripts
PATH: /opt/poky/sysroots/i586-pokysdk-linux/usr/bin
PATH: /opt/poky/sysroots/i586-pokysdk-linux/usr/bin/i586-poky-linux
PATH: /home/jzhang/poky-master/poky/scripts/..//bitbake//bin/
PATH: /home/jzhang/poky-master/poky/scripts/..//scripts
PATH: /opt/poky/sysroots/i586-pokysdk-linux/usr/bin
PATH: /opt/poky/sysroots/i586-pokysdk-linux/usr/bin/i586-poky-linux
PATH: /home/jzhang/bin
PATH: /opt/blackduck/protexIP/bin
PATH: /usr/local/sbin
PATH: /usr/local/bin
PATH: /usr/sbin
PATH: /usr/bin
PATH: /sbin
PATH: /bin
PATH: /usr/games


## ----------- ##
## Core tests. ##
## ----------- ##

configure:1975: loading site script /opt/poky/site-config-i586-poky-linux
configure:2143: checking for a BSD-compatible install
configure:2211: result: /usr/bin/install -c
configure:2222: checking whether build environment is sane
configure:2265: result: yes
configure:2290: checking for a thread-safe mkdir -p
configure:2329: result: /bin/mkdir -p
configure:2342: checking for gawk
configure:2358: found /usr/bin/gawk
configure:2369: result: gawk
configure:2380: checking whether make sets $(MAKE)
configure:2402: result: yes
configure:2595: checking build system type
configure:2613: result: i686-pc-linux-gnu
configure:2635: checking host system type
configure:2650: result: i686-pc-linux-gnu
configure:2684: checking for style of include used by make
configure:2712: result: GNU
configure:2782: checking for gcc
configure:2809: result: i586-poky-linux-gcc
configure:3041: checking for C compiler version
configure:3049: i586-poky-linux-gcc --version >&5
i586-poky-linux-gcc (GCC) 4.5.0 20100729 (prerelease)
Copyright (C) 2010 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

configure:3053: $? =3D 0
configure:3060: i586-poky-linux-gcc -v >&5
Using built-in specs.
COLLECT_GCC=3Di586-poky-linux-gcc
COLLECT_LTO_WRAPPER=3D/opt/poky/sysroots/i586-pokysdk-linux/usr/libexec/i58=
6-poky-linux/gcc/i586-poky-linux/4.5.0/lto-wrapper
Target: i586-poky-linux
Configured with: /srv/home/pokybuild/poky-slave/nightly-release/build/build=
/tmp/work/i586-i586-canadian-poky-linux/gcc-cross-canadian-4.5.0-r10/gcc-4.=
5.0/configure --build=3Dx86_64-linux --host=3Di586-pokysdk-linux --target=
=3Di586-poky-linux --prefix=3D/opt/poky/sysroots/i586-pokysdk-linux/usr --e=
xec_prefix=3D/opt/poky/sysroots/i586-pokysdk-linux/usr --bindir=3D/opt/poky=
/sysroots/i586-pokysdk-linux/usr/bin/i586-poky-linux --sbindir=3D/opt/poky/=
sysroots/i586-pokysdk-linux/usr/bin/i586-poky-linux --libexecdir=3D/opt/pok=
y/sysroots/i586-pokysdk-linux/usr/libexec/i586-poky-linux --datadir=3D/opt/=
poky/sysroots/i586-pokysdk-linux/usr/share --sysconfdir=3D/opt/poky/sysroot=
s/i586-pokysdk-linux/etc --sharedstatedir=3D/opt/poky/sysroots/i586-pokysdk=
-linux/com --localstatedir=3D/opt/poky/sysroots/i586-pokysdk-linux/var --li=
bdir=3D/opt/poky/sysroots/i586-pokysdk-linux/usr/lib/i586-poky-linux --incl=
udedir=3D/opt/poky/sysroots/i586-pokysdk-linux/usr/include --oldincludedir=
=3D/opt/poky/sysroots/i586-pokysdk-linux/usr/include --infodir=3D/opt/poky/=
sysroots/i586-pokysdk-linux/usr/share/info --mandir=3D/opt/poky/sysroots/i5=
86-pokysdk-linux/usr/share/man --with-gnu-ld --enable-shared --enable-langu=
ages=3Dc,c++ --enable-threads=3Dposix --disable-multilib --enable-c99 --ena=
ble-long-long --enable-symvers=3Dgnu --enable-libstdcxx-pch --program-prefi=
x=3Di586-poky-linux- --enable-target-optspace --enable-lto --enable-libssp =
--disable-bootstrap --disable-libgomp --disable-libmudflap --enable-cheader=
s=3Dc_global --with-local-prefix=3D/opt/poky/sysroots/i586-poky-linux/usr -=
-with-gxx-include-dir=3D/opt/poky/sysroots/i586-poky-linux/usr/include/c++ =
--with-build-time-tools=3D/srv/home/pokybuild/poky-slave/nightly-release/bu=
ild/build/tmp/sysroots/x86_64-linux/usr/i586-poky-linux/bin --with-sysroot=
=3D/opt/poky/sysroots/i586-poky-linux --with-build-sysroot=3D/srv/home/poky=
build/poky-slave/nightly-release/build/build/tmp/sysroots/i586-poky-linux -=
-disable-libunwind-exceptions --disable-libssp --disable-libgomp --disable-=
libmudflap --with-mpfr=3D/srv/home/pokybuild/poky-slave/nightly-release/bui=
ld/build/tmp/sysroots/i586-pokysdk-linux-nativesdk --with-mpc=3D/srv/home/p=
okybuild/poky-slave/nightly-release/build/build/tmp/sysroots/i586-pokysdk-l=
inux-nativesdk --enable-__cxa_atexit
Thread model: posix
gcc version 4.5.0 20100729 (prerelease) (GCC)=20
configure:3064: $? =3D 0
configure:3071: i586-poky-linux-gcc -V >&5
i586-poky-linux-gcc: '-V' option must have argument
configure:3075: $? =3D 1
configure:3098: checking for C compiler default output file name
configure:3120: i586-poky-linux-gcc -march=3Di586   conftest.c  >&5
/opt/poky/sysroots/i586-pokysdk-linux/usr/libexec/i586-poky-linux/gcc/i586-=
poky-linux/4.5.0/ld: crt1.o: No such file: No such file or directory
collect2: ld returned 1 exit status
configure:3124: $? =3D 1
configure:3162: result:=20
configure: failed program was:
| /* confdefs.h.  */
| #define PACKAGE_NAME "opkg"
| #define PACKAGE_TARNAME "opkg"
| #define PACKAGE_VERSION "0.1.8"
| #define PACKAGE_STRING "opkg 0.1.8"
| #define PACKAGE_BUGREPORT ""
| #define PACKAGE "opkg"
| #define VERSION "0.1.8"
| /* end confdefs.h.  */
|=20
| int
| main ()
| {
|=20
|   ;
|   return 0;
| }
configure:3168: error: in `/home/jzhang/adt_installer/opkg-0.1.8':
configure:3171: error: C compiler cannot create executables
See `config.log' for more details.

## ---------------- ##
## Cache variables. ##
## ---------------- ##

ac_cv_build=3Di686-pc-linux-gnu
ac_cv_env_CC_set=3Dset
ac_cv_env_CC_value=3Di586-poky-linux-gcc
ac_cv_env_CFLAGS_set=3Dset
ac_cv_env_CFLAGS_value=3D-march=3Di586
ac_cv_env_CPPFLAGS_set=3D
ac_cv_env_CPPFLAGS_value=3D
ac_cv_env_CPP_set=3D
ac_cv_env_CPP_value=3D
ac_cv_env_CURL_CFLAGS_set=3D
ac_cv_env_CURL_CFLAGS_value=3D
ac_cv_env_CURL_LIBS_set=3D
ac_cv_env_CURL_LIBS_value=3D
ac_cv_env_LDFLAGS_set=3D
ac_cv_env_LDFLAGS_value=3D
ac_cv_env_LIBS_set=3D
ac_cv_env_LIBS_value=3D
ac_cv_env_OPENSSL_CFLAGS_set=3D
ac_cv_env_OPENSSL_CFLAGS_value=3D
ac_cv_env_OPENSSL_LIBS_set=3D
ac_cv_env_OPENSSL_LIBS_value=3D
ac_cv_env_PATHFINDER_CFLAGS_set=3D
ac_cv_env_PATHFINDER_CFLAGS_value=3D
ac_cv_env_PATHFINDER_LIBS_set=3D
ac_cv_env_PATHFINDER_LIBS_value=3D
ac_cv_env_PKG_CONFIG_set=3D
ac_cv_env_PKG_CONFIG_value=3D
ac_cv_env_build_alias_set=3D
ac_cv_env_build_alias_value=3D
ac_cv_env_host_alias_set=3D
ac_cv_env_host_alias_value=3D
ac_cv_env_target_alias_set=3D
ac_cv_env_target_alias_value=3D
ac_cv_host=3Di686-pc-linux-gnu
ac_cv_path_install=3D'/usr/bin/install -c'
ac_cv_path_mkdir=3D/bin/mkdir
ac_cv_prog_AWK=3Dgawk
ac_cv_prog_ac_ct_CC=3Di586-poky-linux-gcc
ac_cv_prog_make_make_set=3Dyes

## ----------------- ##
## Output variables. ##
## ----------------- ##

ACLOCAL=3D'${SHELL} /home/jzhang/adt_installer/opkg-0.1.8/conf/missing --ru=
n aclocal-1.10'
AMDEPBACKSLASH=3D'\'
AMDEP_FALSE=3D'#'
AMDEP_TRUE=3D''
AMTAR=3D'${SHELL} /home/jzhang/adt_installer/opkg-0.1.8/conf/missing --run =
tar'
AM_MAKEFLAGS=3D''
AR=3D''
AUTOCONF=3D'${SHELL} /home/jzhang/adt_installer/opkg-0.1.8/conf/missing --r=
un autoconf'
AUTOHEADER=3D'${SHELL} /home/jzhang/adt_installer/opkg-0.1.8/conf/missing -=
-run autoheader'
AUTOMAKE=3D'${SHELL} /home/jzhang/adt_installer/opkg-0.1.8/conf/missing --r=
un automake-1.10'
AWK=3D'gawk'
BIGENDIAN_CFLAGS=3D''
CC=3D'i586-poky-linux-gcc'
CCDEPMODE=3D''
CFLAGS=3D'-march=3Di586'
CPP=3D''
CPPFLAGS=3D''
CURL_CFLAGS=3D''
CURL_LIBS=3D''
CXX=3D'i586-poky-linux-g++'
CYGPATH_W=3D'echo'
DEFS=3D''
DEPDIR=3D'.deps'
DSYMUTIL=3D''
ECHO=3D'echo'
ECHO_C=3D''
ECHO_N=3D'-n'
ECHO_T=3D''
EGREP=3D''
EXEEXT=3D''
F77=3D''
FC=3D''
GPGME_CFLAGS=3D''
GPGME_CONFIG=3D''
GPGME_LIBS=3D''
GREP=3D''
HAVE_PATHFINDER_FALSE=3D''
HAVE_PATHFINDER_TRUE=3D''
HAVE_SHA256_FALSE=3D''
HAVE_SHA256_TRUE=3D''
INSTALL_DATA=3D'${INSTALL} -m 644'
INSTALL_PROGRAM=3D'${INSTALL}'
INSTALL_SCRIPT=3D'${INSTALL}'
INSTALL_STRIP_PROGRAM=3D'$(install_sh) -c -s'
LDFLAGS=3D''
LIBOBJS=3D''
LIBS=3D''
LIBTOOL=3D''
LN_S=3D''
LTLIBOBJS=3D''
MAKEFLAGS=3D''
MAKEINFO=3D'${SHELL} /home/jzhang/adt_installer/opkg-0.1.8/conf/missing --r=
un makeinfo'
MKDIR_P=3D'/bin/mkdir -p'
NMEDIT=3D''
OBJC=3D''
OBJEXT=3D''
OPENSSL_CFLAGS=3D''
OPENSSL_LIBS=3D''
PACKAGE=3D'opkg'
PACKAGE_BUGREPORT=3D''
PACKAGE_NAME=3D'opkg'
PACKAGE_STRING=3D'opkg 0.1.8'
PACKAGE_TARNAME=3D'opkg'
PACKAGE_VERSION=3D'0.1.8'
PATHFINDER_CFLAGS=3D''
PATHFINDER_LIBS=3D''
PATH_SEPARATOR=3D':'
PKG_CONFIG=3D''
Q=3D''
RANLIB=3D''
SED=3D''
SET_MAKE=3D''
SHELL=3D'/bin/sh'
STRIP=3D''
V=3D''
VERSION=3D'0.1.8'
ac_ct_CC=3D'i586-poky-linux-gcc'
am__fastdepCC_FALSE=3D''
am__fastdepCC_TRUE=3D''
am__include=3D'include'
am__isrc=3D''
am__leading_dot=3D'.'
am__quote=3D''
am__tar=3D'${AMTAR} chof - "$$tardir"'
am__untar=3D'${AMTAR} xf -'
bindir=3D'${exec_prefix}/bin'
build=3D'i686-pc-linux-gnu'
build_alias=3D''
build_cpu=3D'i686'
build_os=3D'linux-gnu'
build_vendor=3D'pc'
datadir=3D'${datarootdir}'
datarootdir=3D'${prefix}/share'
docdir=3D'${datarootdir}/doc/${PACKAGE_TARNAME}'
dvidir=3D'${docdir}'
exec_prefix=3D'NONE'
host=3D'i686-pc-linux-gnu'
host_alias=3D''
host_cpu=3D'i686'
host_os=3D'linux-gnu'
host_vendor=3D'pc'
htmldir=3D'${docdir}'
includedir=3D'${prefix}/include'
infodir=3D'${datarootdir}/info'
install_sh=3D'$(SHELL) /home/jzhang/adt_installer/opkg-0.1.8/conf/install-s=
h'
libdir=3D'${exec_prefix}/lib'
libexecdir=3D'${exec_prefix}/libexec'
localedir=3D'${datarootdir}/locale'
localstatedir=3D'${prefix}/var'
mandir=3D'${datarootdir}/man'
mkdir_p=3D'/bin/mkdir -p'
oldincludedir=3D'/usr/include'
opkgetcdir=3D''
opkglibdir=3D''
opkglockfile=3D''
pdfdir=3D'${docdir}'
prefix=3D'/home/jzhang/adt_installer/opkg-0.1.8/.././opkg'
program_transform_name=3D's,x,x,'
psdir=3D'${docdir}'
sbindir=3D'${exec_prefix}/sbin'
sharedstatedir=3D'${prefix}/com'
shavedir=3D''
sysconfdir=3D'${prefix}/etc'
target_alias=3D''

## ----------- ##
## confdefs.h. ##
## ----------- ##

#define PACKAGE_NAME "opkg"
#define PACKAGE_TARNAME "opkg"
#define PACKAGE_VERSION "0.1.8"
#define PACKAGE_STRING "opkg 0.1.8"
#define PACKAGE_BUGREPORT ""
#define PACKAGE "opkg"
#define VERSION "0.1.8"

configure: exit 77

------=_NextPart_001_000B_01CB923D.2C459890--

------=_NextPart_000_000A_01CB923D.2C459890
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIdiDCCAyAw
ggKJoAMCAQICBDXe9M8wDQYJKoZIhvcNAQEFBQAwTjELMAkGA1UEBhMCVVMxEDAOBgNVBAoTB0Vx
dWlmYXgxLTArBgNVBAsTJEVxdWlmYXggU2VjdXJlIENlcnRpZmljYXRlIEF1dGhvcml0eTAeFw05
ODA4MjIxNjQxNTFaFw0xODA4MjIxNjQxNTFaME4xCzAJBgNVBAYTAlVTMRAwDgYDVQQKEwdFcXVp
ZmF4MS0wKwYDVQQLEyRFcXVpZmF4IFNlY3VyZSBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkwgZ8wDQYJ
KoZIhvcNAQEBBQADgY0AMIGJAoGBAMFdsVhnCGLuoJotHwhtkRRomAoe/toEbxOEYiHD0XzOnwXg
uAHwTjTs4oqVBGSs8WtTXwWzy2eAv0ICjv7dAQns4QAUT/z78AzdQ7pbK+EfgHCZFVeTFvEPl2q3
wmgjHMxNWTCsUR47ryvW7mNFe8XZX1DS41APOojnvxT94Me5AgMBAAGjggEJMIIBBTBwBgNVHR8E
aTBnMGWgY6BhpF8wXTELMAkGA1UEBhMCVVMxEDAOBgNVBAoTB0VxdWlmYXgxLTArBgNVBAsTJEVx
dWlmYXggU2VjdXJlIENlcnRpZmljYXRlIEF1dGhvcml0eTENMAsGA1UEAxMEQ1JMMTAaBgNVHRAE
EzARgQ8yMDE4MDgyMjE2NDE1MVowCwYDVR0PBAQDAgEGMB8GA1UdIwQYMBaAFEjmaPkr0rKV10fY
IyAQTzOYkJ/UMB0GA1UdDgQWBBRI5mj5K9KylddH2CMgEE8zmJCf1DAMBgNVHRMEBTADAQH/MBoG
CSqGSIb2fQdBAAQNMAsbBVYzLjBjAwIGwDANBgkqhkiG9w0BAQUFAAOBgQBYzinq/Pfetc4CuRe1
hdG54+CVzCUxDQCmkm5/tpJjnlCV0Zpv5BHeY4VumO6o/1rI01WyZnFX3sAh6z0qpyNJAQSGQnv8
7n+iFlK1Z2fTQNs7JliyKHc9rhR3Ydb6KmYnoA36p3Nc6nDxlCFlRF/6/O8paKmih3nvee9PrAd3
ODCCAz0wggKmoAMCAQICAwWw/zANBgkqhkiG9w0BAQUFADBOMQswCQYDVQQGEwJVUzEQMA4GA1UE
ChMHRXF1aWZheDEtMCsGA1UECxMkRXF1aWZheCBTZWN1cmUgQ2VydGlmaWNhdGUgQXV0aG9yaXR5
MB4XDTA2MDIxNjE4MDEzMFoXDTE2MDIxOTE4MDEzMFowUjELMAkGA1UEBhMCVVMxGjAYBgNVBAoT
EUludGVsIENvcnBvcmF0aW9uMScwJQYDVQQDEx5JbnRlbCBFeHRlcm5hbCBCYXNpYyBQb2xpY3kg
Q0EwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDBpd/XOb9QVqEZ8mQ1042TdOIq3ATD
IsV2xDyt30yLyMR5Wjtus0bn3B+he89BiNO/LP6+rFzEwlD55PlX+HLGIKeNNG97dqyc30FElEUj
ZzTZFq2N4e3kVJ/XAEEgANzV8v9qp7qWwxugPgfc3z9BkYot+CifozexHLb/hEZj+yISCU61kRZv
uSQ0E11yYL4dRgcglJeaHo3oX57rvIckaLsYV5/1Aj+R8DM1Ppk965XQAKsHfnyT7C4S50T4lVn4
lz36wOdNZn/zegG1zp41lnoTFfT4KuKVJH5x7YD1p6KbgJCKLovnujGuohquBNfdXKpZkvz6pGv+
iC1HawJdAgMBAAGjgaAwgZ0wDgYDVR0PAQH/BAQDAgEGMB0GA1UdDgQWBBQaxgxKxEdvqNutK/D0
Vgaj7TdUDDA6BgNVHR8EMzAxMC+gLaArhilodHRwOi8vY3JsLmdlb3RydXN0LmNvbS9jcmxzL3Nl
Y3VyZWNhLmNybDAfBgNVHSMEGDAWgBRI5mj5K9KylddH2CMgEE8zmJCf1DAPBgNVHRMBAf8EBTAD
AQH/MA0GCSqGSIb3DQEBBQUAA4GBABMQOK2kVKVIlUWwLTdywJ+e2O+PC/uQltK2F3lRyrPfBn69
tOkIP4SgDJOfsxyobIrPLe75kBLw+Dom13OBDp/EMZJZ1CglQfVV8co9mT3aZMjSGGQiMgkJLR3j
Mfr900fXZKj5XeqCJ+JP0mEhJGEdVCY+FFlksJjV86fDrq1QMIIFYzCCBEugAwIBAgIKYSyUiQAA
AAAABTANBgkqhkiG9w0BAQUFADBSMQswCQYDVQQGEwJVUzEaMBgGA1UEChMRSW50ZWwgQ29ycG9y
YXRpb24xJzAlBgNVBAMTHkludGVsIEV4dGVybmFsIEJhc2ljIFBvbGljeSBDQTAeFw0wNjAzMjIy
MjIyNDJaFw0xMjAzMjIyMjMyNDJaMFYxCzAJBgNVBAYTAlVTMRowGAYDVQQKExFJbnRlbCBDb3Jw
b3JhdGlvbjErMCkGA1UEAxMiSW50ZWwgRXh0ZXJuYWwgQmFzaWMgSXNzdWluZyBDQSAzQTCCASIw
DQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKvXqH/ah10uJc7YzQUh+XEDNqS6IsXOyqCtizr9
x6F+v6iRAbvddRRJRWixfV78qarSN9WMymJ90M8c9/Dfr1yzFuq95RgCAF3vdve3wKi7kJv6lkMJ
wyyB+uIYcWtljYx2LDqbb9S6Z6He3q8W/aGKvu23I9ksNx+cmZcDNZwGdXVIEHpEMyA4bp0RvYtf
p8BsGAyn6YuK63HugeyYdeFL+4+Wz2tGUqw9OWhob6oV1oDH3zboLhHJiQ2oIj3jAJ3/LrIkzcWP
2R20UIliDAPAAl6MNWJPdsNK5EEeuxEuUSpdFsMj5rBmPHH4U8i8rUmi6GEOcX5rwAw64AzS3gEC
AwEAAaOCAjUwggIxMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFAlpgTN7BnOPI0wKA9/3FoER
ghMFMAsGA1UdDwQEAwIBhjAQBgkrBgEEAYI3FQEEAwIBADAZBgkrBgEEAYI3FAIEDB4KAFMAdQBi
AEMAQTAfBgNVHSMEGDAWgBQaxgxKxEdvqNutK/D0Vgaj7TdUDDCBvQYDVR0fBIG1MIGyMIGvoIGs
oIGphk5odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L0NSTC9JbnRlbCUyMEV4dGVybmFs
JTIwQmFzaWMlMjBQb2xpY3klMjBDQS5jcmyGV2h0dHA6Ly9jZXJ0aWZpY2F0ZXMuaW50ZWwuY29t
L3JlcG9zaXRvcnkvQ1JML0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUyMFBvbGljeSUyMENBLmNy
bDCB4wYIKwYBBQUHAQEEgdYwgdMwYwYIKwYBBQUHMAKGV2h0dHA6Ly93d3cuaW50ZWwuY29tL3Jl
cG9zaXRvcnkvY2VydGlmaWNhdGVzL0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUyMFBvbGljeSUy
MENBLmNydDBsBggrBgEFBQcwAoZgaHR0cDovL2NlcnRpZmljYXRlcy5pbnRlbC5jb20vcmVwb3Np
dG9yeS9jZXJ0aWZpY2F0ZXMvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwUG9saWN5JTIwQ0Eu
Y3J0MA0GCSqGSIb3DQEBBQUAA4IBAQCuNCnecJ+vDpXzsHOzMEyz4KgTNDbJROHag8H/ZVga7soc
oJyC+HKqDfQgxifVorbTbSajCBEAxqg6bbNWBJ6qKOFHneBrXkENf5WdD50eCTCFWRV3EIsHEOQ1
kP0eNYV5Ed4hp9y6wASV6z2z86O4+qouLJiow4AIhoCKD8rEyD7ODgTvjvLCKpsVyPlG1jOVSsOS
IF2VUmueAmK3RFU4np83zerK/j0G37owhniEDT6ZhwkUd0XL45nt1m7yApMEbnXUTHNaXnE+P98k
k3nDXdW25sB+5xWcYR3GpgMdQiZgP/f0KZ+yZKNE7gcp3I/O4pXqUNWIsLSYTi3soAR2MIIFYzCC
BEugAwIBAgIKYSyl/gAAAAAABjANBgkqhkiG9w0BAQUFADBSMQswCQYDVQQGEwJVUzEaMBgGA1UE
ChMRSW50ZWwgQ29ycG9yYXRpb24xJzAlBgNVBAMTHkludGVsIEV4dGVybmFsIEJhc2ljIFBvbGlj
eSBDQTAeFw0wNjAzMjIyMjIyNDdaFw0xMjAzMjIyMjMyNDdaMFYxCzAJBgNVBAYTAlVTMRowGAYD
VQQKExFJbnRlbCBDb3Jwb3JhdGlvbjErMCkGA1UEAxMiSW50ZWwgRXh0ZXJuYWwgQmFzaWMgSXNz
dWluZyBDQSAzQjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMDoHJYUGvcdR4k0Qv8/
RrwNX4+vEe5PN2LnGn4xfIWwdUbk5+zvrRy1HjoKdG/AShZfxAuFoVyNIah5GJLpiS/vGbsDYKK+
EZcIcmtPfvbB9Yg09EnQ0OpsZ2ORRd5lYUfMUU+zkpgL96vKFdkiG+eeHEwnSS3VikGVrF7UDdKf
vxZwRwQCx6rEHAFPCjBDVfGYZuYT1EDhSDvzEiU7KzBsxrdBCFU4RYL7kh+do+vyMDlBzpw3WKvM
Vbf3s5lxYiY7AjEhU8OSyZEQlgtK8PNyifHjmyrSaeJrPshM3PuLFG4d3gm1UJEiGNzxcHGb6YLP
29IQAwY5mAk8j+UOVcsCAwEAAaOCAjUwggIxMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFG/D
cREooZ0ZV/VnV8/ZKSaI1aWiMAsGA1UdDwQEAwIBhjAQBgkrBgEEAYI3FQEEAwIBADAZBgkrBgEE
AYI3FAIEDB4KAFMAdQBiAEMAQTAfBgNVHSMEGDAWgBQaxgxKxEdvqNutK/D0Vgaj7TdUDDCBvQYD
VR0fBIG1MIGyMIGvoIGsoIGphk5odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L0NSTC9J
bnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBQb2xpY3klMjBDQS5jcmyGV2h0dHA6Ly9jZXJ0aWZp
Y2F0ZXMuaW50ZWwuY29tL3JlcG9zaXRvcnkvQ1JML0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUy
MFBvbGljeSUyMENBLmNybDCB4wYIKwYBBQUHAQEEgdYwgdMwYwYIKwYBBQUHMAKGV2h0dHA6Ly93
d3cuaW50ZWwuY29tL3JlcG9zaXRvcnkvY2VydGlmaWNhdGVzL0ludGVsJTIwRXh0ZXJuYWwlMjBC
YXNpYyUyMFBvbGljeSUyMENBLmNydDBsBggrBgEFBQcwAoZgaHR0cDovL2NlcnRpZmljYXRlcy5p
bnRlbC5jb20vcmVwb3NpdG9yeS9jZXJ0aWZpY2F0ZXMvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2lj
JTIwUG9saWN5JTIwQ0EuY3J0MA0GCSqGSIb3DQEBBQUAA4IBAQBAiWWHL6T21QXFZDyaUIye0jh7
f40GXqi75Ro5JbpROtlZBqyRq6oPMAG6Igxd5Bd9TMtNkOvguknFnK1y17UdMhLOl+FuInE+FAWk
803aRW27OsX+ot0KmPioKnZ3L1K5qcQS3tp6or7AaZzd0w0qFitm4UfP9nnTXQtY9XM5QJ07IKFD
E3tlOlamKhjbiJV3FKigCVesPZSx9h2G7Ve4irEfz915Vks26AJHGZagEHNxM9exkgem4ENsG+t0
vYqn9x7YsqJ6fmbOSyrzjzb3CYeEfyE5SL+f3Vx9uMsQDyb8LVCDBXQtxLEHnFEBPrRSSF9kPmyj
avx4UqFdPEyCMIIGAzCCBOugAwIBAgIKGmwusAAAAAApdjANBgkqhkiG9w0BAQUFADBWMQswCQYD
VQQGEwJVUzEaMBgGA1UEChMRSW50ZWwgQ29ycG9yYXRpb24xKzApBgNVBAMTIkludGVsIEV4dGVy
bmFsIEJhc2ljIElzc3VpbmcgQ0EgM0IwHhcNMDgwNDE0MjMxNDQ4WhcNMTEwNDE0MjMxNDQ4WjBB
MRcwFQYDVQQDEw5aaGFuZywgSmVzc2ljYTEmMCQGCSqGSIb3DQEJARYXamVzc2ljYS56aGFuZ0Bp
bnRlbC5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDQbirxoX/8OWYyzy4UnZ7N
xXoADLZqxxH1q4lMF2zuAHjyDnNj/4ReRzB6AIDEg1BQWS4z5jC6oApos3HvFEsGbS3pYCWSo5Vb
jtY5HWOBRPJ2rQ8wzITqcEEBWooYCj5LJeAjPuOZoZPVrKPI1khbOYzaJUwQpICfaErHZyM4p2mV
AYXcUa/N0zKGnZmNaO6Dff96g41C9jEyfOFEtYOpLdQoXhD1i8tW17WxbHMuiXx3PR3GUdBADrRf
I3wzqn4rh0y0D4l9mBfgTybVN3UR35ZFGSRsuldyJeeKcCSgghJi3K4ZTxzMfQ6+OKBu6SBeNKWk
e2Q4f8CIf0+8ZpwfAgMBAAGjggLmMIIC4jALBgNVHQ8EBAMCB4AwHQYDVR0OBBYEFPIpOYEzCqH+
037yR8d0Rarz7r7mMDwGCSsGAQQBgjcVBwQvMC0GJSsGAQQBgjcVCIbDjHWEmeVRg/2BKIWOn1OC
kcAJZ4HevTmV8EMCAWQCAQYwHwYDVR0jBBgwFoAUb8NxESihnRlX9WdXz9kpJojVpaIwgckGA1Ud
HwSBwTCBvjCBu6CBuKCBtYZUaHR0cDovL3d3dy5pbnRlbC5jb20vcmVwb3NpdG9yeS9DUkwvSW50
ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwSXNzdWluZyUyMENBJTIwM0IuY3Jshl1odHRwOi8vY2Vy
dGlmaWNhdGVzLmludGVsLmNvbS9yZXBvc2l0b3J5L0NSTC9JbnRlbCUyMEV4dGVybmFsJTIwQmFz
aWMlMjBJc3N1aW5nJTIwQ0ElMjAzQi5jcmwwge8GCCsGAQUFBwEBBIHiMIHfMGkGCCsGAQUFBzAC
hl1odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L2NlcnRpZmljYXRlcy9JbnRlbCUyMEV4
dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjAzQi5jcnQwcgYIKwYBBQUHMAKGZmh0dHA6
Ly9jZXJ0aWZpY2F0ZXMuaW50ZWwuY29tL3JlcG9zaXRvcnkvY2VydGlmaWNhdGVzL0ludGVsJTIw
RXh0ZXJuYWwlMjBCYXNpYyUyMElzc3VpbmclMjBDQSUyMDNCLmNydDAfBgNVHSUEGDAWBggrBgEF
BQcDBAYKKwYBBAGCNwoDDDApBgkrBgEEAYI3FQoEHDAaMAoGCCsGAQUFBwMEMAwGCisGAQQBgjcK
AwwwSwYDVR0RBEQwQqAnBgorBgEEAYI3FAIDoBkMF2plc3NpY2EuemhhbmdAaW50ZWwuY29tgRdq
ZXNzaWNhLnpoYW5nQGludGVsLmNvbTANBgkqhkiG9w0BAQUFAAOCAQEANFSBbauSm1ktwUQI6fGq
9XhTSUsty5/CHOrOwFe4K7LX0clVirXUYakIZXXG86lD1piRrjt23MhKRekYNIv0mfJklEF7yV5M
VVqwDK1Uz6bsiw/SQnqfBuFrd70W4cua3bU1uu3dAhZBh482BtBZYFockuHd3YBFT7xmykOaAMLP
CttrNSijP7HsbetGG2GLLc3CWauSXXr2ELseXkw3KkUKBPMw+DFAJdsRyBe0L+OwlDplr8POBXXb
uuQK7Wo84mX7gMT0uSq/Luex/BD1xn2brKVs9t4FvL8ifxv4LuWRzv45EgPN4T12I202GBQ8iJtZ
DkT3+9QPiQ35Hmuy6zCCBkowggUyoAMCAQICCnmKHVEAAAAAHyswDQYJKoZIhvcNAQEFBQAwVjEL
MAkGA1UEBhMCVVMxGjAYBgNVBAoTEUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBF
eHRlcm5hbCBCYXNpYyBJc3N1aW5nIENBIDNBMB4XDTA4MDQxNDIzMTM1MVoXDTExMDQxNDIzMTM1
MVowQTEXMBUGA1UEAxMOWmhhbmcsIEplc3NpY2ExJjAkBgkqhkiG9w0BCQEWF2plc3NpY2Euemhh
bmdAaW50ZWwuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2Lgwg9E/0F9weWx5
ZCk0oiuerOIqOFTXcithjh7zRhiq8v/z9sXR/yWXUA7JK5E5JLPRNl0nQJFv/FLTaq9/9PchiI/N
4v7L/ERXTzdMNvwOEqNOy8SOmmOOjF8N1vtrIv+WdBYiqBvtfQ9xGXadxckgrBOSTtTrw4iShbnG
mVrw6mYYIOdPIKhq3QFmxHs93R8IrmIjvMbf31JhiAp7KJ/mc+bckmYW/9fNNEQkMbuF3B6iWsTk
8c+D8oWmxuw+m6svwEMKck8yr3ldF6sZ6NCKXJChwDmjZMHBBSV6IUUycyl6SJ33j3r9Beki5bvG
mhZnfGBLWODaLv4PDbG7BwIDAQABo4IDLTCCAykwCwYDVR0PBAQDAgQwMEQGCSqGSIb3DQEJDwQ3
MDUwDgYIKoZIhvcNAwICAgCAMA4GCCqGSIb3DQMEAgIAgDAHBgUrDgMCBzAKBggqhkiG9w0DBzAd
BgNVHQ4EFgQUKEdHKlCw71rRzz5gJWoRJwoviW0wPQYJKwYBBAGCNxUHBDAwLgYmKwYBBAGCNxUI
hsOMdYSZ5VGD/YEohY6fU4KRwAlnhLnZQYeE/04CAWQCAQkwHwYDVR0jBBgwFoAUCWmBM3sGc48j
TAoD3/cWgRGCEwUwgckGA1UdHwSBwTCBvjCBu6CBuKCBtYZUaHR0cDovL3d3dy5pbnRlbC5jb20v
cmVwb3NpdG9yeS9DUkwvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwSXNzdWluZyUyMENBJTIw
M0EuY3Jshl1odHRwOi8vY2VydGlmaWNhdGVzLmludGVsLmNvbS9yZXBvc2l0b3J5L0NSTC9JbnRl
bCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjAzQS5jcmwwge8GCCsGAQUFBwEB
BIHiMIHfMGkGCCsGAQUFBzAChl1odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L2NlcnRp
ZmljYXRlcy9JbnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjAzQS5jcnQw
cgYIKwYBBQUHMAKGZmh0dHA6Ly9jZXJ0aWZpY2F0ZXMuaW50ZWwuY29tL3JlcG9zaXRvcnkvY2Vy
dGlmaWNhdGVzL0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUyMElzc3VpbmclMjBDQSUyMDNBLmNy
dDAfBgNVHSUEGDAWBggrBgEFBQcDBAYKKwYBBAGCNwoDBDApBgkrBgEEAYI3FQoEHDAaMAoGCCsG
AQUFBwMEMAwGCisGAQQBgjcKAwQwSwYDVR0RBEQwQqAnBgorBgEEAYI3FAIDoBkMF2plc3NpY2Eu
emhhbmdAaW50ZWwuY29tgRdqZXNzaWNhLnpoYW5nQGludGVsLmNvbTANBgkqhkiG9w0BAQUFAAOC
AQEAlkSHAnj2YSCjtyOIJJtoNia1mv4qLpp3rxqxeZzEG9Bk4k4hGHkozj1p+mi368ieYl/fTPtK
IIBDCwod9o12adTGGW7wyUHjZfalumhsFoKTXbUU/CC7lpooUKuDxCjaIjsc4rdDxP1MEAUX43IG
kLRqq9elDWluC0WjR+q+cAqKMJxLmAKhKz7JDTNrbfWwuoETGdCMkLUK464/FSvfDKoV+Ypkoq1x
YiTi71VhwWenYKPnyKbLgiULEgdfwQscMzJQ9rmq1iyfoXuXPSkCA6nfZKoSkBOVJQXjW/+B2wxe
YmaO9Qc5P3CJvsmgmgX5mK2wyKEw0JCwTHE3w7FkFjGCA0EwggM9AgEBMGQwVjELMAkGA1UEBhMC
VVMxGjAYBgNVBAoTEUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBC
YXNpYyBJc3N1aW5nIENBIDNCAgoabC6wAAAAACl2MAkGBSsOAwIaBQCgggGyMBgGCSqGSIb3DQEJ
AzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTEwMTIwMzAwMjI1NFowIwYJKoZIhvcNAQkE
MRYEFEw46e5GAqHBZbZ+e2ubMXk46qSDMGcGCSqGSIb3DQEJDzFaMFgwCgYIKoZIhvcNAwcwDgYI
KoZIhvcNAwICAgCAMA0GCCqGSIb3DQMCAgFAMAcGBSsOAwIHMA0GCCqGSIb3DQMCAgEoMAcGBSsO
AwIaMAoGCCqGSIb3DQIFMHMGCSsGAQQBgjcQBDFmMGQwVjELMAkGA1UEBhMCVVMxGjAYBgNVBAoT
EUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBCYXNpYyBJc3N1aW5n
IENBIDNBAgp5ih1RAAAAAB8rMHUGCyqGSIb3DQEJEAILMWagZDBWMQswCQYDVQQGEwJVUzEaMBgG
A1UEChMRSW50ZWwgQ29ycG9yYXRpb24xKzApBgNVBAMTIkludGVsIEV4dGVybmFsIEJhc2ljIElz
c3VpbmcgQ0EgM0ECCnmKHVEAAAAAHyswDQYJKoZIhvcNAQEBBQAEggEAk9EqqAqhojHTpz7RLlHx
fPJYTlDNDMG6eYwbjTZdnrrL9VX/fr9dHNSY65ELFGVhyyqUMoBxBS0ORsKhDMSkwUx018iW7Fdm
kbdIaHvOuiKqXsigLN822waS5/BDQlEyQOY4jfuJW2aaL57gNj3cGNzGK0fD0QnqvyfExT8vwuIR
ewsGD0SGGtN61mumFHbiHsLg0ChLkiwWusrt37TIGm5aWKDAEqy7Bx/acf4SLzTqRe+Ep9fwuCnt
nbjpDOibmfws0ac10qN8A0iMU642B5LG2n7Cn6w+Xb4Z8XjFrqH4GB4n5vudTSZP24k7wO6VVQdX
Zg42y46LgAOW2PunWwAAAAAAAA==

------=_NextPart_000_000A_01CB923D.2C459890--
