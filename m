Return-Path: <adm.dizon@pciltd.com.sg>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E18CAE00824; Wed, 14 Jan 2015 00:02:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Wed, 14 Jan 2015 00:02:16 PST
Received: from webmail.pciltd.com.sg (webmail.pciltd.com.sg [119.73.250.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EF67E004FF
	for <yocto@yoctoproject.org>; Wed, 14 Jan 2015 00:02:16 -0800 (PST)
Received: from PCISGEX.pciltd.com.sg ([192.168.0.147]) by
	PCISGEX.pciltd.com.sg ([192.168.0.147]) with mapi id 14.03.0123.003;
	Wed, 14 Jan 2015 16:01:10 +0800
From: "Alvin D.M. DIZON" <adm.dizon@pciltd.com.sg>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: bitbake freezes at recipe qt4-x11-free-1_4.8.5-r0: task
	do_compile: Started
Thread-Index: AdAvz7otxoUTQWAqTWKyDhI8XRekOQ==
Date: Wed, 14 Jan 2015 08:01:09 +0000
Message-ID: <46557CEF4ABDB54B92C59390D2741FD1BCB5D6@PCISGEX.pciltd.com.sg>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [116.50.213.202]
MIME-Version: 1.0
Subject: bitbake freezes at recipe qt4-x11-free-1_4.8.5-r0: task do_compile: Started
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
X-List-Received-Date: Wed, 14 Jan 2015 08:02:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I am building an image using the "bitbake fsl-image-x11" command. Bitbake s=
eems to run through all the tasks but the output freezes at "recipe qt4-x11=
-free-1_4.8.5-r0: task do_compile: Started". I have tried stopping bitbake =
and rebuilding, but it always stops at the same task. I am using a Ubuntu 1=
2.04 LTS VM running on Oracle Virtualbox. Here is my local.conf:

MACHINE ??=3D 'imx6qsabresd'
DISTRO ?=3D 'poky'
PACKAGE_CLASSES ?=3D "package_rpm"
EXTRA_IMAGE_FEATURES =3D "debug-tweaks"
USER_CLASSES ?=3D "buildstats image-mklibs image-prelink"
PATCHRESOLVE =3D "noop"
BB_DISKMON_DIRS =3D "\
    STOPTASKS,${TMPDIR},1G,100K \
    STOPTASKS,${DL_DIR},1G,100K \
    STOPTASKS,${SSTATE_DIR},1G,100K \
    ABORT,${TMPDIR},100M,1K \
    ABORT,${DL_DIR},100M,1K \
    ABORT,${SSTATE_DIR},100M,1K"
CONF_VERSION =3D "1"

BB_NUMBER_THREADS =3D '16'
PARALLEL_MAKE =3D '-j 16'

DL_DIR ?=3D "${BSPDIR}/downloads/"
ACCEPT_FSL_EULA =3D ""
INHERIT +=3D "rm_work"

This is my build configuration:

Build Configuration:
BB_VERSION        =3D "1.20.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "Ubuntu-12.04"
TARGET_SYS        =3D "arm-poky-linux-gnueabi"
MACHINE           =3D "imx6qsabresd"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.5.3"
TUNE_FEATURES     =3D "armv7a vfp neon callconvention-hard cortexa9"
TARGET_FPU        =3D "vfp-neon"
meta
meta-yocto
meta-oe
meta-fsl-arm
meta-fsl-arm-extra
meta-fsl-demos
meta-fsl-arm
meta-fsl-demos
meta-browser
meta-gnome
meta-networking   =3D "branch:e9f640dce8c13e99ab4d6eecb574d34e26dda958"


I also viewed the log.do_compile for Qt, and saw lots of errors like these:


In file included from ../JavaScriptCore/wtf/PossiblyNull.h:29:0,
                 from ../JavaScriptCore/wtf/FastMalloc.h:25,
                 from ./config.h:153,
                 from dom/DOMStringMap.cpp:26:
../JavaScriptCore/wtf/StdLibExtras.h: In function 'TO WTF::bitwise_cast(FRO=
M)':
../JavaScriptCore/wtf/Assertions.h:326:47: warning: typedef 'dummyWTF_bitwi=
se_cast_sizeof_casted_types_is_equal' locally defined but not used [-Wunuse=
d-local-typedefs]
 #define COMPILE_ASSERT(exp, name) typedef int dummy##name [(exp) ? 1 : -1]
                                               ^
../JavaScriptCore/wtf/StdLibExtras.h:96:5: note: in expansion of macro 'COM=
PILE_ASSERT'
     COMPILE_ASSERT(sizeof(TO) =3D=3D sizeof(FROM), WTF_bitwise_cast_sizeof=
_casted_types_is_equal);
     ^
../JavaScriptCore/wtf/StdLibExtras.h: In function 'size_t WTF::roundUpToMul=
tipleOf(size_t)':
../JavaScriptCore/wtf/Assertions.h:326:47: warning: typedef 'dummydivisor_i=
s_a_power_of_two' locally defined but not used [-Wunused-local-typedefs]
 #define COMPILE_ASSERT(exp, name) typedef int dummy##name [(exp) ? 1 : -1]
                                               ^
../JavaScriptCore/wtf/StdLibExtras.h:120:5: note: in expansion of macro 'CO=
MPILE_ASSERT'
     COMPILE_ASSERT(divisor && !(divisor & (divisor - 1)), divisor_is_a_pow=
er_of_two);
     ^


I also saw these last lines which seem to point to the Qt Webkit library:


make[2]: Leaving directory `/home/alvin/yocto_branch/build-x11/tmp/work/imx=
6qsabresd-poky-linux-gnueabi/qt4-x11-free/1_4.8.5-r0/qt-everywhere-opensour=
ce-src-4.8.5/src/3rdparty/webkit/Source/WebCore'
make[1]: *** [sub-WebCore-make_default-ordered] Error 2
make[1]: Leaving directory `/home/alvin/yocto_branch/build-x11/tmp/work/imx=
6qsabresd-poky-linux-gnueabi/qt4-x11-free/1_4.8.5-r0/qt-everywhere-opensour=
ce-src-4.8.5/src/3rdparty/webkit/Source'
make: *** [sub-webkit-make_default-ordered] Error 2
ERROR: oe_runmake failed
WARNING: exit code 1 from a shell command.


I am new to Linux and the Yocto Project, and have been trying to resolve th=
is for days now, so any help would be appreciated.

Thanks,
Alvin
[PCI]

  Innovative Manufacturing Solutions. Professionally Delivered!

The information contained in this email is confidential and is intended for=
 addressee(s) only. If you have received this email in error, please notify=
 the originator immediately. Nothing in this email shall constitute an offe=
r or acceptance leading to a legally binding contract which shall only aris=
e from a formal written agreement between yourselves and ourselves in the f=
orm of a Purchase Order issued by us and accepted by you in writing. For th=
e avoidance of doubt, this email shall not be construed in any way as a for=
mal written agreement. We accept no liability for any damage arising from a=
lteration of the contents of this message by a third party or as a result o=
f any virus being passed on. Please consider your environmental responsibil=
ity before printing this e-mail.

