Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D833CE006D9
	for <yocto@yoctoproject.org>; Sat, 23 Jun 2012 00:58:17 -0700 (PDT)
Received: by dadz8 with SMTP id z8so3899755dad.35
	for <yocto@yoctoproject.org>; Sat, 23 Jun 2012 00:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=oOZsbJBY37Zt+ULSu5Ts4Fxtdp4u3X2arVDPT2YdMIA=;
	b=ghrD93ZIPk3wp3E+zuaS8Hhx3d5fG3tdAPrQ0mk07JTJ+16RoADL/sWIpXa/Pv2evC
	Yfp9UCd6ElmYH+4t5uFhilgxhmIah/m91qmQp4b2Xk/V4XDN6/c99DYapIcYNLam1Yau
	HJsabSUEtoU3QfSzOriVg+a4OD/r6SozyKGwewZrPORm3ejY54W+dcQL+K6wsdQ6VVx/
	jVmqDCpvZ6+aMmTOS+/9jpyOloH99xaFggxu89gTzzZEcfXJKehIGl7zpbe8cCsqiXQs
	j2XjQ7neSiVzn07+uEoxp8Tjq1e6WgWvi9IQVgqcXuk/UtUfjyoyL5tctzcAC/93Rtss
	m+ag==
Received: by 10.68.125.228 with SMTP id mt4mr18693835pbb.21.1340438297432;
	Sat, 23 Jun 2012 00:58:17 -0700 (PDT)
Received: from [192.168.1.102] ([94.205.109.242])
	by mx.google.com with ESMTPS id wf7sm1653960pbc.34.2012.06.23.00.57.56
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 23 Jun 2012 00:58:15 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CAMKF1srTFrW4VwF5ApQFW+oNs_4CiRiEvnZn6EiVCWBC_7DNTQ@mail.gmail.com>
Date: Sat, 23 Jun 2012 11:57:52 +0400
Message-Id: <6C530CF7-A92F-495A-8472-B2D46EBBDFCD@gmail.com>
References: <2E8A3DA3-EC31-4CE7-979D-E842AFFAB8CA@gmail.com>
	<42D532F4-5629-4BE6-B8AD-3E28A192327D@gmail.com>
	<CAMKF1srTFrW4VwF5ApQFW+oNs_4CiRiEvnZn6EiVCWBC_7DNTQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1278)
X-Mailman-Approved-At: Mon, 25 Jun 2012 08:04:07 -0700
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: SRCREV spec not working for kernel git recipes
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
X-List-Received-Date: Sat, 23 Jun 2012 07:58:18 -0000
X-Groupsio-MsgNum: 7437
Content-Type: multipart/mixed;
	boundary="Apple-Mail=_2A4BACD2-6D54-4C41-9DD5-3172313E307E"

--Apple-Mail=_2A4BACD2-6D54-4C41-9DD5-3172313E307E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi Khem,

On Jun 23, 2012, at 11:29 AM, Khem Raj wrote:

>> I found out that if I specify SRCREV_pn-${PN}, it works and picks up th=
e correct commit id, as follows:
>>=20
>> SRCREV_pn-${PN} =3D "a5556fb251253ccb674bd22d9703c37f6f8807a8"
>>=20
>> However, if you simply specifying SRCREV =3D  "a5556fb251253ccb674bd22d=
9703c37f6f8807a8", it has no effect and it always picks up the latest commi=
t from the git repository.
>>=20
>> It would be great if someone could please explain why this is so, becau=
se I search through the Yocto documentation and it isn't mentioned anywhere=
. The OE classic way of doing things, it used to pick up the correct commit=
 by just specifying SRCREV. Now I find that you have to specify SRCREV_pn-$=
{PN} to get it to work.
>>=20
>> Is this documented somewhere?
>=20
> ?
> can you port bitbake -e virtual/kernel output with and without change
> somewhere ?


The output files are rather large.=20



BTW, I do not have a PROVIDES +=3D "virtual/kernel" entry in the linux-xil=
inx kernel recipes. Is that necessary to get SRCREV to work?

Best regards,

Elvis Dowson

--Apple-Mail=_2A4BACD2-6D54-4C41-9DD5-3172313E307E
Content-Disposition: attachment;
	filename=SRCREV_pn-.txt
Content-Type: text/plain;
	name="SRCREV_pn-.txt"
Content-Transfer-Encoding: quoted-printable

Loading cache...done.
Loaded 1529 entries from dependency cache.
Parsing recipes...done.
Parsing of 1193 .bb files complete (1192 cached, 1 parsed). 1529 targets, 4=
0 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
# STAGING_INCDIR_NATIVE=3D${STAGING_DIR_NATIVE}${includedir_native}
STAGING_INCDIR_NATIVE=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/u=
sr/include"
# KERNEL_IMAGEDEST=3Dboot
KERNEL_IMAGEDEST=3D"boot"
# prefix=3D/usr
export prefix=3D"/usr"
# FREESMARTPHONE_GIT=3Dgit://git.freesmartphone.org
FREESMARTPHONE_GIT=3D"git://git.freesmartphone.org"
# INHERIT_INSANE=3Dinsane
INHERIT_INSANE=3D"insane"
# CVSDIR=3D${CO_DIR}/cvs
CVSDIR=3D"/tool/yocto/poky/build/downloads/cvs"
# SVNDIR=3D${CO_DIR}/svn
SVNDIR=3D"/tool/yocto/poky/build/downloads/svn"
# PREFERRED_VERSION_gcc-cross-intermediate=3D${GCCVERSION}
PREFERRED_VERSION_gcc-cross-intermediate=3D"4.7%"
# bindir_cross=3D/bin
bindir_cross=3D"/bin"
# BASEDEPENDS=3D${@base_dep_prepend(d)}
# PREFERRED_PROVIDER_libgcc-nativesdk=3Dlibgcc-nativesdk
PREFERRED_PROVIDER_libgcc-nativesdk=3D"libgcc-nativesdk"
# BB_CONSOLELOG=3D${TMPDIR}/cooker.log.${DATETIME}
BB_CONSOLELOG=3D"/tool/yocto/poky/build/tmp/cooker.log.20120623074645"
# STRIP=3D${HOST_PREFIX}strip
export STRIP=3D"powerpc-poky-linux-strip"
# STAGING_DATADIR=3D${STAGING_DIR_HOST}${datadir}
STAGING_DATADIR=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5/usr/share"
# target_datadir=3D/usr/share
target_datadir=3D"/usr/share"
# PKG_kernel-base=3Dkernel-${@legitimize_package_name('${KERNEL_VERSION}')}
PKG_kernel-base=3D"kernel-3.3.0-14.2-build1"
# FETCHCOMMAND_cvs=3D/usr/bin/env cvs '-d${CVSROOT}' co ${CVSCOOPTS} ${CVSM=
ODULE}
FETCHCOMMAND_cvs=3D"/usr/bin/env cvs '-d${CVSROOT}' co ${CVSCOOPTS} ${CVSMO=
DULE}"
# base_bindir_native=3D/bin
base_bindir_native=3D"/bin"
# localstatedir=3D${base_prefix}/var
export localstatedir=3D"/var"
# SECTION_${PN}-dbg=3DNone
# DATETIME=3D${DATE}${TIME}
DATETIME=3D"20120623074645"
# BUILDCFG_VARS=3DBB_VERSION TARGET_ARCH TARGET_OS MACHINE DISTRO DISTRO_VE=
RSION TUNE_FEATURES TARGET_FPU
BUILDCFG_VARS=3D"BB_VERSION TARGET_ARCH TARGET_OS MACHINE DISTRO DISTRO_VER=
SION TUNE_FEATURES TARGET_FPU"
# BUILD_CC=3D${CCACHE}${BUILD_PREFIX}gcc ${BUILD_CC_ARCH}
export BUILD_CC=3D"gcc"
# IMAGE_FEATURES=3D ${EXTRA_IMAGE_FEATURES}
IMAGE_FEATURES=3D"debug-tweaks"
# DESCRIPTION_linux-xilinx-staticdev=3D${DESCRIPTION}  This package contain=
s static libraries for software development.
DESCRIPTION_linux-xilinx-staticdev=3D"Linux kernel for Xilinx platforms  Th=
is package contains static libraries for software development."
# SEPPUKU_AUTOBUILD=3DNone
# INITRAMFS_FSTYPES=3Dcpio.gz
INITRAMFS_FSTYPES=3D"cpio.gz"
# PREFERRED_VERSION_cross-localedef-native=3D${EGLIBCVERSION}
PREFERRED_VERSION_cross-localedef-native=3D"2.15"
# INHIBIT_DEFAULT_DEPS=3D1
INHIBIT_DEFAULT_DEPS=3D"1"
# INITRAMFS_TASK=3D
# SOLIBSDEV_darwin8=3D.dylib
SOLIBSDEV_darwin8=3D".dylib"
# SOLIBSDEV_darwin9=3D.dylib
SOLIBSDEV_darwin9=3D".dylib"
# USER=3Delvis
export USER=3D"elvis"
# OES_BITBAKE_CONF=3D1
OES_BITBAKE_CONF=3D"1"
# QADEPENDS_virtclass-nativesdk=3D
# PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}libc-for-gcc=3DNone
# SUMMARY_linux-xilinx-doc=3D${SUMMARY} - Documentation files
SUMMARY_linux-xilinx-doc=3D"linux-xilinx version 3.3.0-r0 - Documentation f=
iles"
# UPDATECOMMAND=3DERROR, this must be a BitBake bug
UPDATECOMMAND=3D"ERROR, this must be a BitBake bug"
# EXTENDPE=3D${@['','${PE\x7d_'][d.getVar('PE',1) > 0]}
# ALLOW_EMPTY_linux-xilinx-dbg=3D1
ALLOW_EMPTY_linux-xilinx-dbg=3D"1"
# PREFERRED_VERSION_gcc-cross-initial=3D${GCCVERSION}
PREFERRED_VERSION_gcc-cross-initial=3D"4.7%"
# KERNEL_PRIORITY=3D${@int(d.getVar('PV',1).split('-')[0].split('+')[0].spl=
it('.')[0]) * 10000 +                        int(d.getVar('PV',1).split('-'=
)[0].split('+')[0].split('.')[1]) * 100 +                        int(d.getV=
ar('PV',1).split('-')[0].split('+')[0].split('.')[-1])}
KERNEL_PRIORITY=3D"30300"
# BBINCLUDED=3D/tool/yocto/poky/meta/classes/kernel-arch.bbclass /tool/yoct=
o/poky/meta/classes/utility-tasks.bbclass /tool/yocto/meta-xilinx/conf/dist=
ro/include/xilinx-default-revisions.inc /tool/yocto/poky/meta/conf/distro/i=
nclude/world-broken.inc /tool/yocto/poky/meta/recipes-kernel/linux/linux-dt=
b.inc /tool/yocto/poky/meta/classes/patch.bbclass /tool/yocto/poky/meta/con=
f/distro/include/as-needed.inc /tool/yocto/meta-xilinx/conf/machine/include=
/tune-ppc440.inc /tool/yocto/poky/meta/conf/layer.conf /tool/yocto/poky/met=
a-yocto/conf/distro/poky.conf /tool/yocto/poky/meta/conf/documentation.conf=
 /tool/yocto/poky/meta/classes/mirrors.bbclass /tool/yocto/meta-xilinx/reci=
pes-kernel/linux/linux-xilinx.inc /tool/yocto/meta-openembedded/meta-oe/con=
f/layer.conf /tool/yocto/poky/meta/classes/utils.bbclass /tool/yocto/poky/m=
eta/classes/insane.bbclass /tool/yocto/poky/meta/classes/devshell.bbclass /=
tool/yocto/poky/meta/classes/image-mklibs.bbclass /tool/yocto/poky/meta/cla=
sses/debian.bbclass /tool/yocto/poky/meta/conf/abi_version.conf /tool/yocto=
/poky/meta/conf/distro/include/default-versions.inc /tool/yocto/poky/meta/c=
lasses/staging.bbclass /tool/yocto/poky/meta/classes/logging.bbclass /tool/=
yocto/poky/meta/classes/module_strip.bbclass /tool/yocto/poky/meta/conf/bit=
bake.conf /tool/yocto/poky/meta/conf/sanity.conf /tool/yocto/poky/meta/clas=
ses/buildstats.bbclass /tool/yocto/poky/meta/classes/package.bbclass /tool/=
yocto/poky/meta/classes/terminal.bbclass /tool/yocto/poky/build/conf/local.=
conf /tool/yocto/poky/meta/classes/package_rpm.bbclass /tool/yocto/poky/bui=
ld/conf/bblayers.conf /tool/yocto/poky/meta/conf/distro/include/tclibc-egli=
bc.inc /tool/yocto/poky/meta/classes/license.bbclass /tool/yocto/poky/meta/=
classes/sstate.bbclass /tool/yocto/meta-xilinx/classes/xilinx-utils.bbclass=
 /tool/yocto/poky/meta-yocto/conf/layer.conf /tool/yocto/poky/meta/classes/=
linux-kernel-base.bbclass /tool/yocto/poky/meta/classes/kernel.bbclass /too=
l/yocto/poky/meta/classes/prserv.bbclass /tool/yocto/poky/meta/classes/imag=
e-prelink.bbclass /tool/yocto/meta-xilinx/classes/xilinx-kernel.bbclass /to=
ol/yocto/meta-xilinx/conf/layer.conf /tool/yocto/poky/meta/conf/distro/incl=
ude/tcmode-default.inc /tool/yocto/poky/meta/classes/cml1.bbclass /tool/yoc=
to/poky/meta/classes/base.bbclass /tool/yocto/poky/meta/conf/distro/include=
/default-distrovars.inc /tool/yocto/poky/meta/conf/machine/include/powerpc/=
arch-powerpc.inc /tool/yocto/poky/meta/classes/packagedata.bbclass /tool/yo=
cto/poky/meta/classes/deploy.bbclass /tool/yocto/poky/meta/conf/distro/incl=
ude/default-providers.inc /tool/yocto/poky/meta/conf/distro/defaultsetup.co=
nf /tool/yocto/poky/meta/classes/sanity.bbclass /tool/yocto/meta-xilinx/con=
f/machine/virtex5.conf /tool/yocto/poky/meta/classes/metadata_scm.bbclass
BBINCLUDED=3D"/tool/yocto/poky/meta/classes/kernel-arch.bbclass /tool/yocto=
/poky/meta/classes/utility-tasks.bbclass /tool/yocto/meta-xilinx/conf/distr=
o/include/xilinx-default-revisions.inc /tool/yocto/poky/meta/conf/distro/in=
clude/world-broken.inc /tool/yocto/poky/meta/recipes-kernel/linux/linux-dtb=
.inc /tool/yocto/poky/meta/classes/patch.bbclass /tool/yocto/poky/meta/conf=
/distro/include/as-needed.inc /tool/yocto/meta-xilinx/conf/machine/include/=
tune-ppc440.inc /tool/yocto/poky/meta/conf/layer.conf /tool/yocto/poky/meta=
-yocto/conf/distro/poky.conf /tool/yocto/poky/meta/conf/documentation.conf =
/tool/yocto/poky/meta/classes/mirrors.bbclass /tool/yocto/meta-xilinx/recip=
es-kernel/linux/linux-xilinx.inc /tool/yocto/meta-openembedded/meta-oe/conf=
/layer.conf /tool/yocto/poky/meta/classes/utils.bbclass /tool/yocto/poky/me=
ta/classes/insane.bbclass /tool/yocto/poky/meta/classes/devshell.bbclass /t=
ool/yocto/poky/meta/classes/image-mklibs.bbclass /tool/yocto/poky/meta/clas=
ses/debian.bbclass /tool/yocto/poky/meta/conf/abi_version.conf /tool/yocto/=
poky/meta/conf/distro/include/default-versions.inc /tool/yocto/poky/meta/cl=
asses/staging.bbclass /tool/yocto/poky/meta/classes/logging.bbclass /tool/y=
octo/poky/meta/classes/module_strip.bbclass /tool/yocto/poky/meta/conf/bitb=
ake.conf /tool/yocto/poky/meta/conf/sanity.conf /tool/yocto/poky/meta/class=
es/buildstats.bbclass /tool/yocto/poky/meta/classes/package.bbclass /tool/y=
octo/poky/meta/classes/terminal.bbclass /tool/yocto/poky/build/conf/local.c=
onf /tool/yocto/poky/meta/classes/package_rpm.bbclass /tool/yocto/poky/buil=
d/conf/bblayers.conf /tool/yocto/poky/meta/conf/distro/include/tclibc-eglib=
c.inc /tool/yocto/poky/meta/classes/license.bbclass /tool/yocto/poky/meta/c=
lasses/sstate.bbclass /tool/yocto/meta-xilinx/classes/xilinx-utils.bbclass =
/tool/yocto/poky/meta-yocto/conf/layer.conf /tool/yocto/poky/meta/classes/l=
inux-kernel-base.bbclass /tool/yocto/poky/meta/classes/kernel.bbclass /tool=
/yocto/poky/meta/classes/prserv.bbclass /tool/yocto/poky/meta/classes/image=
-prelink.bbclass /tool/yocto/meta-xilinx/classes/xilinx-kernel.bbclass /too=
l/yocto/meta-xilinx/conf/layer.conf /tool/yocto/poky/meta/conf/distro/inclu=
de/tcmode-default.inc /tool/yocto/poky/meta/classes/cml1.bbclass /tool/yoct=
o/poky/meta/classes/base.bbclass /tool/yocto/poky/meta/conf/distro/include/=
default-distrovars.inc /tool/yocto/poky/meta/conf/machine/include/powerpc/a=
rch-powerpc.inc /tool/yocto/poky/meta/classes/packagedata.bbclass /tool/yoc=
to/poky/meta/classes/deploy.bbclass /tool/yocto/poky/meta/conf/distro/inclu=
de/default-providers.inc /tool/yocto/poky/meta/conf/distro/defaultsetup.con=
f /tool/yocto/poky/meta/classes/sanity.bbclass /tool/yocto/meta-xilinx/conf=
/machine/virtex5.conf /tool/yocto/poky/meta/classes/metadata_scm.bbclass"
# SDK_NAME=3D${DISTRO}-${TCLIBC}-${SDK_ARCH}-${TARGET_ARCH}
SDK_NAME=3D"poky-eglibc-x86_64-powerpc"
# BB_HASHCONFIG_WHITELIST=3D${BB_HASHBASE_WHITELIST} DATE TIME SESSION_MANA=
GER DBUS_SESSION_BUS_ADDRESS SSH_AGENT_PID XDG_SESSION_COOKIE SSH_AUTH_SOCK=
 XAUTHORITY PSEUDO_BUILD
BB_HASHCONFIG_WHITELIST=3D"TMPDIR FILE PATH PWD BB_TASKHASH BBPATH DL_DIR S=
STATE_DIR THISDIR FILESEXTRAPATHS FILE_DIRNAME HOME LOGNAME SHELL TERM USER=
 FILESPATH STAGING_DIR_HOST STAGING_DIR_TARGET COREBASE PRSERV_HOST PRSERV_=
PORT PRSERV_DUMPDIR PRSERV_DUMPFILE PRSERV_LOCKDOWN PARALLEL_MAKE CCACHE_DI=
R EXTERNAL_TOOLCHAIN CCACHE DATE TIME SESSION_MANAGER DBUS_SESSION_BUS_ADDR=
ESS SSH_AGENT_PID XDG_SESSION_COOKIE SSH_AUTH_SOCK XAUTHORITY PSEUDO_BUILD"
# TMPDIR=3D/tool/yocto/poky/build/tmp
TMPDIR=3D"/tool/yocto/poky/build/tmp"
# HOST_CC_ARCH=3D${TARGET_CC_ARCH}
HOST_CC_ARCH=3D"-m32  -msoft-float -mcpu=3D440"
# ALLOW_EMPTY_linux-xilinx-dev=3D1
ALLOW_EMPTY_linux-xilinx-dev=3D"1"
# CMDLINE_CONSOLE=3Dconsole=3D${@d.getVar("KERNEL_CONSOLE",1) or "ttyS0"}
export CMDLINE_CONSOLE=3D"console=3DttyS0"
# HOST_LD_KERNEL_ARCH=3D${TARGET_LD_KERNEL_ARCH}
# QEMU_OPTIONS_iwmmxt=3D-cpu pxa270-c5
QEMU_OPTIONS_iwmmxt=3D"-cpu pxa270-c5"
# TUNE_PKGARCH_tune-powerpc=3Dpowerpc
TUNE_PKGARCH_tune-powerpc=3D"powerpc"
# libexecdir=3D${exec_prefix}/libexec
export libexecdir=3D"/usr/libexec"
# UBOOT_MACHINE=3Dml507_config
UBOOT_MACHINE=3D"ml507_config"
# BB_BASEHASH_task-do_cleansstate=3Df63482664cc1b8cf3e9c7d4c5f4259d6
BB_BASEHASH_task-do_cleansstate=3D"f63482664cc1b8cf3e9c7d4c5f4259d6"
# IMAGE_ROOTFS_SIZE=3D65536
IMAGE_ROOTFS_SIZE=3D"65536"
# BB_MIN_VERSION=3D1.15.1
BB_MIN_VERSION=3D"1.15.1"
# datadir_native=3D${prefix_native}/share
datadir_native=3D"/usr/share"
# SDK_OS=3D${BUILD_OS}
SDK_OS=3D"linux"
# GIT_CONFIG=3D${GIT_CONFIG_PATH}/gitconfig
GIT_CONFIG=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/etc/gitconfi=
g"
# OE_TERMINAL_EXPORTS=3DXAUTHORITY SHELL DBUS_SESSION_BUS_ADDRESS DISPLAY E=
XTRA_OEMAKE SCREENDIR HOST_EXTRACFLAGS HOSTLDFLAGS HOST_LOADLIBES
OE_TERMINAL_EXPORTS=3D"XAUTHORITY SHELL DBUS_SESSION_BUS_ADDRESS DISPLAY EX=
TRA_OEMAKE SCREENDIR HOST_EXTRACFLAGS HOSTLDFLAGS HOST_LOADLIBES"
# datadir=3D${prefix}/share
export datadir=3D"/usr/share"
# KERNEL_CONSOLE=3DttyS0
KERNEL_CONSOLE=3D"ttyS0"
# STAGING_ETCDIR_NATIVE=3D${STAGING_DIR_NATIVE}${sysconfdir_native}
STAGING_ETCDIR_NATIVE=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/e=
tc"
# KERNEL_LD=3D${HOST_PREFIX}ld${KERNEL_LDSUFFIX} ${HOST_LD_KERNEL_ARCH}${TO=
OLCHAIN_OPTIONS}
KERNEL_LD=3D"powerpc-poky-linux-ld  --sysroot=3D/tool/yocto/poky/build/tmp/=
sysroots/virtex5"
# HOST_EXEEXT=3D
# PREFERRED_VERSION_eglibc-nativesdk=3D${EGLIBCVERSION}
PREFERRED_VERSION_eglibc-nativesdk=3D"2.15"
# FILES_kernel-vmlinux=3D/boot/vmlinux*
FILES_kernel-vmlinux=3D"/boot/vmlinux*"
# SUMMARY=3D${PN} version ${PV}-${PR}
SUMMARY=3D"linux-xilinx version 3.3.0-r0"
# BB_BASEHASH_task-do_buildall=3Dfdc376fd264c2fc126ec182f0a53ca8a
BB_BASEHASH_task-do_buildall=3D"fdc376fd264c2fc126ec182f0a53ca8a"
# GPEPHONE_MIRROR=3Dhttp://gpephone.linuxtogo.org/download/gpephone
GPEPHONE_MIRROR=3D"http://gpephone.linuxtogo.org/download/gpephone"
# GPEPHONE_SVN=3Dsvn://projects.linuxtogo.org/svn/gpephone/trunk/source;mod=
ule=3D${PN}
GPEPHONE_SVN=3D"svn://projects.linuxtogo.org/svn/gpephone/trunk/source;modu=
le=3Dlinux-xilinx"
# BB_BASEHASH_task-do_cleanall=3D3ff415d56d194d5bcce15077948400a7
BB_BASEHASH_task-do_cleanall=3D"3ff415d56d194d5bcce15077948400a7"
# ASSUME_PROVIDED=3Dbzip2-native grep-native diffstat-native patch-native p=
erl-native-runtime python-native-runtime subversion-native tar-native virtu=
al/libintl-native=20
ASSUME_PROVIDED=3D"bzip2-native grep-native diffstat-native patch-native pe=
rl-native-runtime python-native-runtime subversion-native tar-native virtua=
l/libintl-native"
# LICSSTATEDIR=3D${WORKDIR}/license-destdir/
LICSSTATEDIR=3D"/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xi=
linx-3.3.0-r0/license-destdir/"
# ALL_MULTILIB_PACKAGE_ARCHS=3D${@all_multilib_tune_values(d, 'PACKAGE_ARCH=
S')}
ALL_MULTILIB_PACKAGE_ARCHS=3D"all any noarch powerpc-nf ppc440 virtex5"
# BUILD_CXX=3D${CCACHE}${BUILD_PREFIX}g++ ${BUILD_CC_ARCH}
export BUILD_CXX=3D"g++"
# CPU_FEATURES=3D
# UPDATECOMMAND_cvs=3D/usr/bin/env cvs -d${CVSROOT} update -d -P ${CVSCOOPT=
S}
UPDATECOMMAND_cvs=3D"/usr/bin/env cvs -d${CVSROOT} update -d -P ${CVSCOOPTS=
}"
# IMAGE_ROOTFS=3D${WORKDIR}/rootfs
IMAGE_ROOTFS=3D"/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xi=
linx-3.3.0-r0/rootfs"
# MKTEMPCMD=3Dmktemp -q ${TMPBASE}
MKTEMPCMD=3D"mktemp -q ${TMPBASE}"
# DATE=3D20120623
DATE=3D"20120623"
# APACHE_MIRROR=3Dhttp://www.apache.org/dist
APACHE_MIRROR=3D"http://www.apache.org/dist"
# do_rootfs=3DNone
# LD=3D${HOST_PREFIX}ld${TOOLCHAIN_OPTIONS} ${HOST_LD_ARCH}
export LD=3D"powerpc-poky-linux-ld --sysroot=3D/tool/yocto/poky/build/tmp/s=
ysroots/virtex5"
# HOST_VENDOR=3D${TARGET_VENDOR}
HOST_VENDOR=3D"-poky"
# SRCREV_pn-${PN}=3DNone
# ARCH=3D${@map_kernel_arch(d.getVar('TARGET_ARCH', True), d)}
export ARCH=3D"powerpc"
# PREFERRED_PROVIDER_gdk-pixbuf=3Dgdk-pixbuf
PREFERRED_PROVIDER_gdk-pixbuf=3D"gdk-pixbuf"
# SSTATE_MANFILEBASE=3D${SSTATE_MANIFESTS}/manifest-${SSTATE_MANMACH}-
SSTATE_MANFILEBASE=3D"/tool/yocto/poky/build/tmp/sstate-control/manifest-vi=
rtex5-"
# MACHINE_TASK_PROVIDER=3D${DEFAULT_TASK_PROVIDER}
MACHINE_TASK_PROVIDER=3D"task-base"
# EXTRA_OEMAKE=3D
# HOSTLDFLAGS=3D${BUILD_LDFLAGS}
HOSTLDFLAGS=3D"-L/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib -=
L/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/lib -Wl,-rpath-link,/tool=
/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpath-link,/tool/y=
octo/poky/build/tmp/sysroots/x86_64-linux/lib -Wl,-rpath,/tool/yocto/poky/b=
uild/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpath,/tool/yocto/poky/build/tm=
p/sysroots/x86_64-linux/lib -Wl,-O1"
# LDFLAGS=3D${TARGET_LDFLAGS}
export LDFLAGS=3D"-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed"
# HOST_NONSYSV=3DNone
# bindir=3D${exec_prefix}/bin
export bindir=3D"/usr/bin"
# SUMMARY_${PN}-dbg=3DNone
# BUILDSTATS_BASE=3D${TMPDIR}/buildstats/
BUILDSTATS_BASE=3D"/tool/yocto/poky/build/tmp/buildstats/"
# SYSVINIT_ENABLED_GETTYS=3DNone
# TARGET_CXXFLAGS=3D${TARGET_CFLAGS} -fpermissive
export TARGET_CXXFLAGS=3D"-O2 -pipe -g -feliminate-unused-debug-types -fper=
missive"
# BUILD_ARCH=3D${@os.uname()[4]}
BUILD_ARCH=3D"x86_64"
# module_autoload_ipsec=3Dipsec
module_autoload_ipsec=3D"ipsec"
# MAKE=3Dmake
export MAKE=3D"make"
# KERNEL_CCSUFFIX=3D
# includedir=3D${exec_prefix}/include
export includedir=3D"/usr/include"
# PREFERRED_VERSION_gcc=3D${GCCVERSION}
PREFERRED_VERSION_gcc=3D"4.7%"
# BBFILE_PRIORITY_openembedded-layer=3D6
BBFILE_PRIORITY_openembedded-layer=3D"6"
# RDEPENDS_kernel=3Dkernel-base
RDEPENDS_kernel=3D"kernel-base"
# FILES_${PN}-doc=3DNone
# PRIORITY=3Doptional
PRIORITY=3D"optional"
# PARALLEL_MAKEINST=3D${PARALLEL_MAKE}
PARALLEL_MAKEINST=3D"-j 6"
# SEPPUKU_QUERY=3DNone
# BB_SETSCENE_VERIFY_FUNCTION=3Dsysroot_checkhashes
BB_SETSCENE_VERIFY_FUNCTION=3D"sysroot_checkhashes"
# SECTION=3Dkernel
SECTION=3D"kernel"
# SDK_CC_ARCH=3D${BUILD_CC_ARCH}
# MAINTAINER=3DPoky <poky@yoctoproject.org>
MAINTAINER=3D"Poky <poky@yoctoproject.org>"
# do_package_write_ipk=3DNone
# LIBCOVERRIDE=3D:libc-glibc
LIBCOVERRIDE=3D":libc-glibc"
# BUILD_LDFLAGS=3D-L${STAGING_LIBDIR_NATIVE} -L${STAGING_BASE_LIBDIR_NATIVE=
} -Wl,-rpath-link,${STAGING_LIBDIR_NATIVE} -Wl,-rpath-link,${STAGING_BASE_L=
IBDIR_NATIVE} -Wl,-rpath,${STAGING_LIBDIR_NATIVE} -Wl,-rpath,${STAGING_BASE=
_LIBDIR_NATIVE} -Wl,-O1
export BUILD_LDFLAGS=3D"-L/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/=
usr/lib -L/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/lib -Wl,-rpath-l=
ink,/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpath-lin=
k,/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/lib -Wl,-rpath,/tool/yoc=
to/poky/build/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpath,/tool/yocto/poky=
/build/tmp/sysroots/x86_64-linux/lib -Wl,-O1"
# STAGING_LIBDIR=3D${STAGING_DIR_HOST}${libdir}
STAGING_LIBDIR=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5/usr/lib"
# TARGET_ARCH=3D${TUNE_ARCH}
unset TARGET_ARCH
# BBINCLUDELOGS_LINES=3DNone
# BUILD_F77=3D${CCACHE}${BUILD_PREFIX}g77 ${BUILD_CC_ARCH}
export BUILD_F77=3D"g77"
# module_conf_rfcomm=3Dalias bt-proto-3 rfcomm
module_conf_rfcomm=3D"alias bt-proto-3 rfcomm"
# LIBCEXTENSION=3D${@['', '-gnu'][(d.getVar('ABIEXTENSION', True) or '') !=
=3D '']}
# ALLOW_EMPTY_${PN}-dbg=3DNone
# QUILTRCFILE=3D${STAGING_ETCDIR_NATIVE}/quiltrc
QUILTRCFILE=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/etc/quiltrc=
"
# BBLAYERS=3D /tool/yocto/poky/meta /tool/yocto/poky/meta-yocto /tool/yocto=
/meta-openembedded/meta-oe /tool/yocto/meta-xilinx=20
BBLAYERS=3D"/tool/yocto/poky/meta /tool/yocto/poky/meta-yocto /tool/yocto/m=
eta-openembedded/meta-oe /tool/yocto/meta-xilinx"
# BOOTSTRAP_EXTRA_RDEPENDS=3D
# PREFERRED_VERSION_linux-libc-headers-nativesdk=3D${LINUXLIBCVERSION}
PREFERRED_VERSION_linux-libc-headers-nativesdk=3D"3.4"
# BUILD_LD=3D${BUILD_PREFIX}ld ${BUILD_LD_ARCH}
export BUILD_LD=3D"ld"
# BUILD_SYS=3D${BUILD_ARCH}${BUILD_VENDOR}-${BUILD_OS}
BUILD_SYS=3D"x86_64-linux"
# PREFERRED_PROVIDER_virtual/${SDK_PREFIX}libc-for-gcc-nativesdk=3DNone
# module_conf_hci_uart=3Dalias tty-ldisc-15 hci_uart
module_conf_hci_uart=3D"alias tty-ldisc-15 hci_uart"
# QADEPENDS_virtclass-native=3D
# PREFERRED_PROVIDER_opkg-native=3Dopkg-native
PREFERRED_PROVIDER_opkg-native=3D"opkg-native"
# BB_BASEHASH_task-do_unpack=3D8c60b94fc30a2c885b22cc462347523a
BB_BASEHASH_task-do_unpack=3D"8c60b94fc30a2c885b22cc462347523a"
# MACHINE_ESSENTIAL_EXTRA_RDEPENDS=3D
# PATCHDEPENDENCY=3D${PATCHTOOL}-native:do_populate_sysroot
PATCHDEPENDENCY=3D"quilt-native:do_populate_sysroot"
# EXTRAOPKGCONFIG=3Dpoky-feed-config-opkg
EXTRAOPKGCONFIG=3D"poky-feed-config-opkg"
# KERNEL_IMAGE_BASE_NAME=3D${KERNEL_IMAGETYPE}-${PV}-${PR}-${MACHINE}-${DAT=
ETIME}
KERNEL_IMAGE_BASE_NAME=3D"uImage-3.3.0-r0-virtex5-20120623074645"
# OEINCLUDELOGS=3Dyes
OEINCLUDELOGS=3D"yes"
# TUNEABI=3DNone
# module_autoload_ircomm-tty=3Dircomm-tty
module_autoload_ircomm-tty=3D"ircomm-tty"
# PREFERRED_PROVIDER_virtual/gettext=3Dgettext
PREFERRED_PROVIDER_virtual/gettext=3D"gettext"
# GPE_EXTRA_SVN=3Dsvn://projects.linuxtogo.org/svn/gpe/trunk/extra;module=
=3D${PN}
GPE_EXTRA_SVN=3D"svn://projects.linuxtogo.org/svn/gpe/trunk/extra;module=3D=
linux-xilinx"
# oldincludedir=3D${exec_prefix}/include
export oldincludedir=3D"/usr/include"
# TUNEVALID=3DNone
# TUNECONFLICTS=3DNone
# SERIAL_CONSOLE=3D115200 ttyUL0
SERIAL_CONSOLE=3D"115200 ttyUL0"
# TIME=3D074645
TIME=3D"074645"
# localstatedir_nativesdk=3D/var
localstatedir_nativesdk=3D"/var"
# UPDATECOMMAND_svn=3D/usr/bin/env svn update ${SVNCOOPTS}
UPDATECOMMAND_svn=3D"/usr/bin/env svn update ${SVNCOOPTS}"
# RRECOMMENDS_${PN}-dbg=3DNone
# SEPPUKU_USER=3DNone
# FEED_DEPLOYDIR_BASE_URI=3DNone
# module_autoload_ipv6=3Dipv6
module_autoload_ipv6=3D"ipv6"
# LIMIT_BUILT_LOCALES=3DPOSIX en_US en_GB
LIMIT_BUILT_LOCALES=3D"POSIX en_US en_GB"
# DESCRIPTION_${PN}-dbg=3DNone
# EXTENDPRAUTO=3D${@['.${PRAUTO\x7d',''][d.getVar('PRAUTO',1) is None]}
# LANG=3Den_US.UTF-8
LANG=3D"en_US.UTF-8"
# TUNE_FEATURES_tune-powerpc-nf=3Dm32 fpu-soft
TUNE_FEATURES_tune-powerpc-nf=3D"m32 fpu-soft"
# BUILD_CCLD=3D${BUILD_PREFIX}gcc ${BUILD_CC_ARCH}
export BUILD_CCLD=3D"gcc"
# SUMMARY_linux-xilinx-dev=3D${SUMMARY} - Development files
SUMMARY_linux-xilinx-dev=3D"linux-xilinx version 3.3.0-r0 - Development fil=
es"
# DEBUG_FLAGS=3D-g -feliminate-unused-debug-types
DEBUG_FLAGS=3D"-g -feliminate-unused-debug-types"
# B=3D${S}
B=3D"/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-=
r0/git"
# GROUP_fetcher=3DNone
# SDK_NAME_PREFIX=3Doecore
SDK_NAME_PREFIX=3D"oecore"
# BBPATH=3D/tool/yocto/poky/meta-yocto::/tool/yocto/poky/meta:/tool/yocto/m=
eta-openembedded/meta-oe:/tool/yocto/meta-xilinx
BBPATH=3D"/tool/yocto/poky/meta-yocto::/tool/yocto/poky/meta:/tool/yocto/me=
ta-openembedded/meta-oe:/tool/yocto/meta-xilinx"
# RDEPENDS_${PN}-staticdev=3DNone
# RPMCONF_HOST_BASE=3D${DEPLOY_DIR_RPM}/solvedb-sdk
RPMCONF_HOST_BASE=3D"/tool/yocto/poky/build/tmp/deploy/rpm/solvedb-sdk"
# HOST_LD_ARCH=3D${TARGET_LD_ARCH}
# GROUP_dependencies=3DNone
# BB_BASEHASH_task-do_populate_lic=3Dd7189a1ecb6f83fc3182dcc0cdc435ed
BB_BASEHASH_task-do_populate_lic=3D"d7189a1ecb6f83fc3182dcc0cdc435ed"
# BB_STRICT_CHECKSUM=3D1
BB_STRICT_CHECKSUM=3D"1"
# PREMIRRORS=3Dbzr://.*/.*   http://downloads.yoctoproject.org/mirror/sourc=
es/ \n cvs://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n g=
it://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n hg://.*/.=
*    http://downloads.yoctoproject.org/mirror/sources/ \n osc://.*/.*   htt=
p://downloads.yoctoproject.org/mirror/sources/ \n p4://.*/.*    http://down=
loads.yoctoproject.org/mirror/sources/ \n svk://.*/.*   http://downloads.yo=
ctoproject.org/mirror/sources/ \n svn://.*/.*   http://downloads.yoctoproje=
ct.org/mirror/sources/ \n
PREMIRRORS=3D"bzr://.*/.*   http://downloads.yoctoproject.org/mirror/source=
s/ \n cvs://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n gi=
t://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n hg://.*/.*=
    http://downloads.yoctoproject.org/mirror/sources/ \n osc://.*/.*   http=
://downloads.yoctoproject.org/mirror/sources/ \n p4://.*/.*    http://downl=
oads.yoctoproject.org/mirror/sources/ \n svk://.*/.*   http://downloads.yoc=
toproject.org/mirror/sources/ \n svn://.*/.*   http://downloads.yoctoprojec=
t.org/mirror/sources/ \n"
# BASE_LIB_tune-powerpc-nf=3Dlib
BASE_LIB_tune-powerpc-nf=3D"lib"
# RDEPENDS=3D
# PACKAGES=3Dkernel kernel-base kernel-vmlinux kernel-image kernel-dev kern=
el-misc kernel-devicetree
PACKAGES=3D"kernel kernel-base kernel-vmlinux kernel-image kernel-dev kerne=
l-misc kernel-devicetree"
# EXCLUDE_FROM_WORLD_pn-clutter-box2d=3D1
EXCLUDE_FROM_WORLD_pn-clutter-box2d=3D"1"
# TUNE_PKGARCH_tune-ppc440=3Dppc440
TUNE_PKGARCH_tune-ppc440=3D"ppc440"
# BUILD_CPP=3D${BUILD_PREFIX}cpp ${BUILD_CC_ARCH}
export BUILD_CPP=3D"cpp"
# HOMEPAGE=3Dunknown
HOMEPAGE=3D"unknown"
# SANITY_VERSION=3D1
SANITY_VERSION=3D"1"
# DEPLOY_DIR_TOOLS=3D${DEPLOY_DIR}/tools
DEPLOY_DIR_TOOLS=3D"/tool/yocto/poky/build/tmp/deploy/tools"
# LIC_FILES_CHKSUM=3Dfile://COPYING;md5=3Dd7810fab7487fb0aad327b76f1be7cd7
LIC_FILES_CHKSUM=3D"file://COPYING;md5=3Dd7810fab7487fb0aad327b76f1be7cd7"
# LINKER_HASH_STYLE_mips=3Dsysv
LINKER_HASH_STYLE_mips=3D"sysv"
# ASNEEDED_pn-rpm=3D
# PKGWRITEDIRRPM=3D${WORKDIR}/deploy-rpms
PKGWRITEDIRRPM=3D"/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-=
xilinx-3.3.0-r0/deploy-rpms"
# STAGING_DATADIR_NATIVE=3D${STAGING_DIR_NATIVE}${datadir_native}
STAGING_DATADIR_NATIVE=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/=
usr/share"
# CPU_FEATURES_arm=3Dvfp
CPU_FEATURES_arm=3D"vfp"
# RESUMECOMMAND_wget=3D/usr/bin/env wget -c -t 2 -T 30 -nv --passive-ftp --=
no-check-certificate -P ${DL_DIR} '${URI}'
RESUMECOMMAND_wget=3D"/usr/bin/env wget -c -t 2 -T 30 -nv --passive-ftp --n=
o-check-certificate -P /tool/yocto/poky/build/downloads '${URI}'"
# TRANSLATED_TARGET_ARCH=3D${@d.getVar('TARGET_ARCH', True).replace("_", "-=
")}
TRANSLATED_TARGET_ARCH=3D"powerpc"
# GPE_MIRROR=3Dhttp://gpe.linuxtogo.org/download/source
GPE_MIRROR=3D"http://gpe.linuxtogo.org/download/source"
# SRCREV_pn-linux-xilinx=3DNone
# prefix_nativesdk=3D/usr
prefix_nativesdk=3D"/usr"
# SSTATE_SCAN_CMD=3Dfind ${SSTATE_BUILDDIR} \( -name "${@"\" -o -name \"".j=
oin(d.getVar("SSTATE_SCAN_FILES", True).split())}" \) -type f
SSTATE_SCAN_CMD=3D"find ${SSTATE_BUILDDIR} \( -name \"*.la\" -o -name \"*-c=
onfig\" -o -name \"*_config\" \) -type f"
# HANDHELDS_CVS=3Dcvs://anoncvs:anoncvs@anoncvs.handhelds.org/cvs
HANDHELDS_CVS=3D"cvs://anoncvs:anoncvs@anoncvs.handhelds.org/cvs"
# STAGING_BASE_LIBDIR_NATIVE=3D${STAGING_DIR_NATIVE}${base_libdir_native}
STAGING_BASE_LIBDIR_NATIVE=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-li=
nux/lib"
# HOST_CC_KERNEL_ARCH=3D${TARGET_CC_KERNEL_ARCH}
# SSTATE_MANFILEPREFIX=3D${SSTATE_MANFILEBASE}${PN}
SSTATE_MANFILEPREFIX=3D"/tool/yocto/poky/build/tmp/sstate-control/manifest-=
virtex5-linux-xilinx"
# BOOTSTRAP_EXTRA_RRECOMMENDS=3D
# PREFERRED_VERSION_binutils-cross-canadian-powerpc=3D${BINUVERSION}
PREFERRED_VERSION_binutils-cross-canadian-powerpc=3D"2.22"
# PREFERRED_VERSION_gzip-native=3D1.4
PREFERRED_VERSION_gzip-native=3D"1.4"
# BB_BASEHASH_task-do_sizecheck=3Df6062040b95ca2a9c00e9fb8a7348a26
BB_BASEHASH_task-do_sizecheck=3D"f6062040b95ca2a9c00e9fb8a7348a26"
# TOPDIR=3D/tool/yocto/poky/build
TOPDIR=3D"/tool/yocto/poky/build"
# valid_archs=3Dalpha cris ia64                i386 x86                m68k=
nommu m68k ppc powerpc powerpc64 ppc64  	       sparc sparc64              =
  arm  arm26                m32r mips 	       sh sh64 um h8300   	       pa=
risc s390  v850 	       avr32 blackfin               microblaze
valid_archs=3D"alpha cris ia64                i386 x86                m68kn=
ommu m68k ppc powerpc powerpc64 ppc64  	       sparc sparc64               =
 arm  arm26                m32r mips 	       sh sh64 um h8300   	       par=
isc s390  v850 	       avr32 blackfin               microblaze"
# STAGING_BINDIR=3D${STAGING_DIR_HOST}${bindir}
STAGING_BINDIR=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5/usr/bin"
# ALLOWED_FLAGS=3D-O -mcpu -march -pipe
ALLOWED_FLAGS=3D"-O -mcpu -march -pipe"
# PREFERRED_PROVIDER_dbus-glib-native=3Ddbus-glib-native
PREFERRED_PROVIDER_dbus-glib-native=3D"dbus-glib-native"
# module_autoload_sa1100-rtc=3Dsa1100-rtc
module_autoload_sa1100-rtc=3D"sa1100-rtc"
# SUMMARY_${PN}-dev=3DNone
# DEPLOYDIR=3D${WORKDIR}/deploy-${PN}
DEPLOYDIR=3D"/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilin=
x-3.3.0-r0/deploy-linux-xilinx"
# TUNEABI_OVERRIDE=3DNone
# FILE_DIRNAME=3D${@os.path.dirname(d.getVar('FILE'))}
FILE_DIRNAME=3D"/tool/yocto/meta-xilinx/recipes-kernel/linux"
# SOURCEFORGE_MIRROR=3Dhttp://downloads.sourceforge.net
SOURCEFORGE_MIRROR=3D"http://downloads.sourceforge.net"
# DBUS_SESSION_BUS_ADDRESS=3Dunix:abstract=3D/tmp/dbus-jDSKXc3TDe,guid=3Dcb=
2f323eeab607aa04a9cd2f00000066
DBUS_SESSION_BUS_ADDRESS=3D"unix:abstract=3D/tmp/dbus-jDSKXc3TDe,guid=3Dcb2=
f323eeab607aa04a9cd2f00000066"
# DEFAULTTUNE=3Dppc440
DEFAULTTUNE=3D"ppc440"
# GLIBC_EXTRA_OECONF=3D ${@bb.utils.contains("TUNE_FEATURES", "ppc440", "-w=
ith-cpu=3D440", "", d)}
GLIBC_EXTRA_OECONF=3D"-with-cpu=3D440"
# STAGING_EXECPREFIXDIR=3D${STAGING_DIR_HOST}${exec_prefix}
STAGING_EXECPREFIXDIR=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5/usr"
# PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}libc-initial=3DNone
# BUILD_CFLAGS=3D${BUILD_CPPFLAGS} ${BUILD_OPTIMIZATION}
export BUILD_CFLAGS=3D"-isystem/tool/yocto/poky/build/tmp/sysroots/x86_64-l=
inux/usr/include -O2 -pipe"
# PREFERRED_PROVIDER_virtual/powerpc-poky-linux-libc-for-gcc=3D${TCLIBC}
PREFERRED_PROVIDER_virtual/powerpc-poky-linux-libc-for-gcc=3D"eglibc"
# PSEUDO_LOCALSTATEDIR=3D${WORKDIR}/pseudo/
PSEUDO_LOCALSTATEDIR=3D"/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/=
linux-xilinx-3.3.0-r0/pseudo/"
# EGLIBCVERSION=3D2.15
EGLIBCVERSION=3D"2.15"
# OLDEST_KERNEL=3D2.6.16
OLDEST_KERNEL=3D"2.6.16"
# PREFERRED_VERSION_python-native=3D2.7.3
PREFERRED_VERSION_python-native=3D"2.7.3"
# SECTION_${PN}-doc=3DNone
# XAUTHORITY=3D/home/elvis/.Xauthority
XAUTHORITY=3D"/home/elvis/.Xauthority"
# AUTHOR=3DNone
# BUILDSDK_LDFLAGS=3D-L${STAGING_LIBDIR} -Wl,-rpath-link,${STAGING_LIBDIR} =
-Wl,-rpath,${libdir} -Wl,-O1 -L${STAGING_DIR_HOST}${base_libdir} -Wl,-rpath=
-link,${STAGING_DIR_HOST}${base_libdir} -Wl,-rpath,${base_libdir} -Wl,-O1
BUILDSDK_LDFLAGS=3D"-L/tool/yocto/poky/build/tmp/sysroots/virtex5/usr/lib -=
Wl,-rpath-link,/tool/yocto/poky/build/tmp/sysroots/virtex5/usr/lib -Wl,-rpa=
th,/usr/lib -Wl,-O1 -L/tool/yocto/poky/build/tmp/sysroots/virtex5/lib -Wl,-=
rpath-link,/tool/yocto/poky/build/tmp/sysroots/virtex5/lib -Wl,-rpath,/lib =
-Wl,-O1"
# FETCHCMD_wget=3D/usr/bin/env wget -t 2 -T 30 -nv --no-check-certificate
FETCHCMD_wget=3D"/usr/bin/env wget -t 2 -T 30 -nv --no-check-certificate"
# GPG_AGENT_INFO=3D/tmp/keyring-MhCyXy/gpg:0:1
GPG_AGENT_INFO=3D"/tmp/keyring-MhCyXy/gpg:0:1"
# POKY_DEFAULT_EXTRA_RDEPENDS=3Dtask-core-boot
POKY_DEFAULT_EXTRA_RDEPENDS=3D"task-core-boot"
# CLASSOVERRIDE=3Dclass-target
CLASSOVERRIDE=3D"class-target"
# SOLIBSDEV=3D.so
SOLIBSDEV=3D".so"
# FILES_${PN}-dev=3DNone
# SEPPUKU_PRODUCT=3DNone
# SHELL=3D/bin/bash
export SHELL=3D"/bin/bash"
# USER_CLASSES=3Dbuildstats image-mklibs image-prelink
USER_CLASSES=3D"buildstats image-mklibs image-prelink"
# MKTEMPDIRCMD=3Dmktemp -d -q ${TMPBASE}
MKTEMPDIRCMD=3D"mktemp -d -q ${TMPBASE}"
# BB_HASHCHECK_FUNCTION=3Dsstate_checkhashes
BB_HASHCHECK_FUNCTION=3D"sstate_checkhashes"
# SEPPUKU_LOGIN=3DNone
# EXCLUDE_FROM_WORLD_pn-eds-tools=3D1
EXCLUDE_FROM_WORLD_pn-eds-tools=3D"1"
# BB_BASEHASH_task-do_package_write_rpm=3Dae82ad7cff637a08e19a3617a11982f1
BB_BASEHASH_task-do_package_write_rpm=3D"ae82ad7cff637a08e19a3617a11982f1"
# SOLIBS=3D.so.*
SOLIBS=3D".so.*"
# PROVIDES=3D${P} ${PF} ${PN}  virtual/kernel
PROVIDES=3D"linux-xilinx-3.3.0 linux-xilinx-3.3.0-r0 linux-xilinx  virtual/=
kernel"
# PYTHON_BASEVERSION=3D2.7
PYTHON_BASEVERSION=3D"2.7"
# PACKAGE_PREPROCESS_FUNCS=3D kernel_package_preprocess
PACKAGE_PREPROCESS_FUNCS=3D"kernel_package_preprocess"
# do_package_write_tar=3DNone
# docdir=3D${datadir}/doc
export docdir=3D"/usr/share/doc"
# DISTRO_FEATURES=3Dalsa argp bluetooth ext2 irda largefile pcmcia usbgadge=
t usbhost wifi xattr nfs zeroconf pci 3g x11 ${DISTRO_FEATURES_LIBC} largef=
ile opengl${@oe.utils.distro_features_backfill(d)}
DISTRO_FEATURES=3D"alsa argp bluetooth ext2 irda largefile pcmcia usbgadget=
 usbhost wifi xattr nfs zeroconf pci 3g x11 ipv4 ipv6 libc-backtrace libc-b=
ig-macros libc-bsd libc-cxx-tests libc-catgets libc-charsets libc-crypt 			=
		libc-crypt-ufc libc-db-aliases libc-envz libc-fcvt libc-fmtmsg libc-fstab=
 libc-ftraverse 					libc-getlogin libc-idn libc-inet-anl libc-libm libc-li=
bm-big libc-locales libc-locale-code 					libc-memusage libc-nis libc-nsswi=
tch libc-rcmd libc-rtld-debug libc-spawn libc-streams libc-sunrpc 					libc=
-utmp libc-utmpx libc-wordexp libc-posix-clang-wchar libc-posix-regexp libc=
-posix-regexp-glibc 					libc-posix-wchar-io largefile opengl pulseaudio"
# BB_BASEHASH_task-do_uboot_mkimage=3Daebf065abf71177df3e3627ec8e09d31
BB_BASEHASH_task-do_uboot_mkimage=3D"aebf065abf71177df3e3627ec8e09d31"
# RESUMECOMMAND=3DERROR, this must be a BitBake bug
RESUMECOMMAND=3D"ERROR, this must be a BitBake bug"
# TARGET_CPU=3D440
TARGET_CPU=3D"440"
# infodir=3D${datadir}/info
export infodir=3D"/usr/share/info"
# BUILDCFG_HEADER=3DBuild Configuration:
BUILDCFG_HEADER=3D"Build Configuration:"
# DISTROOVERRIDES=3D${@d.getVar('DISTRO', True) or ''}
DISTROOVERRIDES=3D"poky"
# COMMERCIAL_QT=3D
# base_prefix=3D
# KERNEL_RELEASE=3D${KERNEL_VERSION}
KERNEL_RELEASE=3D"3.3.0-14.2-build1"
# CC=3D${CCACHE}${HOST_PREFIX}gcc ${HOST_CC_ARCH}${TOOLCHAIN_OPTIONS}
export CC=3D"powerpc-poky-linux-gcc  -m32  -msoft-float -mcpu=3D440 --sysro=
ot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5"
# THISDIR=3D${@os.path.dirname(d.getVar('FILE', True))}
THISDIR=3D"/tool/yocto/meta-xilinx/recipes-kernel/linux"
# HGDIR=3D${CO_DIR}/hg
HGDIR=3D"/tool/yocto/poky/build/downloads/hg"
# KERNEL_DEVICETREE_microblazeel=3D${@device_tree(bb.data.getVar('TARGET_CP=
U', d, 1), d)}
KERNEL_DEVICETREE_microblazeel=3D"arch/440/boot/dts/system.dts"
# PREFERRED_VERSION_gcc-cross=3D${GCCVERSION}
PREFERRED_VERSION_gcc-cross=3D"4.7%"
# BUILD_OS=3D${@os.uname()[0].lower()}
BUILD_OS=3D"linux"
# IMAGE_FSTYPES=3Dtar.gz
IMAGE_FSTYPES=3D"tar.gz"
# PREFERRED_PROVIDER_virtual/powerpc-poky-linux-binutils=3Dbinutils-cross
PREFERRED_PROVIDER_virtual/powerpc-poky-linux-binutils=3D"binutils-cross"
# FAKEROOTENV=3DPSEUDO_PREFIX=3D${STAGING_DIR_NATIVE}${prefix_native} PSEUD=
O_LOCALSTATEDIR=3D${PSEUDO_LOCALSTATEDIR} PSEUDO_PASSWD=3D${PSEUDO_PASSWD} =
PSEUDO_NOSYMLINKEXP=3D1 PSEUDO_DISABLED=3D0
FAKEROOTENV=3D"PSEUDO_PREFIX=3D/tool/yocto/poky/build/tmp/sysroots/x86_64-l=
inux/usr PSEUDO_LOCALSTATEDIR=3D/tool/yocto/poky/build/tmp/work/virtex5-pok=
y-linux/linux-xilinx-3.3.0-r0/pseudo/ PSEUDO_PASSWD=3D/tool/yocto/poky/buil=
d/tmp/sysroots/virtex5 PSEUDO_NOSYMLINKEXP=3D1 PSEUDO_DISABLED=3D0"
# STAGING_LOADER_DIR=3D${STAGING_DIR_HOST}/loader
STAGING_LOADER_DIR=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5/loader"
# SSTATE_PKG=3D${SSTATE_DIR}/${SSTATE_PKGNAME}
SSTATE_PKG=3D"/tool/yocto/poky/build/sstate-cache/sstate-linux-xilinx-virte=
x5-poky-linux-3.3.0-r0-virtex5-2-${BB_TASKHASH}"
# DISTRO_EXTRA_RDEPENDS=3D  ${POKY_DEFAULT_EXTRA_RDEPENDS}
DISTRO_EXTRA_RDEPENDS=3D"task-core-boot"
# ASNEEDED_pn-dialer=3D
# BBFILE_PATTERN_xilinx=3D^/tool/yocto/meta-xilinx/
BBFILE_PATTERN_xilinx=3D"^/tool/yocto/meta-xilinx/"
# ASNEEDED_pn-console-tools=3D
# ASNEEDED_pn-pulseaudio=3D
# ASNEEDED_pn-distcc=3D
# HOST_OS=3D${TARGET_OS}
HOST_OS=3D"linux"
# D=3D${WORKDIR}/image
D=3D"/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-=
r0/image"
# TERM=3Dxterm
export TERM=3D"xterm"
# LAYER_CONF_VERSION=3D4
LAYER_CONF_VERSION=3D"4"
# MULTIMACH_HOST_SYS=3D${PACKAGE_ARCH}${HOST_VENDOR}-${HOST_OS}
MULTIMACH_HOST_SYS=3D"virtex5-poky-linux"
# TARGET_FPU=3D${@bb.utils.contains("TUNE_FEATURES", "fpu-soft", "soft", ""=
, d)}
TARGET_FPU=3D"soft"
# STAGING_DIR_NATIVE=3D${STAGING_DIR}/${BUILD_SYS}
STAGING_DIR_NATIVE=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux"
# GNU_MIRROR=3Dftp://ftp.gnu.org/gnu
GNU_MIRROR=3D"ftp://ftp.gnu.org/gnu"
# DEPLOY_DIR=3D${TMPDIR}/deploy
DEPLOY_DIR=3D"/tool/yocto/poky/build/tmp/deploy"
# DESCRIPTION_${PN}-staticdev=3DNone
# ROOTFS_POSTINSTALL_COMMAND=3D license_create_manifest;=20
ROOTFS_POSTINSTALL_COMMAND=3D"license_create_manifest;"
# MACHINE_EXTRA_RDEPENDS=3D
# MULTI_PROVIDER_WHITELIST=3Dvirtual/libintl virtual/libintl-native virtual=
/libintl-nativesdk virtual/xserver virtual/update-alternatives-native virtu=
al/update-alternatives
MULTI_PROVIDER_WHITELIST=3D"virtual/libintl virtual/libintl-native virtual/=
libintl-nativesdk virtual/xserver virtual/update-alternatives-native virtua=
l/update-alternatives"
# KERNEL_OUTPUT=3Darch/${ARCH}/boot/${KERNEL_IMAGETYPE}
KERNEL_OUTPUT=3D"arch/powerpc/boot/uImage"
# SECTION_${PN}-staticdev=3DNone
# ASNEEDED_pn-puzzles=3D
# SIGGEN_EXCLUDERECIPES_ABISAFE=3D  sysvinit-inittab shadow-securetty opkg-=
config-base netbase formfactor xserver-xf86-config pointercal base-files ke=
ymaps   pointercal-xinput systemd-serialgetty mplayer-common task-x11-serve=
r fbset-modes=20
SIGGEN_EXCLUDERECIPES_ABISAFE=3D"sysvinit-inittab shadow-securetty opkg-con=
fig-base netbase formfactor xserver-xf86-config pointercal base-files keyma=
ps   pointercal-xinput systemd-serialgetty mplayer-common task-x11-server f=
bset-modes"
# STAMP=3D${TMPDIR}/stamps/${MULTIMACH_TARGET_SYS}/${PF}
STAMP=3D"/tool/yocto/poky/build/tmp/stamps/virtex5-poky-linux/linux-xilinx-=
3.3.0-r0"
# BBINCLUDELOGS=3Dyes
BBINCLUDELOGS=3D"yes"
# PREFERRED_PROVIDER_virtual/libintl=3Deglibc
PREFERRED_PROVIDER_virtual/libintl=3D"eglibc"
# QA_LOGFILE=3D${TMPDIR}/qa.log
QA_LOGFILE=3D"/tool/yocto/poky/build/tmp/qa.log"
# BUILDCFG_NEEDEDVARS=3DTARGET_ARCH TARGET_OS
BUILDCFG_NEEDEDVARS=3D"TARGET_ARCH TARGET_OS"
# GCCVERSION=3D4.7%
GCCVERSION=3D"4.7%"
# BASELIB_powerpc64=3Dlib64
BASELIB_powerpc64=3D"lib64"
# ERROR_QA=3Ddev-so debug-deps dev-deps debug-files arch la2 pkgconfig la p=
erms useless-rpaths rpaths staticdev ldflags
ERROR_QA=3D"dev-so debug-deps dev-deps debug-files arch la2 pkgconfig la pe=
rms useless-rpaths rpaths staticdev ldflags"
# PREFERRED_PROVIDER_virtual/libgl=3Dmesa-dri
PREFERRED_PROVIDER_virtual/libgl=3D"mesa-dri"
# FILES_${PN}-staticdev=3DNone
# CPPFLAGS=3D${TARGET_CPPFLAGS}
# QEMUIMAGETESTS=3D/tool/yocto/poky/scripts/qemuimage-tests
QEMUIMAGETESTS=3D"/tool/yocto/poky/scripts/qemuimage-tests"
# VIRTUAL-RUNTIME_update-alternatives=3Dupdate-alternatives-cworth
VIRTUAL-RUNTIME_update-alternatives=3D"update-alternatives-cworth"
# SSTATE_MANMACH=3Dvirtex5
SSTATE_MANMACH=3D"virtex5"
# PKGDATA_DIR=3D${TMPDIR}/pkgdata/${MULTIMACH_TARGET_SYS}
PKGDATA_DIR=3D"/tool/yocto/poky/build/tmp/pkgdata/virtex5-poky-linux"
# sysconfdir_native=3D/etc
sysconfdir_native=3D"/etc"
# XLIBS_MIRROR=3Dhttp://xlibs.freedesktop.org/release
XLIBS_MIRROR=3D"http://xlibs.freedesktop.org/release"
# SDK_ARCH=3D${BUILD_ARCH}
SDK_ARCH=3D"x86_64"
# PREFERRED_PROVIDER_virtual/update-alternatives-native=3Dopkg-native
PREFERRED_PROVIDER_virtual/update-alternatives-native=3D"opkg-native"
# COREBASE=3D/tool/yocto/poky
COREBASE=3D"/tool/yocto/poky"
# KERNEL_DEVICETREE=3D${@device_tree(bb.data.getVar('TARGET_ARCH', d, 1), d=
)}
KERNEL_DEVICETREE=3D"arch/powerpc/boot/dts/virtex440-ml507.dts"
# PREFERRED_PROVIDER_virtual/powerpc-poky-linux-gcc-intermediate=3Dgcc-cros=
s-intermediate
PREFERRED_PROVIDER_virtual/powerpc-poky-linux-gcc-intermediate=3D"gcc-cross=
-intermediate"
# DEPCHAIN_POST=3D-dev -dbg
DEPCHAIN_POST=3D"-dev -dbg"
# PREFERRED_PROVIDER_virtual/powerpc-poky-linux-gcc=3Dgcc-cross
PREFERRED_PROVIDER_virtual/powerpc-poky-linux-gcc=3D"gcc-cross"
# KERNEL_VERSION=3D${@get_kernelversion('${B}')}
KERNEL_VERSION=3D"3.3.0-14.2-build1"
# SSTATE_DIR=3D${TOPDIR}/sstate-cache
SSTATE_DIR=3D"/tool/yocto/poky/build/sstate-cache"
# MACHINE_FEATURES=3Dkernel26 apm ext2 vfat ethernet screen
MACHINE_FEATURES=3D"kernel26 apm ext2 vfat ethernet screen"
# FILES_linux-xilinx-locale=3D${datadir}/locale
FILES_linux-xilinx-locale=3D"/usr/share/locale"
# TCMODE=3Ddefault
TCMODE=3D"default"
# COMMON_LICENSE_DIR=3D${COREBASE}/meta/files/common-licenses
COMMON_LICENSE_DIR=3D"/tool/yocto/poky/meta/files/common-licenses"
# RANLIB=3D${HOST_PREFIX}ranlib
export RANLIB=3D"powerpc-poky-linux-ranlib"
# LOCALE_SECTION=3D
# RPMBUILD=3Drpmbuild
RPMBUILD=3D"rpmbuild"
# LIBC_LOCALE_DEPENDENCIES=3D	eglibc-localedata-i18n 	eglibc-gconv-ibm850 	=
eglibc-gconv-cp1252 	eglibc-gconv-iso8859-1 	eglibc-gconv-iso8859-15
LIBC_LOCALE_DEPENDENCIES=3D"eglibc-localedata-i18n 	eglibc-gconv-ibm850 	eg=
libc-gconv-cp1252 	eglibc-gconv-iso8859-1 	eglibc-gconv-iso8859-15"
# LICENSE_DIRECTORY=3D${DEPLOY_DIR}/licenses
LICENSE_DIRECTORY=3D"/tool/yocto/poky/build/tmp/deploy/licenses"
# RDEPENDS_kernel-base=3Dkernel-image
RDEPENDS_kernel-base=3D"kernel-image"
# STAGING_DIR_HOST=3D${STAGING_DIR}/${MACHINE}
STAGING_DIR_HOST=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5"
# BB_BASEHASH_task-do_patch=3Df179638d5458dcbd8bf9440ce36a0da3
BB_BASEHASH_task-do_patch=3D"f179638d5458dcbd8bf9440ce36a0da3"
# base_sbindir=3D${base_prefix}/sbin
export base_sbindir=3D"/sbin"
# CXX=3D${CCACHE}${HOST_PREFIX}g++ ${HOST_CC_ARCH}${TOOLCHAIN_OPTIONS}
export CXX=3D"powerpc-poky-linux-g++  -m32  -msoft-float -mcpu=3D440 --sysr=
oot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5"
# RPM=3Drpm
RPM=3D"rpm"
# ASNEEDED_pn-icu=3D
# PREFERRED_PROVIDER_matchbox-panel=3Dmatchbox-panel-2
PREFERRED_PROVIDER_matchbox-panel=3D"matchbox-panel-2"
# systemd_unitdir=3D${base_libdir}/systemd
export systemd_unitdir=3D"/lib/systemd"
# OS=3D${TARGET_OS}
export OS=3D"linux"
# MACHINE_ARCH=3D${@[d.getVar('TUNE_PKGARCH', True), d.getVar('MACHINE', Tr=
ue)][bool(d.getVar('MACHINE', True))].replace('-', '_')}
MACHINE_ARCH=3D"virtex5"
# IMAGE_OVERHEAD_FACTOR=3D1.3
IMAGE_OVERHEAD_FACTOR=3D"1.3"
# BINUVERSION=3D2.22
BINUVERSION=3D"2.22"
# KBRANCH=3Dmaster
KBRANCH=3D"master"
# SDK_VENDOR=3D-pokysdk
SDK_VENDOR=3D"-pokysdk"
# SDKPATHNATIVE=3D${SDKPATH}/sysroots/${SDK_SYS}
SDKPATHNATIVE=3D"/opt/poky/1.2+snapshot/sysroots/x86_64-pokysdk-linux"
# PREFERRED_VERSION_eglibc-initial-nativesdk=3D${EGLIBCVERSION}
PREFERRED_VERSION_eglibc-initial-nativesdk=3D"2.15"
# PREFERRED_PROVIDER_virtual/libiconv=3Deglibc
PREFERRED_PROVIDER_virtual/libiconv=3D"eglibc"
# BB_BASEHASH_task-do_install=3Db6e539e9ffcf5d209e6994dd9eea199b
BB_BASEHASH_task-do_install=3D"b6e539e9ffcf5d209e6994dd9eea199b"
# PREFERRED_VERSION_binutils-crosssdk=3D${BINUVERSION}
PREFERRED_VERSION_binutils-crosssdk=3D"2.22"
# UBOOT_LOADADDRESS=3D0x00000000
UBOOT_LOADADDRESS=3D"0x00000000"
# SDK_VERSION=3D1.2+snapshot
SDK_VERSION=3D"1.2+snapshot"
# BUILD_VENDOR=3D
# KERNELORG_MIRROR=3Dhttp://kernel.org/pub
KERNELORG_MIRROR=3D"http://kernel.org/pub"
# WARN_QA=3Dunsafe-references-in-binaries unsafe-references-in-scripts
WARN_QA=3D"unsafe-references-in-binaries unsafe-references-in-scripts"
# PREFERRED_VERSION_gcc-runtime-nativesdk=3D${SDKGCCVERSION}
PREFERRED_VERSION_gcc-runtime-nativesdk=3D"4.7%"
# CONF_VERSION=3D1
CONF_VERSION=3D"1"
# ALLOW_EMPTY_kernel=3D1
ALLOW_EMPTY_kernel=3D"1"
# ASNEEDED=3D-Wl,--as-needed
ASNEEDED=3D"-Wl,--as-needed"
# PKG_CONFIG_PATH=3D${PKG_CONFIG_DIR}:${STAGING_DATADIR}/pkgconfig
export PKG_CONFIG_PATH=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5//usr/=
lib/pkgconfig:/tool/yocto/poky/build/tmp/sysroots/virtex5/usr/share/pkgconf=
ig"
# PREFERRED_PROVIDER_gdb=3Dgdb
PREFERRED_PROVIDER_gdb=3D"gdb"
# BUILD_AS_ARCH=3D
# FILES=3D
# TCLIBC=3Deglibc
TCLIBC=3D"eglibc"
# COLORTERM=3Dgnome-terminal
COLORTERM=3D"gnome-terminal"
# HOST_AS_ARCH=3D${TARGET_AS_ARCH}
# RRECOMMENDS_linux-xilinx-dbg=3D${PN} (=3D ${EXTENDPKGV})
RRECOMMENDS_linux-xilinx-dbg=3D"linux-xilinx (=3D 3.3.0-r0)"
# RPMCONF_TARGET_BASE=3D${DEPLOY_DIR_RPM}/solvedb
RPMCONF_TARGET_BASE=3D"/tool/yocto/poky/build/tmp/deploy/rpm/solvedb"
# BUILD_NM=3D${BUILD_PREFIX}nm
export BUILD_NM=3D"nm"
# TARGET_VENDOR=3D-poky
TARGET_VENDOR=3D"-poky"
# SANITY_TESTED_DISTROS=3D Yocto (Built by Poky 7.0) 1.2 \n Ubuntu 10.04.4 =
LTS \n Ubuntu 11.10 \n Ubuntu 12.04 LTS \n Fedora release 15 (Lovelock) \n =
Fedora release 16 (Verne) \n Fedora release 17 (Beefy Miracle) \n CentOS re=
lease 5.6 (Final) \n CentOS release 5.7 (Final) \n CentOS release 6.2 (Fina=
l) \n Debian GNU/Linux 6.0.4 (squeeze) \n openSUSE 11.4 \n openSUSE 12.1 \n=
=20
SANITY_TESTED_DISTROS=3D"Yocto (Built by Poky 7.0) 1.2 \n Ubuntu 10.04.4 LT=
S \n Ubuntu 11.10 \n Ubuntu 12.04 LTS \n Fedora release 15 (Lovelock) \n Fe=
dora release 16 (Verne) \n Fedora release 17 (Beefy Miracle) \n CentOS rele=
ase 5.6 (Final) \n CentOS release 5.7 (Final) \n CentOS release 6.2 (Final)=
 \n Debian GNU/Linux 6.0.4 (squeeze) \n openSUSE 11.4 \n openSUSE 12.1 \n"
# STAGING_BASELIBDIR=3D${STAGING_DIR_HOST}${base_libdir}
STAGING_BASELIBDIR=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5/lib"
# SUMMARY_linux-xilinx-staticdev=3D${SUMMARY} - Development files (Static L=
ibraries)
SUMMARY_linux-xilinx-staticdev=3D"linux-xilinx version 3.3.0-r0 - Developme=
nt files (Static Libraries)"
# TUNE_FEATURES=3D${TUNE_FEATURES_tune-${DEFAULTTUNE}}
TUNE_FEATURES=3D"m32 fpu-soft ppc440"
# POKYQEMUDEPS=3D${@base_contains("INCOMPATIBLE_LICENSE", "GPLv3", "", "qem=
u-config",d)}
POKYQEMUDEPS=3D"qemu-config"
# POKY_DEFAULT_EXTRA_RRECOMMENDS=3Dkernel-module-af-packet
POKY_DEFAULT_EXTRA_RRECOMMENDS=3D"kernel-module-af-packet"
# PREFERRED_VERSION_gcc-crosssdk=3D${SDKGCCVERSION}
PREFERRED_VERSION_gcc-crosssdk=3D"4.7%"
# SOLIBSDEV_darwin=3D.dylib
SOLIBSDEV_darwin=3D".dylib"
# TUNE_PKGARCH=3D${TUNE_PKGARCH_tune-${DEFAULTTUNE}}
TUNE_PKGARCH=3D"ppc440"
# FETCHCOMMAND_wget=3D/usr/bin/env wget  -t 2 -T 30 -nv --passive-ftp --no-=
check-certificate -P ${DL_DIR} '${URI}'
FETCHCOMMAND_wget=3D"/usr/bin/env wget  -t 2 -T 30 -nv --passive-ftp --no-c=
heck-certificate -P /tool/yocto/poky/build/downloads '${URI}'"
# PRINC=3D0
PRINC=3D"0"
# PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}compilerlibs=3DNone
# TUNE_CCARGS=3D ${@bb.utils.contains("TUNE_FEATURES", "m32", "-m32", "", d=
)} ${@bb.utils.contains("TUNE_FEATURES", "fpu-hard", "-mhard-float", "", d)=
} ${@bb.utils.contains("TUNE_FEATURES", "fpu-soft", "-msoft-float", "", d)}=
 ${@bb.utils.contains("TUNE_FEATURES", "ppc440", "-mcpu=3D440", "", d)}
TUNE_CCARGS=3D"-m32  -msoft-float -mcpu=3D440"
# module_conf_sco=3Dalias bt-proto-2 sco
module_conf_sco=3D"alias bt-proto-2 sco"
# IMAGE_LINK_NAME=3D${IMAGE_BASENAME}-${MACHINE}
IMAGE_LINK_NAME=3D"linux-xilinx-virtex5"
# FETCHCMD_bzr=3D/usr/bin/env bzr
FETCHCMD_bzr=3D"/usr/bin/env bzr"
# FILES_kernel-devicetree=3D/boot/devicetree*
FILES_kernel-devicetree=3D"/boot/devicetree*"
# PREFERRED_PROVIDER_virtual/xserver-xf86=3Dxserver-xorg
PREFERRED_PROVIDER_virtual/xserver-xf86=3D"xserver-xorg"
# PKG_kernel-image=3Dkernel-image-${@legitimize_package_name('${KERNEL_VERS=
ION}')}
PKG_kernel-image=3D"kernel-image-3.3.0-14.2-build1"
# BB_BASEHASH_task-do_deploy_setscene=3D129c9b0c76d09a14fa11cde93d07fd71
BB_BASEHASH_task-do_deploy_setscene=3D"129c9b0c76d09a14fa11cde93d07fd71"
# QEMU_OPTIONS_armv7a=3D-cpu cortex-a8
QEMU_OPTIONS_armv7a=3D"-cpu cortex-a8"
# SUMMARY_linux-xilinx-dbg=3D${SUMMARY} - Debugging files
SUMMARY_linux-xilinx-dbg=3D"linux-xilinx version 3.3.0-r0 - Debugging files=
"
# MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS=3D
# PREFERRED_VERSION_eglibc=3D${EGLIBCVERSION}
PREFERRED_VERSION_eglibc=3D"2.15"
# PREFERRED_VERSION_gcc-cross-canadian-powerpc=3D${GCCVERSION}
PREFERRED_VERSION_gcc-cross-canadian-powerpc=3D"4.7%"
# BB_BASEHASH_task-do_package=3Dcc2d853fc6ecd45df98e0aa5abb80dbf
BB_BASEHASH_task-do_package=3D"cc2d853fc6ecd45df98e0aa5abb80dbf"
# LOCALE_UTF8_ONLY=3D0
LOCALE_UTF8_ONLY=3D"0"
# PREFERRED_PROVIDER_virtual/powerpc-poky-linux-g++=3Dgcc-cross
PREFERRED_PROVIDER_virtual/powerpc-poky-linux-g++=3D"gcc-cross"
# PREFERRED_PROVIDER_linux-libc-headers-nativesdk=3Dlinux-libc-headers-nati=
vesdk
PREFERRED_PROVIDER_linux-libc-headers-nativesdk=3D"linux-libc-headers-nativ=
esdk"
# BB_BASEHASH_task-do_deploy=3D5937eb449d06c1447568dc43e5fa00c8
BB_BASEHASH_task-do_deploy=3D"5937eb449d06c1447568dc43e5fa00c8"
# GNOME_MIRROR=3Dhttp://ftp.gnome.org/pub/GNOME/sources
GNOME_MIRROR=3D"http://ftp.gnome.org/pub/GNOME/sources"
# PREFERRED_VERSION_libgcc=3D${GCCVERSION}
PREFERRED_VERSION_libgcc=3D"4.7%"
# SSTATE_PKGSPEC=3Dsstate-${PN}-${PACKAGE_ARCH}${TARGET_VENDOR}-${TARGET_OS=
}-${PV}-${PR}-${SSTATE_PKGARCH}-${SSTATE_VERSION}-
SSTATE_PKGSPEC=3D"sstate-linux-xilinx-virtex5-poky-linux-3.3.0-r0-virtex5-2=
-"
# BB_BASEHASH_task-do_compile_kernelmodules=3D46adb5d9981936a7d500594b838e0=
19c
BB_BASEHASH_task-do_compile_kernelmodules=3D"46adb5d9981936a7d500594b838e01=
9c"
# COMPATIBLE_HOST=3DNone
# DEPLOY_DIR_IPK=3D${DEPLOY_DIR}/ipk
DEPLOY_DIR_IPK=3D"/tool/yocto/poky/build/tmp/deploy/ipk"
# SSTATE_MANIFESTS=3D${TMPDIR}/sstate-control
SSTATE_MANIFESTS=3D"/tool/yocto/poky/build/tmp/sstate-control"
# TUNE_PKGARCH_tune-powerpc-nf=3Dpowerpc-nf
TUNE_PKGARCH_tune-powerpc-nf=3D"powerpc-nf"
# STAGING_FIRMWARE_DIR=3D${STAGING_DIR_HOST}/firmware
STAGING_FIRMWARE_DIR=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5/firmwar=
e"
# BBFILES=3D/tool/yocto/poky/meta/recipes-*/*/*.bb /tool/yocto/poky/meta-yo=
cto/recipes-*/*/*.bb /tool/yocto/poky/meta-yocto/recipes-*/*/*.bbappend /to=
ol/yocto/meta-openembedded/meta-oe/recipes-*/*/*.bb /tool/yocto/meta-openem=
bedded/meta-oe/recipes-*/*/*.bbappend /tool/yocto/meta-xilinx/recipes-*/*/*=
.bb /tool/yocto/meta-xilinx/recipes-*/*/*.bbappend
BBFILES=3D"/tool/yocto/poky/meta/recipes-*/*/*.bb /tool/yocto/poky/meta-yoc=
to/recipes-*/*/*.bb /tool/yocto/poky/meta-yocto/recipes-*/*/*.bbappend /too=
l/yocto/meta-openembedded/meta-oe/recipes-*/*/*.bb /tool/yocto/meta-openemb=
edded/meta-oe/recipes-*/*/*.bbappend /tool/yocto/meta-xilinx/recipes-*/*/*.=
bb /tool/yocto/meta-xilinx/recipes-*/*/*.bbappend"
# AS=3D${HOST_PREFIX}as ${HOST_AS_ARCH}
export AS=3D"powerpc-poky-linux-as"
# AR=3D${HOST_PREFIX}ar
export AR=3D"powerpc-poky-linux-ar"
# PACKAGE_EXTRA_ARCHS_tune-powerpc=3Dpowerpc
PACKAGE_EXTRA_ARCHS_tune-powerpc=3D"powerpc"
# PREFERRED_VERSION_linux-yocto=3D3.4%
PREFERRED_VERSION_linux-yocto=3D"3.4%"
# BNFILE=3D${BUILDSTATS_BASE}/.buildname
BNFILE=3D"/tool/yocto/poky/build/tmp/buildstats//.buildname"
# FILES_${PN}-locale=3DNone
# bindir_nativesdk=3D${prefix_nativesdk}/bin
bindir_nativesdk=3D"/usr/bin"
# PACKAGE_DEPENDS=3D rpm-native file-native pax-utils-native ${QADEPENDS}
PACKAGE_DEPENDS=3D"rpm-native file-native pax-utils-native prelink-native"
# BUILD_CPPFLAGS=3D-isystem${STAGING_INCDIR_NATIVE}
export BUILD_CPPFLAGS=3D"-isystem/tool/yocto/poky/build/tmp/sysroots/x86_64=
-linux/usr/include"
# KERNEL_LOCALVERSION=3D
# PERSISTENT_DIR=3D${TMPDIR}/cache
PERSISTENT_DIR=3D"/tool/yocto/poky/build/tmp/cache"
# QEMU_OPTIONS=3D
# do_package_write_deb=3DNone
# ROOT_FLASH_SIZE=3D256
ROOT_FLASH_SIZE=3D"256"
# RDEPENDS_linux-xilinx-staticdev=3D${PN}-dev (=3D ${EXTENDPKGV})
RDEPENDS_linux-xilinx-staticdev=3D"linux-xilinx-dev (=3D 3.3.0-r0)"
# SDK_PACKAGE_ARCHS=3Dall any noarch ${SDK_ARCH}-nativesdk
SDK_PACKAGE_ARCHS=3D"all any noarch x86_64-nativesdk"
# CPP=3D${HOST_PREFIX}gcc -E${TOOLCHAIN_OPTIONS} ${HOST_CC_ARCH}
export CPP=3D"powerpc-poky-linux-gcc -E --sysroot=3D/tool/yocto/poky/build/=
tmp/sysroots/virtex5  -m32  -msoft-float -mcpu=3D440"
# BBFILE_COLLECTIONS=3D normal yocto openembedded-layer xilinx
BBFILE_COLLECTIONS=3D"normal yocto openembedded-layer xilinx"
# mandir=3D${datadir}/man
export mandir=3D"/usr/share/man"
# SECTION_linux-xilinx-doc=3Ddoc
SECTION_linux-xilinx-doc=3D"doc"
# PREFERRED_PROVIDER_opkg-nativesdk=3Dopkg-nativesdk
PREFERRED_PROVIDER_opkg-nativesdk=3D"opkg-nativesdk"
# FAKEROOTDIRS=3D${PSEUDO_LOCALSTATEDIR}
FAKEROOTDIRS=3D"/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xi=
linx-3.3.0-r0/pseudo/"
# FILES_linux-xilinx-bin=3D${bindir}/* ${sbindir}/*
FILES_linux-xilinx-bin=3D"/usr/bin/* /usr/sbin/*"
# USE_PR_SERV=3D${@[1,0][((not d.getVar('PRSERV_HOST', True)) or (not d.get=
Var('PRSERV_PORT', True))) and (not d.getVar('PRSERV_LOCKDOWN', True))]}
USE_PR_SERV=3D"0"
# CCACHE=3D
# BB_BASEHASH_task-do_package_write_rpm_setscene=3Da83a2743f2c19c469c2cb36a=
d96cebf5
BB_BASEHASH_task-do_package_write_rpm_setscene=3D"a83a2743f2c19c469c2cb36ad=
96cebf5"
# sbindir_native=3D${prefix_native}/sbin
sbindir_native=3D"/usr/sbin"
# P=3D${PN}-${PV}
P=3D"linux-xilinx-3.3.0"
# PKG_CONFIG_SYSROOT_DIR=3D${STAGING_DIR_HOST}
export PKG_CONFIG_SYSROOT_DIR=3D"/tool/yocto/poky/build/tmp/sysroots/virtex=
5"
# XILINX_BOARD=3Dml507
XILINX_BOARD=3D"ml507"
# FILESPATH=3D${@base_set_filespath([ "${FILE_DIRNAME}/${PF}", "${FILE_DIRN=
AME}/${P}", "${FILE_DIRNAME}/${PN}", "${FILE_DIRNAME}/${BP}", "${FILE_DIRNA=
ME}/${BPN}", "${FILE_DIRNAME}/files", "${FILE_DIRNAME}" ], d)}
FILESPATH=3D"/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx-3.3.=
0-r0/linux:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx-3.3.0-=
r0/powerpc:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx-3.3.0-=
r0/build-linux:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx-3.=
3.0-r0/pn-linux-xilinx:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-x=
ilinx-3.3.0-r0/virtex5:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-x=
ilinx-3.3.0-r0/poky:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xili=
nx-3.3.0-r0/class-target:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux=
-xilinx-3.3.0-r0/forcevariable:/tool/yocto/meta-xilinx/recipes-kernel/linux=
/linux-xilinx-3.3.0-r0/libc-glibc:/tool/yocto/meta-xilinx/recipes-kernel/li=
nux/linux-xilinx-3.3.0-r0/:/tool/yocto/meta-xilinx/recipes-kernel/linux/lin=
ux-xilinx-3.3.0/linux:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xi=
linx-3.3.0/powerpc:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilin=
x-3.3.0/build-linux:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xili=
nx-3.3.0/pn-linux-xilinx:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux=
-xilinx-3.3.0/virtex5:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xi=
linx-3.3.0/poky:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx-3=
.3.0/class-target:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx=
-3.3.0/forcevariable:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xil=
inx-3.3.0/libc-glibc:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xil=
inx-3.3.0/:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx/linux:=
/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx/powerpc:/tool/yoc=
to/meta-xilinx/recipes-kernel/linux/linux-xilinx/build-linux:/tool/yocto/me=
ta-xilinx/recipes-kernel/linux/linux-xilinx/pn-linux-xilinx:/tool/yocto/met=
a-xilinx/recipes-kernel/linux/linux-xilinx/virtex5:/tool/yocto/meta-xilinx/=
recipes-kernel/linux/linux-xilinx/poky:/tool/yocto/meta-xilinx/recipes-kern=
el/linux/linux-xilinx/class-target:/tool/yocto/meta-xilinx/recipes-kernel/l=
inux/linux-xilinx/forcevariable:/tool/yocto/meta-xilinx/recipes-kernel/linu=
x/linux-xilinx/libc-glibc:/tool/yocto/meta-xilinx/recipes-kernel/linux/linu=
x-xilinx/:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx-3.3.0/l=
inux:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx-3.3.0/powerp=
c:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx-3.3.0/build-lin=
ux:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx-3.3.0/pn-linux=
-xilinx:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx-3.3.0/vir=
tex5:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx-3.3.0/poky:/=
tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx-3.3.0/class-target=
:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx-3.3.0/forcevaria=
ble:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx-3.3.0/libc-gl=
ibc:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx-3.3.0/:/tool/=
yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx/linux:/tool/yocto/meta-=
xilinx/recipes-kernel/linux/linux-xilinx/powerpc:/tool/yocto/meta-xilinx/re=
cipes-kernel/linux/linux-xilinx/build-linux:/tool/yocto/meta-xilinx/recipes=
-kernel/linux/linux-xilinx/pn-linux-xilinx:/tool/yocto/meta-xilinx/recipes-=
kernel/linux/linux-xilinx/virtex5:/tool/yocto/meta-xilinx/recipes-kernel/li=
nux/linux-xilinx/poky:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xi=
linx/class-target:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx=
/forcevariable:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx/li=
bc-glibc:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx/:/tool/y=
octo/meta-xilinx/recipes-kernel/linux/files/linux:/tool/yocto/meta-xilinx/r=
ecipes-kernel/linux/files/powerpc:/tool/yocto/meta-xilinx/recipes-kernel/li=
nux/files/build-linux:/tool/yocto/meta-xilinx/recipes-kernel/linux/files/pn=
-linux-xilinx:/tool/yocto/meta-xilinx/recipes-kernel/linux/files/virtex5:/t=
ool/yocto/meta-xilinx/recipes-kernel/linux/files/poky:/tool/yocto/meta-xili=
nx/recipes-kernel/linux/files/class-target:/tool/yocto/meta-xilinx/recipes-=
kernel/linux/files/forcevariable:/tool/yocto/meta-xilinx/recipes-kernel/lin=
ux/files/libc-glibc:/tool/yocto/meta-xilinx/recipes-kernel/linux/files/:/to=
ol/yocto/meta-xilinx/recipes-kernel/linux/linux:/tool/yocto/meta-xilinx/rec=
ipes-kernel/linux/powerpc:/tool/yocto/meta-xilinx/recipes-kernel/linux/buil=
d-linux:/tool/yocto/meta-xilinx/recipes-kernel/linux/pn-linux-xilinx:/tool/=
yocto/meta-xilinx/recipes-kernel/linux/virtex5:/tool/yocto/meta-xilinx/reci=
pes-kernel/linux/poky:/tool/yocto/meta-xilinx/recipes-kernel/linux/class-ta=
rget:/tool/yocto/meta-xilinx/recipes-kernel/linux/forcevariable:/tool/yocto=
/meta-xilinx/recipes-kernel/linux/libc-glibc:/tool/yocto/meta-xilinx/recipe=
s-kernel/linux/"
# TUNE_ARCH=3D${@bb.utils.contains("TUNE_FEATURES", "m32", "powerpc", "", d=
)}
TUNE_ARCH=3D"powerpc"
# QADEPENDS=3Dprelink-native
QADEPENDS=3D"prelink-native"
# WHITELIST_GPLv3=3Dless
WHITELIST_GPLv3=3D"less"
# E_SVN=3Dsvn://svn.enlightenment.org/svn/e
E_SVN=3D"svn://svn.enlightenment.org/svn/e"
# BUILD_CXXFLAGS=3D${BUILD_CFLAGS} -fpermissive
export BUILD_CXXFLAGS=3D"-isystem/tool/yocto/poky/build/tmp/sysroots/x86_64=
-linux/usr/include -O2 -pipe -fpermissive"
# OBJCOPY=3D${HOST_PREFIX}objcopy
export OBJCOPY=3D"powerpc-poky-linux-objcopy"
# BB_BASEHASH_task-do_menuconfig=3Ddf9a8ccdf29b0f24998ae21d20c4b1b6
BB_BASEHASH_task-do_menuconfig=3D"df9a8ccdf29b0f24998ae21d20c4b1b6"
# PREFERRED_VERSION_linux-yocto_qemux86-64=3D3.4%
PREFERRED_VERSION_linux-yocto_qemux86-64=3D"3.4%"
# LCONF_VERSION=3D4
LCONF_VERSION=3D"4"
# SRC_URI=3Dgit://git.xilinx.com/linux-xlnx.git;protocol=3Dgit;branch=3D${K=
BRANCH}            file://defconfig
SRC_URI=3D"git://git.xilinx.com/linux-xlnx.git;protocol=3Dgit;branch=3Dmast=
er            file://defconfig"
# SSTATEPOSTINSTFUNCS=3D
# includedir_native=3D${prefix_native}/include
includedir_native=3D"/usr/include"
# SESSION_MANAGER=3Dlocal/eos:@/tmp/.ICE-unix/4305,unix/eos:/tmp/.ICE-unix/=
4305
SESSION_MANAGER=3D"local/eos:@/tmp/.ICE-unix/4305,unix/eos:/tmp/.ICE-unix/4=
305"
# BB_BASEHASH_task-do_savedefconfig=3D966cb95e43b6f4fff66d7854044a55b3
BB_BASEHASH_task-do_savedefconfig=3D"966cb95e43b6f4fff66d7854044a55b3"
# SUMMARY_${PN}-doc=3DNone
# PACKAGE_EXTRA_ARCHS_tune-powerpc-nf=3Dpowerpc-nf
PACKAGE_EXTRA_ARCHS_tune-powerpc-nf=3D"powerpc-nf"
# FETCHCMD_hg=3D/usr/bin/env hg
FETCHCMD_hg=3D"/usr/bin/env hg"
# TUNE_FEATURES_tune-powerpc=3Dm32 fpu-hard
TUNE_FEATURES_tune-powerpc=3D"m32 fpu-hard"
# ASNEEDED_pn-minimo=3D
# FILESDIR=3D${@bb.which(d.getVar('FILESPATH', True), '.')}
FILESDIR=3D"/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx/virte=
x5/."
# XILINX_BSP_PATH=3D/project/xilinx-ml507-workspace
XILINX_BSP_PATH=3D"/project/xilinx-ml507-workspace"
# TUNE_FEATURES_tune-ppc440=3Dm32 fpu-soft ppc440
TUNE_FEATURES_tune-ppc440=3D"m32 fpu-soft ppc440"
# OELAYOUT_ABI=3D8
OELAYOUT_ABI=3D"8"
# BBFILE_PRIORITY_xilinx=3D6
BBFILE_PRIORITY_xilinx=3D"6"
# DISTRO_FEATURES_LIBC_DEFAULT=3Dipv4 ipv6 libc-backtrace libc-big-macros l=
ibc-bsd libc-cxx-tests libc-catgets libc-charsets libc-crypt 					libc-cryp=
t-ufc libc-db-aliases libc-envz libc-fcvt libc-fmtmsg libc-fstab libc-ftrav=
erse 					libc-getlogin libc-idn libc-inet-anl libc-libm libc-libm-big libc=
-locales libc-locale-code 					libc-memusage libc-nis libc-nsswitch libc-rc=
md libc-rtld-debug libc-spawn libc-streams libc-sunrpc 					libc-utmp libc-=
utmpx libc-wordexp libc-posix-clang-wchar libc-posix-regexp libc-posix-rege=
xp-glibc 					libc-posix-wchar-io
DISTRO_FEATURES_LIBC_DEFAULT=3D"ipv4 ipv6 libc-backtrace libc-big-macros li=
bc-bsd libc-cxx-tests libc-catgets libc-charsets libc-crypt 					libc-crypt=
-ufc libc-db-aliases libc-envz libc-fcvt libc-fmtmsg libc-fstab libc-ftrave=
rse 					libc-getlogin libc-idn libc-inet-anl libc-libm libc-libm-big libc-=
locales libc-locale-code 					libc-memusage libc-nis libc-nsswitch libc-rcm=
d libc-rtld-debug libc-spawn libc-streams libc-sunrpc 					libc-utmp libc-u=
tmpx libc-wordexp libc-posix-clang-wchar libc-posix-regexp libc-posix-regex=
p-glibc 					libc-posix-wchar-io"
# base_libdir_native=3D/lib
base_libdir_native=3D"/lib"
# FETCHCOMMAND=3DERROR, this must be a BitBake bug
FETCHCOMMAND=3D"ERROR, this must be a BitBake bug"
# PKGR=3D${PR}${EXTENDPRAUTO}
PKGR=3D"r0"
# XDG_DATA_DIRS=3D/usr/share/ubuntu:/usr/share/gnome:/usr/local/share/:/usr=
/share/
XDG_DATA_DIRS=3D"/usr/share/ubuntu:/usr/share/gnome:/usr/local/share/:/usr/=
share/"
# includedir_nativesdk=3D${prefix_nativesdk}/include
includedir_nativesdk=3D"/usr/include"
# LINKER_HASH_STYLE_mipsel=3Dsysv
LINKER_HASH_STYLE_mipsel=3D"sysv"
# IMAGE_PKGTYPE=3Drpm
IMAGE_PKGTYPE=3D"rpm"
# FILES_${PN}-dbg=3DNone
# servicedir=3D${base_prefix}/srv
export servicedir=3D"/srv"
# INITRAMFS_IMAGE=3D
# bindir_native=3D${prefix_native}/bin
bindir_native=3D"/usr/bin"
# PREFERRED_PROVIDER_virtual/powerpc-poky-linux-compilerlibs=3Dgcc-runtime
PREFERRED_PROVIDER_virtual/powerpc-poky-linux-compilerlibs=3D"gcc-runtime"
# BUILD_PREFIX=3D
# HOME=3D/home/elvis
export HOME=3D"/home/elvis"
# SECTION_linux-xilinx-staticdev=3Ddevel
SECTION_linux-xilinx-staticdev=3D"devel"
# SYSROOT_LOCK=3D${STAGING_DIR}/staging.lock
SYSROOT_LOCK=3D"/tool/yocto/poky/build/tmp/sysroots/staging.lock"
# COMBINED_FEATURES=3D${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEAT=
URES", "alsa", d)} ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURE=
S", "bluetooth", d)} ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATU=
RES", "ext2", d)} ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES=
", "vfat", d)} ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", =
"irda", d)} ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "pc=
mcia", d)} ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "pci=
", d)} ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "usbgadg=
et", d)} ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "usbho=
st", d)} ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "wifi"=
, d)}
COMBINED_FEATURES=3D"ext2"
# PKGDESTWORK=3D${WORKDIR}/pkgdata
PKGDESTWORK=3D"/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xil=
inx-3.3.0-r0/pkgdata"
# BASE_LIB_tune-powerpc=3Dlib
BASE_LIB_tune-powerpc=3D"lib"
# SRCDATE=3D${DATE}
SRCDATE=3D"20120623"
# SEPPUKU_PASS=3DNone
# DEFAULT_PREFERENCE=3D1
DEFAULT_PREFERENCE=3D"1"
# TARGET_CC_ARCH=3D${TUNE_CCARGS}
TARGET_CC_ARCH=3D"-m32  -msoft-float -mcpu=3D440"
# QEMU_OPTIONS_armv6=3D-cpu arm1136
QEMU_OPTIONS_armv6=3D"-cpu arm1136"
# HOST_ARCH=3D${TARGET_ARCH}
HOST_ARCH=3D"powerpc"
# ENABLE_BINARY_LOCALE_GENERATION=3D1
ENABLE_BINARY_LOCALE_GENERATION=3D"1"
# TARGET_OS=3Dlinux${LIBCEXTENSION}${ABIEXTENSION}
TARGET_OS=3D"linux"
# SOURCE_MIRROR_URL=3DNone
# SOLIBS_darwin8=3D.*.dylib
SOLIBS_darwin8=3D".*.dylib"
# SOLIBS_darwin9=3D.*.dylib
SOLIBS_darwin9=3D".*.dylib"
# PREFERRED_VERSION_u-boot=3Du-boot-xilinx
PREFERRED_VERSION_u-boot=3D"u-boot-xilinx"
# CONNECTIVITY_CHECK_URIS=3Dgit://git.yoctoproject.org/yocto-firewall-test;=
protocol=3Dgit;rev=3DHEAD https://eula-downloads.yoctoproject.org/index.php=
 http://bugzilla.yoctoproject.org/report.cgi
CONNECTIVITY_CHECK_URIS=3D"git://git.yoctoproject.org/yocto-firewall-test;p=
rotocol=3Dgit;rev=3DHEAD https://eula-downloads.yoctoproject.org/index.php =
http://bugzilla.yoctoproject.org/report.cgi"
# ABIEXTENSION=3D
# TUNEABI_WHITELIST=3DNone
# FULL_OPTIMIZATION=3D-O2 -pipe ${DEBUG_FLAGS}
FULL_OPTIMIZATION=3D"-O2 -pipe -g -feliminate-unused-debug-types"
# TARGET_AS_ARCH=3D${TUNE_ASARGS}
# PREFERRED_VERSION_python=3D2.7.3
PREFERRED_VERSION_python=3D"2.7.3"
# FILES_${PN}=3DNone
# PREFERRED_VERSION_libgcc-nativesdk=3D${SDKGCCVERSION}
PREFERRED_VERSION_libgcc-nativesdk=3D"4.7%"
# PATCHRESOLVE=3Dnoop
PATCHRESOLVE=3D"noop"
# SSTATE_SCAN_FILES=3D*.la *-config *_config
SSTATE_SCAN_FILES=3D"*.la *-config *_config"
# LGPLv2_WHITELIST_GPLv3=3Dlibassuan gnutls libtasn1 libidn libgcc gcc-runt=
ime
LGPLv2_WHITELIST_GPLv3=3D"libassuan gnutls libtasn1 libidn libgcc gcc-runti=
me"
# PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}gcc-initial=3DNone
# DISTRO_FEATURES_LIBC_virtclass-nativesdk=3D${DISTRO_FEATURES_LIBC_DEFAULT=
}
DISTRO_FEATURES_LIBC_virtclass-nativesdk=3D"ipv4 ipv6 libc-backtrace libc-b=
ig-macros libc-bsd libc-cxx-tests libc-catgets libc-charsets libc-crypt 			=
		libc-crypt-ufc libc-db-aliases libc-envz libc-fcvt libc-fmtmsg libc-fstab=
 libc-ftraverse 					libc-getlogin libc-idn libc-inet-anl libc-libm libc-li=
bm-big libc-locales libc-locale-code 					libc-memusage libc-nis libc-nsswi=
tch libc-rcmd libc-rtld-debug libc-spawn libc-streams libc-sunrpc 					libc=
-utmp libc-utmpx libc-wordexp libc-posix-clang-wchar libc-posix-regexp libc=
-posix-regexp-glibc 					libc-posix-wchar-io"
# DISTRO_NAME=3DYocto (Built by Poky 7.0)
DISTRO_NAME=3D"Yocto (Built by Poky 7.0)"
# FREEBSD_MIRROR=3Dftp://ftp.freebsd.org/pub/FreeBSD/
FREEBSD_MIRROR=3D"ftp://ftp.freebsd.org/pub/FreeBSD/"
# PREFERRED_VERSION_binutils-cross=3D${BINUVERSION}
PREFERRED_VERSION_binutils-cross=3D"2.22"
# PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}binutils=3DNone
# HOST_PREFIX=3D${TARGET_PREFIX}
HOST_PREFIX=3D"powerpc-poky-linux-"
# module_autoload_hidp=3Dhidp
module_autoload_hidp=3D"hidp"
# LC_ALL=3DC
export LC_ALL=3D"C"
# PKGD=3D${WORKDIR}/package
PKGD=3D"/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3=
.0-r0/package"
# PKGE=3D${@['','${PE\x7d'][d.getVar('PE',1) > 0]}
# HOST_SYS=3D${HOST_ARCH}${HOST_VENDOR}-${HOST_OS}
HOST_SYS=3D"powerpc-poky-linux"
# SSTATETASKNAMES=3Ddeploy deploy-rpm populate-lic package populate-sysroot
SSTATETASKNAMES=3D"deploy deploy-rpm populate-lic package populate-sysroot"
# PKGV=3D${PV}
PKGV=3D"3.3.0"
# TARGET_CPPFLAGS=3D
# BBFILE_PATTERN_yocto=3D^/tool/yocto/poky/meta-yocto/
BBFILE_PATTERN_yocto=3D"^/tool/yocto/poky/meta-yocto/"
# PCMCIA_MANAGER=3Dpcmciautils
PCMCIA_MANAGER=3D"pcmciautils"
# PREFERRED_PROVIDER_opkg=3Dopkg
PREFERRED_PROVIDER_opkg=3D"opkg"
# TUNE_ASARGS=3D
# FILE=3D/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx_3.3.0.bb
FILE=3D"/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx_3.3.0.bb"
# EXTENDPKGEVER=3D${@['','${PKGE\x7d:'][d.getVar('PKGE',1).strip() !=3D '']=
}
# KERNEL_CC=3D${CCACHE}${HOST_PREFIX}gcc${KERNEL_CCSUFFIX} ${HOST_CC_KERNEL=
_ARCH}${TOOLCHAIN_OPTIONS}
KERNEL_CC=3D"powerpc-poky-linux-gcc  --sysroot=3D/tool/yocto/poky/build/tmp=
/sysroots/virtex5"
# PREFERRED_PROVIDER_dbus-glib=3Ddbus-glib
PREFERRED_PROVIDER_dbus-glib=3D"dbus-glib"
# exec_prefix=3D/usr
export exec_prefix=3D"/usr"
# bindir_crossscripts=3D${bindir}/crossscripts
bindir_crossscripts=3D"/usr/bin/crossscripts"
# KERNEL_LDSUFFIX=3D
# IMAGE_DEVICE_TABLES=3Dfiles/device_table-minimal.txt files/device_table_a=
dd-xsa.txt
IMAGE_DEVICE_TABLES=3D"files/device_table-minimal.txt files/device_table_ad=
d-xsa.txt"
# PREFERRED_VERSION_binutils=3D${BINUVERSION}
PREFERRED_VERSION_binutils=3D"2.22"
# PREFERRED_PROVIDER_virtual/powerpc-poky-linux-libc-initial=3D${TCLIBC}-in=
itial
PREFERRED_PROVIDER_virtual/powerpc-poky-linux-libc-initial=3D"eglibc-initia=
l"
# SDKPATH=3D/opt/${DISTRO}/${SDK_VERSION}
SDKPATH=3D"/opt/poky/1.2+snapshot"
# GROUP_locale=3DNone
# module_autoload_rfcomm=3Drfcomm
module_autoload_rfcomm=3D"rfcomm"
# SSTATE_PKGNAME=3D${SSTATE_PKGSPEC}${BB_TASKHASH}
SSTATE_PKGNAME=3D"sstate-linux-xilinx-virtex5-poky-linux-3.3.0-r0-virtex5-2=
-${BB_TASKHASH}"
# STAGING_INCDIR=3D${STAGING_DIR_HOST}${includedir}
STAGING_INCDIR=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5/usr/include"
# BUILD_RANLIB=3D${BUILD_PREFIX}ranlib
export BUILD_RANLIB=3D"ranlib"
# FETCHCMD_cvs=3D/usr/bin/env cvs
FETCHCMD_cvs=3D"/usr/bin/env cvs"
# DESKTOP_SESSION=3Dubuntu
DESKTOP_SESSION=3D"ubuntu"
# PKGWRITEDIRSRPM=3D${DEPLOY_DIR}/sources/deploy-srpm
PKGWRITEDIRSRPM=3D"/tool/yocto/poky/build/tmp/deploy/sources/deploy-srpm"
# COMPATIBLE_MACHINE=3D(virtex4|virtex5|virtex5mb|spartan6-sp605|spartan6-l=
x9mb)
COMPATIBLE_MACHINE=3D"(virtex4|virtex5|virtex5mb|spartan6-sp605|spartan6-lx=
9mb)"
# PREFERRED_PROVIDER_libgcc=3Dlibgcc
PREFERRED_PROVIDER_libgcc=3D"libgcc"
# GENTOO_MIRROR=3Dhttp://distfiles.gentoo.org/distfiles
GENTOO_MIRROR=3D"http://distfiles.gentoo.org/distfiles"
# CO_DIR=3D${DL_DIR}
CO_DIR=3D"/tool/yocto/poky/build/downloads"
# MULTIMACH_TARGET_SYS=3D${PACKAGE_ARCH}${TARGET_VENDOR}-${TARGET_OS}
MULTIMACH_TARGET_SYS=3D"virtex5-poky-linux"
# BB_BASEHASH_task-do_populate_lic_setscene=3D3bdcbad02cc5fbfdbf0709766880e=
ac2
BB_BASEHASH_task-do_populate_lic_setscene=3D"3bdcbad02cc5fbfdbf0709766880ea=
c2"
# DESCRIPTION_linux-xilinx-dev=3D${DESCRIPTION}  This package contains symb=
olic links, header files, and related items necessary for software developm=
ent.
DESCRIPTION_linux-xilinx-dev=3D"Linux kernel for Xilinx platforms  This pac=
kage contains symbolic links, header files, and related items necessary for=
 software development."
# ALLOW_EMPTY_kernel-image=3D1
ALLOW_EMPTY_kernel-image=3D"1"
# HOSTTOOLS_WHITELIST_GPLv3=3D
# TUNE_LDARGS=3D
# baselib=3D${BASELIB}
baselib=3D"lib"
# SSTATE_VERSION=3D2
SSTATE_VERSION=3D"2"
# PREFERRED_VERSION_gcc-cross-canadian-${TRANSLATED_TARGET_ARCH}=3DNone
# BB_ENV_EXTRAWHITE=3DPSEUDO_BUILD PSEUDO_DISABLED MACHINE DISTRO TCMODE TC=
LIBC http_proxy ftp_proxy https_proxy all_proxy ALL_PROXY no_proxy SSH_AGEN=
T_PID SSH_AUTH_SOCK BB_SRCREV_POLICY SDKMACHINE BB_NUMBER_THREADS PARALLEL_=
MAKE GIT_PROXY_COMMAND GIT_PROXY_IGNORE SOCKS5_PASSWD SOCKS5_USER SCREENDIR
BB_ENV_EXTRAWHITE=3D"PSEUDO_BUILD PSEUDO_DISABLED MACHINE DISTRO TCMODE TCL=
IBC http_proxy ftp_proxy https_proxy all_proxy ALL_PROXY no_proxy SSH_AGENT=
_PID SSH_AUTH_SOCK BB_SRCREV_POLICY SDKMACHINE BB_NUMBER_THREADS PARALLEL_M=
AKE GIT_PROXY_COMMAND GIT_PROXY_IGNORE SOCKS5_PASSWD SOCKS5_USER SCREENDIR"
# KERNEL_IMAGETYPE_FOR_MAKE=3D${@(lambda s: s[:-3] if s[-3:] =3D=3D ".gz" e=
lse s)(d.getVar('KERNEL_IMAGETYPE', True))}
KERNEL_IMAGETYPE_FOR_MAKE=3D"uImage"
# PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}g++=3DNone
# PREFERRED_VERSION_gcc-crosssdk-intermediate=3D${SDKGCCVERSION}
PREFERRED_VERSION_gcc-crosssdk-intermediate=3D"4.7%"
# PREFERRED_VERSION_binutils-cross-canadian-${TRANSLATED_TARGET_ARCH}=3DNon=
e
# BUILDSDK_CPPFLAGS=3D-isystem${STAGING_INCDIR}
BUILDSDK_CPPFLAGS=3D"-isystem/tool/yocto/poky/build/tmp/sysroots/virtex5/us=
r/include"
# AVAILTUNES=3D powerpc powerpc-nf ppc440
AVAILTUNES=3D"powerpc powerpc-nf ppc440"
# BB_SIGNATURE_EXCLUDE_FLAGS=3Ddoc defaultval _append _prepend deps depends=
 lockfiles type vardepsexclude vardeps vardepvalue file-checksums python fu=
nc task export unexport noexec nostamp dirs cleandirs sstate-lockfile-share=
d prefuncs postfuncs export_func deptask rdeptask recrdeptask nodeprrecs st=
amp-base stamp-extra-info
BB_SIGNATURE_EXCLUDE_FLAGS=3D"doc defaultval _append _prepend deps depends =
lockfiles type vardepsexclude vardeps vardepvalue file-checksums python fun=
c task export unexport noexec nostamp dirs cleandirs sstate-lockfile-shared=
 prefuncs postfuncs export_func deptask rdeptask recrdeptask nodeprrecs sta=
mp-base stamp-extra-info"
# BB_HASHBASE_WHITELIST=3DTMPDIR FILE PATH PWD BB_TASKHASH BBPATH DL_DIR SS=
TATE_DIR THISDIR FILESEXTRAPATHS FILE_DIRNAME HOME LOGNAME SHELL TERM USER =
FILESPATH STAGING_DIR_HOST STAGING_DIR_TARGET COREBASE PRSERV_HOST PRSERV_P=
ORT PRSERV_DUMPDIR PRSERV_DUMPFILE PRSERV_LOCKDOWN PARALLEL_MAKE CCACHE_DIR=
 EXTERNAL_TOOLCHAIN CCACHE
BB_HASHBASE_WHITELIST=3D"TMPDIR FILE PATH PWD BB_TASKHASH BBPATH DL_DIR SST=
ATE_DIR THISDIR FILESEXTRAPATHS FILE_DIRNAME HOME LOGNAME SHELL TERM USER F=
ILESPATH STAGING_DIR_HOST STAGING_DIR_TARGET COREBASE PRSERV_HOST PRSERV_PO=
RT PRSERV_DUMPDIR PRSERV_DUMPFILE PRSERV_LOCKDOWN PARALLEL_MAKE CCACHE_DIR =
EXTERNAL_TOOLCHAIN CCACHE"
# module_conf_bluez=3Dalias net-pf-31 bluez
module_conf_bluez=3D"alias net-pf-31 bluez"
# DESCRIPTION_linux-xilinx-dbg=3D${DESCRIPTION}  This package contains ELF =
symbols and related sources for debugging purposes.
DESCRIPTION_linux-xilinx-dbg=3D"Linux kernel for Xilinx platforms  This pac=
kage contains ELF symbols and related sources for debugging purposes."
# E_MIRROR=3Dhttp://download.enlightenment.org/releases
E_MIRROR=3D"http://download.enlightenment.org/releases"
# KERNEL_DEVICETREE_FLAGS=3D-R 8 -p 0x3000
KERNEL_DEVICETREE_FLAGS=3D"-R 8 -p 0x3000"
# FETCHCMD_svn=3D/usr/bin/env svn
FETCHCMD_svn=3D"/usr/bin/env svn"
# PREFERRED_PROVIDER_virtual/kernel=3Dlinux-xilinx
PREFERRED_PROVIDER_virtual/kernel=3D"linux-xilinx"
# BB_BASEHASH_task-do_listtasks=3D1ad35dec4c57727e67231fbe9f8e453b
BB_BASEHASH_task-do_listtasks=3D"1ad35dec4c57727e67231fbe9f8e453b"
# BB_BASEHASH_task-do_package_write=3Dfdc376fd264c2fc126ec182f0a53ca8a
BB_BASEHASH_task-do_package_write=3D"fdc376fd264c2fc126ec182f0a53ca8a"
# sysconfdir=3D${base_prefix}/etc
export sysconfdir=3D"/etc"
# FILES_kernel-image=3D/boot/${KERNEL_IMAGETYPE}*
FILES_kernel-image=3D"/boot/uImage*"
# CCLD=3D${CC}
export CCLD=3D"powerpc-poky-linux-gcc  -m32  -msoft-float -mcpu=3D440 --sys=
root=3D/tool/yocto/poky/build/tmp/sysroots/virtex5"
# CHECKCOMMAND_wget=3D/usr/bin/env wget --spider  -t 2 -T 30 --passive-ftp =
--no-check-certificate -P ${DL_DIR} '${URI}'
CHECKCOMMAND_wget=3D"/usr/bin/env wget --spider  -t 2 -T 30 --passive-ftp -=
-no-check-certificate -P /tool/yocto/poky/build/downloads '${URI}'"
# QAPATHTEST=3DNone
# SELECTED_OPTIMIZATION=3D${@d.getVar(['FULL_OPTIMIZATION', 'DEBUG_OPTIMIZA=
TION'][d.getVar('DEBUG_BUILD', True) =3D=3D '1'], True)}
SELECTED_OPTIMIZATION=3D"-O2 -pipe -g -feliminate-unused-debug-types"
# GIT_CONFIG_PATH=3D${STAGING_DIR_NATIVE}/etc
GIT_CONFIG_PATH=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/etc"
# ASNEEDED_pn-openobex=3D
# SDKGCCVERSION=3D${GCCVERSION}
SDKGCCVERSION=3D"4.7%"
# DEBIAN_NAMES=3D1
DEBIAN_NAMES=3D"1"
# DISTRO_EXTRA_RRECOMMENDS=3D  ${POKY_DEFAULT_EXTRA_RRECOMMENDS}
DISTRO_EXTRA_RRECOMMENDS=3D"kernel-module-af-packet"
# PACKAGEINDEXDEPS=3D rpm-native:do_populate_sysroot createrepo-native:do_p=
opulate_sysroot
PACKAGEINDEXDEPS=3D"rpm-native:do_populate_sysroot createrepo-native:do_pop=
ulate_sysroot"
# PREFERRED_VERSION_linux-yocto_qemuarm=3D3.4%
PREFERRED_VERSION_linux-yocto_qemuarm=3D"3.4%"
# PREFERRED_VERSION_linux-yocto_qemuppc=3D3.4%
PREFERRED_VERSION_linux-yocto_qemuppc=3D"3.4%"
# KERNEL_ALT_IMAGETYPE=3D
# QA_LOG=3DNone
# PACKAGELOCK=3D${STAGING_DIR}/package-output.lock
PACKAGELOCK=3D"/tool/yocto/poky/build/tmp/sysroots/package-output.lock"
# IMAGE_NAME=3D${IMAGE_BASENAME}-${MACHINE}-${DATETIME}
IMAGE_NAME=3D"linux-xilinx-virtex5-20120623074645"
# STAGING_DIR_TCBOOTSTRAP=3D${STAGING_DIR_TARGET}-tcbootstrap
STAGING_DIR_TCBOOTSTRAP=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5-tcbo=
otstrap"
# STAGING_LIBDIR_NATIVE=3D${STAGING_DIR_NATIVE}${libdir_native}
STAGING_LIBDIR_NATIVE=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/u=
sr/lib"
# QEMU_TARGETS=3Darm i386 mips mipsel ppc x86_64
QEMU_TARGETS=3D"arm i386 mips mipsel ppc x86_64"
# GROUP_packaging=3DNone
# DESCRIPTION=3DLinux kernel for Xilinx platforms
DESCRIPTION=3D"Linux kernel for Xilinx platforms"
# OVERRIDES=3D${TARGET_OS}:${TRANSLATED_TARGET_ARCH}:build-${BUILD_OS}:pn-$=
{PN}:${MACHINEOVERRIDES}:${DISTROOVERRIDES}:${CLASSOVERRIDE}:forcevariable$=
{LIBCOVERRIDE}
OVERRIDES=3D"linux:powerpc:build-linux:pn-linux-xilinx:virtex5:poky:class-t=
arget:forcevariable:libc-glibc"
# INHERIT=3D ${PACKAGE_CLASSES} ${USER_CLASSES} ${INHERIT_INSANE} ${INHERIT=
_DISTRO} sanity
INHERIT=3D"package_rpm buildstats image-mklibs image-prelink insane debian =
devshell sstate license sanity"
# BB_BASEHASH_task-do_devshell=3Daa48d219cbda3f32c9b16c048e5ff62e
BB_BASEHASH_task-do_devshell=3D"aa48d219cbda3f32c9b16c048e5ff62e"
# TARGET_LD_ARCH=3D${TUNE_LDARGS}
# SDK_SYS=3D${SDK_ARCH}${SDK_VENDOR}${@['-' + d.getVar('SDK_OS', True), '']=
[d.getVar('SDK_OS', True) =3D=3D ('' or 'custom')]}
SDK_SYS=3D"x86_64-pokysdk-linux"
# base_dep=3Ddef base_dep_prepend(d):
#	#
#	# Ideally this will check a flag so we will operate properly in
#	# the case where host =3D=3D build =3D=3D target, for now we don't work i=
n
#	# that case though.
#	#
#
#	deps =3D ""
#	# INHIBIT_DEFAULT_DEPS doesn't apply to the patch command.  Whether or  n=
ot
#	# we need that built is the responsibility of the patch function / class,=
 not
#	# the application.
#	if not d.getVar('INHIBIT_DEFAULT_DEPS'):
#		if (d.getVar('HOST_SYS', True) !=3D
#	     	    d.getVar('BUILD_SYS', True)):
#			deps +=3D " virtual/${TARGET_PREFIX}gcc virtual/${TARGET_PREFIX}compile=
rlibs virtual/libc "
#	return deps
#
base_dep=3D"def base_dep_prepend(d): \
	# \
	# Ideally this will check a flag so we will operate properly in \
	# the case where host =3D=3D build =3D=3D target, for now we don't work in=
 \
	# that case though. \
	# \
 \
	deps =3D \"\" \
	# INHIBIT_DEFAULT_DEPS doesn't apply to the patch command.  Whether or  no=
t \
	# we need that built is the responsibility of the patch function / class, =
not \
	# the application. \
	if not d.getVar('INHIBIT_DEFAULT_DEPS'): \
		if (d.getVar('HOST_SYS', True) !=3D \
	     	    d.getVar('BUILD_SYS', True)): \
			deps +=3D \" virtual/powerpc-poky-linux-gcc virtual/powerpc-poky-linux-c=
ompilerlibs virtual/libc \" \
	return deps"
# module_autoload_rtc-sa1100=3Drtc-sa1100
module_autoload_rtc-sa1100=3D"rtc-sa1100"
# ASSUME_SHLIBS=3DNone
# base_libdir=3D${base_prefix}/${baselib}
export base_libdir=3D"/lib"
# BASELIB=3Dlib
BASELIB=3D"lib"
# BUILD_OPTIMIZATION=3D-O2 -pipe
BUILD_OPTIMIZATION=3D"-O2 -pipe"
# UBOOT_ENTRYPOINT=3D0x00000000
UBOOT_ENTRYPOINT=3D"0x00000000"
# PACKAGEINDEXES=3D package_update_index_rpm; createrepo ${DEPLOY_DIR_RPM};
PACKAGEINDEXES=3D"package_update_index_rpm; createrepo /tool/yocto/poky/bui=
ld/tmp/deploy/rpm;"
# BPN=3D${@base_prune_suffix(d.getVar('PN', True), d.getVar('SPECIAL_PKGSUF=
FIX', True).split(), d)}
BPN=3D"linux-xilinx"
# LOGNAME=3Delvis
export LOGNAME=3D"elvis"
# PATH=3D${COREBASE}/scripts:${STAGING_BINDIR_TOOLCHAIN}:${STAGING_BINDIR_C=
ROSS}:${STAGING_DIR_NATIVE}${sbindir_native}:${STAGING_BINDIR_NATIVE}:${STA=
GING_DIR_NATIVE}${base_sbindir_native}:${STAGING_DIR_NATIVE}/${base_bindir_=
native}:/tool/yocto/poky/scripts:/tool/yocto/poky/bitbake/bin/:/usr/lib/lig=
htdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/=
usr/games
export PATH=3D"/tool/yocto/poky/scripts:/tool/yocto/poky/build/tmp/sysroots=
/x86_64-linux/usr/bin/ppc440-poky-linux:/tool/yocto/poky/build/tmp/sysroots=
/virtex5/usr/bin/crossscripts:/tool/yocto/poky/build/tmp/sysroots/x86_64-li=
nux/usr/sbin:/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin:/tool=
/yocto/poky/build/tmp/sysroots/x86_64-linux/sbin:/tool/yocto/poky/build/tmp=
/sysroots/x86_64-linux//bin:/tool/yocto/poky/scripts:/tool/yocto/poky/bitba=
ke/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/=
usr/bin:/sbin:/bin:/usr/games"
# ASNEEDED_pn-pciutils=3D
# TARGET_CFLAGS=3D${TARGET_CPPFLAGS} ${SELECTED_OPTIMIZATION}
export TARGET_CFLAGS=3D"-O2 -pipe -g -feliminate-unused-debug-types"
# base_bindir=3D${base_prefix}/bin
export base_bindir=3D"/bin"
# BUILDCFG_FUNCS=3Dbuildcfg_vars get_layers_branch_rev buildcfg_neededvars
BUILDCFG_FUNCS=3D"buildcfg_vars get_layers_branch_rev buildcfg_neededvars"
# PKG_CONFIG_LIBDIR=3D${PKG_CONFIG_DIR}
export PKG_CONFIG_LIBDIR=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5//us=
r/lib/pkgconfig"
# SANITY_REQUIRED_UTILITIES=3Dpatch diffstat texi2html makeinfo svn bzip2 t=
ar gzip gawk chrpath wget cpio
SANITY_REQUIRED_UTILITIES=3D"patch diffstat texi2html makeinfo svn bzip2 ta=
r gzip gawk chrpath wget cpio"
# SEPPUKU_COMPONENT=3DNone
# BBFILE_PRIORITY_normal=3D5
BBFILE_PRIORITY_normal=3D"5"
# MACHINE=3Dvirtex5
unset MACHINE
# TARGET_LD_KERNEL_ARCH=3D
# GITDIR=3D${CO_DIR}/git2
GITDIR=3D"/tool/yocto/poky/build/downloads/git2"
# EXCLUDE_FROM_WORLD_pn-gobject-introspection=3D1
EXCLUDE_FROM_WORLD_pn-gobject-introspection=3D"1"
# MACHINEOVERRIDES=3D${MACHINE}
MACHINEOVERRIDES=3D"virtex5"
# prefix_native=3D/usr
prefix_native=3D"/usr"
# BBFILE_PRIORITY_yocto=3D5
BBFILE_PRIORITY_yocto=3D"5"
# SECTION_${PN}-dev=3DNone
# base_sbindir_native=3D/sbin
base_sbindir_native=3D"/sbin"
# ALLOW_EMPTY_kernel-base=3D1
ALLOW_EMPTY_kernel-base=3D"1"
# sbindir=3D${exec_prefix}/sbin
export sbindir=3D"/usr/sbin"
# CFLAGS=3D${TARGET_CFLAGS}
export CFLAGS=3D"-O2 -pipe -g -feliminate-unused-debug-types"
# BB_BASEHASH_task-do_populate_sysroot=3Db7753f1df384ebc522204f2bca9baabb
BB_BASEHASH_task-do_populate_sysroot=3D"b7753f1df384ebc522204f2bca9baabb"
# BUILD_AR=3D${BUILD_PREFIX}ar
export BUILD_AR=3D"ar"
# BUILD_AS=3D${BUILD_PREFIX}as ${BUILD_AS_ARCH}
export BUILD_AS=3D"as"
# SHLIBSDIR=3D${STAGING_DIR_HOST}/shlibs
SHLIBSDIR=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5/shlibs"
# sharedstatedir=3D${base_prefix}/com
export sharedstatedir=3D"/com"
# FILES_linux-xilinx=3D${bindir}/* ${sbindir}/* ${libexecdir}/* ${libdir}/l=
ib*${SOLIBS} ${sysconfdir} ${sharedstatedir} ${localstatedir} ${base_bindir=
}/* ${base_sbindir}/* ${base_libdir}/*${SOLIBS} ${datadir}/${BPN} ${libdir}=
/${BPN}/* ${datadir}/pixmaps ${datadir}/applications ${datadir}/idl ${datad=
ir}/omf ${datadir}/sounds ${libdir}/bonobo/servers
FILES_linux-xilinx=3D"/usr/bin/* /usr/sbin/* /usr/libexec/* /usr/lib/lib*.s=
o.* /etc /com /var /bin/* /sbin/* /lib/*.so.* /usr/share/linux-xilinx /usr/=
lib/linux-xilinx/* /usr/share/pixmaps /usr/share/applications /usr/share/id=
l /usr/share/omf /usr/share/sounds /usr/lib/bonobo/servers"
# COMMERCIAL_AUDIO_PLUGINS=3D
# DEBIAN_MIRROR=3Dftp://ftp.debian.org/debian/pool
DEBIAN_MIRROR=3D"ftp://ftp.debian.org/debian/pool"
# PREFERRED_PROVIDER_virtual/libc=3Deglibc
PREFERRED_PROVIDER_virtual/libc=3D"eglibc"
# DEVFILE=3D${BUILDSTATS_BASE}/.device
DEVFILE=3D"/tool/yocto/poky/build/tmp/buildstats//.device"
# DEFAULT_TASK_PROVIDER=3Dtask-base
DEFAULT_TASK_PROVIDER=3D"task-base"
# PREFERRED_VERSION_uclibc-initial=3D${UCLIBCVERSION}
PREFERRED_VERSION_uclibc-initial=3D"0.9.33"
# BBFILE_PATTERN_openembedded-layer=3D^/tool/yocto/meta-openembedded/meta-o=
e/
BBFILE_PATTERN_openembedded-layer=3D"^/tool/yocto/meta-openembedded/meta-oe=
/"
# BB_BASEHASH_task-do_configure=3D9347e52b8b7eef509e108752d35aa92e
BB_BASEHASH_task-do_configure=3D"9347e52b8b7eef509e108752d35aa92e"
# VIRTUAL-RUNTIME_apm=3Dapm
VIRTUAL-RUNTIME_apm=3D"apm"
# IMAGE_LINGUAS=3Den-us en-gb
IMAGE_LINGUAS=3D"en-us en-gb"
# KERNEL_IMAGE_SYMLINK_NAME=3D${KERNEL_IMAGETYPE}-${MACHINE}
KERNEL_IMAGE_SYMLINK_NAME=3D"uImage-virtex5"
# PREFERRED_PROVIDER_virtual/libc-nativesdk=3Deglibc-nativesdk
PREFERRED_PROVIDER_virtual/libc-nativesdk=3D"eglibc-nativesdk"
# PARALLEL_MAKE=3D-j 6
PARALLEL_MAKE=3D"-j 6"
# PACKAGE_EXTRA_ARCHS=3D${PACKAGE_EXTRA_ARCHS_tune-${DEFAULTTUNE}}
PACKAGE_EXTRA_ARCHS=3D"powerpc-nf ppc440"
# PREFERRED_PROVIDER_virtual/libiconv-nativesdk=3Deglibc-nativesdk
PREFERRED_PROVIDER_virtual/libiconv-nativesdk=3D"eglibc-nativesdk"
# PREFERRED_VERSION_linux-libc-headers=3D${LINUXLIBCVERSION}
PREFERRED_VERSION_linux-libc-headers=3D"3.4"
# KERNEL_TARGET=3D440-ml507
KERNEL_TARGET=3D"440-ml507"
# PREFERRED_VERSION_liberation-fonts=3D1.04
PREFERRED_VERSION_liberation-fonts=3D"1.04"
# OBJDUMP=3D${HOST_PREFIX}objdump
export OBJDUMP=3D"powerpc-poky-linux-objdump"
# INHERIT_DISTRO=3Ddebian devshell sstate license
INHERIT_DISTRO=3D"debian devshell sstate license"
# IMAGE_BASENAME=3D${PN}
IMAGE_BASENAME=3D"linux-xilinx"
# PATCHTOOL=3Dquilt
PATCHTOOL=3D"quilt"
# XORG_MIRROR=3Dhttp://xorg.freedesktop.org/releases
XORG_MIRROR=3D"http://xorg.freedesktop.org/releases"
# SYSROOT_DESTDIR=3D${WORKDIR}/sysroot-destdir/
SYSROOT_DESTDIR=3D"/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux=
-xilinx-3.3.0-r0/sysroot-destdir/"
# FILES_kernel-dev=3D/boot/System.map* /boot/Module.symvers* /boot/config*
FILES_kernel-dev=3D"/boot/System.map* /boot/Module.symvers* /boot/config*"
# BB_BASEHASH_task-do_checkuri=3D4de07276512afa6485487cc4e3c3489a
BB_BASEHASH_task-do_checkuri=3D"4de07276512afa6485487cc4e3c3489a"
# UCLIBCVERSION=3D0.9.33
UCLIBCVERSION=3D"0.9.33"
# CROSS_COMPILE=3D${TARGET_PREFIX}
export CROSS_COMPILE=3D"powerpc-poky-linux-"
# SPECIAL_PKGSUFFIX=3D-native -cross -initial -intermediate -nativesdk -cro=
sssdk -cross-canadian
SPECIAL_PKGSUFFIX=3D"-native -cross -initial -intermediate -nativesdk -cros=
ssdk -cross-canadian"
# DESCRIPTION_${PN}-doc=3DNone
# BUILD_EXEEXT=3D
# PREFERRED_VERSION_elfutils=3D0.148
PREFERRED_VERSION_elfutils=3D"0.148"
# DL_DIR=3D${TOPDIR}/downloads
DL_DIR=3D"/tool/yocto/poky/build/downloads"
# BB_BASEHASH_task-do_checkuriall=3Dfdc376fd264c2fc126ec182f0a53ca8a
BB_BASEHASH_task-do_checkuriall=3D"fdc376fd264c2fc126ec182f0a53ca8a"
# IMAGE_ROOTFS_EXTRA_SPACE=3D0
IMAGE_ROOTFS_EXTRA_SPACE=3D"0"
# BB_BASEHASH_task-do_compile=3D3cac88de5a688f2684eb1f92fd7386e1
BB_BASEHASH_task-do_compile=3D"3cac88de5a688f2684eb1f92fd7386e1"
# PR=3Dr0
PR=3D"r0"
# PV=3D${@bb.parse.BBHandler.vars_from_file(d.getVar('FILE'),d)[1] or '1.0'=
}
PV=3D"3.3.0"
# HOST_EXTRACFLAGS=3D${BUILD_CFLAGS} ${BUILD_LDFLAGS}
HOST_EXTRACFLAGS=3D"-isystem/tool/yocto/poky/build/tmp/sysroots/x86_64-linu=
x/usr/include -O2 -pipe -L/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/=
usr/lib -L/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/lib -Wl,-rpath-l=
ink,/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpath-lin=
k,/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/lib -Wl,-rpath,/tool/yoc=
to/poky/build/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpath,/tool/yocto/poky=
/build/tmp/sysroots/x86_64-linux/lib -Wl,-O1"
# SDK_PREFIX=3D${SDK_SYS}-
SDK_PREFIX=3D"x86_64-pokysdk-linux-"
# module_conf_bnep=3Dalias bt-proto-4 bnep
module_conf_bnep=3D"alias bt-proto-4 bnep"
# PKGDEST=3D${WORKDIR}/packages-split
PKGDEST=3D"/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-=
3.3.0-r0/packages-split"
# BB_BASEHASH_task-do_fetch=3Dd2142b2ebff99a629535445acf830fe7
BB_BASEHASH_task-do_fetch=3D"d2142b2ebff99a629535445acf830fe7"
# PF=3D${PN}-${EXTENDPE}${PV}-${PR}
PF=3D"linux-xilinx-3.3.0-r0"
# STAGING_BINDIR_NATIVE=3D${STAGING_DIR_NATIVE}${bindir_native}
STAGING_BINDIR_NATIVE=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/u=
sr/bin"
# MACHINE_EXTRA_RECOMMENDS=3Dkernel-modules
MACHINE_EXTRA_RECOMMENDS=3D"kernel-modules"
# RDEPENDS_linux-xilinx-dev=3D${PN} (=3D ${EXTENDPKGV})
RDEPENDS_linux-xilinx-dev=3D"linux-xilinx (=3D 3.3.0-r0)"
# FAKEROOTNOENV=3DPSEUDO_UNLOAD=3D1
FAKEROOTNOENV=3D"PSEUDO_UNLOAD=3D1"
# DISTRO=3Dpoky
unset DISTRO
# PACKAGEVARS=3DFILES RDEPENDS RRECOMMENDS SUMMARY DESCRIPTION RSUGGESTS RP=
ROVIDES RCONFLICTS PKG ALLOW_EMPTY pkg_postinst pkg_postrm INITSCRIPT_NAME =
INITSCRIPT_PARAMS DEBIAN_NOAUTONAME
PACKAGEVARS=3D"FILES RDEPENDS RRECOMMENDS SUMMARY DESCRIPTION RSUGGESTS RPR=
OVIDES RCONFLICTS PKG ALLOW_EMPTY pkg_postinst pkg_postrm INITSCRIPT_NAME I=
NITSCRIPT_PARAMS DEBIAN_NOAUTONAME"
# DISTRO_VERSION=3D1.2+snapshot-${DATE}
DISTRO_VERSION=3D"1.2+snapshot-20120623"
# S=3D${WORKDIR}/git
S=3D"/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-=
r0/git"
# KERNEL_IMAGETYPE=3DuImage
KERNEL_IMAGETYPE=3D"uImage"
# FILES_kernel-misc=3D/kernel/include/config /kernel/scripts /kernel/driver=
s/crypto /kernel/drivers/media
FILES_kernel-misc=3D"/kernel/include/config /kernel/scripts /kernel/drivers=
/crypto /kernel/drivers/media"
# STAGING_KERNEL_DIR=3D${STAGING_DIR_HOST}/kernel
STAGING_KERNEL_DIR=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5/kernel"
# PREFERRED_PROVIDER_linux-libc-headers=3Dlinux-libc-headers
PREFERRED_PROVIDER_linux-libc-headers=3D"linux-libc-headers"
# BB_BASEHASH_task-do_clean=3D0ef69b495b4727a19258e1bbd5534551
BB_BASEHASH_task-do_clean=3D"0ef69b495b4727a19258e1bbd5534551"
# MLPREFIX=3D
# ADOBE_MIRROR=3Dhttp://fpdownload.macromedia.com/get/flashplayer/current/
ADOBE_MIRROR=3D"http://fpdownload.macromedia.com/get/flashplayer/current/"
# IPK_FEED_URIS=3DNone
# PKG_CONFIG_DIR=3D${STAGING_DIR_HOST}/${libdir}/pkgconfig
export PKG_CONFIG_DIR=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5//usr/l=
ib/pkgconfig"
# PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}gcc=3DNone
# TARGET_LDFLAGS=3D-Wl,-O1 ${TARGET_LINK_HASH_STYLE} ${ASNEEDED}
export TARGET_LDFLAGS=3D"-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed"
# IMAGE_PREPROCESS_COMMAND=3D mklibs_optimize_image;  prelink_image;=20
IMAGE_PREPROCESS_COMMAND=3D"mklibs_optimize_image;  prelink_image;"
# SRCREV=3Ded63a4d76efadcb68f5776e4244766ffea226cc4
SRCREV=3D"ed63a4d76efadcb68f5776e4244766ffea226cc4"
# DEBIANRDEP=3Ddo_package
DEBIANRDEP=3D"do_package"
# TARGET_SYS=3D${TARGET_ARCH}${TARGET_VENDOR}${@['-' + d.getVar('TARGET_OS'=
, True), ''][d.getVar('TARGET_OS', True) =3D=3D ('' or 'custom')]}
TARGET_SYS=3D"powerpc-poky-linux"
# PREFERRED_PROVIDER_virtual/libc-locale=3Deglibc-locale
PREFERRED_PROVIDER_virtual/libc-locale=3D"eglibc-locale"
# DEPLOY_DIR_TAR=3D${DEPLOY_DIR}/tar
DEPLOY_DIR_TAR=3D"/tool/yocto/poky/build/tmp/deploy/tar"
# FILES_linux-xilinx-staticdev=3D${libdir}/*.a ${base_libdir}/*.a ${libdir}=
/${BPN}/*.a
FILES_linux-xilinx-staticdev=3D"/usr/lib/*.a /lib/*.a /usr/lib/linux-xilinx=
/*.a"
# PKG_CONFIG_DISABLE_UNINSTALLED=3Dyes
export PKG_CONFIG_DISABLE_UNINSTALLED=3D"yes"
# DESCRIPTION_${PN}-dev=3DNone
# PACKAGERDEPTASK=3Ddo_package_write
PACKAGERDEPTASK=3D"do_package_write"
# LINKER_HASH_STYLE_mips64el=3Dsysv
LINKER_HASH_STYLE_mips64el=3D"sysv"
# DESCRIPTION_linux-xilinx-doc=3D${DESCRIPTION}  This package contains docu=
mentation.
DESCRIPTION_linux-xilinx-doc=3D"Linux kernel for Xilinx platforms  This pac=
kage contains documentation."
# libdir=3D${exec_prefix}/${baselib}
export libdir=3D"/usr/lib"
# SEPPUKU_NEWREPORT=3DNone
# FILES_linux-xilinx-doc=3D${docdir} ${mandir} ${infodir} ${datadir}/gtk-do=
c ${datadir}/gnome/help
FILES_linux-xilinx-doc=3D"/usr/share/doc /usr/share/man /usr/share/info /us=
r/share/gtk-doc /usr/share/gnome/help"
# ALLOW_EMPTY_${PN}-dev=3DNone
# ASNEEDED_pn-xserver-kdrive-xomap=3D
# PREFERRED_PROVIDER_virtual/x86_64-pokysdk-linux-libc-initial-nativesdk=3D=
${TCLIBC}-initial-nativesdk
PREFERRED_PROVIDER_virtual/x86_64-pokysdk-linux-libc-initial-nativesdk=3D"e=
glibc-initial-nativesdk"
# METADATA_BRANCH=3D${@base_detect_branch(d)}
METADATA_BRANCH=3D"master"
# PREFERRED_VERSION_gcc-crosssdk-initial=3D${SDKGCCVERSION}
PREFERRED_VERSION_gcc-crosssdk-initial=3D"4.7%"
# SYSROOT_PREPROCESS_FUNCS=3D
# PREFERRED_PROVIDER_virtual/${SDK_PREFIX}libc-initial-nativesdk=3DNone
# SEPPUKU_ATTACHMENT=3DNone
# DEPLOY_DIR_IMAGE=3D${DEPLOY_DIR}/images
DEPLOY_DIR_IMAGE=3D"/tool/yocto/poky/build/tmp/deploy/images"
# BB_DEFAULT_TASK=3Dbuild
BB_DEFAULT_TASK=3D"build"
# PSEUDO_DISABLED=3D1
export PSEUDO_DISABLED=3D"1"
# SRCREV_pn-u-boot-xilinx=3D${AUTOREV}
SRCREV_pn-u-boot-xilinx=3D"AUTOINC"
# PACKAGE_CLASSES=3Dpackage_rpm
PACKAGE_CLASSES=3D"package_rpm"
# PREFERRED_VERSION_linux-yocto_qemux86=3D3.4%
PREFERRED_VERSION_linux-yocto_qemux86=3D"3.4%"
# EXTRA_IMAGE_FEATURES=3Ddebug-tweaks
EXTRA_IMAGE_FEATURES=3D"debug-tweaks"
# TOOLCHAIN_OPTIONS=3D --sysroot=3D${STAGING_DIR_TARGET}
TOOLCHAIN_OPTIONS=3D"--sysroot=3D/tool/yocto/poky/build/tmp/sysroots/virtex=
5"
# LIBC_DEPENDENCIES=3Dlibsegfault 		     eglibc 		     eglibc-dbg 		     eg=
libc-dev 		     eglibc-utils 		     eglibc-thread-db 		     ${@get_libc_loc=
ales_dependencies(d)}
LIBC_DEPENDENCIES=3D"libsegfault 		     eglibc 		     eglibc-dbg 		     egl=
ibc-dev 		     eglibc-utils 		     eglibc-thread-db 		     	eglibc-localeda=
ta-i18n 	eglibc-gconv-ibm850 	eglibc-gconv-cp1252 	eglibc-gconv-iso8859-1 	=
eglibc-gconv-iso8859-15"
# BB_NUMBER_THREADS=3D6
BB_NUMBER_THREADS=3D"6"
# OE_TERMINAL=3Dauto
OE_TERMINAL=3D"auto"
# PYTHON=3D${@sys.executable}
PYTHON=3D"/usr/bin/python"
# CACHE=3D/tool/yocto/poky/build/tmp/cache/default-eglibc/virtex5
CACHE=3D"/tool/yocto/poky/build/tmp/cache/default-eglibc/virtex5"
# PREFERRED_PROVIDER_virtual/libx11=3Dlibx11-trim
PREFERRED_PROVIDER_virtual/libx11=3D"libx11-trim"
# TARGET_PREFIX=3D${TARGET_SYS}-
TARGET_PREFIX=3D"powerpc-poky-linux-"
# SRCPV=3D${@bb.fetch2.get_srcrev(d)}
SRCPV=3D"1+ed63a4d76efadcb68f5776e4244766ffea226cc4"
# _task_deps=3D{'noexec': {'do_package_write': '1', 'do_build': '1'}, 'task=
s': ['do_patch', 'do_populate_sysroot', 'do_populate_sysroot_setscene', 'do=
_listtasks', 'do_clean', 'do_checkuri', 'do_checkuriall', 'do_fetchall', 'd=
o_buildall', 'do_fetch', 'do_unpack', 'do_configure', 'do_compile', 'do_ins=
tall', 'do_build', 'do_cleansstate', 'do_cleanall', 'do_package', 'do_packa=
ge_setscene', 'do_package_write', 'do_package_write_rpm_setscene', 'do_pack=
age_write_rpm', 'do_devshell', 'do_populate_lic', 'do_populate_lic_setscene=
', 'do_deploy_setscene', 'do_compile_kernelmodules', 'do_savedefconfig', 'd=
o_menuconfig', 'do_sizecheck', 'do_uboot_mkimage', 'do_deploy'], 'rdeptask'=
: {'do_package_write_rpm': 'do_package'}, 'recrdeptask': {'do_buildall': 'd=
o_build', 'do_checkuriall': 'do_checkuri', 'do_fetchall': 'do_fetch', 'do_b=
uild': ' do_deploy do_package_write'}, 'umask': {'do_install': 18, 'do_conf=
igure': 18, 'do_package': 18, 'do_populate_sysroot': '022', 'do_compile': 1=
8, 'do_package_write_rpm': '022'}, 'depends': {'do_menuconfig': ' ncurses-n=
ative:do_populate_sysroot', 'do_install': ' virtual/fakeroot-native:do_popu=
late_sysroot', 'do_configure': ' ', 'do_package_write_rpm': ' rpm-native:do=
_populate_sysroot virtual/fakeroot-native:do_populate_sysroot', 'do_fetch':=
 ' git-native:do_populate_sysroot', 'do_patch': 'quilt-native:do_populate_s=
ysroot', 'do_package': ' virtual/fakeroot-native:do_populate_sysroot rpm-na=
tive:do_populate_sysroot file-native:do_populate_sysroot pax-utils-native:d=
o_populate_sysroot prelink-native:do_populate_sysroot'}, 'fakeroot': {'do_i=
nstall': 1, 'do_package_setscene': 1, 'do_package_write_rpm': 1, 'do_packag=
e': 1, 'do_package_write_rpm_setscene': 1}, 'parents': {'do_configure': ['d=
o_patch', 'do_unpack'], 'do_package': ['do_populate_lic', 'do_install'], 'd=
o_package_write': ['do_package_write_rpm', 'do_package'], 'do_savedefconfig=
': ['do_configure'], 'do_fetchall': ['do_fetch'], 'do_compile': ['do_config=
ure'], 'do_cleanall': ['do_cleansstate'], 'do_checkuri': [], 'do_unpack': [=
'do_fetch'], 'do_menuconfig': ['do_configure'], 'do_populate_lic': ['do_pat=
ch'], 'do_build': ['do_deploy', 'do_package_write', 'do_package', 'do_popul=
ate_sysroot'], 'do_fetch': [], 'do_devshell': ['do_patch'], 'do_populate_sy=
sroot': ['do_install'], 'do_populate_sysroot_setscene': [], 'do_uboot_mkima=
ge': ['do_compile'], 'do_checkuriall': ['do_checkuri'], 'do_install': ['do_=
uboot_mkimage', 'do_sizecheck', 'do_compile_kernelmodules', 'do_compile'], =
'do_populate_lic_setscene': [], 'do_listtasks': [], 'do_clean': [], 'do_pat=
ch': ['do_unpack'], 'do_deploy': ['do_install'], 'do_compile_kernelmodules'=
: ['do_compile'], 'do_buildall': ['do_build'], 'do_package_setscene': [], '=
do_package_write_rpm': ['do_package'], 'do_deploy_setscene': [], 'do_packag=
e_write_rpm_setscene': [], 'do_sizecheck': ['do_compile'], 'do_cleansstate'=
: ['do_clean']}, 'deptask': {'do_configure': 'do_populate_sysroot', 'do_pac=
kage': ' do_package'}, 'nostamp': {'do_menuconfig': '1', 'do_savedefconfig'=
: '1', 'do_listtasks': '1', 'do_devshell': '1', 'do_clean': '1', 'do_cleana=
ll': '1', 'do_checkuri': '1', 'do_checkuriall': '1'}}
_task_deps=3D"{'noexec': {'do_package_write': '1', 'do_build': '1'}, 'tasks=
': ['do_patch', 'do_populate_sysroot', 'do_populate_sysroot_setscene', 'do_=
listtasks', 'do_clean', 'do_checkuri', 'do_checkuriall', 'do_fetchall', 'do=
_buildall', 'do_fetch', 'do_unpack', 'do_configure', 'do_compile', 'do_inst=
all', 'do_build', 'do_cleansstate', 'do_cleanall', 'do_package', 'do_packag=
e_setscene', 'do_package_write', 'do_package_write_rpm_setscene', 'do_packa=
ge_write_rpm', 'do_devshell', 'do_populate_lic', 'do_populate_lic_setscene'=
, 'do_deploy_setscene', 'do_compile_kernelmodules', 'do_savedefconfig', 'do=
_menuconfig', 'do_sizecheck', 'do_uboot_mkimage', 'do_deploy'], 'rdeptask':=
 {'do_package_write_rpm': 'do_package'}, 'recrdeptask': {'do_buildall': 'do=
_build', 'do_checkuriall': 'do_checkuri', 'do_fetchall': 'do_fetch', 'do_bu=
ild': ' do_deploy do_package_write'}, 'umask': {'do_install': 18, 'do_confi=
gure': 18, 'do_package': 18, 'do_populate_sysroot': '022', 'do_compile': 18=
, 'do_package_write_rpm': '022'}, 'depends': {'do_menuconfig': ' ncurses-na=
tive:do_populate_sysroot', 'do_install': ' virtual/fakeroot-native:do_popul=
ate_sysroot', 'do_configure': ' ', 'do_package_write_rpm': ' rpm-native:do_=
populate_sysroot virtual/fakeroot-native:do_populate_sysroot', 'do_fetch': =
' git-native:do_populate_sysroot', 'do_patch': 'quilt-native:do_populate_sy=
sroot', 'do_package': ' virtual/fakeroot-native:do_populate_sysroot rpm-nat=
ive:do_populate_sysroot file-native:do_populate_sysroot pax-utils-native:do=
_populate_sysroot prelink-native:do_populate_sysroot'}, 'fakeroot': {'do_in=
stall': 1, 'do_package_setscene': 1, 'do_package_write_rpm': 1, 'do_package=
': 1, 'do_package_write_rpm_setscene': 1}, 'parents': {'do_configure': ['do=
_patch', 'do_unpack'], 'do_package': ['do_populate_lic', 'do_install'], 'do=
_package_write': ['do_package_write_rpm', 'do_package'], 'do_savedefconfig'=
: ['do_configure'], 'do_fetchall': ['do_fetch'], 'do_compile': ['do_configu=
re'], 'do_cleanall': ['do_cleansstate'], 'do_checkuri': [], 'do_unpack': ['=
do_fetch'], 'do_menuconfig': ['do_configure'], 'do_populate_lic': ['do_patc=
h'], 'do_build': ['do_deploy', 'do_package_write', 'do_package', 'do_popula=
te_sysroot'], 'do_fetch': [], 'do_devshell': ['do_patch'], 'do_populate_sys=
root': ['do_install'], 'do_populate_sysroot_setscene': [], 'do_uboot_mkimag=
e': ['do_compile'], 'do_checkuriall': ['do_checkuri'], 'do_install': ['do_u=
boot_mkimage', 'do_sizecheck', 'do_compile_kernelmodules', 'do_compile'], '=
do_populate_lic_setscene': [], 'do_listtasks': [], 'do_clean': [], 'do_patc=
h': ['do_unpack'], 'do_deploy': ['do_install'], 'do_compile_kernelmodules':=
 ['do_compile'], 'do_buildall': ['do_build'], 'do_package_setscene': [], 'd=
o_package_write_rpm': ['do_package'], 'do_deploy_setscene': [], 'do_package=
_write_rpm_setscene': [], 'do_sizecheck': ['do_compile'], 'do_cleansstate':=
 ['do_clean']}, 'deptask': {'do_configure': 'do_populate_sysroot', 'do_pack=
age': ' do_package'}, 'nostamp': {'do_menuconfig': '1', 'do_savedefconfig':=
 '1', 'do_listtasks': '1', 'do_devshell': '1', 'do_clean': '1', 'do_cleanal=
l': '1', 'do_checkuri': '1', 'do_checkuriall': '1'}}"
# PSEUDO_BUILD=3D0
PSEUDO_BUILD=3D"0"
# FILES_SOLIBSDEV=3D${base_libdir}/lib*${SOLIBSDEV} ${libdir}/lib*${SOLIBSD=
EV}
FILES_SOLIBSDEV=3D"/lib/lib*.so /usr/lib/lib*.so"
# HOST_LOADLIBES=3D-lncurses
HOST_LOADLIBES=3D"-lncurses"
# BB_BASEHASH_task-do_populate_sysroot_setscene=3D3bdcbad02cc5fbfdbf0709766=
880eac2
BB_BASEHASH_task-do_populate_sysroot_setscene=3D"3bdcbad02cc5fbfdbf07097668=
80eac2"
# PREFERRED_PROVIDER_virtual/update-alternatives=3Dupdate-alternatives-cwor=
th
PREFERRED_PROVIDER_virtual/update-alternatives=3D"update-alternatives-cwort=
h"
# DOTDEBUG-dbg=3D${bindir}/.debug ${sbindir}/.debug ${libexecdir}/.debug ${=
libdir}/.debug ${base_bindir}/.debug ${base_sbindir}/.debug ${base_libdir}/=
.debug ${libdir}/${BPN}/.debug ${libdir}/matchbox-panel/.debug /usr/src/deb=
ug
DOTDEBUG-dbg=3D"/usr/bin/.debug /usr/sbin/.debug /usr/libexec/.debug /usr/l=
ib/.debug /bin/.debug /sbin/.debug /lib/.debug /usr/lib/linux-xilinx/.debug=
 /usr/lib/matchbox-panel/.debug /usr/src/debug"
# PACKAGE_ARCHS=3Dall any noarch ${PACKAGE_EXTRA_ARCHS} ${MACHINE_ARCH}
PACKAGE_ARCHS=3D"all any noarch powerpc-nf ppc440 virtex5"
# PACKAGE_ARCH=3D${MACHINE_ARCH}
PACKAGE_ARCH=3D"virtex5"
# EXTRA_OECONF=3D
# SHLIBSWORKDIR=3D${WORKDIR}/shlibs
SHLIBSWORKDIR=3D"/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-x=
ilinx-3.3.0-r0/shlibs"
# PRAUTOINX=3D${PF}
PRAUTOINX=3D"linux-xilinx-3.3.0-r0"
# BUILD_LD_ARCH=3D
# BB_BASEHASH_task-do_fetchall=3Dfdc376fd264c2fc126ec182f0a53ca8a
BB_BASEHASH_task-do_fetchall=3D"fdc376fd264c2fc126ec182f0a53ca8a"
# RPROVIDES=3D
# RPMDEPS=3D${STAGING_LIBDIR_NATIVE}/rpm/bin/rpmdeps-oecore --macros ${STAG=
ING_LIBDIR_NATIVE}/rpm/macros --define '_rpmfc_magic_path ${STAGING_DIR_NAT=
IVE}${datadir_native}/misc/magic.mgc' --rpmpopt ${STAGING_LIBDIR_NATIVE}/rp=
m/rpmpopt
RPMDEPS=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/rpm/bin=
/rpmdeps-oecore --macros /tool/yocto/poky/build/tmp/sysroots/x86_64-linux/u=
sr/lib/rpm/macros --define '_rpmfc_magic_path /tool/yocto/poky/build/tmp/sy=
sroots/x86_64-linux/usr/share/misc/magic.mgc' --rpmpopt /tool/yocto/poky/bu=
ild/tmp/sysroots/x86_64-linux/usr/lib/rpm/rpmpopt"
# base_libdir_nativesdk=3D/lib
base_libdir_nativesdk=3D"/lib"
# PACKAGEFUNCS=3Dpackage_get_auto_pr                 perform_packagecopy   =
              ${PACKAGE_PREPROCESS_FUNCS} 		package_do_split_locales 		spli=
t_and_strip_files 		fixup_perms 		populate_packages 		package_do_filedeps 	=
	package_do_shlibs 		package_do_pkgconfig 		read_shlibdeps 		package_depcha=
ins 		emit_pkgdata  do_package_qa=20
PACKAGEFUNCS=3D"package_get_auto_pr                 perform_packagecopy    =
              kernel_package_preprocess 		package_do_split_locales 		split_=
and_strip_files 		fixup_perms 		populate_packages 		package_do_filedeps 		p=
ackage_do_shlibs 		package_do_pkgconfig 		read_shlibdeps 		package_depchain=
s 		emit_pkgdata  do_package_qa"
# PWD=3D/tool/yocto/poky/build
export PWD=3D"/tool/yocto/poky/build"
# BZRDIR=3D${CO_DIR}/bzr
BZRDIR=3D"/tool/yocto/poky/build/downloads/bzr"
# GPE_SVN=3Dsvn://projects.linuxtogo.org/svn/gpe/trunk/base;module=3D${PN}
GPE_SVN=3D"svn://projects.linuxtogo.org/svn/gpe/trunk/base;module=3Dlinux-x=
ilinx"
# EXTENDPKGV=3D${EXTENDPKGEVER}${PKGV}-${PKGR}
EXTENDPKGV=3D"3.3.0-r0"
# PREFERRED_PROVIDER_virtual/db-native=3Ddb-native
PREFERRED_PROVIDER_virtual/db-native=3D"db-native"
# BB_VERSION=3D1.15.2
BB_VERSION=3D"1.15.2"
# SSTATETASKS=3Ddo_deploy do_package_write_rpm do_populate_lic do_package d=
o_populate_sysroot
SSTATETASKS=3D"do_deploy do_package_write_rpm do_populate_lic do_package do=
_populate_sysroot"
# SOLIBS_darwin=3D.*.dylib
SOLIBS_darwin=3D".*.dylib"
# PREFERRED_PROVIDER_virtual/db=3Ddb
PREFERRED_PROVIDER_virtual/db=3D"db"
# BP=3D${BPN}-${PV}
BP=3D"linux-xilinx-3.3.0"
# BBFILE_PATTERN_normal=3D^/tool/yocto/poky/meta/
BBFILE_PATTERN_normal=3D"^/tool/yocto/poky/meta/"
# PREFERRED_PROVIDER_virtual/x86_64-pokysdk-linux-libc-for-gcc-nativesdk=3D=
${TCLIBC}-nativesdk
PREFERRED_PROVIDER_virtual/x86_64-pokysdk-linux-libc-for-gcc-nativesdk=3D"e=
glibc-nativesdk"
# module_conf_af_packet=3Dalias net-pf-17 af_packet
module_conf_af_packet=3D"alias net-pf-17 af_packet"
# DEBUGFILEDIRECTORY-dbg=3D/usr/lib/debug /usr/src/debug
DEBUGFILEDIRECTORY-dbg=3D"/usr/lib/debug /usr/src/debug"
# PREFERRED_VERSION_uclibc=3D${UCLIBCVERSION}
PREFERRED_VERSION_uclibc=3D"0.9.33"
# PREFERRED_PROVIDER_xf86-video-intel=3Dxf86-video-intel
PREFERRED_PROVIDER_xf86-video-intel=3D"xf86-video-intel"
# module_conf_l2cap=3Dalias bt-proto-0 l2cap
module_conf_l2cap=3D"alias bt-proto-0 l2cap"
# BB_GENERATE_MIRROR_TARBALLS=3D0
BB_GENERATE_MIRROR_TARBALLS=3D"0"
# SOURCE_MIRROR_FETCH=3DNone
# PSEUDO_PASSWD=3D${STAGING_DIR_TARGET}
PSEUDO_PASSWD=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5"
# T=3D${WORKDIR}/temp
T=3D"/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-=
r0/temp"
# LINKER_HASH_STYLE_mips64=3Dsysv
LINKER_HASH_STYLE_mips64=3D"sysv"
# COMMERCIAL_VIDEO_PLUGINS=3D
# BUILD_CC_ARCH=3D
# PREFERRED_VERSION=3DNone
# LINUXLIBCVERSION=3D3.4
LINUXLIBCVERSION=3D"3.4"
# SUMMARY_${PN}-staticdev=3DNone
# SECTION_linux-xilinx-dev=3Ddevel
SECTION_linux-xilinx-dev=3D"devel"
# FILES_${PN}-bin=3DNone
# BB_BASEHASH_task-do_build=3Dfdc376fd264c2fc126ec182f0a53ca8a
BB_BASEHASH_task-do_build=3D"fdc376fd264c2fc126ec182f0a53ca8a"
# MIRRORS=3Dftp://.*/.*      http://downloads.yoctoproject.org/mirror/sourc=
es/ \n http://.*/.*     http://downloads.yoctoproject.org/mirror/sources/ \=
n https://.*/.*    http://downloads.yoctoproject.org/mirror/sources/ \n  ${=
DEBIAN_MIRROR}/main	http://snapshot.debian.org/archive/debian-archive/20120=
328T092752Z/debian/pool/ \n ${DEBIAN_MIRROR}	ftp://ftp.de.debian.org/debian=
/pool \n ${DEBIAN_MIRROR}	ftp://ftp.au.debian.org/debian/pool \n ${DEBIAN_M=
IRROR}	ftp://ftp.cl.debian.org/debian/pool \n ${DEBIAN_MIRROR}	ftp://ftp.hr=
.debian.org/debian/pool \n ${DEBIAN_MIRROR}	ftp://ftp.fi.debian.org/debian/=
pool \n ${DEBIAN_MIRROR}	ftp://ftp.hk.debian.org/debian/pool \n ${DEBIAN_MI=
RROR}	ftp://ftp.hu.debian.org/debian/pool \n ${DEBIAN_MIRROR}	ftp://ftp.ie.=
debian.org/debian/pool \n ${DEBIAN_MIRROR}	ftp://ftp.it.debian.org/debian/p=
ool \n ${DEBIAN_MIRROR}	ftp://ftp.jp.debian.org/debian/pool \n ${DEBIAN_MIR=
ROR}	ftp://ftp.no.debian.org/debian/pool \n ${DEBIAN_MIRROR}	ftp://ftp.pl.d=
ebian.org/debian/pool \n ${DEBIAN_MIRROR}	ftp://ftp.ro.debian.org/debian/po=
ol \n ${DEBIAN_MIRROR}	ftp://ftp.si.debian.org/debian/pool \n ${DEBIAN_MIRR=
OR}	ftp://ftp.es.debian.org/debian/pool \n ${DEBIAN_MIRROR}	ftp://ftp.se.de=
bian.org/debian/pool \n ${DEBIAN_MIRROR}	ftp://ftp.tr.debian.org/debian/poo=
l \n ${GNU_MIRROR}	ftp://mirrors.kernel.org/gnu \n ${KERNELORG_MIRROR}	http=
://www.kernel.org/pub \n ftp://ftp.gnupg.org/gcrypt/     ftp://ftp.franken.=
de/pub/crypt/mirror/ftp.gnupg.org/gcrypt/ \n ftp://ftp.gnupg.org/gcrypt/   =
  ftp://ftp.surfnet.nl/pub/security/gnupg/ \n ftp://ftp.gnupg.org/gcrypt/  =
   http://gulus.USherbrooke.ca/pub/appl/GnuPG/ \n ftp://dante.ctan.org/tex-=
archive ftp://ftp.fu-berlin.de/tex/CTAN \n ftp://dante.ctan.org/tex-archive=
 http://sunsite.sut.ac.jp/pub/archives/ctan/ \n ftp://dante.ctan.org/tex-ar=
chive http://ctan.unsw.edu.au/ \n ftp://ftp.gnutls.org/pub/gnutls ftp://ftp=
.gnutls.org/pub/gnutls/ \n ftp://ftp.gnutls.org/pub/gnutls ftp://ftp.gnupg.=
org/gcrypt/gnutls/ \n ftp://ftp.gnutls.org/pub/gnutls http://www.mirrors.wi=
retapped.net/security/network-security/gnutls/ \n ftp://ftp.gnutls.org/pub/=
gnutls ftp://ftp.mirrors.wiretapped.net/pub/security/network-security/gnutl=
s/ \n ftp://ftp.gnutls.org/pub/gnutls http://josefsson.org/gnutls/releases/=
 \n http://ftp.info-zip.org/pub/infozip/src/ http://mirror.switch.ch/ftp/mi=
rror/infozip/src/ \n http://ftp.info-zip.org/pub/infozip/src/ ftp://sunsite=
.icm.edu.pl/pub/unix/archiving/info-zip/src/ \n ftp://lsof.itap.purdue.edu/=
pub/tools/unix/lsof/  ftp://ftp.cerias.purdue.edu/pub/tools/unix/sysutils/l=
sof/ \n ftp://lsof.itap.purdue.edu/pub/tools/unix/lsof/  ftp://ftp.tau.ac.i=
l/pub/unix/admin/ \n ftp://lsof.itap.purdue.edu/pub/tools/unix/lsof/  ftp:/=
/ftp.cert.dfn.de/pub/tools/admin/lsof/ \n ftp://lsof.itap.purdue.edu/pub/to=
ols/unix/lsof/  ftp://ftp.fu-berlin.de/pub/unix/tools/lsof/ \n ftp://lsof.i=
tap.purdue.edu/pub/tools/unix/lsof/  ftp://ftp.kaizo.org/pub/lsof/ \n ftp:/=
/lsof.itap.purdue.edu/pub/tools/unix/lsof/  ftp://ftp.tu-darmstadt.de/pub/s=
ysadmin/lsof/ \n ftp://lsof.itap.purdue.edu/pub/tools/unix/lsof/  ftp://ftp=
.tux.org/pub/sites/vic.cc.purdue.edu/tools/unix/lsof/ \n ftp://lsof.itap.pu=
rdue.edu/pub/tools/unix/lsof/  ftp://gd.tuwien.ac.at/utils/admin-tools/lsof=
/ \n ftp://lsof.itap.purdue.edu/pub/tools/unix/lsof/  ftp://sunsite.ualbert=
a.ca/pub/Mirror/lsof/ \n ftp://lsof.itap.purdue.edu/pub/tools/unix/lsof/  f=
tp://the.wiretapped.net/pub/security/host-security/lsof/ \n http://www.apac=
he.org/dist  http://archive.apache.org/dist \n cvs://.*/.*     http://downl=
oads.yoctoproject.org/mirror/sources/ \n svn://.*/.*     http://downloads.y=
octoproject.org/mirror/sources/ \n git://.*/.*     http://downloads.yoctopr=
oject.org/mirror/sources/ \n hg://.*/.*      http://downloads.yoctoproject.=
org/mirror/sources/ \n bzr://.*/.*     http://downloads.yoctoproject.org/mi=
rror/sources/ \n svk://.*/.*     http://downloads.yoctoproject.org/mirror/s=
ources/ \n p4://.*/.*      http://downloads.yoctoproject.org/mirror/sources=
/ \n osc://.*/.*     http://downloads.yoctoproject.org/mirror/sources/ \n h=
ttps?$://.*/.* http://downloads.yoctoproject.org/mirror/sources/ \n ftp://.=
*/.*     http://downloads.yoctoproject.org/mirror/sources/ \n cvs://.*/.*  =
   http://sources.openembedded.org/ \n svn://.*/.*     http://sources.opene=
mbedded.org/ \n git://.*/.*     http://sources.openembedded.org/ \n hg://.*=
/.*      http://sources.openembedded.org/ \n bzr://.*/.*     http://sources=
.openembedded.org/ \n svk://.*/.*     http://sources.openembedded.org/ \n p=
4://.*/.*      http://sources.openembedded.org/ \n osc://.*/.*     http://s=
ources.openembedded.org/ \n https?$://.*/.* http://sources.openembedded.org=
/ \n ftp://.*/.*     http://sources.openembedded.org/ \n=20
MIRRORS=3D"ftp://.*/.*      http://downloads.yoctoproject.org/mirror/source=
s/ \n http://.*/.*     http://downloads.yoctoproject.org/mirror/sources/ \n=
 https://.*/.*    http://downloads.yoctoproject.org/mirror/sources/ \n  ftp=
://ftp.debian.org/debian/pool/main	http://snapshot.debian.org/archive/debia=
n-archive/20120328T092752Z/debian/pool/ \n ftp://ftp.debian.org/debian/pool=
	ftp://ftp.de.debian.org/debian/pool \n ftp://ftp.debian.org/debian/pool	ft=
p://ftp.au.debian.org/debian/pool \n ftp://ftp.debian.org/debian/pool	ftp:/=
/ftp.cl.debian.org/debian/pool \n ftp://ftp.debian.org/debian/pool	ftp://ft=
p.hr.debian.org/debian/pool \n ftp://ftp.debian.org/debian/pool	ftp://ftp.f=
i.debian.org/debian/pool \n ftp://ftp.debian.org/debian/pool	ftp://ftp.hk.d=
ebian.org/debian/pool \n ftp://ftp.debian.org/debian/pool	ftp://ftp.hu.debi=
an.org/debian/pool \n ftp://ftp.debian.org/debian/pool	ftp://ftp.ie.debian.=
org/debian/pool \n ftp://ftp.debian.org/debian/pool	ftp://ftp.it.debian.org=
/debian/pool \n ftp://ftp.debian.org/debian/pool	ftp://ftp.jp.debian.org/de=
bian/pool \n ftp://ftp.debian.org/debian/pool	ftp://ftp.no.debian.org/debia=
n/pool \n ftp://ftp.debian.org/debian/pool	ftp://ftp.pl.debian.org/debian/p=
ool \n ftp://ftp.debian.org/debian/pool	ftp://ftp.ro.debian.org/debian/pool=
 \n ftp://ftp.debian.org/debian/pool	ftp://ftp.si.debian.org/debian/pool \n=
 ftp://ftp.debian.org/debian/pool	ftp://ftp.es.debian.org/debian/pool \n ft=
p://ftp.debian.org/debian/pool	ftp://ftp.se.debian.org/debian/pool \n ftp:/=
/ftp.debian.org/debian/pool	ftp://ftp.tr.debian.org/debian/pool \n ftp://ft=
p.gnu.org/gnu	ftp://mirrors.kernel.org/gnu \n http://kernel.org/pub	http://=
www.kernel.org/pub \n ftp://ftp.gnupg.org/gcrypt/     ftp://ftp.franken.de/=
pub/crypt/mirror/ftp.gnupg.org/gcrypt/ \n ftp://ftp.gnupg.org/gcrypt/     f=
tp://ftp.surfnet.nl/pub/security/gnupg/ \n ftp://ftp.gnupg.org/gcrypt/     =
http://gulus.USherbrooke.ca/pub/appl/GnuPG/ \n ftp://dante.ctan.org/tex-arc=
hive ftp://ftp.fu-berlin.de/tex/CTAN \n ftp://dante.ctan.org/tex-archive ht=
tp://sunsite.sut.ac.jp/pub/archives/ctan/ \n ftp://dante.ctan.org/tex-archi=
ve http://ctan.unsw.edu.au/ \n ftp://ftp.gnutls.org/pub/gnutls ftp://ftp.gn=
utls.org/pub/gnutls/ \n ftp://ftp.gnutls.org/pub/gnutls ftp://ftp.gnupg.org=
/gcrypt/gnutls/ \n ftp://ftp.gnutls.org/pub/gnutls http://www.mirrors.wiret=
apped.net/security/network-security/gnutls/ \n ftp://ftp.gnutls.org/pub/gnu=
tls ftp://ftp.mirrors.wiretapped.net/pub/security/network-security/gnutls/ =
\n ftp://ftp.gnutls.org/pub/gnutls http://josefsson.org/gnutls/releases/ \n=
 http://ftp.info-zip.org/pub/infozip/src/ http://mirror.switch.ch/ftp/mirro=
r/infozip/src/ \n http://ftp.info-zip.org/pub/infozip/src/ ftp://sunsite.ic=
m.edu.pl/pub/unix/archiving/info-zip/src/ \n ftp://lsof.itap.purdue.edu/pub=
/tools/unix/lsof/  ftp://ftp.cerias.purdue.edu/pub/tools/unix/sysutils/lsof=
/ \n ftp://lsof.itap.purdue.edu/pub/tools/unix/lsof/  ftp://ftp.tau.ac.il/p=
ub/unix/admin/ \n ftp://lsof.itap.purdue.edu/pub/tools/unix/lsof/  ftp://ft=
p.cert.dfn.de/pub/tools/admin/lsof/ \n ftp://lsof.itap.purdue.edu/pub/tools=
/unix/lsof/  ftp://ftp.fu-berlin.de/pub/unix/tools/lsof/ \n ftp://lsof.itap=
.purdue.edu/pub/tools/unix/lsof/  ftp://ftp.kaizo.org/pub/lsof/ \n ftp://ls=
of.itap.purdue.edu/pub/tools/unix/lsof/  ftp://ftp.tu-darmstadt.de/pub/sysa=
dmin/lsof/ \n ftp://lsof.itap.purdue.edu/pub/tools/unix/lsof/  ftp://ftp.tu=
x.org/pub/sites/vic.cc.purdue.edu/tools/unix/lsof/ \n ftp://lsof.itap.purdu=
e.edu/pub/tools/unix/lsof/  ftp://gd.tuwien.ac.at/utils/admin-tools/lsof/ \=
n ftp://lsof.itap.purdue.edu/pub/tools/unix/lsof/  ftp://sunsite.ualberta.c=
a/pub/Mirror/lsof/ \n ftp://lsof.itap.purdue.edu/pub/tools/unix/lsof/  ftp:=
//the.wiretapped.net/pub/security/host-security/lsof/ \n http://www.apache.=
org/dist  http://archive.apache.org/dist \n cvs://.*/.*     http://download=
s.yoctoproject.org/mirror/sources/ \n svn://.*/.*     http://downloads.yoct=
oproject.org/mirror/sources/ \n git://.*/.*     http://downloads.yoctoproje=
ct.org/mirror/sources/ \n hg://.*/.*      http://downloads.yoctoproject.org=
/mirror/sources/ \n bzr://.*/.*     http://downloads.yoctoproject.org/mirro=
r/sources/ \n svk://.*/.*     http://downloads.yoctoproject.org/mirror/sour=
ces/ \n p4://.*/.*      http://downloads.yoctoproject.org/mirror/sources/ \=
n osc://.*/.*     http://downloads.yoctoproject.org/mirror/sources/ \n http=
s?$://.*/.* http://downloads.yoctoproject.org/mirror/sources/ \n ftp://.*/.=
*     http://downloads.yoctoproject.org/mirror/sources/ \n cvs://.*/.*     =
http://sources.openembedded.org/ \n svn://.*/.*     http://sources.openembe=
dded.org/ \n git://.*/.*     http://sources.openembedded.org/ \n hg://.*/.*=
      http://sources.openembedded.org/ \n bzr://.*/.*     http://sources.op=
enembedded.org/ \n svk://.*/.*     http://sources.openembedded.org/ \n p4:/=
/.*/.*      http://sources.openembedded.org/ \n osc://.*/.*     http://sour=
ces.openembedded.org/ \n https?$://.*/.* http://sources.openembedded.org/ \=
n ftp://.*/.*     http://sources.openembedded.org/ \n"
# LOG_DIR=3D${TMPDIR}/log
LOG_DIR=3D"/tool/yocto/poky/build/tmp/log"
# DEPCHAIN_PRE=3D
# GNOME_GIT=3Dgit://git.gnome.org
GNOME_GIT=3D"git://git.gnome.org"
# NO32LIBS=3D1
NO32LIBS=3D"1"
# PACKAGE_EXTRA_ARCHS_tune-ppc440=3D${PACKAGE_EXTRA_ARCHS_tune-powerpc-nf} =
ppc440
PACKAGE_EXTRA_ARCHS_tune-ppc440=3D"powerpc-nf ppc440"
# PREFERRED_PROVIDER_gzip-native=3Dpigz-native
PREFERRED_PROVIDER_gzip-native=3D"pigz-native"
# _=3D/tool/yocto/poky/scripts/bitbake
_=3D"/tool/yocto/poky/scripts/bitbake"
# PREFERRED_VERSION_u-boot_virtex5=3DNone
# PREFERRED_PROVIDER_virtual/xserver=3Dxserver-xorg
PREFERRED_PROVIDER_virtual/xserver=3D"xserver-xorg"
# SPDXLICENSEMAP=3DNone
# PN=3D${@bb.parse.BBHandler.vars_from_file(d.getVar('FILE'),d)[0] or 'defa=
ultpkgname'}
PN=3D"linux-xilinx"
# FREEDESKTOP_CVS=3Dcvs://anoncvs:anoncvs@anoncvs.freedesktop.org/cvs
FREEDESKTOP_CVS=3D"cvs://anoncvs:anoncvs@anoncvs.freedesktop.org/cvs"
# SANITY_ABIFILE=3D${TMPDIR}/abi_version
SANITY_ABIFILE=3D"/tool/yocto/poky/build/tmp/abi_version"
# DEBUG_OPTIMIZATION=3D-O -fno-omit-frame-pointer ${DEBUG_FLAGS} -pipe
DEBUG_OPTIMIZATION=3D"-O -fno-omit-frame-pointer -g -feliminate-unused-debu=
g-types -pipe"
# libdir_native=3D${prefix_native}/lib
libdir_native=3D"/usr/lib"
# MACHINE_EXTRA_RRECOMMENDS=3D
# PATCH_GET=3D0
export PATCH_GET=3D"0"
# SITE_CONF_VERSION=3D1
SITE_CONF_VERSION=3D"1"
# CXXFLAGS=3D${TARGET_CXXFLAGS} -fvisibility-inlines-hidden
export CXXFLAGS=3D"-O2 -pipe -g -feliminate-unused-debug-types -fpermissive=
 -fvisibility-inlines-hidden"
# RDEPENDS_${PN}-dev=3DNone
# PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}gcc-intermediate=3DNone
# DISPLAY=3D:0
DISPLAY=3D":0"
# NM=3D${HOST_PREFIX}nm
export NM=3D"powerpc-poky-linux-nm"
# SEPPUKU_ADDCOMMENT=3DNone
# DEPENDS=3D  virtual/powerpc-poky-linux-gcc kmod-native virtual/powerpc-po=
ky-linux-gcc update-modules u-boot-mkimage-native dtc-native
DEPENDS=3D"virtual/powerpc-poky-linux-gcc kmod-native virtual/powerpc-poky-=
linux-gcc update-modules u-boot-mkimage-native dtc-native"
# PREFERRED_PROVIDER_virtual/fakeroot-native=3Dpseudo-native
PREFERRED_PROVIDER_virtual/fakeroot-native=3D"pseudo-native"
# TARGET_LINK_HASH_STYLE=3D${@['-Wl,--hash-style=3Dgnu',''][d.getVar('LINKE=
R_HASH_STYLE', True) !=3D 'gnu']}
TARGET_LINK_HASH_STYLE=3D"-Wl,--hash-style=3Dgnu"
# DISTRO_FEATURES_BACKFILL=3Dpulseaudio
DISTRO_FEATURES_BACKFILL=3D"pulseaudio"
# AUTO_LIBNAME_PKGS=3D${PACKAGES}
AUTO_LIBNAME_PKGS=3D"kernel kernel-base kernel-vmlinux kernel-image kernel-=
dev kernel-misc kernel-devicetree"
# WORKDIR=3D${TMPDIR}/work/${MULTIMACH_TARGET_SYS}/${PF}
WORKDIR=3D"/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-=
3.3.0-r0"
# BUILDSDK_CFLAGS=3D${BUILDSDK_CPPFLAGS} ${BUILD_OPTIMIZATION}
BUILDSDK_CFLAGS=3D"-isystem/tool/yocto/poky/build/tmp/sysroots/virtex5/usr/=
include -O2 -pipe"
# SECTION_linux-xilinx-dbg=3Ddevel
SECTION_linux-xilinx-dbg=3D"devel"
# F77=3D${CCACHE}${HOST_PREFIX}g77 ${HOST_CC_ARCH}${TOOLCHAIN_OPTIONS}
export F77=3D"powerpc-poky-linux-g77  -m32  -msoft-float -mcpu=3D440 --sysr=
oot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5"
# DISTRO_FEATURES_LIBC=3D${DISTRO_FEATURES_LIBC_DEFAULT}
DISTRO_FEATURES_LIBC=3D"ipv4 ipv6 libc-backtrace libc-big-macros libc-bsd l=
ibc-cxx-tests libc-catgets libc-charsets libc-crypt 					libc-crypt-ufc lib=
c-db-aliases libc-envz libc-fcvt libc-fmtmsg libc-fstab libc-ftraverse 				=
	libc-getlogin libc-idn libc-inet-anl libc-libm libc-libm-big libc-locales =
libc-locale-code 					libc-memusage libc-nis libc-nsswitch libc-rcmd libc-r=
tld-debug libc-spawn libc-streams libc-sunrpc 					libc-utmp libc-utmpx lib=
c-wordexp libc-posix-clang-wchar libc-posix-regexp libc-posix-regexp-glibc =
					libc-posix-wchar-io"
# SDK_AS_ARCH=3D${BUILD_AS_ARCH}
# GNOME_KEYRING_PID=3D4294
GNOME_KEYRING_PID=3D"4294"
# BB_HASHFILENAME=3D${SSTATE_PKGNAME}
BB_HASHFILENAME=3D"sstate-linux-xilinx-virtex5-poky-linux-3.3.0-r0-virtex5-=
2-${BB_TASKHASH}"
# SSTATE_PKGARCH=3D${PACKAGE_ARCH}
SSTATE_PKGARCH=3D"virtex5"
# METADATA_REVISION=3D${@base_detect_revision(d)}
METADATA_REVISION=3D"b876f42821383bf0069ee49b607ba06614417fba"
# UBOOT_ARCH=3D${@map_uboot_arch(d.getVar('ARCH', True), d)}
export UBOOT_ARCH=3D"ppc"
# EXTRA_IMAGEDEPENDS=3D u-boot-xilinx
EXTRA_IMAGEDEPENDS=3D"u-boot-xilinx"
# BUILD_STRIP=3D${BUILD_PREFIX}strip
export BUILD_STRIP=3D"strip"
# libdir_nativesdk=3D${prefix_nativesdk}/lib
libdir_nativesdk=3D"/usr/lib"
# BB_BASEHASH_task-do_package_setscene=3D79b3a3c162c8fd538cfa409bb9455043
BB_BASEHASH_task-do_package_setscene=3D"79b3a3c162c8fd538cfa409bb9455043"
# SDK_LD_ARCH=3D${BUILD_LD_ARCH}
# TCLIBCAPPEND=3D
# STAGING_DIR=3D${TMPDIR}/sysroots
STAGING_DIR=3D"/tool/yocto/poky/build/tmp/sysroots"
# STAGING_BINDIR_TOOLCHAIN=3D${STAGING_DIR_NATIVE}${bindir_native}/${TUNE_P=
KGARCH}${TARGET_VENDOR}-${TARGET_OS}
STAGING_BINDIR_TOOLCHAIN=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linu=
x/usr/bin/ppc440-poky-linux"
# FILES_linux-xilinx-dbg=3D${@d.getVar(['DOTDEBUG-dbg', 'DEBUGFILEDIRECTORY=
-dbg'][d.getVar('PACKAGE_DEBUG_SPLIT_STYLE', True) =3D=3D 'debug-file-direc=
tory'], True)}
FILES_linux-xilinx-dbg=3D"/usr/bin/.debug /usr/sbin/.debug /usr/libexec/.de=
bug /usr/lib/.debug /bin/.debug /sbin/.debug /lib/.debug /usr/lib/linux-xil=
inx/.debug /usr/lib/matchbox-panel/.debug /usr/src/debug"
# BB_SIGNATURE_HANDLER=3DOEBasicHash
BB_SIGNATURE_HANDLER=3D"OEBasicHash"
# LINKER_HASH_STYLE=3Dgnu
LINKER_HASH_STYLE=3D"gnu"
# PREFERRED_VERSION_linux-yocto_qemumips=3D3.4%
PREFERRED_VERSION_linux-yocto_qemumips=3D"3.4%"
# PREFERRED_PROVIDER_virtual/powerpc-poky-linux-gcc-initial=3Dgcc-cross-ini=
tial
PREFERRED_PROVIDER_virtual/powerpc-poky-linux-gcc-initial=3D"gcc-cross-init=
ial"
# VIRTUAL-RUNTIME_alsa-state=3Dalsa-state
VIRTUAL-RUNTIME_alsa-state=3D"alsa-state"
# SSH_AGENT_PID=3D4340
SSH_AGENT_PID=3D"4340"
# XDG_SESSION_COOKIE=3D7e784a950e35e8c870d2db2900000013-1340396892.331324-5=
97899210
XDG_SESSION_COOKIE=3D"7e784a950e35e8c870d2db2900000013-1340396892.331324-59=
7899210"
# LICENSE=3DGPLv2
LICENSE=3D"GPLv2"
# PACKAGES_DYNAMIC=3D${PN}-locale-* kernel-module-* kernel-image-* kernel-f=
irmware-*
PACKAGES_DYNAMIC=3D"linux-xilinx-locale-* kernel-module-* kernel-image-* ke=
rnel-firmware-*"
# LOCALCONF_VERSION=3D1
LOCALCONF_VERSION=3D"1"
# MULTILIB_VARIANTS=3D
# TARGET_CC_KERNEL_ARCH=3D
# PREFERRED_PROVIDER_console-tools=3Dkbd
PREFERRED_PROVIDER_console-tools=3D"kbd"
# SSTATEPREINSTFUNCS=3D
# SSH_AUTH_SOCK=3D/tmp/keyring-MhCyXy/ssh
SSH_AUTH_SOCK=3D"/tmp/keyring-MhCyXy/ssh"
# STAGING_DIR_TARGET=3D${STAGING_DIR}/${MACHINE}
STAGING_DIR_TARGET=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5"
# FILES_linux-xilinx-dev=3D${includedir} ${FILES_SOLIBSDEV} ${libdir}/*.la =
${libdir}/*.o ${libdir}/pkgconfig ${datadir}/pkgconfig ${datadir}/aclocal $=
{base_libdir}/*.o ${libdir}/${BPN}/*.la ${base_libdir}/*.la
FILES_linux-xilinx-dev=3D"/usr/include /lib/lib*.so /usr/lib/lib*.so /usr/l=
ib/*.la /usr/lib/*.o /usr/lib/pkgconfig /usr/share/pkgconfig /usr/share/acl=
ocal /lib/*.o /usr/lib/linux-xilinx/*.la /lib/*.la"
# PREFERRED_VERSION_gcc-runtime=3D${GCCVERSION}
PREFERRED_VERSION_gcc-runtime=3D"4.7%"
# OE_IMPORTS=3D os sys time oe.path oe.utils oe.data oe.packagegroup oe.sst=
atesig
OE_IMPORTS=3D"os sys time oe.path oe.utils oe.data oe.packagegroup oe.sstat=
esig"
# AUTOREV=3D${@bb.fetch2.get_autorev(d)}
AUTOREV=3D"AUTOINC"
# FETCHCOMMAND_svn=3D/usr/bin/env svn co ${SVNCOOPTS} ${SVNROOT} ${SVNMODUL=
E}
FETCHCOMMAND_svn=3D"/usr/bin/env svn co ${SVNCOOPTS} ${SVNROOT} ${SVNMODULE=
}"
# DEPLOY_DIR_DEB=3D${DEPLOY_DIR}/deb
DEPLOY_DIR_DEB=3D"/tool/yocto/poky/build/tmp/deploy/deb"
# DEPLOY_DIR_RPM=3D${DEPLOY_DIR}/rpm
DEPLOY_DIR_RPM=3D"/tool/yocto/poky/build/tmp/deploy/rpm"
# PREFERRED_VERSION_eglibc-locale=3D${EGLIBCVERSION}
PREFERRED_VERSION_eglibc-locale=3D"2.15"
# CLEANFUNCS=3D sstate_cleanall
CLEANFUNCS=3D"sstate_cleanall"
# STAGING_BINDIR_CROSS=3D${STAGING_BINDIR}/crossscripts
STAGING_BINDIR_CROSS=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5/usr/bin=
/crossscripts"
# PALMTOP_USE_MULTITHREADED_QT=3DNone
# PREFERRED_VERSION_eglibc-initial=3D${EGLIBCVERSION}
PREFERRED_VERSION_eglibc-initial=3D"2.15"
do_fetchall() {
	:

}

do_build() {
	:

}

resolve_package_rpm() {
	local conffile=3D"$1"
	shift
	local pkg_name=3D""
	for solve in `cat ${conffile}`; do
		pkg_name=3D$(rpm -D "_dbpath $solve" -D "__dbi_txn create nofsync" -q --q=
f "%{packageorigin}\n" "$@" | grep -v "is not installed" || true)
		if [ -n "$pkg_name" -a "$pkg_name" !=3D "(none)" ]; then
			echo $pkg_name
			break;
		fi
	done

}

do_savedefconfig() {
	oe_runmake savedefconfig

}

do_uboot_mkimage() {
	if test "xuImage" =3D "xuImage" ; then
		if test ! -e arch/powerpc/boot/uImage ; then
			ENTRYPOINT=3D0x00000000
			if test -n "${UBOOT_ENTRYSYMBOL}"; then
				ENTRYPOINT=3D`powerpc-poky-linux-nm /tool/yocto/poky/build/tmp/work/vir=
tex5-poky-linux/linux-xilinx-3.3.0-r0/git/vmlinux | \
					awk '$3=3D=3D"${UBOOT_ENTRYSYMBOL}" {print $1}'`
			fi
			if test -e arch/powerpc/boot/compressed/vmlinux ; then
				powerpc-poky-linux-objcopy -O binary -R .note -R .comment -S arch/power=
pc/boot/compressed/vmlinux linux.bin
				uboot-mkimage -A ppc -O linux -T kernel -C none -a 0x00000000 -e $ENTRY=
POINT -n "Yocto (Built by Poky 7.0)/3.3.0/virtex5" -d linux.bin arch/powerp=
c/boot/uImage
				rm -f linux.bin
			else
				powerpc-poky-linux-objcopy -O binary -R .note -R .comment -S vmlinux li=
nux.bin
				rm -f linux.bin.gz
				gzip -9 linux.bin
				uboot-mkimage -A ppc -O linux -T kernel -C gzip -a 0x00000000 -e $ENTRY=
POINT -n "Yocto (Built by Poky 7.0)/3.3.0/virtex5" -d linux.bin.gz arch/pow=
erpc/boot/uImage
				rm -f linux.bin.gz
			fi
		fi
	fi

}

prelink_image() {
#	export PSEUDO_DEBUG=3D4
#	/bin/env | /bin/grep PSEUDO
#	echo "LD_LIBRARY_PATH=3D$LD_LIBRARY_PATH"
#	echo "LD_PRELOAD=3D$LD_PRELOAD"

	pre_prelink_size=3D`du -ks /tool/yocto/poky/build/tmp/work/virtex5-poky-li=
nux/linux-xilinx-3.3.0-r0/rootfs | awk '{size =3D $1 ; print size }'`
	echo "Size before prelinking $pre_prelink_size."

	# We need a prelink conf on the filesystem, add one if it's missing
	if [ ! -e /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-=
3.3.0-r0/rootfs/etc/prelink.conf ]; then
		cp /tool/yocto/poky/build/tmp/sysroots/x86_64-linux/etc/prelink.conf \
			/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-r0=
/rootfs/etc/prelink.conf
		dummy_prelink_conf=3Dtrue;
	else
		dummy_prelink_conf=3Dfalse;
	fi

	# prelink!
	/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/sbin/prelink --root /=
tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-r0/roo=
tfs -amR -N -c /etc/prelink.conf

	# Remove the prelink.conf if we had to add it.
	if [ "$dummy_prelink_conf" =3D "true" ]; then
		rm -f /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3=
.0-r0/rootfs/etc/prelink.conf
	fi

	pre_prelink_size=3D`du -ks /tool/yocto/poky/build/tmp/work/virtex5-poky-li=
nux/linux-xilinx-3.3.0-r0/rootfs | awk '{size =3D $1 ; print size }'`
	echo "Size after prelinking $pre_prelink_size."

}

do_sizecheck() {
	if [ ! -z "${KERNEL_IMAGE_MAXSIZE}" ]; then
		size=3D`ls -l arch/powerpc/boot/uImage | awk '{ print $5}'`
		if [ $size -ge ${KERNEL_IMAGE_MAXSIZE} ]; then
			rm arch/powerpc/boot/uImage
			die "This kernel (size=3D$size > ${KERNEL_IMAGE_MAXSIZE}) is too big for=
 your device. Please reduce the size of the kernel by making more of it mod=
ular."
		fi
	fi

}

bbdebug() {
	USAGE=3D'Usage: bbdebug [123] "message"'
	if [ $# -lt 2 ]; then
		bbfatal "$USAGE"
	fi

	# Strip off the debug level and ensure it is an integer
	DBGLVL=3D$1; shift
	if ! [[ "$DBGLVL" =3D~ ^[0-9]+ ]]; then
		bbfatal "$USAGE"
	fi

	# All debug output is printed to the logs
	echo "DEBUG: $*"

}

package_generate_rpm_conf() {
	# Update target packages
	package_generate_rpm_conf_common "/tool/yocto/poky/build/tmp/deploy/rpm/so=
lvedb" base_archs ml_archs

	# Update SDK packages
	package_generate_rpm_conf_common "/tool/yocto/poky/build/tmp/deploy/rpm/so=
lvedb-sdk" base_archs

}

oe_machinstall() {
	# Purpose: Install machine dependent files, if available
	#          If not available, check if there is a default
	#          If no default, just touch the destination
	# Example:
	#                $1  $2   $3         $4
	# oe_machinstall -m 0644 fstab /tool/yocto/poky/build/tmp/work/virtex5-pok=
y-linux/linux-xilinx-3.3.0-r0/image/etc/fstab
	#
	# TODO: Check argument number?
	#
	filename=3D`basename $3`
	dirname=3D`dirname $3`

	for o in `echo linux:powerpc:build-linux:pn-linux-xilinx:virtex5:poky:clas=
s-target:forcevariable:libc-glibc | tr ':' ' '`; do
		if [ -e $dirname/$o/$filename ]; then
			bbnote $dirname/$o/$filename present, installing to $4
			install $1 $2 $dirname/$o/$filename $4
			return
		fi
	done
#	bbnote overrides specific file NOT present, trying default=3D$3...
	if [ -e $3 ]; then
		bbnote $3 present, installing to $4
		install $1 $2 $3 $4
	else
		bbnote $3 NOT present, touching empty $4
		touch $4
	fi

}

do_install() {
	kernel_do_install
    if test -n "arch/powerpc/boot/dts/virtex440-ml507.dts"; then
	dtc -I dts -O dtb -R 8 -p 0x3000 -o devicetree arch/powerpc/boot/dts/virte=
x440-ml507.dts
	install -m 0644 devicetree /tool/yocto/poky/build/tmp/work/virtex5-poky-li=
nux/linux-xilinx-3.3.0-r0/image/boot/devicetree-3.3.0-14.2-build1
	install -d /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx=
-3.3.0-r0/deploy-linux-xilinx
	install -m 0644 devicetree /tool/yocto/poky/build/tmp/work/virtex5-poky-li=
nux/linux-xilinx-3.3.0-r0/deploy-linux-xilinx/uImage-3.3.0-r0-virtex5-20120=
623074645.dtb
	cd /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-r=
0/deploy-linux-xilinx
	rm -f uImage-virtex5.dtb
	ln -sf uImage-3.3.0-r0-virtex5-20120623074645.dtb uImage-virtex5.dtb
    fi

}

do_configure() {
#first check that the XILINX_BSP_PATH and XILINX_BOARD have been defined in=
 local.conf
#now depending on the board type and arch do what is nessesary
if [ -n "/project/xilinx-ml507-workspace" ]; then
	if [ "ml507" !=3D "unknown" ]; then
		dts=3D`find "/project/xilinx-ml507-workspace" -name *.dts -print`
		if [ -e "$dts" ]; then
			bbnote "Xilinx BSP device tree located in: ${dts}"
			if [ "powerpc" =3D "powerpc" ]; then
				bbnote "Replacing linux kernel powerpc device tree to match located har=
dware model"
				cp -pP ${dts} /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-=
xilinx-3.3.0-r0/git/arch/powerpc/boot/dts/virtex440-ml507.dts
			else
				bbnote "Replacing linux kernel microblaze device tree to match located =
hardware model"
				cp -pP ${dts} /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-=
xilinx-3.3.0-r0/git/arch/microblaze/platform/generic/440-ml507.dts
			fi
		else
			bbfatal "No device tree found, missing hardware ref design?"
			exit 1
		fi
	else
		bbnote "Xilinx board model: ml507"
        bbfatal "XILINX_BSP_PATH points to a valid Xilinx XPS project direc=
tory? ! Exit"
		exit 1
	fi
else
	bbfatal "XILINX_BSP_PATH not defined ! Exit"
	exit 1
fi
	kernel_do_configure

}

kernel_package_preprocess() {
	rm -rf /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3=
.0-r0/package/kernel

}

cml1_do_configure() {
	set -e
	unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS
	oe_runmake oldconfig

}

kernel_do_deploy() {
	install -m 0644 arch/powerpc/boot/uImage /tool/yocto/poky/build/tmp/work/v=
irtex5-poky-linux/linux-xilinx-3.3.0-r0/deploy-linux-xilinx/uImage-3.3.0-r0=
-virtex5-20120623074645.bin
	if (grep -q -i -e '^CONFIG_MODULES=3Dy$' .config); then
		tar -cvzf /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx=
-3.3.0-r0/deploy-linux-xilinx/modules-3.3.0-14.2-build1-r0-virtex5.tgz -C /=
tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-r0/ima=
ge lib
	fi

	cd /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-r=
0/deploy-linux-xilinx
	rm -f uImage-virtex5.bin
	ln -sf uImage-3.3.0-r0-virtex5-20120623074645.bin uImage-virtex5.bin
	ln -sf uImage-3.3.0-r0-virtex5-20120623074645.bin uImage

	cp /tool/yocto/poky/meta/files/deploydir_readme.txt /tool/yocto/poky/build=
/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-r0/deploy-linux-xilinx/READ=
ME_-_DO_NOT_DELETE_FILES_IN_THIS_DIRECTORY.txt

}

pkg_postrm_modules() {
update-modules || true

}

sysroot_stage_dir() {
	src=3D"$1"
	dest=3D"$2"
	# if the src doesn't exist don't do anything
	if [ ! -d "$src" ]; then
		 return
	fi

	# We only want to stage the contents of $src if it's non-empty so first rm=
dir $src
	# then if it still exists (rmdir on non-empty dir fails) we can copy its c=
ontents
	rmdir "$src" 2> /dev/null || true
	# However we always want to stage a $src itself, even if it's empty
	mkdir -p "$dest"
	if [ -d "$src" ]; then
		tar -cf - -C "$src" -ps . | tar -xf - -C "$dest"
	fi

}

do_buildall() {
	:

}

pkg_postinst_modules() {
if [ -z "$D" ]; then
	depmod -a 3.3.0-14.2-build1
	update-modules || true
fi

}

package_update_index_rpm_common() {
	rpmconf_base=3D"$1"
	shift

        createdirs=3D""
	for archvar in "$@"; do
		eval archs=3D\${${archvar}}
		packagedirs=3D""
		for arch in $archs; do
			packagedirs=3D"/tool/yocto/poky/build/tmp/deploy/rpm/$arch $packagedirs"
			rm -rf /tool/yocto/poky/build/tmp/deploy/rpm/$arch/solvedb.done
		done

		cat /dev/null > ${rpmconf_base}-${archvar}.conf
		for pkgdir in $packagedirs; do
			if [ -e $pkgdir/ ]; then
				echo "Generating solve db for $pkgdir..."
				echo $pkgdir/solvedb >> ${rpmconf_base}-${archvar}.conf
                                createdirs=3D"$createdirs $pkgdir"
			fi
		done
	done
	rpm-createsolvedb.py "rpm" $createdirs

}

base_do_configure() {
	:

}

create_wrapper() {
   # Create a wrapper script
   #
   # These are useful to work around relocation issues, by setting environm=
ent
   # variables which point to paths in the filesystem.
   #
   # Usage: create_wrapper FILENAME [[VAR=3DVALUE]..]

   cmd=3D$1
   shift

   echo "Generating wrapper script for $cmd"

   mv $cmd $cmd.real
   cmdname=3D`basename $cmd`.real
   cat <<END >$cmd
#!/bin/sh
realpath=3D\`readlink -fn \$0\`
exec env $@ \`dirname \$realpath\`/$cmdname "\$@"
END
   chmod +x $cmd

}

bbnote() {
	echo "NOTE: $*"

}

do_deploy() {
	kernel_do_deploy

}

sstate_create_package() {
	cd ${SSTATE_BUILDDIR}
	TFILE=3D`mktemp /tool/yocto/poky/build/sstate-cache/sstate-linux-xilinx-vi=
rtex5-poky-linux-3.3.0-r0-virtex5-2-${BB_TASKHASH}.XXXXXXXX`
	# Need to handle empty directories
	if [ "$(ls -A)" ]; then
		tar -czf $TFILE *
	else
		tar -cz --file=3D$TFILE --files-from=3D/dev/null
	fi
	chmod 0664 $TFILE
	mv $TFILE /tool/yocto/poky/build/sstate-cache/sstate-linux-xilinx-virtex5-=
poky-linux-3.3.0-r0-virtex5-2-${BB_TASKHASH}

	cd /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-r=
0
	rm -rf ${SSTATE_BUILDDIR}

}

bbplain() {
	echo "$*"

}

rpm_log_check() {
       target=3D"$1"
       lf_path=3D"$2"

       lf_txt=3D"`cat $lf_path`"
       for keyword_die in "Cannot find package" "exit 1" ERR Fail
       do
               if (echo "$lf_txt" | grep -v log_check | grep "$keyword_die"=
) >/dev/null 2>&1
               then
                       echo "log_check: There were error messages in the lo=
gfile"
                       echo -e "log_check: Matched keyword: [$keyword_die]\=
n"
                       echo "$lf_txt" | grep -v log_check | grep -C 5 -i "$=
keyword_die"
                       echo ""
                       do_exit=3D1
               fi
       done
       test "$do_exit" =3D 1 && exit 1
       true

}

ldconfig_postinst_fragment() {
if [ x"$D" =3D "x" ]; then
	[ -x /sbin/ldconfig ] && /sbin/ldconfig
fi

}

package_update_index_rpm() {
	if [ ! -z "${DEPLOY_KEEP_PACKAGES}" ]; then
		return
	fi

	# Update target packages
	base_archs=3D"all any noarch powerpc-nf ppc440 virtex5"
	ml_archs=3D"${MULTILIB_PACKAGE_ARCHS}"
	package_update_index_rpm_common "/tool/yocto/poky/build/tmp/deploy/rpm/sol=
vedb" base_archs ml_archs

	# Update SDK packages
	base_archs=3D"all any noarch x86_64-nativesdk"
	package_update_index_rpm_common "/tool/yocto/poky/build/tmp/deploy/rpm/sol=
vedb-sdk" base_archs

}

kernel_do_configure() {
	# fixes extra + in /lib/modules/2.6.37+
	# $ scripts/setlocalversion . =3D> +
	# $ make kernelversion =3D> 2.6.37
	# $ make kernelrelease =3D> 2.6.37+
	touch /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.=
0-r0/git/.scmversion /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/lin=
ux-xilinx-3.3.0-r0/git/.scmversion

	# Copy defconfig to .config if .config does not exist. This allows
	# recipes to manage the .config themselves in do_configure_prepend().
	if [ -f "/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3=
.3.0-r0/defconfig" ] && [ ! -f "/tool/yocto/poky/build/tmp/work/virtex5-pok=
y-linux/linux-xilinx-3.3.0-r0/git/.config" ]; then
		cp "/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0=
-r0/defconfig" "/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xi=
linx-3.3.0-r0/git/.config"
	fi
	yes '' | oe_runmake oldconfig

	if [ ! -z "" ]; then
		for img in cpio.gz cpio.lzo cpio.lzma cpio.xz; do
		if [ -e "/tool/yocto/poky/build/tmp/deploy/images/-virtex5.$img" ]; then
			cp "/tool/yocto/poky/build/tmp/deploy/images/-virtex5.$img" initramfs.$i=
mg
		fi
		done
	fi

}

sysroot_stage_libdir() {
	src=3D"$1"
	dest=3D"$2"

	sysroot_stage_dir $src $dest

}

die() {
	bbfatal "$*"

}

base_do_install() {
	:

}

do_compile() {
	kernel_do_compile

}

autoload_postinst_fragment() {
if [ x"$D" =3D "x" ]; then
	modprobe %s || true
fi

}

kernel_do_compile() {
	unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS MACHINE
	oe_runmake include/linux/version.h CC=3D"powerpc-poky-linux-gcc  --sysroot=
=3D/tool/yocto/poky/build/tmp/sysroots/virtex5" LD=3D"powerpc-poky-linux-ld=
  --sysroot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5"
	oe_runmake uImage  CC=3D"powerpc-poky-linux-gcc  --sysroot=3D/tool/yocto/p=
oky/build/tmp/sysroots/virtex5" LD=3D"powerpc-poky-linux-ld  --sysroot=3D/t=
ool/yocto/poky/build/tmp/sysroots/virtex5"
	if test "uImage.gz" =3D "uImage"; then
		gzip -9c < "uImage" > "arch/powerpc/boot/uImage"
	fi

}

base_do_package() {
	:

}

do_compile_kernelmodules() {
	unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS MACHINE
	if (grep -q -i -e '^CONFIG_MODULES=3Dy$' .config); then
		oe_runmake -j 6 modules CC=3D"powerpc-poky-linux-gcc  --sysroot=3D/tool/y=
octo/poky/build/tmp/sysroots/virtex5" LD=3D"powerpc-poky-linux-ld  --sysroo=
t=3D/tool/yocto/poky/build/tmp/sysroots/virtex5"
	else
		bbnote "no modules to compile"
	fi

}

oe_soinstall() {
	# Purpose: Install shared library file and
	#          create the necessary links
	# Example:
	#
	# oe_
	#
	#bbnote installing shared library $1 to $2
	#
	libname=3D`basename $1`
	install -m 755 $1 $2/$libname
	sonamelink=3D`powerpc-poky-linux-readelf -d $1 |grep 'Library soname:' |se=
d -e 's/.*\[\(.*\)\].*/\1/'`
	solink=3D`echo $libname | sed -e 's/\.so\..*/.so/'`
	ln -sf $libname $2/$sonamelink
	ln -sf $libname $2/$solink

}

create_cmdline_wrapper() {
   # Create a wrapper script
   #
   # These are useful to work around relocation issues, by setting environm=
ent
   # variables which point to paths in the filesystem.
   #
   # Usage: create_wrapper FILENAME [[VAR=3DVALUE]..]

   cmd=3D$1
   shift

   echo "Generating wrapper script for $cmd"

   mv $cmd $cmd.real
   cmdname=3D`basename $cmd`.real
   cat <<END >$cmd
#!/bin/sh
realpath=3D\`readlink -fn \$0\`
exec \`dirname \$realpath\`/$cmdname $@ "\$@"
END
   chmod +x $cmd

}

oe_libinstall() {
	# Purpose: Install a library, in all its forms
	# Example
	#
	# oe_libinstall libltdl /tool/yocto/poky/build/tmp/sysroots/virtex5/usr/li=
b/
	# oe_libinstall -C src/libblah libblah /tool/yocto/poky/build/tmp/work/vir=
tex5-poky-linux/linux-xilinx-3.3.0-r0/image//usr/lib/
	dir=3D""
	libtool=3D""
	silent=3D""
	require_static=3D""
	require_shared=3D""
	staging_install=3D""
	while [ "$#" -gt 0 ]; do
		case "$1" in
		-C)
			shift
			dir=3D"$1"
			;;
		-s)
			silent=3D1
			;;
		-a)
			require_static=3D1
			;;
		-so)
			require_shared=3D1
			;;
		-*)
			bbfatal "oe_libinstall: unknown option: $1"
			;;
		*)
			break;
			;;
		esac
		shift
	done

	libname=3D"$1"
	shift
	destpath=3D"$1"
	if [ -z "$destpath" ]; then
		bbfatal "oe_libinstall: no destination path specified"
	fi
	if echo "$destpath/" | egrep '^/tool/yocto/poky/build/tmp/sysroots/virtex5=
/usr/lib/' >/dev/null
	then
		staging_install=3D1
	fi

	__runcmd () {
		if [ -z "$silent" ]; then
			echo >&2 "oe_libinstall: $*"
		fi
		$*
	}

	if [ -z "$dir" ]; then
		dir=3D`pwd`
	fi

	dotlai=3D$libname.lai

	# Sanity check that the libname.lai is unique
	number_of_files=3D`(cd $dir; find . -name "$dotlai") | wc -l`
	if [ $number_of_files -gt 1 ]; then
		bbfatal "oe_libinstall: $dotlai is not unique in $dir"
	fi


	dir=3D$dir`(cd $dir;find . -name "$dotlai") | sed "s/^\.//;s/\/$dotlai\$//=
;q"`
	olddir=3D`pwd`
	__runcmd cd $dir

	lafile=3D$libname.la

	# If such file doesn't exist, try to cut version suffix
	if [ ! -f "$lafile" ]; then
		libname1=3D`echo "$libname" | sed 's/-[0-9.]*$//'`
		lafile1=3D$libname.la
		if [ -f "$lafile1" ]; then
			libname=3D$libname1
			lafile=3D$lafile1
		fi
	fi

	if [ -f "$lafile" ]; then
		# libtool archive
		eval `cat $lafile|grep "^library_names=3D"`
		libtool=3D1
	else
		library_names=3D"$libname.so* $libname.dll.a $libname.*.dylib"
	fi

	__runcmd install -d $destpath/
	dota=3D$libname.a
	if [ -f "$dota" -o -n "$require_static" ]; then
		rm -f $destpath/$dota
		__runcmd install -m 0644 $dota $destpath/
	fi
	if [ -f "$dotlai" -a -n "$libtool" ]; then
		rm -f $destpath/$libname.la
		__runcmd install -m 0644 $dotlai $destpath/$libname.la
	fi

	for name in $library_names; do
		files=3D`eval echo $name`
		for f in $files; do
			if [ ! -e "$f" ]; then
				if [ -n "$libtool" ]; then
					bbfatal "oe_libinstall: $dir/$f not found."
				fi
			elif [ -L "$f" ]; then
				__runcmd cp -P "$f" $destpath/
			elif [ ! -L "$f" ]; then
				libfile=3D"$f"
				rm -f $destpath/$libfile
				__runcmd install -m 0755 $libfile $destpath/
			fi
		done
	done

	if [ -z "$libfile" ]; then
		if  [ -n "$require_shared" ]; then
			bbfatal "oe_libinstall: unable to locate shared library"
		fi
	elif [ -z "$libtool" ]; then
		# special case hack for non-libtool .so.#.#.# links
		baselibfile=3D`basename "$libfile"`
		if (echo $baselibfile | grep -qE '^lib.*\.so\.[0-9.]*$'); then
			sonamelink=3D`powerpc-poky-linux-readelf -d $libfile |grep 'Library sona=
me:' |sed -e 's/.*\[\(.*\)\].*/\1/'`
			solink=3D`echo $baselibfile | sed -e 's/\.so\..*/.so/'`
			if [ -n "$sonamelink" -a x"$baselibfile" !=3D x"$sonamelink" ]; then
				__runcmd ln -sf $baselibfile $destpath/$sonamelink
			fi
			__runcmd ln -sf $baselibfile $destpath/$solink
		fi
	fi

	__runcmd cd "$olddir"

}

kernel_do_install() {
	#
	# First install the modules
	#
	unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS MACHINE
	if (grep -q -i -e '^CONFIG_MODULES=3Dy$' .config); then
		oe_runmake DEPMOD=3Decho INSTALL_MOD_PATH=3D"/tool/yocto/poky/build/tmp/w=
ork/virtex5-poky-linux/linux-xilinx-3.3.0-r0/image" modules_install
		rm -f "/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.=
3.0-r0/image/lib/modules/3.3.0-14.2-build1/modules.order"
		rm -f "/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.=
3.0-r0/image/lib/modules/3.3.0-14.2-build1/modules.builtin"
		rm "/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0=
-r0/image/lib/modules/3.3.0-14.2-build1/build"
		rm "/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0=
-r0/image/lib/modules/3.3.0-14.2-build1/source"
	else
		bbnote "no modules to install"
	fi

	#
	# Install various kernel output (zImage, map file, config, module support =
files)
	#
	install -d /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx=
-3.3.0-r0/image/boot
	install -d /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx=
-3.3.0-r0/image/boot
	install -m 0644 arch/powerpc/boot/uImage /tool/yocto/poky/build/tmp/work/v=
irtex5-poky-linux/linux-xilinx-3.3.0-r0/image/boot/uImage-3.3.0-14.2-build1
	install -m 0644 System.map /tool/yocto/poky/build/tmp/work/virtex5-poky-li=
nux/linux-xilinx-3.3.0-r0/image/boot/System.map-3.3.0-14.2-build1
	install -m 0644 .config /tool/yocto/poky/build/tmp/work/virtex5-poky-linux=
/linux-xilinx-3.3.0-r0/image/boot/config-3.3.0-14.2-build1
	install -m 0644 vmlinux /tool/yocto/poky/build/tmp/work/virtex5-poky-linux=
/linux-xilinx-3.3.0-r0/image/boot/vmlinux-3.3.0-14.2-build1
	[ -e Module.symvers ] && install -m 0644 Module.symvers /tool/yocto/poky/b=
uild/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-r0/image/boot/Module.sy=
mvers-3.3.0-14.2-build1
	install -d /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx=
-3.3.0-r0/image/etc/modules-load.d
	install -d /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx=
-3.3.0-r0/image/etc/modprobe.d

	#
	# Support for external module building - create a minimal copy of the
	# kernel source tree.
	#
	kerneldir=3D/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilin=
x-3.3.0-r0/image/kernel
	install -d $kerneldir

	#
	# Store the kernel version in sysroots for module-base.bbclass
	#

	echo "3.3.0-14.2-build1" > $kerneldir/kernel-abiversion

	#
	# Store kernel image name to allow use during image generation
	#

	echo "uImage-3.3.0-r0-virtex5-20120623074645" >$kerneldir/kernel-image-nam=
e

	#
	# Copy the entire source tree. In case an external build directory is
	# used, copy the build directory over first, then copy over the source
	# dir. This ensures the original Makefiles are used and not the
	# redirecting Makefiles in the build directory.
	#
	# work and sysroots can be on different partitions, so we can't rely on
	# hardlinking, unfortunately.
	#
	cp -fR * $kerneldir
	cp .config $kerneldir
	if [ "/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.=
0-r0/git" !=3D "/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xi=
linx-3.3.0-r0/git" ]; then
		cp -fR /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.=
3.0-r0/git/* $kerneldir
	fi
	install -m 0644 arch/powerpc/boot/uImage $kerneldir/uImage
	install -m 0644 System.map $kerneldir/System.map-3.3.0-14.2-build1

	#
	# Clean and remove files not needed for building modules.
	# Some distributions go through a lot more trouble to strip out
	# unecessary headers, for now, we just prune the obvious bits.
	#
	# We don't want to leave host-arch binaries in /sysroots, so
	# we clean the scripts dir while leaving the generated config
	# and include files.
	#
	oe_runmake -C $kerneldir CC=3D"powerpc-poky-linux-gcc  --sysroot=3D/tool/y=
octo/poky/build/tmp/sysroots/virtex5" LD=3D"powerpc-poky-linux-ld  --sysroo=
t=3D/tool/yocto/poky/build/tmp/sysroots/virtex5" clean
	make -C $kerneldir _mrproper_scripts
	find $kerneldir -path $kerneldir/lib -prune -o -path $kerneldir/tools -pru=
ne -o -path $kerneldir/scripts -prune -o -name "*.[csS]" -exec rm '{}' \;
	find $kerneldir/Documentation -name "*.txt" -exec rm '{}' \;

	# As of Linux kernel version 3.0.1, the clean target removes
	# arch/powerpc/lib/crtsavres.o which is present in
	# KBUILD_LDFLAGS_MODULE, making it required to build external modules.
	if [ powerpc =3D "powerpc" ]; then
		cp arch/powerpc/lib/crtsavres.o $kerneldir/arch/powerpc/lib/crtsavres.o
	fi

	# Remove the following binaries which cause strip errors
	# during do_package for cross-compiled platforms
	bin_files=3D"arch/powerpc/boot/addnote arch/powerpc/boot/hack-coff \
	           arch/powerpc/boot/mktree"
	for entry in $bin_files; do
		rm -f $kerneldir/$entry
	done

}

base_do_compile() {
	if [ -e Makefile -o -e makefile ]; then
		oe_runmake || die "make failed"
	else
		bbnote "nothing to compile"
	fi

}

bbfatal() {
	echo "ERROR: $*"
	exit 1

}

package_install_internal_rpm() {

	local target_rootfs=3D"${INSTALL_ROOTFS_RPM}"
	local platform=3D"${INSTALL_PLATFORM_RPM}"
	local platform_extra=3D"${INSTALL_PLATFORM_EXTRA_RPM}"
	local confbase=3D"${INSTALL_CONFBASE_RPM}"
	local package_to_install=3D"${INSTALL_PACKAGES_RPM}"
	local package_attemptonly=3D"${INSTALL_PACKAGES_ATTEMPTONLY_RPM}"
	local package_linguas=3D"${INSTALL_PACKAGES_LINGUAS_RPM}"
	local providename=3D"${INSTALL_PROVIDENAME_RPM}"
	local task=3D"${INSTALL_TASK_RPM}"

	# Setup base system configuration
	mkdir -p ${target_rootfs}/etc/rpm/
	echo "${platform}-poky-linux" > ${target_rootfs}/etc/rpm/platform
	if [ ! -z "$platform_extra" ]; then
		for pt in $platform_extra ; do
			case $pt in
				noarch | any | all)
					os=3D"`echo linux | sed "s,-.*,,"`.*"
					;;
				*)
					os=3D"linux"
					;;
			esac
			echo "$pt-.*-$os" >> ${target_rootfs}/etc/rpm/platform
		done
	fi

	# Tell RPM that the "/" directory exist and is available
	mkdir -p ${target_rootfs}/etc/rpm/sysinfo
	echo "/" >${target_rootfs}/etc/rpm/sysinfo/Dirnames
	if [ ! -z "$providename" ]; then
		cat /dev/null > ${target_rootfs}/etc/rpm/sysinfo/Providename
		for provide in $providename ; do
			echo $provide >> ${target_rootfs}/etc/rpm/sysinfo/Providename
		done
	fi

	# Setup manifest of packages to install...
	mkdir -p ${target_rootfs}/install
	rm -f ${target_rootfs}/install/install.manifest

	# Uclibc builds don't provide this stuff...
	if [ xlinux =3D "xlinux" ] || [ xlinux =3D "xlinux-gnueabi" ] ; then
		if [ ! -z "${package_linguas}" ]; then
			for pkg in ${package_linguas}; do
				echo "Processing $pkg..."

				archvar=3Dbase_archs
				manifest=3Dinstall.manifest
				ml_prefix=3D`echo ${pkg} | cut -d'-' -f1`
				ml_pkg=3D$pkg
				for i in ${MULTILIB_PREFIX_LIST} ; do
					if [ ${ml_prefix} =3D ${i} ]; then
						ml_pkg=3D$(echo ${pkg} | sed "s,^${ml_prefix}-\(.*\),\1,")
						archvar=3Dml_archs
						manifest=3Dinstall_multilib.manifest
						break
					fi
				done

				pkg_name=3D$(resolve_package_rpm ${confbase}-${archvar}.conf ${ml_pkg})
				if [ -z "$pkg_name" ]; then
					echo "Unable to find package $pkg ($ml_pkg)!"
					exit 1
				fi
				echo $pkg_name >> ${target_rootfs}/install/${manifest}
			done
		fi
	fi
	if [ ! -z "${package_to_install}" ]; then
		for pkg in ${package_to_install} ; do
			echo "Processing $pkg..."

			archvar=3Dbase_archs
			manifest=3Dinstall.manifest
			ml_prefix=3D`echo ${pkg} | cut -d'-' -f1`
			ml_pkg=3D$pkg
			for i in ${MULTILIB_PREFIX_LIST} ; do
				if [ ${ml_prefix} =3D ${i} ]; then
					ml_pkg=3D$(echo ${pkg} | sed "s,^${ml_prefix}-\(.*\),\1,")
					archvar=3Dml_archs
					manifest=3Dinstall_multilib.manifest
					break
				fi
			done

			pkg_name=3D$(resolve_package_rpm ${confbase}-${archvar}.conf ${ml_pkg})
			if [ -z "$pkg_name" ]; then
				echo "Unable to find package $pkg ($ml_pkg)!"
				exit 1
			fi
			echo $pkg_name >> ${target_rootfs}/install/${manifest}
		done
	fi

	# Normal package installation

	# Generate an install solution by doing a --justdb install, then recreate =
it with
	# an actual package install!
	if [ -s ${target_rootfs}/install/install.manifest ]; then
		echo "# Install manifest padding" >> ${target_rootfs}/install/install.man=
ifest
		rpm --predefine "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" \
			--predefine "_rpmrc_platform_path ${target_rootfs}/etc/rpm/platform" \
			--root "${target_rootfs}/install" \
			-D "_dbpath ${target_rootfs}/install" -D "`cat ${confbase}-base_archs.ma=
cro`" \
			-D "__dbi_txn create nofsync" \
			-U --justdb --noscripts --notriggers --noparentdirs --nolinktos --ignore=
size \
			${target_rootfs}/install/install.manifest
	fi

	if [ ! -z "${package_attemptonly}" ]; then
		echo "Adding attempt only packages..."
		for pkg in ${package_attemptonly} ; do
			echo "Processing $pkg..."
			archvar=3Dbase_archs
			ml_prefix=3D`echo ${pkg} | cut -d'-' -f1`
			ml_pkg=3D$pkg
			for i in ${MULTILIB_PREFIX_LIST} ; do
				if [ ${ml_prefix} =3D ${i} ]; then
					ml_pkg=3D$(echo ${pkg} | sed "s,^${ml_prefix}-\(.*\),\1,")
					archvar=3Dml_archs
					break
				fi
			done

			pkg_name=3D$(resolve_package_rpm ${confbase}-${archvar}.conf ${ml_pkg})
			if [ -z "$pkg_name" ]; then
				echo "Note: Unable to find package $pkg ($ml_pkg) -- PACKAGE_INSTALL_AT=
TEMPTONLY"
				continue
			fi
			echo "Attempting $pkg_name..." >> "/tool/yocto/poky/build/tmp/work/virte=
x5-poky-linux/linux-xilinx-3.3.0-r0/temp/log.do_${task}_attemptonly.${PID}"
			rpm --predefine "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" \
				--predefine "_rpmrc_platform_path ${target_rootfs}/etc/rpm/platform" \
				--root "${target_rootfs}/install" \
				-D "_dbpath ${target_rootfs}/install" -D "`cat ${confbase}.macro`" \
				-D "__dbi_txn create nofsync private" \
				-U --justdb --noscripts --notriggers --noparentdirs --nolinktos --ignor=
esize \
			$pkg_name >> "/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-x=
ilinx-3.3.0-r0/temp/log.do_${task}_attemptonly.${PID}" || true
		done
	fi

	#### Note: 'Recommends' is an arbitrary tag that means _SUGGESTS_ in OE-co=
re..
	# Add any recommended packages to the image
	# RPM does not solve for recommended packages because they are optional...
	# So we query them and tree them like the ATTEMPTONLY packages above...
	# Change the loop to "1" to run this code...
	loop=3D0
	if [ $loop -eq 1 ]; then
	 echo "Processing recommended packages..."
	 cat /dev/null >  ${target_rootfs}/install/recommend.list
	 while [ $loop -eq 1 ]; do
		# Dump the full set of recommends...
		rpm --predefine "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" \
			--predefine "_rpmrc_platform_path ${target_rootfs}/etc/rpm/platform" \
			--root "${target_rootfs}/install" \
			-D "_dbpath ${target_rootfs}/install" -D "`cat ${confbase}.macro`" \
			-D "__dbi_txn create nofsync private" \
			-qa --qf "[%{RECOMMENDS}\n]" | sort -u > ${target_rootfs}/install/recomm=
end
		# Did we add more to the list?
		grep -v -x -F -f ${target_rootfs}/install/recommend.list ${target_rootfs}=
/install/recommend > ${target_rootfs}/install/recommend.new || true
		# We don't want to loop unless there is a change to the list!
		loop=3D0
		cat ${target_rootfs}/install/recommend.new | \
		 while read pkg ; do
			# Ohh there was a new one, we'll need to loop again...
			loop=3D1
			echo "Processing $pkg..."
			found=3D0
			for archvar in base_archs ml_archs ; do
				pkg_name=3D$(resolve_package_rpm ${confbase}-${archvar}.conf ${pkg})
				if [ -n "$pkg_name" ]; then
					found=3D1
					break
				fi
			done

			if [ $found -eq 0 ]; then
				echo "Note: Unable to find package $pkg -- suggests"
				echo "Unable to find package $pkg." >> "/tool/yocto/poky/build/tmp/work=
/virtex5-poky-linux/linux-xilinx-3.3.0-r0/temp/log.do_${task}_recommend.${P=
ID}"
				continue
			fi
			echo "Attempting $pkg_name..." >> "/tool/yocto/poky/build/tmp/work/virte=
x5-poky-linux/linux-xilinx-3.3.0-r0/temp/log.do_{task}_recommend.${PID}"
			rpm --predefine "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" \
				--predefine "_rpmrc_platform_path ${target_rootfs}/etc/rpm/platform" \
				--root "${target_rootfs}/install" \
				-D "_dbpath ${target_rootfs}/install" -D "`cat ${confbase}.macro`" \
				-D "__dbi_txn create nofsync private" \
				-U --justdb --noscripts --notriggers --noparentdirs --nolinktos --ignor=
esize \
				$pkg_name >> "/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-=
xilinx-3.3.0-r0/temp/log.do_${task}_recommend.${PID}" 2>&1 || true
		done
		cat ${target_rootfs}/install/recommend.list ${target_rootfs}/install/reco=
mmend.new | sort -u > ${target_rootfs}/install/recommend.new.list
		mv -f ${target_rootfs}/install/recommend.new.list ${target_rootfs}/instal=
l/recommend.list
		rm ${target_rootfs}/install/recommend ${target_rootfs}/install/recommend.=
new
	 done
	fi

	# Now that we have a solution, pull out a list of what to install...
	echo "Manifest: ${target_rootfs}/install/install.manifest"
	rpm -D "_dbpath ${target_rootfs}/install" -qa --qf "%{packageorigin}\n" \
		--root "${target_rootfs}/install" \
		-D "__dbi_txn create nofsync private" \
		> ${target_rootfs}/install/install_solution.manifest

	touch ${target_rootfs}/install/install_multilib_solution.manifest

	if [ -s "${target_rootfs}/install/install_multilib.manifest" ]; then
		# multilib package installation
		echo "# Install multilib manifest padding" >> ${target_rootfs}/install/in=
stall_multilib.manifest

		# Generate an install solution by doing a --justdb install, then recreate=
 it with
		# an actual package install!
		rpm --predefine "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" \
			--predefine "_rpmrc_platform_path ${target_rootfs}/etc/rpm/platform" \
			--root "${target_rootfs}/install" \
			-D "_dbpath ${target_rootfs}/install" -D "`cat ${confbase}-ml_archs.macr=
o`" \
			-D "__dbi_txn create nofsync" \
			-U --justdb --noscripts --notriggers --noparentdirs --nolinktos --ignore=
size \
			${target_rootfs}/install/install_multilib.manifest

		# Now that we have a solution, pull out a list of what to install...
		echo "Manifest: ${target_rootfs}/install/install_multilib.manifest"
		rpm -D "_dbpath ${target_rootfs}/install" -qa --qf "%{packageorigin}\n" \
			--root "${target_rootfs}/install" \
			-D "__dbi_txn create nofsync private" \
			> ${target_rootfs}/install/install_multilib_solution.manifest

	fi

	cat ${target_rootfs}/install/install_solution.manifest > ${target_rootfs}/=
install/total_solution.manifest
	cat ${target_rootfs}/install/install_multilib_solution.manifest >> ${targe=
t_rootfs}/install/total_solution.manifest

	# Construct install scriptlet wrapper
	cat << EOF > /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xili=
nx-3.3.0-r0/scriptlet_wrapper
#!/bin/bash

export PATH=3D"/tool/yocto/poky/scripts:/tool/yocto/poky/build/tmp/sysroots=
/x86_64-linux/usr/bin/ppc440-poky-linux:/tool/yocto/poky/build/tmp/sysroots=
/virtex5/usr/bin/crossscripts:/tool/yocto/poky/build/tmp/sysroots/x86_64-li=
nux/usr/sbin:/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin:/tool=
/yocto/poky/build/tmp/sysroots/x86_64-linux/sbin:/tool/yocto/poky/build/tmp=
/sysroots/x86_64-linux//bin:/tool/yocto/poky/scripts:/tool/yocto/poky/bitba=
ke/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/=
usr/bin:/sbin:/bin:/usr/games"
export D=3D"${target_rootfs}"
export OFFLINE_ROOT=3D"\$D"
export IPKG_OFFLINE_ROOT=3D"\$D"
export OPKG_OFFLINE_ROOT=3D"\$D"

\$2 \$1/\$3 \$4
if [ \$? -ne 0 ]; then
  mkdir -p \$1/etc/rpm-postinsts
  num=3D100
  while [ -e \$1/etc/rpm-postinsts/\${num} ]; do num=3D\$((num + 1)); done
  echo "#!\$2" > \$1/etc/rpm-postinsts/\${num}
  echo "# Arg: \$4" >> \$1/etc/rpm-postinsts/\${num}
  cat \$1/\$3 >> \$1/etc/rpm-postinsts/\${num}
  chmod +x \$1/etc/rpm-postinsts/\${num}
fi
EOF

	chmod 0755 /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx=
-3.3.0-r0/scriptlet_wrapper

	# Configure RPM... we enforce these settings!
	mkdir -p ${target_rootfs}${rpmlibdir}
	mkdir -p ${target_rootfs}${rpmlibdir}/log
	# After change the __db.* cache size, log file will not be generated autom=
atically,
	# that will raise some warnings, so touch a bare log for rpm write into it=
.
	touch ${target_rootfs}${rpmlibdir}/log/log.0000000001
	cat > ${target_rootfs}${rpmlibdir}/DB_CONFIG << EOF
# =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Environment
set_data_dir .
set_create_dir .
set_lg_dir ./log
set_tmp_dir ./tmp
set_flags db_log_autoremove on

# -- thread_count must be >=3D 8
set_thread_count 64

# =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Logging

# =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Memory Pool
set_cachesize 0 1048576 0
set_mp_mmapsize 268435456

# =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Locking
set_lk_max_locks 16384
set_lk_max_lockers 16384
set_lk_max_objects 16384
mutex_set_max 163840

# =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Replication
EOF

	# RPM is special. It can't handle dependencies and preinstall scripts corr=
ectly. Its
	# probably a feature. The only way to convince rpm to actually run the pre=
install scripts
	# for base-passwd and shadow first before installing packages that depend =
on these packages
	# is to do two image installs, installing one set of packages, then the ot=
her.
	if [ "${INC_RPM_IMAGE_GEN}" =3D "1" -a -f "$pre_btmanifest" ]; then
		echo "Skipping pre install due to exisitng image"
	else
		rm -f ${target_rootfs}/install/initial_install.manifest
		echo "Installing base dependencies first (base-passwd, base-files and sha=
dow) since rpm is special"
		grep /base-passwd-[0-9] ${target_rootfs}/install/total_solution.manifest =
>> ${target_rootfs}/install/initial_install.manifest || true
		grep /base-files-[0-9] ${target_rootfs}/install/total_solution.manifest >=
> ${target_rootfs}/install/initial_install.manifest || true
		grep /shadow-[0-9] ${target_rootfs}/install/total_solution.manifest >> ${=
target_rootfs}/install/initial_install.manifest || true

		if [ -s ${target_rootfs}/install/initial_install.manifest ]; then
			echo "# Initial Install manifest padding..." >> ${target_rootfs}/install=
/initial_install.manifest

			# Generate an install solution by doing a --justdb install, then recreat=
e it with
			# an actual package install!
			mkdir -p ${target_rootfs}/initial

			rpm --predefine "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" \
				--predefine "_rpmrc_platform_path ${target_rootfs}/etc/rpm/platform" \
				--root "${target_rootfs}/install" \
				-D "_dbpath ${target_rootfs}/initial" -D "`cat ${confbase}.macro`" \
				-D "__dbi_txn create nofsync" \
				-U --justdb --noscripts --notriggers --noparentdirs --nolinktos --ignor=
esize \
				${target_rootfs}/install/initial_install.manifest

			rpm -D "_dbpath ${target_rootfs}/initial" -qa --qf "%{packageorigin}\n" =
\
				-D "__dbi_txn create nofsync private" \
				--root "${target_rootfs}/install" \
				> ${target_rootfs}/install/initial_solution.manifest

			rpm_update_pkg ${target_rootfs}/install/initial_solution.manifest

			grep -Fv -f ${target_rootfs}/install/initial_solution.manifest ${target_=
rootfs}/install/total_solution.manifest > ${target_rootfs}/install/total_so=
lution.manifest.new
			mv ${target_rootfs}/install/total_solution.manifest.new ${target_rootfs}=
/install/total_solution.manifest

			rm -rf ${target_rootfs}/initial
		fi
	fi

	echo "Installing main solution manifest (${target_rootfs}/install/total_so=
lution.manifest)"

	rpm_update_pkg ${target_rootfs}/install/total_solution.manifest

}

bbwarn() {
	echo "WARNING: $*"

}

rpm_common_comand() {

    local target_rootfs=3D"${INSTALL_ROOTFS_RPM}"

    rpm --root ${target_rootfs} \
        --predefine "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" =
\
        --predefine "_rpmrc_platform_path ${target_rootfs}/etc/rpm/platform=
" \
        -D "_var /var" \
        -D "_dbpath ${rpmlibdir}" \
        -D "_tmppath /install/tmp" \
        --noparentdirs --nolinktos \
        -D "__dbi_txn create nofsync private" \
        -D "_cross_scriptlet_wrapper /tool/yocto/poky/build/tmp/work/virtex=
5-poky-linux/linux-xilinx-3.3.0-r0/scriptlet_wrapper" $@

}

do_package_write() {
	:

}

rpm_update_pkg() {

    manifest=3D$1
    btmanifest=3D$manifest.bt.manifest
    pre_btmanifest=3D/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/lin=
ux-xilinx-3.3.0-r0/temp/${btmanifest##/*/}
    local target_rootfs=3D"${INSTALL_ROOTFS_RPM}"

    # Save the rpm's build time for incremental image generation, and the f=
ile
    # would be moved to /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/=
linux-xilinx-3.3.0-r0/temp
    for i in `cat $manifest`; do
        # Use "rpm" rather than "rpm" here, since we don't need the
        # '--dbpath' option
        echo "$i `rpm -qp --qf '%{BUILDTIME}\n' $i`"
    done | sort -u > $btmanifest

    # Only install the different pkgs if incremental image generation is se=
t
    if [ "${INC_RPM_IMAGE_GEN}" =3D "1" -a -f "$pre_btmanifest" -a \
        "rpm" =3D "rpm" ]; then
        comm -1 -3 $btmanifest $pre_btmanifest | sed 's#.*/\(.*\)\.rpm .*#\=
1#' > \
            ${target_rootfs}/install/remove.manifest
        comm -2 -3 $btmanifest $pre_btmanifest | awk '{print $1}' > \
            ${target_rootfs}/install/incremental.manifest

        # Attempt to remove unwanted pkgs, the scripts(pre, post, etc.) has=
 not
        # been run by now, so don't have to run them(preun, postun, etc.) w=
hen
        # erase the pkg
        if [ -s ${target_rootfs}/install/remove.manifest ]; then
            rpm_common_comand --noscripts --nodeps \
                -e `cat ${target_rootfs}/install/remove.manifest`
        fi

        # Attempt to install the incremental pkgs
        if [ -s ${target_rootfs}/install/incremental.manifest ]; then
            rpm_common_comand --nodeps --replacefiles --replacepkgs \
               -Uvh ${target_rootfs}/install/incremental.manifest
        fi
    else
        # Attempt to install
        rpm_common_comand --replacepkgs -Uhv $manifest
    fi

}

sysroot_stage_dirs() {
	from=3D"$1"
	to=3D"$2"

	sysroot_stage_dir $from/usr/include $to/usr/include
	if [ "x86_64-linux" =3D "powerpc-poky-linux" ]; then
		sysroot_stage_dir $from/usr/bin $to/usr/bin
		sysroot_stage_dir $from/usr/sbin $to/usr/sbin
		sysroot_stage_dir $from/bin $to/bin
		sysroot_stage_dir $from/sbin $to/sbin
		sysroot_stage_dir $from/usr/libexec $to/usr/libexec
		sysroot_stage_dir $from/etc $to/etc
		sysroot_stage_dir $from/var $to/var
	fi
	if [ -d $from/usr/lib ]
	then
		sysroot_stage_libdir $from//usr/lib $to/usr/lib
	fi
	if [ -d $from/lib ]
	then
		sysroot_stage_libdir $from/lib $to/lib
	fi
	sysroot_stage_dir $from/usr/share $to/usr/share

}

do_checkuriall() {
	:

}

packagedstaging_fastpath() {
	:

}

sstate_unpack_package() {
	mkdir -p ${SSTATE_INSTDIR}
	cd ${SSTATE_INSTDIR}
	tar -xvzf /tool/yocto/poky/build/sstate-cache/sstate-linux-xilinx-virtex5-=
poky-linux-3.3.0-r0-virtex5-2-${BB_TASKHASH}

}

package_generate_rpm_conf_common() {
	rpmconf_base=3D"$1"
	shift

	printf "_solve_dbpath " > ${rpmconf_base}.macro
	o_colon=3D"false"

	for archvar in "$@"; do
		printf "_solve_dbpath " > ${rpmconf_base}-${archvar}.macro
		colon=3D"false"
		for each in `cat ${rpmconf_base}-${archvar}.conf` ; do
			if [ "$o_colon" =3D "true" ]; then
				printf ":" >> ${rpmconf_base}.macro
			fi
			if [ "$colon" =3D "true" ]; then
				printf ":" >> ${rpmconf_base}-${archvar}.macro
			fi
			printf "%s" $each >> ${rpmconf_base}.macro
			o_colon=3D"true"
			printf "%s" $each >> ${rpmconf_base}-${archvar}.macro
			colon=3D"true"
		done
		printf "\n" >> ${rpmconf_base}-${archvar}.macro
	done
	printf "\n" >> ${rpmconf_base}.macro

}

sysroot_stage_all() {
	sysroot_stage_dirs /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linu=
x-xilinx-3.3.0-r0/image /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/=
linux-xilinx-3.3.0-r0/sysroot-destdir/
	sysroot_stage_dir /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux=
-xilinx-3.3.0-r0/image/kernel /tool/yocto/poky/build/tmp/work/virtex5-poky-=
linux/linux-xilinx-3.3.0-r0/sysroot-destdir//kernel

}

license_create_manifest() {
	mkdir -p /tool/yocto/poky/build/tmp/deploy/licenses/linux-xilinx-virtex5-2=
0120623074645
	# Get list of installed packages
	list_installed_packages | grep -v "locale" |sort > /tool/yocto/poky/build/=
tmp/deploy/licenses/linux-xilinx-virtex5-20120623074645/package.manifest
	INSTALLED_PKGS=3D`cat /tool/yocto/poky/build/tmp/deploy/licenses/linux-xil=
inx-virtex5-20120623074645/package.manifest`
	# remove existing license.manifest file
	if [ -f /tool/yocto/poky/build/tmp/deploy/licenses/linux-xilinx-virtex5-20=
120623074645/license.manifest ]; then
		rm /tool/yocto/poky/build/tmp/deploy/licenses/linux-xilinx-virtex5-201206=
23074645/license.manifest
	fi
	# list of installed packages is broken for deb
	for pkg in ${INSTALLED_PKGS}; do
		# not the best way to do this but licenses are not arch dependant iirc
		filename=3D`ls /tool/yocto/poky/build/tmp/pkgdata/*/runtime/${pkg}| head =
-1`
		pkged_pn=3D"$(sed -n 's/^PN: //p' ${filename})"
		pkged_lic=3D"$(sed -n '/^LICENSE: /{ s/^LICENSE: //; s/[+|&()*]/ /g; s/  =
*/ /g; p }' ${filename})"
		pkged_pv=3D"$(sed -n 's/^PV: //p' ${filename})"
		# check to see if the package name exists in the manifest. if so, bail.
		if ! grep -q "PACKAGE NAME: ${pkg}" ${filename}; then
			# exclude local recipes
			if [ ! "${pkged_pn}" =3D "*locale*" ]; then
				echo "PACKAGE NAME:" ${pkg} >> /tool/yocto/poky/build/tmp/deploy/licens=
es/linux-xilinx-virtex5-20120623074645/license.manifest
				echo "PACKAGE VERSION:" ${pkged_pv} >> /tool/yocto/poky/build/tmp/deplo=
y/licenses/linux-xilinx-virtex5-20120623074645/license.manifest
				echo "RECIPE NAME:" ${pkged_pn} >> /tool/yocto/poky/build/tmp/deploy/li=
censes/linux-xilinx-virtex5-20120623074645/license.manifest
				echo "LICENSE: " >> /tool/yocto/poky/build/tmp/deploy/licenses/linux-xi=
linx-virtex5-20120623074645/license.manifest
				for lic in ${pkged_lic}; do
					if [ -e "/tool/yocto/poky/build/tmp/deploy/licenses/${pkged_pn}/generi=
c_${lic}" ]; then
						echo ${lic}|sed s'/generic_//'g >> /tool/yocto/poky/build/tmp/deploy/=
licenses/linux-xilinx-virtex5-20120623074645/license.manifest
					else
						echo "WARNING: The license listed, " ${lic} " was not in the licenses=
 collected for " ${pkged_pn}>> /tool/yocto/poky/build/tmp/deploy/licenses/l=
inux-xilinx-virtex5-20120623074645/license.manifest
					fi
				done
				echo "" >> /tool/yocto/poky/build/tmp/deploy/licenses/linux-xilinx-virt=
ex5-20120623074645/license.manifest
			fi
		fi
	done

	# Two options here:
	# - Just copy the manifest
	# - Copy the manifest and the license directories
	# With both options set we see a .5 M increase in core-image-minimal
	if [ -n "${COPY_LIC_MANIFEST}" ]; then
		mkdir -p /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-=
3.3.0-r0/rootfs/usr/share/common-licenses/
		cp /tool/yocto/poky/build/tmp/deploy/licenses/linux-xilinx-virtex5-201206=
23074645/license.manifest /tool/yocto/poky/build/tmp/work/virtex5-poky-linu=
x/linux-xilinx-3.3.0-r0/rootfs/usr/share/common-licenses/license.manifest
		if [ -n "${COPY_LIC_DIRS}" ]; then
			for pkg in ${INSTALLED_PKGS}; do
				mkdir -p /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilin=
x-3.3.0-r0/rootfs/usr/share/common-licenses/${pkg}
				for lic in `ls /tool/yocto/poky/build/tmp/deploy/licenses/${pkg}`; do
					# Really don't need to copy the generics as they're
					# represented in the manifest and in the actual pkg licenses
					# Doing so would make your image quite a bit larger
					if [[ "${lic}" !=3D "generic_"* ]]; then
						cp /tool/yocto/poky/build/tmp/deploy/licenses/${pkg}/${lic} /tool/yoc=
to/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-r0/rootfs/usr/=
share/common-licenses/${pkg}/${lic}
					elif [[ "${lic}" =3D=3D "generic_"* ]]; then
						if [ ! -f /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xi=
linx-3.3.0-r0/rootfs/usr/share/common-licenses/${lic} ]; then
							cp /tool/yocto/poky/build/tmp/deploy/licenses/${pkg}/${lic} /tool/yo=
cto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-r0/rootfs/usr=
/share/common-licenses/
						fi
						ln -s ../${lic} /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/li=
nux-xilinx-3.3.0-r0/rootfs/usr/share/common-licenses/${pkg}/${lic}
					fi
				done
			done
		fi
	fi


}

mklibs_optimize_image() {
	for img in ${MKLIBS_OPTIMIZED_IMAGES}
	do
		if [ "${img}" =3D "linux-xilinx" ] || [ "${img}" =3D "all" ]
		then
			mklibs_optimize_image_doit
			break
		fi
	done

}

oe_runmake() {
	if [ x"$MAKE" =3D x ]; then MAKE=3Dmake; fi
	bbnote make  "$@"
	make  "$@" || die "oe_runmake failed"

}

bberror() {
	echo "ERROR: $*"

}

mklibs_optimize_image_doit() {
	rm -rf /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3=
.0-r0/mklibs
	mkdir -p /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3=
.3.0-r0/mklibs/dest
	cd /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-r=
0/rootfs
	du -bs > /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3=
.3.0-r0/mklibs/du.before.mklibs.txt
	for i in `find .`; do file $i; done \
		| grep ELF \
		| grep "LSB executable" \
		| grep "dynamically linked" \
		| sed "s/:.*//" \
		| sed "s+^\./++" \
		> /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-r=
0/mklibs/executables.list

	case powerpc in
		powerpc | mips | microblaze )
			dynamic_loader=3D"/lib/ld.so.1"
			;;
		powerpc64)
			dynamic_loader=3D"/lib/ld64.so.1"
			;;
		x86_64)
			dynamic_loader=3D"/lib/ld-linux-x86-64.so.2"
			;;
		i586 )
			dynamic_loader=3D"/lib/ld-linux.so.2"
			;;
		arm )
			dynamic_loader=3D"/lib/ld-linux.so.3"
			;;
		* )
			dynamic_loader=3D"/unknown_dynamic_linker"
			;;
	esac

	mklibs -v \
		--ldlib ${dynamic_loader} \
		--sysroot /tool/yocto/poky/build/tmp/sysroots/virtex5 \
		--root /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.=
3.0-r0/rootfs \
		--target `echo powerpc-poky-linux- | sed 's/-$//' ` \
		-d /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-=
r0/mklibs/dest \
		`cat /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.=
0-r0/mklibs/executables.list`

	cd /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-r=
0/mklibs/dest
	for i in *
	do
		cp $i `find /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xili=
nx-3.3.0-r0/rootfs -name $i`
	done

	cd /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-r=
0/rootfs
	du -bs > /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3=
.3.0-r0/mklibs/du.after.mklibs.txt

	echo rootfs size before mklibs optimization: `cat /tool/yocto/poky/build/t=
mp/work/virtex5-poky-linux/linux-xilinx-3.3.0-r0/mklibs/du.before.mklibs.tx=
t`
	echo rootfs size after mklibs optimization: `cat /tool/yocto/poky/build/tm=
p/work/virtex5-poky-linux/linux-xilinx-3.3.0-r0/mklibs/du.after.mklibs.txt`

}



python do_devshell () {
    oe_terminal(d.getVar('SHELL', True), 'OpenEmbedded Developer Shell', d)
}


python oe_import_eh () {
    if isinstance(e, bb.event.ConfigParsed):
	oe_import(e.data)
}


python package_qa_check_unsafe_references_in_scripts () {
def package_qa_check_unsafe_references_in_scripts(path, name, d, elf, messa=
ges):
	"""
	Warn if scripts in base_[bindir|sbindir|libdir] reference files under exec=
_prefix
	"""
	if unsafe_references_skippable(path, name, d):
		return

	if not elf:
		import stat
		import subprocess
		pn =3D d.getVar('PN', True)

		# Ensure we're checking an executable script
		statinfo =3D os.stat(path)
		if bool(statinfo.st_mode & stat.S_IXUSR):
			# grep shell scripts for possible references to /exec_prefix/
			exec_prefix =3D d.getVar('exec_prefix', True)
			statement =3D "grep -e '%s/' %s > /dev/null" % (exec_prefix, path)
			if subprocess.call(statement, shell=3DTrue) =3D=3D 0:
				error_msg =3D pn + ": Found a reference to %s/ in %s" % (exec_prefix, p=
ath)
				package_qa_handle_error("unsafe-references-in-scripts", error_msg, d)
				error_msg =3D "Shell scripts in base_bindir and base_sbindir should not=
 reference anything in exec_prefix"
				package_qa_handle_error("unsafe-references-in-scripts", error_msg, d)
}


python gen_packagevar () {
def gen_packagevar(d):
    ret =3D []
    pkgs =3D (d.getVar("PACKAGES", True) or "").split()
    vars =3D (d.getVar("PACKAGEVARS", True) or "").split()
    for p in pkgs:
        for v in vars:
            ret.append(v + "_" + p)
    return " ".join(ret)
}


python check_connectivity () {
def check_connectivity(d):
    # URI's to check can be set in the CONNECTIVITY_CHECK_URIS variable
    # using the same syntax as for SRC_URI. If the variable is not set
    # the check is skipped
    test_uris =3D (d.getVar('CONNECTIVITY_CHECK_URIS', True) or "").split()
    retval =3D ""

    # Only check connectivity if network enabled and the
    # CONNECTIVITY_CHECK_URIS are set
    network_enabled =3D not d.getVar('BB_NO_NETWORK', True)
    check_enabled =3D len(test_uris)
    # Take a copy of the data store and unset MIRRORS and PREMIRROS
    data =3D bb.data.createCopy(d)
    data.delVar('PREMIRRORS')
    data.delVar('MIRRORS')
    if check_enabled and network_enabled:
        try:
            fetcher =3D bb.fetch2.Fetch(test_uris, data)
            fetcher.checkstatus()
        except Exception:
            # Allow the message to be configured so that users can be
            # pointed to a support mechanism.
            msg =3D data.getVar('CONNECTIVITY_CHECK_MSG', True) or ""
            if len(msg) =3D=3D 0:
                msg =3D "Failed to fetch test data from the network. Please=
 ensure your network is configured correctly.\n"
            retval =3D msg

    return retval
}


python do_cleansstate () {
        sstate_clean_cachefiles(d)
}


python package_rpm_fn () {
	d.setVar('PKGFN', d.getVar('PKG'))
}


python get_libc_locales_dependencies () {
def get_libc_locales_dependencies(d):
    if 'libc-locales' in (d.getVar('DISTRO_FEATURES', True) or '').split() =
:
        return d.getVar('LIBC_LOCALE_DEPENDENCIES', True) or ''
    else:
        return ''}


python get_kernelversion () {
def get_kernelversion(p):
    import re

    fn =3D p + '/include/linux/utsrelease.h'
    if not os.path.isfile(fn):
        # after 2.6.33-rc1
        fn =3D p + '/include/generated/utsrelease.h'
    if not os.path.isfile(fn):
        fn =3D p + '/include/linux/version.h'

    import re
    try:
        f =3D open(fn, 'r')
    except IOError:
        return None

    l =3D f.readlines()
    f.close()
    r =3D re.compile("#define UTS_RELEASE \"(.*)\"")
    for s in l:
        m =3D r.match(s)
        if m:
            return m.group(1)
    return None
}


python splitfile2 () {
def splitfile2(debugsrcdir, d):
    # Function to split a single file, called from split_and_strip_files be=
low
    #
    # The debug src information processed in the splitfile2 is further proc=
ecessed
    # and copied to the destination here.

    import commands, stat, subprocess

    sourcefile =3D d.expand("/tool/yocto/poky/build/tmp/work/virtex5-poky-l=
inux/linux-xilinx-3.3.0-r0/debugsources.list")
    if debugsrcdir and os.path.isfile(sourcefile):
       dvar =3D d.getVar('PKGD', True)
       pathprefix =3D "export PATH=3D%s; " % d.getVar('PATH', True)
       strip =3D d.getVar("STRIP", True)
       objcopy =3D d.getVar("OBJCOPY", True)
       debugedit =3D d.expand("/tool/yocto/poky/build/tmp/sysroots/x86_64-l=
inux/usr/lib/rpm/bin/debugedit")
       workdir =3D d.getVar("WORKDIR", True)
       workparentdir =3D os.path.dirname(workdir)
       workbasedir =3D os.path.basename(workdir)

       nosuchdir =3D []
       basepath =3D dvar
       for p in debugsrcdir.split("/"):
           basepath =3D basepath + "/" + p
           if not os.path.exists(basepath):
               nosuchdir.append(basepath)
       bb.mkdirhier(basepath)

       processdebugsrc =3D  "LC_ALL=3DC ; sort -z -u '%s' | egrep -v -z '(<=
internal>|<built-in>)$' | "
       # We need to ignore files that are not actually ours
       # we do this by only paying attention to items from this package
       processdebugsrc +=3D "fgrep -z '%s' | "
       processdebugsrc +=3D "(cd '%s' ; cpio -pd0mL --no-preserve-owner '%s=
%s' 2>/dev/null)"

       subprocess.call(processdebugsrc % (sourcefile, workbasedir, workpare=
ntdir, dvar, debugsrcdir), shell=3DTrue)

       # The copy by cpio may have resulted in some empty directories!  Rem=
ove these
       for root, dirs, files in os.walk("%s%s" % (dvar, debugsrcdir)):
          for d in dirs:
              dir =3D os.path.join(root, d)
              #bb.note("rmdir -p %s" % dir)
              subprocess.call("rmdir -p %s 2>/dev/null" % dir, shell=3DTrue=
)

       # Also remove debugsrcdir if its empty
       for p in nosuchdir[::-1]:
           if os.path.exists(p) and not os.listdir(p):
               os.rmdir(p)
}


python return_spdx () {
def return_spdx(d, license):
    """
    This function returns the spdx mapping of a license.
    """
    if d.getVarFlag('SPDXLICENSEMAP', license) !=3D None:
        return license
    else:
        return d.getVarFlag('SPDXLICENSEMAP', license_type)
}


python base_version_less_or_equal () {
def base_version_less_or_equal(variable, checkvalue, truevalue, falsevalue,=
 d):
    return oe.utils.version_less_or_equal(variable, checkvalue, truevalue, =
falsevalue, d)
}


python get_cputime () {
def get_cputime():
    fields =3D open("/proc/stat", "r").readline().rstrip().split()[1:]
    return sum(int(field) for field in fields)
}


python base_do_patch () {
	bb.build.exec_func('patch_do_patch', d)
}


python runtime_mapping_rename () {
def runtime_mapping_rename (varname, d):
	#bb.note("%s before: %s" % (varname, d.getVar(varname, True)))

	new_depends =3D []
	deps =3D bb.utils.explode_dep_versions(d.getVar(varname, True) or "")
	for depend in deps:
		# Have to be careful with any version component of the depend
		new_depend =3D get_package_mapping(depend, d)
		if deps[depend]:
			new_depends.append("%s (%s)" % (new_depend, deps[depend]))
		else:
			new_depends.append(new_depend)

	d.setVar(varname, " ".join(new_depends) or None)

	#bb.note("%s after: %s" % (varname, d.getVar(varname, True)))
}


python split_and_strip_files () {
	import commands, stat, errno, subprocess

	dvar =3D d.getVar('PKGD', True)
	pn =3D d.getVar('PN', True)

	# We default to '.debug' style
	if d.getVar('PACKAGE_DEBUG_SPLIT_STYLE', True) =3D=3D 'debug-file-director=
y':
		# Single debug-file-directory style debug info
		debugappend =3D ".debug"
		debugdir =3D ""
		debuglibdir =3D "/usr/lib/debug"
		debugsrcdir =3D "/usr/src/debug"
	else:
		# Original OE-core, a.k.a. ".debug", style debug info
		debugappend =3D ""
		debugdir =3D "/.debug"
		debuglibdir =3D ""
		debugsrcdir =3D "/usr/src/debug"

	os.chdir(dvar)

	# Return type (bits):
	# 0 - not elf
	# 1 - ELF
	# 2 - stripped
	# 4 - executable
	# 8 - shared library
	def isELF(path):
		type =3D 0
		pathprefix =3D "export PATH=3D%s; " % d.getVar('PATH', True)
		ret, result =3D commands.getstatusoutput("%sfile '%s'" % (pathprefix, pat=
h))

		if ret:
			bb.error("split_and_strip_files: 'file %s' failed" % path)
			return type

		# Not stripped
		if "ELF" in result:
			type |=3D 1
			if "not stripped" not in result:
				type |=3D 2
			if "executable" in result:
				type |=3D 4
			if "shared" in result:
				type |=3D 8
		return type


	#
	# First lets figure out all of the files we may have to process ... do thi=
s only once!
	#
	file_list =3D {}
	file_links =3D {}
	if (d.getVar('INHIBIT_PACKAGE_DEBUG_SPLIT', True) !=3D '1') and \
	   (d.getVar('INHIBIT_PACKAGE_STRIP', True) !=3D '1'):
		for root, dirs, files in os.walk(dvar):
			for f in files:
				file =3D os.path.join(root, f)
				# Only process files (and symlinks)... Skip files that are obviously de=
bug files
				if not (debugappend !=3D "" and file.endswith(debugappend)) and \
				   not (debugdir !=3D "" and debugdir in os.path.dirname(file[len(dvar)=
:])) and \
				   os.path.isfile(file):
					try:
						s =3D os.stat(file)
					except OSError, (err, strerror):
						if err !=3D errno.ENOENT:
							raise
						# Skip broken symlinks
						continue
					# Is the item excutable?  Then we need to process it.
					if (s[stat.ST_MODE] & stat.S_IXUSR) or \
					   (s[stat.ST_MODE] & stat.S_IXGRP) or \
					   (s[stat.ST_MODE] & stat.S_IXOTH):
						# If it's a symlink, and points to an ELF file, we capture the readli=
nk target
						if os.path.islink(file):
							target =3D os.readlink(file)
							if not os.path.isabs(target):
								ltarget =3D os.path.join(os.path.dirname(file), target)
							else:
								ltarget =3D target

							if isELF(ltarget):
								#bb.note("Sym: %s (%d)" % (ltarget, isELF(ltarget)))
								file_list[file] =3D "sym: " + target
							continue
						# It's a file (or hardlink), not a link
						# ...but is it ELF, and is it already stripped?
						elf_file =3D isELF(file)
						if elf_file & 1:
							# Check if it's a hard link to something else
							if s.st_nlink > 1:
								file_reference =3D "%d_%d" % (s.st_dev, s.st_ino)
								# Hard link to something else
								file_list[file] =3D "hard: " + file_reference
								continue

							file_list[file] =3D "ELF: %d" % elf_file


	#
	# First lets process debug splitting
	#
	if (d.getVar('INHIBIT_PACKAGE_DEBUG_SPLIT', True) !=3D '1'):
		for file in file_list:
			src =3D file[len(dvar):]
			dest =3D debuglibdir + os.path.dirname(src) + debugdir + "/" + os.path.b=
asename(src) + debugappend
			fpath =3D dvar + dest
			# Preserve symlinks in debug area...
			if file_list[file].startswith("sym: "):
				ltarget =3D file_list[file][5:]
				lpath =3D os.path.dirname(ltarget)
				lbase =3D os.path.basename(ltarget)
				ftarget =3D ""
				if lpath and lpath !=3D ".":
					ftarget +=3D lpath + debugdir + "/"
				ftarget +=3D lbase + debugappend
				if lpath.startswith(".."):
					ftarget =3D os.path.join("..", ftarget)
				bb.mkdirhier(os.path.dirname(fpath))
				#bb.note("Symlink %s -> %s" % (fpath, ftarget))
				os.symlink(ftarget, fpath)
				continue

			# Preserve hard links in debug area...
			file_reference =3D ""
			if file_list[file].startswith("hard: "):
				file_reference =3D file_list[file][6:]
				if file_reference not in file_links:
					# If this is a new file, add it as a reference, and
					# update it's type, so we can fall through and split
					file_list[file] =3D "ELF: %d" % (isELF(file))
				else:
					target =3D file_links[file_reference][len(dvar):]
					ftarget =3D dvar + debuglibdir + os.path.dirname(target) + debugdir + =
"/" + os.path.basename(target) + debugappend
					bb.mkdirhier(os.path.dirname(fpath))
					#bb.note("Link %s -> %s" % (fpath, ftarget))
					os.link(ftarget, fpath)
					continue

			# It's ELF...
			if file_list[file].startswith("ELF: "):
				elf_file =3D int(file_list[file][5:])
				if elf_file & 2:
					bb.warn("File '%s' from %s was already stripped, this will prevent fut=
ure debugging!" % (src, pn))
					continue

				# Split the file...
				bb.mkdirhier(os.path.dirname(fpath))
				#bb.note("Split %s -> %s" % (file, fpath))
				# Only store off the hard link reference if we successfully split!
				if splitfile(file, fpath, debugsrcdir, d) =3D=3D 0 and file_reference !=
=3D "":
					file_links[file_reference] =3D file

		# The above may have generated dangling symlinks, remove them!
		# Dangling symlinks are a result of something NOT being split, such as a =
stripped binary.
		# This should be a rare occurance, but we want to clean up anyway.
		for file in file_list:
			if file_list[file].startswith("sym: "):
				src =3D file[len(dvar):]
				dest =3D debuglibdir + os.path.dirname(src) + debugdir + "/" + os.path.=
basename(src) + debugappend
				fpath =3D dvar + dest
				try:
					s =3D os.stat(fpath)
				except OSError, (err, strerror):
					if err !=3D errno.ENOENT:
						raise
					#bb.note("Remove dangling link %s -> %s" % (fpath, os.readlink(fpath))=
)
					os.unlink(fpath)
					# This could leave an empty debug directory laying around
					# take care of the obvious case...
					subprocess.call("rmdir %s 2>/dev/null" % os.path.dirname(fpath), shell=
=3DTrue)

		# Process the debugsrcdir if requested...
		# This copies and places the referenced sources for later debugging...
		splitfile2(debugsrcdir, d)
	#
	# End of debug splitting
	#

	#
	# Now lets go back over things and strip them
	#
	if (d.getVar('INHIBIT_PACKAGE_STRIP', True) !=3D '1'):
		for file in file_list:
			if file_list[file].startswith("ELF: "):
				elf_file =3D int(file_list[file][5:])
				#bb.note("Strip %s" % file)
				runstrip(file, elf_file, d)


	if (d.getVar('INHIBIT_PACKAGE_STRIP', True) !=3D '1'):
		for root, dirs, files in os.walk(dvar):
			for f in files:
				if not f.endswith(".ko"):
					continue
				runstrip(os.path.join(root, f), None, d)
	#
	# End of strip
	#
}


python patch_do_patch () {
	import oe.patch

	patchsetmap =3D {
		"patch": oe.patch.PatchTree,
		"quilt": oe.patch.QuiltTree,
		"git": oe.patch.GitApplyTree,
	}

	cls =3D patchsetmap[d.getVar('PATCHTOOL', True) or 'quilt']

	resolvermap =3D {
		"noop": oe.patch.NOOPResolver,
		"user": oe.patch.UserResolver,
	}

	rcls =3D resolvermap[d.getVar('PATCHRESOLVE', True) or 'user']

	classes =3D {}

	s =3D d.getVar('S', True)

	path =3D os.getenv('PATH')
	os.putenv('PATH', d.getVar('PATH', True))

	for patch in src_patches(d):
		_, _, local, _, _, parm =3D bb.decodeurl(patch)

		if "patchdir" in parm:
			patchdir =3D parm["patchdir"]
			if not os.path.isabs(patchdir):
				patchdir =3D os.path.join(s, patchdir)
		else:
			patchdir =3D s

		if not patchdir in classes:
			patchset =3D cls(patchdir, d)
			resolver =3D rcls(patchset, oe_terminal)
			classes[patchdir] =3D (patchset, resolver)
			patchset.Clean()
		else:
			patchset, resolver =3D classes[patchdir]

		bb.note("Applying patch '%s' (%s)" % (parm['patchname'], oe.path.format_d=
isplay(local, d)))
		try:
			patchset.Import({"file":local, "strippath": parm['striplevel']}, True)
		except Exception as exc:
			bb.fatal(str(exc))
		try:
			resolver.Resolve()
		except bb.BBHandledException as e:
			bb.fatal(str(e))
}


python pkgarch_mapping () {
def pkgarch_mapping(d):
    # Compatibility mappings of TUNE_PKGARCH (opt in)
    if d.getVar("PKGARCHCOMPAT_ARMV7A", True):
        if d.getVar("TUNE_PKGARCH", True) =3D=3D "armv7a-vfp-neon":
            d.setVar("TUNE_PKGARCH", "armv7a")
}


python populate_packages_prepend () {
None}


python run_buildstats () {
    import bb.build
    import bb.event
    import bb.data
    import time, subprocess, platform

    if isinstance(e, bb.event.BuildStarted):
        ###################################################################=
#####
        # at first pass make the buildstats heriarchy and then
        # set the buildname
        ###################################################################=
#####
        try:
            bb.mkdirhier(e.data.getVar('BUILDSTATS_BASE', True))
        except:
            pass
        set_bn(e)
        bn =3D get_bn(e)
        set_device(e)
        device =3D get_device(e)

        bsdir =3D os.path.join(e.data.getVar('BUILDSTATS_BASE', True), bn)
        try:
            bb.mkdirhier(bsdir)
        except:
            pass
        if device !=3D "NoLogicalDevice":
            set_diskdata("__diskdata_build", device, e.data)
        set_timedata("__timedata_build", e.data)
        build_time =3D os.path.join(bsdir, "build_stats")
        # write start of build into build_time
        file =3D open(build_time,"a")
        host_info =3D platform.uname()
        file.write("Host Info: ")
        for x in host_info:
            if x:
                file.write(x + " ")
        file.write("\n")
        file.write("Build Started: %0.2f \n" % time.time())
        file.close()

    elif isinstance(e, bb.event.BuildCompleted):
        bn =3D get_bn(e)
        device =3D get_device(e)
        bsdir =3D os.path.join(e.data.getVar('BUILDSTATS_BASE', True), bn)
        taskdir =3D os.path.join(bsdir, e.data.expand("linux-xilinx-3.3.0-r=
0"))
        build_time =3D os.path.join(bsdir, "build_stats")
        file =3D open(build_time, "a")
        ###################################################################=
#####
        # Write build statistics for the build
        ###################################################################=
#####
        timedata =3D get_timedata("__timedata_build", e.data)
        if timedata:
            time, cpu =3D timedata
            # write end of build and cpu used into build_time
            file =3D open(build_time, "a")
            file.write("Elapsed time: %0.2f seconds \n" % (time))
            if cpu:
                file.write("CPU usage: %0.1f%% \n" % cpu)
        if device !=3D "NoLogicalDevice":
            diskio =3D get_diskdata("__diskdata_build", device, e.data)
            if diskio:
                for key in sorted(diskio.iterkeys()):
                    file.write(key + ": " + diskio[key] + "\n")
        file.close()

    if isinstance(e, bb.build.TaskStarted):
        bn =3D get_bn(e)
        device =3D get_device(e)
        bsdir =3D os.path.join(e.data.getVar('BUILDSTATS_BASE', True), bn)
        taskdir =3D os.path.join(bsdir, e.data.expand("linux-xilinx-3.3.0-r=
0"))
        if device !=3D "NoLogicalDevice":
            set_diskdata("__diskdata_task", device, e.data)
        set_timedata("__timedata_task", e.data)
        try:
            bb.mkdirhier(taskdir)
        except:
            pass
        # write into the task event file the name and start time
        file =3D open(os.path.join(taskdir, e.task), "a")
        file.write("Event: %s \n" % bb.event.getName(e))
        file.write("Started: %0.2f \n" % time.time())
        file.close()

    elif isinstance(e, bb.build.TaskSucceeded):
        bn =3D get_bn(e)
        device =3D get_device(e)
        bsdir =3D os.path.join(e.data.getVar('BUILDSTATS_BASE', True), bn)
        taskdir =3D os.path.join(bsdir, e.data.expand("linux-xilinx-3.3.0-r=
0"))
        write_task_data("passed", os.path.join(taskdir, e.task), device, e)
        if e.task =3D=3D "do_rootfs":
            bsdir =3D os.path.join(e.data.getVar('BUILDSTATS_BASE', True), =
bn)
            bs=3Dos.path.join(bsdir, "build_stats")
            file =3D open(bs,"a")
            rootfs =3D e.data.getVar('IMAGE_ROOTFS', True)
            rootfs_size =3D subprocess.Popen(["du", "-sh", rootfs], stdout=
=3Dsubprocess.PIPE).stdout.read()
            file.write("Uncompressed Rootfs size: %s" % rootfs_size)
            file.close()

    elif isinstance(e, bb.build.TaskFailed):
        bn =3D get_bn(e)
        device =3D get_device(e)
        bsdir =3D os.path.join(e.data.getVar('BUILDSTATS_BASE', True), bn)
        taskdir =3D os.path.join(bsdir, e.data.expand("linux-xilinx-3.3.0-r=
0"))
        write_task_data("failed", os.path.join(taskdir, e.task), device, e)
        ###################################################################=
#####
        # Lets make things easier and tell people where the build failed in
        # build_status. We do this here because BuildCompleted triggers no
        # matter what the status of the build actually is
        ###################################################################=
#####
        build_status =3D os.path.join(bsdir, "build_stats")
        file =3D open(build_status,"a")
        file.write(e.data.expand("Failed at: linux-xilinx-3.3.0-r0 at task:=
 %s \n" % e.task))
        file.close()

}


python package_qa_check_rdepends () {
def package_qa_check_rdepends(pkg, pkgdest, skip, d):
    # Don't do this check for kernel/module recipes, there aren't too many =
debug/development
    # packages and you can get false positives e.g. on kernel-module-lirc-d=
ev
    if bb.data.inherits_class("kernel", d) or bb.data.inherits_class("modul=
e-base", d):
        return True

    sane =3D True
    if not "-dbg" in pkg and not "task-" in pkg and not "-image" in pkg:
        # Copied from package_ipk.bbclass
        # boiler plate to update the data
        localdata =3D bb.data.createCopy(d)
        root =3D "%s/%s" % (pkgdest, pkg)

        localdata.setVar('ROOT', '')
        localdata.setVar('ROOT_%s' % pkg, root)
        pkgname =3D localdata.getVar('PKG_%s' % pkg, True)
        if not pkgname:
            pkgname =3D pkg
        localdata.setVar('PKG', pkgname)

        localdata.setVar('OVERRIDES', pkg)

        bb.data.update_data(localdata)

        # Now check the RDEPENDS
        rdepends =3D bb.utils.explode_deps(localdata.getVar('RDEPENDS', Tru=
e) or "")


        # Now do the sanity check!!!
        for rdepend in rdepends:
            if "-dbg" in rdepend and "debug-deps" not in skip:
                error_msg =3D "%s rdepends on %s" % (pkgname,rdepend)
                sane =3D package_qa_handle_error("debug-deps", error_msg, d=
)
            if (not "-dev" in pkg and not "-staticdev" in pkg) and rdepend.=
endswith("-dev") and "dev-deps" not in skip:
                error_msg =3D "%s rdepends on %s" % (pkgname, rdepend)
                sane =3D package_qa_handle_error("dev-deps", error_msg, d)

    return sane
}


python explode_deps () {
def explode_deps(s):
	return bb.utils.explode_deps(s)
}


python package_qa_check_rpath () {
def package_qa_check_rpath(file,name, d, elf, messages):
    """
    Check for dangerous RPATHs
    """
    if not elf:
        return

    scanelf =3D os.path.join(d.getVar('STAGING_BINDIR_NATIVE',True),'scanel=
f')
    bad_dirs =3D [d.getVar('TMPDIR', True) + "/work", d.getVar('STAGING_DIR=
_TARGET', True)]
    bad_dir_test =3D d.getVar('TMPDIR', True)
    if not os.path.exists(scanelf):
        bb.fatal("Can not check RPATH, scanelf (part of pax-utils-native) n=
ot found")

    if not bad_dirs[0] in d.getVar('WORKDIR', True):
        bb.fatal("This class assumed that WORKDIR is /tool/yocto/poky/build=
/tmp/work... Not doing any check")

    output =3D os.popen("%s -B -F%%r#F '%s'" % (scanelf,file))
    txt    =3D output.readline().split()
    for line in txt:
        for dir in bad_dirs:
            if dir in line:
                messages.append("package %s contains bad RPATH %s in file %=
s" % (name, line, file))
}


python map_kernel_arch () {
def map_kernel_arch(a, d):
	import re

	valid_archs =3D d.getVar('valid_archs', True).split()

	if   re.match('(i.86|athlon|x86.64)$', a):	return 'x86'
	elif re.match('arm26$', a):		        return 'arm26'
	elif re.match('armeb$', a):		        return 'arm'
	elif re.match('mips(el|64|64el)$', a):	        return 'mips'
	elif re.match('p(pc|owerpc)(|64)', a):		return 'powerpc'
	elif re.match('sh(3|4)$', a):		        return 'sh'
	elif re.match('bfin', a):                       return 'blackfin'
	elif re.match('microblazeel', a):               return 'microblaze'
        elif a in valid_archs:			        return a
	else:
		bb.error("cannot map '%s' to a linux kernel architecture" % a)
}


python perform_packagecopy () {
	import subprocess
	dest =3D d.getVar('D', True)
	dvar =3D d.getVar('PKGD', True)

	bb.mkdirhier(dvar)

	# Start by package population by taking a copy of the installed
	# files to operate on
	subprocess.call('rm -rf %s/*' % (dvar), shell=3DTrue)
	# Preserve sparse files and hard links
	subprocess.call('tar -cf - -C %s -ps . | tar -xf - -C %s' % (dest, dvar), =
shell=3DTrue)
}


python package_depchains () {
	"""
	For a given set of prefix and postfix modifiers, make those packages
	RRECOMMENDS on the corresponding packages for its RDEPENDS.

	Example:  If package A depends upon package B, and A's .bb emits an
	A-dev package, this would make A-dev Recommends: B-dev.

	If only one of a given suffix is specified, it will take the RRECOMMENDS
	based on the RDEPENDS of *all* other packages. If more than one of a given
	suffix is specified, its will only use the RDEPENDS of the single parent
	package.
	"""

	packages  =3D d.getVar('PACKAGES', True)
	postfixes =3D (d.getVar('DEPCHAIN_POST', True) or '').split()
	prefixes  =3D (d.getVar('DEPCHAIN_PRE', True) or '').split()

	def pkg_adddeprrecs(pkg, base, suffix, getname, depends, d):

		#bb.note('depends for %s is %s' % (base, depends))
		rreclist =3D bb.utils.explode_dep_versions(d.getVar('RRECOMMENDS_' + pkg,=
 True) or d.getVar('RRECOMMENDS', True) or "")

		for depend in depends:
			if depend.find('-native') !=3D -1 or depend.find('-cross') !=3D -1 or de=
pend.startswith('virtual/'):
				#bb.note("Skipping %s" % depend)
				continue
			if depend.endswith('-dev'):
				depend =3D depend.replace('-dev', '')
			if depend.endswith('-dbg'):
				depend =3D depend.replace('-dbg', '')
			pkgname =3D getname(depend, suffix)
			#bb.note("Adding %s for %s" % (pkgname, depend))
			if pkgname not in rreclist:
				rreclist[pkgname] =3D ""

		#bb.note('setting: RRECOMMENDS_%s=3D%s' % (pkg, ' '.join(rreclist)))
		d.setVar('RRECOMMENDS_%s' % pkg, bb.utils.join_deps(rreclist, commasep=3D=
False))

	def pkg_addrrecs(pkg, base, suffix, getname, rdepends, d):

		#bb.note('rdepends for %s is %s' % (base, rdepends))
		rreclist =3D bb.utils.explode_dep_versions(d.getVar('RRECOMMENDS_' + pkg,=
 True) or d.getVar('RRECOMMENDS', True) or "")

		for depend in rdepends:
			if depend.find('virtual-locale-') !=3D -1:
				#bb.note("Skipping %s" % depend)
				continue
			if depend.endswith('-dev'):
				depend =3D depend.replace('-dev', '')
			if depend.endswith('-dbg'):
				depend =3D depend.replace('-dbg', '')
			pkgname =3D getname(depend, suffix)
			#bb.note("Adding %s for %s" % (pkgname, depend))
			if pkgname not in rreclist:
				rreclist[pkgname] =3D ""

		#bb.note('setting: RRECOMMENDS_%s=3D%s' % (pkg, ' '.join(rreclist)))
		d.setVar('RRECOMMENDS_%s' % pkg, bb.utils.join_deps(rreclist, commasep=3D=
False))

	def add_dep(list, dep):
		dep =3D dep.split(' (')[0].strip()
		if dep not in list:
			list.append(dep)

	depends =3D []
	for dep in bb.utils.explode_deps(d.getVar('DEPENDS', True) or ""):
		add_dep(depends, dep)

	rdepends =3D []
	for dep in bb.utils.explode_deps(d.getVar('RDEPENDS', True) or ""):
		add_dep(rdepends, dep)

	for pkg in packages.split():
		for dep in bb.utils.explode_deps(d.getVar('RDEPENDS_' + pkg, True) or "")=
:
			add_dep(rdepends, dep)

	#bb.note('rdepends is %s' % rdepends)

	def post_getname(name, suffix):
		return '%s%s' % (name, suffix)
	def pre_getname(name, suffix):
		return '%s%s' % (suffix, name)

	pkgs =3D {}
	for pkg in packages.split():
		for postfix in postfixes:
			if pkg.endswith(postfix):
				if not postfix in pkgs:
					pkgs[postfix] =3D {}
				pkgs[postfix][pkg] =3D (pkg[:-len(postfix)], post_getname)

		for prefix in prefixes:
			if pkg.startswith(prefix):
				if not prefix in pkgs:
					pkgs[prefix] =3D {}
				pkgs[prefix][pkg] =3D (pkg[:-len(prefix)], pre_getname)

	for suffix in pkgs:
		for pkg in pkgs[suffix]:
			if d.getVarFlag('RRECOMMENDS_' + pkg, 'nodeprrecs'):
				continue
			(base, func) =3D pkgs[suffix][pkg]
			if suffix =3D=3D "-dev":
				pkg_adddeprrecs(pkg, base, suffix, func, depends, d)
			if len(pkgs[suffix]) =3D=3D 1:
				pkg_addrrecs(pkg, base, suffix, func, rdepends, d)
			else:
				rdeps =3D []
				for dep in bb.utils.explode_deps(d.getVar('RDEPENDS_' + base, True) or =
d.getVar('RDEPENDS', True) or ""):
					add_dep(rdeps, dep)
				pkg_addrrecs(pkg, base, suffix, func, rdeps, d)
}


python sstate_task_postfunc () {
    shared_state =3D sstate_state_fromvars(d)
    sstate_install(shared_state, d)
    for intercept in shared_state['interceptfuncs']:
        bb.build.exec_func(intercept, d)
    sstate_package(shared_state, d)
}


python sysroot_checkhashes () {
def sysroot_checkhashes(covered, tasknames, fnids, fns, d):
    problems =3D set()
    configurefnids =3D set()
    for task in xrange(len(tasknames)):
        if tasknames[task] =3D=3D "do_configure" and task not in covered:
            configurefnids.add(fnids[task])
    for task in covered:
        if tasknames[task] =3D=3D "do_populate_sysroot" and fnids[task] in =
configurefnids:
            problems.add(task)
    return problems
}


python populate_packages () {
	def extract_modinfo(file):
		import tempfile, re, subprocess
		tempfile.tempdir =3D d.getVar("WORKDIR", True)
		tf =3D tempfile.mkstemp()
		tmpfile =3D tf[1]
		cmd =3D "PATH=3D\"%s\" %sobjcopy -j .modinfo -O binary %s %s" % (d.getVar=
("PATH", True), d.getVar("HOST_PREFIX", True) or "", file, tmpfile)
		subprocess.call(cmd, shell=3DTrue)
		f =3D open(tmpfile)
		l =3D f.read().split("\000")
		f.close()
		os.close(tf[0])
		os.unlink(tmpfile)
		exp =3D re.compile("([^=3D]+)=3D(.*)")
		vals =3D {}
		for i in l:
			m =3D exp.match(i)
			if not m:
				continue
			vals[m.group(1)] =3D m.group(2)
		return vals

	def parse_depmod():
		import re

		dvar =3D d.getVar('PKGD', True)
		if not dvar:
			bb.error("PKGD not defined")
			return

		kernelver =3D d.getVar('KERNEL_VERSION', True)
		kernelver_stripped =3D kernelver
		m =3D re.match('^(.*-hh.*)[\.\+].*$', kernelver)
		if m:
			kernelver_stripped =3D m.group(1)
		path =3D d.getVar("PATH", True)

		cmd =3D "PATH=3D\"%s\" depmod -n -a -b %s -F %s/boot/System.map-%s %s" % =
(path, dvar, dvar, kernelver, kernelver_stripped)
		f =3D os.popen(cmd, 'r')

		deps =3D {}
		pattern0 =3D "^(.*\.k?o):..*$"
		pattern1 =3D "^(.*\.k?o):\s*(.*\.k?o)\s*$"
		pattern2 =3D "^(.*\.k?o):\s*(.*\.k?o)\s*\\\$"
		pattern3 =3D "^\t(.*\.k?o)\s*\\\$"
		pattern4 =3D "^\t(.*\.k?o)\s*$"

		line =3D f.readline()
		while line:
			if not re.match(pattern0, line):
				line =3D f.readline()
				continue
			m1 =3D re.match(pattern1, line)
			if m1:
				deps[m1.group(1)] =3D m1.group(2).split()
			else:
				m2 =3D re.match(pattern2, line)
				if m2:
					deps[m2.group(1)] =3D m2.group(2).split()
					line =3D f.readline()
					m3 =3D re.match(pattern3, line)
					while m3:
						deps[m2.group(1)].extend(m3.group(1).split())
						line =3D f.readline()
						m3 =3D re.match(pattern3, line)
					m4 =3D re.match(pattern4, line)
					deps[m2.group(1)].extend(m4.group(1).split())
			line =3D f.readline()
		f.close()
		return deps

	def get_dependencies(file, pattern, format):
		# file no longer includes PKGD
		file =3D file.replace(d.getVar('PKGD', True) or '', '', 1)
		# instead is prefixed with /lib/modules/3.3.0-14.2-build1
		file =3D file.replace("/lib/modules/%s/" % d.getVar('KERNEL_VERSION', Tru=
e) or '', '', 1)

		if module_deps.has_key(file):
			import re
			dependencies =3D []
			for i in module_deps[file]:
				m =3D re.match(pattern, os.path.basename(i))
				if not m:
					continue
				on =3D legitimize_package_name(m.group(1))
				dependency_pkg =3D format % on
				dependencies.append(dependency_pkg)
			return dependencies
		return []

	def frob_metadata(file, pkg, pattern, format, basename):
		import re
		vals =3D extract_modinfo(file)

		dvar =3D d.getVar('PKGD', True)

		# If autoloading is requested, output /etc/modules-load.d/<name>.conf and=
 append
		# appropriate modprobe commands to the postinst
		autoload =3D d.getVar('module_autoload_%s' % basename, True)
		if autoload:
			name =3D '%s/etc/modules-load.d/%s.conf' % (dvar, basename)
			f =3D open(name, 'w')
			for m in autoload.split():
				f.write('%s\n' % m)
			f.close()
			postinst =3D d.getVar('pkg_postinst_%s' % pkg, True)
			if not postinst:
				bb.fatal("pkg_postinst_%s not defined" % pkg)
			postinst +=3D d.getVar('autoload_postinst_fragment', True) % autoload
			d.setVar('pkg_postinst_%s' % pkg, postinst)

		# Write out any modconf fragment
		modconf =3D d.getVar('module_conf_%s' % basename, True)
		if modconf:
			name =3D '%s/etc/modprobe.d/%s.conf' % (dvar, basename)
			f =3D open(name, 'w')
			f.write("%s\n" % modconf)
			f.close()

		files =3D d.getVar('FILES_%s' % pkg, True)
		files =3D "%s /etc/modules-load.d/%s.conf /etc/modprobe.d/%s.conf" % (fil=
es, basename, basename)
		d.setVar('FILES_%s' % pkg, files)

		if vals.has_key("description"):
			old_desc =3D d.getVar('DESCRIPTION_' + pkg, True) or ""
			d.setVar('DESCRIPTION_' + pkg, old_desc + "; " + vals["description"])

		rdepends_str =3D d.getVar('RDEPENDS_' + pkg, True)
		if rdepends_str:
			rdepends =3D rdepends_str.split()
		else:
			rdepends =3D []
		rdepends.extend(get_dependencies(file, pattern, format))
		d.setVar('RDEPENDS_' + pkg, ' '.join(rdepends))

	module_deps =3D parse_depmod()
	module_regex =3D '^(.*)\.k?o$'
	module_pattern =3D 'kernel-module-%s'

	postinst =3D d.getVar('pkg_postinst_modules', True)
	postrm =3D d.getVar('pkg_postrm_modules', True)
	do_split_packages(d, root=3D'/lib/firmware', file_regex=3D'^(.*)\.bin$', o=
utput_pattern=3D'kernel-firmware-%s', description=3D'Firmware for %s', recu=
rsive=3DTrue, extra_depends=3D'')
	do_split_packages(d, root=3D'/lib/firmware', file_regex=3D'^(.*)\.fw$', ou=
tput_pattern=3D'kernel-firmware-%s', description=3D'Firmware for %s', recur=
sive=3DTrue, extra_depends=3D'')
	do_split_packages(d, root=3D'/lib/firmware', file_regex=3D'^(.*)\.cis$', o=
utput_pattern=3D'kernel-firmware-%s', description=3D'Firmware for %s', recu=
rsive=3DTrue, extra_depends=3D'')
	do_split_packages(d, root=3D'/lib/modules', file_regex=3Dmodule_regex, out=
put_pattern=3Dmodule_pattern, description=3D'%s kernel module', postinst=3D=
postinst, postrm=3Dpostrm, recursive=3DTrue, hook=3Dfrob_metadata, extra_de=
pends=3D'update-modules kernel-%s' % d.getVar("KERNEL_VERSION", True))

	# If modules-load.d and modprobe.d are empty at this point, remove them to
	# avoid warnings. removedirs only raises an OSError if an empty
	# directory cannot be removed.
	dvar =3D d.getVar('PKGD', True)
	for dir in ["%s/etc/modprobe.d" % (dvar), "%s/etc/modules-load.d" % (dvar)=
, "%s/etc" % (dvar)]:
		if len(os.listdir(dir)) =3D=3D 0:
			os.rmdir(dir)

	import re
	metapkg =3D "kernel-modules"
	d.setVar('ALLOW_EMPTY_' + metapkg, "1")
	d.setVar('FILES_' + metapkg, "")
	blacklist =3D [ 'kernel-dev', 'kernel-image', 'kernel-base', 'kernel-vmlin=
ux', 'kernel-misc' ]
	for l in module_deps.values():
		for i in l:
			pkg =3D module_pattern % legitimize_package_name(re.match(module_regex, =
os.path.basename(i)).group(1))
			blacklist.append(pkg)
	metapkg_rdepends =3D []
	packages =3D d.getVar('PACKAGES', True).split()
	for pkg in packages[1:]:
		if not pkg in blacklist and not pkg in metapkg_rdepends:
			metapkg_rdepends.append(pkg)
	d.setVar('RDEPENDS_' + metapkg, ' '.join(metapkg_rdepends))
	d.setVar('DESCRIPTION_' + metapkg, 'Kernel modules meta package')
	packages.append(metapkg)
	d.setVar('PACKAGES', ' '.join(packages))
	import glob, stat, errno, re, subprocess

	workdir =3D d.getVar('WORKDIR', True)
	outdir =3D d.getVar('DEPLOY_DIR', True)
	dvar =3D d.getVar('PKGD', True)
	packages =3D d.getVar('PACKAGES', True)
	pn =3D d.getVar('PN', True)

	bb.mkdirhier(outdir)
	os.chdir(dvar)

	# Sanity check PACKAGES for duplicates and for LICENSE_EXCLUSION
	# Sanity should be moved to sanity.bbclass once we have the infrastucture
	package_list =3D []

	for pkg in packages.split():
		if d.getVar('LICENSE_EXCLUSION-' + pkg, True):
			bb.warn("%s has an incompatible license. Excluding from packaging." % pk=
g)
			packages.remove(pkg)
		else:
			if pkg in package_list:
				bb.error("%s is listed in PACKAGES multiple times, this leads to packag=
ing errors." % pkg)
			else:
				package_list.append(pkg)
	d.setVar('PACKAGES', ' '.join(package_list))
	pkgdest =3D d.getVar('PKGDEST', True)
	subprocess.call('rm -rf %s' % pkgdest, shell=3DTrue)

	seen =3D []

	for pkg in package_list:
		localdata =3D bb.data.createCopy(d)
		root =3D os.path.join(pkgdest, pkg)
		bb.mkdirhier(root)

		localdata.setVar('PKG', pkg)
		overrides =3D localdata.getVar('OVERRIDES', True)
		if not overrides:
			raise bb.build.FuncFailed('OVERRIDES not defined')
		localdata.setVar('OVERRIDES', overrides + ':' + pkg)
		bb.data.update_data(localdata)

		filesvar =3D localdata.getVar('FILES', True) or ""
		files =3D filesvar.split()
		file_links =3D {}
		for file in files:
			if file.find("//") !=3D -1:
				bb.warn("FILES variable for package %s contains '//' which is invalid. =
Attempting to fix this but you should correct the metadata.\n" % pkg)
				file.replace("//", "/")
			if os.path.isabs(file):
				file =3D '.' + file
			if not os.path.islink(file):
				if os.path.isdir(file):
					newfiles =3D  [ os.path.join(file,x) for x in os.listdir(file) ]
					if newfiles:
						files +=3D newfiles
						continue
			globbed =3D glob.glob(file)
			if globbed:
				if [ file ] !=3D globbed:
					files +=3D globbed
					continue
			if (not os.path.islink(file)) and (not os.path.exists(file)):
				continue
			if file in seen:
				continue
			seen.append(file)

			def mkdir(src, dest, p):
				src =3D os.path.join(src, p)
				dest =3D os.path.join(dest, p)
				bb.mkdirhier(dest)
				fstat =3D os.stat(src)
				os.chmod(dest, fstat.st_mode)
				os.chown(dest, fstat.st_uid, fstat.st_gid)
				if p not in seen:
					seen.append(p)

			def mkdir_recurse(src, dest, paths):
				while paths.startswith("./"):
					paths =3D paths[2:]
				p =3D "."
				for c in paths.split("/"):
					p =3D os.path.join(p, c)
					if not os.path.exists(os.path.join(dest, p)):
						mkdir(src, dest, p)

			if os.path.isdir(file) and not os.path.islink(file):
				mkdir_recurse(dvar, root, file)
				continue

			mkdir_recurse(dvar, root, os.path.dirname(file))
			fpath =3D os.path.join(root,file)
			if not os.path.islink(file):
				os.link(file, fpath)
				fstat =3D os.stat(file)
				os.chmod(fpath, fstat.st_mode)
				os.chown(fpath, fstat.st_uid, fstat.st_gid)
				continue
			ret =3D bb.copyfile(file, fpath)
			if ret is False or ret =3D=3D 0:
				raise bb.build.FuncFailed("File population failed")

		del localdata
	os.chdir(workdir)

	unshipped =3D []
	for root, dirs, files in os.walk(dvar):
		dir =3D root[len(dvar):]
		if not dir:
			dir =3D os.sep
		for f in (files + dirs):
			path =3D os.path.join(dir, f)
			if ('.' + path) not in seen:
				unshipped.append(path)

	if unshipped !=3D []:
		bb.warn("For recipe %s, the following files/directories were installed bu=
t not shipped in any package:" % pn)
		for f in unshipped:
			bb.warn("  " + f)

	bb.build.exec_func("package_name_hook", d)

	for pkg in package_list:
		pkgname =3D d.getVar('PKG_%s' % pkg, True)
		if pkgname is None:
			d.setVar('PKG_%s' % pkg, pkg)

	dangling_links =3D {}
	pkg_files =3D {}
	for pkg in package_list:
		dangling_links[pkg] =3D []
		pkg_files[pkg] =3D []
		inst_root =3D os.path.join(pkgdest, pkg)
		for root, dirs, files in os.walk(inst_root):
			for f in files:
				path =3D os.path.join(root, f)
				rpath =3D path[len(inst_root):]
				pkg_files[pkg].append(rpath)
				try:
					s =3D os.stat(path)
				except OSError, (err, strerror):
					if err !=3D errno.ENOENT:
						raise
					target =3D os.readlink(path)
					if target[0] !=3D '/':
						target =3D os.path.join(root[len(inst_root):], target)
					dangling_links[pkg].append(os.path.normpath(target))

	for pkg in package_list:
		rdepends =3D bb.utils.explode_dep_versions(d.getVar('RDEPENDS_' + pkg, Tr=
ue) or d.getVar('RDEPENDS', True) or "")

		for l in dangling_links[pkg]:
			found =3D False
			bb.debug(1, "%s contains dangling link %s" % (pkg, l))
			for p in package_list:
				for f in pkg_files[p]:
					if f =3D=3D l:
						found =3D True
						bb.debug(1, "target found in %s" % p)
						if p =3D=3D pkg:
							break
						if p not in rdepends:
							rdepends[p] =3D ""
						break
			if found =3D=3D False:
				bb.note("%s contains dangling symlink to %s" % (pkg, l))
		d.setVar('RDEPENDS_' + pkg, bb.utils.join_deps(rdepends, commasep=3DFalse=
))
}


python generate_git_config () {
def generate_git_config(e):
        from bb import data

        if data.getVar('GIT_CORE_CONFIG', e.data, True):
                gitconfig_path =3D e.data.getVar('GIT_CONFIG', True)
                proxy_command =3D "    gitProxy =3D %s\n" % data.getVar('OE=
_GIT_PROXY_COMMAND', e.data, True)

                bb.mkdirhier(e.data.expand("/tool/yocto/poky/build/tmp/sysr=
oots/x86_64-linux/etc"))
                if (os.path.exists(gitconfig_path)):
                        os.remove(gitconfig_path)

                f =3D open(gitconfig_path, 'w')
                f.write("[core]\n")
                ignore_hosts =3D data.getVar('GIT_PROXY_IGNORE', e.data, Tr=
ue).split()
                for ignore_host in ignore_hosts:
                        f.write("    gitProxy =3D none for %s\n" % ignore_h=
ost)
                f.write(proxy_command)
                f.close
}


python extend_variants () {
def extend_variants(d, var, extend, delim=3D':'):
	"""Return a string of all bb class extend variants for the given extend"""
	variants =3D []
	whole =3D d.getVar(var, True) or ""
	for ext in whole.split():
		eext =3D ext.split(delim)
		if len(eext) > 1 and eext[0] =3D=3D extend:
			variants.append(eext[1])
	return " ".join(variants)
}


python buildcfg_vars () {
def buildcfg_vars(d):
	statusvars =3D oe.data.typed_value('BUILDCFG_VARS', d)
	for var in statusvars:
		value =3D d.getVar(var, True)
		if value is not None:
			yield '%-17s =3D "%s"' % (var, value)
}


python package_qa_check_unsafe_references_in_binaries () {
def package_qa_check_unsafe_references_in_binaries(path, name, d, elf, mess=
ages):
	"""
	Ensure binaries in base_[bindir|sbindir|libdir] do not link to files under=
 exec_prefix
	"""
	if unsafe_references_skippable(path, name, d):
		return

	if elf:
		import subprocess as sub
		pn =3D d.getVar('PN', True)

		exec_prefix =3D d.getVar('exec_prefix', True)
		sysroot_path =3D d.getVar('STAGING_DIR_TARGET', True)
		sysroot_path_usr =3D sysroot_path + exec_prefix

		try:
			ldd_output =3D bb.process.Popen(["prelink-rtld", "--root", sysroot_path,=
 path], stdout=3Dsub.PIPE).stdout.read()
		except bb.process.CmdError:
			error_msg =3D pn + ": prelink-rtld aborted when processing %s" % path
			package_qa_handle_error("unsafe-references-in-binaries", error_msg, d)
			return False

		if sysroot_path_usr in ldd_output:
			ldd_output =3D ldd_output.replace(sysroot_path, "")

			pkgdest =3D d.getVar('PKGDEST', True)
			packages =3D d.getVar('PACKAGES', True)

			for package in packages.split():
				short_path =3D path.replace('%s/%s' % (pkgdest, package), "", 1)
				if (short_path !=3D path):
					break

			base_err =3D pn + ": %s, installed in the base_prefix, requires a shared=
 library under exec_prefix (%s)" % (short_path, exec_prefix)
			for line in ldd_output.split('\n'):
				if exec_prefix in line:
					error_msg =3D "%s: %s" % (base_err, line.strip())
					package_qa_handle_error("unsafe-references-in-binaries", error_msg, d)

			return False
}


python get_package_mapping () {
def get_package_mapping (pkg, d):
	import oe.packagedata

	data =3D oe.packagedata.read_subpkgdata(pkg, d)
	key =3D "PKG_%s" % pkg

	if key in data:
		return data[key]

	return pkg
}


python sstate_task_prefunc () {
    shared_state =3D sstate_state_fromvars(d)
    sstate_clean(shared_state, d)
}


python check_sanity_sstate_dir_change () {
def check_sanity_sstate_dir_change(sstate_dir, data):
    # Sanity checks to be done when the value of SSTATE_DIR changes

    # Check that SSTATE_DIR isn't on a filesystem with limited filename len=
gth (eg. eCryptFS)
    testmsg =3D ""
    if sstate_dir !=3D "":
        testmsg =3D check_create_long_filename(sstate_dir, "SSTATE_DIR")
        # If we don't have permissions to SSTATE_DIR, suggest the user set =
it as an SSTATE_MIRRORS
        try:
            err =3D testmsg.split(': ')[1].strip()
            if err =3D=3D "Permission denied.":
                testmsg =3D testmsg + "You could try using %s in SSTATE_MIR=
RORS rather than as an SSTATE_CACHE.\n" % (sstate_dir)
        except IndexError:
            pass
    return testmsg
}


python sstate_setscene () {
def sstate_setscene(d):
    shared_state =3D sstate_state_fromvars(d)
    accelerate =3D sstate_installpkg(shared_state, d)
    if not accelerate:
        raise bb.build.FuncFailed("No suitable staging package found")
}


python find_board () {
def find_board(a, d):
    # Given a xps project path return the board board model
    board =3D "unknown"
    if a and os.path.exists(a):
        try:
            xps_proj =3D os.path.join(a, "system.mhs")
            xps_hwd =3D file(xps_proj, 'r')

            for l in xps_hwd:
                if "Target Board" in l:
                    board =3D l
                    break
            # Close file descriptor
            xps_hwd.close()

            if board !=3D "unknown":
                # Strip board board name
                board =3D board.split()
                return board[6].lower()
            else:
                return board
        except IOError:
            return board
    else:
        return board}


python base_path_relative () {
def base_path_relative(src, dest):
    return oe.path.relative(src, dest)
}


python do_deploy_setscene () {
    sstate_setscene(d)
}


python do_cleanall () {
        src_uri =3D (d.getVar('SRC_URI', True) or "").split()
        if len(src_uri) =3D=3D 0:
            return

	localdata =3D bb.data.createCopy(d)
	bb.data.update_data(localdata)

        try:
            fetcher =3D bb.fetch2.Fetch(src_uri, localdata)
            fetcher.clean()
        except bb.fetch2.BBFetchException, e:
            raise bb.build.FuncFailed(e)
}


python sstate_package () {
def sstate_package(ss, d):
    import oe.path

    def make_relative_symlink(path, outputpath, d):
        # Replace out absolute TMPDIR paths in symlinks with relative ones
        if not os.path.islink(path):
            return
        link =3D os.readlink(path)
        if not os.path.isabs(link):
            return
        if not link.startswith(tmpdir):
            return

        depth =3D link.rpartition(tmpdir)[2].count('/')
        base =3D link.partition(tmpdir)[2].strip()
        while depth > 1:
            base =3D "../" + base
            depth -=3D 1

        bb.debug(2, "Replacing absolute path %s with relative path %s" % (l=
ink, base))
        os.remove(path)
        os.symlink(base, path)

    tmpdir =3D d.getVar('TMPDIR', True)

    sstatebuild =3D d.expand("/tool/yocto/poky/build/tmp/work/virtex5-poky-=
linux/linux-xilinx-3.3.0-r0/sstate-build-%s/" % ss['name'])
    sstatepkg =3D d.getVar('SSTATE_PKG', True) + '_'+ ss['name'] + ".tgz"
    bb.mkdirhier(sstatebuild)
    bb.mkdirhier(os.path.dirname(sstatepkg))
    for state in ss['dirs']:
        srcbase =3D state[0].rstrip("/").rsplit('/', 1)[0]
        for walkroot, dirs, files in os.walk(state[1]):
            for file in files:
                srcpath =3D os.path.join(walkroot, file)
                dstpath =3D srcpath.replace(state[1], sstatebuild + state[0=
])
                make_relative_symlink(srcpath, dstpath, d)
            for dir in dirs:
                srcpath =3D os.path.join(walkroot, dir)
                dstpath =3D srcpath.replace(state[1], sstatebuild + state[0=
])
                make_relative_symlink(srcpath, dstpath, d)
        bb.debug(2, "Preparing tree %s for packaging at %s" % (state[1], ss=
tatebuild + state[0]))
        oe.path.copytree(state[1], sstatebuild + state[0])

    workdir =3D d.getVar('WORKDIR', True)
    for plain in ss['plaindirs']:
        pdir =3D plain.replace(workdir, sstatebuild)
        bb.mkdirhier(plain)
        bb.mkdirhier(pdir)
        oe.path.copytree(plain, pdir)

    d.setVar('SSTATE_BUILDDIR', sstatebuild)
    d.setVar('SSTATE_PKG', sstatepkg)
    sstate_hardcode_path(d)
    bb.build.exec_func('sstate_create_package', d)

    bb.siggen.dump_this_task(sstatepkg + ".siginfo", d)

    return
}


python do_populate_lic () {
    """
    Populate LICENSE_DIRECTORY with licenses.
    """
    import os
    import bb
    import shutil
    import oe.license

    pn =3D d.getVar('PN', True)
    for package in d.getVar('PACKAGES', True):
        if d.getVar('LICENSE_' + pn + '-' + package, True):
            license_types =3D license_types + ' & ' + \
                            d.getVar('LICENSE_' + pn + '-' + package, True)

    #If we get here with no license types, then that means we have a recipe
    #level license. If so, we grab only those.
    try:
        license_types
    except NameError:
        # All the license types at the recipe level
        license_types =3D d.getVar('LICENSE', True)

    # All the license files for the package
    lic_files =3D d.getVar('LIC_FILES_CHKSUM', True)
    pn =3D d.getVar('PN', True)
    # The base directory we wrangle licenses to
    destdir =3D os.path.join(d.getVar('LICSSTATEDIR', True), pn)
    # The license files are located in S/LIC_FILE_CHECKSUM.
    srcdir =3D d.getVar('S', True)
    # Directory we store the generic licenses as set in the distro configur=
ation
    generic_directory =3D d.getVar('COMMON_LICENSE_DIR', True)
    license_source_dirs =3D []
    license_source_dirs.append(generic_directory)
    try:
        additional_lic_dirs =3D d.getVar('LICENSE_DIR', True).split()
        for lic_dir in additional_lic_dirs:
            license_source_dirs.append(lic_dir)
    except:
        pass

    class FindVisitor(oe.license.LicenseVisitor):
        def visit_Str(self, node):
            #
            # Until I figure out what to do with
            # the two modifiers I support (or greater =3D +
            # and "with exceptions" being *
            # we'll just strip out the modifier and put
            # the base license.
            find_license(node.s.replace("+", "").replace("*", ""))
            self.generic_visit(node)

    def find_license(license_type):
        try:
            bb.mkdirhier(gen_lic_dest)
        except:
            pass
        spdx_generic =3D None
        license_source =3D None
        # If the generic does not exist we need to check to see if there is=
 an SPDX mapping to it
        for lic_dir in license_source_dirs:
            if not os.path.isfile(os.path.join(lic_dir, license_type)):
                if d.getVarFlag('SPDXLICENSEMAP', license_type) !=3D None:
                    # Great, there is an SPDXLICENSEMAP. We can copy!
                    bb.debug(1, "We need to use a SPDXLICENSEMAP for %s" % =
(license_type))
                    spdx_generic =3D d.getVarFlag('SPDXLICENSEMAP', license=
_type)
                    license_source =3D lic_dir
                    break
            elif os.path.isfile(os.path.join(lic_dir, license_type)):
                spdx_generic =3D license_type
                license_source =3D lic_dir
                break

        if spdx_generic and license_source:
            # we really should copy to generic_ + spdx_generic, however, th=
at ends up messing the manifest
            # audit up. This should be fixed in emit_pkgdata (or, we actual=
ly got and fix all the recipes)

            bb.copyfile(os.path.join(license_source, spdx_generic), os.path=
.join(os.path.join(d.getVar('LICSSTATEDIR', True), pn), "generic_" + licens=
e_type))
            if not os.path.isfile(os.path.join(os.path.join(d.getVar('LICSS=
TATEDIR', True), pn), "generic_" + license_type)):
            # If the copy didn't occur, something horrible went wrong and w=
e fail out
                bb.warn("%s for %s could not be copied for some reason. It =
may not exist. WARN for now." % (spdx_generic, pn))
        else:
            # And here is where we warn people that their licenses are lous=
y
            bb.warn("%s: No generic license file exists for: %s in any prov=
ider" % (pn, license_type))
            pass

    try:
        bb.mkdirhier(destdir)
    except:
        pass

    if not generic_directory:
        raise bb.build.FuncFailed("COMMON_LICENSE_DIR is unset. Please set =
this in your distro config")

    if not lic_files:
        # No recipe should have an invalid license file. This is checked el=
se
        # where, but let's be pedantic
        bb.note(pn + ": Recipe file does not have license file information.=
")
        return True

    for url in lic_files.split():
        (type, host, path, user, pswd, parm) =3D bb.decodeurl(url)
        # We want the license file to be copied into the destination
        srclicfile =3D os.path.join(srcdir, path)
        ret =3D bb.copyfile(srclicfile, os.path.join(destdir, os.path.basen=
ame(path)))
        # If the copy didn't occur, something horrible went wrong and we fa=
il out
        if not ret:
            bb.warn("%s could not be copied for some reason. It may not exi=
st. WARN for now." % srclicfile)

    v =3D FindVisitor()
    try:
        v.visit_string(license_types)
    except oe.license.InvalidLicense as exc:
        bb.fatal('%s: %s' % (d.getVar('PF', True), exc))
    except SyntaxError:
        bb.warn("%s: Failed to parse it's LICENSE field." % (d.getVar('PF',=
 True)))

}


python package_qa_handle_error () {
def package_qa_handle_error(error_class, error_msg, d):
    package_qa_write_error(error_msg, d)
    if error_class in (d.getVar("ERROR_QA", True) or "").split():
        bb.error("QA Issue: %s" % error_msg)
        return False
    else:
        bb.warn("QA Issue: %s" % error_msg)
        return True
}


python all_multilib_tune_values () {
def all_multilib_tune_values(d, var, unique =3D True, need_split =3D True, =
delim =3D ' '):
	"""Return a string of all ${var} in all multilib tune configuration"""
	values =3D []
	value =3D d.getVar(var, True) or ""
	if value !=3D "":
		if need_split:
			for item in value.split(delim):
				values.append(item)
		else:
			values.append(value)
	variants =3D d.getVar("MULTILIB_VARIANTS", True) or ""
	for item in variants.split():
		localdata =3D bb.data.createCopy(d)
		overrides =3D localdata.getVar("OVERRIDES", False) + ":virtclass-multilib=
-" + item
		localdata.setVar("OVERRIDES", overrides)
		bb.data.update_data(localdata)
		value =3D localdata.getVar(var, True) or ""
		if value !=3D "":
			if need_split:
				for item in value.split(delim):
					values.append(item)
			else:
				values.append(value)
	if unique:
		#we do this to keep order as much as possible
		ret =3D []
		for value in values:
			if not value in ret:
				ret.append(value)
	else:
		ret =3D values
	return " ".join(ret)}


python set_timedata () {
def set_timedata(var, data):
    import time
    time =3D time.time()
    cputime =3D get_cputime()
    proctime =3D get_process_cputime(os.getpid())
    data.setVar(var, (time, cputime, proctime))
}


python package_get_auto_pr () {
	# per recipe PRSERV_HOST PRSERV_PORT
	pn =3D d.getVar('PN', True)
	host =3D d.getVar("PRSERV_HOST_" + pn, True)
	port =3D d.getVar("PRSERV_PORT_" + pn, True)
	if not (host is None):
		d.setVar("PRSERV_HOST", host)
	if not (port is None):
		d.setVar("PRSERV_PORT", port)
	if d.getVar('USE_PR_SERV', True) !=3D "0":
		try:
			auto_pr=3Dprserv_get_pr_auto(d)
		except Exception as e:
			bb.fatal("Can NOT get PRAUTO, exception %s" %  str(e))
			return
		if auto_pr is None:
			if d.getVar('PRSERV_LOCKDOWN', True):
				bb.fatal("Can NOT get PRAUTO from lockdown exported file")
			else:
				bb.fatal("Can NOT get PRAUTO from remote PR service")
			return
		d.setVar('PRAUTO',str(auto_pr))
}


python base_do_fetch () {

	src_uri =3D (d.getVar('SRC_URI', True) or "").split()
	if len(src_uri) =3D=3D 0:
		return

	localdata =3D bb.data.createCopy(d)
	bb.data.update_data(localdata)

        try:
            fetcher =3D bb.fetch2.Fetch(src_uri, localdata)
            fetcher.download()
        except bb.fetch2.BBFetchException, e:
            raise bb.build.FuncFailed(e)
}


python do_populate_sysroot () {
    #
    # if do_stage exists, we're legacy. In that case run the do_stage,
    # modify the SYSROOT_DESTDIR variable and then run the staging preproce=
ss
    # functions against staging directly.
    #
    # Otherwise setup a destdir, copy the results from do_install
    # and run the staging preprocess against that
    #

    bb.build.exec_func("sysroot_stage_all", d)
    for f in (d.getVar('SYSROOT_PREPROCESS_FUNCS', True) or '').split():
        bb.build.exec_func(f, d)
}


python package_name_hook () {
	bb.build.exec_func('debian_package_name_hook', d)
}


python patch_path () {
def patch_path(url, fetch, workdir):
	"""Return the local path of a patch, or None if this isn't a patch"""

	local =3D fetch.localpath(url)
	base, ext =3D os.path.splitext(os.path.basename(local))
	if ext in ('.gz', '.bz2', '.Z'):
		local =3D os.path.join(workdir, base)
		ext =3D os.path.splitext(base)[1]

	urldata =3D fetch.ud[url]
	if "apply" in urldata.parm:
		apply =3D oe.types.boolean(urldata.parm["apply"])
		if not apply:
			return
	elif ext not in (".diff", ".patch"):
		return

	return local
}


python base_get_metadata_monotone_revision () {
def base_get_metadata_monotone_revision(path, d):
	monotone_revision =3D "<unknown>"
	try:
		monotone_revision =3D file( "%s/_MTN/revision" % path ).read().strip()
		if monotone_revision.startswith( "format_version" ):
			monotone_revision_words =3D monotone_revision.split()
			monotone_revision =3D monotone_revision_words[ monotone_revision_words.i=
ndex( "old_revision" )+1][1:-1]
	except IOError:
		pass
	return monotone_revision
}


python base_path_out () {
def base_path_out(path, d):
    return oe.path.format_display(path, d)
}


python set_device () {
def set_device(e):
    tmpdir =3D e.data.getVar('TMPDIR', True)
    try:
        os.remove(e.data.getVar('DEVFILE', True))
    except:
        pass
    #######################################################################=
#####
    # We look for the volume TMPDIR lives on. To do all disks would make li=
ttle
    # sense and not give us any particularly useful data. In theory we coul=
d do
    # something like stick DL_DIR on a different partition and this would
    # throw stats gathering off. The same goes with SSTATE_DIR. However, le=
t's
    # get the basics in here and work on the cornercases later.
    # A note. /proc/diskstats does not contain info on encryptfs, tmpfs, et=
c.
    # If we end up hitting one of these fs, we'll just skip diskstats colle=
ction.
    #######################################################################=
#####
    device=3Dos.stat(tmpdir)
    majordev=3Dos.major(device.st_dev)
    minordev=3Dos.minor(device.st_dev)
    #######################################################################=
#####
    # Bug 1700:
    # Because tmpfs/encryptfs/ramfs etc inserts no entry in /proc/diskstats
    # we set rdev to NoLogicalDevice and search for it later. If we find NL=
D
    # we do not collect diskstats as the method to collect meaningful stati=
stics
    # for these fs types requires a bit more research.
    #######################################################################=
#####
    rdev=3D"NoLogicalDevice"
    try:
        for line in open("/proc/diskstats", "r"):
            if majordev =3D=3D int(line.split()[0]) and minordev =3D=3D int=
(line.split()[1]):
               rdev=3Dline.split()[2]
    except:
        pass
    file =3D open(e.data.getVar('DEVFILE', True), "w")
    file.write(rdev)
    file.close()
}


python sstate_clean_cachefiles () {
def sstate_clean_cachefiles(d):
    for task in (d.getVar('SSTATETASKS', True) or "").split():
        ss =3D sstate_state_fromvars(d, task[3:])
        sstate_clean_cachefile(ss, d)
}


python do_split_packages () {
def do_split_packages(d, root, file_regex, output_pattern, description, pos=
tinst=3DNone, recursive=3DFalse, hook=3DNone, extra_depends=3DNone, aux_fil=
es_pattern=3DNone, postrm=3DNone, allow_dirs=3DFalse, prepend=3DFalse, matc=
h_path=3DFalse, aux_files_pattern_verbatim=3DNone, allow_links=3DFalse):
	"""
	Used in .bb files to split up dynamically generated subpackages of a
	given package, usually plugins or modules.
	"""

	ml =3D d.getVar("MLPREFIX", True)
	if ml:
		if not output_pattern.startswith(ml):
			output_pattern =3D ml + output_pattern

		newdeps =3D []
		for dep in (extra_depends or "").split():
			if dep.startswith(ml):
				newdeps.append(dep)
			else:
				newdeps.append(ml + dep)
		if newdeps:
			extra_depends =3D " ".join(newdeps)

	dvar =3D d.getVar('PKGD', True)

	packages =3D d.getVar('PACKAGES', True).split()

	if postinst:
		postinst =3D '#!/bin/sh\n' + postinst + '\n'
	if postrm:
		postrm =3D '#!/bin/sh\n' + postrm + '\n'
	if not recursive:
		objs =3D os.listdir(dvar + root)
	else:
		objs =3D []
		for walkroot, dirs, files in os.walk(dvar + root):
			for file in files:
				relpath =3D os.path.join(walkroot, file).replace(dvar + root + '/', '',=
 1)
				if relpath:
					objs.append(relpath)

	if extra_depends =3D=3D None:
		extra_depends =3D d.getVar("PN", True)

	for o in sorted(objs):
		import re, stat
		if match_path:
			m =3D re.match(file_regex, o)
		else:
			m =3D re.match(file_regex, os.path.basename(o))

		if not m:
			continue
		f =3D os.path.join(dvar + root, o)
		mode =3D os.lstat(f).st_mode
		if not (stat.S_ISREG(mode) or (allow_links and stat.S_ISLNK(mode)) or (al=
low_dirs and stat.S_ISDIR(mode))):
			continue
		on =3D legitimize_package_name(m.group(1))
		pkg =3D output_pattern % on
		if not pkg in packages:
			if prepend:
				packages =3D [pkg] + packages
			else:
				packages.append(pkg)
		oldfiles =3D d.getVar('FILES_' + pkg, True)
		if not oldfiles:
			the_files =3D [os.path.join(root, o)]
			if aux_files_pattern:
				if type(aux_files_pattern) is list:
					for fp in aux_files_pattern:
						the_files.append(fp % on)
				else:
					the_files.append(aux_files_pattern % on)
			if aux_files_pattern_verbatim:
				if type(aux_files_pattern_verbatim) is list:
					for fp in aux_files_pattern_verbatim:
						the_files.append(fp % m.group(1))
				else:
					the_files.append(aux_files_pattern_verbatim % m.group(1))
			d.setVar('FILES_' + pkg, " ".join(the_files))
			if extra_depends !=3D '':
				d.appendVar('RDEPENDS_' + pkg, ' ' + extra_depends)
			d.setVar('DESCRIPTION_' + pkg, description % on)
			if postinst:
				d.setVar('pkg_postinst_' + pkg, postinst)
			if postrm:
				d.setVar('pkg_postrm_' + pkg, postrm)
		else:
			d.setVar('FILES_' + pkg, oldfiles + " " + os.path.join(root, o))
		if callable(hook):
			hook(f, pkg, file_regex, output_pattern, m.group(1))

	d.setVar('PACKAGES', ' '.join(packages))
}


python sstate_state_fromvars () {
def sstate_state_fromvars(d, task =3D None):
    if task is None:
        task =3D d.getVar('BB_CURRENTTASK', True)
        if not task:
            bb.fatal("sstate code running without task context?!")
        task =3D task.replace("_setscene", "")

    name =3D d.getVarFlag("do_" + task, 'sstate-name', True)
    inputs =3D (d.getVarFlag("do_" + task, 'sstate-inputdirs', True) or "")=
.split()
    outputs =3D (d.getVarFlag("do_" + task, 'sstate-outputdirs', True) or "=
").split()
    plaindirs =3D (d.getVarFlag("do_" + task, 'sstate-plaindirs', True) or =
"").split()
    lockfiles =3D (d.getVarFlag("do_" + task, 'sstate-lockfile', True) or "=
").split()
    lockfilesshared =3D (d.getVarFlag("do_" + task, 'sstate-lockfile-shared=
', True) or "").split()
    interceptfuncs =3D (d.getVarFlag("do_" + task, 'sstate-interceptfuncs',=
 True) or "").split()
    if not name or len(inputs) !=3D len(outputs):
        bb.fatal("sstate variables not setup correctly?!")

    ss =3D sstate_init(name, task, d)
    for i in range(len(inputs)):
        sstate_add(ss, inputs[i], outputs[i], d)
    ss['lockfiles'] =3D lockfiles
    ss['lockfiles-shared'] =3D lockfilesshared
    ss['plaindirs'] =3D plaindirs
    ss['interceptfuncs'] =3D interceptfuncs
    return ss
}


python unsafe_references_skippable () {
def unsafe_references_skippable(path, name, d):
	if bb.data.inherits_class('native', d) or bb.data.inherits_class('nativesd=
k', d):
		return True

	if "-dbg" in name or "-dev" in name:
		return True

	# Other package names to skip:
	if name.startswith("kernel-module-"):
		return True

	# Skip symlinks
	if os.path.islink(path):
		return True

	# Skip unusual rootfs layouts which make these tests irrelevant
	exec_prefix =3D d.getVar('exec_prefix', True)
	if exec_prefix =3D=3D "":
		return True

	pkgdest =3D d.getVar('PKGDEST', True)
	pkgdest =3D pkgdest + "/" + name
	pkgdest =3D os.path.abspath(pkgdest)
	base_bindir =3D pkgdest + d.getVar('base_bindir', True)
	base_sbindir =3D pkgdest + d.getVar('base_sbindir', True)
	base_libdir =3D pkgdest + d.getVar('base_libdir', True)
	bindir =3D pkgdest + d.getVar('bindir', True)
	sbindir =3D pkgdest + d.getVar('sbindir', True)
	libdir =3D pkgdest + d.getVar('libdir', True)

	if base_bindir =3D=3D bindir and base_sbindir =3D=3D sbindir and base_libd=
ir =3D=3D libdir:
		return True

	# Skip files not in base_[bindir|sbindir|libdir]
	path =3D os.path.abspath(path)
	if not (base_bindir in path or base_sbindir in path or base_libdir in path=
):
		return True

	return False
}


python set_diskdata () {
def set_diskdata(var, dev, data):
    data.setVar(var, get_diskstats(dev))
}


python do_package_write_rpm () {
	bb.build.exec_func("read_subpackage_metadata", d)
	bb.build.exec_func("do_package_rpm", d)
}


python get_bn () {
def get_bn(e):
    file =3D open(e.data.getVar('BNFILE', True))
    bn =3D file.readline()
    file.close()
    return bn
}


python check_app_exists () {
def check_app_exists(app, d):
	from bb import which, data

	app =3D data.expand(app, d)
	path =3D data.getVar('PATH', d, 1)
	return bool(which(path, app))
}


python fixup_perms () {
	import os, pwd, grp

	# init using a string with the same format as a line as documented in
	# the fs-perms.txt file
	# <path> <mode> <uid> <gid> <walk> <fmode> <fuid> <fgid>
	# <path> link <link target>
	#
	# __str__ can be used to print out an entry in the input format
	#
	# if fs_perms_entry.path is None:
	#	an error occured
	# if fs_perms_entry.link, you can retrieve:
	#	fs_perms_entry.path =3D path
	#	fs_perms_entry.link =3D target of link
	# if not fs_perms_entry.link, you can retrieve:
	#	fs_perms_entry.path =3D path
	#	fs_perms_entry.mode =3D expected dir mode or None
	#	fs_perms_entry.uid =3D expected uid or -1
	#	fs_perms_entry.gid =3D expected gid or -1
	#	fs_perms_entry.walk =3D 'true' or something else
	#	fs_perms_entry.fmode =3D expected file mode or None
	#	fs_perms_entry.fuid =3D expected file uid or -1
	#	fs_perms_entry_fgid =3D expected file gid or -1
	class fs_perms_entry():
		def __init__(self, line):
			lsplit =3D line.split()
			if len(lsplit) =3D=3D 3 and lsplit[1].lower() =3D=3D "link":
				self._setlink(lsplit[0], lsplit[2])
			elif len(lsplit) =3D=3D 8:
				self._setdir(lsplit[0], lsplit[1], lsplit[2], lsplit[3], lsplit[4], lsp=
lit[5], lsplit[6], lsplit[7])
			else:
				bb.error("Fixup Perms: invalid config line %s" % line)
				self.path =3D None
				self.link =3D None

		def _setdir(self, path, mode, uid, gid, walk, fmode, fuid, fgid):
			self.path =3D os.path.normpath(path)
			self.link =3D None
			self.mode =3D self._procmode(mode)
			self.uid  =3D self._procuid(uid)
			self.gid  =3D self._procgid(gid)
			self.walk =3D walk.lower()
			self.fmode =3D self._procmode(fmode)
			self.fuid =3D self._procuid(fuid)
			self.fgid =3D self._procgid(fgid)

		def _setlink(self, path, link):
			self.path =3D os.path.normpath(path)
			self.link =3D link

		def _procmode(self, mode):
			if not mode or (mode and mode =3D=3D "-"):
				return None
			else:
				return int(mode,8)

		# Note uid/gid -1 has special significance in os.lchown
		def _procuid(self, uid):
			if uid is None or uid =3D=3D "-":
				return -1
			elif uid.isdigit():
				return int(uid)
			else:
				return pwd.getpwnam(uid).pw_uid

		def _procgid(self, gid):
			if gid is None or gid =3D=3D "-":
				return -1
			elif gid.isdigit():
				return int(gid)
			else:
				return grp.getgrnam(gid).gr_gid

		# Use for debugging the entries
		def __str__(self):
			if self.link:
				return "%s link %s" % (self.path, self.link)
			else:
				mode =3D "-"
				if self.mode:
					mode =3D "0%o" % self.mode
				fmode =3D "-"
				if self.fmode:
					fmode =3D "0%o" % self.fmode
				uid =3D self._mapugid(self.uid)
				gid =3D self._mapugid(self.gid)
				fuid =3D self._mapugid(self.fuid)
				fgid =3D self._mapugid(self.fgid)
				return "%s %s %s %s %s %s %s %s" % (self.path, mode, uid, gid, self.wal=
k, fmode, fuid, fgid)

		def _mapugid(self, id):
			if id is None or id =3D=3D -1:
				return "-"
			else:
				return "%d" % id

	# Fix the permission, owner and group of path
	def fix_perms(path, mode, uid, gid, dir):
		if mode and not os.path.islink(path):
			#bb.note("Fixup Perms: chmod 0%o %s" % (mode, dir))
			os.chmod(path, mode)
		# -1 is a special value that means don't change the uid/gid
		# if they are BOTH -1, don't bother to lchown
		if not (uid =3D=3D -1 and gid =3D=3D -1):
			#bb.note("Fixup Perms: lchown %d:%d %s" % (uid, gid, dir))
			os.lchown(path, uid, gid)

	# Return a list of configuration files based on either the default
	# files/fs-perms.txt or the contents of FILESYSTEM_PERMS_TABLES
	# paths are resolved via BBPATH
	def get_fs_perms_list(d):
		str =3D ""
		fs_perms_tables =3D d.getVar('FILESYSTEM_PERMS_TABLES', True)
		if not fs_perms_tables:
			fs_perms_tables =3D 'files/fs-perms.txt'
		for conf_file in fs_perms_tables.split():
			str +=3D " %s" % bb.which(d.getVar('BBPATH', True), conf_file)
		return str



	dvar =3D d.getVar('PKGD', True)

	fs_perms_table =3D {}

	# By default all of the standard directories specified in
	# bitbake.conf will get 0755 root:root.
	target_path_vars =3D [	'base_prefix',
				'prefix',
				'exec_prefix',
				'base_bindir',
				'base_sbindir',
				'base_libdir',
				'datadir',
				'sysconfdir',
				'servicedir',
				'sharedstatedir',
				'localstatedir',
				'infodir',
				'mandir',
				'docdir',
				'bindir',
				'sbindir',
				'libexecdir',
				'libdir',
				'includedir',
				'oldincludedir' ]

	for path in target_path_vars:
		dir =3D d.getVar(path, True) or ""
		if dir =3D=3D "":
			continue
		fs_perms_table[dir] =3D fs_perms_entry(bb.data.expand("%s 0755 root root =
false - - -" % (dir), d))

	# Now we actually load from the configuration files
	for conf in get_fs_perms_list(d).split():
		if os.path.exists(conf):
			f =3D open(conf)
			for line in f:
				if line.startswith('#'):
					continue
				lsplit =3D line.split()
				if len(lsplit) =3D=3D 0:
					continue
				if len(lsplit) !=3D 8 and not (len(lsplit) =3D=3D 3 and lsplit[1].lower=
() =3D=3D "link"):
					bb.error("Fixup perms: %s invalid line: %s" % (conf, line))
					continue
				entry =3D fs_perms_entry(d.expand(line))
				if entry and entry.path:
					fs_perms_table[entry.path] =3D entry
			f.close()

	# Debug -- list out in-memory table
	#for dir in fs_perms_table:
	#	bb.note("Fixup Perms: %s: %s" % (dir, str(fs_perms_table[dir])))

	# We process links first, so we can go back and fixup directory ownership
	# for any newly created directories
	for dir in fs_perms_table:
		if not fs_perms_table[dir].link:
			continue

		origin =3D dvar + dir
		if not (os.path.exists(origin) and os.path.isdir(origin) and not os.path.=
islink(origin)):
			continue

		link =3D fs_perms_table[dir].link
		if link[0] =3D=3D "/":
			target =3D dvar + link
			ptarget =3D link
		else:
			target =3D os.path.join(os.path.dirname(origin), link)
			ptarget =3D os.path.join(os.path.dirname(dir), link)
		if os.path.exists(target):
			bb.error("Fixup Perms: Unable to correct directory link, target already =
exists: %s -> %s" % (dir, ptarget))
			continue

		# Create path to move directory to, move it, and then setup the symlink
		bb.mkdirhier(os.path.dirname(target))
		#bb.note("Fixup Perms: Rename %s -> %s" % (dir, ptarget))
		os.rename(origin, target)
		#bb.note("Fixup Perms: Link %s -> %s" % (dir, link))
		os.symlink(link, origin)

	for dir in fs_perms_table:
		if fs_perms_table[dir].link:
			continue

		origin =3D dvar + dir
		if not (os.path.exists(origin) and os.path.isdir(origin)):
			continue

		fix_perms(origin, fs_perms_table[dir].mode, fs_perms_table[dir].uid, fs_p=
erms_table[dir].gid, dir)

		if fs_perms_table[dir].walk =3D=3D 'true':
			for root, dirs, files in os.walk(origin):
				for dr in dirs:
					each_dir =3D os.path.join(root, dr)
					fix_perms(each_dir, fs_perms_table[dir].mode, fs_perms_table[dir].uid,=
 fs_perms_table[dir].gid, dir)
				for f in files:
					each_file =3D os.path.join(root, f)
					fix_perms(each_file, fs_perms_table[dir].fmode, fs_perms_table[dir].fu=
id, fs_perms_table[dir].fgid, dir)
}


python base_conditional () {
def base_conditional(variable, checkvalue, truevalue, falsevalue, d):
    return oe.utils.conditional(variable, checkvalue, truevalue, falsevalue=
, d)
}


python sstate_clean_manifest () {
def sstate_clean_manifest(manifest, d):
    import oe.path

    mfile =3D open(manifest)
    entries =3D mfile.readlines()
    mfile.close()

    for entry in entries:
        entry =3D entry.strip()
        bb.debug(2, "Removing manifest: %s" % entry)
        # We can race against another package populating directories as we'=
re removing them
        # so we ignore errors here.
        try:
            if entry.endswith("/"):
               if os.path.islink(entry[:-1]):
                  os.remove(entry[:-1])
               elif os.path.exists(entry) and len(os.listdir(entry)) =3D=3D=
 0:
                  os.rmdir(entry[:-1])
            else:
                oe.path.remove(entry)
        except OSError:
            pass

    oe.path.remove(manifest)
}


python base_path_join () {
def base_path_join(a, *p):
    return oe.path.join(a, *p)
}


python base_get_metadata_svn_revision () {
def base_get_metadata_svn_revision(path, d):
	revision =3D "<unknown>"
	try:
		revision =3D file( "%s/.svn/entries" % path ).readlines()[3].strip()
	except IOError:
		pass
	return revision
}


python sstate_install () {
def sstate_install(ss, d):
    import oe.path

    sharedfiles =3D []
    shareddirs =3D []
    bb.mkdirhier(d.expand("/tool/yocto/poky/build/tmp/sstate-control"))
    manifest =3D d.expand("/tool/yocto/poky/build/tmp/sstate-control/manife=
st-virtex5-linux-xilinx.%s" % ss['name'])

    if os.access(manifest, os.R_OK):
        bb.fatal("Package already staged (%s)?!" % manifest)

    locks =3D []
    for lock in ss['lockfiles-shared']:
        locks.append(bb.utils.lockfile(lock, True))
    for lock in ss['lockfiles']:
        locks.append(bb.utils.lockfile(lock))

    for state in ss['dirs']:
        oe.path.copytree(state[1], state[2])
        for walkroot, dirs, files in os.walk(state[1]):
            bb.debug(2, "Staging files from %s to %s" % (state[1], state[2]=
))
            for file in files:
                srcpath =3D os.path.join(walkroot, file)
                dstpath =3D srcpath.replace(state[1], state[2])
                #bb.debug(2, "Staging %s to %s" % (srcpath, dstpath))
                sharedfiles.append(dstpath)
            for dir in dirs:
                srcdir =3D os.path.join(walkroot, dir)
                dstdir =3D srcdir.replace(state[1], state[2])
                #bb.debug(2, "Staging %s to %s" % (srcdir, dstdir))
                if not dstdir.endswith("/"):
                    dstdir =3D dstdir + "/"
                shareddirs.append(dstdir)
    f =3D open(manifest, "w")
    for file in sharedfiles:
        f.write(file + "\n")
    # We want to ensure that directories appear at the end of the manifest
    # so that when we test to see if they should be deleted any contents
    # added by the task will have been removed first.
    dirs =3D sorted(shareddirs, key=3Dlen)
    # Must remove children first, which will have a longer path than the pa=
rent
    for di in reversed(dirs):
        f.write(di + "\n")
    f.close()

    for postinst in (d.getVar('SSTATEPOSTINSTFUNCS', True) or '').split():
        bb.build.exec_func(postinst, d)

    for lock in locks:
        bb.utils.unlockfile(lock)
}


python base_get_metadata_monotone_branch () {
def base_get_metadata_monotone_branch(path, d):
	monotone_branch =3D "<unknown>"
	try:
		monotone_branch =3D file( "%s/_MTN/options" % path ).read().strip()
		if monotone_branch.startswith( "database" ):
			monotone_branch_words =3D monotone_branch.split()
			monotone_branch =3D monotone_branch_words[ monotone_branch_words.index( =
"branch" )+1][1:-1]
	except:
		pass
	return monotone_branch
}


python package_qa_check_staticdev () {
def package_qa_check_staticdev(path, name, d, elf, messages):
    """
    Check for ".a" library in non-staticdev packages
    There are a number of exceptions to this rule, -pic packages can contai=
n
    static libraries, the _nonshared.a belong with their -dev packages and
    libgcc.a, libgcov.a will be skipped in their packages
    """

    if not name.endswith("-pic") and not name.endswith("-staticdev") and pa=
th.endswith(".a") and not path.endswith("_nonshared.a"):
        messages.append("non -staticdev package contains static .a library:=
 %s path '%s'" % \
                 (name, package_qa_clean_path(path,d)))
}


python get_process_cputime () {
def get_process_cputime(pid):
    fields =3D open("/proc/%d/stat" % pid, "r").readline().rstrip().split()
    # 13: utime, 14: stime, 15: cutime, 16: cstime
    return sum(int(field) for field in fields[13:16])
}


python package_do_split_locales () {
	if (d.getVar('PACKAGE_NO_LOCALE', True) =3D=3D '1'):
		bb.debug(1, "package requested not splitting locales")
		return

	packages =3D (d.getVar('PACKAGES', True) or "").split()

	datadir =3D d.getVar('datadir', True)
	if not datadir:
		bb.note("datadir not defined")
		return

	dvar =3D d.getVar('PKGD', True)
	pn =3D d.getVar('PN', True)

	if pn + '-locale' in packages:
		packages.remove(pn + '-locale')

	localedir =3D os.path.join(dvar + datadir, 'locale')

	if not os.path.isdir(localedir):
		bb.debug(1, "No locale files in this package")
		return

	locales =3D os.listdir(localedir)

	summary =3D d.getVar('SUMMARY', True) or pn
	description =3D d.getVar('DESCRIPTION', True) or ""
        locale_section =3D d.getVar('LOCALE_SECTION', True)
	mlprefix =3D d.getVar('MLPREFIX', True) or ""
	for l in sorted(locales):
		ln =3D legitimize_package_name(l)
		pkg =3D pn + '-locale-' + ln
		packages.append(pkg)
		d.setVar('FILES_' + pkg, os.path.join(datadir, 'locale', l))
		d.setVar('RDEPENDS_' + pkg, '%s %svirtual-locale-%s' % (pn, mlprefix, ln)=
)
		d.setVar('RPROVIDES_' + pkg, '%s-locale %s%s-translation' % (pn, mlprefix=
, ln))
		d.setVar('SUMMARY_' + pkg, '%s - %s translations' % (summary, l))
		d.setVar('DESCRIPTION_' + pkg, '%s  This package contains language transl=
ation files for the %s locale.' % (description, l))
		if locale_section:
			d.setVar('SECTION_' + pkg, locale_section)

	d.setVar('PACKAGES', ' '.join(packages))

	# Disabled by RP 18/06/07
	# Wildcards aren't supported in debian
	# They break with ipkg since glibc-locale* will mean that
	# glibc-localedata-translit* won't install as a dependency
	# for some other package which breaks meta-toolchain
	# Probably breaks since virtual-locale- isn't provided anywhere
	#rdep =3D (d.getVar('RDEPENDS_%s' % pn, True) or d.getVar('RDEPENDS', True=
) or "").split()
	#rdep.append('%s-locale*' % pn)
	#d.setVar('RDEPENDS_%s' % pn, ' '.join(rdep))
}


python check_pseudo_wrapper () {
def check_pseudo_wrapper():
    import sys
    if not sys.argv[0].endswith('/bitbake'):
        return ""

    import subprocess as sub
    # Check if bitbake wrapper is being used
    pseudo_build =3D os.environ.get( 'PSEUDO_BUILD' )
    if not pseudo_build:
        bb.warn("Bitbake has not been run using the bitbake wrapper (script=
s/bitbake); this is likely because your PATH has been altered from that nor=
mally set up by the oe-init-build-env script. Not using the wrapper may res=
ult in failures during package installation, so it is highly recommended th=
at you set your PATH back so that the wrapper script is being executed.")

    if (not pseudo_build) or pseudo_build =3D=3D '2':
        # pseudo ought to be working, let's see if it is...
        p =3D sub.Popen(['sh', '-c', 'PSEUDO_DISABLED=3D0 id -u'],stdout=3D=
sub.PIPE,stderr=3Dsub.PIPE)
        out, err =3D p.communicate()
        if out.rstrip() !=3D '0':
            msg =3D "Pseudo is not functioning correctly, which will cause =
failures during package installation. Please check your configuration."
            if pseudo_build =3D=3D '2':
                return msg
            else:
                bb.warn(msg)
    return ""
}


python do_qa_staging () {
    bb.note("QA checking staging")

    if not package_qa_check_staged(d.expand('/tool/yocto/poky/build/tmp/wor=
k/virtex5-poky-linux/linux-xilinx-3.3.0-r0/sysroot-destdir///tool/yocto/pok=
y/build/tmp/sysroots/virtex5/usr/lib'), d):
        bb.fatal("QA staging was broken by the package built above")
}


python sstate_add () {
def sstate_add(ss, source, dest, d):
    srcbase =3D os.path.basename(source)
    ss['dirs'].append([srcbase, source, dest])
    return ss
}


python do_qa_configure () {
    import subprocess

    configs =3D []
    workdir =3D d.getVar('WORKDIR', True)
    bb.note("Checking autotools environment for common misconfiguration")
    for root, dirs, files in os.walk(workdir):
        statement =3D "grep -e 'CROSS COMPILE Badness:' -e 'is unsafe for c=
ross-compilation' %s > /dev/null" % \
                    os.path.join(root,"config.log")
        if "config.log" in files:
            if subprocess.call(statement, shell=3DTrue) =3D=3D 0:
                bb.fatal("""This autoconf log indicates errors, it looked a=
t host include and/or library paths while determining system capabilities.
Rerun configure task after fixing this. The path was '%s'""" % root)

        if "configure.ac" in files:
            configs.append(os.path.join(root,"configure.ac"))
        if "configure.in" in files:
            configs.append(os.path.join(root, "configure.in"))

    cnf =3D d.getVar('EXTRA_OECONF', True) or ""
    if "gettext" not in d.getVar('P', True) and "gcc-runtime" not in d.getV=
ar('P', True) and "--disable-nls" not in cnf:
       ml =3D d.getVar("MLPREFIX", True) or ""
       if bb.data.inherits_class('native', d) or bb.data.inherits_class('cr=
oss', d) or bb.data.inherits_class('crosssdk', d) or bb.data.inherits_class=
('nativesdk', d):
          gt =3D "gettext-native"
       elif bb.data.inherits_class('cross-canadian', d):
          gt =3D "gettext-nativesdk"
       else:
          gt =3D "virtual/" + ml + "gettext"
       deps =3D bb.utils.explode_deps(d.getVar('DEPENDS', True) or "")
       if gt not in deps:
          for config in configs:
              gnu =3D "grep \"^[[:space:]]*AM_GNU_GETTEXT\" %s >/dev/null" =
% config
              if subprocess.call(gnu, shell=3DTrue) =3D=3D 0:
                 bb.fatal("""%s required but not in DEPENDS for file %s.
Missing inherit gettext?""" % (gt, config))

    if not package_qa_check_license(workdir, d):
        bb.fatal("Licensing Error: LIC_FILES_CHKSUM does not match, please =
fix")
}


python should_apply () {
def should_apply(parm, d):
	"""Determine if we should apply the given patch"""

	if "mindate" in parm or "maxdate" in parm:
		pn =3D d.getVar('PN', True)
		srcdate =3D d.getVar('SRCDATE_%s' % pn, True)
		if not srcdate:
			srcdate =3D d.getVar('SRCDATE', True)

		if srcdate =3D=3D "now":
			srcdate =3D d.getVar('DATE', True)

		if "maxdate" in parm and parm["maxdate"] < srcdate:
			return False, 'is outdated'

		if "mindate" in parm and parm["mindate"] > srcdate:
			return False, 'is predated'


	if "minrev" in parm:
		srcrev =3D d.getVar('SRCREV', True)
		if srcrev and srcrev < parm["minrev"]:
			return False, 'applies to later revisions'

	if "maxrev" in parm:
		srcrev =3D d.getVar('SRCREV', True)
		if srcrev and srcrev > parm["maxrev"]:
			return False, 'applies to earlier revisions'

	if "rev" in parm:
		srcrev =3D d.getVar('SRCREV', True)
		if srcrev and parm["rev"] not in srcrev:
			return False, "doesn't apply to revision"

	if "notrev" in parm:
		srcrev =3D d.getVar('SRCREV', True)
		if srcrev and parm["notrev"] in srcrev:
			return False, "doesn't apply to revision"

	return True, None
}


python check_supported_distro () {
def check_supported_distro(sanity_data):
    tested_distros =3D sanity_data.getVar('SANITY_TESTED_DISTROS', True)
    if not tested_distros:
        return

    if os.path.exists("/etc/redhat-release"):
        f =3D open("/etc/redhat-release", "r")
        try:
            distro =3D f.readline().strip()
        finally:
            f.close()
    elif os.path.exists("/etc/SuSE-release"):
        import re
        f =3D open("/etc/SuSE-release", "r")
        try:
            distro =3D f.readline()
            # Remove the architecture suffix e.g. (i586)
            distro =3D re.sub(r' \([a-zA-Z0-9\-_]*\)$', '', distro).strip()
        finally:
            f.close()
    else:
        # Use LSB method
        import subprocess as sub
        try:
            p =3D sub.Popen(['lsb_release','-d','-s'],stdout=3Dsub.PIPE,std=
err=3Dsub.PIPE)
            out, err =3D p.communicate()
            distro =3D out.rstrip()
        except Exception:
            distro =3D None

        if not distro:
            if os.path.exists("/etc/lsb-release"):
                f =3D open("/etc/lsb-release", "r")
                try:
                    for line in f:
                        lns =3D line.split('=3D')
                        if lns[0] =3D=3D "DISTRIB_DESCRIPTION":
                            distro =3D lns[1].strip('"\n')
                            break
                finally:
                    f.close()
    if distro:
        if distro not in [x.strip() for x in tested_distros.split('\\n')]:
            bb.warn('Host distribution "%s" has not been validated with thi=
s version of the build system; you may possibly experience unexpected failu=
res. It is recommended that you use a tested distribution.' % distro)
    else:
        bb.warn('Host distribution could not be determined; you may possibl=
y experience unexpected failures. It is recommended that you use a tested d=
istribution.')
}


python preferred_ml_updates () {
def preferred_ml_updates(d):
    # If any PREFERRED_PROVIDER or PREFERRED_VERSIONS are set,
    # we need to mirror these variables in the multilib case
    multilibs =3D d.getVar('MULTILIBS', True) or ""
    if not multilibs:
        return

    prefixes =3D []
    for ext in multilibs.split():
        eext =3D ext.split(':')
        if len(eext) > 1 and eext[0] =3D=3D 'multilib':
            prefixes.append(eext[1])

    versions =3D []
    providers =3D []
    for v in d.keys():
        if v.startswith("PREFERRED_VERSION_"):
            versions.append(v)
        if v.startswith("PREFERRED_PROVIDER_"):
            providers.append(v)

    for v in versions:
        val =3D d.getVar(v, False)
        pkg =3D v.replace("PREFERRED_VERSION_", "")
        if pkg.endswith("-native") or pkg.endswith("-nativesdk"):
            continue
        for p in prefixes:
            newname =3D "PREFERRED_VERSION_" + p + "-" + pkg
            if not d.getVar(newname, False):
                d.setVar(newname, val)

    for prov in providers:
        val =3D d.getVar(prov, False)
        pkg =3D prov.replace("PREFERRED_PROVIDER_", "")
        if pkg.endswith("-native") or pkg.endswith("-nativesdk"):
            continue
        virt =3D ""
        if pkg.startswith("virtual/"):
             pkg =3D pkg.replace("virtual/", "")
             virt =3D "virtual/"
        for p in prefixes:
            newname =3D "PREFERRED_PROVIDER_" + virt + p + "-" + pkg
            if pkg !=3D "kernel":
                val =3D p + "-" + val
            if not d.getVar(newname, False):
                d.setVar(newname, val)


    mp =3D (d.getVar("MULTI_PROVIDER_WHITELIST", True) or "").split()
    extramp =3D []
    for p in mp:
        if p.endswith("-native") or p.endswith("-nativesdk"):
            continue
        virt =3D ""
        if p.startswith("virtual/"):
            p =3D p.replace("virtual/", "")
            virt =3D "virtual/"
        for pref in prefixes:
            extramp.append(virt + pref + "-" + p)
    d.setVar("MULTI_PROVIDER_WHITELIST", " ".join(mp + extramp))

}


python do_patch () {
	bb.build.exec_func('base_do_patch', d)
}


python base_less_or_equal () {
def base_less_or_equal(variable, checkvalue, truevalue, falsevalue, d):
    return oe.utils.less_or_equal(variable, checkvalue, truevalue, falseval=
ue, d)
}


python check_sanity () {
def check_sanity(sanity_data):
    from bb import note, error, data, __version__
    import subprocess

    try:
        from distutils.version import LooseVersion
    except ImportError:
        def LooseVersion(v): print "WARNING: sanity.bbclass can't compare v=
ersions without python-distutils"; return 1
    import commands

    # Check the bitbake version meets minimum requirements
    minversion =3D sanity_data.getVar('BB_MIN_VERSION', True)
    if not minversion:
        # Hack: BB_MIN_VERSION hasn't been parsed yet so return
        # and wait for the next call
        print "Foo %s" % minversion
        return

    if 0 =3D=3D os.getuid():
        raise_sanity_error("Do not use Bitbake as root.", sanity_data)

    messages =3D ""

    # Check the Python version, we now use Python 2.6 features in
    # various classes
    import sys
    if sys.hexversion < 0x020600F0:
        messages =3D messages + 'The system requires at least Python 2.6 to=
 run. Please update your Python interpreter.\n'

    if (LooseVersion(__version__) < LooseVersion(minversion)):
        messages =3D messages + 'Bitbake version %s is required and version=
 %s was found\n' % (minversion, __version__)

    # Check that the MACHINE is valid, if it is set
    if sanity_data.getVar('MACHINE', True):
        if not check_conf_exists("conf/machine/virtex5.conf", sanity_data):
            messages =3D messages + 'Please set a valid MACHINE in your loc=
al.conf or environment\n'
        else:
            messages =3D messages + check_sanity_validmachine(sanity_data)
    else:
        messages =3D messages + 'Please set a MACHINE in your local.conf or=
 environment\n'

    # Check we are using a valid lacal.conf
    current_conf  =3D sanity_data.getVar('CONF_VERSION', True)
    conf_version =3D  sanity_data.getVar('LOCALCONF_VERSION', True)

    if current_conf !=3D conf_version:
        messages =3D messages + "Your version of local.conf was generated f=
rom an older version of local.conf.sample and there have been updates made =
to this file. Please compare the two files and merge any changes before con=
tinuing.\nMatching the version numbers will remove this message.\n\"meld co=
nf/local.conf conf/local.conf.sample\" is a good way to visualise the chang=
es.\n"

    # Check bblayers.conf is valid
    current_lconf =3D sanity_data.getVar('LCONF_VERSION', True)
    lconf_version =3D sanity_data.getVar('LAYER_CONF_VERSION', True)
    if current_lconf !=3D lconf_version:
        messages =3D messages + "Your version of bblayers.conf was generate=
d from an older version of bblayers.conf.sample and there have been updates=
 made to this file. Please compare the two files and merge any changes befo=
re continuing.\nMatching the version numbers will remove this message.\n\"m=
eld conf/bblayers.conf conf/bblayers.conf.sample\" is a good way to visuali=
se the changes.\n"

    # If we have a site.conf, check it's valid
    if check_conf_exists("conf/site.conf", sanity_data):
        current_sconf =3D sanity_data.getVar('SCONF_VERSION', True)
        sconf_version =3D sanity_data.getVar('SITE_CONF_VERSION', True)
        if current_sconf !=3D sconf_version:
            messages =3D messages + "Your version of site.conf was generate=
d from an older version of site.conf.sample and there have been updates mad=
e to this file. Please compare the two files and merge any changes before c=
ontinuing.\nMatching the version numbers will remove this message.\n\"meld =
conf/site.conf conf/site.conf.sample\" is a good way to visualise the chang=
es.\n"

    assume_provided =3D sanity_data.getVar('ASSUME_PROVIDED', True).split()
    # Check user doesn't have ASSUME_PROVIDED =3D instead of +=3D in local.=
conf
    if "diffstat-native" not in assume_provided:
        messages =3D messages + 'Please use ASSUME_PROVIDED +=3D, not ASSUM=
E_PROVIDED =3D in your local.conf\n'

    # Check that DL_DIR is set, exists and is writable. In theory, we shoul=
d never even hit the check if DL_DIR isn't
    # set, since so much relies on it being set.
    dldir =3D sanity_data.getVar('DL_DIR', True)
    if not dldir:
        messages =3D messages + "DL_DIR is not set. Your environment is mis=
configured, check that DL_DIR is set, and if the directory exists, that it =
is writable. \n"
    if os.path.exists(dldir) and not os.access(dldir, os.W_OK):
        messages =3D messages + "DL_DIR: %s exists but you do not appear to=
 have write access to it. \n" % dldir

    # Check that the DISTRO is valid, if set
    # need to take into account DISTRO renaming DISTRO
    distro =3D sanity_data.getVar('DISTRO', True)
    if distro:
        if not ( check_conf_exists("conf/distro/poky.conf", sanity_data) or=
 check_conf_exists("conf/distro/include/poky.inc", sanity_data) ):
            messages =3D messages + "DISTRO '%s' not found. Please set a va=
lid DISTRO in your local.conf\n" % sanity_data.getVar("DISTRO", True )

    missing =3D ""

    if not check_app_exists("make", sanity_data):
        missing =3D missing + "GNU make,"

    if not check_app_exists('gcc', sanity_data):
        missing =3D missing + "C Compiler (%sgcc)," % sanity_data.getVar("B=
UILD_PREFIX", True)

    if not check_app_exists('g++', sanity_data):
        missing =3D missing + "C++ Compiler (%sg++)," % sanity_data.getVar(=
"BUILD_PREFIX", True)

    required_utilities =3D sanity_data.getVar('SANITY_REQUIRED_UTILITIES', =
True)

    if "qemu-native" in assume_provided:
        if not check_app_exists("qemu-arm", sanity_data):
            messages =3D messages + "qemu-native was in ASSUME_PROVIDED but=
 the QEMU binaries (qemu-arm) can't be found in PATH"

    paths =3D sanity_data.getVar('PATH', True).split(":")
    if "." in paths or "" in paths:
        messages =3D messages + "PATH contains '.' or '', which will break =
the build, please remove this."

    bbpaths =3D sanity_data.getVar('BBPATH', True).split(":")
    if "." in bbpaths or "" in bbpaths:
        # TODO: change the following message to fatal when all BBPATH issue=
s
        # are fixed
        bb.warn("BBPATH references the current directory, either through " =
   \
                "an empty entry, or a '.'.\n\t This is unsafe and means you=
r "\
                "layer configuration is adding empty elements to BBPATH.\n\=
t "\
                "Please check your layer.conf files and other BBPATH "     =
   \
                "settings to remove the current working directory "        =
   \
                "references.");

    if sanity_data.getVar('TARGET_ARCH', True) =3D=3D "arm":
        # This path is no longer user-readable in modern (very recent) Linu=
x
        try:
            if os.path.exists("/proc/sys/vm/mmap_min_addr"):
                f =3D open("/proc/sys/vm/mmap_min_addr", "r")
                try:
                    if (int(f.read().strip()) > 65536):
                        messages =3D messages + "/proc/sys/vm/mmap_min_addr=
 is not <=3D 65536. This will cause problems with qemu so please fix the va=
lue (as root).\n\nTo fix this in later reboots, set vm.mmap_min_addr =3D 65=
536 in /etc/sysctl.conf.\n"
                finally:
                    f.close()
        except:
            pass

    for util in required_utilities.split():
        if not check_app_exists( util, sanity_data ):
            missing =3D missing + "%s," % util

    if missing !=3D "":
        missing =3D missing.rstrip(',')
        messages =3D messages + "Please install the following missing utili=
ties: %s\n" % missing

    pseudo_msg =3D check_pseudo_wrapper()
    if pseudo_msg !=3D "":
        messages =3D messages + pseudo_msg + '\n'

    check_supported_distro(sanity_data)
    toolchain_msg =3D check_toolchain(sanity_data)
    if toolchain_msg !=3D "":
        messages =3D messages + toolchain_msg + '\n'

    # Check if DISPLAY is set if IMAGETEST is set
    if not sanity_data.getVar( 'DISPLAY', True ) and sanity_data.getVar( 'I=
MAGETEST', True ) =3D=3D 'qemu':
        messages =3D messages + 'qemuimagetest needs a X desktop to start q=
emu, please set DISPLAY correctly (e.g. DISPLAY=3D:1.0)\n'

    omask =3D os.umask(022)
    if omask & 0755:
        messages =3D messages + "Please use a umask which allows a+rx and u=
+rwx\n"
    os.umask(omask)

    oes_bb_conf =3D sanity_data.getVar( 'OES_BITBAKE_CONF', True)
    if not oes_bb_conf:
        messages =3D messages + 'You do not include the OpenEmbedded versio=
n of conf/bitbake.conf. This means your environment is misconfigured, in pa=
rticular check BBPATH.\n'

    nolibs =3D sanity_data.getVar('NO32LIBS', True)
    if not nolibs:
        lib32path =3D '/lib'
        if os.path.exists('/lib64') and ( os.path.islink('/lib64') or os.pa=
th.islink('/lib') ):
           lib32path =3D '/lib32'

        if os.path.exists('%s/libc.so.6' % lib32path) and not os.path.exist=
s('/usr/include/gnu/stubs-32.h'):
            messages =3D messages + "You have a 32-bit libc, but no 32-bit =
headers.  You must install the 32-bit libc headers.\n"

    tmpdir =3D sanity_data.getVar('TMPDIR', True)
    sstate_dir =3D sanity_data.getVar('SSTATE_DIR', True)

    # Check saved sanity info
    last_sanity_version =3D 0
    last_tmpdir =3D ""
    last_sstate_dir =3D ""
    sanityverfile =3D 'conf/sanity_info'
    if os.path.exists(sanityverfile):
        f =3D file(sanityverfile, 'r')
        for line in f:
            if line.startswith('SANITY_VERSION'):
                last_sanity_version =3D int(line.split()[1])
            if line.startswith('TMPDIR'):
                last_tmpdir =3D line.split()[1]
            if line.startswith('SSTATE_DIR'):
                last_sstate_dir =3D line.split()[1]

    sanity_version =3D int(sanity_data.getVar('SANITY_VERSION', True) or 1)
    if last_sanity_version < sanity_version:
        messages =3D messages + check_sanity_version_change(sanity_data)
        messages =3D messages + check_sanity_tmpdir_change(tmpdir, sanity_d=
ata)
        messages =3D messages + check_sanity_sstate_dir_change(sstate_dir, =
sanity_data)
    else:
        if last_tmpdir !=3D tmpdir:
            messages =3D messages + check_sanity_tmpdir_change(tmpdir, sani=
ty_data)
        if last_sstate_dir !=3D sstate_dir:
            messages =3D messages + check_sanity_sstate_dir_change(sstate_d=
ir, sanity_data)

    if os.path.exists("conf") and not messages:
        f =3D file(sanityverfile, 'w')
        f.write("SANITY_VERSION %s\n" % sanity_version)
        f.write("TMPDIR %s\n" % tmpdir)
        f.write("SSTATE_DIR %s\n" % sstate_dir)

    #
    # Check that TMPDIR hasn't changed location since the last time we were=
 run
    #
    checkfile =3D os.path.join(tmpdir, "saved_tmpdir")
    if os.path.exists(checkfile):
        f =3D file(checkfile, "r")
        saved_tmpdir =3D f.read().strip()
        if (saved_tmpdir !=3D tmpdir):
            messages =3D messages + "Error, TMPDIR has changed location. Yo=
u need to either move it back to %s or rebuild\n" % saved_tmpdir
    else:
        f =3D file(checkfile, "w")
        f.write(tmpdir)
    f.close()

    #
    # Check the 'ABI' of TMPDIR
    #
    current_abi =3D sanity_data.getVar('OELAYOUT_ABI', True)
    abifile =3D sanity_data.getVar('SANITY_ABIFILE', True)
    if os.path.exists(abifile):
        f =3D file(abifile, "r")
        abi =3D f.read().strip()
        if not abi.isdigit():
            f =3D file(abifile, "w")
            f.write(current_abi)
        elif abi =3D=3D "2" and current_abi =3D=3D "3":
            bb.note("Converting staging from layout version 2 to layout ver=
sion 3")
            subprocess.call(sanity_data.expand("mv /tool/yocto/poky/build/t=
mp/staging /tool/yocto/poky/build/tmp/sysroots"), shell=3DTrue)
            subprocess.call(sanity_data.expand("ln -s sysroots /tool/yocto/=
poky/build/tmp/staging"), shell=3DTrue)
            subprocess.call(sanity_data.expand("cd /tool/yocto/poky/build/t=
mp/stamps; for i in */*do_populate_staging; do new=3D`echo $i | sed -e 's/d=
o_populate_staging/do_populate_sysroot/'`; mv $i $new; done"), shell=3DTrue=
)
            f =3D file(abifile, "w")
            f.write(current_abi)
        elif abi =3D=3D "3" and current_abi =3D=3D "4":
            bb.note("Converting staging layout from version 3 to layout ver=
sion 4")
            if os.path.exists(sanity_data.expand("/tool/yocto/poky/build/tm=
p/sysroots/x86_64-linux/usr/bin/virtex5-poky-linux")):
                subprocess.call(sanity_data.expand("mv /tool/yocto/poky/bui=
ld/tmp/sysroots/x86_64-linux/usr/bin/virtex5-poky-linux /tool/yocto/poky/bu=
ild/tmp/sysroots/virtex5/usr/bin/crossscripts"), shell=3DTrue)
                subprocess.call(sanity_data.expand("ln -s /tool/yocto/poky/=
build/tmp/sysroots/virtex5/usr/bin/crossscripts /tool/yocto/poky/build/tmp/=
sysroots/x86_64-linux/usr/bin/virtex5-poky-linux"), shell=3DTrue)

            f =3D file(abifile, "w")
            f.write(current_abi)
        elif abi =3D=3D "4":
            messages =3D messages + "Staging layout has changed. The cross =
directory has been deprecated and cross packages are now built under the na=
tive sysroot.\nThis requires a rebuild.\n"
        elif abi =3D=3D "5" and current_abi =3D=3D "6":
            bb.note("Converting staging layout from version 5 to layout ver=
sion 6")
            subprocess.call(sanity_data.expand("mv /tool/yocto/poky/build/t=
mp/pstagelogs /tool/yocto/poky/build/tmp/sstate-control"), shell=3DTrue)
            f =3D file(abifile, "w")
            f.write(current_abi)
        elif abi =3D=3D "7" and current_abi =3D=3D "8":
            messages =3D messages + "Your configuration is using stamp file=
s including the sstate hash but your build directory was built with stamp f=
iles that do not include this.\nTo continue, either rebuild or switch back =
to the OEBasic signature handler with BB_SIGNATURE_HANDLER =3D 'OEBasic'.\n=
"
        elif (abi !=3D current_abi):
            # Code to convert from one ABI to another could go here if poss=
ible.
            messages =3D messages + "Error, TMPDIR has changed its layout v=
ersion number (%s to %s) and you need to either rebuild, revert or adjust i=
t at your own risk.\n" % (abi, current_abi)
    else:
        f =3D file(abifile, "w")
        f.write(current_abi)
    f.close()

    oeroot =3D sanity_data.getVar('COREBASE')
    if oeroot.find ('+') !=3D -1:
        messages =3D messages + "Error, you have an invalid character (+) i=
n your COREBASE directory path. Please move the installation to a directory=
 which doesn't include a +."
    elif oeroot.find (' ') !=3D -1:
        messages =3D messages + "Error, you have a space in your COREBASE d=
irectory path. Please move the installation to a directory which doesn't in=
clude a space."

    if messages !=3D "":
        raise_sanity_error(messages, sanity_data)
}


python check_sanity_tmpdir_change () {
def check_sanity_tmpdir_change(tmpdir, data):
    # Sanity checks to be done when the value of TMPDIR changes

    # Check that TMPDIR isn't on a filesystem with limited filename length =
(eg. eCryptFS)
    testmsg =3D check_create_long_filename(tmpdir, "TMPDIR")
    # Check that we can fetch from various network transports
    testmsg =3D testmsg + check_connectivity(data)
    return testmsg
}


python sstate_hardcode_path () {
def sstate_hardcode_path(d):
	import subprocess

	# Need to remove hardcoded paths and fix these when we install the
	# staging packages.
	#
	# Note: the logic in this function needs to match the reverse logic
	# in sstate_installpkg(ss, d)

	staging =3D d.getVar('STAGING_DIR', True)
	staging_target =3D d.getVar('STAGING_DIR_TARGET', True)
	staging_host =3D d.getVar('STAGING_DIR_HOST', True)
	sstate_builddir =3D d.getVar('SSTATE_BUILDDIR', True)

	if bb.data.inherits_class('native', d) or bb.data.inherits_class('nativesd=
k', d) or bb.data.inherits_class('crosssdk', d) or bb.data.inherits_class('=
cross-canadian', d):
		sstate_grep_cmd =3D "grep -l -e '%s'" % (staging)
		sstate_sed_cmd =3D "sed -i -e 's:%s:FIXMESTAGINGDIR:g'" % (staging)
	elif bb.data.inherits_class('cross', d):
		sstate_grep_cmd =3D "grep -l -e '(%s|%s)'" % (staging_target, staging)
		sstate_sed_cmd =3D "sed -i -e 's:%s:FIXMESTAGINGDIRTARGET:g; s:%s:FIXMEST=
AGINGDIR:g'" % (staging_target, staging)
	else:
		sstate_grep_cmd =3D "grep -l -e '%s'" % (staging_host)
		sstate_sed_cmd =3D "sed -i -e 's:%s:FIXMESTAGINGDIRHOST:g'" % (staging_ho=
st)

	fixmefn =3D  sstate_builddir + "fixmepath"

	sstate_scan_cmd =3D d.getVar('SSTATE_SCAN_CMD', True)
	sstate_filelist_cmd =3D "tee %s" % (fixmefn)

	# fixmepath file needs relative paths, drop sstate_builddir prefix
	sstate_filelist_relative_cmd =3D "sed -i -e 's:^%s::g' %s" % (sstate_build=
dir, fixmefn)

	# Limit the fixpaths and sed operations based on the initial grep search
	# This has the side effect of making sure the vfs cache is hot
	sstate_hardcode_cmd =3D "%s | xargs %s | %s | xargs --no-run-if-empty %s" =
% (sstate_scan_cmd, sstate_grep_cmd, sstate_filelist_cmd, sstate_sed_cmd)

	print "Removing hardcoded paths from sstate package: '%s'" % (sstate_hardc=
ode_cmd)
	subprocess.call(sstate_hardcode_cmd, shell=3DTrue)

        # If the fixmefn is empty, remove it..
	if os.stat(fixmefn).st_size =3D=3D 0:
		os.remove(fixmefn)
	else:
		print "Replacing absolute paths in fixmepath file: '%s'" % (sstate_fileli=
st_relative_cmd)
		subprocess.call(sstate_filelist_relative_cmd, shell=3DTrue)
}


python splitfile () {
def splitfile(file, debugfile, debugsrcdir, d):
    # Function to split a single file, called from split_and_strip_files be=
low
    # A working 'file' (one which works on the target architecture)
    # is split and the split off portions go to debugfile.
    #
    # The debug information is then processed for src references.  These
    # references are copied to debugsrcdir, if defined.

    import commands, stat, subprocess

    dvar =3D d.getVar('PKGD', True)
    pathprefix =3D "export PATH=3D%s; " % d.getVar('PATH', True)
    objcopy =3D d.getVar("OBJCOPY", True)
    debugedit =3D d.expand("/tool/yocto/poky/build/tmp/sysroots/x86_64-linu=
x/usr/lib/rpm/bin/debugedit")
    workdir =3D d.getVar("WORKDIR", True)
    workparentdir =3D os.path.dirname(workdir)
    sourcefile =3D d.expand("/tool/yocto/poky/build/tmp/work/virtex5-poky-l=
inux/linux-xilinx-3.3.0-r0/debugsources.list")

    # We ignore kernel modules, we don't generate debug info files.
    if file.find("/lib/modules/") !=3D -1 and file.endswith(".ko"):
	return 1

    newmode =3D None
    if not os.access(file, os.W_OK) or os.access(file, os.R_OK):
        origmode =3D os.stat(file)[stat.ST_MODE]
        newmode =3D origmode | stat.S_IWRITE | stat.S_IREAD
        os.chmod(file, newmode)

    # We need to extract the debug src information here...
    if debugsrcdir:
	subprocess.call("%s'%s' -b '%s' -d '%s' -i -l '%s' '%s'" % (pathprefix, de=
bugedit, workparentdir, debugsrcdir, sourcefile, file), shell=3DTrue)

    bb.mkdirhier(os.path.dirname(debugfile))

    subprocess.call("%s'%s' --only-keep-debug '%s' '%s'" % (pathprefix, obj=
copy, file, debugfile), shell=3DTrue)

    # Set the debuglink to have the view of the file path on the target
    subprocess.call("%s'%s' --add-gnu-debuglink=3D'%s' '%s'" % (pathprefix,=
 objcopy, debugfile, file), shell=3DTrue)

    if newmode:
        os.chmod(file, origmode)

    return 0
}


python do_listtasks () {
	import sys
	# emit variables and shell functions
	#bb.data.emit_env(sys.__stdout__, d)
	# emit the metadata which isnt valid shell
	for e in d.keys():
		if d.getVarFlag(e, 'task'):
			bb.plain("%s" % e)
}


python package_qa_clean_path () {
def package_qa_clean_path(path,d):
    """ Remove the common prefix from the path. In this case it is the TMPD=
IR"""
    return path.replace(d.getVar('TMPDIR',True),"")
}


python machine_paths () {
def machine_paths(d):
    """List any existing machine specific filespath directories"""
    machine =3D d.getVar("MACHINE", True)
    filespathpkg =3D d.getVar("FILESPATHPKG", True).split(":")
    for basepath in d.getVar("FILESPATHBASE", True).split(":"):
        for pkgpath in filespathpkg:
            machinepath =3D os.path.join(basepath, pkgpath, machine)
            if os.path.isdir(machinepath):
                yield machinepath
}


python package_qa_check_buildpaths () {
def package_qa_check_buildpaths(path, name, d, elf, messages):
    """
    Check for build paths inside target files and error if not found in the=
 whitelist
    """
    # Ignore .debug files, not interesting
    if path.find(".debug") !=3D -1:
        return

    # Ignore symlinks
    if os.path.islink(path):
        return

    tmpdir =3D d.getVar('TMPDIR', True)
    file_content =3D open(path).read()
    if tmpdir in file_content:
        messages.append("File %s in package contained reference to tmpdir" =
% package_qa_clean_path(path,d))
}


python incompatible_license () {
def incompatible_license(d, dont_want_license, package=3D""):
    """
    This function checks if a recipe has only incompatible licenses. It als=
o take into consideration 'or'
    operand.
    """
    import re
    import oe.license
    from fnmatch import fnmatchcase as fnmatch
    pn =3D d.getVar('PN', True)
    dont_want_licenses =3D []
    dont_want_licenses.append(d.getVar('INCOMPATIBLE_LICENSE', True))
    recipe_license =3D d.getVar('LICENSE', True)
    if package !=3D "":
        if d.getVar('LICENSE_' + pn + '-' + package, True):
            license =3D d.getVar('LICENSE_' + pn + '-' + package, True)
        else:
            license =3D recipe_license
    else:
        license =3D recipe_license
    spdx_license =3D return_spdx(d, dont_want_license)
    dont_want_licenses.append(spdx_license)

    def include_license(license):
        if any(fnmatch(license, pattern) for pattern in dont_want_licenses)=
:
            return False
        else:
            return True

    def choose_licenses(a, b):
        if all(include_license(lic) for lic in a):
            return a
        else:
            return b

    """
    If you want to exlude license named generically 'X', we surely want to =
exlude 'X+' as well.
    In consequence, we will exclude the '+' character from LICENSE in case =
INCOMPATIBLE_LICENSE
    is not a 'X+' license.
    """
    if not re.search(r'[+]',dont_want_license):
        licenses=3Doe.license.flattened_licenses(re.sub(r'[+]', '', license=
), choose_licenses)
    else:
        licenses=3Doe.license.flattened_licenses(license, choose_licenses)

    for onelicense in licenses:
        if not include_license(onelicense):
            return True
    return False
}


python do_package_setscene () {
	sstate_setscene(d)
}


python base_dep_prepend () {
None}


python legitimize_package_name () {
def legitimize_package_name(s):
	"""
	Make sure package names are legitimate strings
	"""
	import re

	def fixutf(m):
		cp =3D m.group(1)
		if cp:
			return ('\u%s' % cp).decode('unicode_escape').encode('utf-8')

	# Handle unicode codepoints encoded as <U0123>, as in glibc locale files.
	s =3D re.sub('<U([0-9A-Fa-f]{1,4})>', fixutf, s)

	# Remaining package name validity fixes
	return s.lower().replace('_', '-').replace('@', '+').replace(',', '+').rep=
lace('/', '-')
}


python check_create_long_filename () {
def check_create_long_filename(filepath, pathname):
    testfile =3D os.path.join(filepath, ''.join([`num`[-1] for num in xrang=
e(1,200)]))
    try:
        if not os.path.exists(filepath):
            bb.utils.mkdirhier(filepath)
        f =3D file(testfile, "w")
        f.close()
        os.remove(testfile)
    except IOError as (errno, strerror):
        if errno =3D=3D 36: # ENAMETOOLONG
            return "Failed to create a file with a long name in %s. Please =
use a filesystem that does not unreasonably limit filename length.\n" % pat=
hname
        else:
            return "Failed to create a file in %s: %s.\n" % (pathname, stre=
rror)
    except OSError as (errno, strerror):
        return "Failed to create %s directory in which to run long name san=
ity check: %s.\n" % (pathname, strerror)
    return ""
}


python do_populate_lic_setscene () {
	sstate_setscene(d)
}


python check_toolchain () {
def check_toolchain(data):
    tune_error_set =3D []
    deftune =3D data.getVar("DEFAULTTUNE", True)
    tune_errors =3D check_toolchain_tune(data, deftune, 'default')
    if tune_errors:
        tune_error_set.append(tune_errors)

    multilibs =3D (data.getVar("MULTILIB_VARIANTS", True) or "").split()
    if multilibs:
        seen_libs =3D []
        seen_tunes =3D []
        for lib in multilibs:
            if lib in seen_libs:
                tune_error_set.append("The multilib '%s' appears more than =
once." % lib)
            else:
                seen_libs.append(lib)
            tune =3D data.getVar("DEFAULTTUNE_virtclass-multilib-%s" % lib,=
 True)
            if tune in seen_tunes:
                tune_error_set.append("The tuning '%s' appears in more than=
 one multilib." % tune)
            else:
                seen_libs.append(tune)
            if tune =3D=3D deftune:
                tune_error_set.append("Multilib '%s' (%s) is also the defau=
lt tuning." % (lib, deftune))
            else:
                tune_errors =3D check_toolchain_tune(data, tune, lib)
            if tune_errors:
                tune_error_set.append(tune_errors)
    if tune_error_set:
        return "Toolchain tunings invalid:\n" + '\n'.join(tune_error_set)

    return ""
}


python pstaging_fetch () {
def pstaging_fetch(sstatepkg, d):
    import bb.fetch2

    # Only try and fetch if the user has configured a mirror
    mirrors =3D d.getVar('SSTATE_MIRRORS', True)
    if not mirrors:
        return

    # Copy the data object and override DL_DIR and SRC_URI
    localdata =3D bb.data.createCopy(d)
    bb.data.update_data(localdata)

    dldir =3D localdata.expand("/tool/yocto/poky/build/sstate-cache")
    srcuri =3D "file://" + os.path.basename(sstatepkg)

    bb.mkdirhier(dldir)

    localdata.setVar('DL_DIR', dldir)
    localdata.setVar('PREMIRRORS', mirrors)
    localdata.setVar('SRC_URI', srcuri)

    # Try a fetch from the sstate mirror, if it fails just return and
    # we will build the package
    try:
        fetcher =3D bb.fetch2.Fetch([srcuri], localdata, cache=3DFalse)
        fetcher.download()

        # Need to optimise this, if using file:// urls, the fetcher just ch=
anges the local path
        # For now work around by symlinking
        localpath =3D bb.data.expand(fetcher.localpath(srcuri), localdata)
        if localpath !=3D sstatepkg and os.path.exists(localpath) and not o=
s.path.exists(sstatepkg):
            os.symlink(localpath, sstatepkg)

    except bb.fetch2.BBFetchException:
        pass
}


python package_qa_check_dev () {
def package_qa_check_dev(path, name, d, elf, messages):
    """
    Check for ".so" library symlinks in non-dev packages
    """

    if not name.endswith("-dev") and not name.endswith("-dbg") and not name=
.endswith("-nativesdk") and path.endswith(".so") and os.path.islink(path):
        messages.append("non -dev/-dbg/-nativesdk package contains symlink =
.so: %s path '%s'" % \
                 (name, package_qa_clean_path(path,d)))
}


python prserv_get_pr_auto () {
def prserv_get_pr_auto(d):
    import oe.prservice
    if d.getVar('USE_PR_SERV', True) !=3D "1":
        bb.warn("Not using network based PR service")
        return None

    version =3D d.getVar("PRAUTOINX", True)
    pkgarch =3D d.getVar("PACKAGE_ARCH", True)
    checksum =3D d.getVar("BB_TASKHASH", True)

    if d.getVar('PRSERV_LOCKDOWN', True):
        auto_rev =3D d.getVar('PRAUTO_' + version + '_' + pkgarch, True) or=
 d.getVar('PRAUTO_' + version, True) or None
    else:
        conn =3D d.getVar("__PRSERV_CONN", True)
        if conn is None:
            conn =3D oe.prservice.prserv_make_conn(d)
            if conn is None:
                return None
        auto_rev =3D conn.getPR(version, pkgarch, checksum)

    return auto_rev}


python do_fetch () {
	bb.build.exec_func('base_do_fetch', d)
}


python write_specfile () {
	import textwrap
	import oe.packagedata

	# append information for logs and patches to %prep
	def add_prep(d,spec_files_bottom):
		if d.getVar('SOURCE_ARCHIVE_PACKAGE_TYPE', True) and d.getVar('SOURCE_ARC=
HIVE_PACKAGE_TYPE', True).upper() =3D=3D 'SRPM':
			spec_files_bottom.append('%%prep -n %s' % d.getVar('PN', True) )
			spec_files_bottom.append('%s' % "echo \"include logs and patches, Please=
 check them in SOURCES\"")
			spec_files_bottom.append('')

	# get the name of tarball for sources, patches and logs
	def get_tarballs(d):
		if d.getVar('SOURCE_ARCHIVE_PACKAGE_TYPE', True) and d.getVar('SOURCE_ARC=
HIVE_PACKAGE_TYPE', True).upper() =3D=3D 'SRPM':
			return get_package(d)

	# append the name of tarball to key word 'SOURCE' in xxx.spec.
	def tail_source(d,source_list=3D[],patch_list=3DNone):
		if d.getVar('SOURCE_ARCHIVE_PACKAGE_TYPE', True) and d.getVar('SOURCE_ARC=
HIVE_PACKAGE_TYPE', True).upper() =3D=3D 'SRPM':
			source_number =3D 0
			patch_number =3D 0
			for source in source_list:
				spec_preamble_top.append('Source' + str(source_number) + ': %s' % sourc=
e)
				source_number +=3D 1
			if patch_list:
				for patch in patch_list:
					print_deps(patch, "Patch" + str(patch_number), spec_preamble_top, d)
					patch_number +=3D 1
	# We need a simple way to remove the MLPREFIX from the package name,
	# and dependency information...
	def strip_multilib(name, d):
		multilibs =3D d.getVar('MULTILIBS', True) or ""
		for ext in multilibs.split():
			eext =3D ext.split(':')
			if len(eext) > 1 and eext[0] =3D=3D 'multilib' and name and name.find(ee=
xt[1] + '-') >=3D 0:
				name =3D "".join(name.split(eext[1] + '-'))
		return name

#		ml =3D d.getVar("MLPREFIX", True)
#		if ml and name and len(ml) !=3D 0 and name.find(ml) =3D=3D 0:
#			return ml.join(name.split(ml, 1)[1:])
#		return name

	# In RPM, dependencies are of the format: pkg <>=3D Epoch:Version-Release
	# This format is similar to OE, however there are restrictions on the
	# characters that can be in a field.  In the Version field, "-"
	# characters are not allowed.  "-" is allowed in the Release field.
	#
	# We translate the "-" in the version to a "+", by loading the PKGV
	# from the dependent recipe, replacing the - with a +, and then using
	# that value to do a replace inside of this recipe's dependencies.
	# This preserves the "-" separator between the version and release, as
	# well as any "-" characters inside of the release field.
	#
	# All of this has to happen BEFORE the mapping_rename_hook as
	# after renaming we cannot look up the dependencies in the packagedata
	# store.
	def translate_vers(varname, d):
		depends =3D d.getVar(varname, True)
		if depends:
			depends_dict =3D bb.utils.explode_dep_versions(depends)
			newdeps_dict =3D {}
			for dep in depends_dict:
				ver =3D depends_dict[dep]
				if dep and ver:
					if '-' in ver:
						subd =3D oe.packagedata.read_subpkgdata_dict(dep, d)
						if 'PKGV' in subd:
							pv =3D subd['PKGV']
							reppv =3D pv.replace('-', '+')
							ver =3D ver.replace(pv, reppv)
				newdeps_dict[dep] =3D ver
			depends =3D bb.utils.join_deps(newdeps_dict)
			d.setVar(varname, depends.strip())

	# We need to change the style the dependency from BB to RPM
	# This needs to happen AFTER the mapping_rename_hook
	def print_deps(variable, tag, array, d):
		depends =3D variable
		if depends:
			depends_dict =3D bb.utils.explode_dep_versions(depends)
			for dep in depends_dict:
				ver =3D depends_dict[dep]
				if dep and ver:
					ver =3D ver.replace('(', '')
					ver =3D ver.replace(')', '')
					array.append("%s: %s %s" % (tag, dep, ver))
				else:
					array.append("%s: %s" % (tag, dep))

	def walk_files(walkpath, target, conffiles):
		import os
		for rootpath, dirs, files in os.walk(walkpath):
			path =3D rootpath.replace(walkpath, "")
			for dir in dirs:
				# All packages own the directories their files are in...
				target.append('%dir "' + path + '/' + dir + '"')
			for file in files:
				if conffiles.count(path + '/' + file):
					target.append('%config "' + path + '/' + file + '"')
				else:
					target.append('"' + path + '/' + file + '"')

	# Prevent the prerm/postrm scripts from being run during an upgrade
	def wrap_uninstall(scriptvar):
		scr =3D scriptvar.strip()
		if scr.startswith("#!"):
			pos =3D scr.find("\n") + 1
		else:
			pos =3D 0
		scr =3D scr[:pos] + 'if [ "$1" =3D "0" ] ; then\n' + scr[pos:] + '\nfi'
		return scr

	packages =3D d.getVar('PACKAGES', True)
	if not packages or packages =3D=3D '':
		bb.debug(1, "No packages; nothing to do")
		return

	pkgdest =3D d.getVar('PKGDEST', True)
	if not pkgdest:
		bb.fatal("No PKGDEST")
		return

	outspecfile =3D d.getVar('OUTSPECFILE', True)
	if not outspecfile:
		bb.fatal("No OUTSPECFILE")
		return

	# Construct the SPEC file...
	srcname    =3D strip_multilib(d.getVar('PN', True), d)
	srcsummary =3D (d.getVar('SUMMARY', True) or d.getVar('DESCRIPTION', True)=
 or ".")
	srcversion =3D d.getVar('PKGV', True).replace('-', '+')
	srcrelease =3D d.getVar('PKGR', True)
	srcepoch   =3D (d.getVar('PKGE', True) or "")
	srclicense =3D d.getVar('LICENSE', True)
	srcsection =3D d.getVar('SECTION', True)
	srcmaintainer  =3D d.getVar('MAINTAINER', True)
	srchomepage    =3D d.getVar('HOMEPAGE', True)
	srcdescription =3D d.getVar('DESCRIPTION', True) or "."

	srcdepends     =3D strip_multilib(d.getVar('DEPENDS', True), d)
	srcrdepends    =3D []
	srcrrecommends =3D []
	srcrsuggests   =3D []
	srcrprovides   =3D []
	srcrreplaces   =3D []
	srcrconflicts  =3D []
	srcrobsoletes  =3D []

	srcpreinst  =3D []
	srcpostinst =3D []
	srcprerm    =3D []
	srcpostrm   =3D []

	spec_preamble_top =3D []
	spec_preamble_bottom =3D []

	spec_scriptlets_top =3D []
	spec_scriptlets_bottom =3D []

	spec_files_top =3D []
	spec_files_bottom =3D []

	for pkg in packages.split():
		localdata =3D bb.data.createCopy(d)

		root =3D "%s/%s" % (pkgdest, pkg)

		lf =3D bb.utils.lockfile(root + ".lock")

		localdata.setVar('ROOT', '')
		localdata.setVar('ROOT_%s' % pkg, root)
		pkgname =3D localdata.getVar('PKG_%s' % pkg, True)
		if not pkgname:
			pkgname =3D pkg
		localdata.setVar('PKG', pkgname)

		localdata.setVar('OVERRIDES', pkg)

		bb.data.update_data(localdata)

		conffiles =3D (localdata.getVar('CONFFILES', True) or "").split()

		splitname    =3D strip_multilib(pkgname, d)

		splitsummary =3D (localdata.getVar('SUMMARY', True) or localdata.getVar('=
DESCRIPTION', True) or ".")
		splitversion =3D (localdata.getVar('PKGV', True) or "").replace('-', '+')
		splitrelease =3D (localdata.getVar('PKGR', True) or "")
		splitepoch   =3D (localdata.getVar('PKGE', True) or "")
		splitlicense =3D (localdata.getVar('LICENSE', True) or "")
		splitsection =3D (localdata.getVar('SECTION', True) or "")
		splitdescription =3D (localdata.getVar('DESCRIPTION', True) or ".")

		translate_vers('RDEPENDS', localdata)
		translate_vers('RRECOMMENDS', localdata)
		translate_vers('RSUGGESTS', localdata)
		translate_vers('RPROVIDES', localdata)
		translate_vers('RREPLACES', localdata)
		translate_vers('RCONFLICTS', localdata)

		# Map the dependencies into their final form
		mapping_rename_hook(localdata)

		splitrdepends    =3D strip_multilib(localdata.getVar('RDEPENDS', True), d=
) or ""
		splitrrecommends =3D strip_multilib(localdata.getVar('RRECOMMENDS', True)=
, d) or ""
		splitrsuggests   =3D strip_multilib(localdata.getVar('RSUGGESTS', True), =
d) or ""
		splitrprovides   =3D strip_multilib(localdata.getVar('RPROVIDES', True), =
d) or ""
		splitrreplaces   =3D strip_multilib(localdata.getVar('RREPLACES', True), =
d) or ""
		splitrconflicts  =3D strip_multilib(localdata.getVar('RCONFLICTS', True),=
 d) or ""
		splitrobsoletes  =3D []

		# Gather special src/first package data
		if srcname =3D=3D splitname:
			srcrdepends    =3D splitrdepends
			srcrrecommends =3D splitrrecommends
			srcrsuggests   =3D splitrsuggests
			srcrprovides   =3D splitrprovides
			srcrreplaces   =3D splitrreplaces
			srcrconflicts  =3D splitrconflicts

			srcpreinst  =3D localdata.getVar('pkg_preinst', True)
			srcpostinst =3D localdata.getVar('pkg_postinst', True)
			srcprerm    =3D localdata.getVar('pkg_prerm', True)
			srcpostrm   =3D localdata.getVar('pkg_postrm', True)

			file_list =3D []
			walk_files(root, file_list, conffiles)
			if not file_list and localdata.getVar('ALLOW_EMPTY') !=3D "1":
				bb.note("Not creating empty RPM package for %s" % splitname)
			else:
				bb.note("Creating RPM package for %s" % splitname)
				spec_files_top.append('%files')
				spec_files_top.append('%defattr(-,-,-,-)')
				if file_list:
					bb.note("Creating RPM package for %s" % splitname)
					spec_files_top.extend(file_list)
				else:
					bb.note("Creating EMPTY RPM Package for %s" % splitname)
				spec_files_top.append('')

			bb.utils.unlockfile(lf)
			continue

		# Process subpackage data
		spec_preamble_bottom.append('%%package -n %s' % splitname)
		spec_preamble_bottom.append('Summary: %s' % splitsummary)
		if srcversion !=3D splitversion:
			spec_preamble_bottom.append('Version: %s' % splitversion)
		if srcrelease !=3D splitrelease:
			spec_preamble_bottom.append('Release: %s' % splitrelease)
		if srcepoch !=3D splitepoch:
			spec_preamble_bottom.append('Epoch: %s' % splitepoch)
		if srclicense !=3D splitlicense:
			spec_preamble_bottom.append('License: %s' % splitlicense)
		spec_preamble_bottom.append('Group: %s' % splitsection)

		# Replaces =3D=3D Obsoletes && Provides
		if splitrreplaces and splitrreplaces.strip() !=3D "":
			for dep in splitrreplaces.split(','):
				if splitrprovides:
					splitrprovides =3D splitrprovides + ", " + dep
				else:
					splitrprovides =3D dep
				if splitrobsoletes:
					splitrobsoletes =3D splitrobsoletes + ", " + dep
				else:
					splitrobsoletes =3D dep

		print_deps(splitrdepends,	"Requires", spec_preamble_bottom, d)
		# Suggests in RPM are like recommends in OE-core!
		print_deps(splitrrecommends,	"Suggests", spec_preamble_bottom, d)
		# While there is no analog for suggests... (So call them recommends for n=
ow)
		print_deps(splitrsuggests, 	"Recommends", spec_preamble_bottom, d)
		print_deps(splitrprovides, 	"Provides", spec_preamble_bottom, d)
		print_deps(splitrobsoletes, 	"Obsoletes", spec_preamble_bottom, d)

		# conflicts can not be in a provide!  We will need to filter it.
		if splitrconflicts:
			depends_dict =3D bb.utils.explode_dep_versions(splitrconflicts)
			newdeps_dict =3D {}
			for dep in depends_dict:
				if dep not in splitrprovides:
					newdeps_dict[dep] =3D depends_dict[dep]
			if newdeps_dict:
				splitrconflicts =3D bb.utils.join_deps(newdeps_dict)
			else:
				splitrconflicts =3D ""

		print_deps(splitrconflicts, 	"Conflicts", spec_preamble_bottom, d)

		spec_preamble_bottom.append('')

		spec_preamble_bottom.append('%%description -n %s' % splitname)
		dedent_text =3D textwrap.dedent(splitdescription).strip()
		spec_preamble_bottom.append('%s' % textwrap.fill(dedent_text, width=3D75)=
)

		spec_preamble_bottom.append('')

		# Now process scriptlets
		for script in ["preinst", "postinst", "prerm", "postrm"]:
			scriptvar =3D localdata.getVar('pkg_%s' % script, True)
			if not scriptvar:
				continue
			if script =3D=3D 'preinst':
				spec_scriptlets_bottom.append('%%pre -n %s' % splitname)
			elif script =3D=3D 'postinst':
				spec_scriptlets_bottom.append('%%post -n %s' % splitname)
			elif script =3D=3D 'prerm':
				spec_scriptlets_bottom.append('%%preun -n %s' % splitname)
				scriptvar =3D wrap_uninstall(scriptvar)
			elif script =3D=3D 'postrm':
				spec_scriptlets_bottom.append('%%postun -n %s' % splitname)
				scriptvar =3D wrap_uninstall(scriptvar)
			spec_scriptlets_bottom.append('# %s - %s' % (splitname, script))
			spec_scriptlets_bottom.append(scriptvar)
			spec_scriptlets_bottom.append('')

		# Now process files
		file_list =3D []
		walk_files(root, file_list, conffiles)
		if not file_list and localdata.getVar('ALLOW_EMPTY') !=3D "1":
			bb.note("Not creating empty RPM package for %s" % splitname)
		else:
			spec_files_bottom.append('%%files -n %s' % splitname)
			spec_files_bottom.append('%defattr(-,-,-,-)')
			if file_list:
				bb.note("Creating RPM package for %s" % splitname)
				spec_files_bottom.extend(file_list)
			else:
				bb.note("Creating EMPTY RPM Package for %s" % splitname)
			spec_files_bottom.append('')

		del localdata
		bb.utils.unlockfile(lf)

	add_prep(d,spec_files_bottom)
	spec_preamble_top.append('Summary: %s' % srcsummary)
	spec_preamble_top.append('Name: %s' % srcname)
	spec_preamble_top.append('Version: %s' % srcversion)
	spec_preamble_top.append('Release: %s' % srcrelease)
	if srcepoch and srcepoch.strip() !=3D "":
		spec_preamble_top.append('Epoch: %s' % srcepoch)
	spec_preamble_top.append('License: %s' % srclicense)
	spec_preamble_top.append('Group: %s' % srcsection)
	spec_preamble_top.append('Packager: %s' % srcmaintainer)
	spec_preamble_top.append('URL: %s' % srchomepage)
	source_list =3D get_tarballs(d)
	tail_source(d,source_list,None)

	# Replaces =3D=3D Obsoletes && Provides
	if srcrreplaces and srcrreplaces.strip() !=3D "":
		for dep in srcrreplaces.split(','):
			if srcrprovides:
				srcrprovides =3D srcrprovides + ", " + dep
			else:
				srcrprovides =3D dep
			if srcrobsoletes:
				srcrobsoletes =3D srcrobsoletes + ", " + dep
			else:
				srcrobsoletes =3D dep

	print_deps(srcdepends,		"BuildRequires", spec_preamble_top, d)
	print_deps(srcrdepends,		"Requires", spec_preamble_top, d)
	# Suggests in RPM are like recommends in OE-core!
	print_deps(srcrrecommends,	"Suggests", spec_preamble_top, d)
	# While there is no analog for suggests... (So call them recommends for no=
w)
	print_deps(srcrsuggests, 	"Recommends", spec_preamble_top, d)
	print_deps(srcrprovides, 	"Provides", spec_preamble_top, d)
	print_deps(srcrobsoletes, 	"Obsoletes", spec_preamble_top, d)

	# conflicts can not be in a provide!  We will need to filter it.
	if srcrconflicts:
		depends_dict =3D bb.utils.explode_dep_versions(srcrconflicts)
		newdeps_dict =3D {}
		for dep in depends_dict:
			if dep not in srcrprovides:
				newdeps_dict[dep] =3D depends_dict[dep]
		if newdeps_dict:
			srcrconflicts =3D bb.utils.join_deps(newdeps_dict)
		else:
			srcrconflicts =3D ""

	print_deps(srcrconflicts, 	"Conflicts", spec_preamble_top, d)

	spec_preamble_top.append('')

	spec_preamble_top.append('%description')
	dedent_text =3D textwrap.dedent(srcdescription).strip()
	spec_preamble_top.append('%s' % textwrap.fill(dedent_text, width=3D75))

	spec_preamble_top.append('')

	if srcpreinst:
		spec_scriptlets_top.append('%pre')
		spec_scriptlets_top.append('# %s - preinst' % srcname)
		spec_scriptlets_top.append(srcpreinst)
		spec_scriptlets_top.append('')
	if srcpostinst:
		spec_scriptlets_top.append('%post')
		spec_scriptlets_top.append('# %s - postinst' % srcname)
		spec_scriptlets_top.append(srcpostinst)
		spec_scriptlets_top.append('')
	if srcprerm:
		spec_scriptlets_top.append('%preun')
		spec_scriptlets_top.append('# %s - prerm' % srcname)
		scriptvar =3D wrap_uninstall(srcprerm)
		spec_scriptlets_top.append(scriptvar)
		spec_scriptlets_top.append('')
	if srcpostrm:
		spec_scriptlets_top.append('%postun')
		spec_scriptlets_top.append('# %s - postrm' % srcname)
		scriptvar =3D wrap_uninstall(srcpostrm)
		spec_scriptlets_top.append(scriptvar)
		spec_scriptlets_top.append('')

	# Write the SPEC file
	try:
		from __builtin__ import file
		specfile =3D file(outspecfile, 'w')
	except OSError:
		raise bb.build.FuncFailed("unable to open spec file for writing.")

	# RPMSPEC_PREAMBLE is a way to add arbitrary text to the top
	# of the generated spec file
	external_preamble =3D d.getVar("RPMSPEC_PREAMBLE", True)
	if external_preamble:
		specfile.write(external_preamble + "\n")

	for line in spec_preamble_top:
		specfile.write(line + "\n")

	for line in spec_preamble_bottom:
		specfile.write(line + "\n")

	for line in spec_scriptlets_top:
		specfile.write(line + "\n")

	for line in spec_scriptlets_bottom:
		specfile.write(line + "\n")

	for line in spec_files_top:
		specfile.write(line + "\n")

	for line in spec_files_bottom:
		specfile.write(line + "\n")

	specfile.close()
}


python base_get_metadata_git_branch () {
def base_get_metadata_git_branch(path, d):
	branch =3D os.popen('cd %s; git branch 2>&1 | grep "^* " | tr -d "* "' % p=
ath).read()

	if len(branch) !=3D 0:
		return branch
	return "<unknown>"
}


python check_sanity_eventhandler () {
    if bb.event.getName(e) =3D=3D "BuildStarted" and e.data.getVar("BB_WORK=
ERCONTEXT", True) !=3D "1" and e.data.getVar("DISABLE_SANITY_CHECKS", True)=
 !=3D "1":
        sanity_data =3D copy_data(e)
        check_sanity(sanity_data)
    elif bb.event.getName(e) =3D=3D "SanityCheck":
        sanity_data =3D copy_data(e)
        sanity_data.setVar("SANITY_USE_EVENTS", "1")
        check_sanity(sanity_data)
        bb.event.fire(bb.event.SanityCheckPassed(), e.data)

    return
}


python oe_filter () {
def oe_filter(f, str, d):
    return oe.utils.str_filter(f, str, d)
}


python sstate_cleanall () {
    import fnmatch

    bb.note("Removing shared state for package %s" % d.getVar('PN', True))

    manifest_dir =3D d.getVar('SSTATE_MANIFESTS', True)
    manifest_prefix =3D d.getVar("SSTATE_MANFILEPREFIX", True)
    manifest_pattern =3D os.path.basename(manifest_prefix) + ".*"

    if not os.path.exists(manifest_dir):
        return

    for manifest in (os.listdir(manifest_dir)):
        if fnmatch.fnmatch(manifest, manifest_pattern):
             name =3D manifest.replace(manifest_pattern[:-1], "")
             namemap =3D d.getVar('SSTATETASKNAMES', True).split()
             tasks =3D d.getVar('SSTATETASKS', True).split()
             if name not in namemap:
                  continue
             taskname =3D tasks[namemap.index(name)]
             shared_state =3D sstate_state_fromvars(d, taskname[3:])
             sstate_clean(shared_state, d)
}


python do_checkuri () {
	src_uri =3D (d.getVar('SRC_URI', True) or "").split()
	if len(src_uri) =3D=3D 0:
		return

	localdata =3D bb.data.createCopy(d)
	bb.data.update_data(localdata)

        try:
            fetcher =3D bb.fetch2.Fetch(src_uri, localdata)
            fetcher.checkstatus()
        except bb.fetch2.BBFetchException, e:
            raise bb.build.FuncFailed(e)
}


python is_machine_specific () {
def is_machine_specific(d):
    """Determine whether the current recipe is machine specific"""
    machinepaths =3D set(machine_paths(d))
    srcuri =3D d.getVar("SRC_URI", True).split()
    for url in srcuri:
        fetcher =3D bb.fetch2.Fetch([srcuri], d)
        if url.startswith("file://"):
            if any(fetcher.localpath(url).startswith(mp + "/") for mp in ma=
chinepaths):
                return True
}


python package_qa_check_useless_rpaths () {
def package_qa_check_useless_rpaths(file, name, d, elf, messages):
    """
    Check for RPATHs that are useless but not dangerous
    """
    if not elf:
        return

    objdump =3D d.getVar('OBJDUMP', True)
    env_path =3D d.getVar('PATH', True)

    libdir =3D d.getVar("libdir", True)
    base_libdir =3D d.getVar("base_libdir", True)

    import re
    rpath_re =3D re.compile("\s+RPATH\s+(.*)")
    for line in os.popen("LC_ALL=3DC PATH=3D%s %s -p '%s' 2> /dev/null" % (=
env_path, objdump, file), "r"):
    	m =3D rpath_re.match(line)
	if m:
	   rpath =3D m.group(1)
	   if rpath =3D=3D libdir or rpath =3D=3D base_libdir:
	      # The dynamic linker searches both these places anyway.  There is no=
 point in
	      # looking there again.
	      messages.append("%s: %s contains probably-redundant RPATH %s" % (nam=
e, package_qa_clean_path(file, d), rpath))
}


python oe_filter_out () {
def oe_filter_out(f, str, d):
    return oe.utils.str_filter_out(f, str, d)
}


python oe_terminal () {
def oe_terminal(command, title, d):
    import oe.data
    import oe.terminal

    for export in oe.data.typed_value('OE_TERMINAL_EXPORTS', d):
        value =3D d.getVar(export, True)
        if value is not None:
            os.environ[export] =3D str(value)

    terminal =3D oe.data.typed_value('OE_TERMINAL', d).lower()
    if terminal =3D=3D 'none':
        bb.fatal('Devshell usage disabled with OE_TERMINAL')
    elif terminal !=3D 'auto':
        try:
            oe.terminal.spawn(terminal, command, title)
            return
        except oe.terminal.UnsupportedTerminal:
            bb.warn('Unsupported terminal "%s", defaulting to "auto"' %
                    terminal)
        except oe.terminal.ExecutionError as exc:
            bb.fatal('Unable to spawn terminal %s: %s' % (terminal, exc))

    try:
        oe.terminal.spawn_preferred(command, title)
    except oe.terminal.NoSupportedTerminals:
        bb.fatal('No valid terminal found, unable to open devshell')
    except oe.terminal.ExecutionError as exc:
        bb.fatal('Unable to spawn terminal %s: %s' % (terminal, exc))}


python package_qa_get_machine_dict () {
def package_qa_get_machine_dict():
    return {
            "darwin9" : {
                        "arm" :       (40,     0,    0,          True,     =
     32),
                      },
            "linux" : {
                        "arm" :       (40,    97,    0,          True,     =
     32),
                        "armeb":      (40,    97,    0,          False,    =
     32),
                        "powerpc":    (20,     0,    0,          False,    =
     32),
                        "powerpc64":  (21,     0,    0,          False,    =
     64),
                        "i386":       ( 3,     0,    0,          True,     =
     32),
                        "i486":       ( 3,     0,    0,          True,     =
     32),
                        "i586":       ( 3,     0,    0,          True,     =
     32),
                        "i686":       ( 3,     0,    0,          True,     =
     32),
                        "x86_64":     (62,     0,    0,          True,     =
     64),
                        "ia64":       (50,     0,    0,          True,     =
     64),
                        "alpha":      (36902,  0,    0,          True,     =
     64),
                        "hppa":       (15,     3,    0,          False,    =
     32),
                        "m68k":       ( 4,     0,    0,          False,    =
     32),
                        "mips":       ( 8,     0,    0,          False,    =
     32),
                        "mipsel":     ( 8,     0,    0,          True,     =
     32),
                        "mips64":     ( 8,     0,    0,          False,    =
     64),
                        "mips64el":   ( 8,     0,    0,          True,     =
     64),
                        "s390":       (22,     0,    0,          False,    =
     32),
                        "sh4":        (42,     0,    0,          True,     =
     32),
                        "sparc":      ( 2,     0,    0,          False,    =
     32),
                      },
            "linux-uclibc" : {
                        "arm" :       (  40,    97,    0,          True,   =
       32),
                        "armeb":      (  40,    97,    0,          False,  =
       32),
                        "powerpc":    (  20,     0,    0,          False,  =
       32),
                        "i386":       (   3,     0,    0,          True,   =
       32),
                        "i486":       (   3,     0,    0,          True,   =
       32),
                        "i586":       (   3,     0,    0,          True,   =
       32),
                        "i686":       (   3,     0,    0,          True,   =
       32),
                        "x86_64":     (  62,     0,    0,          True,   =
       64),
                        "mips":       (   8,     0,    0,          False,  =
       32),
                        "mipsel":     (   8,     0,    0,          True,   =
       32),
                        "mips64":     (   8,     0,    0,          False,  =
       64),
                        "mips64el":   (   8,     0,    0,          True,   =
       64),
                        "avr32":      (6317,     0,    0,          False,  =
       32),
			"sh4":        (42,	 0,    0,          True,          32),

                      },
            "uclinux-uclibc" : {
                        "bfin":       ( 106,     0,    0,          True,   =
      32),
                      },
            "linux-gnueabi" : {
                        "arm" :       (40,     0,    0,          True,     =
     32),
                        "armeb" :     (40,     0,    0,          False,    =
     32),
                      },
            "linux-uclibceabi" : {
                        "arm" :       (40,     0,    0,          True,     =
     32),
                        "armeb" :     (40,     0,    0,          False,    =
     32),
                      },
            "linux-gnu" : {
                        "powerpc":    (20,     0,    0,          False,    =
     32),
                      },
            "linux-gnuspe" : {
                        "powerpc":    (20,     0,    0,          False,    =
     32),
                      },
            "linux-uclibcspe" : {
                        "powerpc":    (20,     0,    0,          False,    =
     32),
                      },
            "linux-gnu" :       {
                        "microblaze":   (47787,  0,    0,          False,  =
       32),
                        "microblazeel": (47787,  0,    0,          True,   =
       32),
                      },
            "linux-gnux32" :       {
                        "x86_64":     (62,     0,    0,          True,     =
     32),
                      },
       }

}


python base_detect_revision () {
def base_detect_revision(d):
	path =3D base_get_scmbasepath(d)

	scms =3D [base_get_metadata_git_revision, \
			base_get_metadata_svn_revision]

	for scm in scms:
		rev =3D scm(path, d)
		if rev <> "<unknown>":
			return rev

	return "<unknown>"
}


python read_shlibdeps () {
	packages =3D d.getVar('PACKAGES', True).split()
	for pkg in packages:
		rdepends =3D bb.utils.explode_dep_versions(d.getVar('RDEPENDS_' + pkg, Fa=
lse) or d.getVar('RDEPENDS', False) or "")

		for extension in ".shlibdeps", ".pcdeps", ".clilibdeps":
			depsfile =3D d.expand("/tool/yocto/poky/build/tmp/work/virtex5-poky-linu=
x/linux-xilinx-3.3.0-r0/packages-split/" + pkg + extension)
			if os.access(depsfile, os.R_OK):
				fd =3D file(depsfile)
				lines =3D fd.readlines()
				fd.close()
				for l in lines:
					rdepends[l.rstrip()] =3D ""
		d.setVar('RDEPENDS_' + pkg, bb.utils.join_deps(rdepends, commasep=3DFalse=
))
}


python sstate_installpkg () {
def sstate_installpkg(ss, d):
    import oe.path
    import subprocess

    def prepdir(dir):
        # remove dir if it exists, ensure any parent directories do exist
        if os.path.exists(dir):
            oe.path.remove(dir)
        bb.mkdirhier(dir)
        oe.path.remove(dir)

    sstateinst =3D d.expand("/tool/yocto/poky/build/tmp/work/virtex5-poky-l=
inux/linux-xilinx-3.3.0-r0/sstate-install-%s/" % ss['name'])
    sstatepkg =3D d.getVar('SSTATE_PKG', True) + '_' + ss['name'] + ".tgz"

    if not os.path.exists(sstatepkg):
       pstaging_fetch(sstatepkg, d)

    if not os.path.isfile(sstatepkg):
        bb.note("Staging package %s does not exist" % sstatepkg)
        return False

    sstate_clean(ss, d)

    d.setVar('SSTATE_INSTDIR', sstateinst)
    d.setVar('SSTATE_PKG', sstatepkg)

    for preinst in (d.getVar('SSTATEPREINSTFUNCS', True) or '').split():
        bb.build.exec_func(preinst, d)

    bb.build.exec_func('sstate_unpack_package', d)

    # Fixup hardcoded paths
    #
    # Note: The logic below must match the reverse logic in
    # sstate_hardcode_path(d)

    fixmefn =3D  sstateinst + "fixmepath"
    if os.path.isfile(fixmefn):
        staging =3D d.getVar('STAGING_DIR', True)
        staging_target =3D d.getVar('STAGING_DIR_TARGET', True)
        staging_host =3D d.getVar('STAGING_DIR_HOST', True)

	if bb.data.inherits_class('native', d) or bb.data.inherits_class('nativesd=
k', d) or bb.data.inherits_class('crosssdk', d) or bb.data.inherits_class('=
cross-canadian', d):
		sstate_sed_cmd =3D "sed -i -e 's:FIXMESTAGINGDIR:%s:g'" % (staging)
	elif bb.data.inherits_class('cross', d):
		sstate_sed_cmd =3D "sed -i -e 's:FIXMESTAGINGDIRTARGET:%s:g; s:FIXMESTAGI=
NGDIR:%s:g'" % (staging_target, staging)
	else:
		sstate_sed_cmd =3D "sed -i -e 's:FIXMESTAGINGDIRHOST:%s:g'" % (staging_ho=
st)

	# Add sstateinst to each filename in fixmepath, use xargs to efficiently c=
all sed
	sstate_hardcode_cmd =3D "sed -e 's:^:%s:g' %s | xargs %s" % (sstateinst, f=
ixmefn, sstate_sed_cmd)

	print "Replacing fixme paths in sstate package: %s" % (sstate_hardcode_cmd=
)
	subprocess.call(sstate_hardcode_cmd, shell=3DTrue)

        # Need to remove this or we'd copy it into the target directory and=
 may
        # conflict with another writer
        os.remove(fixmefn)

    for state in ss['dirs']:
        prepdir(state[1])
        os.rename(sstateinst + state[0], state[1])
    sstate_install(ss, d)

    for plain in ss['plaindirs']:
        workdir =3D d.getVar('WORKDIR', True)
        src =3D sstateinst + "/" + plain.replace(workdir, '')
        dest =3D plain
        bb.mkdirhier(src)
        prepdir(dest)
        os.rename(src, dest)

    return True
}


python sstate_clean_cachefile () {
def sstate_clean_cachefile(ss, d):
    import oe.path

    sstatepkgdir =3D d.getVar('SSTATE_DIR', True)
    sstatepkgfile =3D sstatepkgdir + '/' + d.getVar('SSTATE_PKGSPEC', True)=
 + "*_" + ss['name'] + ".tgz*"
    bb.note("Removing %s" % sstatepkgfile)
    oe.path.remove(sstatepkgfile)
}


python base_read_file () {
def base_read_file(filename):
    return oe.utils.read_file(filename)
}


python set_bn () {
def set_bn(e):
    bn =3D e.getPkgs()[0] + "-" + e.data.getVar('MACHINE', True)
    try:
        os.remove(e.data.getVar('BNFILE', True))
    except:
        pass
    file =3D open(e.data.getVar('BNFILE', True), "w")
    file.write(os.path.join(bn, e.data.getVar('BUILDNAME', True)))
    file.close()
}


python do_clean () {
	"""clear the build and temp directories"""
	dir =3D d.expand("/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux=
-xilinx-3.3.0-r0")
	bb.note("Removing " + dir)
	oe.path.remove(dir)

	dir =3D "%s.*" % bb.data.expand(d.getVar('STAMP'), d)
	bb.note("Removing " + dir)
	oe.path.remove(dir)

	for f in (d.getVar('CLEANFUNCS', True) or '').split():
		bb.build.exec_func(f, d)
}


python do_package_write_rpm_setscene () {
	sstate_setscene(d)
}


python package_qa_write_error () {
def package_qa_write_error(error, d):
    logfile =3D d.getVar('QA_LOGFILE', True)
    if logfile:
        p =3D d.getVar('P', True)
        f =3D file( logfile, "a+")
        print >> f, "%s: %s" % (p, error)
        f.close()
}


python write_task_data () {
def write_task_data(status, logfile, dev, e):
    bn =3D get_bn(e)
    bsdir =3D os.path.join(e.data.getVar('BUILDSTATS_BASE', True), bn)
    taskdir =3D os.path.join(bsdir, e.data.expand("linux-xilinx-3.3.0-r0"))
    file =3D open(os.path.join(logfile), "a")
    timedata =3D get_timedata("__timedata_task", e.data)
    if timedata:
        elapsedtime, cpu =3D timedata
        file.write(bb.data.expand("linux-xilinx-3.3.0-r0: %s: Elapsed time:=
 %0.2f seconds \n" %
                                 (e.task, elapsedtime), e.data))
        if cpu:
            file.write("CPU usage: %0.1f%% \n" % cpu)
    #######################################################################=
#####
    # Here we gather up disk data. In an effort to avoid lying with stats
    # I do a bare minimum of analysis of collected data.
    # The simple fact is, doing disk io collection on a per process basis
    # without effecting build time would be difficult.
    # For the best information, running things with BB_TOTAL_THREADS =3D "1=
"
    # would return accurate per task results.
    #######################################################################=
#####
    if dev !=3D "NoLogicalDevice":
        diskdata =3D get_diskdata("__diskdata_task", dev, e.data)
        if diskdata:
            for key in sorted(diskdata.iterkeys()):
                file.write(key + ": " + diskdata[key] + "\n")
    if status is "passed":
	    file.write("Status: PASSED \n")
    else:
        file.write("Status: FAILED \n")
    file.write("Ended: %0.2f \n" % time.time())
    file.close()
}


python device_tree () {
def device_tree(a, d):
    # Device tree helper function
    import re

    board =3D bb.data.getVar('XILINX_BOARD', d, 1)
    cpu =3D bb.data.getVar('TARGET_CPU', d, 1)

    if re.match('powerpc', a):
        target =3D cpu + '-' + board
        dts =3D 'arch/' + a + '/boot/dts/virtex' + target + '.dts'
    else:
        target =3D 'system'
        dts =3D 'arch/' + a + '/boot/dts/' + target + '.dts'

    bb.data.setVar('KERNEL_TARGET', target, d)

    return dts

}


python package_qa_check_staged () {
def package_qa_check_staged(path,d):
    """
    Check staged la and pc files for sanity
      -e.g. installed being false

        As this is run after every stage we should be able
        to find the one responsible for the errors easily even
        if we look at every .pc and .la file
    """

    sane =3D True
    tmpdir =3D d.getVar('TMPDIR', True)
    workdir =3D os.path.join(tmpdir, "work")

    installed =3D "installed=3Dyes"
    if bb.data.inherits_class("native", d) or bb.data.inherits_class("cross=
", d):
        pkgconfigcheck =3D workdir
    else:
        pkgconfigcheck =3D tmpdir

    # find all .la and .pc files
    # read the content
    # and check for stuff that looks wrong
    for root, dirs, files in os.walk(path):
        for file in files:
            path =3D os.path.join(root,file)
            if file.endswith(".la"):
                file_content =3D open(path).read()
                if workdir in file_content:
                    error_msg =3D "%s failed sanity test (workdir) in path =
%s" % (file,root)
                    sane =3D package_qa_handle_error("la", error_msg, d)
            elif file.endswith(".pc"):
                file_content =3D open(path).read()
                if pkgconfigcheck in file_content:
                    error_msg =3D "%s failed sanity test (tmpdir) in path %=
s" % (file,root)
                    sane =3D package_qa_handle_error("pkgconfig", error_msg=
, d)

    return sane
}


python base_both_contain () {
def base_both_contain(variable1, variable2, checkvalue, d):
    return oe.utils.both_contain(variable1, variable2, checkvalue, d)
}


python sysroot_cleansstate () {
     ss =3D sstate_state_fromvars(d, "populate_sysroot")
     sstate_clean(ss, d)
}


python read_subpackage_metadata () {
	import oe.packagedata

	data =3D oe.packagedata.read_pkgdata(d.getVar('PN', True), d)

	for key in data.keys():
		d.setVar(key, data[key])

	for pkg in d.getVar('PACKAGES', True).split():
		sdata =3D oe.packagedata.read_subpkgdata(pkg, d)
		for key in sdata.keys():
			d.setVar(key, sdata[key])
}


python sstate_checkhashes () {
def sstate_checkhashes(sq_fn, sq_task, sq_hash, sq_hashfn, d):

    ret =3D []
    # This needs to go away, FIXME
    mapping =3D {
        "do_populate_sysroot" : "populate-sysroot",
        "do_populate_lic" : "populate-lic",
        "do_package_write_ipk" : "deploy-ipk",
        "do_package_write_deb" : "deploy-deb",
        "do_package_write_rpm" : "deploy-rpm",
        "do_package" : "package",
        "do_deploy" : "deploy",
    }

    for task in range(len(sq_fn)):
        sstatefile =3D d.expand("/tool/yocto/poky/build/sstate-cache/" + sq=
_hashfn[task] + "_" + mapping[sq_task[task]] + ".tgz")
        sstatefile =3D sstatefile.replace("${BB_TASKHASH}", sq_hash[task])
        if os.path.exists(sstatefile):
            bb.debug(2, "SState: Found valid sstate file %s" % sstatefile)
            ret.append(task)
            continue
        else:
            bb.debug(2, "SState: Looked for but didn't find file %s" % ssta=
tefile)

    mirrors =3D d.getVar("SSTATE_MIRRORS", True)
    if mirrors:
        # Copy the data object and override DL_DIR and SRC_URI
        localdata =3D bb.data.createCopy(d)
        bb.data.update_data(localdata)

        dldir =3D localdata.expand("/tool/yocto/poky/build/sstate-cache")
        localdata.setVar('DL_DIR', dldir)
        localdata.setVar('PREMIRRORS', mirrors)

        bb.debug(2, "SState using premirror of: %s" % mirrors)

        for task in range(len(sq_fn)):
            if task in ret:
                continue

            sstatefile =3D d.expand("/tool/yocto/poky/build/sstate-cache/" =
+ sq_hashfn[task] + "_" + mapping[sq_task[task]] + ".tgz")
            sstatefile =3D sstatefile.replace("${BB_TASKHASH}", sq_hash[tas=
k])

            srcuri =3D "file://" + os.path.basename(sstatefile)
            localdata.setVar('SRC_URI', srcuri)
            bb.debug(2, "SState: Attempting to fetch %s" % srcuri)

            try:
                fetcher =3D bb.fetch2.Fetch(srcuri.split(), localdata)
                fetcher.checkstatus()
                bb.debug(2, "SState: Successful fetch test for %s" % srcuri=
)
                ret.append(task)
            except:
                bb.debug(2, "SState: Unsuccessful fetch test for %s" % srcu=
ri)
                pass

    return ret
}


python __anonymous () {
None}


python base_prune_suffix () {
def base_prune_suffix(var, suffixes, d):
    return oe.utils.prune_suffix(var, suffixes, d)
}


python base_ifelse () {
def base_ifelse(condition, iftrue =3D True, iffalse =3D False):
    return oe.utils.ifelse(condition, iftrue, iffalse)
}


python package_qa_check_arch () {
def package_qa_check_arch(path,name,d, elf, messages):
    """
    Check if archs are compatible
    """
    if not elf:
        return

    target_os   =3D d.getVar('TARGET_OS', True)
    target_arch =3D d.getVar('TARGET_ARCH', True)
    provides =3D d.getVar('PROVIDES', d, True)
    bpn =3D d.getVar('BPN', True)

    # FIXME: Cross package confuse this check, so just skip them
    for s in ['cross', 'nativesdk', 'cross-canadian']:
        if bb.data.inherits_class(s, d):
            return

    # avoid following links to /usr/bin (e.g. on udev builds)
    # we will check the files pointed to anyway...
    if os.path.islink(path):
        return

    #if this will throw an exception, then fix the dict above
    (machine, osabi, abiversion, littleendian, bits) \
        =3D package_qa_get_machine_dict()[target_os][target_arch]

    # Check the architecture and endiannes of the binary
    if not ((machine =3D=3D elf.machine()) or \
	("virtual/kernel" in provides) and (target_os =3D=3D "linux-gnux32")):
        messages.append("Architecture did not match (%d to %d) on %s" % \
                 (machine, elf.machine(), package_qa_clean_path(path,d)))
    elif not ((bits =3D=3D elf.abiSize()) or  \
	("virtual/kernel" in provides) and (target_os =3D=3D "linux-gnux32")):
        messages.append("Bit size did not match (%d to %d) %s on %s" % \
                 (bits, elf.abiSize(), bpn, package_qa_clean_path(path,d)))
    elif not littleendian =3D=3D elf.isLittleEndian():
        messages.append("Endiannes did not match (%d to %d) on %s" % \
                 (littleendian, elf.isLittleEndian(), package_qa_clean_path=
(path,d)))
}


python package_qa_check_license () {
def package_qa_check_license(workdir, d):
    """
    Check for changes in the license files
    """
    import tempfile
    sane =3D True

    lic_files =3D d.getVar('LIC_FILES_CHKSUM', True)
    lic =3D d.getVar('LICENSE', True)
    pn =3D d.getVar('PN', True)

    if lic =3D=3D "CLOSED":
        return True

    if not lic_files:
        # just throw a warning now. Once licensing data in entered for enou=
gh of the recipes,
        # this will be converted into error and False will be returned.
        bb.error(pn + ": Recipe file does not have license file information=
 (LIC_FILES_CHKSUM)")
        return False

    srcdir =3D d.getVar('S', True)

    for url in lic_files.split():
        (type, host, path, user, pswd, parm) =3D bb.decodeurl(url)
        srclicfile =3D os.path.join(srcdir, path)
        if not os.path.isfile(srclicfile):
            raise bb.build.FuncFailed( pn + ": LIC_FILES_CHKSUM points to a=
n invalid file: " + srclicfile)

        if 'md5' not in parm:
            bb.error(pn + ": md5 checksum is not specified for ", url)
            return False
        beginline, endline =3D 0, 0
        if 'beginline' in parm:
            beginline =3D int(parm['beginline'])
        if 'endline' in parm:
            endline =3D int(parm['endline'])

        if (not beginline) and (not endline):
            md5chksum =3D bb.utils.md5_file(srclicfile)
        else:
            fi =3D open(srclicfile, 'r')
            fo =3D tempfile.NamedTemporaryFile(mode=3D'wb', prefix=3D'poky.=
', suffix=3D'.tmp', delete=3DFalse)
            tmplicfile =3D fo.name;
            lineno =3D 0
            linesout =3D 0
            for line in fi:
                lineno +=3D 1
                if (lineno >=3D beginline):
                    if ((lineno <=3D endline) or not endline):
                        fo.write(line)
                        linesout +=3D 1
                    else:
                        break
            fo.flush()
            fo.close()
            fi.close()
            md5chksum =3D bb.utils.md5_file(tmplicfile)
            os.unlink(tmplicfile)

        if parm['md5'] =3D=3D md5chksum:
            bb.note (pn + ": md5 checksum matched for ", url)
        else:
            bb.error (pn + ": md5 data is not matching for ", url)
            bb.error (pn + ": The new md5 checksum is ", md5chksum)
            bb.error (pn + ": Check if the license information has changed =
in")
            sane =3D False

    return sane
}


python do_package_qa () {
    import subprocess

    bb.note("DO PACKAGE QA")

    logdir =3D d.getVar('T', True)
    pkg =3D d.getVar('PN', True)

    # Check the compile log for host contamination
    compilelog =3D os.path.join(logdir,"log.do_compile")

    if os.path.exists(compilelog):
        statement =3D "grep -e 'CROSS COMPILE Badness:' -e 'is unsafe for c=
ross-compilation' %s > /dev/null" % compilelog
        if subprocess.call(statement, shell=3DTrue) =3D=3D 0:
            bb.warn("%s: The compile log indicates that host include and/or=
 library paths were used.\n \
        Please check the log '%s' for more information." % (pkg, compilelog=
))

    # Check the install log for host contamination
    installlog =3D os.path.join(logdir,"log.do_install")

    if os.path.exists(installlog):
        statement =3D "grep -e 'CROSS COMPILE Badness:' -e 'is unsafe for c=
ross-compilation' %s > /dev/null" % installlog
        if subprocess.call(statement, shell=3DTrue) =3D=3D 0:
            bb.warn("%s: The install log indicates that host include and/or=
 library paths were used.\n \
        Please check the log '%s' for more information." % (pkg, installlog=
))

    # Scan the packages...
    pkgdest =3D d.getVar('PKGDEST', True)
    packages =3D d.getVar('PACKAGES', True)

    # no packages should be scanned
    if not packages:
        return

    testmatrix =3D d.getVarFlags("QAPATHTEST")

    g =3D globals()
    walk_sane =3D True
    rdepends_sane =3D True
    for package in packages.split():
        skip =3D (d.getVar('INSANE_SKIP_' + package, True) or "").split()
        if skip:
            bb.note("Package %s skipping QA tests: %s" % (package, str(skip=
)))
        warnchecks =3D []
        for w in (d.getVar("WARN_QA", True) or "").split():
            if w in skip:
               continue
            if w in testmatrix and testmatrix[w] in g:
                warnchecks.append(g[testmatrix[w]])
        errorchecks =3D []
        for e in (d.getVar("ERROR_QA", True) or "").split():
            if e in skip:
               continue
            if e in testmatrix and testmatrix[e] in g:
                errorchecks.append(g[testmatrix[e]])

        bb.note("Checking Package: %s" % package)
        path =3D "%s/%s" % (pkgdest, package)
        if not package_qa_walk(path, warnchecks, errorchecks, skip, package=
, d):
            walk_sane  =3D False
        if not package_qa_check_rdepends(package, pkgdest, skip, d):
            rdepends_sane =3D False


    if not walk_sane or not rdepends_sane:
        bb.fatal("QA run found fatal errors. Please consider fixing them.")
    bb.note("DONE with PACKAGE QA")
}


python do_package_rpm () {
	import os

	def creat_srpm_dir(d):
		if d.getVar('SOURCE_ARCHIVE_PACKAGE_TYPE', True) and d.getVar('SOURCE_ARC=
HIVE_PACKAGE_TYPE', True).upper() =3D=3D 'SRPM':
			clean_licenses =3D get_licenses(d)
			pkgwritesrpmdir =3D bb.data.expand('/tool/yocto/poky/build/tmp/deploy/so=
urces/deploy-srpm/${PACKAGE_ARCH_EXTEND}', d)
			pkgwritesrpmdir =3D pkgwritesrpmdir + '/' + clean_licenses
			bb.mkdirhier(pkgwritesrpmdir)
			os.chmod(pkgwritesrpmdir, 0755)
			return pkgwritesrpmdir

	# We need a simple way to remove the MLPREFIX from the package name,
	# and dependency information...
	def strip_multilib(name, d):
		ml =3D d.getVar("MLPREFIX", True)
		if ml and name and len(ml) !=3D 0 and name.find(ml) >=3D 0:
			return "".join(name.split(ml))
		return name

	workdir =3D d.getVar('WORKDIR', True)
	outdir =3D d.getVar('DEPLOY_DIR_IPK', True)
	tmpdir =3D d.getVar('TMPDIR', True)
	pkgd =3D d.getVar('PKGD', True)
	pkgdest =3D d.getVar('PKGDEST', True)
	if not workdir or not outdir or not pkgd or not tmpdir:
		bb.error("Variables incorrectly set, unable to package")
		return

	packages =3D d.getVar('PACKAGES', True)
	if not packages or packages =3D=3D '':
		bb.debug(1, "No packages; nothing to do")
		return

	# Construct the spec file...
	srcname    =3D strip_multilib(d.getVar('PN', True), d)
	outspecfile =3D workdir + "/" + srcname + ".spec"
	d.setVar('OUTSPECFILE', outspecfile)
	bb.build.exec_func('write_specfile', d)

	# Construct per file dependencies file
	def dump_filerdeps(varname, outfile, d):
		outfile.write("#!/usr/bin/env python\n\n")
		outfile.write("# Dependency table\n")
		outfile.write('deps =3D {\n')
		for pkg in packages.split():
			dependsflist_key =3D 'FILE' + varname + 'FLIST' + "_" + pkg
			dependsflist =3D (d.getVar(dependsflist_key, True) or "")
			for dfile in dependsflist.split():
				key =3D "FILE" + varname + "_" + dfile + "_" + pkg
				depends_dict =3D bb.utils.explode_dep_versions(d.getVar(key, True) or "=
")
				file =3D dfile.replace("@underscore@", "_")
				file =3D file.replace("@closebrace@", "]")
				file =3D file.replace("@openbrace@", "[")
				file =3D file.replace("@tab@", "\t")
				file =3D file.replace("@space@", " ")
				file =3D file.replace("@at@", "@")
				outfile.write('"' + pkgd + file + '" : "')
				for dep in depends_dict:
					ver =3D depends_dict[dep]
					if dep and ver:
						ver =3D ver.replace("(","")
						ver =3D ver.replace(")","")
						outfile.write(dep + " " + ver + " ")
					else:
						outfile.write(dep + " ")
				outfile.write('",\n')
		outfile.write('}\n\n')
		outfile.write("import sys\n")
		outfile.write("while 1:\n")
		outfile.write("\tline =3D sys.stdin.readline().strip()\n")
		outfile.write("\tif not line:\n")
		outfile.write("\t\tsys.exit(0)\n")
		outfile.write("\tif line in deps:\n")
		outfile.write("\t\tprint(deps[line] + '\\n')\n")

	# OE-core dependencies a.k.a. RPM requires
	outdepends =3D workdir + "/" + srcname + ".requires"

	try:
		from __builtin__ import file
		dependsfile =3D file(outdepends, 'w')
	except OSError:
		raise bb.build.FuncFailed("unable to open spec file for writing.")

	dump_filerdeps('RDEPENDS', dependsfile, d)

	dependsfile.close()
	os.chmod(outdepends, 0755)

	# OE-core / RPM Provides
	outprovides =3D workdir + "/" + srcname + ".provides"

	try:
		from __builtin__ import file
		providesfile =3D file(outprovides, 'w')
	except OSError:
		raise bb.build.FuncFailed("unable to open spec file for writing.")

	dump_filerdeps('RPROVIDES', providesfile, d)

	providesfile.close()
	os.chmod(outprovides, 0755)

	# Setup the rpmbuild arguments...
	rpmbuild =3D d.getVar('RPMBUILD', True)
	targetsys =3D d.getVar('TARGET_SYS', True)
	targetvendor =3D d.getVar('TARGET_VENDOR', True)
	package_arch =3D d.getVar('PACKAGE_ARCH', True) or ""
	if package_arch not in "all any noarch".split():
		ml_prefix =3D (d.getVar('MLPREFIX', True) or "").replace("-", "_")
		d.setVar('PACKAGE_ARCH_EXTEND', ml_prefix + package_arch)
	else:
		d.setVar('PACKAGE_ARCH_EXTEND', package_arch)
	pkgwritedir =3D d.expand('/tool/yocto/poky/build/tmp/work/virtex5-poky-lin=
ux/linux-xilinx-3.3.0-r0/deploy-rpms/${PACKAGE_ARCH_EXTEND}')
	pkgarch =3D d.expand('${PACKAGE_ARCH_EXTEND}-poky-linux')
	magicfile =3D d.expand('/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/u=
sr/share/misc/magic.mgc')
	bb.mkdirhier(pkgwritedir)
	os.chmod(pkgwritedir, 0755)

	cmd =3D rpmbuild
	cmd =3D cmd + " --nodeps --short-circuit --target " + pkgarch + " --buildr=
oot " + pkgd
	cmd =3D cmd + " --define '_topdir " + workdir + "' --define '_rpmdir " + p=
kgwritedir + "'"
	cmd =3D cmd + " --define '_build_name_fmt %%{NAME}-%%{VERSION}-%%{RELEASE}=
.%%{ARCH}.rpm'"
	cmd =3D cmd + " --define '_use_internal_dependency_generator 0'"
	cmd =3D cmd + " --define '__find_requires " + outdepends + "'"
	cmd =3D cmd + " --define '__find_provides " + outprovides + "'"
	cmd =3D cmd + " --define '_unpackaged_files_terminate_build 0'"
	cmd =3D cmd + " --define 'debug_package %{nil}'"
	cmd =3D cmd + " --define '_rpmfc_magic_path " + magicfile + "'"
	cmd =3D cmd + " --define '_tmppath " + workdir + "'"
	if d.getVar('SOURCE_ARCHIVE_PACKAGE_TYPE', True) and d.getVar('SOURCE_ARCH=
IVE_PACKAGE_TYPE', True).upper() =3D=3D 'SRPM':
		cmdsrpm =3D cmd + " --define '_sourcedir " + workdir + "' --define '_srcr=
pmdir " + creat_srpm_dir(d) + "'"
		cmdsrpm =3D 'fakeroot ' + cmdsrpm + " -bs " + outspecfile
	cmd =3D cmd + " -bb " + outspecfile

    # Build the source rpm package !
	if d.getVar('SOURCE_ARCHIVE_PACKAGE_TYPE', True) and d.getVar('SOURCE_ARCH=
IVE_PACKAGE_TYPE', True).upper() =3D=3D 'SRPM':
		d.setVar('SBUILDSPEC', cmdsrpm + "\n")
		d.setVarFlag('SBUILDSPEC', 'func', '1')
		bb.build.exec_func('SBUILDSPEC', d)


	# Build the rpm package!
	d.setVar('BUILDSPEC', cmd + "\n")
	d.setVarFlag('BUILDSPEC', 'func', '1')
	bb.build.exec_func('BUILDSPEC', d)
}


python map_uboot_arch () {
def map_uboot_arch(a, d):
	import re

	if   re.match('p(pc|owerpc)(|64)', a): return 'ppc'
	elif re.match('i.86$', a): return 'x86'
	return a
}


python buildcfg_neededvars () {
def buildcfg_neededvars(d):
	needed_vars =3D oe.data.typed_value("BUILDCFG_NEEDEDVARS", d)
	pesteruser =3D []
	for v in needed_vars:
		val =3D d.getVar(v, True)
		if not val or val =3D=3D 'INVALID':
			pesteruser.append(v)

	if pesteruser:
		bb.fatal('The following variable(s) were not set: %s\nPlease set them dir=
ectly, or choose a MACHINE or DISTRO that sets them.' % ', '.join(pesteruse=
r))
}


python get_timedata () {
def get_timedata(var, data):
    import time
    timedata =3D data.getVar(var, False)
    if timedata is None:
        return
    oldtime, oldcpu, oldproc =3D timedata
    procdiff =3D get_process_cputime(os.getpid()) - oldproc
    cpudiff =3D get_cputime() - oldcpu
    timediff =3D time.time() - oldtime
    if cpudiff > 0:
        cpuperc =3D float(procdiff) * 100 / cpudiff
    else:
        cpuperc =3D None
    return timediff, cpuperc
}


python do_package () {
        # Change the following version to cause sstate to invalidate the pa=
ckage
        # cache.  This is useful if an item this class depends on changes i=
n a
        # way that the output of this class changes.  rpmdeps is a good exa=
mple
        # as any change to rpmdeps requires this to be rerun.
        # PACKAGE_BBCLASS_VERSION =3D "1"

	packages =3D (d.getVar('PACKAGES', True) or "").split()
	if len(packages) < 1:
		bb.debug(1, "No packages to build, skipping do_package")
		return

	workdir =3D d.getVar('WORKDIR', True)
	outdir =3D d.getVar('DEPLOY_DIR', True)
	dest =3D d.getVar('D', True)
	dvar =3D d.getVar('PKGD', True)
	pn =3D d.getVar('PN', True)

	if not workdir or not outdir or not dest or not dvar or not pn or not pack=
ages:
		bb.error("WORKDIR, DEPLOY_DIR, D, PN and PKGD all must be defined, unable=
 to package")
		return

	for f in (d.getVar('PACKAGEFUNCS', True) or '').split():
		bb.build.exec_func(f, d)
}


python package_do_shlibs () {
	import re, pipes

	exclude_shlibs =3D d.getVar('EXCLUDE_FROM_SHLIBS', 0)
	if exclude_shlibs:
		bb.note("not generating shlibs")
		return

	lib_re =3D re.compile("^.*\.so")
	libdir_re =3D re.compile(".*/lib$")

	packages =3D d.getVar('PACKAGES', True)
	targetos =3D d.getVar('TARGET_OS', True)

	workdir =3D d.getVar('WORKDIR', True)

	ver =3D d.getVar('PKGV', True)
	if not ver:
		bb.error("PKGV not defined")
		return

	pkgdest =3D d.getVar('PKGDEST', True)

	shlibs_dir =3D d.getVar('SHLIBSDIR', True)
	shlibswork_dir =3D d.getVar('SHLIBSWORKDIR', True)

	# Take shared lock since we're only reading, not writing
	lf =3D bb.utils.lockfile(d.expand("/tool/yocto/poky/build/tmp/sysroots/pac=
kage-output.lock"))

	def linux_so(root, path, file):
		needs_ldconfig =3D False
		cmd =3D d.getVar('OBJDUMP', True) + " -p " + pipes.quote(os.path.join(roo=
t, file)) + " 2>/dev/null"
		cmd =3D "PATH=3D\"%s\" %s" % (d.getVar('PATH', True), cmd)
		fd =3D os.popen(cmd)
		lines =3D fd.readlines()
		fd.close()
		for l in lines:
			m =3D re.match("\s+NEEDED\s+([^\s]*)", l)
			if m:
				if m.group(1) not in needed[pkg]:
					needed[pkg].append(m.group(1))
			m =3D re.match("\s+SONAME\s+([^\s]*)", l)
			if m:
				this_soname =3D m.group(1)
				if not this_soname in sonames:
					# if library is private (only used by package) then do not build shlib=
 for it
					if not private_libs or -1 =3D=3D private_libs.find(this_soname):
						sonames.append(this_soname)
				if libdir_re.match(root):
					needs_ldconfig =3D True
				if snap_symlinks and (file !=3D this_soname):
					renames.append((os.path.join(root, file), os.path.join(root, this_sona=
me)))
		return needs_ldconfig

	def darwin_so(root, path, file):
		fullpath =3D os.path.join(root, file)
		if not os.path.exists(fullpath):
			return

		def get_combinations(base):
			#
			# Given a base library name, find all combinations of this split by "." =
and "-"
			#
			combos =3D []
			options =3D base.split(".")
			for i in range(1, len(options) + 1):
				combos.append(".".join(options[0:i]))
			options =3D base.split("-")
			for i in range(1, len(options) + 1):
				combos.append("-".join(options[0:i]))
			return combos

		if (file.endswith('.dylib') or file.endswith('.so')) and not pkg.endswith=
('-dev') and not pkg.endswith('-dbg'):
			# Drop suffix
			name =3D file.rsplit(".",1)[0]
			# Find all combinations
			combos =3D get_combinations(name)
			for combo in combos:
				if not combo in sonames:
					sonames.append(combo)
		if file.endswith('.dylib') or file.endswith('.so'):
			lafile =3D fullpath.replace(os.path.join(pkgdest, pkg), d.getVar('PKGD',=
 True))
			# Drop suffix
			lafile =3D lafile.rsplit(".",1)[0]
			lapath =3D os.path.dirname(lafile)
			lafile =3D os.path.basename(lafile)
			# Find all combinations
			combos =3D get_combinations(lafile)
			for combo in combos:
				if os.path.exists(lapath + '/' + combo + '.la'):
					break
			lafile =3D lapath + '/' + combo + '.la'

			#bb.note("Foo2: %s" % lafile)
			#bb.note("Foo %s %s" % (file, fullpath))
			if os.path.exists(lafile):
				fd =3D open(lafile, 'r')
				lines =3D fd.readlines()
				fd.close()
				for l in lines:
					m =3D re.match("\s*dependency_libs=3D\s*'(.*)'", l)
					if m:
						deps =3D m.group(1).split(" ")
						for dep in deps:
							#bb.note("Trying %s for %s" % (dep, pkg))
							name =3D None
							if dep.endswith(".la"):
								name =3D os.path.basename(dep).replace(".la", "")
							elif dep.startswith("-l"):
								name =3D dep.replace("-l", "lib")
							if pkg not in needed:
								needed[pkg] =3D []
							if name and name not in needed[pkg]:
								needed[pkg].append(name)
								#bb.note("Adding %s for %s" % (name, pkg))

	if d.getVar('PACKAGE_SNAP_LIB_SYMLINKS', True) =3D=3D "1":
		snap_symlinks =3D True
	else:
		snap_symlinks =3D False

	if (d.getVar('USE_LDCONFIG', True) or "1") =3D=3D "1":
		use_ldconfig =3D True
	else:
		use_ldconfig =3D False

	needed =3D {}
	shlib_provider =3D {}
	for pkg in packages.split():
		private_libs =3D d.getVar('PRIVATE_LIBS_' + pkg, True) or d.getVar('PRIVA=
TE_LIBS', True)
		needs_ldconfig =3D False
		bb.debug(2, "calculating shlib provides for %s" % pkg)

		pkgver =3D d.getVar('PKGV_' + pkg, True)
		if not pkgver:
			pkgver =3D d.getVar('PV_' + pkg, True)
		if not pkgver:
			pkgver =3D ver

		needed[pkg] =3D []
		sonames =3D list()
		renames =3D list()
		top =3D os.path.join(pkgdest, pkg)
		for root, dirs, files in os.walk(top):
			for file in files:
				soname =3D None
				path =3D os.path.join(root, file)
				if os.path.islink(path):
					continue
				if targetos =3D=3D "darwin" or targetos =3D=3D "darwin8":
					darwin_so(root, dirs, file)
				elif os.access(path, os.X_OK) or lib_re.match(file):
					ldconfig =3D linux_so(root, dirs, file)
					needs_ldconfig =3D needs_ldconfig or ldconfig
		for (old, new) in renames:
		    	bb.note("Renaming %s to %s" % (old, new))
			os.rename(old, new)
		shlibs_file =3D os.path.join(shlibswork_dir, pkg + ".list")
		shver_file =3D os.path.join(shlibswork_dir, pkg + ".ver")
		if len(sonames):
			fd =3D open(shlibs_file, 'w')
			for s in sonames:
				fd.write(s + '\n')
				shlib_provider[s] =3D (pkg, pkgver)
			fd.close()
			fd =3D open(shver_file, 'w')
			fd.write(pkgver + '\n')
			fd.close()
		if needs_ldconfig and use_ldconfig:
			bb.debug(1, 'adding ldconfig call to postinst for %s' % pkg)
			postinst =3D d.getVar('pkg_postinst_%s' % pkg, True) or d.getVar('pkg_po=
stinst', True)
			if not postinst:
				postinst =3D '#!/bin/sh\n'
			postinst +=3D d.getVar('ldconfig_postinst_fragment', True)
			d.setVar('pkg_postinst_%s' % pkg, postinst)

	list_re =3D re.compile('^(.*)\.list$')
	for dir in [shlibs_dir]:
		if not os.path.exists(dir):
			continue
		for file in os.listdir(dir):
			m =3D list_re.match(file)
			if m:
				dep_pkg =3D m.group(1)
				fd =3D open(os.path.join(dir, file))
				lines =3D fd.readlines()
				fd.close()
				ver_file =3D os.path.join(dir, dep_pkg + '.ver')
				lib_ver =3D None
				if os.path.exists(ver_file):
					fd =3D open(ver_file)
					lib_ver =3D fd.readline().rstrip()
					fd.close()
				for l in lines:
					shlib_provider[l.rstrip()] =3D (dep_pkg, lib_ver)

	bb.utils.unlockfile(lf)

	assumed_libs =3D d.getVar('ASSUME_SHLIBS', True)
	if assumed_libs:
	    for e in assumed_libs.split():
		l, dep_pkg =3D e.split(":")
		lib_ver =3D None
		dep_pkg =3D dep_pkg.rsplit("_", 1)
		if len(dep_pkg) =3D=3D 2:
		    lib_ver =3D dep_pkg[1]
		dep_pkg =3D dep_pkg[0]
		shlib_provider[l] =3D (dep_pkg, lib_ver)

	for pkg in packages.split():
		bb.debug(2, "calculating shlib requirements for %s" % pkg)

		deps =3D list()
		for n in needed[pkg]:
			if n in shlib_provider.keys():
				(dep_pkg, ver_needed) =3D shlib_provider[n]

				bb.debug(2, '%s: Dependency %s requires package %s' % (pkg, n, dep_pkg)=
)

				if dep_pkg =3D=3D pkg:
					continue

				if ver_needed:
					dep =3D "%s (>=3D %s)" % (dep_pkg, ver_needed)
				else:
					dep =3D dep_pkg
				if not dep in deps:
					deps.append(dep)
			else:
				bb.note("Couldn't find shared library provider for %s" % n)

		deps_file =3D os.path.join(pkgdest, pkg + ".shlibdeps")
		if os.path.exists(deps_file):
			os.remove(deps_file)
		if len(deps):
			fd =3D open(deps_file, 'w')
			for dep in deps:
				fd.write(dep + '\n')
			fd.close()
}


python base_contains () {
def base_contains(variable, checkvalues, truevalue, falsevalue, d):
    return oe.utils.contains(variable, checkvalues, truevalue, falsevalue, =
d)
}


python package_qa_check_perm () {
def package_qa_check_perm(path,name,d, elf, messages):
    """
    Check the permission of files
    """
    return
}


python oe_import () {
def oe_import(d):
    import os, sys

    bbpath =3D d.getVar("BBPATH", True).split(":")
    sys.path[0:0] =3D [os.path.join(dir, "lib") for dir in bbpath]

    def inject(name, value):
        """Make a python object accessible from the metadata"""
        if hasattr(bb.utils, "_context"):
            bb.utils._context[name] =3D value
        else:
            __builtins__[name] =3D value

    import oe.data
    for toimport in oe.data.typed_value("OE_IMPORTS", d):
        imported =3D __import__(toimport)
        inject(toimport.split(".", 1)[0], imported)
}


python package_qa_walk () {
def package_qa_walk(path, warnfuncs, errorfuncs, skip, package, d):
    import oe.qa

    #if this will throw an exception, then fix the dict above
    target_os   =3D d.getVar('TARGET_OS', True)
    target_arch =3D d.getVar('TARGET_ARCH', True)

    warnings =3D []
    errors =3D []
    for root, dirs, files in os.walk(path):
        for file in files:
            path =3D os.path.join(root,file)
            elf =3D oe.qa.ELFFile(path)
            try:
                elf.open()
            except:
                elf =3D None
            for func in warnfuncs:
                func(path, package, d, elf, warnings)
            for func in errorfuncs:
                func(path, package, d, elf, errors)

    for w in warnings:
        bb.warn("QA Issue: %s" % w)
        package_qa_write_error(w, d)
    for e in errors:
        bb.error("QA Issue: %s" % e)
        package_qa_write_error(e, d)

    return len(errors) =3D=3D 0
}


python do_unpack () {
	bb.build.exec_func('base_do_unpack', d)
}


python runstrip () {
def runstrip(file, elftype, d):
    # Function to strip a single file, called from split_and_strip_files be=
low
    # A working 'file' (one which works on the target architecture)
    #
    # The elftype is a bit pattern (explained in split_and_strip_files) to =
tell
    # us what type of file we're processing...
    # 4 - executable
    # 8 - shared library

    import commands, stat, subprocess

    pathprefix =3D "export PATH=3D%s; " % d.getVar('PATH', True)
    strip =3D d.getVar("STRIP", True)

    # Handle kernel modules specifically - .debug directories here are poin=
tless
    if file.find("/lib/modules/") !=3D -1 and file.endswith(".ko"):
        return subprocess.call("%s'%s' --strip-debug --remove-section=3D.co=
mment --remove-section=3D.note --preserve-dates '%s'" % (pathprefix, strip,=
 file), shell=3DTrue)

    newmode =3D None
    if not os.access(file, os.W_OK) or os.access(file, os.R_OK):
        origmode =3D os.stat(file)[stat.ST_MODE]
        newmode =3D origmode | stat.S_IWRITE | stat.S_IREAD
        os.chmod(file, newmode)

    extraflags =3D ""
    # .so and shared library
    if ".so" in file and elftype & 8:
        extraflags =3D "--remove-section=3D.comment --remove-section=3D.not=
e --strip-unneeded"
    # shared or executable:
    elif elftype & 8 or elftype & 4:
        extraflags =3D "--remove-section=3D.comment --remove-section=3D.not=
e"

    stripcmd =3D "'%s' %s '%s'" % (strip, extraflags, file)
    bb.debug(1, "runstrip: %s" % stripcmd)

    ret =3D subprocess.call("%s%s" % (pathprefix, stripcmd), shell=3DTrue)

    if newmode:
        os.chmod(file, origmode)

    if ret:
        bb.error("runstrip: '%s' strip command failed" % stripcmd)

    return 0
}


python check_sanity_validmachine () {
def check_sanity_validmachine(sanity_data):
    from bb import data

    messages =3D ""

    # Check TUNE_ARCH is set
    if sanity_data.getVar('TUNE_ARCH', True) =3D=3D 'INVALID':
        messages =3D messages + 'TUNE_ARCH is unset. Please ensure your MAC=
HINE configuration includes a valid tune configuration file which will set =
this correctly.\n'

    # Check TARGET_OS is set
    if sanity_data.getVar('TARGET_OS', True) =3D=3D 'INVALID':
        messages =3D messages + 'Please set TARGET_OS directly, or choose a=
 MACHINE or DISTRO that does so.\n'

    # Check that we don't have duplicate entries in PACKAGE_ARCHS & that TU=
NE_PKGARCH is in PACKAGE_ARCHS
    pkgarchs =3D sanity_data.getVar('PACKAGE_ARCHS', True)
    tunepkg =3D sanity_data.getVar('TUNE_PKGARCH', True)
    tunefound =3D False
    seen =3D {}
    dups =3D []

    for pa in pkgarchs.split():
        if seen.get(pa, 0) =3D=3D 1:
            dups.append(pa)
        else:
            seen[pa] =3D 1
        if pa =3D=3D tunepkg:
            tunefound =3D True

    if len(dups):
       messages =3D messages + "Error, the PACKAGE_ARCHS variable contains =
duplicates. The following archs are listed more than once: %s" % " ".join(d=
ups)

    if tunefound =3D=3D False:
       messages =3D messages + "Error, the PACKAGE_ARCHS variable does not =
contain TUNE_PKGARCH (%s)." % tunepkg

    return messages

}


python package_qa_check_desktop () {
def package_qa_check_desktop(path, name, d, elf, messages):
    """
    Run all desktop files through desktop-file-validate.
    """
    if path.endswith(".desktop"):
        desktop_file_validate =3D os.path.join(d.getVar('STAGING_BINDIR_NAT=
IVE',True),'desktop-file-validate')
        output =3D os.popen("%s %s" % (desktop_file_validate, path))
        # This only produces output on errors
        for l in output:
            messages.append("Desktop file issue: " + l.strip())
}


python get_diskstats () {
def get_diskstats(dev):
    import itertools
    #######################################################################=
#####
    # For info on what these are, see kernel doc file iostats.txt
    #######################################################################=
#####
    DSTAT_KEYS =3D ['ReadsComp', 'ReadsMerged', 'SectRead', 'TimeReads', 'W=
ritesComp', 'SectWrite', 'TimeWrite', 'IOinProgress', 'TimeIO', 'WTimeIO']
    try:
        for x in open("/proc/diskstats", "r"):
            if dev in x:
                diskstats_val =3D x.rstrip().split()[4:]
    except IOError as e:
        return
    diskstats =3D dict(itertools.izip(DSTAT_KEYS, diskstats_val))
    return diskstats
}


python do_menuconfig () {
        try:
            mtime =3D os.path.getmtime(".config")
        except OSError:
            mtime =3D 0

        oe_terminal("/bin/bash -c \"make menuconfig; echo 'Pausing for 5 se=
conds'; sleep 5\"", 'linux-xilinx Configuration', d)

        # FIXME this check can be removed when the minimum bitbake version =
has been bumped
        if hasattr(bb.build, 'write_taint'):
            try:
                newmtime =3D os.path.getmtime(".config")
            except OSError:
                newmtime =3D 0

            if newmtime > mtime:
                bb.note("Configuration changed, recompile will be forced")
                bb.build.write_taint('do_compile', d)
}


python src_patches () {
def src_patches(d, all =3D False ):
	workdir =3D d.getVar('WORKDIR', True)
	fetch =3D bb.fetch2.Fetch([], d)
	patches =3D []
	sources =3D []
	for url in fetch.urls:
		local =3D patch_path(url, fetch, workdir)
		if not local:
			if all:
				local =3D fetch.localpath(url)
				sources.append(local)
			continue

		urldata =3D fetch.ud[url]
		parm =3D urldata.parm
		patchname =3D parm.get('pname') or os.path.basename(local)

		apply, reason =3D should_apply(parm, d)
		if not apply:
			if reason:
				bb.note("Patch %s %s" % (patchname, reason))
			continue

		patchparm =3D {'patchname': patchname}
		if "striplevel" in parm:
			striplevel =3D parm["striplevel"]
		elif "pnum" in parm:
			#bb.msg.warn(None, "Deprecated usage of 'pnum' url parameter in '%s', pl=
ease use 'striplevel'" % url)
			striplevel =3D parm["pnum"]
		else:
			striplevel =3D '1'
		patchparm['striplevel'] =3D striplevel

		patchdir =3D parm.get('patchdir')
		if patchdir:
			patchparm['patchdir'] =3D patchdir

		localurl =3D bb.encodeurl(('file', '', local, '', '', patchparm))
		patches.append(localurl)

	if all:
		return sources

	return patches
}


python get_device () {
def get_device(e):
    file =3D open(e.data.getVar('DEVFILE', True))
    device =3D file.readline()
    file.close()
    return device
}


python check_conf_exists () {
def check_conf_exists(fn, data):
    bbpath =3D []
    fn =3D data.expand(fn)
    vbbpath =3D data.getVar("BBPATH")
    if vbbpath:
        bbpath +=3D vbbpath.split(":")
    for p in bbpath:
        currname =3D os.path.join(data.expand(p), fn)
        if os.access(currname, os.R_OK):
            return True
    return False
}


python package_qa_hash_style () {
def package_qa_hash_style(path, name, d, elf, messages):
    """
    Check if the binary has the right hash style...
    """

    if not elf:
        return

    if os.path.islink(path):
        return

    gnu_hash =3D "--hash-style=3Dgnu" in d.getVar('LDFLAGS', True)
    if not gnu_hash:
        gnu_hash =3D "--hash-style=3Dboth" in d.getVar('LDFLAGS', True)
    if not gnu_hash:
        return

    objdump =3D d.getVar('OBJDUMP', True)
    env_path =3D d.getVar('PATH', True)

    sane =3D False
    has_syms =3D False

    # If this binary has symbols, we expect it to have GNU_HASH too.
    for line in os.popen("LC_ALL=3DC PATH=3D%s %s -p '%s' 2> /dev/null" % (=
env_path, objdump, path), "r"):
        if "SYMTAB" in line:
            has_syms =3D True
        if "GNU_HASH" in line:
            sane =3D True
        if "[mips32]" in line or "[mips64]" in line:
	    sane =3D True

    if has_syms and not sane:
        messages.append("No GNU_HASH in the elf binary: '%s'" % path)

}


python base_set_filespath () {
def base_set_filespath(path, d):
	filespath =3D []
	extrapaths =3D (d.getVar("FILESEXTRAPATHS", True) or "")
	# Don't prepend empty strings to the path list
	if extrapaths !=3D "":
		path =3D extrapaths.split(":") + path
	# The ":" ensures we have an 'empty' override
	overrides =3D (d.getVar("OVERRIDES", True) or "") + ":"
	for p in path:
		if p !=3D "":
			for o in overrides.split(":"):
				filespath.append(os.path.join(p, o))
	return ":".join(filespath)
}


python mapping_rename_hook () {
def mapping_rename_hook(d):
	"""
	Rewrite variables to account for package renaming in things
	like debian.bbclass or manual PKG variable name changes
	"""
	runtime_mapping_rename("RDEPENDS", d)
	runtime_mapping_rename("RRECOMMENDS", d)
	runtime_mapping_rename("RSUGGESTS", d)
	runtime_mapping_rename("RPROVIDES", d)
	runtime_mapping_rename("RREPLACES", d)
	runtime_mapping_rename("RCONFLICTS", d)
}


python linux_module_packages () {
def linux_module_packages(s, d):
	suffix =3D ""
	return " ".join(map(lambda s: "kernel-module-%s%s" % (s.lower().replace('_=
', '-').replace('@', '+'), suffix), s.split()))
}


python base_do_unpack () {
	src_uri =3D (d.getVar('SRC_URI', True) or "").split()
	if len(src_uri) =3D=3D 0:
		return

	localdata =3D bb.data.createCopy(d)
	bb.data.update_data(localdata)

	rootdir =3D localdata.getVar('WORKDIR', True)

        try:
            fetcher =3D bb.fetch2.Fetch(src_uri, localdata)
            fetcher.unpack(rootdir)
        except bb.fetch2.BBFetchException, e:
            raise bb.build.FuncFailed(e)
}


python do_populate_sysroot_setscene () {
	sstate_setscene(d)
}


python get_layers_branch_rev () {
def get_layers_branch_rev(d):
	layers =3D (d.getVar("BBLAYERS", True) or "").split()
	layers_branch_rev =3D ["%-17s =3D \"%s:%s\"" % (os.path.basename(i), \
		base_get_metadata_git_branch(i, None).strip(), \
		base_get_metadata_git_revision(i, None)) \
			for i in layers]
	i =3D len(layers_branch_rev)-1
	p1 =3D layers_branch_rev[i].find("=3D")
	s1 =3D layers_branch_rev[i][p1:]
	while i > 0:
		p2 =3D layers_branch_rev[i-1].find("=3D")
		s2=3D layers_branch_rev[i-1][p2:]
		if s1 =3D=3D s2:
			layers_branch_rev[i-1] =3D layers_branch_rev[i-1][0:p2]
			i -=3D 1
		else:
			i -=3D 1
			p1 =3D layers_branch_rev[i].find("=3D")
			s1=3D layers_branch_rev[i][p1:]
	return layers_branch_rev

}


python base_get_scmbasepath () {
def base_get_scmbasepath(d):
	return d.getVar( 'COREBASE', True)
}


python check_license_flags () {
def check_license_flags(d):
    """
    This function checks if a recipe has any LICENSE_FLAGs that
    aren't whitelisted.

    If it does, it returns the first LICENSE_FLAG missing from the
    whitelist, or all the LICENSE_FLAGs if there is no whitelist.

    If everything is is properly whitelisted, it returns None.
    """

    def license_flag_matches(flag, whitelist, pn):
        """
        Return True if flag matches something in whitelist, None if not.

        Before we test a flag against the whitelist, we append _linux-xilin=
x
        to it.  We then try to match that string against the
        whitelist.  This covers the normal case, where we expect
        LICENSE_FLAGS to be a simple string like 'commercial', which
        the user typically matches exactly in the whitelist by
        explicitly appending the package name e.g 'commercial_foo'.
        If we fail the match however, we then split the flag across
        '_' and append each fragment and test until we either match or
        run out of fragments.
        """
        flag_pn =3D ("%s_%s" % (flag, pn))
        for candidate in whitelist:
            if flag_pn =3D=3D candidate:
                    return True

        flag_cur =3D ""
        flagments =3D flag_pn.split("_")
        flagments.pop() # we've already tested the full string
        for flagment in flagments:
            if flag_cur:
                flag_cur +=3D "_"
            flag_cur +=3D flagment
            for candidate in whitelist:
                if flag_cur =3D=3D candidate:
                    return True
        return False

    def all_license_flags_match(license_flags, whitelist):
        """ Return first unmatched flag, None if all flags match """
        pn =3D d.getVar('PN', True)
        split_whitelist =3D whitelist.split()
        for flag in license_flags.split():
            if not license_flag_matches(flag, split_whitelist, pn):
                return flag
        return None

    license_flags =3D d.getVar('LICENSE_FLAGS', True)
    if license_flags:
        whitelist =3D d.getVar('LICENSE_FLAGS_WHITELIST', True)
        if not whitelist:
            return license_flags
        unmatched_flag =3D all_license_flags_match(license_flags, whitelist=
)
        if unmatched_flag:
            return unmatched_flag
    return None
}


python check_sanity_version_change () {
def check_sanity_version_change(data):
    # Sanity checks to be done when SANITY_VERSION changes
    return ""
}


python package_do_pkgconfig () {
	import re

	packages =3D d.getVar('PACKAGES', True)
	workdir =3D d.getVar('WORKDIR', True)
	pkgdest =3D d.getVar('PKGDEST', True)

	shlibs_dir =3D d.getVar('SHLIBSDIR', True)
	shlibswork_dir =3D d.getVar('SHLIBSWORKDIR', True)

	pc_re =3D re.compile('(.*)\.pc$')
	var_re =3D re.compile('(.*)=3D(.*)')
	field_re =3D re.compile('(.*): (.*)')

	pkgconfig_provided =3D {}
	pkgconfig_needed =3D {}
	for pkg in packages.split():
		pkgconfig_provided[pkg] =3D []
		pkgconfig_needed[pkg] =3D []
		top =3D os.path.join(pkgdest, pkg)
		for root, dirs, files in os.walk(top):
			for file in files:
				m =3D pc_re.match(file)
				if m:
					pd =3D bb.data.init()
					name =3D m.group(1)
					pkgconfig_provided[pkg].append(name)
					path =3D os.path.join(root, file)
					if not os.access(path, os.R_OK):
						continue
					f =3D open(path, 'r')
					lines =3D f.readlines()
					f.close()
					for l in lines:
						m =3D var_re.match(l)
						if m:
							name =3D m.group(1)
							val =3D m.group(2)
							pd.setVar(name, pd.expand(val))
							continue
						m =3D field_re.match(l)
						if m:
							hdr =3D m.group(1)
							exp =3D bb.data.expand(m.group(2), pd)
							if hdr =3D=3D 'Requires':
								pkgconfig_needed[pkg] +=3D exp.replace(',', ' ').split()

	# Take shared lock since we're only reading, not writing
	lf =3D bb.utils.lockfile(d.expand("/tool/yocto/poky/build/tmp/sysroots/pac=
kage-output.lock"))

	for pkg in packages.split():
		pkgs_file =3D os.path.join(shlibswork_dir, pkg + ".pclist")
		if pkgconfig_provided[pkg] !=3D []:
			f =3D open(pkgs_file, 'w')
			for p in pkgconfig_provided[pkg]:
				f.write('%s\n' % p)
			f.close()

	for dir in [shlibs_dir]:
		if not os.path.exists(dir):
			continue
		for file in os.listdir(dir):
			m =3D re.match('^(.*)\.pclist$', file)
			if m:
				pkg =3D m.group(1)
				fd =3D open(os.path.join(dir, file))
				lines =3D fd.readlines()
				fd.close()
				pkgconfig_provided[pkg] =3D []
				for l in lines:
					pkgconfig_provided[pkg].append(l.rstrip())

	for pkg in packages.split():
		deps =3D []
		for n in pkgconfig_needed[pkg]:
			found =3D False
			for k in pkgconfig_provided.keys():
				if n in pkgconfig_provided[k]:
					if k !=3D pkg and not (k in deps):
						deps.append(k)
					found =3D True
			if found =3D=3D False:
				bb.note("couldn't find pkgconfig module '%s' in any package" % n)
		deps_file =3D os.path.join(pkgdest, pkg + ".pcdeps")
		if len(deps):
			fd =3D open(deps_file, 'w')
			for dep in deps:
				fd.write(dep + '\n')
			fd.close()

	bb.utils.unlockfile(lf)
}


python base_eventhandler () {
        if isinstance(e, bb.event.ConfigParsed):
		e.data.setVar('BB_VERSION', bb.__version__)
                generate_git_config(e)
                pkgarch_mapping(e.data)
                preferred_ml_updates(e.data)

	if isinstance(e, bb.event.BuildStarted):
		statuslines =3D []
		for func in oe.data.typed_value('BUILDCFG_FUNCS', e.data):
			g =3D globals()
			if func not in g:
				bb.warn("Build configuration function '%s' does not exist" % func)
			else:
				flines =3D g[func](e.data)
				if flines:
					statuslines.extend(flines)

		statusheader =3D e.data.getVar('BUILDCFG_HEADER', True)
		bb.plain('\n%s\n%s\n' % (statusheader, '\n'.join(statuslines)))
}


python sstate_init () {
def sstate_init(name, task, d):
    ss =3D {}
    ss['task'] =3D task
    ss['name'] =3D name
    ss['dirs'] =3D []
    ss['plaindirs'] =3D []
    ss['lockfiles'] =3D []
    ss['lockfiles-shared'] =3D []
    return ss
}


python sstate_clean () {
def sstate_clean(ss, d):
    import oe.path

    manifest =3D d.expand("/tool/yocto/poky/build/tmp/sstate-control/manife=
st-virtex5-linux-xilinx.%s" % ss['name'])

    if os.path.exists(manifest):
        locks =3D []
        for lock in ss['lockfiles-shared']:
            locks.append(bb.utils.lockfile(lock))
        for lock in ss['lockfiles']:
            locks.append(bb.utils.lockfile(lock))

        sstate_clean_manifest(manifest, d)

        for lock in locks:
            bb.utils.unlockfile(lock)

    stfile =3D d.getVar("STAMP", True) + ".do_" + ss['task']
    extrainf =3D d.getVarFlag("do_" + ss['task'], 'stamp-extra-info', True)
    oe.path.remove(stfile)
    oe.path.remove(stfile + "_setscene")
    if extrainf:
        oe.path.remove(stfile + ".*" + extrainf)
        oe.path.remove(stfile + "_setscene" + ".*" + extrainf)
    else:
        oe.path.remove(stfile + ".*")
        oe.path.remove(stfile + "_setscene" + ".*")
}


python emit_pkgdata () {
	from glob import glob

	def write_if_exists(f, pkg, var):
		def encode(str):
			import codecs
			c =3D codecs.getencoder("string_escape")
			return c(str)[0]

		val =3D d.getVar('%s_%s' % (var, pkg), True)
		if val:
			f.write('%s_%s: %s\n' % (var, pkg, encode(val)))
			return
		val =3D d.getVar('%s' % (var), True)
		if val:
			f.write('%s: %s\n' % (var, encode(val)))
		return

	def get_directory_size(dir):
		if os.listdir(dir):
			size =3D int(os.popen('du -sk %s' % dir).readlines()[0].split('\t')[0])
		else:
			size =3D 0
		return size

	packages =3D d.getVar('PACKAGES', True)
	pkgdest =3D d.getVar('PKGDEST', True)
	pkgdatadir =3D d.getVar('PKGDESTWORK', True)

	# Take shared lock since we're only reading, not writing
	lf =3D bb.utils.lockfile(d.expand("/tool/yocto/poky/build/tmp/sysroots/pac=
kage-output.lock"), True)

	data_file =3D pkgdatadir + d.expand("/linux-xilinx" )
	f =3D open(data_file, 'w')
	f.write("PACKAGES: %s\n" % packages)
	f.close()

	workdir =3D d.getVar('WORKDIR', True)

	for pkg in packages.split():
		subdata_file =3D pkgdatadir + "/runtime/%s" % pkg

		sf =3D open(subdata_file, 'w')
		write_if_exists(sf, pkg, 'PN')
		write_if_exists(sf, pkg, 'PV')
		write_if_exists(sf, pkg, 'PR')
		write_if_exists(sf, pkg, 'PKGV')
		write_if_exists(sf, pkg, 'PKGR')
		write_if_exists(sf, pkg, 'LICENSE')
		write_if_exists(sf, pkg, 'DESCRIPTION')
		write_if_exists(sf, pkg, 'SUMMARY')
		write_if_exists(sf, pkg, 'RDEPENDS')
		write_if_exists(sf, pkg, 'RPROVIDES')
		write_if_exists(sf, pkg, 'RRECOMMENDS')
		write_if_exists(sf, pkg, 'RSUGGESTS')
		write_if_exists(sf, pkg, 'RREPLACES')
		write_if_exists(sf, pkg, 'RCONFLICTS')
		write_if_exists(sf, pkg, 'SECTION')
		write_if_exists(sf, pkg, 'PKG')
		write_if_exists(sf, pkg, 'ALLOW_EMPTY')
		write_if_exists(sf, pkg, 'FILES')
		write_if_exists(sf, pkg, 'pkg_postinst')
		write_if_exists(sf, pkg, 'pkg_postrm')
		write_if_exists(sf, pkg, 'pkg_preinst')
		write_if_exists(sf, pkg, 'pkg_prerm')
		write_if_exists(sf, pkg, 'FILERPROVIDESFLIST')
		for dfile in (d.getVar('FILERPROVIDESFLIST_' + pkg, True) or "").split():
			write_if_exists(sf, pkg, 'FILERPROVIDES_' + dfile)

		write_if_exists(sf, pkg, 'FILERDEPENDSFLIST')
		for dfile in (d.getVar('FILERDEPENDSFLIST_' + pkg, True) or "").split():
			write_if_exists(sf, pkg, 'FILERDEPENDS_' + dfile)

		sf.write('%s_%s: %s\n' % ('PKGSIZE', pkg, get_directory_size(pkgdest + "/=
%s" % pkg)))
		sf.close()


		allow_empty =3D d.getVar('ALLOW_EMPTY_%s' % pkg, True)
		if not allow_empty:
			allow_empty =3D d.getVar('ALLOW_EMPTY', True)
		root =3D "%s/%s" % (pkgdest, pkg)
		os.chdir(root)
		g =3D glob('*')
		if g or allow_empty =3D=3D "1":
			packagedfile =3D pkgdatadir + '/runtime/%s.packaged' % pkg
			file(packagedfile, 'w').close()

	bb.utils.unlockfile(lf)
}


python package_qa_check_dbg () {
def package_qa_check_dbg(path, name, d, elf, messages):
    """
    Check for ".debug" files or directories outside of the dbg package
    """

    if not "-dbg" in name:
        if '.debug' in path.split(os.path.sep):
            messages.append("non debug package contains .debug directory: %=
s path %s" % \
                     (name, package_qa_clean_path(path,d)))
}


python package_do_filedeps () {
	import re

	pkgdest =3D d.getVar('PKGDEST', True)
	packages =3D d.getVar('PACKAGES', True)

	rpmdeps =3D d.expand("/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr=
/lib/rpm/bin/rpmdeps-oecore --macros /tool/yocto/poky/build/tmp/sysroots/x8=
6_64-linux/usr/lib/rpm/macros --define '_rpmfc_magic_path /tool/yocto/poky/=
build/tmp/sysroots/x86_64-linux/usr/share/misc/magic.mgc' --rpmpopt /tool/y=
octo/poky/build/tmp/sysroots/x86_64-linux/usr/lib/rpm/rpmpopt")
	r =3D re.compile(r'[<>=3D]+ +[^ ]*')

	def file_translate(file):
		ft =3D file.replace("@", "@at@")
		ft =3D ft.replace(" ", "@space@")
		ft =3D ft.replace("\t", "@tab@")
		ft =3D ft.replace("[", "@openbrace@")
		ft =3D ft.replace("]", "@closebrace@")
		ft =3D ft.replace("_", "@underscore@")
		return ft

	# Quick routine to process the results of the rpmdeps call...
	def process_deps(pipe, pkg, provides_files, requires_files):
		provides =3D {}
		requires =3D {}

		for line in pipe:
			f =3D line.split(" ", 1)[0].strip()
			line =3D line.split(" ", 1)[1].strip()

			if line.startswith("Requires:"):
				i =3D requires
			elif line.startswith("Provides:"):
				i =3D provides
			else:
				continue

			file =3D f.replace(pkgdest + "/" + pkg, "")
			file =3D file_translate(file)
			value =3D line.split(":", 1)[1].strip()
			value =3D r.sub(r'(\g<0>)', value)

			if value.startswith("rpmlib("):
				continue
			if value =3D=3D "python":
				continue
			if file not in i:
				i[file] =3D []
			i[file].append(value)

		for file in provides:
			provides_files.append(file)
			key =3D "FILERPROVIDES_" + file + "_" + pkg
			d.setVar(key, " ".join(provides[file]))

		for file in requires:
			requires_files.append(file)
			key =3D "FILERDEPENDS_" + file + "_" + pkg
			d.setVar(key, " ".join(requires[file]))

	def chunks(files, n):
		return [files[i:i+n] for i in range(0, len(files), n)]

	# Determine dependencies
	for pkg in packages.split():
		if pkg.endswith('-dbg') or pkg.endswith('-doc') or pkg.find('-locale-') !=
=3D -1 or pkg.find('-localedata-') !=3D -1 or pkg.find('-gconv-') !=3D -1 o=
r pkg.find('-charmap-') !=3D -1 or pkg.startswith('kernel-module-'):
			continue

		provides_files =3D []
		requires_files =3D []
		rpfiles =3D []
		for root, dirs, files in os.walk(pkgdest + "/" + pkg):
			for file in files:
				rpfiles.append(os.path.join(root, file))

		for files in chunks(rpfiles, 100):
			dep_pipe =3D os.popen(rpmdeps + " " + " ".join(files))

			process_deps(dep_pipe, pkg, provides_files, requires_files)

		d.setVar("FILERDEPENDSFLIST_" + pkg, " ".join(requires_files))
		d.setVar("FILERPROVIDESFLIST_" + pkg, " ".join(provides_files))
}


python copy_data () {
def copy_data(e):
    sanity_data =3D bb.data.createCopy(e.data)
    sanity_data.finalize()
    return sanity_data
}


python raise_sanity_error () {
def raise_sanity_error(msg, d):
    if d.getVar("SANITY_USE_EVENTS", True) =3D=3D "1":
        # FIXME: handle when BitBake version is too old to support bb.event=
.SanityCheckFailed
        # We can just fire the event directly once the minimum version is b=
umped beyond 1.15.1
        try:
            bb.event.fire(bb.event.SanityCheckFailed(msg), d)
            return
        except AttributeError:
            pass

    bb.fatal(""" OE-core's config sanity checker detected a potential misco=
nfiguration.
    Either fix the cause of this error or at your own risk disable the chec=
ker (see sanity.conf).
    Following is the list of potential problems / advisories:

    %s""" % msg)
}


python base_detect_branch () {
def base_detect_branch(d):
	path =3D base_get_scmbasepath(d)

	scms =3D [base_get_metadata_git_branch]

	for scm in scms:
		rev =3D scm(path, d)
		if rev <> "<unknown>":
			return rev.strip()

	return "<unknown>"
}


python debian_package_name_hook () {
	import glob, copy, stat, errno, re

	pkgdest =3D d.getVar('PKGDEST', True)
	packages =3D d.getVar('PACKAGES', True)
	bin_re =3D re.compile(".*/s?" + os.path.basename(d.getVar("bindir", True))=
 + "$")
	lib_re =3D re.compile(".*/" + os.path.basename(d.getVar("libdir", True)) +=
 "$")
	so_re =3D re.compile("lib.*\.so")

	def socrunch(s):
		s =3D s.lower().replace('_', '-')
		m =3D re.match("^(.*)(.)\.so\.(.*)$", s)
		if m is None:
			return None
		if m.group(2) in '0123456789':
			bin =3D '%s%s-%s' % (m.group(1), m.group(2), m.group(3))
		else:
			bin =3D m.group(1) + m.group(2) + m.group(3)
		dev =3D m.group(1) + m.group(2)
		return (bin, dev)

	def isexec(path):
		try:
			s =3D os.stat(path)
		except (os.error, AttributeError):
			return 0
		return (s[stat.ST_MODE] & stat.S_IEXEC)

	def auto_libname(packages, orig_pkg):
		sonames =3D []
		has_bins =3D 0
		has_libs =3D 0
		pkg_dir =3D os.path.join(pkgdest, orig_pkg)
		for root, dirs, files in os.walk(pkg_dir):
			if bin_re.match(root) and files:
				has_bins =3D 1
			if lib_re.match(root) and files:
				has_libs =3D 1
				for f in files:
					if so_re.match(f):
						fp =3D os.path.join(root, f)
						cmd =3D (d.getVar('TARGET_PREFIX', True) or "") + "objdump -p " + fp =
+ " 2>/dev/null"
						fd =3D os.popen(cmd)
						lines =3D fd.readlines()
						fd.close()
						for l in lines:
							m =3D re.match("\s+SONAME\s+([^\s]*)", l)
							if m and not m.group(1) in sonames:
								sonames.append(m.group(1))

		bb.debug(1, 'LIBNAMES: pkg %s libs %d bins %d sonames %s' % (orig_pkg, ha=
s_libs, has_bins, sonames))
		soname =3D None
		if len(sonames) =3D=3D 1:
			soname =3D sonames[0]
		elif len(sonames) > 1:
			lead =3D d.getVar('LEAD_SONAME', True)
			if lead:
				r =3D re.compile(lead)
				filtered =3D []
				for s in sonames:
					if r.match(s):
						filtered.append(s)
				if len(filtered) =3D=3D 1:
					soname =3D filtered[0]
				elif len(filtered) > 1:
					bb.note("Multiple matches (%s) for LEAD_SONAME '%s'" % (", ".join(filt=
ered), lead))
				else:
					bb.note("Multiple libraries (%s) found, but LEAD_SONAME '%s' doesn't m=
atch any of them" % (", ".join(sonames), lead))
			else:
				bb.note("Multiple libraries (%s) found and LEAD_SONAME not defined" % "=
, ".join(sonames))

		if has_libs and not has_bins and soname:
			soname_result =3D socrunch(soname)
			if soname_result:
				(pkgname, devname) =3D soname_result
				for pkg in packages.split():
					if (d.getVar('PKG_' + pkg) or d.getVar('DEBIAN_NOAUTONAME_' + pkg)):
						continue
					debian_pn =3D d.getVar('DEBIANNAME_' + pkg)
					if debian_pn:
						newpkg =3D debian_pn
					elif pkg =3D=3D orig_pkg:
						newpkg =3D pkgname
					else:
						newpkg =3D pkg.replace(orig_pkg, devname, 1)
					mlpre=3Dd.getVar('MLPREFIX', True)
					if mlpre:
						if not newpkg.find(mlpre) =3D=3D 0:
							newpkg =3D mlpre + newpkg
					if newpkg !=3D pkg:
						d.setVar('PKG_' + pkg, newpkg)

	# reversed sort is needed when some package is substring of another
	# ie in ncurses we get without reverse sort:
	# DEBUG: LIBNAMES: pkgname libtic5 devname libtic pkg ncurses-libtic orig_=
pkg ncurses-libtic debian_pn None newpkg libtic5
	# and later
	# DEBUG: LIBNAMES: pkgname libtic5 devname libtic pkg ncurses-libticw orig=
_pkg ncurses-libtic debian_pn None newpkg libticw
	# so we need to handle ncurses-libticw->libticw5 before ncurses-libtic->li=
btic5
	for pkg in sorted((d.getVar('AUTO_LIBNAME_PKGS', True) or "").split(), rev=
erse=3DTrue):
		auto_libname(packages, pkg)
}


python check_toolchain_tune () {
def check_toolchain_tune(data, tune, multilib):
    tune_errors =3D []
    if not tune:
        return "No tuning found for %s multilib." % multilib
    bb.debug(2, "Sanity-checking tuning '%s' (%s) features:" % (tune, multi=
lib))
    features =3D (data.getVar("TUNE_FEATURES_tune-%s" % tune, True) or "").=
split()
    if not features:
        return "Tuning '%s' has no defined features, and cannot be used." %=
 tune
    valid_tunes =3D data.getVarFlags('TUNEVALID') or {}
    conflicts =3D data.getVarFlags('TUNECONFLICTS') or {}
    # [doc] is the documentation for the variable, not a real feature
    if 'doc' in valid_tunes:
        del valid_tunes['doc']
    if 'doc' in conflicts:
        del conflicts['doc']
    for feature in features:
        if feature in conflicts:
            for conflict in conflicts[feature].split():
                if conflict in features:
                    tune_errors.append("Feature '%s' conflicts with '%s'." =
%
                        (feature, conflict))
        if feature in valid_tunes:
            bb.debug(2, "  %s: %s" % (feature, valid_tunes[feature]))
        else:
            tune_errors.append("Feature '%s' is not defined." % feature)
    whitelist =3D data.getVar("TUNEABI_WHITELIST", True) or ''
    override =3D data.getVar("TUNEABI_OVERRIDE", True) or ''
    if whitelist:
        tuneabi =3D data.getVar("TUNEABI_tune-%s" % tune, True) or ''
        if not tuneabi:
            tuneabi =3D tune
        if True not in [x in whitelist.split() for x in tuneabi.split()]:
            tune_errors.append("Tuning '%s' (%s) cannot be used with any su=
pported tuning/ABI." %
                (tune, tuneabi))
    if tune_errors:
        return "Tuning '%s' has the following errors:\n" + '\n'.join(tune_e=
rrors)
}


python get_diskdata () {
def get_diskdata(var, dev, data):
    olddiskdata =3D data.getVar(var, False)
    diskdata =3D {}
    if olddiskdata is None:
       return
    newdiskdata =3D get_diskstats(dev)
    for key in olddiskdata.iterkeys():
        diskdata["Start"+key] =3D str(int(olddiskdata[key]))
        diskdata["End"+key] =3D str(int(newdiskdata[key]))
    return diskdata
}


python base_get_metadata_git_revision () {
def base_get_metadata_git_revision(path, d):
	f =3D os.popen("cd %s; git log -n 1 --pretty=3Doneline -- 2>&1" % path)
	data =3D f.read()
	if f.close() is None:
		rev =3D data.split(" ")[0]
		if len(rev) !=3D 0:
			return rev
	return "<unknown>"
}


python package_rpm_install () {
	bb.fatal("package_rpm_install not implemented!")
}


--Apple-Mail=_2A4BACD2-6D54-4C41-9DD5-3172313E307E
Content-Disposition: attachment;
	filename=SRCREV.txt
Content-Type: text/plain;
	name="SRCREV.txt"
Content-Transfer-Encoding: quoted-printable

Loading cache...done.
Loaded 1529 entries from dependency cache.
Parsing recipes...done.
Parsing of 1193 .bb files complete (1191 cached, 2 parsed). 1529 targets, 4=
0 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
# STAGING_INCDIR_NATIVE=3D${STAGING_DIR_NATIVE}${includedir_native}
STAGING_INCDIR_NATIVE=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/u=
sr/include"
# KERNEL_IMAGEDEST=3Dboot
KERNEL_IMAGEDEST=3D"boot"
# prefix=3D/usr
export prefix=3D"/usr"
# FREESMARTPHONE_GIT=3Dgit://git.freesmartphone.org
FREESMARTPHONE_GIT=3D"git://git.freesmartphone.org"
# INHERIT_INSANE=3Dinsane
INHERIT_INSANE=3D"insane"
# CVSDIR=3D${CO_DIR}/cvs
CVSDIR=3D"/tool/yocto/poky/build/downloads/cvs"
# SVNDIR=3D${CO_DIR}/svn
SVNDIR=3D"/tool/yocto/poky/build/downloads/svn"
# PREFERRED_VERSION_gcc-cross-intermediate=3D${GCCVERSION}
PREFERRED_VERSION_gcc-cross-intermediate=3D"4.7%"
# bindir_cross=3D/bin
bindir_cross=3D"/bin"
# BASEDEPENDS=3D${@base_dep_prepend(d)}
# PREFERRED_PROVIDER_libgcc-nativesdk=3Dlibgcc-nativesdk
PREFERRED_PROVIDER_libgcc-nativesdk=3D"libgcc-nativesdk"
# BB_CONSOLELOG=3D${TMPDIR}/cooker.log.${DATETIME}
BB_CONSOLELOG=3D"/tool/yocto/poky/build/tmp/cooker.log.20120623074715"
# STRIP=3D${HOST_PREFIX}strip
export STRIP=3D"powerpc-poky-linux-strip"
# STAGING_DATADIR=3D${STAGING_DIR_HOST}${datadir}
STAGING_DATADIR=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5/usr/share"
# target_datadir=3D/usr/share
target_datadir=3D"/usr/share"
# PKG_kernel-base=3Dkernel-${@legitimize_package_name('${KERNEL_VERSION}')}
PKG_kernel-base=3D"kernel-3.3.0-14.2-build1"
# FETCHCOMMAND_cvs=3D/usr/bin/env cvs '-d${CVSROOT}' co ${CVSCOOPTS} ${CVSM=
ODULE}
FETCHCOMMAND_cvs=3D"/usr/bin/env cvs '-d${CVSROOT}' co ${CVSCOOPTS} ${CVSMO=
DULE}"
# base_bindir_native=3D/bin
base_bindir_native=3D"/bin"
# localstatedir=3D${base_prefix}/var
export localstatedir=3D"/var"
# SECTION_${PN}-dbg=3DNone
# DATETIME=3D${DATE}${TIME}
DATETIME=3D"20120623074715"
# BUILDCFG_VARS=3DBB_VERSION TARGET_ARCH TARGET_OS MACHINE DISTRO DISTRO_VE=
RSION TUNE_FEATURES TARGET_FPU
BUILDCFG_VARS=3D"BB_VERSION TARGET_ARCH TARGET_OS MACHINE DISTRO DISTRO_VER=
SION TUNE_FEATURES TARGET_FPU"
# BUILD_CC=3D${CCACHE}${BUILD_PREFIX}gcc ${BUILD_CC_ARCH}
export BUILD_CC=3D"gcc"
# IMAGE_FEATURES=3D ${EXTRA_IMAGE_FEATURES}
IMAGE_FEATURES=3D"debug-tweaks"
# DESCRIPTION_linux-xilinx-staticdev=3D${DESCRIPTION}  This package contain=
s static libraries for software development.
DESCRIPTION_linux-xilinx-staticdev=3D"Linux kernel for Xilinx platforms  Th=
is package contains static libraries for software development."
# SEPPUKU_AUTOBUILD=3DNone
# INITRAMFS_FSTYPES=3Dcpio.gz
INITRAMFS_FSTYPES=3D"cpio.gz"
# PREFERRED_VERSION_cross-localedef-native=3D${EGLIBCVERSION}
PREFERRED_VERSION_cross-localedef-native=3D"2.15"
# INHIBIT_DEFAULT_DEPS=3D1
INHIBIT_DEFAULT_DEPS=3D"1"
# INITRAMFS_TASK=3D
# SOLIBSDEV_darwin8=3D.dylib
SOLIBSDEV_darwin8=3D".dylib"
# SOLIBSDEV_darwin9=3D.dylib
SOLIBSDEV_darwin9=3D".dylib"
# USER=3Delvis
export USER=3D"elvis"
# OES_BITBAKE_CONF=3D1
OES_BITBAKE_CONF=3D"1"
# QADEPENDS_virtclass-nativesdk=3D
# PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}libc-for-gcc=3DNone
# SUMMARY_linux-xilinx-doc=3D${SUMMARY} - Documentation files
SUMMARY_linux-xilinx-doc=3D"linux-xilinx version 3.3.0-r0 - Documentation f=
iles"
# UPDATECOMMAND=3DERROR, this must be a BitBake bug
UPDATECOMMAND=3D"ERROR, this must be a BitBake bug"
# EXTENDPE=3D${@['','${PE\x7d_'][d.getVar('PE',1) > 0]}
# ALLOW_EMPTY_linux-xilinx-dbg=3D1
ALLOW_EMPTY_linux-xilinx-dbg=3D"1"
# PREFERRED_VERSION_gcc-cross-initial=3D${GCCVERSION}
PREFERRED_VERSION_gcc-cross-initial=3D"4.7%"
# KERNEL_PRIORITY=3D${@int(d.getVar('PV',1).split('-')[0].split('+')[0].spl=
it('.')[0]) * 10000 +                        int(d.getVar('PV',1).split('-'=
)[0].split('+')[0].split('.')[1]) * 100 +                        int(d.getV=
ar('PV',1).split('-')[0].split('+')[0].split('.')[-1])}
KERNEL_PRIORITY=3D"30300"
# BBINCLUDED=3D/tool/yocto/poky/meta/classes/kernel-arch.bbclass /tool/yoct=
o/poky/meta/classes/utility-tasks.bbclass /tool/yocto/meta-xilinx/conf/dist=
ro/include/xilinx-default-revisions.inc /tool/yocto/poky/meta/conf/distro/i=
nclude/world-broken.inc /tool/yocto/poky/meta/recipes-kernel/linux/linux-dt=
b.inc /tool/yocto/poky/meta/classes/patch.bbclass /tool/yocto/poky/meta/con=
f/distro/include/as-needed.inc /tool/yocto/meta-xilinx/conf/machine/include=
/tune-ppc440.inc /tool/yocto/poky/meta/conf/layer.conf /tool/yocto/poky/met=
a-yocto/conf/distro/poky.conf /tool/yocto/poky/meta/conf/documentation.conf=
 /tool/yocto/poky/meta/classes/mirrors.bbclass /tool/yocto/meta-xilinx/reci=
pes-kernel/linux/linux-xilinx.inc /tool/yocto/meta-openembedded/meta-oe/con=
f/layer.conf /tool/yocto/poky/meta/classes/utils.bbclass /tool/yocto/poky/m=
eta/classes/insane.bbclass /tool/yocto/poky/meta/classes/devshell.bbclass /=
tool/yocto/poky/meta/classes/image-mklibs.bbclass /tool/yocto/poky/meta/cla=
sses/debian.bbclass /tool/yocto/poky/meta/conf/abi_version.conf /tool/yocto=
/poky/meta/conf/distro/include/default-versions.inc /tool/yocto/poky/meta/c=
lasses/staging.bbclass /tool/yocto/poky/meta/classes/logging.bbclass /tool/=
yocto/poky/meta/classes/module_strip.bbclass /tool/yocto/poky/meta/conf/bit=
bake.conf /tool/yocto/poky/meta/conf/sanity.conf /tool/yocto/poky/meta/clas=
ses/buildstats.bbclass /tool/yocto/poky/meta/classes/package.bbclass /tool/=
yocto/poky/meta/classes/terminal.bbclass /tool/yocto/poky/build/conf/local.=
conf /tool/yocto/poky/meta/classes/package_rpm.bbclass /tool/yocto/poky/bui=
ld/conf/bblayers.conf /tool/yocto/poky/meta/conf/distro/include/tclibc-egli=
bc.inc /tool/yocto/poky/meta/classes/license.bbclass /tool/yocto/poky/meta/=
classes/sstate.bbclass /tool/yocto/meta-xilinx/classes/xilinx-utils.bbclass=
 /tool/yocto/poky/meta-yocto/conf/layer.conf /tool/yocto/poky/meta/classes/=
linux-kernel-base.bbclass /tool/yocto/poky/meta/classes/kernel.bbclass /too=
l/yocto/poky/meta/classes/prserv.bbclass /tool/yocto/poky/meta/classes/imag=
e-prelink.bbclass /tool/yocto/meta-xilinx/classes/xilinx-kernel.bbclass /to=
ol/yocto/meta-xilinx/conf/layer.conf /tool/yocto/poky/meta/conf/distro/incl=
ude/tcmode-default.inc /tool/yocto/poky/meta/classes/cml1.bbclass /tool/yoc=
to/poky/meta/classes/base.bbclass /tool/yocto/poky/meta/conf/distro/include=
/default-distrovars.inc /tool/yocto/poky/meta/conf/machine/include/powerpc/=
arch-powerpc.inc /tool/yocto/poky/meta/classes/packagedata.bbclass /tool/yo=
cto/poky/meta/classes/deploy.bbclass /tool/yocto/poky/meta/conf/distro/incl=
ude/default-providers.inc /tool/yocto/poky/meta/conf/distro/defaultsetup.co=
nf /tool/yocto/poky/meta/classes/sanity.bbclass /tool/yocto/meta-xilinx/con=
f/machine/virtex5.conf /tool/yocto/poky/meta/classes/metadata_scm.bbclass
BBINCLUDED=3D"/tool/yocto/poky/meta/classes/kernel-arch.bbclass /tool/yocto=
/poky/meta/classes/utility-tasks.bbclass /tool/yocto/meta-xilinx/conf/distr=
o/include/xilinx-default-revisions.inc /tool/yocto/poky/meta/conf/distro/in=
clude/world-broken.inc /tool/yocto/poky/meta/recipes-kernel/linux/linux-dtb=
.inc /tool/yocto/poky/meta/classes/patch.bbclass /tool/yocto/poky/meta/conf=
/distro/include/as-needed.inc /tool/yocto/meta-xilinx/conf/machine/include/=
tune-ppc440.inc /tool/yocto/poky/meta/conf/layer.conf /tool/yocto/poky/meta=
-yocto/conf/distro/poky.conf /tool/yocto/poky/meta/conf/documentation.conf =
/tool/yocto/poky/meta/classes/mirrors.bbclass /tool/yocto/meta-xilinx/recip=
es-kernel/linux/linux-xilinx.inc /tool/yocto/meta-openembedded/meta-oe/conf=
/layer.conf /tool/yocto/poky/meta/classes/utils.bbclass /tool/yocto/poky/me=
ta/classes/insane.bbclass /tool/yocto/poky/meta/classes/devshell.bbclass /t=
ool/yocto/poky/meta/classes/image-mklibs.bbclass /tool/yocto/poky/meta/clas=
ses/debian.bbclass /tool/yocto/poky/meta/conf/abi_version.conf /tool/yocto/=
poky/meta/conf/distro/include/default-versions.inc /tool/yocto/poky/meta/cl=
asses/staging.bbclass /tool/yocto/poky/meta/classes/logging.bbclass /tool/y=
octo/poky/meta/classes/module_strip.bbclass /tool/yocto/poky/meta/conf/bitb=
ake.conf /tool/yocto/poky/meta/conf/sanity.conf /tool/yocto/poky/meta/class=
es/buildstats.bbclass /tool/yocto/poky/meta/classes/package.bbclass /tool/y=
octo/poky/meta/classes/terminal.bbclass /tool/yocto/poky/build/conf/local.c=
onf /tool/yocto/poky/meta/classes/package_rpm.bbclass /tool/yocto/poky/buil=
d/conf/bblayers.conf /tool/yocto/poky/meta/conf/distro/include/tclibc-eglib=
c.inc /tool/yocto/poky/meta/classes/license.bbclass /tool/yocto/poky/meta/c=
lasses/sstate.bbclass /tool/yocto/meta-xilinx/classes/xilinx-utils.bbclass =
/tool/yocto/poky/meta-yocto/conf/layer.conf /tool/yocto/poky/meta/classes/l=
inux-kernel-base.bbclass /tool/yocto/poky/meta/classes/kernel.bbclass /tool=
/yocto/poky/meta/classes/prserv.bbclass /tool/yocto/poky/meta/classes/image=
-prelink.bbclass /tool/yocto/meta-xilinx/classes/xilinx-kernel.bbclass /too=
l/yocto/meta-xilinx/conf/layer.conf /tool/yocto/poky/meta/conf/distro/inclu=
de/tcmode-default.inc /tool/yocto/poky/meta/classes/cml1.bbclass /tool/yoct=
o/poky/meta/classes/base.bbclass /tool/yocto/poky/meta/conf/distro/include/=
default-distrovars.inc /tool/yocto/poky/meta/conf/machine/include/powerpc/a=
rch-powerpc.inc /tool/yocto/poky/meta/classes/packagedata.bbclass /tool/yoc=
to/poky/meta/classes/deploy.bbclass /tool/yocto/poky/meta/conf/distro/inclu=
de/default-providers.inc /tool/yocto/poky/meta/conf/distro/defaultsetup.con=
f /tool/yocto/poky/meta/classes/sanity.bbclass /tool/yocto/meta-xilinx/conf=
/machine/virtex5.conf /tool/yocto/poky/meta/classes/metadata_scm.bbclass"
# SDK_NAME=3D${DISTRO}-${TCLIBC}-${SDK_ARCH}-${TARGET_ARCH}
SDK_NAME=3D"poky-eglibc-x86_64-powerpc"
# BB_HASHCONFIG_WHITELIST=3D${BB_HASHBASE_WHITELIST} DATE TIME SESSION_MANA=
GER DBUS_SESSION_BUS_ADDRESS SSH_AGENT_PID XDG_SESSION_COOKIE SSH_AUTH_SOCK=
 XAUTHORITY PSEUDO_BUILD
BB_HASHCONFIG_WHITELIST=3D"TMPDIR FILE PATH PWD BB_TASKHASH BBPATH DL_DIR S=
STATE_DIR THISDIR FILESEXTRAPATHS FILE_DIRNAME HOME LOGNAME SHELL TERM USER=
 FILESPATH STAGING_DIR_HOST STAGING_DIR_TARGET COREBASE PRSERV_HOST PRSERV_=
PORT PRSERV_DUMPDIR PRSERV_DUMPFILE PRSERV_LOCKDOWN PARALLEL_MAKE CCACHE_DI=
R EXTERNAL_TOOLCHAIN CCACHE DATE TIME SESSION_MANAGER DBUS_SESSION_BUS_ADDR=
ESS SSH_AGENT_PID XDG_SESSION_COOKIE SSH_AUTH_SOCK XAUTHORITY PSEUDO_BUILD"
# TMPDIR=3D/tool/yocto/poky/build/tmp
TMPDIR=3D"/tool/yocto/poky/build/tmp"
# HOST_CC_ARCH=3D${TARGET_CC_ARCH}
HOST_CC_ARCH=3D"-m32  -msoft-float -mcpu=3D440"
# ALLOW_EMPTY_linux-xilinx-dev=3D1
ALLOW_EMPTY_linux-xilinx-dev=3D"1"
# CMDLINE_CONSOLE=3Dconsole=3D${@d.getVar("KERNEL_CONSOLE",1) or "ttyS0"}
export CMDLINE_CONSOLE=3D"console=3DttyS0"
# HOST_LD_KERNEL_ARCH=3D${TARGET_LD_KERNEL_ARCH}
# QEMU_OPTIONS_iwmmxt=3D-cpu pxa270-c5
QEMU_OPTIONS_iwmmxt=3D"-cpu pxa270-c5"
# TUNE_PKGARCH_tune-powerpc=3Dpowerpc
TUNE_PKGARCH_tune-powerpc=3D"powerpc"
# libexecdir=3D${exec_prefix}/libexec
export libexecdir=3D"/usr/libexec"
# UBOOT_MACHINE=3Dml507_config
UBOOT_MACHINE=3D"ml507_config"
# BB_BASEHASH_task-do_cleansstate=3Df63482664cc1b8cf3e9c7d4c5f4259d6
BB_BASEHASH_task-do_cleansstate=3D"f63482664cc1b8cf3e9c7d4c5f4259d6"
# IMAGE_ROOTFS_SIZE=3D65536
IMAGE_ROOTFS_SIZE=3D"65536"
# BB_MIN_VERSION=3D1.15.1
BB_MIN_VERSION=3D"1.15.1"
# datadir_native=3D${prefix_native}/share
datadir_native=3D"/usr/share"
# SDK_OS=3D${BUILD_OS}
SDK_OS=3D"linux"
# GIT_CONFIG=3D${GIT_CONFIG_PATH}/gitconfig
GIT_CONFIG=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/etc/gitconfi=
g"
# OE_TERMINAL_EXPORTS=3DXAUTHORITY SHELL DBUS_SESSION_BUS_ADDRESS DISPLAY E=
XTRA_OEMAKE SCREENDIR HOST_EXTRACFLAGS HOSTLDFLAGS HOST_LOADLIBES
OE_TERMINAL_EXPORTS=3D"XAUTHORITY SHELL DBUS_SESSION_BUS_ADDRESS DISPLAY EX=
TRA_OEMAKE SCREENDIR HOST_EXTRACFLAGS HOSTLDFLAGS HOST_LOADLIBES"
# datadir=3D${prefix}/share
export datadir=3D"/usr/share"
# KERNEL_CONSOLE=3DttyS0
KERNEL_CONSOLE=3D"ttyS0"
# STAGING_ETCDIR_NATIVE=3D${STAGING_DIR_NATIVE}${sysconfdir_native}
STAGING_ETCDIR_NATIVE=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/e=
tc"
# KERNEL_LD=3D${HOST_PREFIX}ld${KERNEL_LDSUFFIX} ${HOST_LD_KERNEL_ARCH}${TO=
OLCHAIN_OPTIONS}
KERNEL_LD=3D"powerpc-poky-linux-ld  --sysroot=3D/tool/yocto/poky/build/tmp/=
sysroots/virtex5"
# HOST_EXEEXT=3D
# PREFERRED_VERSION_eglibc-nativesdk=3D${EGLIBCVERSION}
PREFERRED_VERSION_eglibc-nativesdk=3D"2.15"
# FILES_kernel-vmlinux=3D/boot/vmlinux*
FILES_kernel-vmlinux=3D"/boot/vmlinux*"
# SUMMARY=3D${PN} version ${PV}-${PR}
SUMMARY=3D"linux-xilinx version 3.3.0-r0"
# BB_BASEHASH_task-do_buildall=3Dfdc376fd264c2fc126ec182f0a53ca8a
BB_BASEHASH_task-do_buildall=3D"fdc376fd264c2fc126ec182f0a53ca8a"
# GPEPHONE_MIRROR=3Dhttp://gpephone.linuxtogo.org/download/gpephone
GPEPHONE_MIRROR=3D"http://gpephone.linuxtogo.org/download/gpephone"
# GPEPHONE_SVN=3Dsvn://projects.linuxtogo.org/svn/gpephone/trunk/source;mod=
ule=3D${PN}
GPEPHONE_SVN=3D"svn://projects.linuxtogo.org/svn/gpephone/trunk/source;modu=
le=3Dlinux-xilinx"
# BB_BASEHASH_task-do_cleanall=3D3ff415d56d194d5bcce15077948400a7
BB_BASEHASH_task-do_cleanall=3D"3ff415d56d194d5bcce15077948400a7"
# ASSUME_PROVIDED=3Dbzip2-native grep-native diffstat-native patch-native p=
erl-native-runtime python-native-runtime subversion-native tar-native virtu=
al/libintl-native=20
ASSUME_PROVIDED=3D"bzip2-native grep-native diffstat-native patch-native pe=
rl-native-runtime python-native-runtime subversion-native tar-native virtua=
l/libintl-native"
# LICSSTATEDIR=3D${WORKDIR}/license-destdir/
LICSSTATEDIR=3D"/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xi=
linx-3.3.0-r0/license-destdir/"
# ALL_MULTILIB_PACKAGE_ARCHS=3D${@all_multilib_tune_values(d, 'PACKAGE_ARCH=
S')}
ALL_MULTILIB_PACKAGE_ARCHS=3D"all any noarch powerpc-nf ppc440 virtex5"
# BUILD_CXX=3D${CCACHE}${BUILD_PREFIX}g++ ${BUILD_CC_ARCH}
export BUILD_CXX=3D"g++"
# CPU_FEATURES=3D
# UPDATECOMMAND_cvs=3D/usr/bin/env cvs -d${CVSROOT} update -d -P ${CVSCOOPT=
S}
UPDATECOMMAND_cvs=3D"/usr/bin/env cvs -d${CVSROOT} update -d -P ${CVSCOOPTS=
}"
# IMAGE_ROOTFS=3D${WORKDIR}/rootfs
IMAGE_ROOTFS=3D"/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xi=
linx-3.3.0-r0/rootfs"
# MKTEMPCMD=3Dmktemp -q ${TMPBASE}
MKTEMPCMD=3D"mktemp -q ${TMPBASE}"
# DATE=3D20120623
DATE=3D"20120623"
# APACHE_MIRROR=3Dhttp://www.apache.org/dist
APACHE_MIRROR=3D"http://www.apache.org/dist"
# do_rootfs=3DNone
# LD=3D${HOST_PREFIX}ld${TOOLCHAIN_OPTIONS} ${HOST_LD_ARCH}
export LD=3D"powerpc-poky-linux-ld --sysroot=3D/tool/yocto/poky/build/tmp/s=
ysroots/virtex5"
# HOST_VENDOR=3D${TARGET_VENDOR}
HOST_VENDOR=3D"-poky"
# ARCH=3D${@map_kernel_arch(d.getVar('TARGET_ARCH', True), d)}
export ARCH=3D"powerpc"
# PREFERRED_PROVIDER_gdk-pixbuf=3Dgdk-pixbuf
PREFERRED_PROVIDER_gdk-pixbuf=3D"gdk-pixbuf"
# SSTATE_MANFILEBASE=3D${SSTATE_MANIFESTS}/manifest-${SSTATE_MANMACH}-
SSTATE_MANFILEBASE=3D"/tool/yocto/poky/build/tmp/sstate-control/manifest-vi=
rtex5-"
# MACHINE_TASK_PROVIDER=3D${DEFAULT_TASK_PROVIDER}
MACHINE_TASK_PROVIDER=3D"task-base"
# EXTRA_OEMAKE=3D
# HOSTLDFLAGS=3D${BUILD_LDFLAGS}
HOSTLDFLAGS=3D"-L/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib -=
L/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/lib -Wl,-rpath-link,/tool=
/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpath-link,/tool/y=
octo/poky/build/tmp/sysroots/x86_64-linux/lib -Wl,-rpath,/tool/yocto/poky/b=
uild/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpath,/tool/yocto/poky/build/tm=
p/sysroots/x86_64-linux/lib -Wl,-O1"
# LDFLAGS=3D${TARGET_LDFLAGS}
export LDFLAGS=3D"-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed"
# HOST_NONSYSV=3DNone
# bindir=3D${exec_prefix}/bin
export bindir=3D"/usr/bin"
# SUMMARY_${PN}-dbg=3DNone
# BUILDSTATS_BASE=3D${TMPDIR}/buildstats/
BUILDSTATS_BASE=3D"/tool/yocto/poky/build/tmp/buildstats/"
# SYSVINIT_ENABLED_GETTYS=3DNone
# TARGET_CXXFLAGS=3D${TARGET_CFLAGS} -fpermissive
export TARGET_CXXFLAGS=3D"-O2 -pipe -g -feliminate-unused-debug-types -fper=
missive"
# BUILD_ARCH=3D${@os.uname()[4]}
BUILD_ARCH=3D"x86_64"
# module_autoload_ipsec=3Dipsec
module_autoload_ipsec=3D"ipsec"
# MAKE=3Dmake
export MAKE=3D"make"
# KERNEL_CCSUFFIX=3D
# includedir=3D${exec_prefix}/include
export includedir=3D"/usr/include"
# PREFERRED_VERSION_gcc=3D${GCCVERSION}
PREFERRED_VERSION_gcc=3D"4.7%"
# BBFILE_PRIORITY_openembedded-layer=3D6
BBFILE_PRIORITY_openembedded-layer=3D"6"
# RDEPENDS_kernel=3Dkernel-base
RDEPENDS_kernel=3D"kernel-base"
# FILES_${PN}-doc=3DNone
# PRIORITY=3Doptional
PRIORITY=3D"optional"
# PARALLEL_MAKEINST=3D${PARALLEL_MAKE}
PARALLEL_MAKEINST=3D"-j 6"
# SEPPUKU_QUERY=3DNone
# BB_SETSCENE_VERIFY_FUNCTION=3Dsysroot_checkhashes
BB_SETSCENE_VERIFY_FUNCTION=3D"sysroot_checkhashes"
# SECTION=3Dkernel
SECTION=3D"kernel"
# SDK_CC_ARCH=3D${BUILD_CC_ARCH}
# MAINTAINER=3DPoky <poky@yoctoproject.org>
MAINTAINER=3D"Poky <poky@yoctoproject.org>"
# do_package_write_ipk=3DNone
# LIBCOVERRIDE=3D:libc-glibc
LIBCOVERRIDE=3D":libc-glibc"
# BUILD_LDFLAGS=3D-L${STAGING_LIBDIR_NATIVE} -L${STAGING_BASE_LIBDIR_NATIVE=
} -Wl,-rpath-link,${STAGING_LIBDIR_NATIVE} -Wl,-rpath-link,${STAGING_BASE_L=
IBDIR_NATIVE} -Wl,-rpath,${STAGING_LIBDIR_NATIVE} -Wl,-rpath,${STAGING_BASE=
_LIBDIR_NATIVE} -Wl,-O1
export BUILD_LDFLAGS=3D"-L/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/=
usr/lib -L/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/lib -Wl,-rpath-l=
ink,/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpath-lin=
k,/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/lib -Wl,-rpath,/tool/yoc=
to/poky/build/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpath,/tool/yocto/poky=
/build/tmp/sysroots/x86_64-linux/lib -Wl,-O1"
# STAGING_LIBDIR=3D${STAGING_DIR_HOST}${libdir}
STAGING_LIBDIR=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5/usr/lib"
# TARGET_ARCH=3D${TUNE_ARCH}
unset TARGET_ARCH
# BBINCLUDELOGS_LINES=3DNone
# BUILD_F77=3D${CCACHE}${BUILD_PREFIX}g77 ${BUILD_CC_ARCH}
export BUILD_F77=3D"g77"
# module_conf_rfcomm=3Dalias bt-proto-3 rfcomm
module_conf_rfcomm=3D"alias bt-proto-3 rfcomm"
# LIBCEXTENSION=3D${@['', '-gnu'][(d.getVar('ABIEXTENSION', True) or '') !=
=3D '']}
# ALLOW_EMPTY_${PN}-dbg=3DNone
# QUILTRCFILE=3D${STAGING_ETCDIR_NATIVE}/quiltrc
QUILTRCFILE=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/etc/quiltrc=
"
# BBLAYERS=3D /tool/yocto/poky/meta /tool/yocto/poky/meta-yocto /tool/yocto=
/meta-openembedded/meta-oe /tool/yocto/meta-xilinx=20
BBLAYERS=3D"/tool/yocto/poky/meta /tool/yocto/poky/meta-yocto /tool/yocto/m=
eta-openembedded/meta-oe /tool/yocto/meta-xilinx"
# BOOTSTRAP_EXTRA_RDEPENDS=3D
# PREFERRED_VERSION_linux-libc-headers-nativesdk=3D${LINUXLIBCVERSION}
PREFERRED_VERSION_linux-libc-headers-nativesdk=3D"3.4"
# BUILD_LD=3D${BUILD_PREFIX}ld ${BUILD_LD_ARCH}
export BUILD_LD=3D"ld"
# BUILD_SYS=3D${BUILD_ARCH}${BUILD_VENDOR}-${BUILD_OS}
BUILD_SYS=3D"x86_64-linux"
# PREFERRED_PROVIDER_virtual/${SDK_PREFIX}libc-for-gcc-nativesdk=3DNone
# module_conf_hci_uart=3Dalias tty-ldisc-15 hci_uart
module_conf_hci_uart=3D"alias tty-ldisc-15 hci_uart"
# QADEPENDS_virtclass-native=3D
# PREFERRED_PROVIDER_opkg-native=3Dopkg-native
PREFERRED_PROVIDER_opkg-native=3D"opkg-native"
# BB_BASEHASH_task-do_unpack=3D8c60b94fc30a2c885b22cc462347523a
BB_BASEHASH_task-do_unpack=3D"8c60b94fc30a2c885b22cc462347523a"
# MACHINE_ESSENTIAL_EXTRA_RDEPENDS=3D
# PATCHDEPENDENCY=3D${PATCHTOOL}-native:do_populate_sysroot
PATCHDEPENDENCY=3D"quilt-native:do_populate_sysroot"
# EXTRAOPKGCONFIG=3Dpoky-feed-config-opkg
EXTRAOPKGCONFIG=3D"poky-feed-config-opkg"
# KERNEL_IMAGE_BASE_NAME=3D${KERNEL_IMAGETYPE}-${PV}-${PR}-${MACHINE}-${DAT=
ETIME}
KERNEL_IMAGE_BASE_NAME=3D"uImage-3.3.0-r0-virtex5-20120623074715"
# OEINCLUDELOGS=3Dyes
OEINCLUDELOGS=3D"yes"
# TUNEABI=3DNone
# module_autoload_ircomm-tty=3Dircomm-tty
module_autoload_ircomm-tty=3D"ircomm-tty"
# PREFERRED_PROVIDER_virtual/gettext=3Dgettext
PREFERRED_PROVIDER_virtual/gettext=3D"gettext"
# GPE_EXTRA_SVN=3Dsvn://projects.linuxtogo.org/svn/gpe/trunk/extra;module=
=3D${PN}
GPE_EXTRA_SVN=3D"svn://projects.linuxtogo.org/svn/gpe/trunk/extra;module=3D=
linux-xilinx"
# oldincludedir=3D${exec_prefix}/include
export oldincludedir=3D"/usr/include"
# TUNEVALID=3DNone
# TUNECONFLICTS=3DNone
# SERIAL_CONSOLE=3D115200 ttyUL0
SERIAL_CONSOLE=3D"115200 ttyUL0"
# TIME=3D074715
TIME=3D"074715"
# localstatedir_nativesdk=3D/var
localstatedir_nativesdk=3D"/var"
# UPDATECOMMAND_svn=3D/usr/bin/env svn update ${SVNCOOPTS}
UPDATECOMMAND_svn=3D"/usr/bin/env svn update ${SVNCOOPTS}"
# RRECOMMENDS_${PN}-dbg=3DNone
# SEPPUKU_USER=3DNone
# FEED_DEPLOYDIR_BASE_URI=3DNone
# module_autoload_ipv6=3Dipv6
module_autoload_ipv6=3D"ipv6"
# LIMIT_BUILT_LOCALES=3DPOSIX en_US en_GB
LIMIT_BUILT_LOCALES=3D"POSIX en_US en_GB"
# DESCRIPTION_${PN}-dbg=3DNone
# EXTENDPRAUTO=3D${@['.${PRAUTO\x7d',''][d.getVar('PRAUTO',1) is None]}
# LANG=3Den_US.UTF-8
LANG=3D"en_US.UTF-8"
# TUNE_FEATURES_tune-powerpc-nf=3Dm32 fpu-soft
TUNE_FEATURES_tune-powerpc-nf=3D"m32 fpu-soft"
# BUILD_CCLD=3D${BUILD_PREFIX}gcc ${BUILD_CC_ARCH}
export BUILD_CCLD=3D"gcc"
# SUMMARY_linux-xilinx-dev=3D${SUMMARY} - Development files
SUMMARY_linux-xilinx-dev=3D"linux-xilinx version 3.3.0-r0 - Development fil=
es"
# DEBUG_FLAGS=3D-g -feliminate-unused-debug-types
DEBUG_FLAGS=3D"-g -feliminate-unused-debug-types"
# B=3D${S}
B=3D"/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-=
r0/git"
# GROUP_fetcher=3DNone
# SDK_NAME_PREFIX=3Doecore
SDK_NAME_PREFIX=3D"oecore"
# BBPATH=3D/tool/yocto/poky/meta-yocto::/tool/yocto/poky/meta:/tool/yocto/m=
eta-openembedded/meta-oe:/tool/yocto/meta-xilinx
BBPATH=3D"/tool/yocto/poky/meta-yocto::/tool/yocto/poky/meta:/tool/yocto/me=
ta-openembedded/meta-oe:/tool/yocto/meta-xilinx"
# RDEPENDS_${PN}-staticdev=3DNone
# RPMCONF_HOST_BASE=3D${DEPLOY_DIR_RPM}/solvedb-sdk
RPMCONF_HOST_BASE=3D"/tool/yocto/poky/build/tmp/deploy/rpm/solvedb-sdk"
# HOST_LD_ARCH=3D${TARGET_LD_ARCH}
# GROUP_dependencies=3DNone
# BB_BASEHASH_task-do_populate_lic=3Dd7189a1ecb6f83fc3182dcc0cdc435ed
BB_BASEHASH_task-do_populate_lic=3D"d7189a1ecb6f83fc3182dcc0cdc435ed"
# BB_STRICT_CHECKSUM=3D1
BB_STRICT_CHECKSUM=3D"1"
# PREMIRRORS=3Dbzr://.*/.*   http://downloads.yoctoproject.org/mirror/sourc=
es/ \n cvs://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n g=
it://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n hg://.*/.=
*    http://downloads.yoctoproject.org/mirror/sources/ \n osc://.*/.*   htt=
p://downloads.yoctoproject.org/mirror/sources/ \n p4://.*/.*    http://down=
loads.yoctoproject.org/mirror/sources/ \n svk://.*/.*   http://downloads.yo=
ctoproject.org/mirror/sources/ \n svn://.*/.*   http://downloads.yoctoproje=
ct.org/mirror/sources/ \n
PREMIRRORS=3D"bzr://.*/.*   http://downloads.yoctoproject.org/mirror/source=
s/ \n cvs://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n gi=
t://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n hg://.*/.*=
    http://downloads.yoctoproject.org/mirror/sources/ \n osc://.*/.*   http=
://downloads.yoctoproject.org/mirror/sources/ \n p4://.*/.*    http://downl=
oads.yoctoproject.org/mirror/sources/ \n svk://.*/.*   http://downloads.yoc=
toproject.org/mirror/sources/ \n svn://.*/.*   http://downloads.yoctoprojec=
t.org/mirror/sources/ \n"
# BASE_LIB_tune-powerpc-nf=3Dlib
BASE_LIB_tune-powerpc-nf=3D"lib"
# RDEPENDS=3D
# PACKAGES=3Dkernel kernel-base kernel-vmlinux kernel-image kernel-dev kern=
el-misc kernel-devicetree
PACKAGES=3D"kernel kernel-base kernel-vmlinux kernel-image kernel-dev kerne=
l-misc kernel-devicetree"
# EXCLUDE_FROM_WORLD_pn-clutter-box2d=3D1
EXCLUDE_FROM_WORLD_pn-clutter-box2d=3D"1"
# TUNE_PKGARCH_tune-ppc440=3Dppc440
TUNE_PKGARCH_tune-ppc440=3D"ppc440"
# BUILD_CPP=3D${BUILD_PREFIX}cpp ${BUILD_CC_ARCH}
export BUILD_CPP=3D"cpp"
# HOMEPAGE=3Dunknown
HOMEPAGE=3D"unknown"
# SANITY_VERSION=3D1
SANITY_VERSION=3D"1"
# DEPLOY_DIR_TOOLS=3D${DEPLOY_DIR}/tools
DEPLOY_DIR_TOOLS=3D"/tool/yocto/poky/build/tmp/deploy/tools"
# LIC_FILES_CHKSUM=3Dfile://COPYING;md5=3Dd7810fab7487fb0aad327b76f1be7cd7
LIC_FILES_CHKSUM=3D"file://COPYING;md5=3Dd7810fab7487fb0aad327b76f1be7cd7"
# LINKER_HASH_STYLE_mips=3Dsysv
LINKER_HASH_STYLE_mips=3D"sysv"
# ASNEEDED_pn-rpm=3D
# PKGWRITEDIRRPM=3D${WORKDIR}/deploy-rpms
PKGWRITEDIRRPM=3D"/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-=
xilinx-3.3.0-r0/deploy-rpms"
# STAGING_DATADIR_NATIVE=3D${STAGING_DIR_NATIVE}${datadir_native}
STAGING_DATADIR_NATIVE=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/=
usr/share"
# CPU_FEATURES_arm=3Dvfp
CPU_FEATURES_arm=3D"vfp"
# RESUMECOMMAND_wget=3D/usr/bin/env wget -c -t 2 -T 30 -nv --passive-ftp --=
no-check-certificate -P ${DL_DIR} '${URI}'
RESUMECOMMAND_wget=3D"/usr/bin/env wget -c -t 2 -T 30 -nv --passive-ftp --n=
o-check-certificate -P /tool/yocto/poky/build/downloads '${URI}'"
# TRANSLATED_TARGET_ARCH=3D${@d.getVar('TARGET_ARCH', True).replace("_", "-=
")}
TRANSLATED_TARGET_ARCH=3D"powerpc"
# GPE_MIRROR=3Dhttp://gpe.linuxtogo.org/download/source
GPE_MIRROR=3D"http://gpe.linuxtogo.org/download/source"
# SRCREV_pn-linux-xilinx=3DNone
# prefix_nativesdk=3D/usr
prefix_nativesdk=3D"/usr"
# SSTATE_SCAN_CMD=3Dfind ${SSTATE_BUILDDIR} \( -name "${@"\" -o -name \"".j=
oin(d.getVar("SSTATE_SCAN_FILES", True).split())}" \) -type f
SSTATE_SCAN_CMD=3D"find ${SSTATE_BUILDDIR} \( -name \"*.la\" -o -name \"*-c=
onfig\" -o -name \"*_config\" \) -type f"
# HANDHELDS_CVS=3Dcvs://anoncvs:anoncvs@anoncvs.handhelds.org/cvs
HANDHELDS_CVS=3D"cvs://anoncvs:anoncvs@anoncvs.handhelds.org/cvs"
# STAGING_BASE_LIBDIR_NATIVE=3D${STAGING_DIR_NATIVE}${base_libdir_native}
STAGING_BASE_LIBDIR_NATIVE=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-li=
nux/lib"
# HOST_CC_KERNEL_ARCH=3D${TARGET_CC_KERNEL_ARCH}
# SSTATE_MANFILEPREFIX=3D${SSTATE_MANFILEBASE}${PN}
SSTATE_MANFILEPREFIX=3D"/tool/yocto/poky/build/tmp/sstate-control/manifest-=
virtex5-linux-xilinx"
# BOOTSTRAP_EXTRA_RRECOMMENDS=3D
# PREFERRED_VERSION_binutils-cross-canadian-powerpc=3D${BINUVERSION}
PREFERRED_VERSION_binutils-cross-canadian-powerpc=3D"2.22"
# PREFERRED_VERSION_gzip-native=3D1.4
PREFERRED_VERSION_gzip-native=3D"1.4"
# BB_BASEHASH_task-do_sizecheck=3Df6062040b95ca2a9c00e9fb8a7348a26
BB_BASEHASH_task-do_sizecheck=3D"f6062040b95ca2a9c00e9fb8a7348a26"
# TOPDIR=3D/tool/yocto/poky/build
TOPDIR=3D"/tool/yocto/poky/build"
# valid_archs=3Dalpha cris ia64                i386 x86                m68k=
nommu m68k ppc powerpc powerpc64 ppc64  	       sparc sparc64              =
  arm  arm26                m32r mips 	       sh sh64 um h8300   	       pa=
risc s390  v850 	       avr32 blackfin               microblaze
valid_archs=3D"alpha cris ia64                i386 x86                m68kn=
ommu m68k ppc powerpc powerpc64 ppc64  	       sparc sparc64               =
 arm  arm26                m32r mips 	       sh sh64 um h8300   	       par=
isc s390  v850 	       avr32 blackfin               microblaze"
# STAGING_BINDIR=3D${STAGING_DIR_HOST}${bindir}
STAGING_BINDIR=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5/usr/bin"
# ALLOWED_FLAGS=3D-O -mcpu -march -pipe
ALLOWED_FLAGS=3D"-O -mcpu -march -pipe"
# PREFERRED_PROVIDER_dbus-glib-native=3Ddbus-glib-native
PREFERRED_PROVIDER_dbus-glib-native=3D"dbus-glib-native"
# module_autoload_sa1100-rtc=3Dsa1100-rtc
module_autoload_sa1100-rtc=3D"sa1100-rtc"
# SUMMARY_${PN}-dev=3DNone
# DEPLOYDIR=3D${WORKDIR}/deploy-${PN}
DEPLOYDIR=3D"/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilin=
x-3.3.0-r0/deploy-linux-xilinx"
# TUNEABI_OVERRIDE=3DNone
# FILE_DIRNAME=3D${@os.path.dirname(d.getVar('FILE'))}
FILE_DIRNAME=3D"/tool/yocto/meta-xilinx/recipes-kernel/linux"
# SOURCEFORGE_MIRROR=3Dhttp://downloads.sourceforge.net
SOURCEFORGE_MIRROR=3D"http://downloads.sourceforge.net"
# DBUS_SESSION_BUS_ADDRESS=3Dunix:abstract=3D/tmp/dbus-jDSKXc3TDe,guid=3Dcb=
2f323eeab607aa04a9cd2f00000066
DBUS_SESSION_BUS_ADDRESS=3D"unix:abstract=3D/tmp/dbus-jDSKXc3TDe,guid=3Dcb2=
f323eeab607aa04a9cd2f00000066"
# DEFAULTTUNE=3Dppc440
DEFAULTTUNE=3D"ppc440"
# GLIBC_EXTRA_OECONF=3D ${@bb.utils.contains("TUNE_FEATURES", "ppc440", "-w=
ith-cpu=3D440", "", d)}
GLIBC_EXTRA_OECONF=3D"-with-cpu=3D440"
# STAGING_EXECPREFIXDIR=3D${STAGING_DIR_HOST}${exec_prefix}
STAGING_EXECPREFIXDIR=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5/usr"
# PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}libc-initial=3DNone
# BUILD_CFLAGS=3D${BUILD_CPPFLAGS} ${BUILD_OPTIMIZATION}
export BUILD_CFLAGS=3D"-isystem/tool/yocto/poky/build/tmp/sysroots/x86_64-l=
inux/usr/include -O2 -pipe"
# PREFERRED_PROVIDER_virtual/powerpc-poky-linux-libc-for-gcc=3D${TCLIBC}
PREFERRED_PROVIDER_virtual/powerpc-poky-linux-libc-for-gcc=3D"eglibc"
# PSEUDO_LOCALSTATEDIR=3D${WORKDIR}/pseudo/
PSEUDO_LOCALSTATEDIR=3D"/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/=
linux-xilinx-3.3.0-r0/pseudo/"
# EGLIBCVERSION=3D2.15
EGLIBCVERSION=3D"2.15"
# OLDEST_KERNEL=3D2.6.16
OLDEST_KERNEL=3D"2.6.16"
# PREFERRED_VERSION_python-native=3D2.7.3
PREFERRED_VERSION_python-native=3D"2.7.3"
# SECTION_${PN}-doc=3DNone
# XAUTHORITY=3D/home/elvis/.Xauthority
XAUTHORITY=3D"/home/elvis/.Xauthority"
# AUTHOR=3DNone
# BUILDSDK_LDFLAGS=3D-L${STAGING_LIBDIR} -Wl,-rpath-link,${STAGING_LIBDIR} =
-Wl,-rpath,${libdir} -Wl,-O1 -L${STAGING_DIR_HOST}${base_libdir} -Wl,-rpath=
-link,${STAGING_DIR_HOST}${base_libdir} -Wl,-rpath,${base_libdir} -Wl,-O1
BUILDSDK_LDFLAGS=3D"-L/tool/yocto/poky/build/tmp/sysroots/virtex5/usr/lib -=
Wl,-rpath-link,/tool/yocto/poky/build/tmp/sysroots/virtex5/usr/lib -Wl,-rpa=
th,/usr/lib -Wl,-O1 -L/tool/yocto/poky/build/tmp/sysroots/virtex5/lib -Wl,-=
rpath-link,/tool/yocto/poky/build/tmp/sysroots/virtex5/lib -Wl,-rpath,/lib =
-Wl,-O1"
# FETCHCMD_wget=3D/usr/bin/env wget -t 2 -T 30 -nv --no-check-certificate
FETCHCMD_wget=3D"/usr/bin/env wget -t 2 -T 30 -nv --no-check-certificate"
# GPG_AGENT_INFO=3D/tmp/keyring-MhCyXy/gpg:0:1
GPG_AGENT_INFO=3D"/tmp/keyring-MhCyXy/gpg:0:1"
# POKY_DEFAULT_EXTRA_RDEPENDS=3Dtask-core-boot
POKY_DEFAULT_EXTRA_RDEPENDS=3D"task-core-boot"
# CLASSOVERRIDE=3Dclass-target
CLASSOVERRIDE=3D"class-target"
# SOLIBSDEV=3D.so
SOLIBSDEV=3D".so"
# FILES_${PN}-dev=3DNone
# SEPPUKU_PRODUCT=3DNone
# SHELL=3D/bin/bash
export SHELL=3D"/bin/bash"
# USER_CLASSES=3Dbuildstats image-mklibs image-prelink
USER_CLASSES=3D"buildstats image-mklibs image-prelink"
# MKTEMPDIRCMD=3Dmktemp -d -q ${TMPBASE}
MKTEMPDIRCMD=3D"mktemp -d -q ${TMPBASE}"
# BB_HASHCHECK_FUNCTION=3Dsstate_checkhashes
BB_HASHCHECK_FUNCTION=3D"sstate_checkhashes"
# SEPPUKU_LOGIN=3DNone
# EXCLUDE_FROM_WORLD_pn-eds-tools=3D1
EXCLUDE_FROM_WORLD_pn-eds-tools=3D"1"
# BB_BASEHASH_task-do_package_write_rpm=3Dae82ad7cff637a08e19a3617a11982f1
BB_BASEHASH_task-do_package_write_rpm=3D"ae82ad7cff637a08e19a3617a11982f1"
# SOLIBS=3D.so.*
SOLIBS=3D".so.*"
# PROVIDES=3D${P} ${PF} ${PN}  virtual/kernel
PROVIDES=3D"linux-xilinx-3.3.0 linux-xilinx-3.3.0-r0 linux-xilinx  virtual/=
kernel"
# PYTHON_BASEVERSION=3D2.7
PYTHON_BASEVERSION=3D"2.7"
# PACKAGE_PREPROCESS_FUNCS=3D kernel_package_preprocess
PACKAGE_PREPROCESS_FUNCS=3D"kernel_package_preprocess"
# do_package_write_tar=3DNone
# docdir=3D${datadir}/doc
export docdir=3D"/usr/share/doc"
# DISTRO_FEATURES=3Dalsa argp bluetooth ext2 irda largefile pcmcia usbgadge=
t usbhost wifi xattr nfs zeroconf pci 3g x11 ${DISTRO_FEATURES_LIBC} largef=
ile opengl${@oe.utils.distro_features_backfill(d)}
DISTRO_FEATURES=3D"alsa argp bluetooth ext2 irda largefile pcmcia usbgadget=
 usbhost wifi xattr nfs zeroconf pci 3g x11 ipv4 ipv6 libc-backtrace libc-b=
ig-macros libc-bsd libc-cxx-tests libc-catgets libc-charsets libc-crypt 			=
		libc-crypt-ufc libc-db-aliases libc-envz libc-fcvt libc-fmtmsg libc-fstab=
 libc-ftraverse 					libc-getlogin libc-idn libc-inet-anl libc-libm libc-li=
bm-big libc-locales libc-locale-code 					libc-memusage libc-nis libc-nsswi=
tch libc-rcmd libc-rtld-debug libc-spawn libc-streams libc-sunrpc 					libc=
-utmp libc-utmpx libc-wordexp libc-posix-clang-wchar libc-posix-regexp libc=
-posix-regexp-glibc 					libc-posix-wchar-io largefile opengl pulseaudio"
# BB_BASEHASH_task-do_uboot_mkimage=3Daebf065abf71177df3e3627ec8e09d31
BB_BASEHASH_task-do_uboot_mkimage=3D"aebf065abf71177df3e3627ec8e09d31"
# RESUMECOMMAND=3DERROR, this must be a BitBake bug
RESUMECOMMAND=3D"ERROR, this must be a BitBake bug"
# TARGET_CPU=3D440
TARGET_CPU=3D"440"
# infodir=3D${datadir}/info
export infodir=3D"/usr/share/info"
# BUILDCFG_HEADER=3DBuild Configuration:
BUILDCFG_HEADER=3D"Build Configuration:"
# DISTROOVERRIDES=3D${@d.getVar('DISTRO', True) or ''}
DISTROOVERRIDES=3D"poky"
# COMMERCIAL_QT=3D
# base_prefix=3D
# KERNEL_RELEASE=3D${KERNEL_VERSION}
KERNEL_RELEASE=3D"3.3.0-14.2-build1"
# CC=3D${CCACHE}${HOST_PREFIX}gcc ${HOST_CC_ARCH}${TOOLCHAIN_OPTIONS}
export CC=3D"powerpc-poky-linux-gcc  -m32  -msoft-float -mcpu=3D440 --sysro=
ot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5"
# THISDIR=3D${@os.path.dirname(d.getVar('FILE', True))}
THISDIR=3D"/tool/yocto/meta-xilinx/recipes-kernel/linux"
# HGDIR=3D${CO_DIR}/hg
HGDIR=3D"/tool/yocto/poky/build/downloads/hg"
# KERNEL_DEVICETREE_microblazeel=3D${@device_tree(bb.data.getVar('TARGET_CP=
U', d, 1), d)}
KERNEL_DEVICETREE_microblazeel=3D"arch/440/boot/dts/system.dts"
# PREFERRED_VERSION_gcc-cross=3D${GCCVERSION}
PREFERRED_VERSION_gcc-cross=3D"4.7%"
# BUILD_OS=3D${@os.uname()[0].lower()}
BUILD_OS=3D"linux"
# IMAGE_FSTYPES=3Dtar.gz
IMAGE_FSTYPES=3D"tar.gz"
# PREFERRED_PROVIDER_virtual/powerpc-poky-linux-binutils=3Dbinutils-cross
PREFERRED_PROVIDER_virtual/powerpc-poky-linux-binutils=3D"binutils-cross"
# FAKEROOTENV=3DPSEUDO_PREFIX=3D${STAGING_DIR_NATIVE}${prefix_native} PSEUD=
O_LOCALSTATEDIR=3D${PSEUDO_LOCALSTATEDIR} PSEUDO_PASSWD=3D${PSEUDO_PASSWD} =
PSEUDO_NOSYMLINKEXP=3D1 PSEUDO_DISABLED=3D0
FAKEROOTENV=3D"PSEUDO_PREFIX=3D/tool/yocto/poky/build/tmp/sysroots/x86_64-l=
inux/usr PSEUDO_LOCALSTATEDIR=3D/tool/yocto/poky/build/tmp/work/virtex5-pok=
y-linux/linux-xilinx-3.3.0-r0/pseudo/ PSEUDO_PASSWD=3D/tool/yocto/poky/buil=
d/tmp/sysroots/virtex5 PSEUDO_NOSYMLINKEXP=3D1 PSEUDO_DISABLED=3D0"
# STAGING_LOADER_DIR=3D${STAGING_DIR_HOST}/loader
STAGING_LOADER_DIR=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5/loader"
# SSTATE_PKG=3D${SSTATE_DIR}/${SSTATE_PKGNAME}
SSTATE_PKG=3D"/tool/yocto/poky/build/sstate-cache/sstate-linux-xilinx-virte=
x5-poky-linux-3.3.0-r0-virtex5-2-${BB_TASKHASH}"
# DISTRO_EXTRA_RDEPENDS=3D  ${POKY_DEFAULT_EXTRA_RDEPENDS}
DISTRO_EXTRA_RDEPENDS=3D"task-core-boot"
# ASNEEDED_pn-dialer=3D
# BBFILE_PATTERN_xilinx=3D^/tool/yocto/meta-xilinx/
BBFILE_PATTERN_xilinx=3D"^/tool/yocto/meta-xilinx/"
# ASNEEDED_pn-console-tools=3D
# ASNEEDED_pn-pulseaudio=3D
# ASNEEDED_pn-distcc=3D
# HOST_OS=3D${TARGET_OS}
HOST_OS=3D"linux"
# D=3D${WORKDIR}/image
D=3D"/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-=
r0/image"
# TERM=3Dxterm
export TERM=3D"xterm"
# LAYER_CONF_VERSION=3D4
LAYER_CONF_VERSION=3D"4"
# MULTIMACH_HOST_SYS=3D${PACKAGE_ARCH}${HOST_VENDOR}-${HOST_OS}
MULTIMACH_HOST_SYS=3D"virtex5-poky-linux"
# TARGET_FPU=3D${@bb.utils.contains("TUNE_FEATURES", "fpu-soft", "soft", ""=
, d)}
TARGET_FPU=3D"soft"
# STAGING_DIR_NATIVE=3D${STAGING_DIR}/${BUILD_SYS}
STAGING_DIR_NATIVE=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux"
# GNU_MIRROR=3Dftp://ftp.gnu.org/gnu
GNU_MIRROR=3D"ftp://ftp.gnu.org/gnu"
# DEPLOY_DIR=3D${TMPDIR}/deploy
DEPLOY_DIR=3D"/tool/yocto/poky/build/tmp/deploy"
# DESCRIPTION_${PN}-staticdev=3DNone
# ROOTFS_POSTINSTALL_COMMAND=3D license_create_manifest;=20
ROOTFS_POSTINSTALL_COMMAND=3D"license_create_manifest;"
# MACHINE_EXTRA_RDEPENDS=3D
# MULTI_PROVIDER_WHITELIST=3Dvirtual/libintl virtual/libintl-native virtual=
/libintl-nativesdk virtual/xserver virtual/update-alternatives-native virtu=
al/update-alternatives
MULTI_PROVIDER_WHITELIST=3D"virtual/libintl virtual/libintl-native virtual/=
libintl-nativesdk virtual/xserver virtual/update-alternatives-native virtua=
l/update-alternatives"
# KERNEL_OUTPUT=3Darch/${ARCH}/boot/${KERNEL_IMAGETYPE}
KERNEL_OUTPUT=3D"arch/powerpc/boot/uImage"
# SECTION_${PN}-staticdev=3DNone
# ASNEEDED_pn-puzzles=3D
# SIGGEN_EXCLUDERECIPES_ABISAFE=3D  sysvinit-inittab shadow-securetty opkg-=
config-base netbase formfactor xserver-xf86-config pointercal base-files ke=
ymaps   pointercal-xinput systemd-serialgetty mplayer-common task-x11-serve=
r fbset-modes=20
SIGGEN_EXCLUDERECIPES_ABISAFE=3D"sysvinit-inittab shadow-securetty opkg-con=
fig-base netbase formfactor xserver-xf86-config pointercal base-files keyma=
ps   pointercal-xinput systemd-serialgetty mplayer-common task-x11-server f=
bset-modes"
# STAMP=3D${TMPDIR}/stamps/${MULTIMACH_TARGET_SYS}/${PF}
STAMP=3D"/tool/yocto/poky/build/tmp/stamps/virtex5-poky-linux/linux-xilinx-=
3.3.0-r0"
# BBINCLUDELOGS=3Dyes
BBINCLUDELOGS=3D"yes"
# PREFERRED_PROVIDER_virtual/libintl=3Deglibc
PREFERRED_PROVIDER_virtual/libintl=3D"eglibc"
# QA_LOGFILE=3D${TMPDIR}/qa.log
QA_LOGFILE=3D"/tool/yocto/poky/build/tmp/qa.log"
# BUILDCFG_NEEDEDVARS=3DTARGET_ARCH TARGET_OS
BUILDCFG_NEEDEDVARS=3D"TARGET_ARCH TARGET_OS"
# GCCVERSION=3D4.7%
GCCVERSION=3D"4.7%"
# BASELIB_powerpc64=3Dlib64
BASELIB_powerpc64=3D"lib64"
# ERROR_QA=3Ddev-so debug-deps dev-deps debug-files arch la2 pkgconfig la p=
erms useless-rpaths rpaths staticdev ldflags
ERROR_QA=3D"dev-so debug-deps dev-deps debug-files arch la2 pkgconfig la pe=
rms useless-rpaths rpaths staticdev ldflags"
# PREFERRED_PROVIDER_virtual/libgl=3Dmesa-dri
PREFERRED_PROVIDER_virtual/libgl=3D"mesa-dri"
# FILES_${PN}-staticdev=3DNone
# CPPFLAGS=3D${TARGET_CPPFLAGS}
# QEMUIMAGETESTS=3D/tool/yocto/poky/scripts/qemuimage-tests
QEMUIMAGETESTS=3D"/tool/yocto/poky/scripts/qemuimage-tests"
# VIRTUAL-RUNTIME_update-alternatives=3Dupdate-alternatives-cworth
VIRTUAL-RUNTIME_update-alternatives=3D"update-alternatives-cworth"
# SSTATE_MANMACH=3Dvirtex5
SSTATE_MANMACH=3D"virtex5"
# PKGDATA_DIR=3D${TMPDIR}/pkgdata/${MULTIMACH_TARGET_SYS}
PKGDATA_DIR=3D"/tool/yocto/poky/build/tmp/pkgdata/virtex5-poky-linux"
# sysconfdir_native=3D/etc
sysconfdir_native=3D"/etc"
# XLIBS_MIRROR=3Dhttp://xlibs.freedesktop.org/release
XLIBS_MIRROR=3D"http://xlibs.freedesktop.org/release"
# SDK_ARCH=3D${BUILD_ARCH}
SDK_ARCH=3D"x86_64"
# PREFERRED_PROVIDER_virtual/update-alternatives-native=3Dopkg-native
PREFERRED_PROVIDER_virtual/update-alternatives-native=3D"opkg-native"
# COREBASE=3D/tool/yocto/poky
COREBASE=3D"/tool/yocto/poky"
# KERNEL_DEVICETREE=3D${@device_tree(bb.data.getVar('TARGET_ARCH', d, 1), d=
)}
KERNEL_DEVICETREE=3D"arch/powerpc/boot/dts/virtex440-ml507.dts"
# PREFERRED_PROVIDER_virtual/powerpc-poky-linux-gcc-intermediate=3Dgcc-cros=
s-intermediate
PREFERRED_PROVIDER_virtual/powerpc-poky-linux-gcc-intermediate=3D"gcc-cross=
-intermediate"
# DEPCHAIN_POST=3D-dev -dbg
DEPCHAIN_POST=3D"-dev -dbg"
# PREFERRED_PROVIDER_virtual/powerpc-poky-linux-gcc=3Dgcc-cross
PREFERRED_PROVIDER_virtual/powerpc-poky-linux-gcc=3D"gcc-cross"
# KERNEL_VERSION=3D${@get_kernelversion('${B}')}
KERNEL_VERSION=3D"3.3.0-14.2-build1"
# SSTATE_DIR=3D${TOPDIR}/sstate-cache
SSTATE_DIR=3D"/tool/yocto/poky/build/sstate-cache"
# MACHINE_FEATURES=3Dkernel26 apm ext2 vfat ethernet screen
MACHINE_FEATURES=3D"kernel26 apm ext2 vfat ethernet screen"
# FILES_linux-xilinx-locale=3D${datadir}/locale
FILES_linux-xilinx-locale=3D"/usr/share/locale"
# TCMODE=3Ddefault
TCMODE=3D"default"
# COMMON_LICENSE_DIR=3D${COREBASE}/meta/files/common-licenses
COMMON_LICENSE_DIR=3D"/tool/yocto/poky/meta/files/common-licenses"
# RANLIB=3D${HOST_PREFIX}ranlib
export RANLIB=3D"powerpc-poky-linux-ranlib"
# LOCALE_SECTION=3D
# RPMBUILD=3Drpmbuild
RPMBUILD=3D"rpmbuild"
# LIBC_LOCALE_DEPENDENCIES=3D	eglibc-localedata-i18n 	eglibc-gconv-ibm850 	=
eglibc-gconv-cp1252 	eglibc-gconv-iso8859-1 	eglibc-gconv-iso8859-15
LIBC_LOCALE_DEPENDENCIES=3D"eglibc-localedata-i18n 	eglibc-gconv-ibm850 	eg=
libc-gconv-cp1252 	eglibc-gconv-iso8859-1 	eglibc-gconv-iso8859-15"
# LICENSE_DIRECTORY=3D${DEPLOY_DIR}/licenses
LICENSE_DIRECTORY=3D"/tool/yocto/poky/build/tmp/deploy/licenses"
# RDEPENDS_kernel-base=3Dkernel-image
RDEPENDS_kernel-base=3D"kernel-image"
# STAGING_DIR_HOST=3D${STAGING_DIR}/${MACHINE}
STAGING_DIR_HOST=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5"
# BB_BASEHASH_task-do_patch=3D307bf19075622210fb506374604e1be4
BB_BASEHASH_task-do_patch=3D"307bf19075622210fb506374604e1be4"
# base_sbindir=3D${base_prefix}/sbin
export base_sbindir=3D"/sbin"
# CXX=3D${CCACHE}${HOST_PREFIX}g++ ${HOST_CC_ARCH}${TOOLCHAIN_OPTIONS}
export CXX=3D"powerpc-poky-linux-g++  -m32  -msoft-float -mcpu=3D440 --sysr=
oot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5"
# RPM=3Drpm
RPM=3D"rpm"
# ASNEEDED_pn-icu=3D
# PREFERRED_PROVIDER_matchbox-panel=3Dmatchbox-panel-2
PREFERRED_PROVIDER_matchbox-panel=3D"matchbox-panel-2"
# systemd_unitdir=3D${base_libdir}/systemd
export systemd_unitdir=3D"/lib/systemd"
# OS=3D${TARGET_OS}
export OS=3D"linux"
# MACHINE_ARCH=3D${@[d.getVar('TUNE_PKGARCH', True), d.getVar('MACHINE', Tr=
ue)][bool(d.getVar('MACHINE', True))].replace('-', '_')}
MACHINE_ARCH=3D"virtex5"
# IMAGE_OVERHEAD_FACTOR=3D1.3
IMAGE_OVERHEAD_FACTOR=3D"1.3"
# BINUVERSION=3D2.22
BINUVERSION=3D"2.22"
# KBRANCH=3Dmaster
KBRANCH=3D"master"
# SDK_VENDOR=3D-pokysdk
SDK_VENDOR=3D"-pokysdk"
# SDKPATHNATIVE=3D${SDKPATH}/sysroots/${SDK_SYS}
SDKPATHNATIVE=3D"/opt/poky/1.2+snapshot/sysroots/x86_64-pokysdk-linux"
# PREFERRED_VERSION_eglibc-initial-nativesdk=3D${EGLIBCVERSION}
PREFERRED_VERSION_eglibc-initial-nativesdk=3D"2.15"
# PREFERRED_PROVIDER_virtual/libiconv=3Deglibc
PREFERRED_PROVIDER_virtual/libiconv=3D"eglibc"
# BB_BASEHASH_task-do_install=3Db6e539e9ffcf5d209e6994dd9eea199b
BB_BASEHASH_task-do_install=3D"b6e539e9ffcf5d209e6994dd9eea199b"
# PREFERRED_VERSION_binutils-crosssdk=3D${BINUVERSION}
PREFERRED_VERSION_binutils-crosssdk=3D"2.22"
# UBOOT_LOADADDRESS=3D0x00000000
UBOOT_LOADADDRESS=3D"0x00000000"
# SDK_VERSION=3D1.2+snapshot
SDK_VERSION=3D"1.2+snapshot"
# BUILD_VENDOR=3D
# KERNELORG_MIRROR=3Dhttp://kernel.org/pub
KERNELORG_MIRROR=3D"http://kernel.org/pub"
# WARN_QA=3Dunsafe-references-in-binaries unsafe-references-in-scripts
WARN_QA=3D"unsafe-references-in-binaries unsafe-references-in-scripts"
# PREFERRED_VERSION_gcc-runtime-nativesdk=3D${SDKGCCVERSION}
PREFERRED_VERSION_gcc-runtime-nativesdk=3D"4.7%"
# CONF_VERSION=3D1
CONF_VERSION=3D"1"
# ALLOW_EMPTY_kernel=3D1
ALLOW_EMPTY_kernel=3D"1"
# ASNEEDED=3D-Wl,--as-needed
ASNEEDED=3D"-Wl,--as-needed"
# PKG_CONFIG_PATH=3D${PKG_CONFIG_DIR}:${STAGING_DATADIR}/pkgconfig
export PKG_CONFIG_PATH=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5//usr/=
lib/pkgconfig:/tool/yocto/poky/build/tmp/sysroots/virtex5/usr/share/pkgconf=
ig"
# PREFERRED_PROVIDER_gdb=3Dgdb
PREFERRED_PROVIDER_gdb=3D"gdb"
# BUILD_AS_ARCH=3D
# FILES=3D
# TCLIBC=3Deglibc
TCLIBC=3D"eglibc"
# COLORTERM=3Dgnome-terminal
COLORTERM=3D"gnome-terminal"
# HOST_AS_ARCH=3D${TARGET_AS_ARCH}
# RRECOMMENDS_linux-xilinx-dbg=3D${PN} (=3D ${EXTENDPKGV})
RRECOMMENDS_linux-xilinx-dbg=3D"linux-xilinx (=3D 3.3.0-r0)"
# RPMCONF_TARGET_BASE=3D${DEPLOY_DIR_RPM}/solvedb
RPMCONF_TARGET_BASE=3D"/tool/yocto/poky/build/tmp/deploy/rpm/solvedb"
# BUILD_NM=3D${BUILD_PREFIX}nm
export BUILD_NM=3D"nm"
# TARGET_VENDOR=3D-poky
TARGET_VENDOR=3D"-poky"
# SANITY_TESTED_DISTROS=3D Yocto (Built by Poky 7.0) 1.2 \n Ubuntu 10.04.4 =
LTS \n Ubuntu 11.10 \n Ubuntu 12.04 LTS \n Fedora release 15 (Lovelock) \n =
Fedora release 16 (Verne) \n Fedora release 17 (Beefy Miracle) \n CentOS re=
lease 5.6 (Final) \n CentOS release 5.7 (Final) \n CentOS release 6.2 (Fina=
l) \n Debian GNU/Linux 6.0.4 (squeeze) \n openSUSE 11.4 \n openSUSE 12.1 \n=
=20
SANITY_TESTED_DISTROS=3D"Yocto (Built by Poky 7.0) 1.2 \n Ubuntu 10.04.4 LT=
S \n Ubuntu 11.10 \n Ubuntu 12.04 LTS \n Fedora release 15 (Lovelock) \n Fe=
dora release 16 (Verne) \n Fedora release 17 (Beefy Miracle) \n CentOS rele=
ase 5.6 (Final) \n CentOS release 5.7 (Final) \n CentOS release 6.2 (Final)=
 \n Debian GNU/Linux 6.0.4 (squeeze) \n openSUSE 11.4 \n openSUSE 12.1 \n"
# STAGING_BASELIBDIR=3D${STAGING_DIR_HOST}${base_libdir}
STAGING_BASELIBDIR=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5/lib"
# SUMMARY_linux-xilinx-staticdev=3D${SUMMARY} - Development files (Static L=
ibraries)
SUMMARY_linux-xilinx-staticdev=3D"linux-xilinx version 3.3.0-r0 - Developme=
nt files (Static Libraries)"
# TUNE_FEATURES=3D${TUNE_FEATURES_tune-${DEFAULTTUNE}}
TUNE_FEATURES=3D"m32 fpu-soft ppc440"
# POKYQEMUDEPS=3D${@base_contains("INCOMPATIBLE_LICENSE", "GPLv3", "", "qem=
u-config",d)}
POKYQEMUDEPS=3D"qemu-config"
# POKY_DEFAULT_EXTRA_RRECOMMENDS=3Dkernel-module-af-packet
POKY_DEFAULT_EXTRA_RRECOMMENDS=3D"kernel-module-af-packet"
# PREFERRED_VERSION_gcc-crosssdk=3D${SDKGCCVERSION}
PREFERRED_VERSION_gcc-crosssdk=3D"4.7%"
# SOLIBSDEV_darwin=3D.dylib
SOLIBSDEV_darwin=3D".dylib"
# TUNE_PKGARCH=3D${TUNE_PKGARCH_tune-${DEFAULTTUNE}}
TUNE_PKGARCH=3D"ppc440"
# FETCHCOMMAND_wget=3D/usr/bin/env wget  -t 2 -T 30 -nv --passive-ftp --no-=
check-certificate -P ${DL_DIR} '${URI}'
FETCHCOMMAND_wget=3D"/usr/bin/env wget  -t 2 -T 30 -nv --passive-ftp --no-c=
heck-certificate -P /tool/yocto/poky/build/downloads '${URI}'"
# PRINC=3D0
PRINC=3D"0"
# PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}compilerlibs=3DNone
# TUNE_CCARGS=3D ${@bb.utils.contains("TUNE_FEATURES", "m32", "-m32", "", d=
)} ${@bb.utils.contains("TUNE_FEATURES", "fpu-hard", "-mhard-float", "", d)=
} ${@bb.utils.contains("TUNE_FEATURES", "fpu-soft", "-msoft-float", "", d)}=
 ${@bb.utils.contains("TUNE_FEATURES", "ppc440", "-mcpu=3D440", "", d)}
TUNE_CCARGS=3D"-m32  -msoft-float -mcpu=3D440"
# module_conf_sco=3Dalias bt-proto-2 sco
module_conf_sco=3D"alias bt-proto-2 sco"
# IMAGE_LINK_NAME=3D${IMAGE_BASENAME}-${MACHINE}
IMAGE_LINK_NAME=3D"linux-xilinx-virtex5"
# FETCHCMD_bzr=3D/usr/bin/env bzr
FETCHCMD_bzr=3D"/usr/bin/env bzr"
# FILES_kernel-devicetree=3D/boot/devicetree*
FILES_kernel-devicetree=3D"/boot/devicetree*"
# PREFERRED_PROVIDER_virtual/xserver-xf86=3Dxserver-xorg
PREFERRED_PROVIDER_virtual/xserver-xf86=3D"xserver-xorg"
# PKG_kernel-image=3Dkernel-image-${@legitimize_package_name('${KERNEL_VERS=
ION}')}
PKG_kernel-image=3D"kernel-image-3.3.0-14.2-build1"
# BB_BASEHASH_task-do_deploy_setscene=3D129c9b0c76d09a14fa11cde93d07fd71
BB_BASEHASH_task-do_deploy_setscene=3D"129c9b0c76d09a14fa11cde93d07fd71"
# QEMU_OPTIONS_armv7a=3D-cpu cortex-a8
QEMU_OPTIONS_armv7a=3D"-cpu cortex-a8"
# SUMMARY_linux-xilinx-dbg=3D${SUMMARY} - Debugging files
SUMMARY_linux-xilinx-dbg=3D"linux-xilinx version 3.3.0-r0 - Debugging files=
"
# MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS=3D
# PREFERRED_VERSION_eglibc=3D${EGLIBCVERSION}
PREFERRED_VERSION_eglibc=3D"2.15"
# PREFERRED_VERSION_gcc-cross-canadian-powerpc=3D${GCCVERSION}
PREFERRED_VERSION_gcc-cross-canadian-powerpc=3D"4.7%"
# BB_BASEHASH_task-do_package=3Dcc2d853fc6ecd45df98e0aa5abb80dbf
BB_BASEHASH_task-do_package=3D"cc2d853fc6ecd45df98e0aa5abb80dbf"
# LOCALE_UTF8_ONLY=3D0
LOCALE_UTF8_ONLY=3D"0"
# PREFERRED_PROVIDER_virtual/powerpc-poky-linux-g++=3Dgcc-cross
PREFERRED_PROVIDER_virtual/powerpc-poky-linux-g++=3D"gcc-cross"
# PREFERRED_PROVIDER_linux-libc-headers-nativesdk=3Dlinux-libc-headers-nati=
vesdk
PREFERRED_PROVIDER_linux-libc-headers-nativesdk=3D"linux-libc-headers-nativ=
esdk"
# BB_BASEHASH_task-do_deploy=3D5937eb449d06c1447568dc43e5fa00c8
BB_BASEHASH_task-do_deploy=3D"5937eb449d06c1447568dc43e5fa00c8"
# GNOME_MIRROR=3Dhttp://ftp.gnome.org/pub/GNOME/sources
GNOME_MIRROR=3D"http://ftp.gnome.org/pub/GNOME/sources"
# PREFERRED_VERSION_libgcc=3D${GCCVERSION}
PREFERRED_VERSION_libgcc=3D"4.7%"
# SSTATE_PKGSPEC=3Dsstate-${PN}-${PACKAGE_ARCH}${TARGET_VENDOR}-${TARGET_OS=
}-${PV}-${PR}-${SSTATE_PKGARCH}-${SSTATE_VERSION}-
SSTATE_PKGSPEC=3D"sstate-linux-xilinx-virtex5-poky-linux-3.3.0-r0-virtex5-2=
-"
# BB_BASEHASH_task-do_compile_kernelmodules=3D46adb5d9981936a7d500594b838e0=
19c
BB_BASEHASH_task-do_compile_kernelmodules=3D"46adb5d9981936a7d500594b838e01=
9c"
# COMPATIBLE_HOST=3DNone
# DEPLOY_DIR_IPK=3D${DEPLOY_DIR}/ipk
DEPLOY_DIR_IPK=3D"/tool/yocto/poky/build/tmp/deploy/ipk"
# SSTATE_MANIFESTS=3D${TMPDIR}/sstate-control
SSTATE_MANIFESTS=3D"/tool/yocto/poky/build/tmp/sstate-control"
# TUNE_PKGARCH_tune-powerpc-nf=3Dpowerpc-nf
TUNE_PKGARCH_tune-powerpc-nf=3D"powerpc-nf"
# STAGING_FIRMWARE_DIR=3D${STAGING_DIR_HOST}/firmware
STAGING_FIRMWARE_DIR=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5/firmwar=
e"
# BBFILES=3D/tool/yocto/poky/meta/recipes-*/*/*.bb /tool/yocto/poky/meta-yo=
cto/recipes-*/*/*.bb /tool/yocto/poky/meta-yocto/recipes-*/*/*.bbappend /to=
ol/yocto/meta-openembedded/meta-oe/recipes-*/*/*.bb /tool/yocto/meta-openem=
bedded/meta-oe/recipes-*/*/*.bbappend /tool/yocto/meta-xilinx/recipes-*/*/*=
.bb /tool/yocto/meta-xilinx/recipes-*/*/*.bbappend
BBFILES=3D"/tool/yocto/poky/meta/recipes-*/*/*.bb /tool/yocto/poky/meta-yoc=
to/recipes-*/*/*.bb /tool/yocto/poky/meta-yocto/recipes-*/*/*.bbappend /too=
l/yocto/meta-openembedded/meta-oe/recipes-*/*/*.bb /tool/yocto/meta-openemb=
edded/meta-oe/recipes-*/*/*.bbappend /tool/yocto/meta-xilinx/recipes-*/*/*.=
bb /tool/yocto/meta-xilinx/recipes-*/*/*.bbappend"
# AS=3D${HOST_PREFIX}as ${HOST_AS_ARCH}
export AS=3D"powerpc-poky-linux-as"
# AR=3D${HOST_PREFIX}ar
export AR=3D"powerpc-poky-linux-ar"
# PACKAGE_EXTRA_ARCHS_tune-powerpc=3Dpowerpc
PACKAGE_EXTRA_ARCHS_tune-powerpc=3D"powerpc"
# PREFERRED_VERSION_linux-yocto=3D3.4%
PREFERRED_VERSION_linux-yocto=3D"3.4%"
# BNFILE=3D${BUILDSTATS_BASE}/.buildname
BNFILE=3D"/tool/yocto/poky/build/tmp/buildstats//.buildname"
# FILES_${PN}-locale=3DNone
# bindir_nativesdk=3D${prefix_nativesdk}/bin
bindir_nativesdk=3D"/usr/bin"
# PACKAGE_DEPENDS=3D rpm-native file-native pax-utils-native ${QADEPENDS}
PACKAGE_DEPENDS=3D"rpm-native file-native pax-utils-native prelink-native"
# BUILD_CPPFLAGS=3D-isystem${STAGING_INCDIR_NATIVE}
export BUILD_CPPFLAGS=3D"-isystem/tool/yocto/poky/build/tmp/sysroots/x86_64=
-linux/usr/include"
# KERNEL_LOCALVERSION=3D
# PERSISTENT_DIR=3D${TMPDIR}/cache
PERSISTENT_DIR=3D"/tool/yocto/poky/build/tmp/cache"
# QEMU_OPTIONS=3D
# do_package_write_deb=3DNone
# ROOT_FLASH_SIZE=3D256
ROOT_FLASH_SIZE=3D"256"
# RDEPENDS_linux-xilinx-staticdev=3D${PN}-dev (=3D ${EXTENDPKGV})
RDEPENDS_linux-xilinx-staticdev=3D"linux-xilinx-dev (=3D 3.3.0-r0)"
# SDK_PACKAGE_ARCHS=3Dall any noarch ${SDK_ARCH}-nativesdk
SDK_PACKAGE_ARCHS=3D"all any noarch x86_64-nativesdk"
# CPP=3D${HOST_PREFIX}gcc -E${TOOLCHAIN_OPTIONS} ${HOST_CC_ARCH}
export CPP=3D"powerpc-poky-linux-gcc -E --sysroot=3D/tool/yocto/poky/build/=
tmp/sysroots/virtex5  -m32  -msoft-float -mcpu=3D440"
# BBFILE_COLLECTIONS=3D normal yocto openembedded-layer xilinx
BBFILE_COLLECTIONS=3D"normal yocto openembedded-layer xilinx"
# mandir=3D${datadir}/man
export mandir=3D"/usr/share/man"
# SECTION_linux-xilinx-doc=3Ddoc
SECTION_linux-xilinx-doc=3D"doc"
# PREFERRED_PROVIDER_opkg-nativesdk=3Dopkg-nativesdk
PREFERRED_PROVIDER_opkg-nativesdk=3D"opkg-nativesdk"
# FAKEROOTDIRS=3D${PSEUDO_LOCALSTATEDIR}
FAKEROOTDIRS=3D"/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xi=
linx-3.3.0-r0/pseudo/"
# FILES_linux-xilinx-bin=3D${bindir}/* ${sbindir}/*
FILES_linux-xilinx-bin=3D"/usr/bin/* /usr/sbin/*"
# USE_PR_SERV=3D${@[1,0][((not d.getVar('PRSERV_HOST', True)) or (not d.get=
Var('PRSERV_PORT', True))) and (not d.getVar('PRSERV_LOCKDOWN', True))]}
USE_PR_SERV=3D"0"
# CCACHE=3D
# BB_BASEHASH_task-do_package_write_rpm_setscene=3Da83a2743f2c19c469c2cb36a=
d96cebf5
BB_BASEHASH_task-do_package_write_rpm_setscene=3D"a83a2743f2c19c469c2cb36ad=
96cebf5"
# sbindir_native=3D${prefix_native}/sbin
sbindir_native=3D"/usr/sbin"
# P=3D${PN}-${PV}
P=3D"linux-xilinx-3.3.0"
# PKG_CONFIG_SYSROOT_DIR=3D${STAGING_DIR_HOST}
export PKG_CONFIG_SYSROOT_DIR=3D"/tool/yocto/poky/build/tmp/sysroots/virtex=
5"
# XILINX_BOARD=3Dml507
XILINX_BOARD=3D"ml507"
# FILESPATH=3D${@base_set_filespath([ "${FILE_DIRNAME}/${PF}", "${FILE_DIRN=
AME}/${P}", "${FILE_DIRNAME}/${PN}", "${FILE_DIRNAME}/${BP}", "${FILE_DIRNA=
ME}/${BPN}", "${FILE_DIRNAME}/files", "${FILE_DIRNAME}" ], d)}
FILESPATH=3D"/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx-3.3.=
0-r0/linux:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx-3.3.0-=
r0/powerpc:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx-3.3.0-=
r0/build-linux:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx-3.=
3.0-r0/pn-linux-xilinx:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-x=
ilinx-3.3.0-r0/virtex5:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-x=
ilinx-3.3.0-r0/poky:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xili=
nx-3.3.0-r0/class-target:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux=
-xilinx-3.3.0-r0/forcevariable:/tool/yocto/meta-xilinx/recipes-kernel/linux=
/linux-xilinx-3.3.0-r0/libc-glibc:/tool/yocto/meta-xilinx/recipes-kernel/li=
nux/linux-xilinx-3.3.0-r0/:/tool/yocto/meta-xilinx/recipes-kernel/linux/lin=
ux-xilinx-3.3.0/linux:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xi=
linx-3.3.0/powerpc:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilin=
x-3.3.0/build-linux:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xili=
nx-3.3.0/pn-linux-xilinx:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux=
-xilinx-3.3.0/virtex5:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xi=
linx-3.3.0/poky:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx-3=
.3.0/class-target:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx=
-3.3.0/forcevariable:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xil=
inx-3.3.0/libc-glibc:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xil=
inx-3.3.0/:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx/linux:=
/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx/powerpc:/tool/yoc=
to/meta-xilinx/recipes-kernel/linux/linux-xilinx/build-linux:/tool/yocto/me=
ta-xilinx/recipes-kernel/linux/linux-xilinx/pn-linux-xilinx:/tool/yocto/met=
a-xilinx/recipes-kernel/linux/linux-xilinx/virtex5:/tool/yocto/meta-xilinx/=
recipes-kernel/linux/linux-xilinx/poky:/tool/yocto/meta-xilinx/recipes-kern=
el/linux/linux-xilinx/class-target:/tool/yocto/meta-xilinx/recipes-kernel/l=
inux/linux-xilinx/forcevariable:/tool/yocto/meta-xilinx/recipes-kernel/linu=
x/linux-xilinx/libc-glibc:/tool/yocto/meta-xilinx/recipes-kernel/linux/linu=
x-xilinx/:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx-3.3.0/l=
inux:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx-3.3.0/powerp=
c:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx-3.3.0/build-lin=
ux:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx-3.3.0/pn-linux=
-xilinx:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx-3.3.0/vir=
tex5:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx-3.3.0/poky:/=
tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx-3.3.0/class-target=
:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx-3.3.0/forcevaria=
ble:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx-3.3.0/libc-gl=
ibc:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx-3.3.0/:/tool/=
yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx/linux:/tool/yocto/meta-=
xilinx/recipes-kernel/linux/linux-xilinx/powerpc:/tool/yocto/meta-xilinx/re=
cipes-kernel/linux/linux-xilinx/build-linux:/tool/yocto/meta-xilinx/recipes=
-kernel/linux/linux-xilinx/pn-linux-xilinx:/tool/yocto/meta-xilinx/recipes-=
kernel/linux/linux-xilinx/virtex5:/tool/yocto/meta-xilinx/recipes-kernel/li=
nux/linux-xilinx/poky:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xi=
linx/class-target:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx=
/forcevariable:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx/li=
bc-glibc:/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx/:/tool/y=
octo/meta-xilinx/recipes-kernel/linux/files/linux:/tool/yocto/meta-xilinx/r=
ecipes-kernel/linux/files/powerpc:/tool/yocto/meta-xilinx/recipes-kernel/li=
nux/files/build-linux:/tool/yocto/meta-xilinx/recipes-kernel/linux/files/pn=
-linux-xilinx:/tool/yocto/meta-xilinx/recipes-kernel/linux/files/virtex5:/t=
ool/yocto/meta-xilinx/recipes-kernel/linux/files/poky:/tool/yocto/meta-xili=
nx/recipes-kernel/linux/files/class-target:/tool/yocto/meta-xilinx/recipes-=
kernel/linux/files/forcevariable:/tool/yocto/meta-xilinx/recipes-kernel/lin=
ux/files/libc-glibc:/tool/yocto/meta-xilinx/recipes-kernel/linux/files/:/to=
ol/yocto/meta-xilinx/recipes-kernel/linux/linux:/tool/yocto/meta-xilinx/rec=
ipes-kernel/linux/powerpc:/tool/yocto/meta-xilinx/recipes-kernel/linux/buil=
d-linux:/tool/yocto/meta-xilinx/recipes-kernel/linux/pn-linux-xilinx:/tool/=
yocto/meta-xilinx/recipes-kernel/linux/virtex5:/tool/yocto/meta-xilinx/reci=
pes-kernel/linux/poky:/tool/yocto/meta-xilinx/recipes-kernel/linux/class-ta=
rget:/tool/yocto/meta-xilinx/recipes-kernel/linux/forcevariable:/tool/yocto=
/meta-xilinx/recipes-kernel/linux/libc-glibc:/tool/yocto/meta-xilinx/recipe=
s-kernel/linux/"
# TUNE_ARCH=3D${@bb.utils.contains("TUNE_FEATURES", "m32", "powerpc", "", d=
)}
TUNE_ARCH=3D"powerpc"
# QADEPENDS=3Dprelink-native
QADEPENDS=3D"prelink-native"
# WHITELIST_GPLv3=3Dless
WHITELIST_GPLv3=3D"less"
# E_SVN=3Dsvn://svn.enlightenment.org/svn/e
E_SVN=3D"svn://svn.enlightenment.org/svn/e"
# BUILD_CXXFLAGS=3D${BUILD_CFLAGS} -fpermissive
export BUILD_CXXFLAGS=3D"-isystem/tool/yocto/poky/build/tmp/sysroots/x86_64=
-linux/usr/include -O2 -pipe -fpermissive"
# OBJCOPY=3D${HOST_PREFIX}objcopy
export OBJCOPY=3D"powerpc-poky-linux-objcopy"
# BB_BASEHASH_task-do_menuconfig=3Ddf9a8ccdf29b0f24998ae21d20c4b1b6
BB_BASEHASH_task-do_menuconfig=3D"df9a8ccdf29b0f24998ae21d20c4b1b6"
# PREFERRED_VERSION_linux-yocto_qemux86-64=3D3.4%
PREFERRED_VERSION_linux-yocto_qemux86-64=3D"3.4%"
# LCONF_VERSION=3D4
LCONF_VERSION=3D"4"
# SRC_URI=3Dgit://git.xilinx.com/linux-xlnx.git;protocol=3Dgit;branch=3D${K=
BRANCH}            file://defconfig
SRC_URI=3D"git://git.xilinx.com/linux-xlnx.git;protocol=3Dgit;branch=3Dmast=
er            file://defconfig"
# SSTATEPOSTINSTFUNCS=3D
# includedir_native=3D${prefix_native}/include
includedir_native=3D"/usr/include"
# SESSION_MANAGER=3Dlocal/eos:@/tmp/.ICE-unix/4305,unix/eos:/tmp/.ICE-unix/=
4305
SESSION_MANAGER=3D"local/eos:@/tmp/.ICE-unix/4305,unix/eos:/tmp/.ICE-unix/4=
305"
# BB_BASEHASH_task-do_savedefconfig=3D966cb95e43b6f4fff66d7854044a55b3
BB_BASEHASH_task-do_savedefconfig=3D"966cb95e43b6f4fff66d7854044a55b3"
# SUMMARY_${PN}-doc=3DNone
# PACKAGE_EXTRA_ARCHS_tune-powerpc-nf=3Dpowerpc-nf
PACKAGE_EXTRA_ARCHS_tune-powerpc-nf=3D"powerpc-nf"
# FETCHCMD_hg=3D/usr/bin/env hg
FETCHCMD_hg=3D"/usr/bin/env hg"
# TUNE_FEATURES_tune-powerpc=3Dm32 fpu-hard
TUNE_FEATURES_tune-powerpc=3D"m32 fpu-hard"
# ASNEEDED_pn-minimo=3D
# FILESDIR=3D${@bb.which(d.getVar('FILESPATH', True), '.')}
FILESDIR=3D"/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx/virte=
x5/."
# XILINX_BSP_PATH=3D/project/xilinx-ml507-workspace
XILINX_BSP_PATH=3D"/project/xilinx-ml507-workspace"
# TUNE_FEATURES_tune-ppc440=3Dm32 fpu-soft ppc440
TUNE_FEATURES_tune-ppc440=3D"m32 fpu-soft ppc440"
# OELAYOUT_ABI=3D8
OELAYOUT_ABI=3D"8"
# BBFILE_PRIORITY_xilinx=3D6
BBFILE_PRIORITY_xilinx=3D"6"
# DISTRO_FEATURES_LIBC_DEFAULT=3Dipv4 ipv6 libc-backtrace libc-big-macros l=
ibc-bsd libc-cxx-tests libc-catgets libc-charsets libc-crypt 					libc-cryp=
t-ufc libc-db-aliases libc-envz libc-fcvt libc-fmtmsg libc-fstab libc-ftrav=
erse 					libc-getlogin libc-idn libc-inet-anl libc-libm libc-libm-big libc=
-locales libc-locale-code 					libc-memusage libc-nis libc-nsswitch libc-rc=
md libc-rtld-debug libc-spawn libc-streams libc-sunrpc 					libc-utmp libc-=
utmpx libc-wordexp libc-posix-clang-wchar libc-posix-regexp libc-posix-rege=
xp-glibc 					libc-posix-wchar-io
DISTRO_FEATURES_LIBC_DEFAULT=3D"ipv4 ipv6 libc-backtrace libc-big-macros li=
bc-bsd libc-cxx-tests libc-catgets libc-charsets libc-crypt 					libc-crypt=
-ufc libc-db-aliases libc-envz libc-fcvt libc-fmtmsg libc-fstab libc-ftrave=
rse 					libc-getlogin libc-idn libc-inet-anl libc-libm libc-libm-big libc-=
locales libc-locale-code 					libc-memusage libc-nis libc-nsswitch libc-rcm=
d libc-rtld-debug libc-spawn libc-streams libc-sunrpc 					libc-utmp libc-u=
tmpx libc-wordexp libc-posix-clang-wchar libc-posix-regexp libc-posix-regex=
p-glibc 					libc-posix-wchar-io"
# base_libdir_native=3D/lib
base_libdir_native=3D"/lib"
# FETCHCOMMAND=3DERROR, this must be a BitBake bug
FETCHCOMMAND=3D"ERROR, this must be a BitBake bug"
# PKGR=3D${PR}${EXTENDPRAUTO}
PKGR=3D"r0"
# XDG_DATA_DIRS=3D/usr/share/ubuntu:/usr/share/gnome:/usr/local/share/:/usr=
/share/
XDG_DATA_DIRS=3D"/usr/share/ubuntu:/usr/share/gnome:/usr/local/share/:/usr/=
share/"
# includedir_nativesdk=3D${prefix_nativesdk}/include
includedir_nativesdk=3D"/usr/include"
# LINKER_HASH_STYLE_mipsel=3Dsysv
LINKER_HASH_STYLE_mipsel=3D"sysv"
# IMAGE_PKGTYPE=3Drpm
IMAGE_PKGTYPE=3D"rpm"
# FILES_${PN}-dbg=3DNone
# servicedir=3D${base_prefix}/srv
export servicedir=3D"/srv"
# INITRAMFS_IMAGE=3D
# bindir_native=3D${prefix_native}/bin
bindir_native=3D"/usr/bin"
# PREFERRED_PROVIDER_virtual/powerpc-poky-linux-compilerlibs=3Dgcc-runtime
PREFERRED_PROVIDER_virtual/powerpc-poky-linux-compilerlibs=3D"gcc-runtime"
# BUILD_PREFIX=3D
# HOME=3D/home/elvis
export HOME=3D"/home/elvis"
# SECTION_linux-xilinx-staticdev=3Ddevel
SECTION_linux-xilinx-staticdev=3D"devel"
# SYSROOT_LOCK=3D${STAGING_DIR}/staging.lock
SYSROOT_LOCK=3D"/tool/yocto/poky/build/tmp/sysroots/staging.lock"
# COMBINED_FEATURES=3D${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEAT=
URES", "alsa", d)} ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURE=
S", "bluetooth", d)} ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATU=
RES", "ext2", d)} ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES=
", "vfat", d)} ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", =
"irda", d)} ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "pc=
mcia", d)} ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "pci=
", d)} ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "usbgadg=
et", d)} ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "usbho=
st", d)} ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "wifi"=
, d)}
COMBINED_FEATURES=3D"ext2"
# PKGDESTWORK=3D${WORKDIR}/pkgdata
PKGDESTWORK=3D"/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xil=
inx-3.3.0-r0/pkgdata"
# BASE_LIB_tune-powerpc=3Dlib
BASE_LIB_tune-powerpc=3D"lib"
# SRCDATE=3D${DATE}
SRCDATE=3D"20120623"
# SEPPUKU_PASS=3DNone
# DEFAULT_PREFERENCE=3D1
DEFAULT_PREFERENCE=3D"1"
# TARGET_CC_ARCH=3D${TUNE_CCARGS}
TARGET_CC_ARCH=3D"-m32  -msoft-float -mcpu=3D440"
# QEMU_OPTIONS_armv6=3D-cpu arm1136
QEMU_OPTIONS_armv6=3D"-cpu arm1136"
# HOST_ARCH=3D${TARGET_ARCH}
HOST_ARCH=3D"powerpc"
# ENABLE_BINARY_LOCALE_GENERATION=3D1
ENABLE_BINARY_LOCALE_GENERATION=3D"1"
# TARGET_OS=3Dlinux${LIBCEXTENSION}${ABIEXTENSION}
TARGET_OS=3D"linux"
# SOURCE_MIRROR_URL=3DNone
# SOLIBS_darwin8=3D.*.dylib
SOLIBS_darwin8=3D".*.dylib"
# SOLIBS_darwin9=3D.*.dylib
SOLIBS_darwin9=3D".*.dylib"
# PREFERRED_VERSION_u-boot=3Du-boot-xilinx
PREFERRED_VERSION_u-boot=3D"u-boot-xilinx"
# CONNECTIVITY_CHECK_URIS=3Dgit://git.yoctoproject.org/yocto-firewall-test;=
protocol=3Dgit;rev=3DHEAD https://eula-downloads.yoctoproject.org/index.php=
 http://bugzilla.yoctoproject.org/report.cgi
CONNECTIVITY_CHECK_URIS=3D"git://git.yoctoproject.org/yocto-firewall-test;p=
rotocol=3Dgit;rev=3DHEAD https://eula-downloads.yoctoproject.org/index.php =
http://bugzilla.yoctoproject.org/report.cgi"
# ABIEXTENSION=3D
# TUNEABI_WHITELIST=3DNone
# FULL_OPTIMIZATION=3D-O2 -pipe ${DEBUG_FLAGS}
FULL_OPTIMIZATION=3D"-O2 -pipe -g -feliminate-unused-debug-types"
# TARGET_AS_ARCH=3D${TUNE_ASARGS}
# PREFERRED_VERSION_python=3D2.7.3
PREFERRED_VERSION_python=3D"2.7.3"
# FILES_${PN}=3DNone
# PREFERRED_VERSION_libgcc-nativesdk=3D${SDKGCCVERSION}
PREFERRED_VERSION_libgcc-nativesdk=3D"4.7%"
# PATCHRESOLVE=3Dnoop
PATCHRESOLVE=3D"noop"
# SSTATE_SCAN_FILES=3D*.la *-config *_config
SSTATE_SCAN_FILES=3D"*.la *-config *_config"
# LGPLv2_WHITELIST_GPLv3=3Dlibassuan gnutls libtasn1 libidn libgcc gcc-runt=
ime
LGPLv2_WHITELIST_GPLv3=3D"libassuan gnutls libtasn1 libidn libgcc gcc-runti=
me"
# PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}gcc-initial=3DNone
# DISTRO_FEATURES_LIBC_virtclass-nativesdk=3D${DISTRO_FEATURES_LIBC_DEFAULT=
}
DISTRO_FEATURES_LIBC_virtclass-nativesdk=3D"ipv4 ipv6 libc-backtrace libc-b=
ig-macros libc-bsd libc-cxx-tests libc-catgets libc-charsets libc-crypt 			=
		libc-crypt-ufc libc-db-aliases libc-envz libc-fcvt libc-fmtmsg libc-fstab=
 libc-ftraverse 					libc-getlogin libc-idn libc-inet-anl libc-libm libc-li=
bm-big libc-locales libc-locale-code 					libc-memusage libc-nis libc-nsswi=
tch libc-rcmd libc-rtld-debug libc-spawn libc-streams libc-sunrpc 					libc=
-utmp libc-utmpx libc-wordexp libc-posix-clang-wchar libc-posix-regexp libc=
-posix-regexp-glibc 					libc-posix-wchar-io"
# DISTRO_NAME=3DYocto (Built by Poky 7.0)
DISTRO_NAME=3D"Yocto (Built by Poky 7.0)"
# FREEBSD_MIRROR=3Dftp://ftp.freebsd.org/pub/FreeBSD/
FREEBSD_MIRROR=3D"ftp://ftp.freebsd.org/pub/FreeBSD/"
# PREFERRED_VERSION_binutils-cross=3D${BINUVERSION}
PREFERRED_VERSION_binutils-cross=3D"2.22"
# PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}binutils=3DNone
# HOST_PREFIX=3D${TARGET_PREFIX}
HOST_PREFIX=3D"powerpc-poky-linux-"
# module_autoload_hidp=3Dhidp
module_autoload_hidp=3D"hidp"
# LC_ALL=3DC
export LC_ALL=3D"C"
# PKGD=3D${WORKDIR}/package
PKGD=3D"/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3=
.0-r0/package"
# PKGE=3D${@['','${PE\x7d'][d.getVar('PE',1) > 0]}
# HOST_SYS=3D${HOST_ARCH}${HOST_VENDOR}-${HOST_OS}
HOST_SYS=3D"powerpc-poky-linux"
# SSTATETASKNAMES=3Ddeploy deploy-rpm populate-lic package populate-sysroot
SSTATETASKNAMES=3D"deploy deploy-rpm populate-lic package populate-sysroot"
# PKGV=3D${PV}
PKGV=3D"3.3.0"
# TARGET_CPPFLAGS=3D
# BBFILE_PATTERN_yocto=3D^/tool/yocto/poky/meta-yocto/
BBFILE_PATTERN_yocto=3D"^/tool/yocto/poky/meta-yocto/"
# PCMCIA_MANAGER=3Dpcmciautils
PCMCIA_MANAGER=3D"pcmciautils"
# PREFERRED_PROVIDER_opkg=3Dopkg
PREFERRED_PROVIDER_opkg=3D"opkg"
# TUNE_ASARGS=3D
# FILE=3D/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx_3.3.0.bb
FILE=3D"/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx_3.3.0.bb"
# EXTENDPKGEVER=3D${@['','${PKGE\x7d:'][d.getVar('PKGE',1).strip() !=3D '']=
}
# KERNEL_CC=3D${CCACHE}${HOST_PREFIX}gcc${KERNEL_CCSUFFIX} ${HOST_CC_KERNEL=
_ARCH}${TOOLCHAIN_OPTIONS}
KERNEL_CC=3D"powerpc-poky-linux-gcc  --sysroot=3D/tool/yocto/poky/build/tmp=
/sysroots/virtex5"
# PREFERRED_PROVIDER_dbus-glib=3Ddbus-glib
PREFERRED_PROVIDER_dbus-glib=3D"dbus-glib"
# exec_prefix=3D/usr
export exec_prefix=3D"/usr"
# bindir_crossscripts=3D${bindir}/crossscripts
bindir_crossscripts=3D"/usr/bin/crossscripts"
# KERNEL_LDSUFFIX=3D
# IMAGE_DEVICE_TABLES=3Dfiles/device_table-minimal.txt files/device_table_a=
dd-xsa.txt
IMAGE_DEVICE_TABLES=3D"files/device_table-minimal.txt files/device_table_ad=
d-xsa.txt"
# PREFERRED_VERSION_binutils=3D${BINUVERSION}
PREFERRED_VERSION_binutils=3D"2.22"
# PREFERRED_PROVIDER_virtual/powerpc-poky-linux-libc-initial=3D${TCLIBC}-in=
itial
PREFERRED_PROVIDER_virtual/powerpc-poky-linux-libc-initial=3D"eglibc-initia=
l"
# SDKPATH=3D/opt/${DISTRO}/${SDK_VERSION}
SDKPATH=3D"/opt/poky/1.2+snapshot"
# GROUP_locale=3DNone
# module_autoload_rfcomm=3Drfcomm
module_autoload_rfcomm=3D"rfcomm"
# SSTATE_PKGNAME=3D${SSTATE_PKGSPEC}${BB_TASKHASH}
SSTATE_PKGNAME=3D"sstate-linux-xilinx-virtex5-poky-linux-3.3.0-r0-virtex5-2=
-${BB_TASKHASH}"
# STAGING_INCDIR=3D${STAGING_DIR_HOST}${includedir}
STAGING_INCDIR=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5/usr/include"
# BUILD_RANLIB=3D${BUILD_PREFIX}ranlib
export BUILD_RANLIB=3D"ranlib"
# FETCHCMD_cvs=3D/usr/bin/env cvs
FETCHCMD_cvs=3D"/usr/bin/env cvs"
# DESKTOP_SESSION=3Dubuntu
DESKTOP_SESSION=3D"ubuntu"
# PKGWRITEDIRSRPM=3D${DEPLOY_DIR}/sources/deploy-srpm
PKGWRITEDIRSRPM=3D"/tool/yocto/poky/build/tmp/deploy/sources/deploy-srpm"
# COMPATIBLE_MACHINE=3D(virtex4|virtex5|virtex5mb|spartan6-sp605|spartan6-l=
x9mb)
COMPATIBLE_MACHINE=3D"(virtex4|virtex5|virtex5mb|spartan6-sp605|spartan6-lx=
9mb)"
# PREFERRED_PROVIDER_libgcc=3Dlibgcc
PREFERRED_PROVIDER_libgcc=3D"libgcc"
# GENTOO_MIRROR=3Dhttp://distfiles.gentoo.org/distfiles
GENTOO_MIRROR=3D"http://distfiles.gentoo.org/distfiles"
# CO_DIR=3D${DL_DIR}
CO_DIR=3D"/tool/yocto/poky/build/downloads"
# MULTIMACH_TARGET_SYS=3D${PACKAGE_ARCH}${TARGET_VENDOR}-${TARGET_OS}
MULTIMACH_TARGET_SYS=3D"virtex5-poky-linux"
# BB_BASEHASH_task-do_populate_lic_setscene=3D3bdcbad02cc5fbfdbf0709766880e=
ac2
BB_BASEHASH_task-do_populate_lic_setscene=3D"3bdcbad02cc5fbfdbf0709766880ea=
c2"
# DESCRIPTION_linux-xilinx-dev=3D${DESCRIPTION}  This package contains symb=
olic links, header files, and related items necessary for software developm=
ent.
DESCRIPTION_linux-xilinx-dev=3D"Linux kernel for Xilinx platforms  This pac=
kage contains symbolic links, header files, and related items necessary for=
 software development."
# ALLOW_EMPTY_kernel-image=3D1
ALLOW_EMPTY_kernel-image=3D"1"
# HOSTTOOLS_WHITELIST_GPLv3=3D
# TUNE_LDARGS=3D
# baselib=3D${BASELIB}
baselib=3D"lib"
# SSTATE_VERSION=3D2
SSTATE_VERSION=3D"2"
# PREFERRED_VERSION_gcc-cross-canadian-${TRANSLATED_TARGET_ARCH}=3DNone
# BB_ENV_EXTRAWHITE=3DPSEUDO_BUILD PSEUDO_DISABLED MACHINE DISTRO TCMODE TC=
LIBC http_proxy ftp_proxy https_proxy all_proxy ALL_PROXY no_proxy SSH_AGEN=
T_PID SSH_AUTH_SOCK BB_SRCREV_POLICY SDKMACHINE BB_NUMBER_THREADS PARALLEL_=
MAKE GIT_PROXY_COMMAND GIT_PROXY_IGNORE SOCKS5_PASSWD SOCKS5_USER SCREENDIR
BB_ENV_EXTRAWHITE=3D"PSEUDO_BUILD PSEUDO_DISABLED MACHINE DISTRO TCMODE TCL=
IBC http_proxy ftp_proxy https_proxy all_proxy ALL_PROXY no_proxy SSH_AGENT=
_PID SSH_AUTH_SOCK BB_SRCREV_POLICY SDKMACHINE BB_NUMBER_THREADS PARALLEL_M=
AKE GIT_PROXY_COMMAND GIT_PROXY_IGNORE SOCKS5_PASSWD SOCKS5_USER SCREENDIR"
# KERNEL_IMAGETYPE_FOR_MAKE=3D${@(lambda s: s[:-3] if s[-3:] =3D=3D ".gz" e=
lse s)(d.getVar('KERNEL_IMAGETYPE', True))}
KERNEL_IMAGETYPE_FOR_MAKE=3D"uImage"
# PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}g++=3DNone
# PREFERRED_VERSION_gcc-crosssdk-intermediate=3D${SDKGCCVERSION}
PREFERRED_VERSION_gcc-crosssdk-intermediate=3D"4.7%"
# PREFERRED_VERSION_binutils-cross-canadian-${TRANSLATED_TARGET_ARCH}=3DNon=
e
# BUILDSDK_CPPFLAGS=3D-isystem${STAGING_INCDIR}
BUILDSDK_CPPFLAGS=3D"-isystem/tool/yocto/poky/build/tmp/sysroots/virtex5/us=
r/include"
# AVAILTUNES=3D powerpc powerpc-nf ppc440
AVAILTUNES=3D"powerpc powerpc-nf ppc440"
# BB_SIGNATURE_EXCLUDE_FLAGS=3Ddoc defaultval _append _prepend deps depends=
 lockfiles type vardepsexclude vardeps vardepvalue file-checksums python fu=
nc task export unexport noexec nostamp dirs cleandirs sstate-lockfile-share=
d prefuncs postfuncs export_func deptask rdeptask recrdeptask nodeprrecs st=
amp-base stamp-extra-info
BB_SIGNATURE_EXCLUDE_FLAGS=3D"doc defaultval _append _prepend deps depends =
lockfiles type vardepsexclude vardeps vardepvalue file-checksums python fun=
c task export unexport noexec nostamp dirs cleandirs sstate-lockfile-shared=
 prefuncs postfuncs export_func deptask rdeptask recrdeptask nodeprrecs sta=
mp-base stamp-extra-info"
# BB_HASHBASE_WHITELIST=3DTMPDIR FILE PATH PWD BB_TASKHASH BBPATH DL_DIR SS=
TATE_DIR THISDIR FILESEXTRAPATHS FILE_DIRNAME HOME LOGNAME SHELL TERM USER =
FILESPATH STAGING_DIR_HOST STAGING_DIR_TARGET COREBASE PRSERV_HOST PRSERV_P=
ORT PRSERV_DUMPDIR PRSERV_DUMPFILE PRSERV_LOCKDOWN PARALLEL_MAKE CCACHE_DIR=
 EXTERNAL_TOOLCHAIN CCACHE
BB_HASHBASE_WHITELIST=3D"TMPDIR FILE PATH PWD BB_TASKHASH BBPATH DL_DIR SST=
ATE_DIR THISDIR FILESEXTRAPATHS FILE_DIRNAME HOME LOGNAME SHELL TERM USER F=
ILESPATH STAGING_DIR_HOST STAGING_DIR_TARGET COREBASE PRSERV_HOST PRSERV_PO=
RT PRSERV_DUMPDIR PRSERV_DUMPFILE PRSERV_LOCKDOWN PARALLEL_MAKE CCACHE_DIR =
EXTERNAL_TOOLCHAIN CCACHE"
# module_conf_bluez=3Dalias net-pf-31 bluez
module_conf_bluez=3D"alias net-pf-31 bluez"
# DESCRIPTION_linux-xilinx-dbg=3D${DESCRIPTION}  This package contains ELF =
symbols and related sources for debugging purposes.
DESCRIPTION_linux-xilinx-dbg=3D"Linux kernel for Xilinx platforms  This pac=
kage contains ELF symbols and related sources for debugging purposes."
# E_MIRROR=3Dhttp://download.enlightenment.org/releases
E_MIRROR=3D"http://download.enlightenment.org/releases"
# KERNEL_DEVICETREE_FLAGS=3D-R 8 -p 0x3000
KERNEL_DEVICETREE_FLAGS=3D"-R 8 -p 0x3000"
# FETCHCMD_svn=3D/usr/bin/env svn
FETCHCMD_svn=3D"/usr/bin/env svn"
# PREFERRED_PROVIDER_virtual/kernel=3Dlinux-xilinx
PREFERRED_PROVIDER_virtual/kernel=3D"linux-xilinx"
# BB_BASEHASH_task-do_listtasks=3D1ad35dec4c57727e67231fbe9f8e453b
BB_BASEHASH_task-do_listtasks=3D"1ad35dec4c57727e67231fbe9f8e453b"
# BB_BASEHASH_task-do_package_write=3Dfdc376fd264c2fc126ec182f0a53ca8a
BB_BASEHASH_task-do_package_write=3D"fdc376fd264c2fc126ec182f0a53ca8a"
# sysconfdir=3D${base_prefix}/etc
export sysconfdir=3D"/etc"
# FILES_kernel-image=3D/boot/${KERNEL_IMAGETYPE}*
FILES_kernel-image=3D"/boot/uImage*"
# CCLD=3D${CC}
export CCLD=3D"powerpc-poky-linux-gcc  -m32  -msoft-float -mcpu=3D440 --sys=
root=3D/tool/yocto/poky/build/tmp/sysroots/virtex5"
# CHECKCOMMAND_wget=3D/usr/bin/env wget --spider  -t 2 -T 30 --passive-ftp =
--no-check-certificate -P ${DL_DIR} '${URI}'
CHECKCOMMAND_wget=3D"/usr/bin/env wget --spider  -t 2 -T 30 --passive-ftp -=
-no-check-certificate -P /tool/yocto/poky/build/downloads '${URI}'"
# QAPATHTEST=3DNone
# SELECTED_OPTIMIZATION=3D${@d.getVar(['FULL_OPTIMIZATION', 'DEBUG_OPTIMIZA=
TION'][d.getVar('DEBUG_BUILD', True) =3D=3D '1'], True)}
SELECTED_OPTIMIZATION=3D"-O2 -pipe -g -feliminate-unused-debug-types"
# GIT_CONFIG_PATH=3D${STAGING_DIR_NATIVE}/etc
GIT_CONFIG_PATH=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/etc"
# ASNEEDED_pn-openobex=3D
# SDKGCCVERSION=3D${GCCVERSION}
SDKGCCVERSION=3D"4.7%"
# DEBIAN_NAMES=3D1
DEBIAN_NAMES=3D"1"
# DISTRO_EXTRA_RRECOMMENDS=3D  ${POKY_DEFAULT_EXTRA_RRECOMMENDS}
DISTRO_EXTRA_RRECOMMENDS=3D"kernel-module-af-packet"
# PACKAGEINDEXDEPS=3D rpm-native:do_populate_sysroot createrepo-native:do_p=
opulate_sysroot
PACKAGEINDEXDEPS=3D"rpm-native:do_populate_sysroot createrepo-native:do_pop=
ulate_sysroot"
# PREFERRED_VERSION_linux-yocto_qemuarm=3D3.4%
PREFERRED_VERSION_linux-yocto_qemuarm=3D"3.4%"
# PREFERRED_VERSION_linux-yocto_qemuppc=3D3.4%
PREFERRED_VERSION_linux-yocto_qemuppc=3D"3.4%"
# KERNEL_ALT_IMAGETYPE=3D
# QA_LOG=3DNone
# PACKAGELOCK=3D${STAGING_DIR}/package-output.lock
PACKAGELOCK=3D"/tool/yocto/poky/build/tmp/sysroots/package-output.lock"
# IMAGE_NAME=3D${IMAGE_BASENAME}-${MACHINE}-${DATETIME}
IMAGE_NAME=3D"linux-xilinx-virtex5-20120623074715"
# STAGING_DIR_TCBOOTSTRAP=3D${STAGING_DIR_TARGET}-tcbootstrap
STAGING_DIR_TCBOOTSTRAP=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5-tcbo=
otstrap"
# STAGING_LIBDIR_NATIVE=3D${STAGING_DIR_NATIVE}${libdir_native}
STAGING_LIBDIR_NATIVE=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/u=
sr/lib"
# QEMU_TARGETS=3Darm i386 mips mipsel ppc x86_64
QEMU_TARGETS=3D"arm i386 mips mipsel ppc x86_64"
# GROUP_packaging=3DNone
# DESCRIPTION=3DLinux kernel for Xilinx platforms
DESCRIPTION=3D"Linux kernel for Xilinx platforms"
# OVERRIDES=3D${TARGET_OS}:${TRANSLATED_TARGET_ARCH}:build-${BUILD_OS}:pn-$=
{PN}:${MACHINEOVERRIDES}:${DISTROOVERRIDES}:${CLASSOVERRIDE}:forcevariable$=
{LIBCOVERRIDE}
OVERRIDES=3D"linux:powerpc:build-linux:pn-linux-xilinx:virtex5:poky:class-t=
arget:forcevariable:libc-glibc"
# INHERIT=3D ${PACKAGE_CLASSES} ${USER_CLASSES} ${INHERIT_INSANE} ${INHERIT=
_DISTRO} sanity
INHERIT=3D"package_rpm buildstats image-mklibs image-prelink insane debian =
devshell sstate license sanity"
# BB_BASEHASH_task-do_devshell=3Daa48d219cbda3f32c9b16c048e5ff62e
BB_BASEHASH_task-do_devshell=3D"aa48d219cbda3f32c9b16c048e5ff62e"
# TARGET_LD_ARCH=3D${TUNE_LDARGS}
# SDK_SYS=3D${SDK_ARCH}${SDK_VENDOR}${@['-' + d.getVar('SDK_OS', True), '']=
[d.getVar('SDK_OS', True) =3D=3D ('' or 'custom')]}
SDK_SYS=3D"x86_64-pokysdk-linux"
# base_dep=3Ddef base_dep_prepend(d):
#	#
#	# Ideally this will check a flag so we will operate properly in
#	# the case where host =3D=3D build =3D=3D target, for now we don't work i=
n
#	# that case though.
#	#
#
#	deps =3D ""
#	# INHIBIT_DEFAULT_DEPS doesn't apply to the patch command.  Whether or  n=
ot
#	# we need that built is the responsibility of the patch function / class,=
 not
#	# the application.
#	if not d.getVar('INHIBIT_DEFAULT_DEPS'):
#		if (d.getVar('HOST_SYS', True) !=3D
#	     	    d.getVar('BUILD_SYS', True)):
#			deps +=3D " virtual/${TARGET_PREFIX}gcc virtual/${TARGET_PREFIX}compile=
rlibs virtual/libc "
#	return deps
#
base_dep=3D"def base_dep_prepend(d): \
	# \
	# Ideally this will check a flag so we will operate properly in \
	# the case where host =3D=3D build =3D=3D target, for now we don't work in=
 \
	# that case though. \
	# \
 \
	deps =3D \"\" \
	# INHIBIT_DEFAULT_DEPS doesn't apply to the patch command.  Whether or  no=
t \
	# we need that built is the responsibility of the patch function / class, =
not \
	# the application. \
	if not d.getVar('INHIBIT_DEFAULT_DEPS'): \
		if (d.getVar('HOST_SYS', True) !=3D \
	     	    d.getVar('BUILD_SYS', True)): \
			deps +=3D \" virtual/powerpc-poky-linux-gcc virtual/powerpc-poky-linux-c=
ompilerlibs virtual/libc \" \
	return deps"
# module_autoload_rtc-sa1100=3Drtc-sa1100
module_autoload_rtc-sa1100=3D"rtc-sa1100"
# ASSUME_SHLIBS=3DNone
# base_libdir=3D${base_prefix}/${baselib}
export base_libdir=3D"/lib"
# BASELIB=3Dlib
BASELIB=3D"lib"
# BUILD_OPTIMIZATION=3D-O2 -pipe
BUILD_OPTIMIZATION=3D"-O2 -pipe"
# UBOOT_ENTRYPOINT=3D0x00000000
UBOOT_ENTRYPOINT=3D"0x00000000"
# PACKAGEINDEXES=3D package_update_index_rpm; createrepo ${DEPLOY_DIR_RPM};
PACKAGEINDEXES=3D"package_update_index_rpm; createrepo /tool/yocto/poky/bui=
ld/tmp/deploy/rpm;"
# BPN=3D${@base_prune_suffix(d.getVar('PN', True), d.getVar('SPECIAL_PKGSUF=
FIX', True).split(), d)}
BPN=3D"linux-xilinx"
# LOGNAME=3Delvis
export LOGNAME=3D"elvis"
# PATH=3D${COREBASE}/scripts:${STAGING_BINDIR_TOOLCHAIN}:${STAGING_BINDIR_C=
ROSS}:${STAGING_DIR_NATIVE}${sbindir_native}:${STAGING_BINDIR_NATIVE}:${STA=
GING_DIR_NATIVE}${base_sbindir_native}:${STAGING_DIR_NATIVE}/${base_bindir_=
native}:/tool/yocto/poky/scripts:/tool/yocto/poky/bitbake/bin/:/usr/lib/lig=
htdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/=
usr/games
export PATH=3D"/tool/yocto/poky/scripts:/tool/yocto/poky/build/tmp/sysroots=
/x86_64-linux/usr/bin/ppc440-poky-linux:/tool/yocto/poky/build/tmp/sysroots=
/virtex5/usr/bin/crossscripts:/tool/yocto/poky/build/tmp/sysroots/x86_64-li=
nux/usr/sbin:/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin:/tool=
/yocto/poky/build/tmp/sysroots/x86_64-linux/sbin:/tool/yocto/poky/build/tmp=
/sysroots/x86_64-linux//bin:/tool/yocto/poky/scripts:/tool/yocto/poky/bitba=
ke/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/=
usr/bin:/sbin:/bin:/usr/games"
# ASNEEDED_pn-pciutils=3D
# TARGET_CFLAGS=3D${TARGET_CPPFLAGS} ${SELECTED_OPTIMIZATION}
export TARGET_CFLAGS=3D"-O2 -pipe -g -feliminate-unused-debug-types"
# base_bindir=3D${base_prefix}/bin
export base_bindir=3D"/bin"
# BUILDCFG_FUNCS=3Dbuildcfg_vars get_layers_branch_rev buildcfg_neededvars
BUILDCFG_FUNCS=3D"buildcfg_vars get_layers_branch_rev buildcfg_neededvars"
# PKG_CONFIG_LIBDIR=3D${PKG_CONFIG_DIR}
export PKG_CONFIG_LIBDIR=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5//us=
r/lib/pkgconfig"
# SANITY_REQUIRED_UTILITIES=3Dpatch diffstat texi2html makeinfo svn bzip2 t=
ar gzip gawk chrpath wget cpio
SANITY_REQUIRED_UTILITIES=3D"patch diffstat texi2html makeinfo svn bzip2 ta=
r gzip gawk chrpath wget cpio"
# SEPPUKU_COMPONENT=3DNone
# BBFILE_PRIORITY_normal=3D5
BBFILE_PRIORITY_normal=3D"5"
# MACHINE=3Dvirtex5
unset MACHINE
# TARGET_LD_KERNEL_ARCH=3D
# GITDIR=3D${CO_DIR}/git2
GITDIR=3D"/tool/yocto/poky/build/downloads/git2"
# EXCLUDE_FROM_WORLD_pn-gobject-introspection=3D1
EXCLUDE_FROM_WORLD_pn-gobject-introspection=3D"1"
# MACHINEOVERRIDES=3D${MACHINE}
MACHINEOVERRIDES=3D"virtex5"
# prefix_native=3D/usr
prefix_native=3D"/usr"
# BBFILE_PRIORITY_yocto=3D5
BBFILE_PRIORITY_yocto=3D"5"
# SECTION_${PN}-dev=3DNone
# base_sbindir_native=3D/sbin
base_sbindir_native=3D"/sbin"
# ALLOW_EMPTY_kernel-base=3D1
ALLOW_EMPTY_kernel-base=3D"1"
# sbindir=3D${exec_prefix}/sbin
export sbindir=3D"/usr/sbin"
# CFLAGS=3D${TARGET_CFLAGS}
export CFLAGS=3D"-O2 -pipe -g -feliminate-unused-debug-types"
# BB_BASEHASH_task-do_populate_sysroot=3Db7753f1df384ebc522204f2bca9baabb
BB_BASEHASH_task-do_populate_sysroot=3D"b7753f1df384ebc522204f2bca9baabb"
# BUILD_AR=3D${BUILD_PREFIX}ar
export BUILD_AR=3D"ar"
# BUILD_AS=3D${BUILD_PREFIX}as ${BUILD_AS_ARCH}
export BUILD_AS=3D"as"
# SHLIBSDIR=3D${STAGING_DIR_HOST}/shlibs
SHLIBSDIR=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5/shlibs"
# sharedstatedir=3D${base_prefix}/com
export sharedstatedir=3D"/com"
# FILES_linux-xilinx=3D${bindir}/* ${sbindir}/* ${libexecdir}/* ${libdir}/l=
ib*${SOLIBS} ${sysconfdir} ${sharedstatedir} ${localstatedir} ${base_bindir=
}/* ${base_sbindir}/* ${base_libdir}/*${SOLIBS} ${datadir}/${BPN} ${libdir}=
/${BPN}/* ${datadir}/pixmaps ${datadir}/applications ${datadir}/idl ${datad=
ir}/omf ${datadir}/sounds ${libdir}/bonobo/servers
FILES_linux-xilinx=3D"/usr/bin/* /usr/sbin/* /usr/libexec/* /usr/lib/lib*.s=
o.* /etc /com /var /bin/* /sbin/* /lib/*.so.* /usr/share/linux-xilinx /usr/=
lib/linux-xilinx/* /usr/share/pixmaps /usr/share/applications /usr/share/id=
l /usr/share/omf /usr/share/sounds /usr/lib/bonobo/servers"
# COMMERCIAL_AUDIO_PLUGINS=3D
# DEBIAN_MIRROR=3Dftp://ftp.debian.org/debian/pool
DEBIAN_MIRROR=3D"ftp://ftp.debian.org/debian/pool"
# PREFERRED_PROVIDER_virtual/libc=3Deglibc
PREFERRED_PROVIDER_virtual/libc=3D"eglibc"
# DEVFILE=3D${BUILDSTATS_BASE}/.device
DEVFILE=3D"/tool/yocto/poky/build/tmp/buildstats//.device"
# DEFAULT_TASK_PROVIDER=3Dtask-base
DEFAULT_TASK_PROVIDER=3D"task-base"
# PREFERRED_VERSION_uclibc-initial=3D${UCLIBCVERSION}
PREFERRED_VERSION_uclibc-initial=3D"0.9.33"
# BBFILE_PATTERN_openembedded-layer=3D^/tool/yocto/meta-openembedded/meta-o=
e/
BBFILE_PATTERN_openembedded-layer=3D"^/tool/yocto/meta-openembedded/meta-oe=
/"
# BB_BASEHASH_task-do_configure=3D9347e52b8b7eef509e108752d35aa92e
BB_BASEHASH_task-do_configure=3D"9347e52b8b7eef509e108752d35aa92e"
# VIRTUAL-RUNTIME_apm=3Dapm
VIRTUAL-RUNTIME_apm=3D"apm"
# IMAGE_LINGUAS=3Den-us en-gb
IMAGE_LINGUAS=3D"en-us en-gb"
# KERNEL_IMAGE_SYMLINK_NAME=3D${KERNEL_IMAGETYPE}-${MACHINE}
KERNEL_IMAGE_SYMLINK_NAME=3D"uImage-virtex5"
# PREFERRED_PROVIDER_virtual/libc-nativesdk=3Deglibc-nativesdk
PREFERRED_PROVIDER_virtual/libc-nativesdk=3D"eglibc-nativesdk"
# PARALLEL_MAKE=3D-j 6
PARALLEL_MAKE=3D"-j 6"
# PACKAGE_EXTRA_ARCHS=3D${PACKAGE_EXTRA_ARCHS_tune-${DEFAULTTUNE}}
PACKAGE_EXTRA_ARCHS=3D"powerpc-nf ppc440"
# PREFERRED_PROVIDER_virtual/libiconv-nativesdk=3Deglibc-nativesdk
PREFERRED_PROVIDER_virtual/libiconv-nativesdk=3D"eglibc-nativesdk"
# PREFERRED_VERSION_linux-libc-headers=3D${LINUXLIBCVERSION}
PREFERRED_VERSION_linux-libc-headers=3D"3.4"
# KERNEL_TARGET=3D440-ml507
KERNEL_TARGET=3D"440-ml507"
# PREFERRED_VERSION_liberation-fonts=3D1.04
PREFERRED_VERSION_liberation-fonts=3D"1.04"
# OBJDUMP=3D${HOST_PREFIX}objdump
export OBJDUMP=3D"powerpc-poky-linux-objdump"
# INHERIT_DISTRO=3Ddebian devshell sstate license
INHERIT_DISTRO=3D"debian devshell sstate license"
# IMAGE_BASENAME=3D${PN}
IMAGE_BASENAME=3D"linux-xilinx"
# PATCHTOOL=3Dquilt
PATCHTOOL=3D"quilt"
# XORG_MIRROR=3Dhttp://xorg.freedesktop.org/releases
XORG_MIRROR=3D"http://xorg.freedesktop.org/releases"
# SYSROOT_DESTDIR=3D${WORKDIR}/sysroot-destdir/
SYSROOT_DESTDIR=3D"/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux=
-xilinx-3.3.0-r0/sysroot-destdir/"
# FILES_kernel-dev=3D/boot/System.map* /boot/Module.symvers* /boot/config*
FILES_kernel-dev=3D"/boot/System.map* /boot/Module.symvers* /boot/config*"
# BB_BASEHASH_task-do_checkuri=3D4de07276512afa6485487cc4e3c3489a
BB_BASEHASH_task-do_checkuri=3D"4de07276512afa6485487cc4e3c3489a"
# UCLIBCVERSION=3D0.9.33
UCLIBCVERSION=3D"0.9.33"
# CROSS_COMPILE=3D${TARGET_PREFIX}
export CROSS_COMPILE=3D"powerpc-poky-linux-"
# SPECIAL_PKGSUFFIX=3D-native -cross -initial -intermediate -nativesdk -cro=
sssdk -cross-canadian
SPECIAL_PKGSUFFIX=3D"-native -cross -initial -intermediate -nativesdk -cros=
ssdk -cross-canadian"
# DESCRIPTION_${PN}-doc=3DNone
# BUILD_EXEEXT=3D
# PREFERRED_VERSION_elfutils=3D0.148
PREFERRED_VERSION_elfutils=3D"0.148"
# DL_DIR=3D${TOPDIR}/downloads
DL_DIR=3D"/tool/yocto/poky/build/downloads"
# BB_BASEHASH_task-do_checkuriall=3Dfdc376fd264c2fc126ec182f0a53ca8a
BB_BASEHASH_task-do_checkuriall=3D"fdc376fd264c2fc126ec182f0a53ca8a"
# IMAGE_ROOTFS_EXTRA_SPACE=3D0
IMAGE_ROOTFS_EXTRA_SPACE=3D"0"
# BB_BASEHASH_task-do_compile=3D3cac88de5a688f2684eb1f92fd7386e1
BB_BASEHASH_task-do_compile=3D"3cac88de5a688f2684eb1f92fd7386e1"
# PR=3Dr0
PR=3D"r0"
# PV=3D${@bb.parse.BBHandler.vars_from_file(d.getVar('FILE'),d)[1] or '1.0'=
}
PV=3D"3.3.0"
# HOST_EXTRACFLAGS=3D${BUILD_CFLAGS} ${BUILD_LDFLAGS}
HOST_EXTRACFLAGS=3D"-isystem/tool/yocto/poky/build/tmp/sysroots/x86_64-linu=
x/usr/include -O2 -pipe -L/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/=
usr/lib -L/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/lib -Wl,-rpath-l=
ink,/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpath-lin=
k,/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/lib -Wl,-rpath,/tool/yoc=
to/poky/build/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpath,/tool/yocto/poky=
/build/tmp/sysroots/x86_64-linux/lib -Wl,-O1"
# SDK_PREFIX=3D${SDK_SYS}-
SDK_PREFIX=3D"x86_64-pokysdk-linux-"
# module_conf_bnep=3Dalias bt-proto-4 bnep
module_conf_bnep=3D"alias bt-proto-4 bnep"
# PKGDEST=3D${WORKDIR}/packages-split
PKGDEST=3D"/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-=
3.3.0-r0/packages-split"
# BB_BASEHASH_task-do_fetch=3Dd2142b2ebff99a629535445acf830fe7
BB_BASEHASH_task-do_fetch=3D"d2142b2ebff99a629535445acf830fe7"
# PF=3D${PN}-${EXTENDPE}${PV}-${PR}
PF=3D"linux-xilinx-3.3.0-r0"
# STAGING_BINDIR_NATIVE=3D${STAGING_DIR_NATIVE}${bindir_native}
STAGING_BINDIR_NATIVE=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/u=
sr/bin"
# MACHINE_EXTRA_RECOMMENDS=3Dkernel-modules
MACHINE_EXTRA_RECOMMENDS=3D"kernel-modules"
# RDEPENDS_linux-xilinx-dev=3D${PN} (=3D ${EXTENDPKGV})
RDEPENDS_linux-xilinx-dev=3D"linux-xilinx (=3D 3.3.0-r0)"
# FAKEROOTNOENV=3DPSEUDO_UNLOAD=3D1
FAKEROOTNOENV=3D"PSEUDO_UNLOAD=3D1"
# DISTRO=3Dpoky
unset DISTRO
# PACKAGEVARS=3DFILES RDEPENDS RRECOMMENDS SUMMARY DESCRIPTION RSUGGESTS RP=
ROVIDES RCONFLICTS PKG ALLOW_EMPTY pkg_postinst pkg_postrm INITSCRIPT_NAME =
INITSCRIPT_PARAMS DEBIAN_NOAUTONAME
PACKAGEVARS=3D"FILES RDEPENDS RRECOMMENDS SUMMARY DESCRIPTION RSUGGESTS RPR=
OVIDES RCONFLICTS PKG ALLOW_EMPTY pkg_postinst pkg_postrm INITSCRIPT_NAME I=
NITSCRIPT_PARAMS DEBIAN_NOAUTONAME"
# DISTRO_VERSION=3D1.2+snapshot-${DATE}
DISTRO_VERSION=3D"1.2+snapshot-20120623"
# SDK_LD_ARCH=3D${BUILD_LD_ARCH}
# S=3D${WORKDIR}/git
S=3D"/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-=
r0/git"
# KERNEL_IMAGETYPE=3DuImage
KERNEL_IMAGETYPE=3D"uImage"
# FILES_kernel-misc=3D/kernel/include/config /kernel/scripts /kernel/driver=
s/crypto /kernel/drivers/media
FILES_kernel-misc=3D"/kernel/include/config /kernel/scripts /kernel/drivers=
/crypto /kernel/drivers/media"
# STAGING_KERNEL_DIR=3D${STAGING_DIR_HOST}/kernel
STAGING_KERNEL_DIR=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5/kernel"
# PREFERRED_PROVIDER_linux-libc-headers=3Dlinux-libc-headers
PREFERRED_PROVIDER_linux-libc-headers=3D"linux-libc-headers"
# BB_BASEHASH_task-do_clean=3D0ef69b495b4727a19258e1bbd5534551
BB_BASEHASH_task-do_clean=3D"0ef69b495b4727a19258e1bbd5534551"
# MLPREFIX=3D
# ADOBE_MIRROR=3Dhttp://fpdownload.macromedia.com/get/flashplayer/current/
ADOBE_MIRROR=3D"http://fpdownload.macromedia.com/get/flashplayer/current/"
# IPK_FEED_URIS=3DNone
# PKG_CONFIG_DIR=3D${STAGING_DIR_HOST}/${libdir}/pkgconfig
export PKG_CONFIG_DIR=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5//usr/l=
ib/pkgconfig"
# PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}gcc=3DNone
# TARGET_LDFLAGS=3D-Wl,-O1 ${TARGET_LINK_HASH_STYLE} ${ASNEEDED}
export TARGET_LDFLAGS=3D"-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed"
# IMAGE_PREPROCESS_COMMAND=3D mklibs_optimize_image;  prelink_image;=20
IMAGE_PREPROCESS_COMMAND=3D"mklibs_optimize_image;  prelink_image;"
# SRCREV=3D${AUTOREV}
SRCREV=3D"AUTOINC"
# DEBIANRDEP=3Ddo_package
DEBIANRDEP=3D"do_package"
# TARGET_SYS=3D${TARGET_ARCH}${TARGET_VENDOR}${@['-' + d.getVar('TARGET_OS'=
, True), ''][d.getVar('TARGET_OS', True) =3D=3D ('' or 'custom')]}
TARGET_SYS=3D"powerpc-poky-linux"
# PREFERRED_PROVIDER_virtual/libc-locale=3Deglibc-locale
PREFERRED_PROVIDER_virtual/libc-locale=3D"eglibc-locale"
# DEPLOY_DIR_TAR=3D${DEPLOY_DIR}/tar
DEPLOY_DIR_TAR=3D"/tool/yocto/poky/build/tmp/deploy/tar"
# FILES_linux-xilinx-staticdev=3D${libdir}/*.a ${base_libdir}/*.a ${libdir}=
/${BPN}/*.a
FILES_linux-xilinx-staticdev=3D"/usr/lib/*.a /lib/*.a /usr/lib/linux-xilinx=
/*.a"
# PKG_CONFIG_DISABLE_UNINSTALLED=3Dyes
export PKG_CONFIG_DISABLE_UNINSTALLED=3D"yes"
# DESCRIPTION_${PN}-dev=3DNone
# PACKAGERDEPTASK=3Ddo_package_write
PACKAGERDEPTASK=3D"do_package_write"
# LINKER_HASH_STYLE_mips64el=3Dsysv
LINKER_HASH_STYLE_mips64el=3D"sysv"
# DESCRIPTION_linux-xilinx-doc=3D${DESCRIPTION}  This package contains docu=
mentation.
DESCRIPTION_linux-xilinx-doc=3D"Linux kernel for Xilinx platforms  This pac=
kage contains documentation."
# libdir=3D${exec_prefix}/${baselib}
export libdir=3D"/usr/lib"
# SEPPUKU_NEWREPORT=3DNone
# FILES_linux-xilinx-doc=3D${docdir} ${mandir} ${infodir} ${datadir}/gtk-do=
c ${datadir}/gnome/help
FILES_linux-xilinx-doc=3D"/usr/share/doc /usr/share/man /usr/share/info /us=
r/share/gtk-doc /usr/share/gnome/help"
# ALLOW_EMPTY_${PN}-dev=3DNone
# ASNEEDED_pn-xserver-kdrive-xomap=3D
# PREFERRED_PROVIDER_virtual/x86_64-pokysdk-linux-libc-initial-nativesdk=3D=
${TCLIBC}-initial-nativesdk
PREFERRED_PROVIDER_virtual/x86_64-pokysdk-linux-libc-initial-nativesdk=3D"e=
glibc-initial-nativesdk"
# METADATA_BRANCH=3D${@base_detect_branch(d)}
METADATA_BRANCH=3D"master"
# PREFERRED_VERSION_gcc-crosssdk-initial=3D${SDKGCCVERSION}
PREFERRED_VERSION_gcc-crosssdk-initial=3D"4.7%"
# SYSROOT_PREPROCESS_FUNCS=3D
# PREFERRED_PROVIDER_virtual/${SDK_PREFIX}libc-initial-nativesdk=3DNone
# SEPPUKU_ATTACHMENT=3DNone
# DEPLOY_DIR_IMAGE=3D${DEPLOY_DIR}/images
DEPLOY_DIR_IMAGE=3D"/tool/yocto/poky/build/tmp/deploy/images"
# BB_DEFAULT_TASK=3Dbuild
BB_DEFAULT_TASK=3D"build"
# PSEUDO_DISABLED=3D1
export PSEUDO_DISABLED=3D"1"
# SRCREV_pn-u-boot-xilinx=3D${AUTOREV}
SRCREV_pn-u-boot-xilinx=3D"AUTOINC"
# PACKAGE_CLASSES=3Dpackage_rpm
PACKAGE_CLASSES=3D"package_rpm"
# PREFERRED_VERSION_linux-yocto_qemux86=3D3.4%
PREFERRED_VERSION_linux-yocto_qemux86=3D"3.4%"
# EXTRA_IMAGE_FEATURES=3Ddebug-tweaks
EXTRA_IMAGE_FEATURES=3D"debug-tweaks"
# TOOLCHAIN_OPTIONS=3D --sysroot=3D${STAGING_DIR_TARGET}
TOOLCHAIN_OPTIONS=3D"--sysroot=3D/tool/yocto/poky/build/tmp/sysroots/virtex=
5"
# LIBC_DEPENDENCIES=3Dlibsegfault 		     eglibc 		     eglibc-dbg 		     eg=
libc-dev 		     eglibc-utils 		     eglibc-thread-db 		     ${@get_libc_loc=
ales_dependencies(d)}
LIBC_DEPENDENCIES=3D"libsegfault 		     eglibc 		     eglibc-dbg 		     egl=
ibc-dev 		     eglibc-utils 		     eglibc-thread-db 		     	eglibc-localeda=
ta-i18n 	eglibc-gconv-ibm850 	eglibc-gconv-cp1252 	eglibc-gconv-iso8859-1 	=
eglibc-gconv-iso8859-15"
# BB_NUMBER_THREADS=3D6
BB_NUMBER_THREADS=3D"6"
# OE_TERMINAL=3Dauto
OE_TERMINAL=3D"auto"
# PYTHON=3D${@sys.executable}
PYTHON=3D"/usr/bin/python"
# CACHE=3D/tool/yocto/poky/build/tmp/cache/default-eglibc/virtex5
CACHE=3D"/tool/yocto/poky/build/tmp/cache/default-eglibc/virtex5"
# PREFERRED_PROVIDER_virtual/libx11=3Dlibx11-trim
PREFERRED_PROVIDER_virtual/libx11=3D"libx11-trim"
# TARGET_PREFIX=3D${TARGET_SYS}-
TARGET_PREFIX=3D"powerpc-poky-linux-"
# SRCPV=3D${@bb.fetch2.get_srcrev(d)}
SRCPV=3D"1+ed63a4d76efadcb68f5776e4244766ffea226cc4"
# _task_deps=3D{'noexec': {'do_package_write': '1', 'do_build': '1'}, 'task=
s': ['do_patch', 'do_populate_sysroot', 'do_populate_sysroot_setscene', 'do=
_listtasks', 'do_clean', 'do_checkuri', 'do_checkuriall', 'do_fetchall', 'd=
o_buildall', 'do_fetch', 'do_unpack', 'do_configure', 'do_compile', 'do_ins=
tall', 'do_build', 'do_cleansstate', 'do_cleanall', 'do_package', 'do_packa=
ge_setscene', 'do_package_write', 'do_package_write_rpm_setscene', 'do_pack=
age_write_rpm', 'do_devshell', 'do_populate_lic', 'do_populate_lic_setscene=
', 'do_deploy_setscene', 'do_compile_kernelmodules', 'do_savedefconfig', 'd=
o_menuconfig', 'do_sizecheck', 'do_uboot_mkimage', 'do_deploy'], 'rdeptask'=
: {'do_package_write_rpm': 'do_package'}, 'recrdeptask': {'do_buildall': 'd=
o_build', 'do_checkuriall': 'do_checkuri', 'do_fetchall': 'do_fetch', 'do_b=
uild': ' do_deploy do_package_write'}, 'umask': {'do_install': 18, 'do_conf=
igure': 18, 'do_package': 18, 'do_populate_sysroot': '022', 'do_compile': 1=
8, 'do_package_write_rpm': '022'}, 'depends': {'do_menuconfig': ' ncurses-n=
ative:do_populate_sysroot', 'do_install': ' virtual/fakeroot-native:do_popu=
late_sysroot', 'do_configure': ' ', 'do_package_write_rpm': ' rpm-native:do=
_populate_sysroot virtual/fakeroot-native:do_populate_sysroot', 'do_fetch':=
 ' git-native:do_populate_sysroot', 'do_patch': 'quilt-native:do_populate_s=
ysroot', 'do_package': ' virtual/fakeroot-native:do_populate_sysroot rpm-na=
tive:do_populate_sysroot file-native:do_populate_sysroot pax-utils-native:d=
o_populate_sysroot prelink-native:do_populate_sysroot'}, 'fakeroot': {'do_i=
nstall': 1, 'do_package_setscene': 1, 'do_package_write_rpm': 1, 'do_packag=
e': 1, 'do_package_write_rpm_setscene': 1}, 'parents': {'do_configure': ['d=
o_patch', 'do_unpack'], 'do_package': ['do_populate_lic', 'do_install'], 'd=
o_package_write': ['do_package_write_rpm', 'do_package'], 'do_savedefconfig=
': ['do_configure'], 'do_fetchall': ['do_fetch'], 'do_compile': ['do_config=
ure'], 'do_cleanall': ['do_cleansstate'], 'do_checkuri': [], 'do_unpack': [=
'do_fetch'], 'do_menuconfig': ['do_configure'], 'do_populate_lic': ['do_pat=
ch'], 'do_build': ['do_deploy', 'do_package_write', 'do_package', 'do_popul=
ate_sysroot'], 'do_fetch': [], 'do_devshell': ['do_patch'], 'do_populate_sy=
sroot': ['do_install'], 'do_populate_sysroot_setscene': [], 'do_uboot_mkima=
ge': ['do_compile'], 'do_checkuriall': ['do_checkuri'], 'do_install': ['do_=
uboot_mkimage', 'do_sizecheck', 'do_compile_kernelmodules', 'do_compile'], =
'do_populate_lic_setscene': [], 'do_listtasks': [], 'do_clean': [], 'do_pat=
ch': ['do_unpack'], 'do_deploy': ['do_install'], 'do_compile_kernelmodules'=
: ['do_compile'], 'do_buildall': ['do_build'], 'do_package_setscene': [], '=
do_package_write_rpm': ['do_package'], 'do_deploy_setscene': [], 'do_packag=
e_write_rpm_setscene': [], 'do_sizecheck': ['do_compile'], 'do_cleansstate'=
: ['do_clean']}, 'deptask': {'do_configure': 'do_populate_sysroot', 'do_pac=
kage': ' do_package'}, 'nostamp': {'do_menuconfig': '1', 'do_savedefconfig'=
: '1', 'do_listtasks': '1', 'do_devshell': '1', 'do_clean': '1', 'do_cleana=
ll': '1', 'do_checkuri': '1', 'do_checkuriall': '1'}}
_task_deps=3D"{'noexec': {'do_package_write': '1', 'do_build': '1'}, 'tasks=
': ['do_patch', 'do_populate_sysroot', 'do_populate_sysroot_setscene', 'do_=
listtasks', 'do_clean', 'do_checkuri', 'do_checkuriall', 'do_fetchall', 'do=
_buildall', 'do_fetch', 'do_unpack', 'do_configure', 'do_compile', 'do_inst=
all', 'do_build', 'do_cleansstate', 'do_cleanall', 'do_package', 'do_packag=
e_setscene', 'do_package_write', 'do_package_write_rpm_setscene', 'do_packa=
ge_write_rpm', 'do_devshell', 'do_populate_lic', 'do_populate_lic_setscene'=
, 'do_deploy_setscene', 'do_compile_kernelmodules', 'do_savedefconfig', 'do=
_menuconfig', 'do_sizecheck', 'do_uboot_mkimage', 'do_deploy'], 'rdeptask':=
 {'do_package_write_rpm': 'do_package'}, 'recrdeptask': {'do_buildall': 'do=
_build', 'do_checkuriall': 'do_checkuri', 'do_fetchall': 'do_fetch', 'do_bu=
ild': ' do_deploy do_package_write'}, 'umask': {'do_install': 18, 'do_confi=
gure': 18, 'do_package': 18, 'do_populate_sysroot': '022', 'do_compile': 18=
, 'do_package_write_rpm': '022'}, 'depends': {'do_menuconfig': ' ncurses-na=
tive:do_populate_sysroot', 'do_install': ' virtual/fakeroot-native:do_popul=
ate_sysroot', 'do_configure': ' ', 'do_package_write_rpm': ' rpm-native:do_=
populate_sysroot virtual/fakeroot-native:do_populate_sysroot', 'do_fetch': =
' git-native:do_populate_sysroot', 'do_patch': 'quilt-native:do_populate_sy=
sroot', 'do_package': ' virtual/fakeroot-native:do_populate_sysroot rpm-nat=
ive:do_populate_sysroot file-native:do_populate_sysroot pax-utils-native:do=
_populate_sysroot prelink-native:do_populate_sysroot'}, 'fakeroot': {'do_in=
stall': 1, 'do_package_setscene': 1, 'do_package_write_rpm': 1, 'do_package=
': 1, 'do_package_write_rpm_setscene': 1}, 'parents': {'do_configure': ['do=
_patch', 'do_unpack'], 'do_package': ['do_populate_lic', 'do_install'], 'do=
_package_write': ['do_package_write_rpm', 'do_package'], 'do_savedefconfig'=
: ['do_configure'], 'do_fetchall': ['do_fetch'], 'do_compile': ['do_configu=
re'], 'do_cleanall': ['do_cleansstate'], 'do_checkuri': [], 'do_unpack': ['=
do_fetch'], 'do_menuconfig': ['do_configure'], 'do_populate_lic': ['do_patc=
h'], 'do_build': ['do_deploy', 'do_package_write', 'do_package', 'do_popula=
te_sysroot'], 'do_fetch': [], 'do_devshell': ['do_patch'], 'do_populate_sys=
root': ['do_install'], 'do_populate_sysroot_setscene': [], 'do_uboot_mkimag=
e': ['do_compile'], 'do_checkuriall': ['do_checkuri'], 'do_install': ['do_u=
boot_mkimage', 'do_sizecheck', 'do_compile_kernelmodules', 'do_compile'], '=
do_populate_lic_setscene': [], 'do_listtasks': [], 'do_clean': [], 'do_patc=
h': ['do_unpack'], 'do_deploy': ['do_install'], 'do_compile_kernelmodules':=
 ['do_compile'], 'do_buildall': ['do_build'], 'do_package_setscene': [], 'd=
o_package_write_rpm': ['do_package'], 'do_deploy_setscene': [], 'do_package=
_write_rpm_setscene': [], 'do_sizecheck': ['do_compile'], 'do_cleansstate':=
 ['do_clean']}, 'deptask': {'do_configure': 'do_populate_sysroot', 'do_pack=
age': ' do_package'}, 'nostamp': {'do_menuconfig': '1', 'do_savedefconfig':=
 '1', 'do_listtasks': '1', 'do_devshell': '1', 'do_clean': '1', 'do_cleanal=
l': '1', 'do_checkuri': '1', 'do_checkuriall': '1'}}"
# PSEUDO_BUILD=3D0
PSEUDO_BUILD=3D"0"
# FILES_SOLIBSDEV=3D${base_libdir}/lib*${SOLIBSDEV} ${libdir}/lib*${SOLIBSD=
EV}
FILES_SOLIBSDEV=3D"/lib/lib*.so /usr/lib/lib*.so"
# HOST_LOADLIBES=3D-lncurses
HOST_LOADLIBES=3D"-lncurses"
# BB_BASEHASH_task-do_populate_sysroot_setscene=3D3bdcbad02cc5fbfdbf0709766=
880eac2
BB_BASEHASH_task-do_populate_sysroot_setscene=3D"3bdcbad02cc5fbfdbf07097668=
80eac2"
# PREFERRED_PROVIDER_virtual/update-alternatives=3Dupdate-alternatives-cwor=
th
PREFERRED_PROVIDER_virtual/update-alternatives=3D"update-alternatives-cwort=
h"
# DOTDEBUG-dbg=3D${bindir}/.debug ${sbindir}/.debug ${libexecdir}/.debug ${=
libdir}/.debug ${base_bindir}/.debug ${base_sbindir}/.debug ${base_libdir}/=
.debug ${libdir}/${BPN}/.debug ${libdir}/matchbox-panel/.debug /usr/src/deb=
ug
DOTDEBUG-dbg=3D"/usr/bin/.debug /usr/sbin/.debug /usr/libexec/.debug /usr/l=
ib/.debug /bin/.debug /sbin/.debug /lib/.debug /usr/lib/linux-xilinx/.debug=
 /usr/lib/matchbox-panel/.debug /usr/src/debug"
# PACKAGE_ARCHS=3Dall any noarch ${PACKAGE_EXTRA_ARCHS} ${MACHINE_ARCH}
PACKAGE_ARCHS=3D"all any noarch powerpc-nf ppc440 virtex5"
# PACKAGE_ARCH=3D${MACHINE_ARCH}
PACKAGE_ARCH=3D"virtex5"
# EXTRA_OECONF=3D
# SHLIBSWORKDIR=3D${WORKDIR}/shlibs
SHLIBSWORKDIR=3D"/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-x=
ilinx-3.3.0-r0/shlibs"
# PRAUTOINX=3D${PF}
PRAUTOINX=3D"linux-xilinx-3.3.0-r0"
# BUILD_LD_ARCH=3D
# BB_BASEHASH_task-do_fetchall=3Dfdc376fd264c2fc126ec182f0a53ca8a
BB_BASEHASH_task-do_fetchall=3D"fdc376fd264c2fc126ec182f0a53ca8a"
# RPROVIDES=3D
# RPMDEPS=3D${STAGING_LIBDIR_NATIVE}/rpm/bin/rpmdeps-oecore --macros ${STAG=
ING_LIBDIR_NATIVE}/rpm/macros --define '_rpmfc_magic_path ${STAGING_DIR_NAT=
IVE}${datadir_native}/misc/magic.mgc' --rpmpopt ${STAGING_LIBDIR_NATIVE}/rp=
m/rpmpopt
RPMDEPS=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/rpm/bin=
/rpmdeps-oecore --macros /tool/yocto/poky/build/tmp/sysroots/x86_64-linux/u=
sr/lib/rpm/macros --define '_rpmfc_magic_path /tool/yocto/poky/build/tmp/sy=
sroots/x86_64-linux/usr/share/misc/magic.mgc' --rpmpopt /tool/yocto/poky/bu=
ild/tmp/sysroots/x86_64-linux/usr/lib/rpm/rpmpopt"
# base_libdir_nativesdk=3D/lib
base_libdir_nativesdk=3D"/lib"
# PACKAGEFUNCS=3Dpackage_get_auto_pr                 perform_packagecopy   =
              ${PACKAGE_PREPROCESS_FUNCS} 		package_do_split_locales 		spli=
t_and_strip_files 		fixup_perms 		populate_packages 		package_do_filedeps 	=
	package_do_shlibs 		package_do_pkgconfig 		read_shlibdeps 		package_depcha=
ins 		emit_pkgdata  do_package_qa=20
PACKAGEFUNCS=3D"package_get_auto_pr                 perform_packagecopy    =
              kernel_package_preprocess 		package_do_split_locales 		split_=
and_strip_files 		fixup_perms 		populate_packages 		package_do_filedeps 		p=
ackage_do_shlibs 		package_do_pkgconfig 		read_shlibdeps 		package_depchain=
s 		emit_pkgdata  do_package_qa"
# PWD=3D/tool/yocto/poky/build
export PWD=3D"/tool/yocto/poky/build"
# BZRDIR=3D${CO_DIR}/bzr
BZRDIR=3D"/tool/yocto/poky/build/downloads/bzr"
# GPE_SVN=3Dsvn://projects.linuxtogo.org/svn/gpe/trunk/base;module=3D${PN}
GPE_SVN=3D"svn://projects.linuxtogo.org/svn/gpe/trunk/base;module=3Dlinux-x=
ilinx"
# EXTENDPKGV=3D${EXTENDPKGEVER}${PKGV}-${PKGR}
EXTENDPKGV=3D"3.3.0-r0"
# PREFERRED_PROVIDER_virtual/db-native=3Ddb-native
PREFERRED_PROVIDER_virtual/db-native=3D"db-native"
# BB_VERSION=3D1.15.2
BB_VERSION=3D"1.15.2"
# SSTATETASKS=3Ddo_deploy do_package_write_rpm do_populate_lic do_package d=
o_populate_sysroot
SSTATETASKS=3D"do_deploy do_package_write_rpm do_populate_lic do_package do=
_populate_sysroot"
# SOLIBS_darwin=3D.*.dylib
SOLIBS_darwin=3D".*.dylib"
# PREFERRED_PROVIDER_virtual/db=3Ddb
PREFERRED_PROVIDER_virtual/db=3D"db"
# BP=3D${BPN}-${PV}
BP=3D"linux-xilinx-3.3.0"
# BBFILE_PATTERN_normal=3D^/tool/yocto/poky/meta/
BBFILE_PATTERN_normal=3D"^/tool/yocto/poky/meta/"
# PREFERRED_PROVIDER_virtual/x86_64-pokysdk-linux-libc-for-gcc-nativesdk=3D=
${TCLIBC}-nativesdk
PREFERRED_PROVIDER_virtual/x86_64-pokysdk-linux-libc-for-gcc-nativesdk=3D"e=
glibc-nativesdk"
# module_conf_af_packet=3Dalias net-pf-17 af_packet
module_conf_af_packet=3D"alias net-pf-17 af_packet"
# DEBUGFILEDIRECTORY-dbg=3D/usr/lib/debug /usr/src/debug
DEBUGFILEDIRECTORY-dbg=3D"/usr/lib/debug /usr/src/debug"
# PREFERRED_VERSION_uclibc=3D${UCLIBCVERSION}
PREFERRED_VERSION_uclibc=3D"0.9.33"
# PREFERRED_PROVIDER_xf86-video-intel=3Dxf86-video-intel
PREFERRED_PROVIDER_xf86-video-intel=3D"xf86-video-intel"
# module_conf_l2cap=3Dalias bt-proto-0 l2cap
module_conf_l2cap=3D"alias bt-proto-0 l2cap"
# BB_GENERATE_MIRROR_TARBALLS=3D0
BB_GENERATE_MIRROR_TARBALLS=3D"0"
# SOURCE_MIRROR_FETCH=3DNone
# PSEUDO_PASSWD=3D${STAGING_DIR_TARGET}
PSEUDO_PASSWD=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5"
# T=3D${WORKDIR}/temp
T=3D"/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-=
r0/temp"
# LINKER_HASH_STYLE_mips64=3Dsysv
LINKER_HASH_STYLE_mips64=3D"sysv"
# COMMERCIAL_VIDEO_PLUGINS=3D
# BUILD_CC_ARCH=3D
# PREFERRED_VERSION=3DNone
# LINUXLIBCVERSION=3D3.4
LINUXLIBCVERSION=3D"3.4"
# SUMMARY_${PN}-staticdev=3DNone
# SECTION_linux-xilinx-dev=3Ddevel
SECTION_linux-xilinx-dev=3D"devel"
# FILES_${PN}-bin=3DNone
# BB_BASEHASH_task-do_build=3Dfdc376fd264c2fc126ec182f0a53ca8a
BB_BASEHASH_task-do_build=3D"fdc376fd264c2fc126ec182f0a53ca8a"
# MIRRORS=3Dftp://.*/.*      http://downloads.yoctoproject.org/mirror/sourc=
es/ \n http://.*/.*     http://downloads.yoctoproject.org/mirror/sources/ \=
n https://.*/.*    http://downloads.yoctoproject.org/mirror/sources/ \n  ${=
DEBIAN_MIRROR}/main	http://snapshot.debian.org/archive/debian-archive/20120=
328T092752Z/debian/pool/ \n ${DEBIAN_MIRROR}	ftp://ftp.de.debian.org/debian=
/pool \n ${DEBIAN_MIRROR}	ftp://ftp.au.debian.org/debian/pool \n ${DEBIAN_M=
IRROR}	ftp://ftp.cl.debian.org/debian/pool \n ${DEBIAN_MIRROR}	ftp://ftp.hr=
.debian.org/debian/pool \n ${DEBIAN_MIRROR}	ftp://ftp.fi.debian.org/debian/=
pool \n ${DEBIAN_MIRROR}	ftp://ftp.hk.debian.org/debian/pool \n ${DEBIAN_MI=
RROR}	ftp://ftp.hu.debian.org/debian/pool \n ${DEBIAN_MIRROR}	ftp://ftp.ie.=
debian.org/debian/pool \n ${DEBIAN_MIRROR}	ftp://ftp.it.debian.org/debian/p=
ool \n ${DEBIAN_MIRROR}	ftp://ftp.jp.debian.org/debian/pool \n ${DEBIAN_MIR=
ROR}	ftp://ftp.no.debian.org/debian/pool \n ${DEBIAN_MIRROR}	ftp://ftp.pl.d=
ebian.org/debian/pool \n ${DEBIAN_MIRROR}	ftp://ftp.ro.debian.org/debian/po=
ol \n ${DEBIAN_MIRROR}	ftp://ftp.si.debian.org/debian/pool \n ${DEBIAN_MIRR=
OR}	ftp://ftp.es.debian.org/debian/pool \n ${DEBIAN_MIRROR}	ftp://ftp.se.de=
bian.org/debian/pool \n ${DEBIAN_MIRROR}	ftp://ftp.tr.debian.org/debian/poo=
l \n ${GNU_MIRROR}	ftp://mirrors.kernel.org/gnu \n ${KERNELORG_MIRROR}	http=
://www.kernel.org/pub \n ftp://ftp.gnupg.org/gcrypt/     ftp://ftp.franken.=
de/pub/crypt/mirror/ftp.gnupg.org/gcrypt/ \n ftp://ftp.gnupg.org/gcrypt/   =
  ftp://ftp.surfnet.nl/pub/security/gnupg/ \n ftp://ftp.gnupg.org/gcrypt/  =
   http://gulus.USherbrooke.ca/pub/appl/GnuPG/ \n ftp://dante.ctan.org/tex-=
archive ftp://ftp.fu-berlin.de/tex/CTAN \n ftp://dante.ctan.org/tex-archive=
 http://sunsite.sut.ac.jp/pub/archives/ctan/ \n ftp://dante.ctan.org/tex-ar=
chive http://ctan.unsw.edu.au/ \n ftp://ftp.gnutls.org/pub/gnutls ftp://ftp=
.gnutls.org/pub/gnutls/ \n ftp://ftp.gnutls.org/pub/gnutls ftp://ftp.gnupg.=
org/gcrypt/gnutls/ \n ftp://ftp.gnutls.org/pub/gnutls http://www.mirrors.wi=
retapped.net/security/network-security/gnutls/ \n ftp://ftp.gnutls.org/pub/=
gnutls ftp://ftp.mirrors.wiretapped.net/pub/security/network-security/gnutl=
s/ \n ftp://ftp.gnutls.org/pub/gnutls http://josefsson.org/gnutls/releases/=
 \n http://ftp.info-zip.org/pub/infozip/src/ http://mirror.switch.ch/ftp/mi=
rror/infozip/src/ \n http://ftp.info-zip.org/pub/infozip/src/ ftp://sunsite=
.icm.edu.pl/pub/unix/archiving/info-zip/src/ \n ftp://lsof.itap.purdue.edu/=
pub/tools/unix/lsof/  ftp://ftp.cerias.purdue.edu/pub/tools/unix/sysutils/l=
sof/ \n ftp://lsof.itap.purdue.edu/pub/tools/unix/lsof/  ftp://ftp.tau.ac.i=
l/pub/unix/admin/ \n ftp://lsof.itap.purdue.edu/pub/tools/unix/lsof/  ftp:/=
/ftp.cert.dfn.de/pub/tools/admin/lsof/ \n ftp://lsof.itap.purdue.edu/pub/to=
ols/unix/lsof/  ftp://ftp.fu-berlin.de/pub/unix/tools/lsof/ \n ftp://lsof.i=
tap.purdue.edu/pub/tools/unix/lsof/  ftp://ftp.kaizo.org/pub/lsof/ \n ftp:/=
/lsof.itap.purdue.edu/pub/tools/unix/lsof/  ftp://ftp.tu-darmstadt.de/pub/s=
ysadmin/lsof/ \n ftp://lsof.itap.purdue.edu/pub/tools/unix/lsof/  ftp://ftp=
.tux.org/pub/sites/vic.cc.purdue.edu/tools/unix/lsof/ \n ftp://lsof.itap.pu=
rdue.edu/pub/tools/unix/lsof/  ftp://gd.tuwien.ac.at/utils/admin-tools/lsof=
/ \n ftp://lsof.itap.purdue.edu/pub/tools/unix/lsof/  ftp://sunsite.ualbert=
a.ca/pub/Mirror/lsof/ \n ftp://lsof.itap.purdue.edu/pub/tools/unix/lsof/  f=
tp://the.wiretapped.net/pub/security/host-security/lsof/ \n http://www.apac=
he.org/dist  http://archive.apache.org/dist \n cvs://.*/.*     http://downl=
oads.yoctoproject.org/mirror/sources/ \n svn://.*/.*     http://downloads.y=
octoproject.org/mirror/sources/ \n git://.*/.*     http://downloads.yoctopr=
oject.org/mirror/sources/ \n hg://.*/.*      http://downloads.yoctoproject.=
org/mirror/sources/ \n bzr://.*/.*     http://downloads.yoctoproject.org/mi=
rror/sources/ \n svk://.*/.*     http://downloads.yoctoproject.org/mirror/s=
ources/ \n p4://.*/.*      http://downloads.yoctoproject.org/mirror/sources=
/ \n osc://.*/.*     http://downloads.yoctoproject.org/mirror/sources/ \n h=
ttps?$://.*/.* http://downloads.yoctoproject.org/mirror/sources/ \n ftp://.=
*/.*     http://downloads.yoctoproject.org/mirror/sources/ \n cvs://.*/.*  =
   http://sources.openembedded.org/ \n svn://.*/.*     http://sources.opene=
mbedded.org/ \n git://.*/.*     http://sources.openembedded.org/ \n hg://.*=
/.*      http://sources.openembedded.org/ \n bzr://.*/.*     http://sources=
.openembedded.org/ \n svk://.*/.*     http://sources.openembedded.org/ \n p=
4://.*/.*      http://sources.openembedded.org/ \n osc://.*/.*     http://s=
ources.openembedded.org/ \n https?$://.*/.* http://sources.openembedded.org=
/ \n ftp://.*/.*     http://sources.openembedded.org/ \n=20
MIRRORS=3D"ftp://.*/.*      http://downloads.yoctoproject.org/mirror/source=
s/ \n http://.*/.*     http://downloads.yoctoproject.org/mirror/sources/ \n=
 https://.*/.*    http://downloads.yoctoproject.org/mirror/sources/ \n  ftp=
://ftp.debian.org/debian/pool/main	http://snapshot.debian.org/archive/debia=
n-archive/20120328T092752Z/debian/pool/ \n ftp://ftp.debian.org/debian/pool=
	ftp://ftp.de.debian.org/debian/pool \n ftp://ftp.debian.org/debian/pool	ft=
p://ftp.au.debian.org/debian/pool \n ftp://ftp.debian.org/debian/pool	ftp:/=
/ftp.cl.debian.org/debian/pool \n ftp://ftp.debian.org/debian/pool	ftp://ft=
p.hr.debian.org/debian/pool \n ftp://ftp.debian.org/debian/pool	ftp://ftp.f=
i.debian.org/debian/pool \n ftp://ftp.debian.org/debian/pool	ftp://ftp.hk.d=
ebian.org/debian/pool \n ftp://ftp.debian.org/debian/pool	ftp://ftp.hu.debi=
an.org/debian/pool \n ftp://ftp.debian.org/debian/pool	ftp://ftp.ie.debian.=
org/debian/pool \n ftp://ftp.debian.org/debian/pool	ftp://ftp.it.debian.org=
/debian/pool \n ftp://ftp.debian.org/debian/pool	ftp://ftp.jp.debian.org/de=
bian/pool \n ftp://ftp.debian.org/debian/pool	ftp://ftp.no.debian.org/debia=
n/pool \n ftp://ftp.debian.org/debian/pool	ftp://ftp.pl.debian.org/debian/p=
ool \n ftp://ftp.debian.org/debian/pool	ftp://ftp.ro.debian.org/debian/pool=
 \n ftp://ftp.debian.org/debian/pool	ftp://ftp.si.debian.org/debian/pool \n=
 ftp://ftp.debian.org/debian/pool	ftp://ftp.es.debian.org/debian/pool \n ft=
p://ftp.debian.org/debian/pool	ftp://ftp.se.debian.org/debian/pool \n ftp:/=
/ftp.debian.org/debian/pool	ftp://ftp.tr.debian.org/debian/pool \n ftp://ft=
p.gnu.org/gnu	ftp://mirrors.kernel.org/gnu \n http://kernel.org/pub	http://=
www.kernel.org/pub \n ftp://ftp.gnupg.org/gcrypt/     ftp://ftp.franken.de/=
pub/crypt/mirror/ftp.gnupg.org/gcrypt/ \n ftp://ftp.gnupg.org/gcrypt/     f=
tp://ftp.surfnet.nl/pub/security/gnupg/ \n ftp://ftp.gnupg.org/gcrypt/     =
http://gulus.USherbrooke.ca/pub/appl/GnuPG/ \n ftp://dante.ctan.org/tex-arc=
hive ftp://ftp.fu-berlin.de/tex/CTAN \n ftp://dante.ctan.org/tex-archive ht=
tp://sunsite.sut.ac.jp/pub/archives/ctan/ \n ftp://dante.ctan.org/tex-archi=
ve http://ctan.unsw.edu.au/ \n ftp://ftp.gnutls.org/pub/gnutls ftp://ftp.gn=
utls.org/pub/gnutls/ \n ftp://ftp.gnutls.org/pub/gnutls ftp://ftp.gnupg.org=
/gcrypt/gnutls/ \n ftp://ftp.gnutls.org/pub/gnutls http://www.mirrors.wiret=
apped.net/security/network-security/gnutls/ \n ftp://ftp.gnutls.org/pub/gnu=
tls ftp://ftp.mirrors.wiretapped.net/pub/security/network-security/gnutls/ =
\n ftp://ftp.gnutls.org/pub/gnutls http://josefsson.org/gnutls/releases/ \n=
 http://ftp.info-zip.org/pub/infozip/src/ http://mirror.switch.ch/ftp/mirro=
r/infozip/src/ \n http://ftp.info-zip.org/pub/infozip/src/ ftp://sunsite.ic=
m.edu.pl/pub/unix/archiving/info-zip/src/ \n ftp://lsof.itap.purdue.edu/pub=
/tools/unix/lsof/  ftp://ftp.cerias.purdue.edu/pub/tools/unix/sysutils/lsof=
/ \n ftp://lsof.itap.purdue.edu/pub/tools/unix/lsof/  ftp://ftp.tau.ac.il/p=
ub/unix/admin/ \n ftp://lsof.itap.purdue.edu/pub/tools/unix/lsof/  ftp://ft=
p.cert.dfn.de/pub/tools/admin/lsof/ \n ftp://lsof.itap.purdue.edu/pub/tools=
/unix/lsof/  ftp://ftp.fu-berlin.de/pub/unix/tools/lsof/ \n ftp://lsof.itap=
.purdue.edu/pub/tools/unix/lsof/  ftp://ftp.kaizo.org/pub/lsof/ \n ftp://ls=
of.itap.purdue.edu/pub/tools/unix/lsof/  ftp://ftp.tu-darmstadt.de/pub/sysa=
dmin/lsof/ \n ftp://lsof.itap.purdue.edu/pub/tools/unix/lsof/  ftp://ftp.tu=
x.org/pub/sites/vic.cc.purdue.edu/tools/unix/lsof/ \n ftp://lsof.itap.purdu=
e.edu/pub/tools/unix/lsof/  ftp://gd.tuwien.ac.at/utils/admin-tools/lsof/ \=
n ftp://lsof.itap.purdue.edu/pub/tools/unix/lsof/  ftp://sunsite.ualberta.c=
a/pub/Mirror/lsof/ \n ftp://lsof.itap.purdue.edu/pub/tools/unix/lsof/  ftp:=
//the.wiretapped.net/pub/security/host-security/lsof/ \n http://www.apache.=
org/dist  http://archive.apache.org/dist \n cvs://.*/.*     http://download=
s.yoctoproject.org/mirror/sources/ \n svn://.*/.*     http://downloads.yoct=
oproject.org/mirror/sources/ \n git://.*/.*     http://downloads.yoctoproje=
ct.org/mirror/sources/ \n hg://.*/.*      http://downloads.yoctoproject.org=
/mirror/sources/ \n bzr://.*/.*     http://downloads.yoctoproject.org/mirro=
r/sources/ \n svk://.*/.*     http://downloads.yoctoproject.org/mirror/sour=
ces/ \n p4://.*/.*      http://downloads.yoctoproject.org/mirror/sources/ \=
n osc://.*/.*     http://downloads.yoctoproject.org/mirror/sources/ \n http=
s?$://.*/.* http://downloads.yoctoproject.org/mirror/sources/ \n ftp://.*/.=
*     http://downloads.yoctoproject.org/mirror/sources/ \n cvs://.*/.*     =
http://sources.openembedded.org/ \n svn://.*/.*     http://sources.openembe=
dded.org/ \n git://.*/.*     http://sources.openembedded.org/ \n hg://.*/.*=
      http://sources.openembedded.org/ \n bzr://.*/.*     http://sources.op=
enembedded.org/ \n svk://.*/.*     http://sources.openembedded.org/ \n p4:/=
/.*/.*      http://sources.openembedded.org/ \n osc://.*/.*     http://sour=
ces.openembedded.org/ \n https?$://.*/.* http://sources.openembedded.org/ \=
n ftp://.*/.*     http://sources.openembedded.org/ \n"
# LOG_DIR=3D${TMPDIR}/log
LOG_DIR=3D"/tool/yocto/poky/build/tmp/log"
# DEPCHAIN_PRE=3D
# GNOME_GIT=3Dgit://git.gnome.org
GNOME_GIT=3D"git://git.gnome.org"
# NO32LIBS=3D1
NO32LIBS=3D"1"
# PACKAGE_EXTRA_ARCHS_tune-ppc440=3D${PACKAGE_EXTRA_ARCHS_tune-powerpc-nf} =
ppc440
PACKAGE_EXTRA_ARCHS_tune-ppc440=3D"powerpc-nf ppc440"
# PREFERRED_PROVIDER_gzip-native=3Dpigz-native
PREFERRED_PROVIDER_gzip-native=3D"pigz-native"
# _=3D/tool/yocto/poky/scripts/bitbake
_=3D"/tool/yocto/poky/scripts/bitbake"
# PREFERRED_VERSION_u-boot_virtex5=3DNone
# PREFERRED_PROVIDER_virtual/xserver=3Dxserver-xorg
PREFERRED_PROVIDER_virtual/xserver=3D"xserver-xorg"
# SPDXLICENSEMAP=3DNone
# PN=3D${@bb.parse.BBHandler.vars_from_file(d.getVar('FILE'),d)[0] or 'defa=
ultpkgname'}
PN=3D"linux-xilinx"
# FREEDESKTOP_CVS=3Dcvs://anoncvs:anoncvs@anoncvs.freedesktop.org/cvs
FREEDESKTOP_CVS=3D"cvs://anoncvs:anoncvs@anoncvs.freedesktop.org/cvs"
# SANITY_ABIFILE=3D${TMPDIR}/abi_version
SANITY_ABIFILE=3D"/tool/yocto/poky/build/tmp/abi_version"
# DEBUG_OPTIMIZATION=3D-O -fno-omit-frame-pointer ${DEBUG_FLAGS} -pipe
DEBUG_OPTIMIZATION=3D"-O -fno-omit-frame-pointer -g -feliminate-unused-debu=
g-types -pipe"
# libdir_native=3D${prefix_native}/lib
libdir_native=3D"/usr/lib"
# MACHINE_EXTRA_RRECOMMENDS=3D
# PATCH_GET=3D0
export PATCH_GET=3D"0"
# SITE_CONF_VERSION=3D1
SITE_CONF_VERSION=3D"1"
# CXXFLAGS=3D${TARGET_CXXFLAGS} -fvisibility-inlines-hidden
export CXXFLAGS=3D"-O2 -pipe -g -feliminate-unused-debug-types -fpermissive=
 -fvisibility-inlines-hidden"
# RDEPENDS_${PN}-dev=3DNone
# PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}gcc-intermediate=3DNone
# DISPLAY=3D:0
DISPLAY=3D":0"
# NM=3D${HOST_PREFIX}nm
export NM=3D"powerpc-poky-linux-nm"
# SEPPUKU_ADDCOMMENT=3DNone
# DEPENDS=3D  virtual/powerpc-poky-linux-gcc kmod-native virtual/powerpc-po=
ky-linux-gcc update-modules u-boot-mkimage-native dtc-native
DEPENDS=3D"virtual/powerpc-poky-linux-gcc kmod-native virtual/powerpc-poky-=
linux-gcc update-modules u-boot-mkimage-native dtc-native"
# PREFERRED_PROVIDER_virtual/fakeroot-native=3Dpseudo-native
PREFERRED_PROVIDER_virtual/fakeroot-native=3D"pseudo-native"
# TARGET_LINK_HASH_STYLE=3D${@['-Wl,--hash-style=3Dgnu',''][d.getVar('LINKE=
R_HASH_STYLE', True) !=3D 'gnu']}
TARGET_LINK_HASH_STYLE=3D"-Wl,--hash-style=3Dgnu"
# DISTRO_FEATURES_BACKFILL=3Dpulseaudio
DISTRO_FEATURES_BACKFILL=3D"pulseaudio"
# AUTO_LIBNAME_PKGS=3D${PACKAGES}
AUTO_LIBNAME_PKGS=3D"kernel kernel-base kernel-vmlinux kernel-image kernel-=
dev kernel-misc kernel-devicetree"
# WORKDIR=3D${TMPDIR}/work/${MULTIMACH_TARGET_SYS}/${PF}
WORKDIR=3D"/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-=
3.3.0-r0"
# BUILDSDK_CFLAGS=3D${BUILDSDK_CPPFLAGS} ${BUILD_OPTIMIZATION}
BUILDSDK_CFLAGS=3D"-isystem/tool/yocto/poky/build/tmp/sysroots/virtex5/usr/=
include -O2 -pipe"
# SECTION_linux-xilinx-dbg=3Ddevel
SECTION_linux-xilinx-dbg=3D"devel"
# F77=3D${CCACHE}${HOST_PREFIX}g77 ${HOST_CC_ARCH}${TOOLCHAIN_OPTIONS}
export F77=3D"powerpc-poky-linux-g77  -m32  -msoft-float -mcpu=3D440 --sysr=
oot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5"
# DISTRO_FEATURES_LIBC=3D${DISTRO_FEATURES_LIBC_DEFAULT}
DISTRO_FEATURES_LIBC=3D"ipv4 ipv6 libc-backtrace libc-big-macros libc-bsd l=
ibc-cxx-tests libc-catgets libc-charsets libc-crypt 					libc-crypt-ufc lib=
c-db-aliases libc-envz libc-fcvt libc-fmtmsg libc-fstab libc-ftraverse 				=
	libc-getlogin libc-idn libc-inet-anl libc-libm libc-libm-big libc-locales =
libc-locale-code 					libc-memusage libc-nis libc-nsswitch libc-rcmd libc-r=
tld-debug libc-spawn libc-streams libc-sunrpc 					libc-utmp libc-utmpx lib=
c-wordexp libc-posix-clang-wchar libc-posix-regexp libc-posix-regexp-glibc =
					libc-posix-wchar-io"
# SDK_AS_ARCH=3D${BUILD_AS_ARCH}
# GNOME_KEYRING_PID=3D4294
GNOME_KEYRING_PID=3D"4294"
# BB_HASHFILENAME=3D${SSTATE_PKGNAME}
BB_HASHFILENAME=3D"sstate-linux-xilinx-virtex5-poky-linux-3.3.0-r0-virtex5-=
2-${BB_TASKHASH}"
# SSTATE_PKGARCH=3D${PACKAGE_ARCH}
SSTATE_PKGARCH=3D"virtex5"
# METADATA_REVISION=3D${@base_detect_revision(d)}
METADATA_REVISION=3D"b876f42821383bf0069ee49b607ba06614417fba"
# UBOOT_ARCH=3D${@map_uboot_arch(d.getVar('ARCH', True), d)}
export UBOOT_ARCH=3D"ppc"
# EXTRA_IMAGEDEPENDS=3D u-boot-xilinx
EXTRA_IMAGEDEPENDS=3D"u-boot-xilinx"
# BUILD_STRIP=3D${BUILD_PREFIX}strip
export BUILD_STRIP=3D"strip"
# libdir_nativesdk=3D${prefix_nativesdk}/lib
libdir_nativesdk=3D"/usr/lib"
# BB_BASEHASH_task-do_package_setscene=3D79b3a3c162c8fd538cfa409bb9455043
BB_BASEHASH_task-do_package_setscene=3D"79b3a3c162c8fd538cfa409bb9455043"
# TCLIBCAPPEND=3D
# STAGING_DIR=3D${TMPDIR}/sysroots
STAGING_DIR=3D"/tool/yocto/poky/build/tmp/sysroots"
# STAGING_BINDIR_TOOLCHAIN=3D${STAGING_DIR_NATIVE}${bindir_native}/${TUNE_P=
KGARCH}${TARGET_VENDOR}-${TARGET_OS}
STAGING_BINDIR_TOOLCHAIN=3D"/tool/yocto/poky/build/tmp/sysroots/x86_64-linu=
x/usr/bin/ppc440-poky-linux"
# FILES_linux-xilinx-dbg=3D${@d.getVar(['DOTDEBUG-dbg', 'DEBUGFILEDIRECTORY=
-dbg'][d.getVar('PACKAGE_DEBUG_SPLIT_STYLE', True) =3D=3D 'debug-file-direc=
tory'], True)}
FILES_linux-xilinx-dbg=3D"/usr/bin/.debug /usr/sbin/.debug /usr/libexec/.de=
bug /usr/lib/.debug /bin/.debug /sbin/.debug /lib/.debug /usr/lib/linux-xil=
inx/.debug /usr/lib/matchbox-panel/.debug /usr/src/debug"
# BB_SIGNATURE_HANDLER=3DOEBasicHash
BB_SIGNATURE_HANDLER=3D"OEBasicHash"
# LINKER_HASH_STYLE=3Dgnu
LINKER_HASH_STYLE=3D"gnu"
# PREFERRED_VERSION_linux-yocto_qemumips=3D3.4%
PREFERRED_VERSION_linux-yocto_qemumips=3D"3.4%"
# PREFERRED_PROVIDER_virtual/powerpc-poky-linux-gcc-initial=3Dgcc-cross-ini=
tial
PREFERRED_PROVIDER_virtual/powerpc-poky-linux-gcc-initial=3D"gcc-cross-init=
ial"
# VIRTUAL-RUNTIME_alsa-state=3Dalsa-state
VIRTUAL-RUNTIME_alsa-state=3D"alsa-state"
# SSH_AGENT_PID=3D4340
SSH_AGENT_PID=3D"4340"
# XDG_SESSION_COOKIE=3D7e784a950e35e8c870d2db2900000013-1340396892.331324-5=
97899210
XDG_SESSION_COOKIE=3D"7e784a950e35e8c870d2db2900000013-1340396892.331324-59=
7899210"
# LICENSE=3DGPLv2
LICENSE=3D"GPLv2"
# PACKAGES_DYNAMIC=3D${PN}-locale-* kernel-module-* kernel-image-* kernel-f=
irmware-*
PACKAGES_DYNAMIC=3D"linux-xilinx-locale-* kernel-module-* kernel-image-* ke=
rnel-firmware-*"
# LOCALCONF_VERSION=3D1
LOCALCONF_VERSION=3D"1"
# MULTILIB_VARIANTS=3D
# TARGET_CC_KERNEL_ARCH=3D
# PREFERRED_PROVIDER_console-tools=3Dkbd
PREFERRED_PROVIDER_console-tools=3D"kbd"
# SSTATEPREINSTFUNCS=3D
# SSH_AUTH_SOCK=3D/tmp/keyring-MhCyXy/ssh
SSH_AUTH_SOCK=3D"/tmp/keyring-MhCyXy/ssh"
# STAGING_DIR_TARGET=3D${STAGING_DIR}/${MACHINE}
STAGING_DIR_TARGET=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5"
# FILES_linux-xilinx-dev=3D${includedir} ${FILES_SOLIBSDEV} ${libdir}/*.la =
${libdir}/*.o ${libdir}/pkgconfig ${datadir}/pkgconfig ${datadir}/aclocal $=
{base_libdir}/*.o ${libdir}/${BPN}/*.la ${base_libdir}/*.la
FILES_linux-xilinx-dev=3D"/usr/include /lib/lib*.so /usr/lib/lib*.so /usr/l=
ib/*.la /usr/lib/*.o /usr/lib/pkgconfig /usr/share/pkgconfig /usr/share/acl=
ocal /lib/*.o /usr/lib/linux-xilinx/*.la /lib/*.la"
# PREFERRED_VERSION_gcc-runtime=3D${GCCVERSION}
PREFERRED_VERSION_gcc-runtime=3D"4.7%"
# OE_IMPORTS=3D os sys time oe.path oe.utils oe.data oe.packagegroup oe.sst=
atesig
OE_IMPORTS=3D"os sys time oe.path oe.utils oe.data oe.packagegroup oe.sstat=
esig"
# AUTOREV=3D${@bb.fetch2.get_autorev(d)}
AUTOREV=3D"AUTOINC"
# FETCHCOMMAND_svn=3D/usr/bin/env svn co ${SVNCOOPTS} ${SVNROOT} ${SVNMODUL=
E}
FETCHCOMMAND_svn=3D"/usr/bin/env svn co ${SVNCOOPTS} ${SVNROOT} ${SVNMODULE=
}"
# DEPLOY_DIR_DEB=3D${DEPLOY_DIR}/deb
DEPLOY_DIR_DEB=3D"/tool/yocto/poky/build/tmp/deploy/deb"
# DEPLOY_DIR_RPM=3D${DEPLOY_DIR}/rpm
DEPLOY_DIR_RPM=3D"/tool/yocto/poky/build/tmp/deploy/rpm"
# PREFERRED_VERSION_eglibc-locale=3D${EGLIBCVERSION}
PREFERRED_VERSION_eglibc-locale=3D"2.15"
# CLEANFUNCS=3D sstate_cleanall
CLEANFUNCS=3D"sstate_cleanall"
# STAGING_BINDIR_CROSS=3D${STAGING_BINDIR}/crossscripts
STAGING_BINDIR_CROSS=3D"/tool/yocto/poky/build/tmp/sysroots/virtex5/usr/bin=
/crossscripts"
# PALMTOP_USE_MULTITHREADED_QT=3DNone
# PREFERRED_VERSION_eglibc-initial=3D${EGLIBCVERSION}
PREFERRED_VERSION_eglibc-initial=3D"2.15"
do_fetchall() {
	:

}

do_build() {
	:

}

resolve_package_rpm() {
	local conffile=3D"$1"
	shift
	local pkg_name=3D""
	for solve in `cat ${conffile}`; do
		pkg_name=3D$(rpm -D "_dbpath $solve" -D "__dbi_txn create nofsync" -q --q=
f "%{packageorigin}\n" "$@" | grep -v "is not installed" || true)
		if [ -n "$pkg_name" -a "$pkg_name" !=3D "(none)" ]; then
			echo $pkg_name
			break;
		fi
	done

}

do_savedefconfig() {
	oe_runmake savedefconfig

}

do_uboot_mkimage() {
	if test "xuImage" =3D "xuImage" ; then
		if test ! -e arch/powerpc/boot/uImage ; then
			ENTRYPOINT=3D0x00000000
			if test -n "${UBOOT_ENTRYSYMBOL}"; then
				ENTRYPOINT=3D`powerpc-poky-linux-nm /tool/yocto/poky/build/tmp/work/vir=
tex5-poky-linux/linux-xilinx-3.3.0-r0/git/vmlinux | \
					awk '$3=3D=3D"${UBOOT_ENTRYSYMBOL}" {print $1}'`
			fi
			if test -e arch/powerpc/boot/compressed/vmlinux ; then
				powerpc-poky-linux-objcopy -O binary -R .note -R .comment -S arch/power=
pc/boot/compressed/vmlinux linux.bin
				uboot-mkimage -A ppc -O linux -T kernel -C none -a 0x00000000 -e $ENTRY=
POINT -n "Yocto (Built by Poky 7.0)/3.3.0/virtex5" -d linux.bin arch/powerp=
c/boot/uImage
				rm -f linux.bin
			else
				powerpc-poky-linux-objcopy -O binary -R .note -R .comment -S vmlinux li=
nux.bin
				rm -f linux.bin.gz
				gzip -9 linux.bin
				uboot-mkimage -A ppc -O linux -T kernel -C gzip -a 0x00000000 -e $ENTRY=
POINT -n "Yocto (Built by Poky 7.0)/3.3.0/virtex5" -d linux.bin.gz arch/pow=
erpc/boot/uImage
				rm -f linux.bin.gz
			fi
		fi
	fi

}

prelink_image() {
#	export PSEUDO_DEBUG=3D4
#	/bin/env | /bin/grep PSEUDO
#	echo "LD_LIBRARY_PATH=3D$LD_LIBRARY_PATH"
#	echo "LD_PRELOAD=3D$LD_PRELOAD"

	pre_prelink_size=3D`du -ks /tool/yocto/poky/build/tmp/work/virtex5-poky-li=
nux/linux-xilinx-3.3.0-r0/rootfs | awk '{size =3D $1 ; print size }'`
	echo "Size before prelinking $pre_prelink_size."

	# We need a prelink conf on the filesystem, add one if it's missing
	if [ ! -e /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-=
3.3.0-r0/rootfs/etc/prelink.conf ]; then
		cp /tool/yocto/poky/build/tmp/sysroots/x86_64-linux/etc/prelink.conf \
			/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-r0=
/rootfs/etc/prelink.conf
		dummy_prelink_conf=3Dtrue;
	else
		dummy_prelink_conf=3Dfalse;
	fi

	# prelink!
	/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/sbin/prelink --root /=
tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-r0/roo=
tfs -amR -N -c /etc/prelink.conf

	# Remove the prelink.conf if we had to add it.
	if [ "$dummy_prelink_conf" =3D "true" ]; then
		rm -f /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3=
.0-r0/rootfs/etc/prelink.conf
	fi

	pre_prelink_size=3D`du -ks /tool/yocto/poky/build/tmp/work/virtex5-poky-li=
nux/linux-xilinx-3.3.0-r0/rootfs | awk '{size =3D $1 ; print size }'`
	echo "Size after prelinking $pre_prelink_size."

}

do_sizecheck() {
	if [ ! -z "${KERNEL_IMAGE_MAXSIZE}" ]; then
		size=3D`ls -l arch/powerpc/boot/uImage | awk '{ print $5}'`
		if [ $size -ge ${KERNEL_IMAGE_MAXSIZE} ]; then
			rm arch/powerpc/boot/uImage
			die "This kernel (size=3D$size > ${KERNEL_IMAGE_MAXSIZE}) is too big for=
 your device. Please reduce the size of the kernel by making more of it mod=
ular."
		fi
	fi

}

bbdebug() {
	USAGE=3D'Usage: bbdebug [123] "message"'
	if [ $# -lt 2 ]; then
		bbfatal "$USAGE"
	fi

	# Strip off the debug level and ensure it is an integer
	DBGLVL=3D$1; shift
	if ! [[ "$DBGLVL" =3D~ ^[0-9]+ ]]; then
		bbfatal "$USAGE"
	fi

	# All debug output is printed to the logs
	echo "DEBUG: $*"

}

package_generate_rpm_conf() {
	# Update target packages
	package_generate_rpm_conf_common "/tool/yocto/poky/build/tmp/deploy/rpm/so=
lvedb" base_archs ml_archs

	# Update SDK packages
	package_generate_rpm_conf_common "/tool/yocto/poky/build/tmp/deploy/rpm/so=
lvedb-sdk" base_archs

}

oe_machinstall() {
	# Purpose: Install machine dependent files, if available
	#          If not available, check if there is a default
	#          If no default, just touch the destination
	# Example:
	#                $1  $2   $3         $4
	# oe_machinstall -m 0644 fstab /tool/yocto/poky/build/tmp/work/virtex5-pok=
y-linux/linux-xilinx-3.3.0-r0/image/etc/fstab
	#
	# TODO: Check argument number?
	#
	filename=3D`basename $3`
	dirname=3D`dirname $3`

	for o in `echo linux:powerpc:build-linux:pn-linux-xilinx:virtex5:poky:clas=
s-target:forcevariable:libc-glibc | tr ':' ' '`; do
		if [ -e $dirname/$o/$filename ]; then
			bbnote $dirname/$o/$filename present, installing to $4
			install $1 $2 $dirname/$o/$filename $4
			return
		fi
	done
#	bbnote overrides specific file NOT present, trying default=3D$3...
	if [ -e $3 ]; then
		bbnote $3 present, installing to $4
		install $1 $2 $3 $4
	else
		bbnote $3 NOT present, touching empty $4
		touch $4
	fi

}

do_install() {
	kernel_do_install
    if test -n "arch/powerpc/boot/dts/virtex440-ml507.dts"; then
	dtc -I dts -O dtb -R 8 -p 0x3000 -o devicetree arch/powerpc/boot/dts/virte=
x440-ml507.dts
	install -m 0644 devicetree /tool/yocto/poky/build/tmp/work/virtex5-poky-li=
nux/linux-xilinx-3.3.0-r0/image/boot/devicetree-3.3.0-14.2-build1
	install -d /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx=
-3.3.0-r0/deploy-linux-xilinx
	install -m 0644 devicetree /tool/yocto/poky/build/tmp/work/virtex5-poky-li=
nux/linux-xilinx-3.3.0-r0/deploy-linux-xilinx/uImage-3.3.0-r0-virtex5-20120=
623074715.dtb
	cd /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-r=
0/deploy-linux-xilinx
	rm -f uImage-virtex5.dtb
	ln -sf uImage-3.3.0-r0-virtex5-20120623074715.dtb uImage-virtex5.dtb
    fi

}

do_configure() {
#first check that the XILINX_BSP_PATH and XILINX_BOARD have been defined in=
 local.conf
#now depending on the board type and arch do what is nessesary
if [ -n "/project/xilinx-ml507-workspace" ]; then
	if [ "ml507" !=3D "unknown" ]; then
		dts=3D`find "/project/xilinx-ml507-workspace" -name *.dts -print`
		if [ -e "$dts" ]; then
			bbnote "Xilinx BSP device tree located in: ${dts}"
			if [ "powerpc" =3D "powerpc" ]; then
				bbnote "Replacing linux kernel powerpc device tree to match located har=
dware model"
				cp -pP ${dts} /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-=
xilinx-3.3.0-r0/git/arch/powerpc/boot/dts/virtex440-ml507.dts
			else
				bbnote "Replacing linux kernel microblaze device tree to match located =
hardware model"
				cp -pP ${dts} /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-=
xilinx-3.3.0-r0/git/arch/microblaze/platform/generic/440-ml507.dts
			fi
		else
			bbfatal "No device tree found, missing hardware ref design?"
			exit 1
		fi
	else
		bbnote "Xilinx board model: ml507"
        bbfatal "XILINX_BSP_PATH points to a valid Xilinx XPS project direc=
tory? ! Exit"
		exit 1
	fi
else
	bbfatal "XILINX_BSP_PATH not defined ! Exit"
	exit 1
fi
	kernel_do_configure

}

kernel_package_preprocess() {
	rm -rf /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3=
.0-r0/package/kernel

}

cml1_do_configure() {
	set -e
	unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS
	oe_runmake oldconfig

}

kernel_do_deploy() {
	install -m 0644 arch/powerpc/boot/uImage /tool/yocto/poky/build/tmp/work/v=
irtex5-poky-linux/linux-xilinx-3.3.0-r0/deploy-linux-xilinx/uImage-3.3.0-r0=
-virtex5-20120623074715.bin
	if (grep -q -i -e '^CONFIG_MODULES=3Dy$' .config); then
		tar -cvzf /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx=
-3.3.0-r0/deploy-linux-xilinx/modules-3.3.0-14.2-build1-r0-virtex5.tgz -C /=
tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-r0/ima=
ge lib
	fi

	cd /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-r=
0/deploy-linux-xilinx
	rm -f uImage-virtex5.bin
	ln -sf uImage-3.3.0-r0-virtex5-20120623074715.bin uImage-virtex5.bin
	ln -sf uImage-3.3.0-r0-virtex5-20120623074715.bin uImage

	cp /tool/yocto/poky/meta/files/deploydir_readme.txt /tool/yocto/poky/build=
/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-r0/deploy-linux-xilinx/READ=
ME_-_DO_NOT_DELETE_FILES_IN_THIS_DIRECTORY.txt

}

pkg_postrm_modules() {
update-modules || true

}

sysroot_stage_dir() {
	src=3D"$1"
	dest=3D"$2"
	# if the src doesn't exist don't do anything
	if [ ! -d "$src" ]; then
		 return
	fi

	# We only want to stage the contents of $src if it's non-empty so first rm=
dir $src
	# then if it still exists (rmdir on non-empty dir fails) we can copy its c=
ontents
	rmdir "$src" 2> /dev/null || true
	# However we always want to stage a $src itself, even if it's empty
	mkdir -p "$dest"
	if [ -d "$src" ]; then
		tar -cf - -C "$src" -ps . | tar -xf - -C "$dest"
	fi

}

do_buildall() {
	:

}

pkg_postinst_modules() {
if [ -z "$D" ]; then
	depmod -a 3.3.0-14.2-build1
	update-modules || true
fi

}

package_update_index_rpm_common() {
	rpmconf_base=3D"$1"
	shift

        createdirs=3D""
	for archvar in "$@"; do
		eval archs=3D\${${archvar}}
		packagedirs=3D""
		for arch in $archs; do
			packagedirs=3D"/tool/yocto/poky/build/tmp/deploy/rpm/$arch $packagedirs"
			rm -rf /tool/yocto/poky/build/tmp/deploy/rpm/$arch/solvedb.done
		done

		cat /dev/null > ${rpmconf_base}-${archvar}.conf
		for pkgdir in $packagedirs; do
			if [ -e $pkgdir/ ]; then
				echo "Generating solve db for $pkgdir..."
				echo $pkgdir/solvedb >> ${rpmconf_base}-${archvar}.conf
                                createdirs=3D"$createdirs $pkgdir"
			fi
		done
	done
	rpm-createsolvedb.py "rpm" $createdirs

}

base_do_configure() {
	:

}

create_wrapper() {
   # Create a wrapper script
   #
   # These are useful to work around relocation issues, by setting environm=
ent
   # variables which point to paths in the filesystem.
   #
   # Usage: create_wrapper FILENAME [[VAR=3DVALUE]..]

   cmd=3D$1
   shift

   echo "Generating wrapper script for $cmd"

   mv $cmd $cmd.real
   cmdname=3D`basename $cmd`.real
   cat <<END >$cmd
#!/bin/sh
realpath=3D\`readlink -fn \$0\`
exec env $@ \`dirname \$realpath\`/$cmdname "\$@"
END
   chmod +x $cmd

}

bbnote() {
	echo "NOTE: $*"

}

do_deploy() {
	kernel_do_deploy

}

sstate_create_package() {
	cd ${SSTATE_BUILDDIR}
	TFILE=3D`mktemp /tool/yocto/poky/build/sstate-cache/sstate-linux-xilinx-vi=
rtex5-poky-linux-3.3.0-r0-virtex5-2-${BB_TASKHASH}.XXXXXXXX`
	# Need to handle empty directories
	if [ "$(ls -A)" ]; then
		tar -czf $TFILE *
	else
		tar -cz --file=3D$TFILE --files-from=3D/dev/null
	fi
	chmod 0664 $TFILE
	mv $TFILE /tool/yocto/poky/build/sstate-cache/sstate-linux-xilinx-virtex5-=
poky-linux-3.3.0-r0-virtex5-2-${BB_TASKHASH}

	cd /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-r=
0
	rm -rf ${SSTATE_BUILDDIR}

}

bbplain() {
	echo "$*"

}

rpm_log_check() {
       target=3D"$1"
       lf_path=3D"$2"

       lf_txt=3D"`cat $lf_path`"
       for keyword_die in "Cannot find package" "exit 1" ERR Fail
       do
               if (echo "$lf_txt" | grep -v log_check | grep "$keyword_die"=
) >/dev/null 2>&1
               then
                       echo "log_check: There were error messages in the lo=
gfile"
                       echo -e "log_check: Matched keyword: [$keyword_die]\=
n"
                       echo "$lf_txt" | grep -v log_check | grep -C 5 -i "$=
keyword_die"
                       echo ""
                       do_exit=3D1
               fi
       done
       test "$do_exit" =3D 1 && exit 1
       true

}

ldconfig_postinst_fragment() {
if [ x"$D" =3D "x" ]; then
	[ -x /sbin/ldconfig ] && /sbin/ldconfig
fi

}

package_update_index_rpm() {
	if [ ! -z "${DEPLOY_KEEP_PACKAGES}" ]; then
		return
	fi

	# Update target packages
	base_archs=3D"all any noarch powerpc-nf ppc440 virtex5"
	ml_archs=3D"${MULTILIB_PACKAGE_ARCHS}"
	package_update_index_rpm_common "/tool/yocto/poky/build/tmp/deploy/rpm/sol=
vedb" base_archs ml_archs

	# Update SDK packages
	base_archs=3D"all any noarch x86_64-nativesdk"
	package_update_index_rpm_common "/tool/yocto/poky/build/tmp/deploy/rpm/sol=
vedb-sdk" base_archs

}

kernel_do_configure() {
	# fixes extra + in /lib/modules/2.6.37+
	# $ scripts/setlocalversion . =3D> +
	# $ make kernelversion =3D> 2.6.37
	# $ make kernelrelease =3D> 2.6.37+
	touch /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.=
0-r0/git/.scmversion /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/lin=
ux-xilinx-3.3.0-r0/git/.scmversion

	# Copy defconfig to .config if .config does not exist. This allows
	# recipes to manage the .config themselves in do_configure_prepend().
	if [ -f "/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3=
.3.0-r0/defconfig" ] && [ ! -f "/tool/yocto/poky/build/tmp/work/virtex5-pok=
y-linux/linux-xilinx-3.3.0-r0/git/.config" ]; then
		cp "/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0=
-r0/defconfig" "/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xi=
linx-3.3.0-r0/git/.config"
	fi
	yes '' | oe_runmake oldconfig

	if [ ! -z "" ]; then
		for img in cpio.gz cpio.lzo cpio.lzma cpio.xz; do
		if [ -e "/tool/yocto/poky/build/tmp/deploy/images/-virtex5.$img" ]; then
			cp "/tool/yocto/poky/build/tmp/deploy/images/-virtex5.$img" initramfs.$i=
mg
		fi
		done
	fi

}

sysroot_stage_libdir() {
	src=3D"$1"
	dest=3D"$2"

	sysroot_stage_dir $src $dest

}

die() {
	bbfatal "$*"

}

base_do_install() {
	:

}

do_compile() {
	kernel_do_compile

}

autoload_postinst_fragment() {
if [ x"$D" =3D "x" ]; then
	modprobe %s || true
fi

}

kernel_do_compile() {
	unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS MACHINE
	oe_runmake include/linux/version.h CC=3D"powerpc-poky-linux-gcc  --sysroot=
=3D/tool/yocto/poky/build/tmp/sysroots/virtex5" LD=3D"powerpc-poky-linux-ld=
  --sysroot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5"
	oe_runmake uImage  CC=3D"powerpc-poky-linux-gcc  --sysroot=3D/tool/yocto/p=
oky/build/tmp/sysroots/virtex5" LD=3D"powerpc-poky-linux-ld  --sysroot=3D/t=
ool/yocto/poky/build/tmp/sysroots/virtex5"
	if test "uImage.gz" =3D "uImage"; then
		gzip -9c < "uImage" > "arch/powerpc/boot/uImage"
	fi

}

base_do_package() {
	:

}

do_compile_kernelmodules() {
	unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS MACHINE
	if (grep -q -i -e '^CONFIG_MODULES=3Dy$' .config); then
		oe_runmake -j 6 modules CC=3D"powerpc-poky-linux-gcc  --sysroot=3D/tool/y=
octo/poky/build/tmp/sysroots/virtex5" LD=3D"powerpc-poky-linux-ld  --sysroo=
t=3D/tool/yocto/poky/build/tmp/sysroots/virtex5"
	else
		bbnote "no modules to compile"
	fi

}

oe_soinstall() {
	# Purpose: Install shared library file and
	#          create the necessary links
	# Example:
	#
	# oe_
	#
	#bbnote installing shared library $1 to $2
	#
	libname=3D`basename $1`
	install -m 755 $1 $2/$libname
	sonamelink=3D`powerpc-poky-linux-readelf -d $1 |grep 'Library soname:' |se=
d -e 's/.*\[\(.*\)\].*/\1/'`
	solink=3D`echo $libname | sed -e 's/\.so\..*/.so/'`
	ln -sf $libname $2/$sonamelink
	ln -sf $libname $2/$solink

}

create_cmdline_wrapper() {
   # Create a wrapper script
   #
   # These are useful to work around relocation issues, by setting environm=
ent
   # variables which point to paths in the filesystem.
   #
   # Usage: create_wrapper FILENAME [[VAR=3DVALUE]..]

   cmd=3D$1
   shift

   echo "Generating wrapper script for $cmd"

   mv $cmd $cmd.real
   cmdname=3D`basename $cmd`.real
   cat <<END >$cmd
#!/bin/sh
realpath=3D\`readlink -fn \$0\`
exec \`dirname \$realpath\`/$cmdname $@ "\$@"
END
   chmod +x $cmd

}

oe_libinstall() {
	# Purpose: Install a library, in all its forms
	# Example
	#
	# oe_libinstall libltdl /tool/yocto/poky/build/tmp/sysroots/virtex5/usr/li=
b/
	# oe_libinstall -C src/libblah libblah /tool/yocto/poky/build/tmp/work/vir=
tex5-poky-linux/linux-xilinx-3.3.0-r0/image//usr/lib/
	dir=3D""
	libtool=3D""
	silent=3D""
	require_static=3D""
	require_shared=3D""
	staging_install=3D""
	while [ "$#" -gt 0 ]; do
		case "$1" in
		-C)
			shift
			dir=3D"$1"
			;;
		-s)
			silent=3D1
			;;
		-a)
			require_static=3D1
			;;
		-so)
			require_shared=3D1
			;;
		-*)
			bbfatal "oe_libinstall: unknown option: $1"
			;;
		*)
			break;
			;;
		esac
		shift
	done

	libname=3D"$1"
	shift
	destpath=3D"$1"
	if [ -z "$destpath" ]; then
		bbfatal "oe_libinstall: no destination path specified"
	fi
	if echo "$destpath/" | egrep '^/tool/yocto/poky/build/tmp/sysroots/virtex5=
/usr/lib/' >/dev/null
	then
		staging_install=3D1
	fi

	__runcmd () {
		if [ -z "$silent" ]; then
			echo >&2 "oe_libinstall: $*"
		fi
		$*
	}

	if [ -z "$dir" ]; then
		dir=3D`pwd`
	fi

	dotlai=3D$libname.lai

	# Sanity check that the libname.lai is unique
	number_of_files=3D`(cd $dir; find . -name "$dotlai") | wc -l`
	if [ $number_of_files -gt 1 ]; then
		bbfatal "oe_libinstall: $dotlai is not unique in $dir"
	fi


	dir=3D$dir`(cd $dir;find . -name "$dotlai") | sed "s/^\.//;s/\/$dotlai\$//=
;q"`
	olddir=3D`pwd`
	__runcmd cd $dir

	lafile=3D$libname.la

	# If such file doesn't exist, try to cut version suffix
	if [ ! -f "$lafile" ]; then
		libname1=3D`echo "$libname" | sed 's/-[0-9.]*$//'`
		lafile1=3D$libname.la
		if [ -f "$lafile1" ]; then
			libname=3D$libname1
			lafile=3D$lafile1
		fi
	fi

	if [ -f "$lafile" ]; then
		# libtool archive
		eval `cat $lafile|grep "^library_names=3D"`
		libtool=3D1
	else
		library_names=3D"$libname.so* $libname.dll.a $libname.*.dylib"
	fi

	__runcmd install -d $destpath/
	dota=3D$libname.a
	if [ -f "$dota" -o -n "$require_static" ]; then
		rm -f $destpath/$dota
		__runcmd install -m 0644 $dota $destpath/
	fi
	if [ -f "$dotlai" -a -n "$libtool" ]; then
		rm -f $destpath/$libname.la
		__runcmd install -m 0644 $dotlai $destpath/$libname.la
	fi

	for name in $library_names; do
		files=3D`eval echo $name`
		for f in $files; do
			if [ ! -e "$f" ]; then
				if [ -n "$libtool" ]; then
					bbfatal "oe_libinstall: $dir/$f not found."
				fi
			elif [ -L "$f" ]; then
				__runcmd cp -P "$f" $destpath/
			elif [ ! -L "$f" ]; then
				libfile=3D"$f"
				rm -f $destpath/$libfile
				__runcmd install -m 0755 $libfile $destpath/
			fi
		done
	done

	if [ -z "$libfile" ]; then
		if  [ -n "$require_shared" ]; then
			bbfatal "oe_libinstall: unable to locate shared library"
		fi
	elif [ -z "$libtool" ]; then
		# special case hack for non-libtool .so.#.#.# links
		baselibfile=3D`basename "$libfile"`
		if (echo $baselibfile | grep -qE '^lib.*\.so\.[0-9.]*$'); then
			sonamelink=3D`powerpc-poky-linux-readelf -d $libfile |grep 'Library sona=
me:' |sed -e 's/.*\[\(.*\)\].*/\1/'`
			solink=3D`echo $baselibfile | sed -e 's/\.so\..*/.so/'`
			if [ -n "$sonamelink" -a x"$baselibfile" !=3D x"$sonamelink" ]; then
				__runcmd ln -sf $baselibfile $destpath/$sonamelink
			fi
			__runcmd ln -sf $baselibfile $destpath/$solink
		fi
	fi

	__runcmd cd "$olddir"

}

kernel_do_install() {
	#
	# First install the modules
	#
	unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS MACHINE
	if (grep -q -i -e '^CONFIG_MODULES=3Dy$' .config); then
		oe_runmake DEPMOD=3Decho INSTALL_MOD_PATH=3D"/tool/yocto/poky/build/tmp/w=
ork/virtex5-poky-linux/linux-xilinx-3.3.0-r0/image" modules_install
		rm -f "/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.=
3.0-r0/image/lib/modules/3.3.0-14.2-build1/modules.order"
		rm -f "/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.=
3.0-r0/image/lib/modules/3.3.0-14.2-build1/modules.builtin"
		rm "/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0=
-r0/image/lib/modules/3.3.0-14.2-build1/build"
		rm "/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0=
-r0/image/lib/modules/3.3.0-14.2-build1/source"
	else
		bbnote "no modules to install"
	fi

	#
	# Install various kernel output (zImage, map file, config, module support =
files)
	#
	install -d /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx=
-3.3.0-r0/image/boot
	install -d /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx=
-3.3.0-r0/image/boot
	install -m 0644 arch/powerpc/boot/uImage /tool/yocto/poky/build/tmp/work/v=
irtex5-poky-linux/linux-xilinx-3.3.0-r0/image/boot/uImage-3.3.0-14.2-build1
	install -m 0644 System.map /tool/yocto/poky/build/tmp/work/virtex5-poky-li=
nux/linux-xilinx-3.3.0-r0/image/boot/System.map-3.3.0-14.2-build1
	install -m 0644 .config /tool/yocto/poky/build/tmp/work/virtex5-poky-linux=
/linux-xilinx-3.3.0-r0/image/boot/config-3.3.0-14.2-build1
	install -m 0644 vmlinux /tool/yocto/poky/build/tmp/work/virtex5-poky-linux=
/linux-xilinx-3.3.0-r0/image/boot/vmlinux-3.3.0-14.2-build1
	[ -e Module.symvers ] && install -m 0644 Module.symvers /tool/yocto/poky/b=
uild/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-r0/image/boot/Module.sy=
mvers-3.3.0-14.2-build1
	install -d /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx=
-3.3.0-r0/image/etc/modules-load.d
	install -d /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx=
-3.3.0-r0/image/etc/modprobe.d

	#
	# Support for external module building - create a minimal copy of the
	# kernel source tree.
	#
	kerneldir=3D/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilin=
x-3.3.0-r0/image/kernel
	install -d $kerneldir

	#
	# Store the kernel version in sysroots for module-base.bbclass
	#

	echo "3.3.0-14.2-build1" > $kerneldir/kernel-abiversion

	#
	# Store kernel image name to allow use during image generation
	#

	echo "uImage-3.3.0-r0-virtex5-20120623074715" >$kerneldir/kernel-image-nam=
e

	#
	# Copy the entire source tree. In case an external build directory is
	# used, copy the build directory over first, then copy over the source
	# dir. This ensures the original Makefiles are used and not the
	# redirecting Makefiles in the build directory.
	#
	# work and sysroots can be on different partitions, so we can't rely on
	# hardlinking, unfortunately.
	#
	cp -fR * $kerneldir
	cp .config $kerneldir
	if [ "/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.=
0-r0/git" !=3D "/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xi=
linx-3.3.0-r0/git" ]; then
		cp -fR /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.=
3.0-r0/git/* $kerneldir
	fi
	install -m 0644 arch/powerpc/boot/uImage $kerneldir/uImage
	install -m 0644 System.map $kerneldir/System.map-3.3.0-14.2-build1

	#
	# Clean and remove files not needed for building modules.
	# Some distributions go through a lot more trouble to strip out
	# unecessary headers, for now, we just prune the obvious bits.
	#
	# We don't want to leave host-arch binaries in /sysroots, so
	# we clean the scripts dir while leaving the generated config
	# and include files.
	#
	oe_runmake -C $kerneldir CC=3D"powerpc-poky-linux-gcc  --sysroot=3D/tool/y=
octo/poky/build/tmp/sysroots/virtex5" LD=3D"powerpc-poky-linux-ld  --sysroo=
t=3D/tool/yocto/poky/build/tmp/sysroots/virtex5" clean
	make -C $kerneldir _mrproper_scripts
	find $kerneldir -path $kerneldir/lib -prune -o -path $kerneldir/tools -pru=
ne -o -path $kerneldir/scripts -prune -o -name "*.[csS]" -exec rm '{}' \;
	find $kerneldir/Documentation -name "*.txt" -exec rm '{}' \;

	# As of Linux kernel version 3.0.1, the clean target removes
	# arch/powerpc/lib/crtsavres.o which is present in
	# KBUILD_LDFLAGS_MODULE, making it required to build external modules.
	if [ powerpc =3D "powerpc" ]; then
		cp arch/powerpc/lib/crtsavres.o $kerneldir/arch/powerpc/lib/crtsavres.o
	fi

	# Remove the following binaries which cause strip errors
	# during do_package for cross-compiled platforms
	bin_files=3D"arch/powerpc/boot/addnote arch/powerpc/boot/hack-coff \
	           arch/powerpc/boot/mktree"
	for entry in $bin_files; do
		rm -f $kerneldir/$entry
	done

}

base_do_compile() {
	if [ -e Makefile -o -e makefile ]; then
		oe_runmake || die "make failed"
	else
		bbnote "nothing to compile"
	fi

}

bbfatal() {
	echo "ERROR: $*"
	exit 1

}

package_install_internal_rpm() {

	local target_rootfs=3D"${INSTALL_ROOTFS_RPM}"
	local platform=3D"${INSTALL_PLATFORM_RPM}"
	local platform_extra=3D"${INSTALL_PLATFORM_EXTRA_RPM}"
	local confbase=3D"${INSTALL_CONFBASE_RPM}"
	local package_to_install=3D"${INSTALL_PACKAGES_RPM}"
	local package_attemptonly=3D"${INSTALL_PACKAGES_ATTEMPTONLY_RPM}"
	local package_linguas=3D"${INSTALL_PACKAGES_LINGUAS_RPM}"
	local providename=3D"${INSTALL_PROVIDENAME_RPM}"
	local task=3D"${INSTALL_TASK_RPM}"

	# Setup base system configuration
	mkdir -p ${target_rootfs}/etc/rpm/
	echo "${platform}-poky-linux" > ${target_rootfs}/etc/rpm/platform
	if [ ! -z "$platform_extra" ]; then
		for pt in $platform_extra ; do
			case $pt in
				noarch | any | all)
					os=3D"`echo linux | sed "s,-.*,,"`.*"
					;;
				*)
					os=3D"linux"
					;;
			esac
			echo "$pt-.*-$os" >> ${target_rootfs}/etc/rpm/platform
		done
	fi

	# Tell RPM that the "/" directory exist and is available
	mkdir -p ${target_rootfs}/etc/rpm/sysinfo
	echo "/" >${target_rootfs}/etc/rpm/sysinfo/Dirnames
	if [ ! -z "$providename" ]; then
		cat /dev/null > ${target_rootfs}/etc/rpm/sysinfo/Providename
		for provide in $providename ; do
			echo $provide >> ${target_rootfs}/etc/rpm/sysinfo/Providename
		done
	fi

	# Setup manifest of packages to install...
	mkdir -p ${target_rootfs}/install
	rm -f ${target_rootfs}/install/install.manifest

	# Uclibc builds don't provide this stuff...
	if [ xlinux =3D "xlinux" ] || [ xlinux =3D "xlinux-gnueabi" ] ; then
		if [ ! -z "${package_linguas}" ]; then
			for pkg in ${package_linguas}; do
				echo "Processing $pkg..."

				archvar=3Dbase_archs
				manifest=3Dinstall.manifest
				ml_prefix=3D`echo ${pkg} | cut -d'-' -f1`
				ml_pkg=3D$pkg
				for i in ${MULTILIB_PREFIX_LIST} ; do
					if [ ${ml_prefix} =3D ${i} ]; then
						ml_pkg=3D$(echo ${pkg} | sed "s,^${ml_prefix}-\(.*\),\1,")
						archvar=3Dml_archs
						manifest=3Dinstall_multilib.manifest
						break
					fi
				done

				pkg_name=3D$(resolve_package_rpm ${confbase}-${archvar}.conf ${ml_pkg})
				if [ -z "$pkg_name" ]; then
					echo "Unable to find package $pkg ($ml_pkg)!"
					exit 1
				fi
				echo $pkg_name >> ${target_rootfs}/install/${manifest}
			done
		fi
	fi
	if [ ! -z "${package_to_install}" ]; then
		for pkg in ${package_to_install} ; do
			echo "Processing $pkg..."

			archvar=3Dbase_archs
			manifest=3Dinstall.manifest
			ml_prefix=3D`echo ${pkg} | cut -d'-' -f1`
			ml_pkg=3D$pkg
			for i in ${MULTILIB_PREFIX_LIST} ; do
				if [ ${ml_prefix} =3D ${i} ]; then
					ml_pkg=3D$(echo ${pkg} | sed "s,^${ml_prefix}-\(.*\),\1,")
					archvar=3Dml_archs
					manifest=3Dinstall_multilib.manifest
					break
				fi
			done

			pkg_name=3D$(resolve_package_rpm ${confbase}-${archvar}.conf ${ml_pkg})
			if [ -z "$pkg_name" ]; then
				echo "Unable to find package $pkg ($ml_pkg)!"
				exit 1
			fi
			echo $pkg_name >> ${target_rootfs}/install/${manifest}
		done
	fi

	# Normal package installation

	# Generate an install solution by doing a --justdb install, then recreate =
it with
	# an actual package install!
	if [ -s ${target_rootfs}/install/install.manifest ]; then
		echo "# Install manifest padding" >> ${target_rootfs}/install/install.man=
ifest
		rpm --predefine "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" \
			--predefine "_rpmrc_platform_path ${target_rootfs}/etc/rpm/platform" \
			--root "${target_rootfs}/install" \
			-D "_dbpath ${target_rootfs}/install" -D "`cat ${confbase}-base_archs.ma=
cro`" \
			-D "__dbi_txn create nofsync" \
			-U --justdb --noscripts --notriggers --noparentdirs --nolinktos --ignore=
size \
			${target_rootfs}/install/install.manifest
	fi

	if [ ! -z "${package_attemptonly}" ]; then
		echo "Adding attempt only packages..."
		for pkg in ${package_attemptonly} ; do
			echo "Processing $pkg..."
			archvar=3Dbase_archs
			ml_prefix=3D`echo ${pkg} | cut -d'-' -f1`
			ml_pkg=3D$pkg
			for i in ${MULTILIB_PREFIX_LIST} ; do
				if [ ${ml_prefix} =3D ${i} ]; then
					ml_pkg=3D$(echo ${pkg} | sed "s,^${ml_prefix}-\(.*\),\1,")
					archvar=3Dml_archs
					break
				fi
			done

			pkg_name=3D$(resolve_package_rpm ${confbase}-${archvar}.conf ${ml_pkg})
			if [ -z "$pkg_name" ]; then
				echo "Note: Unable to find package $pkg ($ml_pkg) -- PACKAGE_INSTALL_AT=
TEMPTONLY"
				continue
			fi
			echo "Attempting $pkg_name..." >> "/tool/yocto/poky/build/tmp/work/virte=
x5-poky-linux/linux-xilinx-3.3.0-r0/temp/log.do_${task}_attemptonly.${PID}"
			rpm --predefine "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" \
				--predefine "_rpmrc_platform_path ${target_rootfs}/etc/rpm/platform" \
				--root "${target_rootfs}/install" \
				-D "_dbpath ${target_rootfs}/install" -D "`cat ${confbase}.macro`" \
				-D "__dbi_txn create nofsync private" \
				-U --justdb --noscripts --notriggers --noparentdirs --nolinktos --ignor=
esize \
			$pkg_name >> "/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-x=
ilinx-3.3.0-r0/temp/log.do_${task}_attemptonly.${PID}" || true
		done
	fi

	#### Note: 'Recommends' is an arbitrary tag that means _SUGGESTS_ in OE-co=
re..
	# Add any recommended packages to the image
	# RPM does not solve for recommended packages because they are optional...
	# So we query them and tree them like the ATTEMPTONLY packages above...
	# Change the loop to "1" to run this code...
	loop=3D0
	if [ $loop -eq 1 ]; then
	 echo "Processing recommended packages..."
	 cat /dev/null >  ${target_rootfs}/install/recommend.list
	 while [ $loop -eq 1 ]; do
		# Dump the full set of recommends...
		rpm --predefine "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" \
			--predefine "_rpmrc_platform_path ${target_rootfs}/etc/rpm/platform" \
			--root "${target_rootfs}/install" \
			-D "_dbpath ${target_rootfs}/install" -D "`cat ${confbase}.macro`" \
			-D "__dbi_txn create nofsync private" \
			-qa --qf "[%{RECOMMENDS}\n]" | sort -u > ${target_rootfs}/install/recomm=
end
		# Did we add more to the list?
		grep -v -x -F -f ${target_rootfs}/install/recommend.list ${target_rootfs}=
/install/recommend > ${target_rootfs}/install/recommend.new || true
		# We don't want to loop unless there is a change to the list!
		loop=3D0
		cat ${target_rootfs}/install/recommend.new | \
		 while read pkg ; do
			# Ohh there was a new one, we'll need to loop again...
			loop=3D1
			echo "Processing $pkg..."
			found=3D0
			for archvar in base_archs ml_archs ; do
				pkg_name=3D$(resolve_package_rpm ${confbase}-${archvar}.conf ${pkg})
				if [ -n "$pkg_name" ]; then
					found=3D1
					break
				fi
			done

			if [ $found -eq 0 ]; then
				echo "Note: Unable to find package $pkg -- suggests"
				echo "Unable to find package $pkg." >> "/tool/yocto/poky/build/tmp/work=
/virtex5-poky-linux/linux-xilinx-3.3.0-r0/temp/log.do_${task}_recommend.${P=
ID}"
				continue
			fi
			echo "Attempting $pkg_name..." >> "/tool/yocto/poky/build/tmp/work/virte=
x5-poky-linux/linux-xilinx-3.3.0-r0/temp/log.do_{task}_recommend.${PID}"
			rpm --predefine "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" \
				--predefine "_rpmrc_platform_path ${target_rootfs}/etc/rpm/platform" \
				--root "${target_rootfs}/install" \
				-D "_dbpath ${target_rootfs}/install" -D "`cat ${confbase}.macro`" \
				-D "__dbi_txn create nofsync private" \
				-U --justdb --noscripts --notriggers --noparentdirs --nolinktos --ignor=
esize \
				$pkg_name >> "/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-=
xilinx-3.3.0-r0/temp/log.do_${task}_recommend.${PID}" 2>&1 || true
		done
		cat ${target_rootfs}/install/recommend.list ${target_rootfs}/install/reco=
mmend.new | sort -u > ${target_rootfs}/install/recommend.new.list
		mv -f ${target_rootfs}/install/recommend.new.list ${target_rootfs}/instal=
l/recommend.list
		rm ${target_rootfs}/install/recommend ${target_rootfs}/install/recommend.=
new
	 done
	fi

	# Now that we have a solution, pull out a list of what to install...
	echo "Manifest: ${target_rootfs}/install/install.manifest"
	rpm -D "_dbpath ${target_rootfs}/install" -qa --qf "%{packageorigin}\n" \
		--root "${target_rootfs}/install" \
		-D "__dbi_txn create nofsync private" \
		> ${target_rootfs}/install/install_solution.manifest

	touch ${target_rootfs}/install/install_multilib_solution.manifest

	if [ -s "${target_rootfs}/install/install_multilib.manifest" ]; then
		# multilib package installation
		echo "# Install multilib manifest padding" >> ${target_rootfs}/install/in=
stall_multilib.manifest

		# Generate an install solution by doing a --justdb install, then recreate=
 it with
		# an actual package install!
		rpm --predefine "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" \
			--predefine "_rpmrc_platform_path ${target_rootfs}/etc/rpm/platform" \
			--root "${target_rootfs}/install" \
			-D "_dbpath ${target_rootfs}/install" -D "`cat ${confbase}-ml_archs.macr=
o`" \
			-D "__dbi_txn create nofsync" \
			-U --justdb --noscripts --notriggers --noparentdirs --nolinktos --ignore=
size \
			${target_rootfs}/install/install_multilib.manifest

		# Now that we have a solution, pull out a list of what to install...
		echo "Manifest: ${target_rootfs}/install/install_multilib.manifest"
		rpm -D "_dbpath ${target_rootfs}/install" -qa --qf "%{packageorigin}\n" \
			--root "${target_rootfs}/install" \
			-D "__dbi_txn create nofsync private" \
			> ${target_rootfs}/install/install_multilib_solution.manifest

	fi

	cat ${target_rootfs}/install/install_solution.manifest > ${target_rootfs}/=
install/total_solution.manifest
	cat ${target_rootfs}/install/install_multilib_solution.manifest >> ${targe=
t_rootfs}/install/total_solution.manifest

	# Construct install scriptlet wrapper
	cat << EOF > /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xili=
nx-3.3.0-r0/scriptlet_wrapper
#!/bin/bash

export PATH=3D"/tool/yocto/poky/scripts:/tool/yocto/poky/build/tmp/sysroots=
/x86_64-linux/usr/bin/ppc440-poky-linux:/tool/yocto/poky/build/tmp/sysroots=
/virtex5/usr/bin/crossscripts:/tool/yocto/poky/build/tmp/sysroots/x86_64-li=
nux/usr/sbin:/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin:/tool=
/yocto/poky/build/tmp/sysroots/x86_64-linux/sbin:/tool/yocto/poky/build/tmp=
/sysroots/x86_64-linux//bin:/tool/yocto/poky/scripts:/tool/yocto/poky/bitba=
ke/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/=
usr/bin:/sbin:/bin:/usr/games"
export D=3D"${target_rootfs}"
export OFFLINE_ROOT=3D"\$D"
export IPKG_OFFLINE_ROOT=3D"\$D"
export OPKG_OFFLINE_ROOT=3D"\$D"

\$2 \$1/\$3 \$4
if [ \$? -ne 0 ]; then
  mkdir -p \$1/etc/rpm-postinsts
  num=3D100
  while [ -e \$1/etc/rpm-postinsts/\${num} ]; do num=3D\$((num + 1)); done
  echo "#!\$2" > \$1/etc/rpm-postinsts/\${num}
  echo "# Arg: \$4" >> \$1/etc/rpm-postinsts/\${num}
  cat \$1/\$3 >> \$1/etc/rpm-postinsts/\${num}
  chmod +x \$1/etc/rpm-postinsts/\${num}
fi
EOF

	chmod 0755 /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx=
-3.3.0-r0/scriptlet_wrapper

	# Configure RPM... we enforce these settings!
	mkdir -p ${target_rootfs}${rpmlibdir}
	mkdir -p ${target_rootfs}${rpmlibdir}/log
	# After change the __db.* cache size, log file will not be generated autom=
atically,
	# that will raise some warnings, so touch a bare log for rpm write into it=
.
	touch ${target_rootfs}${rpmlibdir}/log/log.0000000001
	cat > ${target_rootfs}${rpmlibdir}/DB_CONFIG << EOF
# =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Environment
set_data_dir .
set_create_dir .
set_lg_dir ./log
set_tmp_dir ./tmp
set_flags db_log_autoremove on

# -- thread_count must be >=3D 8
set_thread_count 64

# =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Logging

# =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Memory Pool
set_cachesize 0 1048576 0
set_mp_mmapsize 268435456

# =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Locking
set_lk_max_locks 16384
set_lk_max_lockers 16384
set_lk_max_objects 16384
mutex_set_max 163840

# =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Replication
EOF

	# RPM is special. It can't handle dependencies and preinstall scripts corr=
ectly. Its
	# probably a feature. The only way to convince rpm to actually run the pre=
install scripts
	# for base-passwd and shadow first before installing packages that depend =
on these packages
	# is to do two image installs, installing one set of packages, then the ot=
her.
	if [ "${INC_RPM_IMAGE_GEN}" =3D "1" -a -f "$pre_btmanifest" ]; then
		echo "Skipping pre install due to exisitng image"
	else
		rm -f ${target_rootfs}/install/initial_install.manifest
		echo "Installing base dependencies first (base-passwd, base-files and sha=
dow) since rpm is special"
		grep /base-passwd-[0-9] ${target_rootfs}/install/total_solution.manifest =
>> ${target_rootfs}/install/initial_install.manifest || true
		grep /base-files-[0-9] ${target_rootfs}/install/total_solution.manifest >=
> ${target_rootfs}/install/initial_install.manifest || true
		grep /shadow-[0-9] ${target_rootfs}/install/total_solution.manifest >> ${=
target_rootfs}/install/initial_install.manifest || true

		if [ -s ${target_rootfs}/install/initial_install.manifest ]; then
			echo "# Initial Install manifest padding..." >> ${target_rootfs}/install=
/initial_install.manifest

			# Generate an install solution by doing a --justdb install, then recreat=
e it with
			# an actual package install!
			mkdir -p ${target_rootfs}/initial

			rpm --predefine "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" \
				--predefine "_rpmrc_platform_path ${target_rootfs}/etc/rpm/platform" \
				--root "${target_rootfs}/install" \
				-D "_dbpath ${target_rootfs}/initial" -D "`cat ${confbase}.macro`" \
				-D "__dbi_txn create nofsync" \
				-U --justdb --noscripts --notriggers --noparentdirs --nolinktos --ignor=
esize \
				${target_rootfs}/install/initial_install.manifest

			rpm -D "_dbpath ${target_rootfs}/initial" -qa --qf "%{packageorigin}\n" =
\
				-D "__dbi_txn create nofsync private" \
				--root "${target_rootfs}/install" \
				> ${target_rootfs}/install/initial_solution.manifest

			rpm_update_pkg ${target_rootfs}/install/initial_solution.manifest

			grep -Fv -f ${target_rootfs}/install/initial_solution.manifest ${target_=
rootfs}/install/total_solution.manifest > ${target_rootfs}/install/total_so=
lution.manifest.new
			mv ${target_rootfs}/install/total_solution.manifest.new ${target_rootfs}=
/install/total_solution.manifest

			rm -rf ${target_rootfs}/initial
		fi
	fi

	echo "Installing main solution manifest (${target_rootfs}/install/total_so=
lution.manifest)"

	rpm_update_pkg ${target_rootfs}/install/total_solution.manifest

}

bbwarn() {
	echo "WARNING: $*"

}

rpm_common_comand() {

    local target_rootfs=3D"${INSTALL_ROOTFS_RPM}"

    rpm --root ${target_rootfs} \
        --predefine "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" =
\
        --predefine "_rpmrc_platform_path ${target_rootfs}/etc/rpm/platform=
" \
        -D "_var /var" \
        -D "_dbpath ${rpmlibdir}" \
        -D "_tmppath /install/tmp" \
        --noparentdirs --nolinktos \
        -D "__dbi_txn create nofsync private" \
        -D "_cross_scriptlet_wrapper /tool/yocto/poky/build/tmp/work/virtex=
5-poky-linux/linux-xilinx-3.3.0-r0/scriptlet_wrapper" $@

}

do_package_write() {
	:

}

rpm_update_pkg() {

    manifest=3D$1
    btmanifest=3D$manifest.bt.manifest
    pre_btmanifest=3D/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/lin=
ux-xilinx-3.3.0-r0/temp/${btmanifest##/*/}
    local target_rootfs=3D"${INSTALL_ROOTFS_RPM}"

    # Save the rpm's build time for incremental image generation, and the f=
ile
    # would be moved to /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/=
linux-xilinx-3.3.0-r0/temp
    for i in `cat $manifest`; do
        # Use "rpm" rather than "rpm" here, since we don't need the
        # '--dbpath' option
        echo "$i `rpm -qp --qf '%{BUILDTIME}\n' $i`"
    done | sort -u > $btmanifest

    # Only install the different pkgs if incremental image generation is se=
t
    if [ "${INC_RPM_IMAGE_GEN}" =3D "1" -a -f "$pre_btmanifest" -a \
        "rpm" =3D "rpm" ]; then
        comm -1 -3 $btmanifest $pre_btmanifest | sed 's#.*/\(.*\)\.rpm .*#\=
1#' > \
            ${target_rootfs}/install/remove.manifest
        comm -2 -3 $btmanifest $pre_btmanifest | awk '{print $1}' > \
            ${target_rootfs}/install/incremental.manifest

        # Attempt to remove unwanted pkgs, the scripts(pre, post, etc.) has=
 not
        # been run by now, so don't have to run them(preun, postun, etc.) w=
hen
        # erase the pkg
        if [ -s ${target_rootfs}/install/remove.manifest ]; then
            rpm_common_comand --noscripts --nodeps \
                -e `cat ${target_rootfs}/install/remove.manifest`
        fi

        # Attempt to install the incremental pkgs
        if [ -s ${target_rootfs}/install/incremental.manifest ]; then
            rpm_common_comand --nodeps --replacefiles --replacepkgs \
               -Uvh ${target_rootfs}/install/incremental.manifest
        fi
    else
        # Attempt to install
        rpm_common_comand --replacepkgs -Uhv $manifest
    fi

}

sysroot_stage_dirs() {
	from=3D"$1"
	to=3D"$2"

	sysroot_stage_dir $from/usr/include $to/usr/include
	if [ "x86_64-linux" =3D "powerpc-poky-linux" ]; then
		sysroot_stage_dir $from/usr/bin $to/usr/bin
		sysroot_stage_dir $from/usr/sbin $to/usr/sbin
		sysroot_stage_dir $from/bin $to/bin
		sysroot_stage_dir $from/sbin $to/sbin
		sysroot_stage_dir $from/usr/libexec $to/usr/libexec
		sysroot_stage_dir $from/etc $to/etc
		sysroot_stage_dir $from/var $to/var
	fi
	if [ -d $from/usr/lib ]
	then
		sysroot_stage_libdir $from//usr/lib $to/usr/lib
	fi
	if [ -d $from/lib ]
	then
		sysroot_stage_libdir $from/lib $to/lib
	fi
	sysroot_stage_dir $from/usr/share $to/usr/share

}

do_checkuriall() {
	:

}

packagedstaging_fastpath() {
	:

}

sstate_unpack_package() {
	mkdir -p ${SSTATE_INSTDIR}
	cd ${SSTATE_INSTDIR}
	tar -xvzf /tool/yocto/poky/build/sstate-cache/sstate-linux-xilinx-virtex5-=
poky-linux-3.3.0-r0-virtex5-2-${BB_TASKHASH}

}

package_generate_rpm_conf_common() {
	rpmconf_base=3D"$1"
	shift

	printf "_solve_dbpath " > ${rpmconf_base}.macro
	o_colon=3D"false"

	for archvar in "$@"; do
		printf "_solve_dbpath " > ${rpmconf_base}-${archvar}.macro
		colon=3D"false"
		for each in `cat ${rpmconf_base}-${archvar}.conf` ; do
			if [ "$o_colon" =3D "true" ]; then
				printf ":" >> ${rpmconf_base}.macro
			fi
			if [ "$colon" =3D "true" ]; then
				printf ":" >> ${rpmconf_base}-${archvar}.macro
			fi
			printf "%s" $each >> ${rpmconf_base}.macro
			o_colon=3D"true"
			printf "%s" $each >> ${rpmconf_base}-${archvar}.macro
			colon=3D"true"
		done
		printf "\n" >> ${rpmconf_base}-${archvar}.macro
	done
	printf "\n" >> ${rpmconf_base}.macro

}

sysroot_stage_all() {
	sysroot_stage_dirs /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linu=
x-xilinx-3.3.0-r0/image /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/=
linux-xilinx-3.3.0-r0/sysroot-destdir/
	sysroot_stage_dir /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux=
-xilinx-3.3.0-r0/image/kernel /tool/yocto/poky/build/tmp/work/virtex5-poky-=
linux/linux-xilinx-3.3.0-r0/sysroot-destdir//kernel

}

license_create_manifest() {
	mkdir -p /tool/yocto/poky/build/tmp/deploy/licenses/linux-xilinx-virtex5-2=
0120623074715
	# Get list of installed packages
	list_installed_packages | grep -v "locale" |sort > /tool/yocto/poky/build/=
tmp/deploy/licenses/linux-xilinx-virtex5-20120623074715/package.manifest
	INSTALLED_PKGS=3D`cat /tool/yocto/poky/build/tmp/deploy/licenses/linux-xil=
inx-virtex5-20120623074715/package.manifest`
	# remove existing license.manifest file
	if [ -f /tool/yocto/poky/build/tmp/deploy/licenses/linux-xilinx-virtex5-20=
120623074715/license.manifest ]; then
		rm /tool/yocto/poky/build/tmp/deploy/licenses/linux-xilinx-virtex5-201206=
23074715/license.manifest
	fi
	# list of installed packages is broken for deb
	for pkg in ${INSTALLED_PKGS}; do
		# not the best way to do this but licenses are not arch dependant iirc
		filename=3D`ls /tool/yocto/poky/build/tmp/pkgdata/*/runtime/${pkg}| head =
-1`
		pkged_pn=3D"$(sed -n 's/^PN: //p' ${filename})"
		pkged_lic=3D"$(sed -n '/^LICENSE: /{ s/^LICENSE: //; s/[+|&()*]/ /g; s/  =
*/ /g; p }' ${filename})"
		pkged_pv=3D"$(sed -n 's/^PV: //p' ${filename})"
		# check to see if the package name exists in the manifest. if so, bail.
		if ! grep -q "PACKAGE NAME: ${pkg}" ${filename}; then
			# exclude local recipes
			if [ ! "${pkged_pn}" =3D "*locale*" ]; then
				echo "PACKAGE NAME:" ${pkg} >> /tool/yocto/poky/build/tmp/deploy/licens=
es/linux-xilinx-virtex5-20120623074715/license.manifest
				echo "PACKAGE VERSION:" ${pkged_pv} >> /tool/yocto/poky/build/tmp/deplo=
y/licenses/linux-xilinx-virtex5-20120623074715/license.manifest
				echo "RECIPE NAME:" ${pkged_pn} >> /tool/yocto/poky/build/tmp/deploy/li=
censes/linux-xilinx-virtex5-20120623074715/license.manifest
				echo "LICENSE: " >> /tool/yocto/poky/build/tmp/deploy/licenses/linux-xi=
linx-virtex5-20120623074715/license.manifest
				for lic in ${pkged_lic}; do
					if [ -e "/tool/yocto/poky/build/tmp/deploy/licenses/${pkged_pn}/generi=
c_${lic}" ]; then
						echo ${lic}|sed s'/generic_//'g >> /tool/yocto/poky/build/tmp/deploy/=
licenses/linux-xilinx-virtex5-20120623074715/license.manifest
					else
						echo "WARNING: The license listed, " ${lic} " was not in the licenses=
 collected for " ${pkged_pn}>> /tool/yocto/poky/build/tmp/deploy/licenses/l=
inux-xilinx-virtex5-20120623074715/license.manifest
					fi
				done
				echo "" >> /tool/yocto/poky/build/tmp/deploy/licenses/linux-xilinx-virt=
ex5-20120623074715/license.manifest
			fi
		fi
	done

	# Two options here:
	# - Just copy the manifest
	# - Copy the manifest and the license directories
	# With both options set we see a .5 M increase in core-image-minimal
	if [ -n "${COPY_LIC_MANIFEST}" ]; then
		mkdir -p /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-=
3.3.0-r0/rootfs/usr/share/common-licenses/
		cp /tool/yocto/poky/build/tmp/deploy/licenses/linux-xilinx-virtex5-201206=
23074715/license.manifest /tool/yocto/poky/build/tmp/work/virtex5-poky-linu=
x/linux-xilinx-3.3.0-r0/rootfs/usr/share/common-licenses/license.manifest
		if [ -n "${COPY_LIC_DIRS}" ]; then
			for pkg in ${INSTALLED_PKGS}; do
				mkdir -p /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilin=
x-3.3.0-r0/rootfs/usr/share/common-licenses/${pkg}
				for lic in `ls /tool/yocto/poky/build/tmp/deploy/licenses/${pkg}`; do
					# Really don't need to copy the generics as they're
					# represented in the manifest and in the actual pkg licenses
					# Doing so would make your image quite a bit larger
					if [[ "${lic}" !=3D "generic_"* ]]; then
						cp /tool/yocto/poky/build/tmp/deploy/licenses/${pkg}/${lic} /tool/yoc=
to/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-r0/rootfs/usr/=
share/common-licenses/${pkg}/${lic}
					elif [[ "${lic}" =3D=3D "generic_"* ]]; then
						if [ ! -f /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xi=
linx-3.3.0-r0/rootfs/usr/share/common-licenses/${lic} ]; then
							cp /tool/yocto/poky/build/tmp/deploy/licenses/${pkg}/${lic} /tool/yo=
cto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-r0/rootfs/usr=
/share/common-licenses/
						fi
						ln -s ../${lic} /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/li=
nux-xilinx-3.3.0-r0/rootfs/usr/share/common-licenses/${pkg}/${lic}
					fi
				done
			done
		fi
	fi


}

mklibs_optimize_image() {
	for img in ${MKLIBS_OPTIMIZED_IMAGES}
	do
		if [ "${img}" =3D "linux-xilinx" ] || [ "${img}" =3D "all" ]
		then
			mklibs_optimize_image_doit
			break
		fi
	done

}

oe_runmake() {
	if [ x"$MAKE" =3D x ]; then MAKE=3Dmake; fi
	bbnote make  "$@"
	make  "$@" || die "oe_runmake failed"

}

bberror() {
	echo "ERROR: $*"

}

mklibs_optimize_image_doit() {
	rm -rf /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3=
.0-r0/mklibs
	mkdir -p /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3=
.3.0-r0/mklibs/dest
	cd /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-r=
0/rootfs
	du -bs > /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3=
.3.0-r0/mklibs/du.before.mklibs.txt
	for i in `find .`; do file $i; done \
		| grep ELF \
		| grep "LSB executable" \
		| grep "dynamically linked" \
		| sed "s/:.*//" \
		| sed "s+^\./++" \
		> /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-r=
0/mklibs/executables.list

	case powerpc in
		powerpc | mips | microblaze )
			dynamic_loader=3D"/lib/ld.so.1"
			;;
		powerpc64)
			dynamic_loader=3D"/lib/ld64.so.1"
			;;
		x86_64)
			dynamic_loader=3D"/lib/ld-linux-x86-64.so.2"
			;;
		i586 )
			dynamic_loader=3D"/lib/ld-linux.so.2"
			;;
		arm )
			dynamic_loader=3D"/lib/ld-linux.so.3"
			;;
		* )
			dynamic_loader=3D"/unknown_dynamic_linker"
			;;
	esac

	mklibs -v \
		--ldlib ${dynamic_loader} \
		--sysroot /tool/yocto/poky/build/tmp/sysroots/virtex5 \
		--root /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.=
3.0-r0/rootfs \
		--target `echo powerpc-poky-linux- | sed 's/-$//' ` \
		-d /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-=
r0/mklibs/dest \
		`cat /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.=
0-r0/mklibs/executables.list`

	cd /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-r=
0/mklibs/dest
	for i in *
	do
		cp $i `find /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xili=
nx-3.3.0-r0/rootfs -name $i`
	done

	cd /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-r=
0/rootfs
	du -bs > /tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-3=
.3.0-r0/mklibs/du.after.mklibs.txt

	echo rootfs size before mklibs optimization: `cat /tool/yocto/poky/build/t=
mp/work/virtex5-poky-linux/linux-xilinx-3.3.0-r0/mklibs/du.before.mklibs.tx=
t`
	echo rootfs size after mklibs optimization: `cat /tool/yocto/poky/build/tm=
p/work/virtex5-poky-linux/linux-xilinx-3.3.0-r0/mklibs/du.after.mklibs.txt`

}



python do_devshell () {
    oe_terminal(d.getVar('SHELL', True), 'OpenEmbedded Developer Shell', d)
}


python oe_import_eh () {
    if isinstance(e, bb.event.ConfigParsed):
	oe_import(e.data)
}


python package_qa_check_unsafe_references_in_scripts () {
def package_qa_check_unsafe_references_in_scripts(path, name, d, elf, messa=
ges):
	"""
	Warn if scripts in base_[bindir|sbindir|libdir] reference files under exec=
_prefix
	"""
	if unsafe_references_skippable(path, name, d):
		return

	if not elf:
		import stat
		import subprocess
		pn =3D d.getVar('PN', True)

		# Ensure we're checking an executable script
		statinfo =3D os.stat(path)
		if bool(statinfo.st_mode & stat.S_IXUSR):
			# grep shell scripts for possible references to /exec_prefix/
			exec_prefix =3D d.getVar('exec_prefix', True)
			statement =3D "grep -e '%s/' %s > /dev/null" % (exec_prefix, path)
			if subprocess.call(statement, shell=3DTrue) =3D=3D 0:
				error_msg =3D pn + ": Found a reference to %s/ in %s" % (exec_prefix, p=
ath)
				package_qa_handle_error("unsafe-references-in-scripts", error_msg, d)
				error_msg =3D "Shell scripts in base_bindir and base_sbindir should not=
 reference anything in exec_prefix"
				package_qa_handle_error("unsafe-references-in-scripts", error_msg, d)
}


python gen_packagevar () {
def gen_packagevar(d):
    ret =3D []
    pkgs =3D (d.getVar("PACKAGES", True) or "").split()
    vars =3D (d.getVar("PACKAGEVARS", True) or "").split()
    for p in pkgs:
        for v in vars:
            ret.append(v + "_" + p)
    return " ".join(ret)
}


python check_connectivity () {
def check_connectivity(d):
    # URI's to check can be set in the CONNECTIVITY_CHECK_URIS variable
    # using the same syntax as for SRC_URI. If the variable is not set
    # the check is skipped
    test_uris =3D (d.getVar('CONNECTIVITY_CHECK_URIS', True) or "").split()
    retval =3D ""

    # Only check connectivity if network enabled and the
    # CONNECTIVITY_CHECK_URIS are set
    network_enabled =3D not d.getVar('BB_NO_NETWORK', True)
    check_enabled =3D len(test_uris)
    # Take a copy of the data store and unset MIRRORS and PREMIRROS
    data =3D bb.data.createCopy(d)
    data.delVar('PREMIRRORS')
    data.delVar('MIRRORS')
    if check_enabled and network_enabled:
        try:
            fetcher =3D bb.fetch2.Fetch(test_uris, data)
            fetcher.checkstatus()
        except Exception:
            # Allow the message to be configured so that users can be
            # pointed to a support mechanism.
            msg =3D data.getVar('CONNECTIVITY_CHECK_MSG', True) or ""
            if len(msg) =3D=3D 0:
                msg =3D "Failed to fetch test data from the network. Please=
 ensure your network is configured correctly.\n"
            retval =3D msg

    return retval
}


python do_cleansstate () {
        sstate_clean_cachefiles(d)
}


python package_rpm_fn () {
	d.setVar('PKGFN', d.getVar('PKG'))
}


python get_libc_locales_dependencies () {
def get_libc_locales_dependencies(d):
    if 'libc-locales' in (d.getVar('DISTRO_FEATURES', True) or '').split() =
:
        return d.getVar('LIBC_LOCALE_DEPENDENCIES', True) or ''
    else:
        return ''}


python get_kernelversion () {
def get_kernelversion(p):
    import re

    fn =3D p + '/include/linux/utsrelease.h'
    if not os.path.isfile(fn):
        # after 2.6.33-rc1
        fn =3D p + '/include/generated/utsrelease.h'
    if not os.path.isfile(fn):
        fn =3D p + '/include/linux/version.h'

    import re
    try:
        f =3D open(fn, 'r')
    except IOError:
        return None

    l =3D f.readlines()
    f.close()
    r =3D re.compile("#define UTS_RELEASE \"(.*)\"")
    for s in l:
        m =3D r.match(s)
        if m:
            return m.group(1)
    return None
}


python splitfile2 () {
def splitfile2(debugsrcdir, d):
    # Function to split a single file, called from split_and_strip_files be=
low
    #
    # The debug src information processed in the splitfile2 is further proc=
ecessed
    # and copied to the destination here.

    import commands, stat, subprocess

    sourcefile =3D d.expand("/tool/yocto/poky/build/tmp/work/virtex5-poky-l=
inux/linux-xilinx-3.3.0-r0/debugsources.list")
    if debugsrcdir and os.path.isfile(sourcefile):
       dvar =3D d.getVar('PKGD', True)
       pathprefix =3D "export PATH=3D%s; " % d.getVar('PATH', True)
       strip =3D d.getVar("STRIP", True)
       objcopy =3D d.getVar("OBJCOPY", True)
       debugedit =3D d.expand("/tool/yocto/poky/build/tmp/sysroots/x86_64-l=
inux/usr/lib/rpm/bin/debugedit")
       workdir =3D d.getVar("WORKDIR", True)
       workparentdir =3D os.path.dirname(workdir)
       workbasedir =3D os.path.basename(workdir)

       nosuchdir =3D []
       basepath =3D dvar
       for p in debugsrcdir.split("/"):
           basepath =3D basepath + "/" + p
           if not os.path.exists(basepath):
               nosuchdir.append(basepath)
       bb.mkdirhier(basepath)

       processdebugsrc =3D  "LC_ALL=3DC ; sort -z -u '%s' | egrep -v -z '(<=
internal>|<built-in>)$' | "
       # We need to ignore files that are not actually ours
       # we do this by only paying attention to items from this package
       processdebugsrc +=3D "fgrep -z '%s' | "
       processdebugsrc +=3D "(cd '%s' ; cpio -pd0mL --no-preserve-owner '%s=
%s' 2>/dev/null)"

       subprocess.call(processdebugsrc % (sourcefile, workbasedir, workpare=
ntdir, dvar, debugsrcdir), shell=3DTrue)

       # The copy by cpio may have resulted in some empty directories!  Rem=
ove these
       for root, dirs, files in os.walk("%s%s" % (dvar, debugsrcdir)):
          for d in dirs:
              dir =3D os.path.join(root, d)
              #bb.note("rmdir -p %s" % dir)
              subprocess.call("rmdir -p %s 2>/dev/null" % dir, shell=3DTrue=
)

       # Also remove debugsrcdir if its empty
       for p in nosuchdir[::-1]:
           if os.path.exists(p) and not os.listdir(p):
               os.rmdir(p)
}


python return_spdx () {
def return_spdx(d, license):
    """
    This function returns the spdx mapping of a license.
    """
    if d.getVarFlag('SPDXLICENSEMAP', license) !=3D None:
        return license
    else:
        return d.getVarFlag('SPDXLICENSEMAP', license_type)
}


python base_version_less_or_equal () {
def base_version_less_or_equal(variable, checkvalue, truevalue, falsevalue,=
 d):
    return oe.utils.version_less_or_equal(variable, checkvalue, truevalue, =
falsevalue, d)
}


python get_cputime () {
def get_cputime():
    fields =3D open("/proc/stat", "r").readline().rstrip().split()[1:]
    return sum(int(field) for field in fields)
}


python base_do_patch () {
	bb.build.exec_func('patch_do_patch', d)
}


python runtime_mapping_rename () {
def runtime_mapping_rename (varname, d):
	#bb.note("%s before: %s" % (varname, d.getVar(varname, True)))

	new_depends =3D []
	deps =3D bb.utils.explode_dep_versions(d.getVar(varname, True) or "")
	for depend in deps:
		# Have to be careful with any version component of the depend
		new_depend =3D get_package_mapping(depend, d)
		if deps[depend]:
			new_depends.append("%s (%s)" % (new_depend, deps[depend]))
		else:
			new_depends.append(new_depend)

	d.setVar(varname, " ".join(new_depends) or None)

	#bb.note("%s after: %s" % (varname, d.getVar(varname, True)))
}


python split_and_strip_files () {
	import commands, stat, errno, subprocess

	dvar =3D d.getVar('PKGD', True)
	pn =3D d.getVar('PN', True)

	# We default to '.debug' style
	if d.getVar('PACKAGE_DEBUG_SPLIT_STYLE', True) =3D=3D 'debug-file-director=
y':
		# Single debug-file-directory style debug info
		debugappend =3D ".debug"
		debugdir =3D ""
		debuglibdir =3D "/usr/lib/debug"
		debugsrcdir =3D "/usr/src/debug"
	else:
		# Original OE-core, a.k.a. ".debug", style debug info
		debugappend =3D ""
		debugdir =3D "/.debug"
		debuglibdir =3D ""
		debugsrcdir =3D "/usr/src/debug"

	os.chdir(dvar)

	# Return type (bits):
	# 0 - not elf
	# 1 - ELF
	# 2 - stripped
	# 4 - executable
	# 8 - shared library
	def isELF(path):
		type =3D 0
		pathprefix =3D "export PATH=3D%s; " % d.getVar('PATH', True)
		ret, result =3D commands.getstatusoutput("%sfile '%s'" % (pathprefix, pat=
h))

		if ret:
			bb.error("split_and_strip_files: 'file %s' failed" % path)
			return type

		# Not stripped
		if "ELF" in result:
			type |=3D 1
			if "not stripped" not in result:
				type |=3D 2
			if "executable" in result:
				type |=3D 4
			if "shared" in result:
				type |=3D 8
		return type


	#
	# First lets figure out all of the files we may have to process ... do thi=
s only once!
	#
	file_list =3D {}
	file_links =3D {}
	if (d.getVar('INHIBIT_PACKAGE_DEBUG_SPLIT', True) !=3D '1') and \
	   (d.getVar('INHIBIT_PACKAGE_STRIP', True) !=3D '1'):
		for root, dirs, files in os.walk(dvar):
			for f in files:
				file =3D os.path.join(root, f)
				# Only process files (and symlinks)... Skip files that are obviously de=
bug files
				if not (debugappend !=3D "" and file.endswith(debugappend)) and \
				   not (debugdir !=3D "" and debugdir in os.path.dirname(file[len(dvar)=
:])) and \
				   os.path.isfile(file):
					try:
						s =3D os.stat(file)
					except OSError, (err, strerror):
						if err !=3D errno.ENOENT:
							raise
						# Skip broken symlinks
						continue
					# Is the item excutable?  Then we need to process it.
					if (s[stat.ST_MODE] & stat.S_IXUSR) or \
					   (s[stat.ST_MODE] & stat.S_IXGRP) or \
					   (s[stat.ST_MODE] & stat.S_IXOTH):
						# If it's a symlink, and points to an ELF file, we capture the readli=
nk target
						if os.path.islink(file):
							target =3D os.readlink(file)
							if not os.path.isabs(target):
								ltarget =3D os.path.join(os.path.dirname(file), target)
							else:
								ltarget =3D target

							if isELF(ltarget):
								#bb.note("Sym: %s (%d)" % (ltarget, isELF(ltarget)))
								file_list[file] =3D "sym: " + target
							continue
						# It's a file (or hardlink), not a link
						# ...but is it ELF, and is it already stripped?
						elf_file =3D isELF(file)
						if elf_file & 1:
							# Check if it's a hard link to something else
							if s.st_nlink > 1:
								file_reference =3D "%d_%d" % (s.st_dev, s.st_ino)
								# Hard link to something else
								file_list[file] =3D "hard: " + file_reference
								continue

							file_list[file] =3D "ELF: %d" % elf_file


	#
	# First lets process debug splitting
	#
	if (d.getVar('INHIBIT_PACKAGE_DEBUG_SPLIT', True) !=3D '1'):
		for file in file_list:
			src =3D file[len(dvar):]
			dest =3D debuglibdir + os.path.dirname(src) + debugdir + "/" + os.path.b=
asename(src) + debugappend
			fpath =3D dvar + dest
			# Preserve symlinks in debug area...
			if file_list[file].startswith("sym: "):
				ltarget =3D file_list[file][5:]
				lpath =3D os.path.dirname(ltarget)
				lbase =3D os.path.basename(ltarget)
				ftarget =3D ""
				if lpath and lpath !=3D ".":
					ftarget +=3D lpath + debugdir + "/"
				ftarget +=3D lbase + debugappend
				if lpath.startswith(".."):
					ftarget =3D os.path.join("..", ftarget)
				bb.mkdirhier(os.path.dirname(fpath))
				#bb.note("Symlink %s -> %s" % (fpath, ftarget))
				os.symlink(ftarget, fpath)
				continue

			# Preserve hard links in debug area...
			file_reference =3D ""
			if file_list[file].startswith("hard: "):
				file_reference =3D file_list[file][6:]
				if file_reference not in file_links:
					# If this is a new file, add it as a reference, and
					# update it's type, so we can fall through and split
					file_list[file] =3D "ELF: %d" % (isELF(file))
				else:
					target =3D file_links[file_reference][len(dvar):]
					ftarget =3D dvar + debuglibdir + os.path.dirname(target) + debugdir + =
"/" + os.path.basename(target) + debugappend
					bb.mkdirhier(os.path.dirname(fpath))
					#bb.note("Link %s -> %s" % (fpath, ftarget))
					os.link(ftarget, fpath)
					continue

			# It's ELF...
			if file_list[file].startswith("ELF: "):
				elf_file =3D int(file_list[file][5:])
				if elf_file & 2:
					bb.warn("File '%s' from %s was already stripped, this will prevent fut=
ure debugging!" % (src, pn))
					continue

				# Split the file...
				bb.mkdirhier(os.path.dirname(fpath))
				#bb.note("Split %s -> %s" % (file, fpath))
				# Only store off the hard link reference if we successfully split!
				if splitfile(file, fpath, debugsrcdir, d) =3D=3D 0 and file_reference !=
=3D "":
					file_links[file_reference] =3D file

		# The above may have generated dangling symlinks, remove them!
		# Dangling symlinks are a result of something NOT being split, such as a =
stripped binary.
		# This should be a rare occurance, but we want to clean up anyway.
		for file in file_list:
			if file_list[file].startswith("sym: "):
				src =3D file[len(dvar):]
				dest =3D debuglibdir + os.path.dirname(src) + debugdir + "/" + os.path.=
basename(src) + debugappend
				fpath =3D dvar + dest
				try:
					s =3D os.stat(fpath)
				except OSError, (err, strerror):
					if err !=3D errno.ENOENT:
						raise
					#bb.note("Remove dangling link %s -> %s" % (fpath, os.readlink(fpath))=
)
					os.unlink(fpath)
					# This could leave an empty debug directory laying around
					# take care of the obvious case...
					subprocess.call("rmdir %s 2>/dev/null" % os.path.dirname(fpath), shell=
=3DTrue)

		# Process the debugsrcdir if requested...
		# This copies and places the referenced sources for later debugging...
		splitfile2(debugsrcdir, d)
	#
	# End of debug splitting
	#

	#
	# Now lets go back over things and strip them
	#
	if (d.getVar('INHIBIT_PACKAGE_STRIP', True) !=3D '1'):
		for file in file_list:
			if file_list[file].startswith("ELF: "):
				elf_file =3D int(file_list[file][5:])
				#bb.note("Strip %s" % file)
				runstrip(file, elf_file, d)


	if (d.getVar('INHIBIT_PACKAGE_STRIP', True) !=3D '1'):
		for root, dirs, files in os.walk(dvar):
			for f in files:
				if not f.endswith(".ko"):
					continue
				runstrip(os.path.join(root, f), None, d)
	#
	# End of strip
	#
}


python patch_do_patch () {
	import oe.patch

	patchsetmap =3D {
		"patch": oe.patch.PatchTree,
		"quilt": oe.patch.QuiltTree,
		"git": oe.patch.GitApplyTree,
	}

	cls =3D patchsetmap[d.getVar('PATCHTOOL', True) or 'quilt']

	resolvermap =3D {
		"noop": oe.patch.NOOPResolver,
		"user": oe.patch.UserResolver,
	}

	rcls =3D resolvermap[d.getVar('PATCHRESOLVE', True) or 'user']

	classes =3D {}

	s =3D d.getVar('S', True)

	path =3D os.getenv('PATH')
	os.putenv('PATH', d.getVar('PATH', True))

	for patch in src_patches(d):
		_, _, local, _, _, parm =3D bb.decodeurl(patch)

		if "patchdir" in parm:
			patchdir =3D parm["patchdir"]
			if not os.path.isabs(patchdir):
				patchdir =3D os.path.join(s, patchdir)
		else:
			patchdir =3D s

		if not patchdir in classes:
			patchset =3D cls(patchdir, d)
			resolver =3D rcls(patchset, oe_terminal)
			classes[patchdir] =3D (patchset, resolver)
			patchset.Clean()
		else:
			patchset, resolver =3D classes[patchdir]

		bb.note("Applying patch '%s' (%s)" % (parm['patchname'], oe.path.format_d=
isplay(local, d)))
		try:
			patchset.Import({"file":local, "strippath": parm['striplevel']}, True)
		except Exception as exc:
			bb.fatal(str(exc))
		try:
			resolver.Resolve()
		except bb.BBHandledException as e:
			bb.fatal(str(e))
}


python pkgarch_mapping () {
def pkgarch_mapping(d):
    # Compatibility mappings of TUNE_PKGARCH (opt in)
    if d.getVar("PKGARCHCOMPAT_ARMV7A", True):
        if d.getVar("TUNE_PKGARCH", True) =3D=3D "armv7a-vfp-neon":
            d.setVar("TUNE_PKGARCH", "armv7a")
}


python populate_packages_prepend () {
None}


python run_buildstats () {
    import bb.build
    import bb.event
    import bb.data
    import time, subprocess, platform

    if isinstance(e, bb.event.BuildStarted):
        ###################################################################=
#####
        # at first pass make the buildstats heriarchy and then
        # set the buildname
        ###################################################################=
#####
        try:
            bb.mkdirhier(e.data.getVar('BUILDSTATS_BASE', True))
        except:
            pass
        set_bn(e)
        bn =3D get_bn(e)
        set_device(e)
        device =3D get_device(e)

        bsdir =3D os.path.join(e.data.getVar('BUILDSTATS_BASE', True), bn)
        try:
            bb.mkdirhier(bsdir)
        except:
            pass
        if device !=3D "NoLogicalDevice":
            set_diskdata("__diskdata_build", device, e.data)
        set_timedata("__timedata_build", e.data)
        build_time =3D os.path.join(bsdir, "build_stats")
        # write start of build into build_time
        file =3D open(build_time,"a")
        host_info =3D platform.uname()
        file.write("Host Info: ")
        for x in host_info:
            if x:
                file.write(x + " ")
        file.write("\n")
        file.write("Build Started: %0.2f \n" % time.time())
        file.close()

    elif isinstance(e, bb.event.BuildCompleted):
        bn =3D get_bn(e)
        device =3D get_device(e)
        bsdir =3D os.path.join(e.data.getVar('BUILDSTATS_BASE', True), bn)
        taskdir =3D os.path.join(bsdir, e.data.expand("linux-xilinx-3.3.0-r=
0"))
        build_time =3D os.path.join(bsdir, "build_stats")
        file =3D open(build_time, "a")
        ###################################################################=
#####
        # Write build statistics for the build
        ###################################################################=
#####
        timedata =3D get_timedata("__timedata_build", e.data)
        if timedata:
            time, cpu =3D timedata
            # write end of build and cpu used into build_time
            file =3D open(build_time, "a")
            file.write("Elapsed time: %0.2f seconds \n" % (time))
            if cpu:
                file.write("CPU usage: %0.1f%% \n" % cpu)
        if device !=3D "NoLogicalDevice":
            diskio =3D get_diskdata("__diskdata_build", device, e.data)
            if diskio:
                for key in sorted(diskio.iterkeys()):
                    file.write(key + ": " + diskio[key] + "\n")
        file.close()

    if isinstance(e, bb.build.TaskStarted):
        bn =3D get_bn(e)
        device =3D get_device(e)
        bsdir =3D os.path.join(e.data.getVar('BUILDSTATS_BASE', True), bn)
        taskdir =3D os.path.join(bsdir, e.data.expand("linux-xilinx-3.3.0-r=
0"))
        if device !=3D "NoLogicalDevice":
            set_diskdata("__diskdata_task", device, e.data)
        set_timedata("__timedata_task", e.data)
        try:
            bb.mkdirhier(taskdir)
        except:
            pass
        # write into the task event file the name and start time
        file =3D open(os.path.join(taskdir, e.task), "a")
        file.write("Event: %s \n" % bb.event.getName(e))
        file.write("Started: %0.2f \n" % time.time())
        file.close()

    elif isinstance(e, bb.build.TaskSucceeded):
        bn =3D get_bn(e)
        device =3D get_device(e)
        bsdir =3D os.path.join(e.data.getVar('BUILDSTATS_BASE', True), bn)
        taskdir =3D os.path.join(bsdir, e.data.expand("linux-xilinx-3.3.0-r=
0"))
        write_task_data("passed", os.path.join(taskdir, e.task), device, e)
        if e.task =3D=3D "do_rootfs":
            bsdir =3D os.path.join(e.data.getVar('BUILDSTATS_BASE', True), =
bn)
            bs=3Dos.path.join(bsdir, "build_stats")
            file =3D open(bs,"a")
            rootfs =3D e.data.getVar('IMAGE_ROOTFS', True)
            rootfs_size =3D subprocess.Popen(["du", "-sh", rootfs], stdout=
=3Dsubprocess.PIPE).stdout.read()
            file.write("Uncompressed Rootfs size: %s" % rootfs_size)
            file.close()

    elif isinstance(e, bb.build.TaskFailed):
        bn =3D get_bn(e)
        device =3D get_device(e)
        bsdir =3D os.path.join(e.data.getVar('BUILDSTATS_BASE', True), bn)
        taskdir =3D os.path.join(bsdir, e.data.expand("linux-xilinx-3.3.0-r=
0"))
        write_task_data("failed", os.path.join(taskdir, e.task), device, e)
        ###################################################################=
#####
        # Lets make things easier and tell people where the build failed in
        # build_status. We do this here because BuildCompleted triggers no
        # matter what the status of the build actually is
        ###################################################################=
#####
        build_status =3D os.path.join(bsdir, "build_stats")
        file =3D open(build_status,"a")
        file.write(e.data.expand("Failed at: linux-xilinx-3.3.0-r0 at task:=
 %s \n" % e.task))
        file.close()

}


python package_qa_check_rdepends () {
def package_qa_check_rdepends(pkg, pkgdest, skip, d):
    # Don't do this check for kernel/module recipes, there aren't too many =
debug/development
    # packages and you can get false positives e.g. on kernel-module-lirc-d=
ev
    if bb.data.inherits_class("kernel", d) or bb.data.inherits_class("modul=
e-base", d):
        return True

    sane =3D True
    if not "-dbg" in pkg and not "task-" in pkg and not "-image" in pkg:
        # Copied from package_ipk.bbclass
        # boiler plate to update the data
        localdata =3D bb.data.createCopy(d)
        root =3D "%s/%s" % (pkgdest, pkg)

        localdata.setVar('ROOT', '')
        localdata.setVar('ROOT_%s' % pkg, root)
        pkgname =3D localdata.getVar('PKG_%s' % pkg, True)
        if not pkgname:
            pkgname =3D pkg
        localdata.setVar('PKG', pkgname)

        localdata.setVar('OVERRIDES', pkg)

        bb.data.update_data(localdata)

        # Now check the RDEPENDS
        rdepends =3D bb.utils.explode_deps(localdata.getVar('RDEPENDS', Tru=
e) or "")


        # Now do the sanity check!!!
        for rdepend in rdepends:
            if "-dbg" in rdepend and "debug-deps" not in skip:
                error_msg =3D "%s rdepends on %s" % (pkgname,rdepend)
                sane =3D package_qa_handle_error("debug-deps", error_msg, d=
)
            if (not "-dev" in pkg and not "-staticdev" in pkg) and rdepend.=
endswith("-dev") and "dev-deps" not in skip:
                error_msg =3D "%s rdepends on %s" % (pkgname, rdepend)
                sane =3D package_qa_handle_error("dev-deps", error_msg, d)

    return sane
}


python explode_deps () {
def explode_deps(s):
	return bb.utils.explode_deps(s)
}


python package_qa_check_rpath () {
def package_qa_check_rpath(file,name, d, elf, messages):
    """
    Check for dangerous RPATHs
    """
    if not elf:
        return

    scanelf =3D os.path.join(d.getVar('STAGING_BINDIR_NATIVE',True),'scanel=
f')
    bad_dirs =3D [d.getVar('TMPDIR', True) + "/work", d.getVar('STAGING_DIR=
_TARGET', True)]
    bad_dir_test =3D d.getVar('TMPDIR', True)
    if not os.path.exists(scanelf):
        bb.fatal("Can not check RPATH, scanelf (part of pax-utils-native) n=
ot found")

    if not bad_dirs[0] in d.getVar('WORKDIR', True):
        bb.fatal("This class assumed that WORKDIR is /tool/yocto/poky/build=
/tmp/work... Not doing any check")

    output =3D os.popen("%s -B -F%%r#F '%s'" % (scanelf,file))
    txt    =3D output.readline().split()
    for line in txt:
        for dir in bad_dirs:
            if dir in line:
                messages.append("package %s contains bad RPATH %s in file %=
s" % (name, line, file))
}


python map_kernel_arch () {
def map_kernel_arch(a, d):
	import re

	valid_archs =3D d.getVar('valid_archs', True).split()

	if   re.match('(i.86|athlon|x86.64)$', a):	return 'x86'
	elif re.match('arm26$', a):		        return 'arm26'
	elif re.match('armeb$', a):		        return 'arm'
	elif re.match('mips(el|64|64el)$', a):	        return 'mips'
	elif re.match('p(pc|owerpc)(|64)', a):		return 'powerpc'
	elif re.match('sh(3|4)$', a):		        return 'sh'
	elif re.match('bfin', a):                       return 'blackfin'
	elif re.match('microblazeel', a):               return 'microblaze'
        elif a in valid_archs:			        return a
	else:
		bb.error("cannot map '%s' to a linux kernel architecture" % a)
}


python perform_packagecopy () {
	import subprocess
	dest =3D d.getVar('D', True)
	dvar =3D d.getVar('PKGD', True)

	bb.mkdirhier(dvar)

	# Start by package population by taking a copy of the installed
	# files to operate on
	subprocess.call('rm -rf %s/*' % (dvar), shell=3DTrue)
	# Preserve sparse files and hard links
	subprocess.call('tar -cf - -C %s -ps . | tar -xf - -C %s' % (dest, dvar), =
shell=3DTrue)
}


python package_depchains () {
	"""
	For a given set of prefix and postfix modifiers, make those packages
	RRECOMMENDS on the corresponding packages for its RDEPENDS.

	Example:  If package A depends upon package B, and A's .bb emits an
	A-dev package, this would make A-dev Recommends: B-dev.

	If only one of a given suffix is specified, it will take the RRECOMMENDS
	based on the RDEPENDS of *all* other packages. If more than one of a given
	suffix is specified, its will only use the RDEPENDS of the single parent
	package.
	"""

	packages  =3D d.getVar('PACKAGES', True)
	postfixes =3D (d.getVar('DEPCHAIN_POST', True) or '').split()
	prefixes  =3D (d.getVar('DEPCHAIN_PRE', True) or '').split()

	def pkg_adddeprrecs(pkg, base, suffix, getname, depends, d):

		#bb.note('depends for %s is %s' % (base, depends))
		rreclist =3D bb.utils.explode_dep_versions(d.getVar('RRECOMMENDS_' + pkg,=
 True) or d.getVar('RRECOMMENDS', True) or "")

		for depend in depends:
			if depend.find('-native') !=3D -1 or depend.find('-cross') !=3D -1 or de=
pend.startswith('virtual/'):
				#bb.note("Skipping %s" % depend)
				continue
			if depend.endswith('-dev'):
				depend =3D depend.replace('-dev', '')
			if depend.endswith('-dbg'):
				depend =3D depend.replace('-dbg', '')
			pkgname =3D getname(depend, suffix)
			#bb.note("Adding %s for %s" % (pkgname, depend))
			if pkgname not in rreclist:
				rreclist[pkgname] =3D ""

		#bb.note('setting: RRECOMMENDS_%s=3D%s' % (pkg, ' '.join(rreclist)))
		d.setVar('RRECOMMENDS_%s' % pkg, bb.utils.join_deps(rreclist, commasep=3D=
False))

	def pkg_addrrecs(pkg, base, suffix, getname, rdepends, d):

		#bb.note('rdepends for %s is %s' % (base, rdepends))
		rreclist =3D bb.utils.explode_dep_versions(d.getVar('RRECOMMENDS_' + pkg,=
 True) or d.getVar('RRECOMMENDS', True) or "")

		for depend in rdepends:
			if depend.find('virtual-locale-') !=3D -1:
				#bb.note("Skipping %s" % depend)
				continue
			if depend.endswith('-dev'):
				depend =3D depend.replace('-dev', '')
			if depend.endswith('-dbg'):
				depend =3D depend.replace('-dbg', '')
			pkgname =3D getname(depend, suffix)
			#bb.note("Adding %s for %s" % (pkgname, depend))
			if pkgname not in rreclist:
				rreclist[pkgname] =3D ""

		#bb.note('setting: RRECOMMENDS_%s=3D%s' % (pkg, ' '.join(rreclist)))
		d.setVar('RRECOMMENDS_%s' % pkg, bb.utils.join_deps(rreclist, commasep=3D=
False))

	def add_dep(list, dep):
		dep =3D dep.split(' (')[0].strip()
		if dep not in list:
			list.append(dep)

	depends =3D []
	for dep in bb.utils.explode_deps(d.getVar('DEPENDS', True) or ""):
		add_dep(depends, dep)

	rdepends =3D []
	for dep in bb.utils.explode_deps(d.getVar('RDEPENDS', True) or ""):
		add_dep(rdepends, dep)

	for pkg in packages.split():
		for dep in bb.utils.explode_deps(d.getVar('RDEPENDS_' + pkg, True) or "")=
:
			add_dep(rdepends, dep)

	#bb.note('rdepends is %s' % rdepends)

	def post_getname(name, suffix):
		return '%s%s' % (name, suffix)
	def pre_getname(name, suffix):
		return '%s%s' % (suffix, name)

	pkgs =3D {}
	for pkg in packages.split():
		for postfix in postfixes:
			if pkg.endswith(postfix):
				if not postfix in pkgs:
					pkgs[postfix] =3D {}
				pkgs[postfix][pkg] =3D (pkg[:-len(postfix)], post_getname)

		for prefix in prefixes:
			if pkg.startswith(prefix):
				if not prefix in pkgs:
					pkgs[prefix] =3D {}
				pkgs[prefix][pkg] =3D (pkg[:-len(prefix)], pre_getname)

	for suffix in pkgs:
		for pkg in pkgs[suffix]:
			if d.getVarFlag('RRECOMMENDS_' + pkg, 'nodeprrecs'):
				continue
			(base, func) =3D pkgs[suffix][pkg]
			if suffix =3D=3D "-dev":
				pkg_adddeprrecs(pkg, base, suffix, func, depends, d)
			if len(pkgs[suffix]) =3D=3D 1:
				pkg_addrrecs(pkg, base, suffix, func, rdepends, d)
			else:
				rdeps =3D []
				for dep in bb.utils.explode_deps(d.getVar('RDEPENDS_' + base, True) or =
d.getVar('RDEPENDS', True) or ""):
					add_dep(rdeps, dep)
				pkg_addrrecs(pkg, base, suffix, func, rdeps, d)
}


python sstate_task_postfunc () {
    shared_state =3D sstate_state_fromvars(d)
    sstate_install(shared_state, d)
    for intercept in shared_state['interceptfuncs']:
        bb.build.exec_func(intercept, d)
    sstate_package(shared_state, d)
}


python sysroot_checkhashes () {
def sysroot_checkhashes(covered, tasknames, fnids, fns, d):
    problems =3D set()
    configurefnids =3D set()
    for task in xrange(len(tasknames)):
        if tasknames[task] =3D=3D "do_configure" and task not in covered:
            configurefnids.add(fnids[task])
    for task in covered:
        if tasknames[task] =3D=3D "do_populate_sysroot" and fnids[task] in =
configurefnids:
            problems.add(task)
    return problems
}


python populate_packages () {
	def extract_modinfo(file):
		import tempfile, re, subprocess
		tempfile.tempdir =3D d.getVar("WORKDIR", True)
		tf =3D tempfile.mkstemp()
		tmpfile =3D tf[1]
		cmd =3D "PATH=3D\"%s\" %sobjcopy -j .modinfo -O binary %s %s" % (d.getVar=
("PATH", True), d.getVar("HOST_PREFIX", True) or "", file, tmpfile)
		subprocess.call(cmd, shell=3DTrue)
		f =3D open(tmpfile)
		l =3D f.read().split("\000")
		f.close()
		os.close(tf[0])
		os.unlink(tmpfile)
		exp =3D re.compile("([^=3D]+)=3D(.*)")
		vals =3D {}
		for i in l:
			m =3D exp.match(i)
			if not m:
				continue
			vals[m.group(1)] =3D m.group(2)
		return vals

	def parse_depmod():
		import re

		dvar =3D d.getVar('PKGD', True)
		if not dvar:
			bb.error("PKGD not defined")
			return

		kernelver =3D d.getVar('KERNEL_VERSION', True)
		kernelver_stripped =3D kernelver
		m =3D re.match('^(.*-hh.*)[\.\+].*$', kernelver)
		if m:
			kernelver_stripped =3D m.group(1)
		path =3D d.getVar("PATH", True)

		cmd =3D "PATH=3D\"%s\" depmod -n -a -b %s -F %s/boot/System.map-%s %s" % =
(path, dvar, dvar, kernelver, kernelver_stripped)
		f =3D os.popen(cmd, 'r')

		deps =3D {}
		pattern0 =3D "^(.*\.k?o):..*$"
		pattern1 =3D "^(.*\.k?o):\s*(.*\.k?o)\s*$"
		pattern2 =3D "^(.*\.k?o):\s*(.*\.k?o)\s*\\\$"
		pattern3 =3D "^\t(.*\.k?o)\s*\\\$"
		pattern4 =3D "^\t(.*\.k?o)\s*$"

		line =3D f.readline()
		while line:
			if not re.match(pattern0, line):
				line =3D f.readline()
				continue
			m1 =3D re.match(pattern1, line)
			if m1:
				deps[m1.group(1)] =3D m1.group(2).split()
			else:
				m2 =3D re.match(pattern2, line)
				if m2:
					deps[m2.group(1)] =3D m2.group(2).split()
					line =3D f.readline()
					m3 =3D re.match(pattern3, line)
					while m3:
						deps[m2.group(1)].extend(m3.group(1).split())
						line =3D f.readline()
						m3 =3D re.match(pattern3, line)
					m4 =3D re.match(pattern4, line)
					deps[m2.group(1)].extend(m4.group(1).split())
			line =3D f.readline()
		f.close()
		return deps

	def get_dependencies(file, pattern, format):
		# file no longer includes PKGD
		file =3D file.replace(d.getVar('PKGD', True) or '', '', 1)
		# instead is prefixed with /lib/modules/3.3.0-14.2-build1
		file =3D file.replace("/lib/modules/%s/" % d.getVar('KERNEL_VERSION', Tru=
e) or '', '', 1)

		if module_deps.has_key(file):
			import re
			dependencies =3D []
			for i in module_deps[file]:
				m =3D re.match(pattern, os.path.basename(i))
				if not m:
					continue
				on =3D legitimize_package_name(m.group(1))
				dependency_pkg =3D format % on
				dependencies.append(dependency_pkg)
			return dependencies
		return []

	def frob_metadata(file, pkg, pattern, format, basename):
		import re
		vals =3D extract_modinfo(file)

		dvar =3D d.getVar('PKGD', True)

		# If autoloading is requested, output /etc/modules-load.d/<name>.conf and=
 append
		# appropriate modprobe commands to the postinst
		autoload =3D d.getVar('module_autoload_%s' % basename, True)
		if autoload:
			name =3D '%s/etc/modules-load.d/%s.conf' % (dvar, basename)
			f =3D open(name, 'w')
			for m in autoload.split():
				f.write('%s\n' % m)
			f.close()
			postinst =3D d.getVar('pkg_postinst_%s' % pkg, True)
			if not postinst:
				bb.fatal("pkg_postinst_%s not defined" % pkg)
			postinst +=3D d.getVar('autoload_postinst_fragment', True) % autoload
			d.setVar('pkg_postinst_%s' % pkg, postinst)

		# Write out any modconf fragment
		modconf =3D d.getVar('module_conf_%s' % basename, True)
		if modconf:
			name =3D '%s/etc/modprobe.d/%s.conf' % (dvar, basename)
			f =3D open(name, 'w')
			f.write("%s\n" % modconf)
			f.close()

		files =3D d.getVar('FILES_%s' % pkg, True)
		files =3D "%s /etc/modules-load.d/%s.conf /etc/modprobe.d/%s.conf" % (fil=
es, basename, basename)
		d.setVar('FILES_%s' % pkg, files)

		if vals.has_key("description"):
			old_desc =3D d.getVar('DESCRIPTION_' + pkg, True) or ""
			d.setVar('DESCRIPTION_' + pkg, old_desc + "; " + vals["description"])

		rdepends_str =3D d.getVar('RDEPENDS_' + pkg, True)
		if rdepends_str:
			rdepends =3D rdepends_str.split()
		else:
			rdepends =3D []
		rdepends.extend(get_dependencies(file, pattern, format))
		d.setVar('RDEPENDS_' + pkg, ' '.join(rdepends))

	module_deps =3D parse_depmod()
	module_regex =3D '^(.*)\.k?o$'
	module_pattern =3D 'kernel-module-%s'

	postinst =3D d.getVar('pkg_postinst_modules', True)
	postrm =3D d.getVar('pkg_postrm_modules', True)
	do_split_packages(d, root=3D'/lib/firmware', file_regex=3D'^(.*)\.bin$', o=
utput_pattern=3D'kernel-firmware-%s', description=3D'Firmware for %s', recu=
rsive=3DTrue, extra_depends=3D'')
	do_split_packages(d, root=3D'/lib/firmware', file_regex=3D'^(.*)\.fw$', ou=
tput_pattern=3D'kernel-firmware-%s', description=3D'Firmware for %s', recur=
sive=3DTrue, extra_depends=3D'')
	do_split_packages(d, root=3D'/lib/firmware', file_regex=3D'^(.*)\.cis$', o=
utput_pattern=3D'kernel-firmware-%s', description=3D'Firmware for %s', recu=
rsive=3DTrue, extra_depends=3D'')
	do_split_packages(d, root=3D'/lib/modules', file_regex=3Dmodule_regex, out=
put_pattern=3Dmodule_pattern, description=3D'%s kernel module', postinst=3D=
postinst, postrm=3Dpostrm, recursive=3DTrue, hook=3Dfrob_metadata, extra_de=
pends=3D'update-modules kernel-%s' % d.getVar("KERNEL_VERSION", True))

	# If modules-load.d and modprobe.d are empty at this point, remove them to
	# avoid warnings. removedirs only raises an OSError if an empty
	# directory cannot be removed.
	dvar =3D d.getVar('PKGD', True)
	for dir in ["%s/etc/modprobe.d" % (dvar), "%s/etc/modules-load.d" % (dvar)=
, "%s/etc" % (dvar)]:
		if len(os.listdir(dir)) =3D=3D 0:
			os.rmdir(dir)

	import re
	metapkg =3D "kernel-modules"
	d.setVar('ALLOW_EMPTY_' + metapkg, "1")
	d.setVar('FILES_' + metapkg, "")
	blacklist =3D [ 'kernel-dev', 'kernel-image', 'kernel-base', 'kernel-vmlin=
ux', 'kernel-misc' ]
	for l in module_deps.values():
		for i in l:
			pkg =3D module_pattern % legitimize_package_name(re.match(module_regex, =
os.path.basename(i)).group(1))
			blacklist.append(pkg)
	metapkg_rdepends =3D []
	packages =3D d.getVar('PACKAGES', True).split()
	for pkg in packages[1:]:
		if not pkg in blacklist and not pkg in metapkg_rdepends:
			metapkg_rdepends.append(pkg)
	d.setVar('RDEPENDS_' + metapkg, ' '.join(metapkg_rdepends))
	d.setVar('DESCRIPTION_' + metapkg, 'Kernel modules meta package')
	packages.append(metapkg)
	d.setVar('PACKAGES', ' '.join(packages))
	import glob, stat, errno, re, subprocess

	workdir =3D d.getVar('WORKDIR', True)
	outdir =3D d.getVar('DEPLOY_DIR', True)
	dvar =3D d.getVar('PKGD', True)
	packages =3D d.getVar('PACKAGES', True)
	pn =3D d.getVar('PN', True)

	bb.mkdirhier(outdir)
	os.chdir(dvar)

	# Sanity check PACKAGES for duplicates and for LICENSE_EXCLUSION
	# Sanity should be moved to sanity.bbclass once we have the infrastucture
	package_list =3D []

	for pkg in packages.split():
		if d.getVar('LICENSE_EXCLUSION-' + pkg, True):
			bb.warn("%s has an incompatible license. Excluding from packaging." % pk=
g)
			packages.remove(pkg)
		else:
			if pkg in package_list:
				bb.error("%s is listed in PACKAGES multiple times, this leads to packag=
ing errors." % pkg)
			else:
				package_list.append(pkg)
	d.setVar('PACKAGES', ' '.join(package_list))
	pkgdest =3D d.getVar('PKGDEST', True)
	subprocess.call('rm -rf %s' % pkgdest, shell=3DTrue)

	seen =3D []

	for pkg in package_list:
		localdata =3D bb.data.createCopy(d)
		root =3D os.path.join(pkgdest, pkg)
		bb.mkdirhier(root)

		localdata.setVar('PKG', pkg)
		overrides =3D localdata.getVar('OVERRIDES', True)
		if not overrides:
			raise bb.build.FuncFailed('OVERRIDES not defined')
		localdata.setVar('OVERRIDES', overrides + ':' + pkg)
		bb.data.update_data(localdata)

		filesvar =3D localdata.getVar('FILES', True) or ""
		files =3D filesvar.split()
		file_links =3D {}
		for file in files:
			if file.find("//") !=3D -1:
				bb.warn("FILES variable for package %s contains '//' which is invalid. =
Attempting to fix this but you should correct the metadata.\n" % pkg)
				file.replace("//", "/")
			if os.path.isabs(file):
				file =3D '.' + file
			if not os.path.islink(file):
				if os.path.isdir(file):
					newfiles =3D  [ os.path.join(file,x) for x in os.listdir(file) ]
					if newfiles:
						files +=3D newfiles
						continue
			globbed =3D glob.glob(file)
			if globbed:
				if [ file ] !=3D globbed:
					files +=3D globbed
					continue
			if (not os.path.islink(file)) and (not os.path.exists(file)):
				continue
			if file in seen:
				continue
			seen.append(file)

			def mkdir(src, dest, p):
				src =3D os.path.join(src, p)
				dest =3D os.path.join(dest, p)
				bb.mkdirhier(dest)
				fstat =3D os.stat(src)
				os.chmod(dest, fstat.st_mode)
				os.chown(dest, fstat.st_uid, fstat.st_gid)
				if p not in seen:
					seen.append(p)

			def mkdir_recurse(src, dest, paths):
				while paths.startswith("./"):
					paths =3D paths[2:]
				p =3D "."
				for c in paths.split("/"):
					p =3D os.path.join(p, c)
					if not os.path.exists(os.path.join(dest, p)):
						mkdir(src, dest, p)

			if os.path.isdir(file) and not os.path.islink(file):
				mkdir_recurse(dvar, root, file)
				continue

			mkdir_recurse(dvar, root, os.path.dirname(file))
			fpath =3D os.path.join(root,file)
			if not os.path.islink(file):
				os.link(file, fpath)
				fstat =3D os.stat(file)
				os.chmod(fpath, fstat.st_mode)
				os.chown(fpath, fstat.st_uid, fstat.st_gid)
				continue
			ret =3D bb.copyfile(file, fpath)
			if ret is False or ret =3D=3D 0:
				raise bb.build.FuncFailed("File population failed")

		del localdata
	os.chdir(workdir)

	unshipped =3D []
	for root, dirs, files in os.walk(dvar):
		dir =3D root[len(dvar):]
		if not dir:
			dir =3D os.sep
		for f in (files + dirs):
			path =3D os.path.join(dir, f)
			if ('.' + path) not in seen:
				unshipped.append(path)

	if unshipped !=3D []:
		bb.warn("For recipe %s, the following files/directories were installed bu=
t not shipped in any package:" % pn)
		for f in unshipped:
			bb.warn("  " + f)

	bb.build.exec_func("package_name_hook", d)

	for pkg in package_list:
		pkgname =3D d.getVar('PKG_%s' % pkg, True)
		if pkgname is None:
			d.setVar('PKG_%s' % pkg, pkg)

	dangling_links =3D {}
	pkg_files =3D {}
	for pkg in package_list:
		dangling_links[pkg] =3D []
		pkg_files[pkg] =3D []
		inst_root =3D os.path.join(pkgdest, pkg)
		for root, dirs, files in os.walk(inst_root):
			for f in files:
				path =3D os.path.join(root, f)
				rpath =3D path[len(inst_root):]
				pkg_files[pkg].append(rpath)
				try:
					s =3D os.stat(path)
				except OSError, (err, strerror):
					if err !=3D errno.ENOENT:
						raise
					target =3D os.readlink(path)
					if target[0] !=3D '/':
						target =3D os.path.join(root[len(inst_root):], target)
					dangling_links[pkg].append(os.path.normpath(target))

	for pkg in package_list:
		rdepends =3D bb.utils.explode_dep_versions(d.getVar('RDEPENDS_' + pkg, Tr=
ue) or d.getVar('RDEPENDS', True) or "")

		for l in dangling_links[pkg]:
			found =3D False
			bb.debug(1, "%s contains dangling link %s" % (pkg, l))
			for p in package_list:
				for f in pkg_files[p]:
					if f =3D=3D l:
						found =3D True
						bb.debug(1, "target found in %s" % p)
						if p =3D=3D pkg:
							break
						if p not in rdepends:
							rdepends[p] =3D ""
						break
			if found =3D=3D False:
				bb.note("%s contains dangling symlink to %s" % (pkg, l))
		d.setVar('RDEPENDS_' + pkg, bb.utils.join_deps(rdepends, commasep=3DFalse=
))
}


python generate_git_config () {
def generate_git_config(e):
        from bb import data

        if data.getVar('GIT_CORE_CONFIG', e.data, True):
                gitconfig_path =3D e.data.getVar('GIT_CONFIG', True)
                proxy_command =3D "    gitProxy =3D %s\n" % data.getVar('OE=
_GIT_PROXY_COMMAND', e.data, True)

                bb.mkdirhier(e.data.expand("/tool/yocto/poky/build/tmp/sysr=
oots/x86_64-linux/etc"))
                if (os.path.exists(gitconfig_path)):
                        os.remove(gitconfig_path)

                f =3D open(gitconfig_path, 'w')
                f.write("[core]\n")
                ignore_hosts =3D data.getVar('GIT_PROXY_IGNORE', e.data, Tr=
ue).split()
                for ignore_host in ignore_hosts:
                        f.write("    gitProxy =3D none for %s\n" % ignore_h=
ost)
                f.write(proxy_command)
                f.close
}


python extend_variants () {
def extend_variants(d, var, extend, delim=3D':'):
	"""Return a string of all bb class extend variants for the given extend"""
	variants =3D []
	whole =3D d.getVar(var, True) or ""
	for ext in whole.split():
		eext =3D ext.split(delim)
		if len(eext) > 1 and eext[0] =3D=3D extend:
			variants.append(eext[1])
	return " ".join(variants)
}


python buildcfg_vars () {
def buildcfg_vars(d):
	statusvars =3D oe.data.typed_value('BUILDCFG_VARS', d)
	for var in statusvars:
		value =3D d.getVar(var, True)
		if value is not None:
			yield '%-17s =3D "%s"' % (var, value)
}


python package_qa_check_unsafe_references_in_binaries () {
def package_qa_check_unsafe_references_in_binaries(path, name, d, elf, mess=
ages):
	"""
	Ensure binaries in base_[bindir|sbindir|libdir] do not link to files under=
 exec_prefix
	"""
	if unsafe_references_skippable(path, name, d):
		return

	if elf:
		import subprocess as sub
		pn =3D d.getVar('PN', True)

		exec_prefix =3D d.getVar('exec_prefix', True)
		sysroot_path =3D d.getVar('STAGING_DIR_TARGET', True)
		sysroot_path_usr =3D sysroot_path + exec_prefix

		try:
			ldd_output =3D bb.process.Popen(["prelink-rtld", "--root", sysroot_path,=
 path], stdout=3Dsub.PIPE).stdout.read()
		except bb.process.CmdError:
			error_msg =3D pn + ": prelink-rtld aborted when processing %s" % path
			package_qa_handle_error("unsafe-references-in-binaries", error_msg, d)
			return False

		if sysroot_path_usr in ldd_output:
			ldd_output =3D ldd_output.replace(sysroot_path, "")

			pkgdest =3D d.getVar('PKGDEST', True)
			packages =3D d.getVar('PACKAGES', True)

			for package in packages.split():
				short_path =3D path.replace('%s/%s' % (pkgdest, package), "", 1)
				if (short_path !=3D path):
					break

			base_err =3D pn + ": %s, installed in the base_prefix, requires a shared=
 library under exec_prefix (%s)" % (short_path, exec_prefix)
			for line in ldd_output.split('\n'):
				if exec_prefix in line:
					error_msg =3D "%s: %s" % (base_err, line.strip())
					package_qa_handle_error("unsafe-references-in-binaries", error_msg, d)

			return False
}


python get_package_mapping () {
def get_package_mapping (pkg, d):
	import oe.packagedata

	data =3D oe.packagedata.read_subpkgdata(pkg, d)
	key =3D "PKG_%s" % pkg

	if key in data:
		return data[key]

	return pkg
}


python sstate_task_prefunc () {
    shared_state =3D sstate_state_fromvars(d)
    sstate_clean(shared_state, d)
}


python check_sanity_sstate_dir_change () {
def check_sanity_sstate_dir_change(sstate_dir, data):
    # Sanity checks to be done when the value of SSTATE_DIR changes

    # Check that SSTATE_DIR isn't on a filesystem with limited filename len=
gth (eg. eCryptFS)
    testmsg =3D ""
    if sstate_dir !=3D "":
        testmsg =3D check_create_long_filename(sstate_dir, "SSTATE_DIR")
        # If we don't have permissions to SSTATE_DIR, suggest the user set =
it as an SSTATE_MIRRORS
        try:
            err =3D testmsg.split(': ')[1].strip()
            if err =3D=3D "Permission denied.":
                testmsg =3D testmsg + "You could try using %s in SSTATE_MIR=
RORS rather than as an SSTATE_CACHE.\n" % (sstate_dir)
        except IndexError:
            pass
    return testmsg
}


python sstate_setscene () {
def sstate_setscene(d):
    shared_state =3D sstate_state_fromvars(d)
    accelerate =3D sstate_installpkg(shared_state, d)
    if not accelerate:
        raise bb.build.FuncFailed("No suitable staging package found")
}


python find_board () {
def find_board(a, d):
    # Given a xps project path return the board board model
    board =3D "unknown"
    if a and os.path.exists(a):
        try:
            xps_proj =3D os.path.join(a, "system.mhs")
            xps_hwd =3D file(xps_proj, 'r')

            for l in xps_hwd:
                if "Target Board" in l:
                    board =3D l
                    break
            # Close file descriptor
            xps_hwd.close()

            if board !=3D "unknown":
                # Strip board board name
                board =3D board.split()
                return board[6].lower()
            else:
                return board
        except IOError:
            return board
    else:
        return board}


python base_path_relative () {
def base_path_relative(src, dest):
    return oe.path.relative(src, dest)
}


python do_deploy_setscene () {
    sstate_setscene(d)
}


python do_cleanall () {
        src_uri =3D (d.getVar('SRC_URI', True) or "").split()
        if len(src_uri) =3D=3D 0:
            return

	localdata =3D bb.data.createCopy(d)
	bb.data.update_data(localdata)

        try:
            fetcher =3D bb.fetch2.Fetch(src_uri, localdata)
            fetcher.clean()
        except bb.fetch2.BBFetchException, e:
            raise bb.build.FuncFailed(e)
}


python sstate_package () {
def sstate_package(ss, d):
    import oe.path

    def make_relative_symlink(path, outputpath, d):
        # Replace out absolute TMPDIR paths in symlinks with relative ones
        if not os.path.islink(path):
            return
        link =3D os.readlink(path)
        if not os.path.isabs(link):
            return
        if not link.startswith(tmpdir):
            return

        depth =3D link.rpartition(tmpdir)[2].count('/')
        base =3D link.partition(tmpdir)[2].strip()
        while depth > 1:
            base =3D "../" + base
            depth -=3D 1

        bb.debug(2, "Replacing absolute path %s with relative path %s" % (l=
ink, base))
        os.remove(path)
        os.symlink(base, path)

    tmpdir =3D d.getVar('TMPDIR', True)

    sstatebuild =3D d.expand("/tool/yocto/poky/build/tmp/work/virtex5-poky-=
linux/linux-xilinx-3.3.0-r0/sstate-build-%s/" % ss['name'])
    sstatepkg =3D d.getVar('SSTATE_PKG', True) + '_'+ ss['name'] + ".tgz"
    bb.mkdirhier(sstatebuild)
    bb.mkdirhier(os.path.dirname(sstatepkg))
    for state in ss['dirs']:
        srcbase =3D state[0].rstrip("/").rsplit('/', 1)[0]
        for walkroot, dirs, files in os.walk(state[1]):
            for file in files:
                srcpath =3D os.path.join(walkroot, file)
                dstpath =3D srcpath.replace(state[1], sstatebuild + state[0=
])
                make_relative_symlink(srcpath, dstpath, d)
            for dir in dirs:
                srcpath =3D os.path.join(walkroot, dir)
                dstpath =3D srcpath.replace(state[1], sstatebuild + state[0=
])
                make_relative_symlink(srcpath, dstpath, d)
        bb.debug(2, "Preparing tree %s for packaging at %s" % (state[1], ss=
tatebuild + state[0]))
        oe.path.copytree(state[1], sstatebuild + state[0])

    workdir =3D d.getVar('WORKDIR', True)
    for plain in ss['plaindirs']:
        pdir =3D plain.replace(workdir, sstatebuild)
        bb.mkdirhier(plain)
        bb.mkdirhier(pdir)
        oe.path.copytree(plain, pdir)

    d.setVar('SSTATE_BUILDDIR', sstatebuild)
    d.setVar('SSTATE_PKG', sstatepkg)
    sstate_hardcode_path(d)
    bb.build.exec_func('sstate_create_package', d)

    bb.siggen.dump_this_task(sstatepkg + ".siginfo", d)

    return
}


python do_populate_lic () {
    """
    Populate LICENSE_DIRECTORY with licenses.
    """
    import os
    import bb
    import shutil
    import oe.license

    pn =3D d.getVar('PN', True)
    for package in d.getVar('PACKAGES', True):
        if d.getVar('LICENSE_' + pn + '-' + package, True):
            license_types =3D license_types + ' & ' + \
                            d.getVar('LICENSE_' + pn + '-' + package, True)

    #If we get here with no license types, then that means we have a recipe
    #level license. If so, we grab only those.
    try:
        license_types
    except NameError:
        # All the license types at the recipe level
        license_types =3D d.getVar('LICENSE', True)

    # All the license files for the package
    lic_files =3D d.getVar('LIC_FILES_CHKSUM', True)
    pn =3D d.getVar('PN', True)
    # The base directory we wrangle licenses to
    destdir =3D os.path.join(d.getVar('LICSSTATEDIR', True), pn)
    # The license files are located in S/LIC_FILE_CHECKSUM.
    srcdir =3D d.getVar('S', True)
    # Directory we store the generic licenses as set in the distro configur=
ation
    generic_directory =3D d.getVar('COMMON_LICENSE_DIR', True)
    license_source_dirs =3D []
    license_source_dirs.append(generic_directory)
    try:
        additional_lic_dirs =3D d.getVar('LICENSE_DIR', True).split()
        for lic_dir in additional_lic_dirs:
            license_source_dirs.append(lic_dir)
    except:
        pass

    class FindVisitor(oe.license.LicenseVisitor):
        def visit_Str(self, node):
            #
            # Until I figure out what to do with
            # the two modifiers I support (or greater =3D +
            # and "with exceptions" being *
            # we'll just strip out the modifier and put
            # the base license.
            find_license(node.s.replace("+", "").replace("*", ""))
            self.generic_visit(node)

    def find_license(license_type):
        try:
            bb.mkdirhier(gen_lic_dest)
        except:
            pass
        spdx_generic =3D None
        license_source =3D None
        # If the generic does not exist we need to check to see if there is=
 an SPDX mapping to it
        for lic_dir in license_source_dirs:
            if not os.path.isfile(os.path.join(lic_dir, license_type)):
                if d.getVarFlag('SPDXLICENSEMAP', license_type) !=3D None:
                    # Great, there is an SPDXLICENSEMAP. We can copy!
                    bb.debug(1, "We need to use a SPDXLICENSEMAP for %s" % =
(license_type))
                    spdx_generic =3D d.getVarFlag('SPDXLICENSEMAP', license=
_type)
                    license_source =3D lic_dir
                    break
            elif os.path.isfile(os.path.join(lic_dir, license_type)):
                spdx_generic =3D license_type
                license_source =3D lic_dir
                break

        if spdx_generic and license_source:
            # we really should copy to generic_ + spdx_generic, however, th=
at ends up messing the manifest
            # audit up. This should be fixed in emit_pkgdata (or, we actual=
ly got and fix all the recipes)

            bb.copyfile(os.path.join(license_source, spdx_generic), os.path=
.join(os.path.join(d.getVar('LICSSTATEDIR', True), pn), "generic_" + licens=
e_type))
            if not os.path.isfile(os.path.join(os.path.join(d.getVar('LICSS=
TATEDIR', True), pn), "generic_" + license_type)):
            # If the copy didn't occur, something horrible went wrong and w=
e fail out
                bb.warn("%s for %s could not be copied for some reason. It =
may not exist. WARN for now." % (spdx_generic, pn))
        else:
            # And here is where we warn people that their licenses are lous=
y
            bb.warn("%s: No generic license file exists for: %s in any prov=
ider" % (pn, license_type))
            pass

    try:
        bb.mkdirhier(destdir)
    except:
        pass

    if not generic_directory:
        raise bb.build.FuncFailed("COMMON_LICENSE_DIR is unset. Please set =
this in your distro config")

    if not lic_files:
        # No recipe should have an invalid license file. This is checked el=
se
        # where, but let's be pedantic
        bb.note(pn + ": Recipe file does not have license file information.=
")
        return True

    for url in lic_files.split():
        (type, host, path, user, pswd, parm) =3D bb.decodeurl(url)
        # We want the license file to be copied into the destination
        srclicfile =3D os.path.join(srcdir, path)
        ret =3D bb.copyfile(srclicfile, os.path.join(destdir, os.path.basen=
ame(path)))
        # If the copy didn't occur, something horrible went wrong and we fa=
il out
        if not ret:
            bb.warn("%s could not be copied for some reason. It may not exi=
st. WARN for now." % srclicfile)

    v =3D FindVisitor()
    try:
        v.visit_string(license_types)
    except oe.license.InvalidLicense as exc:
        bb.fatal('%s: %s' % (d.getVar('PF', True), exc))
    except SyntaxError:
        bb.warn("%s: Failed to parse it's LICENSE field." % (d.getVar('PF',=
 True)))

}


python package_qa_handle_error () {
def package_qa_handle_error(error_class, error_msg, d):
    package_qa_write_error(error_msg, d)
    if error_class in (d.getVar("ERROR_QA", True) or "").split():
        bb.error("QA Issue: %s" % error_msg)
        return False
    else:
        bb.warn("QA Issue: %s" % error_msg)
        return True
}


python all_multilib_tune_values () {
def all_multilib_tune_values(d, var, unique =3D True, need_split =3D True, =
delim =3D ' '):
	"""Return a string of all ${var} in all multilib tune configuration"""
	values =3D []
	value =3D d.getVar(var, True) or ""
	if value !=3D "":
		if need_split:
			for item in value.split(delim):
				values.append(item)
		else:
			values.append(value)
	variants =3D d.getVar("MULTILIB_VARIANTS", True) or ""
	for item in variants.split():
		localdata =3D bb.data.createCopy(d)
		overrides =3D localdata.getVar("OVERRIDES", False) + ":virtclass-multilib=
-" + item
		localdata.setVar("OVERRIDES", overrides)
		bb.data.update_data(localdata)
		value =3D localdata.getVar(var, True) or ""
		if value !=3D "":
			if need_split:
				for item in value.split(delim):
					values.append(item)
			else:
				values.append(value)
	if unique:
		#we do this to keep order as much as possible
		ret =3D []
		for value in values:
			if not value in ret:
				ret.append(value)
	else:
		ret =3D values
	return " ".join(ret)}


python set_timedata () {
def set_timedata(var, data):
    import time
    time =3D time.time()
    cputime =3D get_cputime()
    proctime =3D get_process_cputime(os.getpid())
    data.setVar(var, (time, cputime, proctime))
}


python package_get_auto_pr () {
	# per recipe PRSERV_HOST PRSERV_PORT
	pn =3D d.getVar('PN', True)
	host =3D d.getVar("PRSERV_HOST_" + pn, True)
	port =3D d.getVar("PRSERV_PORT_" + pn, True)
	if not (host is None):
		d.setVar("PRSERV_HOST", host)
	if not (port is None):
		d.setVar("PRSERV_PORT", port)
	if d.getVar('USE_PR_SERV', True) !=3D "0":
		try:
			auto_pr=3Dprserv_get_pr_auto(d)
		except Exception as e:
			bb.fatal("Can NOT get PRAUTO, exception %s" %  str(e))
			return
		if auto_pr is None:
			if d.getVar('PRSERV_LOCKDOWN', True):
				bb.fatal("Can NOT get PRAUTO from lockdown exported file")
			else:
				bb.fatal("Can NOT get PRAUTO from remote PR service")
			return
		d.setVar('PRAUTO',str(auto_pr))
}


python base_do_fetch () {

	src_uri =3D (d.getVar('SRC_URI', True) or "").split()
	if len(src_uri) =3D=3D 0:
		return

	localdata =3D bb.data.createCopy(d)
	bb.data.update_data(localdata)

        try:
            fetcher =3D bb.fetch2.Fetch(src_uri, localdata)
            fetcher.download()
        except bb.fetch2.BBFetchException, e:
            raise bb.build.FuncFailed(e)
}


python do_populate_sysroot () {
    #
    # if do_stage exists, we're legacy. In that case run the do_stage,
    # modify the SYSROOT_DESTDIR variable and then run the staging preproce=
ss
    # functions against staging directly.
    #
    # Otherwise setup a destdir, copy the results from do_install
    # and run the staging preprocess against that
    #

    bb.build.exec_func("sysroot_stage_all", d)
    for f in (d.getVar('SYSROOT_PREPROCESS_FUNCS', True) or '').split():
        bb.build.exec_func(f, d)
}


python package_name_hook () {
	bb.build.exec_func('debian_package_name_hook', d)
}


python patch_path () {
def patch_path(url, fetch, workdir):
	"""Return the local path of a patch, or None if this isn't a patch"""

	local =3D fetch.localpath(url)
	base, ext =3D os.path.splitext(os.path.basename(local))
	if ext in ('.gz', '.bz2', '.Z'):
		local =3D os.path.join(workdir, base)
		ext =3D os.path.splitext(base)[1]

	urldata =3D fetch.ud[url]
	if "apply" in urldata.parm:
		apply =3D oe.types.boolean(urldata.parm["apply"])
		if not apply:
			return
	elif ext not in (".diff", ".patch"):
		return

	return local
}


python base_get_metadata_monotone_revision () {
def base_get_metadata_monotone_revision(path, d):
	monotone_revision =3D "<unknown>"
	try:
		monotone_revision =3D file( "%s/_MTN/revision" % path ).read().strip()
		if monotone_revision.startswith( "format_version" ):
			monotone_revision_words =3D monotone_revision.split()
			monotone_revision =3D monotone_revision_words[ monotone_revision_words.i=
ndex( "old_revision" )+1][1:-1]
	except IOError:
		pass
	return monotone_revision
}


python base_path_out () {
def base_path_out(path, d):
    return oe.path.format_display(path, d)
}


python set_device () {
def set_device(e):
    tmpdir =3D e.data.getVar('TMPDIR', True)
    try:
        os.remove(e.data.getVar('DEVFILE', True))
    except:
        pass
    #######################################################################=
#####
    # We look for the volume TMPDIR lives on. To do all disks would make li=
ttle
    # sense and not give us any particularly useful data. In theory we coul=
d do
    # something like stick DL_DIR on a different partition and this would
    # throw stats gathering off. The same goes with SSTATE_DIR. However, le=
t's
    # get the basics in here and work on the cornercases later.
    # A note. /proc/diskstats does not contain info on encryptfs, tmpfs, et=
c.
    # If we end up hitting one of these fs, we'll just skip diskstats colle=
ction.
    #######################################################################=
#####
    device=3Dos.stat(tmpdir)
    majordev=3Dos.major(device.st_dev)
    minordev=3Dos.minor(device.st_dev)
    #######################################################################=
#####
    # Bug 1700:
    # Because tmpfs/encryptfs/ramfs etc inserts no entry in /proc/diskstats
    # we set rdev to NoLogicalDevice and search for it later. If we find NL=
D
    # we do not collect diskstats as the method to collect meaningful stati=
stics
    # for these fs types requires a bit more research.
    #######################################################################=
#####
    rdev=3D"NoLogicalDevice"
    try:
        for line in open("/proc/diskstats", "r"):
            if majordev =3D=3D int(line.split()[0]) and minordev =3D=3D int=
(line.split()[1]):
               rdev=3Dline.split()[2]
    except:
        pass
    file =3D open(e.data.getVar('DEVFILE', True), "w")
    file.write(rdev)
    file.close()
}


python sstate_clean_cachefiles () {
def sstate_clean_cachefiles(d):
    for task in (d.getVar('SSTATETASKS', True) or "").split():
        ss =3D sstate_state_fromvars(d, task[3:])
        sstate_clean_cachefile(ss, d)
}


python do_split_packages () {
def do_split_packages(d, root, file_regex, output_pattern, description, pos=
tinst=3DNone, recursive=3DFalse, hook=3DNone, extra_depends=3DNone, aux_fil=
es_pattern=3DNone, postrm=3DNone, allow_dirs=3DFalse, prepend=3DFalse, matc=
h_path=3DFalse, aux_files_pattern_verbatim=3DNone, allow_links=3DFalse):
	"""
	Used in .bb files to split up dynamically generated subpackages of a
	given package, usually plugins or modules.
	"""

	ml =3D d.getVar("MLPREFIX", True)
	if ml:
		if not output_pattern.startswith(ml):
			output_pattern =3D ml + output_pattern

		newdeps =3D []
		for dep in (extra_depends or "").split():
			if dep.startswith(ml):
				newdeps.append(dep)
			else:
				newdeps.append(ml + dep)
		if newdeps:
			extra_depends =3D " ".join(newdeps)

	dvar =3D d.getVar('PKGD', True)

	packages =3D d.getVar('PACKAGES', True).split()

	if postinst:
		postinst =3D '#!/bin/sh\n' + postinst + '\n'
	if postrm:
		postrm =3D '#!/bin/sh\n' + postrm + '\n'
	if not recursive:
		objs =3D os.listdir(dvar + root)
	else:
		objs =3D []
		for walkroot, dirs, files in os.walk(dvar + root):
			for file in files:
				relpath =3D os.path.join(walkroot, file).replace(dvar + root + '/', '',=
 1)
				if relpath:
					objs.append(relpath)

	if extra_depends =3D=3D None:
		extra_depends =3D d.getVar("PN", True)

	for o in sorted(objs):
		import re, stat
		if match_path:
			m =3D re.match(file_regex, o)
		else:
			m =3D re.match(file_regex, os.path.basename(o))

		if not m:
			continue
		f =3D os.path.join(dvar + root, o)
		mode =3D os.lstat(f).st_mode
		if not (stat.S_ISREG(mode) or (allow_links and stat.S_ISLNK(mode)) or (al=
low_dirs and stat.S_ISDIR(mode))):
			continue
		on =3D legitimize_package_name(m.group(1))
		pkg =3D output_pattern % on
		if not pkg in packages:
			if prepend:
				packages =3D [pkg] + packages
			else:
				packages.append(pkg)
		oldfiles =3D d.getVar('FILES_' + pkg, True)
		if not oldfiles:
			the_files =3D [os.path.join(root, o)]
			if aux_files_pattern:
				if type(aux_files_pattern) is list:
					for fp in aux_files_pattern:
						the_files.append(fp % on)
				else:
					the_files.append(aux_files_pattern % on)
			if aux_files_pattern_verbatim:
				if type(aux_files_pattern_verbatim) is list:
					for fp in aux_files_pattern_verbatim:
						the_files.append(fp % m.group(1))
				else:
					the_files.append(aux_files_pattern_verbatim % m.group(1))
			d.setVar('FILES_' + pkg, " ".join(the_files))
			if extra_depends !=3D '':
				d.appendVar('RDEPENDS_' + pkg, ' ' + extra_depends)
			d.setVar('DESCRIPTION_' + pkg, description % on)
			if postinst:
				d.setVar('pkg_postinst_' + pkg, postinst)
			if postrm:
				d.setVar('pkg_postrm_' + pkg, postrm)
		else:
			d.setVar('FILES_' + pkg, oldfiles + " " + os.path.join(root, o))
		if callable(hook):
			hook(f, pkg, file_regex, output_pattern, m.group(1))

	d.setVar('PACKAGES', ' '.join(packages))
}


python sstate_state_fromvars () {
def sstate_state_fromvars(d, task =3D None):
    if task is None:
        task =3D d.getVar('BB_CURRENTTASK', True)
        if not task:
            bb.fatal("sstate code running without task context?!")
        task =3D task.replace("_setscene", "")

    name =3D d.getVarFlag("do_" + task, 'sstate-name', True)
    inputs =3D (d.getVarFlag("do_" + task, 'sstate-inputdirs', True) or "")=
.split()
    outputs =3D (d.getVarFlag("do_" + task, 'sstate-outputdirs', True) or "=
").split()
    plaindirs =3D (d.getVarFlag("do_" + task, 'sstate-plaindirs', True) or =
"").split()
    lockfiles =3D (d.getVarFlag("do_" + task, 'sstate-lockfile', True) or "=
").split()
    lockfilesshared =3D (d.getVarFlag("do_" + task, 'sstate-lockfile-shared=
', True) or "").split()
    interceptfuncs =3D (d.getVarFlag("do_" + task, 'sstate-interceptfuncs',=
 True) or "").split()
    if not name or len(inputs) !=3D len(outputs):
        bb.fatal("sstate variables not setup correctly?!")

    ss =3D sstate_init(name, task, d)
    for i in range(len(inputs)):
        sstate_add(ss, inputs[i], outputs[i], d)
    ss['lockfiles'] =3D lockfiles
    ss['lockfiles-shared'] =3D lockfilesshared
    ss['plaindirs'] =3D plaindirs
    ss['interceptfuncs'] =3D interceptfuncs
    return ss
}


python unsafe_references_skippable () {
def unsafe_references_skippable(path, name, d):
	if bb.data.inherits_class('native', d) or bb.data.inherits_class('nativesd=
k', d):
		return True

	if "-dbg" in name or "-dev" in name:
		return True

	# Other package names to skip:
	if name.startswith("kernel-module-"):
		return True

	# Skip symlinks
	if os.path.islink(path):
		return True

	# Skip unusual rootfs layouts which make these tests irrelevant
	exec_prefix =3D d.getVar('exec_prefix', True)
	if exec_prefix =3D=3D "":
		return True

	pkgdest =3D d.getVar('PKGDEST', True)
	pkgdest =3D pkgdest + "/" + name
	pkgdest =3D os.path.abspath(pkgdest)
	base_bindir =3D pkgdest + d.getVar('base_bindir', True)
	base_sbindir =3D pkgdest + d.getVar('base_sbindir', True)
	base_libdir =3D pkgdest + d.getVar('base_libdir', True)
	bindir =3D pkgdest + d.getVar('bindir', True)
	sbindir =3D pkgdest + d.getVar('sbindir', True)
	libdir =3D pkgdest + d.getVar('libdir', True)

	if base_bindir =3D=3D bindir and base_sbindir =3D=3D sbindir and base_libd=
ir =3D=3D libdir:
		return True

	# Skip files not in base_[bindir|sbindir|libdir]
	path =3D os.path.abspath(path)
	if not (base_bindir in path or base_sbindir in path or base_libdir in path=
):
		return True

	return False
}


python set_diskdata () {
def set_diskdata(var, dev, data):
    data.setVar(var, get_diskstats(dev))
}


python do_package_write_rpm () {
	bb.build.exec_func("read_subpackage_metadata", d)
	bb.build.exec_func("do_package_rpm", d)
}


python get_bn () {
def get_bn(e):
    file =3D open(e.data.getVar('BNFILE', True))
    bn =3D file.readline()
    file.close()
    return bn
}


python check_app_exists () {
def check_app_exists(app, d):
	from bb import which, data

	app =3D data.expand(app, d)
	path =3D data.getVar('PATH', d, 1)
	return bool(which(path, app))
}


python fixup_perms () {
	import os, pwd, grp

	# init using a string with the same format as a line as documented in
	# the fs-perms.txt file
	# <path> <mode> <uid> <gid> <walk> <fmode> <fuid> <fgid>
	# <path> link <link target>
	#
	# __str__ can be used to print out an entry in the input format
	#
	# if fs_perms_entry.path is None:
	#	an error occured
	# if fs_perms_entry.link, you can retrieve:
	#	fs_perms_entry.path =3D path
	#	fs_perms_entry.link =3D target of link
	# if not fs_perms_entry.link, you can retrieve:
	#	fs_perms_entry.path =3D path
	#	fs_perms_entry.mode =3D expected dir mode or None
	#	fs_perms_entry.uid =3D expected uid or -1
	#	fs_perms_entry.gid =3D expected gid or -1
	#	fs_perms_entry.walk =3D 'true' or something else
	#	fs_perms_entry.fmode =3D expected file mode or None
	#	fs_perms_entry.fuid =3D expected file uid or -1
	#	fs_perms_entry_fgid =3D expected file gid or -1
	class fs_perms_entry():
		def __init__(self, line):
			lsplit =3D line.split()
			if len(lsplit) =3D=3D 3 and lsplit[1].lower() =3D=3D "link":
				self._setlink(lsplit[0], lsplit[2])
			elif len(lsplit) =3D=3D 8:
				self._setdir(lsplit[0], lsplit[1], lsplit[2], lsplit[3], lsplit[4], lsp=
lit[5], lsplit[6], lsplit[7])
			else:
				bb.error("Fixup Perms: invalid config line %s" % line)
				self.path =3D None
				self.link =3D None

		def _setdir(self, path, mode, uid, gid, walk, fmode, fuid, fgid):
			self.path =3D os.path.normpath(path)
			self.link =3D None
			self.mode =3D self._procmode(mode)
			self.uid  =3D self._procuid(uid)
			self.gid  =3D self._procgid(gid)
			self.walk =3D walk.lower()
			self.fmode =3D self._procmode(fmode)
			self.fuid =3D self._procuid(fuid)
			self.fgid =3D self._procgid(fgid)

		def _setlink(self, path, link):
			self.path =3D os.path.normpath(path)
			self.link =3D link

		def _procmode(self, mode):
			if not mode or (mode and mode =3D=3D "-"):
				return None
			else:
				return int(mode,8)

		# Note uid/gid -1 has special significance in os.lchown
		def _procuid(self, uid):
			if uid is None or uid =3D=3D "-":
				return -1
			elif uid.isdigit():
				return int(uid)
			else:
				return pwd.getpwnam(uid).pw_uid

		def _procgid(self, gid):
			if gid is None or gid =3D=3D "-":
				return -1
			elif gid.isdigit():
				return int(gid)
			else:
				return grp.getgrnam(gid).gr_gid

		# Use for debugging the entries
		def __str__(self):
			if self.link:
				return "%s link %s" % (self.path, self.link)
			else:
				mode =3D "-"
				if self.mode:
					mode =3D "0%o" % self.mode
				fmode =3D "-"
				if self.fmode:
					fmode =3D "0%o" % self.fmode
				uid =3D self._mapugid(self.uid)
				gid =3D self._mapugid(self.gid)
				fuid =3D self._mapugid(self.fuid)
				fgid =3D self._mapugid(self.fgid)
				return "%s %s %s %s %s %s %s %s" % (self.path, mode, uid, gid, self.wal=
k, fmode, fuid, fgid)

		def _mapugid(self, id):
			if id is None or id =3D=3D -1:
				return "-"
			else:
				return "%d" % id

	# Fix the permission, owner and group of path
	def fix_perms(path, mode, uid, gid, dir):
		if mode and not os.path.islink(path):
			#bb.note("Fixup Perms: chmod 0%o %s" % (mode, dir))
			os.chmod(path, mode)
		# -1 is a special value that means don't change the uid/gid
		# if they are BOTH -1, don't bother to lchown
		if not (uid =3D=3D -1 and gid =3D=3D -1):
			#bb.note("Fixup Perms: lchown %d:%d %s" % (uid, gid, dir))
			os.lchown(path, uid, gid)

	# Return a list of configuration files based on either the default
	# files/fs-perms.txt or the contents of FILESYSTEM_PERMS_TABLES
	# paths are resolved via BBPATH
	def get_fs_perms_list(d):
		str =3D ""
		fs_perms_tables =3D d.getVar('FILESYSTEM_PERMS_TABLES', True)
		if not fs_perms_tables:
			fs_perms_tables =3D 'files/fs-perms.txt'
		for conf_file in fs_perms_tables.split():
			str +=3D " %s" % bb.which(d.getVar('BBPATH', True), conf_file)
		return str



	dvar =3D d.getVar('PKGD', True)

	fs_perms_table =3D {}

	# By default all of the standard directories specified in
	# bitbake.conf will get 0755 root:root.
	target_path_vars =3D [	'base_prefix',
				'prefix',
				'exec_prefix',
				'base_bindir',
				'base_sbindir',
				'base_libdir',
				'datadir',
				'sysconfdir',
				'servicedir',
				'sharedstatedir',
				'localstatedir',
				'infodir',
				'mandir',
				'docdir',
				'bindir',
				'sbindir',
				'libexecdir',
				'libdir',
				'includedir',
				'oldincludedir' ]

	for path in target_path_vars:
		dir =3D d.getVar(path, True) or ""
		if dir =3D=3D "":
			continue
		fs_perms_table[dir] =3D fs_perms_entry(bb.data.expand("%s 0755 root root =
false - - -" % (dir), d))

	# Now we actually load from the configuration files
	for conf in get_fs_perms_list(d).split():
		if os.path.exists(conf):
			f =3D open(conf)
			for line in f:
				if line.startswith('#'):
					continue
				lsplit =3D line.split()
				if len(lsplit) =3D=3D 0:
					continue
				if len(lsplit) !=3D 8 and not (len(lsplit) =3D=3D 3 and lsplit[1].lower=
() =3D=3D "link"):
					bb.error("Fixup perms: %s invalid line: %s" % (conf, line))
					continue
				entry =3D fs_perms_entry(d.expand(line))
				if entry and entry.path:
					fs_perms_table[entry.path] =3D entry
			f.close()

	# Debug -- list out in-memory table
	#for dir in fs_perms_table:
	#	bb.note("Fixup Perms: %s: %s" % (dir, str(fs_perms_table[dir])))

	# We process links first, so we can go back and fixup directory ownership
	# for any newly created directories
	for dir in fs_perms_table:
		if not fs_perms_table[dir].link:
			continue

		origin =3D dvar + dir
		if not (os.path.exists(origin) and os.path.isdir(origin) and not os.path.=
islink(origin)):
			continue

		link =3D fs_perms_table[dir].link
		if link[0] =3D=3D "/":
			target =3D dvar + link
			ptarget =3D link
		else:
			target =3D os.path.join(os.path.dirname(origin), link)
			ptarget =3D os.path.join(os.path.dirname(dir), link)
		if os.path.exists(target):
			bb.error("Fixup Perms: Unable to correct directory link, target already =
exists: %s -> %s" % (dir, ptarget))
			continue

		# Create path to move directory to, move it, and then setup the symlink
		bb.mkdirhier(os.path.dirname(target))
		#bb.note("Fixup Perms: Rename %s -> %s" % (dir, ptarget))
		os.rename(origin, target)
		#bb.note("Fixup Perms: Link %s -> %s" % (dir, link))
		os.symlink(link, origin)

	for dir in fs_perms_table:
		if fs_perms_table[dir].link:
			continue

		origin =3D dvar + dir
		if not (os.path.exists(origin) and os.path.isdir(origin)):
			continue

		fix_perms(origin, fs_perms_table[dir].mode, fs_perms_table[dir].uid, fs_p=
erms_table[dir].gid, dir)

		if fs_perms_table[dir].walk =3D=3D 'true':
			for root, dirs, files in os.walk(origin):
				for dr in dirs:
					each_dir =3D os.path.join(root, dr)
					fix_perms(each_dir, fs_perms_table[dir].mode, fs_perms_table[dir].uid,=
 fs_perms_table[dir].gid, dir)
				for f in files:
					each_file =3D os.path.join(root, f)
					fix_perms(each_file, fs_perms_table[dir].fmode, fs_perms_table[dir].fu=
id, fs_perms_table[dir].fgid, dir)
}


python base_conditional () {
def base_conditional(variable, checkvalue, truevalue, falsevalue, d):
    return oe.utils.conditional(variable, checkvalue, truevalue, falsevalue=
, d)
}


python sstate_clean_manifest () {
def sstate_clean_manifest(manifest, d):
    import oe.path

    mfile =3D open(manifest)
    entries =3D mfile.readlines()
    mfile.close()

    for entry in entries:
        entry =3D entry.strip()
        bb.debug(2, "Removing manifest: %s" % entry)
        # We can race against another package populating directories as we'=
re removing them
        # so we ignore errors here.
        try:
            if entry.endswith("/"):
               if os.path.islink(entry[:-1]):
                  os.remove(entry[:-1])
               elif os.path.exists(entry) and len(os.listdir(entry)) =3D=3D=
 0:
                  os.rmdir(entry[:-1])
            else:
                oe.path.remove(entry)
        except OSError:
            pass

    oe.path.remove(manifest)
}


python base_path_join () {
def base_path_join(a, *p):
    return oe.path.join(a, *p)
}


python base_get_metadata_svn_revision () {
def base_get_metadata_svn_revision(path, d):
	revision =3D "<unknown>"
	try:
		revision =3D file( "%s/.svn/entries" % path ).readlines()[3].strip()
	except IOError:
		pass
	return revision
}


python sstate_install () {
def sstate_install(ss, d):
    import oe.path

    sharedfiles =3D []
    shareddirs =3D []
    bb.mkdirhier(d.expand("/tool/yocto/poky/build/tmp/sstate-control"))
    manifest =3D d.expand("/tool/yocto/poky/build/tmp/sstate-control/manife=
st-virtex5-linux-xilinx.%s" % ss['name'])

    if os.access(manifest, os.R_OK):
        bb.fatal("Package already staged (%s)?!" % manifest)

    locks =3D []
    for lock in ss['lockfiles-shared']:
        locks.append(bb.utils.lockfile(lock, True))
    for lock in ss['lockfiles']:
        locks.append(bb.utils.lockfile(lock))

    for state in ss['dirs']:
        oe.path.copytree(state[1], state[2])
        for walkroot, dirs, files in os.walk(state[1]):
            bb.debug(2, "Staging files from %s to %s" % (state[1], state[2]=
))
            for file in files:
                srcpath =3D os.path.join(walkroot, file)
                dstpath =3D srcpath.replace(state[1], state[2])
                #bb.debug(2, "Staging %s to %s" % (srcpath, dstpath))
                sharedfiles.append(dstpath)
            for dir in dirs:
                srcdir =3D os.path.join(walkroot, dir)
                dstdir =3D srcdir.replace(state[1], state[2])
                #bb.debug(2, "Staging %s to %s" % (srcdir, dstdir))
                if not dstdir.endswith("/"):
                    dstdir =3D dstdir + "/"
                shareddirs.append(dstdir)
    f =3D open(manifest, "w")
    for file in sharedfiles:
        f.write(file + "\n")
    # We want to ensure that directories appear at the end of the manifest
    # so that when we test to see if they should be deleted any contents
    # added by the task will have been removed first.
    dirs =3D sorted(shareddirs, key=3Dlen)
    # Must remove children first, which will have a longer path than the pa=
rent
    for di in reversed(dirs):
        f.write(di + "\n")
    f.close()

    for postinst in (d.getVar('SSTATEPOSTINSTFUNCS', True) or '').split():
        bb.build.exec_func(postinst, d)

    for lock in locks:
        bb.utils.unlockfile(lock)
}


python base_get_metadata_monotone_branch () {
def base_get_metadata_monotone_branch(path, d):
	monotone_branch =3D "<unknown>"
	try:
		monotone_branch =3D file( "%s/_MTN/options" % path ).read().strip()
		if monotone_branch.startswith( "database" ):
			monotone_branch_words =3D monotone_branch.split()
			monotone_branch =3D monotone_branch_words[ monotone_branch_words.index( =
"branch" )+1][1:-1]
	except:
		pass
	return monotone_branch
}


python package_qa_check_staticdev () {
def package_qa_check_staticdev(path, name, d, elf, messages):
    """
    Check for ".a" library in non-staticdev packages
    There are a number of exceptions to this rule, -pic packages can contai=
n
    static libraries, the _nonshared.a belong with their -dev packages and
    libgcc.a, libgcov.a will be skipped in their packages
    """

    if not name.endswith("-pic") and not name.endswith("-staticdev") and pa=
th.endswith(".a") and not path.endswith("_nonshared.a"):
        messages.append("non -staticdev package contains static .a library:=
 %s path '%s'" % \
                 (name, package_qa_clean_path(path,d)))
}


python get_process_cputime () {
def get_process_cputime(pid):
    fields =3D open("/proc/%d/stat" % pid, "r").readline().rstrip().split()
    # 13: utime, 14: stime, 15: cutime, 16: cstime
    return sum(int(field) for field in fields[13:16])
}


python package_do_split_locales () {
	if (d.getVar('PACKAGE_NO_LOCALE', True) =3D=3D '1'):
		bb.debug(1, "package requested not splitting locales")
		return

	packages =3D (d.getVar('PACKAGES', True) or "").split()

	datadir =3D d.getVar('datadir', True)
	if not datadir:
		bb.note("datadir not defined")
		return

	dvar =3D d.getVar('PKGD', True)
	pn =3D d.getVar('PN', True)

	if pn + '-locale' in packages:
		packages.remove(pn + '-locale')

	localedir =3D os.path.join(dvar + datadir, 'locale')

	if not os.path.isdir(localedir):
		bb.debug(1, "No locale files in this package")
		return

	locales =3D os.listdir(localedir)

	summary =3D d.getVar('SUMMARY', True) or pn
	description =3D d.getVar('DESCRIPTION', True) or ""
        locale_section =3D d.getVar('LOCALE_SECTION', True)
	mlprefix =3D d.getVar('MLPREFIX', True) or ""
	for l in sorted(locales):
		ln =3D legitimize_package_name(l)
		pkg =3D pn + '-locale-' + ln
		packages.append(pkg)
		d.setVar('FILES_' + pkg, os.path.join(datadir, 'locale', l))
		d.setVar('RDEPENDS_' + pkg, '%s %svirtual-locale-%s' % (pn, mlprefix, ln)=
)
		d.setVar('RPROVIDES_' + pkg, '%s-locale %s%s-translation' % (pn, mlprefix=
, ln))
		d.setVar('SUMMARY_' + pkg, '%s - %s translations' % (summary, l))
		d.setVar('DESCRIPTION_' + pkg, '%s  This package contains language transl=
ation files for the %s locale.' % (description, l))
		if locale_section:
			d.setVar('SECTION_' + pkg, locale_section)

	d.setVar('PACKAGES', ' '.join(packages))

	# Disabled by RP 18/06/07
	# Wildcards aren't supported in debian
	# They break with ipkg since glibc-locale* will mean that
	# glibc-localedata-translit* won't install as a dependency
	# for some other package which breaks meta-toolchain
	# Probably breaks since virtual-locale- isn't provided anywhere
	#rdep =3D (d.getVar('RDEPENDS_%s' % pn, True) or d.getVar('RDEPENDS', True=
) or "").split()
	#rdep.append('%s-locale*' % pn)
	#d.setVar('RDEPENDS_%s' % pn, ' '.join(rdep))
}


python check_pseudo_wrapper () {
def check_pseudo_wrapper():
    import sys
    if not sys.argv[0].endswith('/bitbake'):
        return ""

    import subprocess as sub
    # Check if bitbake wrapper is being used
    pseudo_build =3D os.environ.get( 'PSEUDO_BUILD' )
    if not pseudo_build:
        bb.warn("Bitbake has not been run using the bitbake wrapper (script=
s/bitbake); this is likely because your PATH has been altered from that nor=
mally set up by the oe-init-build-env script. Not using the wrapper may res=
ult in failures during package installation, so it is highly recommended th=
at you set your PATH back so that the wrapper script is being executed.")

    if (not pseudo_build) or pseudo_build =3D=3D '2':
        # pseudo ought to be working, let's see if it is...
        p =3D sub.Popen(['sh', '-c', 'PSEUDO_DISABLED=3D0 id -u'],stdout=3D=
sub.PIPE,stderr=3Dsub.PIPE)
        out, err =3D p.communicate()
        if out.rstrip() !=3D '0':
            msg =3D "Pseudo is not functioning correctly, which will cause =
failures during package installation. Please check your configuration."
            if pseudo_build =3D=3D '2':
                return msg
            else:
                bb.warn(msg)
    return ""
}


python do_qa_staging () {
    bb.note("QA checking staging")

    if not package_qa_check_staged(d.expand('/tool/yocto/poky/build/tmp/wor=
k/virtex5-poky-linux/linux-xilinx-3.3.0-r0/sysroot-destdir///tool/yocto/pok=
y/build/tmp/sysroots/virtex5/usr/lib'), d):
        bb.fatal("QA staging was broken by the package built above")
}


python sstate_add () {
def sstate_add(ss, source, dest, d):
    srcbase =3D os.path.basename(source)
    ss['dirs'].append([srcbase, source, dest])
    return ss
}


python do_qa_configure () {
    import subprocess

    configs =3D []
    workdir =3D d.getVar('WORKDIR', True)
    bb.note("Checking autotools environment for common misconfiguration")
    for root, dirs, files in os.walk(workdir):
        statement =3D "grep -e 'CROSS COMPILE Badness:' -e 'is unsafe for c=
ross-compilation' %s > /dev/null" % \
                    os.path.join(root,"config.log")
        if "config.log" in files:
            if subprocess.call(statement, shell=3DTrue) =3D=3D 0:
                bb.fatal("""This autoconf log indicates errors, it looked a=
t host include and/or library paths while determining system capabilities.
Rerun configure task after fixing this. The path was '%s'""" % root)

        if "configure.ac" in files:
            configs.append(os.path.join(root,"configure.ac"))
        if "configure.in" in files:
            configs.append(os.path.join(root, "configure.in"))

    cnf =3D d.getVar('EXTRA_OECONF', True) or ""
    if "gettext" not in d.getVar('P', True) and "gcc-runtime" not in d.getV=
ar('P', True) and "--disable-nls" not in cnf:
       ml =3D d.getVar("MLPREFIX", True) or ""
       if bb.data.inherits_class('native', d) or bb.data.inherits_class('cr=
oss', d) or bb.data.inherits_class('crosssdk', d) or bb.data.inherits_class=
('nativesdk', d):
          gt =3D "gettext-native"
       elif bb.data.inherits_class('cross-canadian', d):
          gt =3D "gettext-nativesdk"
       else:
          gt =3D "virtual/" + ml + "gettext"
       deps =3D bb.utils.explode_deps(d.getVar('DEPENDS', True) or "")
       if gt not in deps:
          for config in configs:
              gnu =3D "grep \"^[[:space:]]*AM_GNU_GETTEXT\" %s >/dev/null" =
% config
              if subprocess.call(gnu, shell=3DTrue) =3D=3D 0:
                 bb.fatal("""%s required but not in DEPENDS for file %s.
Missing inherit gettext?""" % (gt, config))

    if not package_qa_check_license(workdir, d):
        bb.fatal("Licensing Error: LIC_FILES_CHKSUM does not match, please =
fix")
}


python should_apply () {
def should_apply(parm, d):
	"""Determine if we should apply the given patch"""

	if "mindate" in parm or "maxdate" in parm:
		pn =3D d.getVar('PN', True)
		srcdate =3D d.getVar('SRCDATE_%s' % pn, True)
		if not srcdate:
			srcdate =3D d.getVar('SRCDATE', True)

		if srcdate =3D=3D "now":
			srcdate =3D d.getVar('DATE', True)

		if "maxdate" in parm and parm["maxdate"] < srcdate:
			return False, 'is outdated'

		if "mindate" in parm and parm["mindate"] > srcdate:
			return False, 'is predated'


	if "minrev" in parm:
		srcrev =3D d.getVar('SRCREV', True)
		if srcrev and srcrev < parm["minrev"]:
			return False, 'applies to later revisions'

	if "maxrev" in parm:
		srcrev =3D d.getVar('SRCREV', True)
		if srcrev and srcrev > parm["maxrev"]:
			return False, 'applies to earlier revisions'

	if "rev" in parm:
		srcrev =3D d.getVar('SRCREV', True)
		if srcrev and parm["rev"] not in srcrev:
			return False, "doesn't apply to revision"

	if "notrev" in parm:
		srcrev =3D d.getVar('SRCREV', True)
		if srcrev and parm["notrev"] in srcrev:
			return False, "doesn't apply to revision"

	return True, None
}


python check_supported_distro () {
def check_supported_distro(sanity_data):
    tested_distros =3D sanity_data.getVar('SANITY_TESTED_DISTROS', True)
    if not tested_distros:
        return

    if os.path.exists("/etc/redhat-release"):
        f =3D open("/etc/redhat-release", "r")
        try:
            distro =3D f.readline().strip()
        finally:
            f.close()
    elif os.path.exists("/etc/SuSE-release"):
        import re
        f =3D open("/etc/SuSE-release", "r")
        try:
            distro =3D f.readline()
            # Remove the architecture suffix e.g. (i586)
            distro =3D re.sub(r' \([a-zA-Z0-9\-_]*\)$', '', distro).strip()
        finally:
            f.close()
    else:
        # Use LSB method
        import subprocess as sub
        try:
            p =3D sub.Popen(['lsb_release','-d','-s'],stdout=3Dsub.PIPE,std=
err=3Dsub.PIPE)
            out, err =3D p.communicate()
            distro =3D out.rstrip()
        except Exception:
            distro =3D None

        if not distro:
            if os.path.exists("/etc/lsb-release"):
                f =3D open("/etc/lsb-release", "r")
                try:
                    for line in f:
                        lns =3D line.split('=3D')
                        if lns[0] =3D=3D "DISTRIB_DESCRIPTION":
                            distro =3D lns[1].strip('"\n')
                            break
                finally:
                    f.close()
    if distro:
        if distro not in [x.strip() for x in tested_distros.split('\\n')]:
            bb.warn('Host distribution "%s" has not been validated with thi=
s version of the build system; you may possibly experience unexpected failu=
res. It is recommended that you use a tested distribution.' % distro)
    else:
        bb.warn('Host distribution could not be determined; you may possibl=
y experience unexpected failures. It is recommended that you use a tested d=
istribution.')
}


python preferred_ml_updates () {
def preferred_ml_updates(d):
    # If any PREFERRED_PROVIDER or PREFERRED_VERSIONS are set,
    # we need to mirror these variables in the multilib case
    multilibs =3D d.getVar('MULTILIBS', True) or ""
    if not multilibs:
        return

    prefixes =3D []
    for ext in multilibs.split():
        eext =3D ext.split(':')
        if len(eext) > 1 and eext[0] =3D=3D 'multilib':
            prefixes.append(eext[1])

    versions =3D []
    providers =3D []
    for v in d.keys():
        if v.startswith("PREFERRED_VERSION_"):
            versions.append(v)
        if v.startswith("PREFERRED_PROVIDER_"):
            providers.append(v)

    for v in versions:
        val =3D d.getVar(v, False)
        pkg =3D v.replace("PREFERRED_VERSION_", "")
        if pkg.endswith("-native") or pkg.endswith("-nativesdk"):
            continue
        for p in prefixes:
            newname =3D "PREFERRED_VERSION_" + p + "-" + pkg
            if not d.getVar(newname, False):
                d.setVar(newname, val)

    for prov in providers:
        val =3D d.getVar(prov, False)
        pkg =3D prov.replace("PREFERRED_PROVIDER_", "")
        if pkg.endswith("-native") or pkg.endswith("-nativesdk"):
            continue
        virt =3D ""
        if pkg.startswith("virtual/"):
             pkg =3D pkg.replace("virtual/", "")
             virt =3D "virtual/"
        for p in prefixes:
            newname =3D "PREFERRED_PROVIDER_" + virt + p + "-" + pkg
            if pkg !=3D "kernel":
                val =3D p + "-" + val
            if not d.getVar(newname, False):
                d.setVar(newname, val)


    mp =3D (d.getVar("MULTI_PROVIDER_WHITELIST", True) or "").split()
    extramp =3D []
    for p in mp:
        if p.endswith("-native") or p.endswith("-nativesdk"):
            continue
        virt =3D ""
        if p.startswith("virtual/"):
            p =3D p.replace("virtual/", "")
            virt =3D "virtual/"
        for pref in prefixes:
            extramp.append(virt + pref + "-" + p)
    d.setVar("MULTI_PROVIDER_WHITELIST", " ".join(mp + extramp))

}


python do_patch () {
	bb.build.exec_func('base_do_patch', d)
}


python base_less_or_equal () {
def base_less_or_equal(variable, checkvalue, truevalue, falsevalue, d):
    return oe.utils.less_or_equal(variable, checkvalue, truevalue, falseval=
ue, d)
}


python check_sanity () {
def check_sanity(sanity_data):
    from bb import note, error, data, __version__
    import subprocess

    try:
        from distutils.version import LooseVersion
    except ImportError:
        def LooseVersion(v): print "WARNING: sanity.bbclass can't compare v=
ersions without python-distutils"; return 1
    import commands

    # Check the bitbake version meets minimum requirements
    minversion =3D sanity_data.getVar('BB_MIN_VERSION', True)
    if not minversion:
        # Hack: BB_MIN_VERSION hasn't been parsed yet so return
        # and wait for the next call
        print "Foo %s" % minversion
        return

    if 0 =3D=3D os.getuid():
        raise_sanity_error("Do not use Bitbake as root.", sanity_data)

    messages =3D ""

    # Check the Python version, we now use Python 2.6 features in
    # various classes
    import sys
    if sys.hexversion < 0x020600F0:
        messages =3D messages + 'The system requires at least Python 2.6 to=
 run. Please update your Python interpreter.\n'

    if (LooseVersion(__version__) < LooseVersion(minversion)):
        messages =3D messages + 'Bitbake version %s is required and version=
 %s was found\n' % (minversion, __version__)

    # Check that the MACHINE is valid, if it is set
    if sanity_data.getVar('MACHINE', True):
        if not check_conf_exists("conf/machine/virtex5.conf", sanity_data):
            messages =3D messages + 'Please set a valid MACHINE in your loc=
al.conf or environment\n'
        else:
            messages =3D messages + check_sanity_validmachine(sanity_data)
    else:
        messages =3D messages + 'Please set a MACHINE in your local.conf or=
 environment\n'

    # Check we are using a valid lacal.conf
    current_conf  =3D sanity_data.getVar('CONF_VERSION', True)
    conf_version =3D  sanity_data.getVar('LOCALCONF_VERSION', True)

    if current_conf !=3D conf_version:
        messages =3D messages + "Your version of local.conf was generated f=
rom an older version of local.conf.sample and there have been updates made =
to this file. Please compare the two files and merge any changes before con=
tinuing.\nMatching the version numbers will remove this message.\n\"meld co=
nf/local.conf conf/local.conf.sample\" is a good way to visualise the chang=
es.\n"

    # Check bblayers.conf is valid
    current_lconf =3D sanity_data.getVar('LCONF_VERSION', True)
    lconf_version =3D sanity_data.getVar('LAYER_CONF_VERSION', True)
    if current_lconf !=3D lconf_version:
        messages =3D messages + "Your version of bblayers.conf was generate=
d from an older version of bblayers.conf.sample and there have been updates=
 made to this file. Please compare the two files and merge any changes befo=
re continuing.\nMatching the version numbers will remove this message.\n\"m=
eld conf/bblayers.conf conf/bblayers.conf.sample\" is a good way to visuali=
se the changes.\n"

    # If we have a site.conf, check it's valid
    if check_conf_exists("conf/site.conf", sanity_data):
        current_sconf =3D sanity_data.getVar('SCONF_VERSION', True)
        sconf_version =3D sanity_data.getVar('SITE_CONF_VERSION', True)
        if current_sconf !=3D sconf_version:
            messages =3D messages + "Your version of site.conf was generate=
d from an older version of site.conf.sample and there have been updates mad=
e to this file. Please compare the two files and merge any changes before c=
ontinuing.\nMatching the version numbers will remove this message.\n\"meld =
conf/site.conf conf/site.conf.sample\" is a good way to visualise the chang=
es.\n"

    assume_provided =3D sanity_data.getVar('ASSUME_PROVIDED', True).split()
    # Check user doesn't have ASSUME_PROVIDED =3D instead of +=3D in local.=
conf
    if "diffstat-native" not in assume_provided:
        messages =3D messages + 'Please use ASSUME_PROVIDED +=3D, not ASSUM=
E_PROVIDED =3D in your local.conf\n'

    # Check that DL_DIR is set, exists and is writable. In theory, we shoul=
d never even hit the check if DL_DIR isn't
    # set, since so much relies on it being set.
    dldir =3D sanity_data.getVar('DL_DIR', True)
    if not dldir:
        messages =3D messages + "DL_DIR is not set. Your environment is mis=
configured, check that DL_DIR is set, and if the directory exists, that it =
is writable. \n"
    if os.path.exists(dldir) and not os.access(dldir, os.W_OK):
        messages =3D messages + "DL_DIR: %s exists but you do not appear to=
 have write access to it. \n" % dldir

    # Check that the DISTRO is valid, if set
    # need to take into account DISTRO renaming DISTRO
    distro =3D sanity_data.getVar('DISTRO', True)
    if distro:
        if not ( check_conf_exists("conf/distro/poky.conf", sanity_data) or=
 check_conf_exists("conf/distro/include/poky.inc", sanity_data) ):
            messages =3D messages + "DISTRO '%s' not found. Please set a va=
lid DISTRO in your local.conf\n" % sanity_data.getVar("DISTRO", True )

    missing =3D ""

    if not check_app_exists("make", sanity_data):
        missing =3D missing + "GNU make,"

    if not check_app_exists('gcc', sanity_data):
        missing =3D missing + "C Compiler (%sgcc)," % sanity_data.getVar("B=
UILD_PREFIX", True)

    if not check_app_exists('g++', sanity_data):
        missing =3D missing + "C++ Compiler (%sg++)," % sanity_data.getVar(=
"BUILD_PREFIX", True)

    required_utilities =3D sanity_data.getVar('SANITY_REQUIRED_UTILITIES', =
True)

    if "qemu-native" in assume_provided:
        if not check_app_exists("qemu-arm", sanity_data):
            messages =3D messages + "qemu-native was in ASSUME_PROVIDED but=
 the QEMU binaries (qemu-arm) can't be found in PATH"

    paths =3D sanity_data.getVar('PATH', True).split(":")
    if "." in paths or "" in paths:
        messages =3D messages + "PATH contains '.' or '', which will break =
the build, please remove this."

    bbpaths =3D sanity_data.getVar('BBPATH', True).split(":")
    if "." in bbpaths or "" in bbpaths:
        # TODO: change the following message to fatal when all BBPATH issue=
s
        # are fixed
        bb.warn("BBPATH references the current directory, either through " =
   \
                "an empty entry, or a '.'.\n\t This is unsafe and means you=
r "\
                "layer configuration is adding empty elements to BBPATH.\n\=
t "\
                "Please check your layer.conf files and other BBPATH "     =
   \
                "settings to remove the current working directory "        =
   \
                "references.");

    if sanity_data.getVar('TARGET_ARCH', True) =3D=3D "arm":
        # This path is no longer user-readable in modern (very recent) Linu=
x
        try:
            if os.path.exists("/proc/sys/vm/mmap_min_addr"):
                f =3D open("/proc/sys/vm/mmap_min_addr", "r")
                try:
                    if (int(f.read().strip()) > 65536):
                        messages =3D messages + "/proc/sys/vm/mmap_min_addr=
 is not <=3D 65536. This will cause problems with qemu so please fix the va=
lue (as root).\n\nTo fix this in later reboots, set vm.mmap_min_addr =3D 65=
536 in /etc/sysctl.conf.\n"
                finally:
                    f.close()
        except:
            pass

    for util in required_utilities.split():
        if not check_app_exists( util, sanity_data ):
            missing =3D missing + "%s," % util

    if missing !=3D "":
        missing =3D missing.rstrip(',')
        messages =3D messages + "Please install the following missing utili=
ties: %s\n" % missing

    pseudo_msg =3D check_pseudo_wrapper()
    if pseudo_msg !=3D "":
        messages =3D messages + pseudo_msg + '\n'

    check_supported_distro(sanity_data)
    toolchain_msg =3D check_toolchain(sanity_data)
    if toolchain_msg !=3D "":
        messages =3D messages + toolchain_msg + '\n'

    # Check if DISPLAY is set if IMAGETEST is set
    if not sanity_data.getVar( 'DISPLAY', True ) and sanity_data.getVar( 'I=
MAGETEST', True ) =3D=3D 'qemu':
        messages =3D messages + 'qemuimagetest needs a X desktop to start q=
emu, please set DISPLAY correctly (e.g. DISPLAY=3D:1.0)\n'

    omask =3D os.umask(022)
    if omask & 0755:
        messages =3D messages + "Please use a umask which allows a+rx and u=
+rwx\n"
    os.umask(omask)

    oes_bb_conf =3D sanity_data.getVar( 'OES_BITBAKE_CONF', True)
    if not oes_bb_conf:
        messages =3D messages + 'You do not include the OpenEmbedded versio=
n of conf/bitbake.conf. This means your environment is misconfigured, in pa=
rticular check BBPATH.\n'

    nolibs =3D sanity_data.getVar('NO32LIBS', True)
    if not nolibs:
        lib32path =3D '/lib'
        if os.path.exists('/lib64') and ( os.path.islink('/lib64') or os.pa=
th.islink('/lib') ):
           lib32path =3D '/lib32'

        if os.path.exists('%s/libc.so.6' % lib32path) and not os.path.exist=
s('/usr/include/gnu/stubs-32.h'):
            messages =3D messages + "You have a 32-bit libc, but no 32-bit =
headers.  You must install the 32-bit libc headers.\n"

    tmpdir =3D sanity_data.getVar('TMPDIR', True)
    sstate_dir =3D sanity_data.getVar('SSTATE_DIR', True)

    # Check saved sanity info
    last_sanity_version =3D 0
    last_tmpdir =3D ""
    last_sstate_dir =3D ""
    sanityverfile =3D 'conf/sanity_info'
    if os.path.exists(sanityverfile):
        f =3D file(sanityverfile, 'r')
        for line in f:
            if line.startswith('SANITY_VERSION'):
                last_sanity_version =3D int(line.split()[1])
            if line.startswith('TMPDIR'):
                last_tmpdir =3D line.split()[1]
            if line.startswith('SSTATE_DIR'):
                last_sstate_dir =3D line.split()[1]

    sanity_version =3D int(sanity_data.getVar('SANITY_VERSION', True) or 1)
    if last_sanity_version < sanity_version:
        messages =3D messages + check_sanity_version_change(sanity_data)
        messages =3D messages + check_sanity_tmpdir_change(tmpdir, sanity_d=
ata)
        messages =3D messages + check_sanity_sstate_dir_change(sstate_dir, =
sanity_data)
    else:
        if last_tmpdir !=3D tmpdir:
            messages =3D messages + check_sanity_tmpdir_change(tmpdir, sani=
ty_data)
        if last_sstate_dir !=3D sstate_dir:
            messages =3D messages + check_sanity_sstate_dir_change(sstate_d=
ir, sanity_data)

    if os.path.exists("conf") and not messages:
        f =3D file(sanityverfile, 'w')
        f.write("SANITY_VERSION %s\n" % sanity_version)
        f.write("TMPDIR %s\n" % tmpdir)
        f.write("SSTATE_DIR %s\n" % sstate_dir)

    #
    # Check that TMPDIR hasn't changed location since the last time we were=
 run
    #
    checkfile =3D os.path.join(tmpdir, "saved_tmpdir")
    if os.path.exists(checkfile):
        f =3D file(checkfile, "r")
        saved_tmpdir =3D f.read().strip()
        if (saved_tmpdir !=3D tmpdir):
            messages =3D messages + "Error, TMPDIR has changed location. Yo=
u need to either move it back to %s or rebuild\n" % saved_tmpdir
    else:
        f =3D file(checkfile, "w")
        f.write(tmpdir)
    f.close()

    #
    # Check the 'ABI' of TMPDIR
    #
    current_abi =3D sanity_data.getVar('OELAYOUT_ABI', True)
    abifile =3D sanity_data.getVar('SANITY_ABIFILE', True)
    if os.path.exists(abifile):
        f =3D file(abifile, "r")
        abi =3D f.read().strip()
        if not abi.isdigit():
            f =3D file(abifile, "w")
            f.write(current_abi)
        elif abi =3D=3D "2" and current_abi =3D=3D "3":
            bb.note("Converting staging from layout version 2 to layout ver=
sion 3")
            subprocess.call(sanity_data.expand("mv /tool/yocto/poky/build/t=
mp/staging /tool/yocto/poky/build/tmp/sysroots"), shell=3DTrue)
            subprocess.call(sanity_data.expand("ln -s sysroots /tool/yocto/=
poky/build/tmp/staging"), shell=3DTrue)
            subprocess.call(sanity_data.expand("cd /tool/yocto/poky/build/t=
mp/stamps; for i in */*do_populate_staging; do new=3D`echo $i | sed -e 's/d=
o_populate_staging/do_populate_sysroot/'`; mv $i $new; done"), shell=3DTrue=
)
            f =3D file(abifile, "w")
            f.write(current_abi)
        elif abi =3D=3D "3" and current_abi =3D=3D "4":
            bb.note("Converting staging layout from version 3 to layout ver=
sion 4")
            if os.path.exists(sanity_data.expand("/tool/yocto/poky/build/tm=
p/sysroots/x86_64-linux/usr/bin/virtex5-poky-linux")):
                subprocess.call(sanity_data.expand("mv /tool/yocto/poky/bui=
ld/tmp/sysroots/x86_64-linux/usr/bin/virtex5-poky-linux /tool/yocto/poky/bu=
ild/tmp/sysroots/virtex5/usr/bin/crossscripts"), shell=3DTrue)
                subprocess.call(sanity_data.expand("ln -s /tool/yocto/poky/=
build/tmp/sysroots/virtex5/usr/bin/crossscripts /tool/yocto/poky/build/tmp/=
sysroots/x86_64-linux/usr/bin/virtex5-poky-linux"), shell=3DTrue)

            f =3D file(abifile, "w")
            f.write(current_abi)
        elif abi =3D=3D "4":
            messages =3D messages + "Staging layout has changed. The cross =
directory has been deprecated and cross packages are now built under the na=
tive sysroot.\nThis requires a rebuild.\n"
        elif abi =3D=3D "5" and current_abi =3D=3D "6":
            bb.note("Converting staging layout from version 5 to layout ver=
sion 6")
            subprocess.call(sanity_data.expand("mv /tool/yocto/poky/build/t=
mp/pstagelogs /tool/yocto/poky/build/tmp/sstate-control"), shell=3DTrue)
            f =3D file(abifile, "w")
            f.write(current_abi)
        elif abi =3D=3D "7" and current_abi =3D=3D "8":
            messages =3D messages + "Your configuration is using stamp file=
s including the sstate hash but your build directory was built with stamp f=
iles that do not include this.\nTo continue, either rebuild or switch back =
to the OEBasic signature handler with BB_SIGNATURE_HANDLER =3D 'OEBasic'.\n=
"
        elif (abi !=3D current_abi):
            # Code to convert from one ABI to another could go here if poss=
ible.
            messages =3D messages + "Error, TMPDIR has changed its layout v=
ersion number (%s to %s) and you need to either rebuild, revert or adjust i=
t at your own risk.\n" % (abi, current_abi)
    else:
        f =3D file(abifile, "w")
        f.write(current_abi)
    f.close()

    oeroot =3D sanity_data.getVar('COREBASE')
    if oeroot.find ('+') !=3D -1:
        messages =3D messages + "Error, you have an invalid character (+) i=
n your COREBASE directory path. Please move the installation to a directory=
 which doesn't include a +."
    elif oeroot.find (' ') !=3D -1:
        messages =3D messages + "Error, you have a space in your COREBASE d=
irectory path. Please move the installation to a directory which doesn't in=
clude a space."

    if messages !=3D "":
        raise_sanity_error(messages, sanity_data)
}


python check_sanity_tmpdir_change () {
def check_sanity_tmpdir_change(tmpdir, data):
    # Sanity checks to be done when the value of TMPDIR changes

    # Check that TMPDIR isn't on a filesystem with limited filename length =
(eg. eCryptFS)
    testmsg =3D check_create_long_filename(tmpdir, "TMPDIR")
    # Check that we can fetch from various network transports
    testmsg =3D testmsg + check_connectivity(data)
    return testmsg
}


python sstate_hardcode_path () {
def sstate_hardcode_path(d):
	import subprocess

	# Need to remove hardcoded paths and fix these when we install the
	# staging packages.
	#
	# Note: the logic in this function needs to match the reverse logic
	# in sstate_installpkg(ss, d)

	staging =3D d.getVar('STAGING_DIR', True)
	staging_target =3D d.getVar('STAGING_DIR_TARGET', True)
	staging_host =3D d.getVar('STAGING_DIR_HOST', True)
	sstate_builddir =3D d.getVar('SSTATE_BUILDDIR', True)

	if bb.data.inherits_class('native', d) or bb.data.inherits_class('nativesd=
k', d) or bb.data.inherits_class('crosssdk', d) or bb.data.inherits_class('=
cross-canadian', d):
		sstate_grep_cmd =3D "grep -l -e '%s'" % (staging)
		sstate_sed_cmd =3D "sed -i -e 's:%s:FIXMESTAGINGDIR:g'" % (staging)
	elif bb.data.inherits_class('cross', d):
		sstate_grep_cmd =3D "grep -l -e '(%s|%s)'" % (staging_target, staging)
		sstate_sed_cmd =3D "sed -i -e 's:%s:FIXMESTAGINGDIRTARGET:g; s:%s:FIXMEST=
AGINGDIR:g'" % (staging_target, staging)
	else:
		sstate_grep_cmd =3D "grep -l -e '%s'" % (staging_host)
		sstate_sed_cmd =3D "sed -i -e 's:%s:FIXMESTAGINGDIRHOST:g'" % (staging_ho=
st)

	fixmefn =3D  sstate_builddir + "fixmepath"

	sstate_scan_cmd =3D d.getVar('SSTATE_SCAN_CMD', True)
	sstate_filelist_cmd =3D "tee %s" % (fixmefn)

	# fixmepath file needs relative paths, drop sstate_builddir prefix
	sstate_filelist_relative_cmd =3D "sed -i -e 's:^%s::g' %s" % (sstate_build=
dir, fixmefn)

	# Limit the fixpaths and sed operations based on the initial grep search
	# This has the side effect of making sure the vfs cache is hot
	sstate_hardcode_cmd =3D "%s | xargs %s | %s | xargs --no-run-if-empty %s" =
% (sstate_scan_cmd, sstate_grep_cmd, sstate_filelist_cmd, sstate_sed_cmd)

	print "Removing hardcoded paths from sstate package: '%s'" % (sstate_hardc=
ode_cmd)
	subprocess.call(sstate_hardcode_cmd, shell=3DTrue)

        # If the fixmefn is empty, remove it..
	if os.stat(fixmefn).st_size =3D=3D 0:
		os.remove(fixmefn)
	else:
		print "Replacing absolute paths in fixmepath file: '%s'" % (sstate_fileli=
st_relative_cmd)
		subprocess.call(sstate_filelist_relative_cmd, shell=3DTrue)
}


python splitfile () {
def splitfile(file, debugfile, debugsrcdir, d):
    # Function to split a single file, called from split_and_strip_files be=
low
    # A working 'file' (one which works on the target architecture)
    # is split and the split off portions go to debugfile.
    #
    # The debug information is then processed for src references.  These
    # references are copied to debugsrcdir, if defined.

    import commands, stat, subprocess

    dvar =3D d.getVar('PKGD', True)
    pathprefix =3D "export PATH=3D%s; " % d.getVar('PATH', True)
    objcopy =3D d.getVar("OBJCOPY", True)
    debugedit =3D d.expand("/tool/yocto/poky/build/tmp/sysroots/x86_64-linu=
x/usr/lib/rpm/bin/debugedit")
    workdir =3D d.getVar("WORKDIR", True)
    workparentdir =3D os.path.dirname(workdir)
    sourcefile =3D d.expand("/tool/yocto/poky/build/tmp/work/virtex5-poky-l=
inux/linux-xilinx-3.3.0-r0/debugsources.list")

    # We ignore kernel modules, we don't generate debug info files.
    if file.find("/lib/modules/") !=3D -1 and file.endswith(".ko"):
	return 1

    newmode =3D None
    if not os.access(file, os.W_OK) or os.access(file, os.R_OK):
        origmode =3D os.stat(file)[stat.ST_MODE]
        newmode =3D origmode | stat.S_IWRITE | stat.S_IREAD
        os.chmod(file, newmode)

    # We need to extract the debug src information here...
    if debugsrcdir:
	subprocess.call("%s'%s' -b '%s' -d '%s' -i -l '%s' '%s'" % (pathprefix, de=
bugedit, workparentdir, debugsrcdir, sourcefile, file), shell=3DTrue)

    bb.mkdirhier(os.path.dirname(debugfile))

    subprocess.call("%s'%s' --only-keep-debug '%s' '%s'" % (pathprefix, obj=
copy, file, debugfile), shell=3DTrue)

    # Set the debuglink to have the view of the file path on the target
    subprocess.call("%s'%s' --add-gnu-debuglink=3D'%s' '%s'" % (pathprefix,=
 objcopy, debugfile, file), shell=3DTrue)

    if newmode:
        os.chmod(file, origmode)

    return 0
}


python do_listtasks () {
	import sys
	# emit variables and shell functions
	#bb.data.emit_env(sys.__stdout__, d)
	# emit the metadata which isnt valid shell
	for e in d.keys():
		if d.getVarFlag(e, 'task'):
			bb.plain("%s" % e)
}


python package_qa_clean_path () {
def package_qa_clean_path(path,d):
    """ Remove the common prefix from the path. In this case it is the TMPD=
IR"""
    return path.replace(d.getVar('TMPDIR',True),"")
}


python machine_paths () {
def machine_paths(d):
    """List any existing machine specific filespath directories"""
    machine =3D d.getVar("MACHINE", True)
    filespathpkg =3D d.getVar("FILESPATHPKG", True).split(":")
    for basepath in d.getVar("FILESPATHBASE", True).split(":"):
        for pkgpath in filespathpkg:
            machinepath =3D os.path.join(basepath, pkgpath, machine)
            if os.path.isdir(machinepath):
                yield machinepath
}


python package_qa_check_buildpaths () {
def package_qa_check_buildpaths(path, name, d, elf, messages):
    """
    Check for build paths inside target files and error if not found in the=
 whitelist
    """
    # Ignore .debug files, not interesting
    if path.find(".debug") !=3D -1:
        return

    # Ignore symlinks
    if os.path.islink(path):
        return

    tmpdir =3D d.getVar('TMPDIR', True)
    file_content =3D open(path).read()
    if tmpdir in file_content:
        messages.append("File %s in package contained reference to tmpdir" =
% package_qa_clean_path(path,d))
}


python incompatible_license () {
def incompatible_license(d, dont_want_license, package=3D""):
    """
    This function checks if a recipe has only incompatible licenses. It als=
o take into consideration 'or'
    operand.
    """
    import re
    import oe.license
    from fnmatch import fnmatchcase as fnmatch
    pn =3D d.getVar('PN', True)
    dont_want_licenses =3D []
    dont_want_licenses.append(d.getVar('INCOMPATIBLE_LICENSE', True))
    recipe_license =3D d.getVar('LICENSE', True)
    if package !=3D "":
        if d.getVar('LICENSE_' + pn + '-' + package, True):
            license =3D d.getVar('LICENSE_' + pn + '-' + package, True)
        else:
            license =3D recipe_license
    else:
        license =3D recipe_license
    spdx_license =3D return_spdx(d, dont_want_license)
    dont_want_licenses.append(spdx_license)

    def include_license(license):
        if any(fnmatch(license, pattern) for pattern in dont_want_licenses)=
:
            return False
        else:
            return True

    def choose_licenses(a, b):
        if all(include_license(lic) for lic in a):
            return a
        else:
            return b

    """
    If you want to exlude license named generically 'X', we surely want to =
exlude 'X+' as well.
    In consequence, we will exclude the '+' character from LICENSE in case =
INCOMPATIBLE_LICENSE
    is not a 'X+' license.
    """
    if not re.search(r'[+]',dont_want_license):
        licenses=3Doe.license.flattened_licenses(re.sub(r'[+]', '', license=
), choose_licenses)
    else:
        licenses=3Doe.license.flattened_licenses(license, choose_licenses)

    for onelicense in licenses:
        if not include_license(onelicense):
            return True
    return False
}


python do_package_setscene () {
	sstate_setscene(d)
}


python base_dep_prepend () {
None}


python legitimize_package_name () {
def legitimize_package_name(s):
	"""
	Make sure package names are legitimate strings
	"""
	import re

	def fixutf(m):
		cp =3D m.group(1)
		if cp:
			return ('\u%s' % cp).decode('unicode_escape').encode('utf-8')

	# Handle unicode codepoints encoded as <U0123>, as in glibc locale files.
	s =3D re.sub('<U([0-9A-Fa-f]{1,4})>', fixutf, s)

	# Remaining package name validity fixes
	return s.lower().replace('_', '-').replace('@', '+').replace(',', '+').rep=
lace('/', '-')
}


python check_create_long_filename () {
def check_create_long_filename(filepath, pathname):
    testfile =3D os.path.join(filepath, ''.join([`num`[-1] for num in xrang=
e(1,200)]))
    try:
        if not os.path.exists(filepath):
            bb.utils.mkdirhier(filepath)
        f =3D file(testfile, "w")
        f.close()
        os.remove(testfile)
    except IOError as (errno, strerror):
        if errno =3D=3D 36: # ENAMETOOLONG
            return "Failed to create a file with a long name in %s. Please =
use a filesystem that does not unreasonably limit filename length.\n" % pat=
hname
        else:
            return "Failed to create a file in %s: %s.\n" % (pathname, stre=
rror)
    except OSError as (errno, strerror):
        return "Failed to create %s directory in which to run long name san=
ity check: %s.\n" % (pathname, strerror)
    return ""
}


python do_populate_lic_setscene () {
	sstate_setscene(d)
}


python check_toolchain () {
def check_toolchain(data):
    tune_error_set =3D []
    deftune =3D data.getVar("DEFAULTTUNE", True)
    tune_errors =3D check_toolchain_tune(data, deftune, 'default')
    if tune_errors:
        tune_error_set.append(tune_errors)

    multilibs =3D (data.getVar("MULTILIB_VARIANTS", True) or "").split()
    if multilibs:
        seen_libs =3D []
        seen_tunes =3D []
        for lib in multilibs:
            if lib in seen_libs:
                tune_error_set.append("The multilib '%s' appears more than =
once." % lib)
            else:
                seen_libs.append(lib)
            tune =3D data.getVar("DEFAULTTUNE_virtclass-multilib-%s" % lib,=
 True)
            if tune in seen_tunes:
                tune_error_set.append("The tuning '%s' appears in more than=
 one multilib." % tune)
            else:
                seen_libs.append(tune)
            if tune =3D=3D deftune:
                tune_error_set.append("Multilib '%s' (%s) is also the defau=
lt tuning." % (lib, deftune))
            else:
                tune_errors =3D check_toolchain_tune(data, tune, lib)
            if tune_errors:
                tune_error_set.append(tune_errors)
    if tune_error_set:
        return "Toolchain tunings invalid:\n" + '\n'.join(tune_error_set)

    return ""
}


python pstaging_fetch () {
def pstaging_fetch(sstatepkg, d):
    import bb.fetch2

    # Only try and fetch if the user has configured a mirror
    mirrors =3D d.getVar('SSTATE_MIRRORS', True)
    if not mirrors:
        return

    # Copy the data object and override DL_DIR and SRC_URI
    localdata =3D bb.data.createCopy(d)
    bb.data.update_data(localdata)

    dldir =3D localdata.expand("/tool/yocto/poky/build/sstate-cache")
    srcuri =3D "file://" + os.path.basename(sstatepkg)

    bb.mkdirhier(dldir)

    localdata.setVar('DL_DIR', dldir)
    localdata.setVar('PREMIRRORS', mirrors)
    localdata.setVar('SRC_URI', srcuri)

    # Try a fetch from the sstate mirror, if it fails just return and
    # we will build the package
    try:
        fetcher =3D bb.fetch2.Fetch([srcuri], localdata, cache=3DFalse)
        fetcher.download()

        # Need to optimise this, if using file:// urls, the fetcher just ch=
anges the local path
        # For now work around by symlinking
        localpath =3D bb.data.expand(fetcher.localpath(srcuri), localdata)
        if localpath !=3D sstatepkg and os.path.exists(localpath) and not o=
s.path.exists(sstatepkg):
            os.symlink(localpath, sstatepkg)

    except bb.fetch2.BBFetchException:
        pass
}


python package_qa_check_dev () {
def package_qa_check_dev(path, name, d, elf, messages):
    """
    Check for ".so" library symlinks in non-dev packages
    """

    if not name.endswith("-dev") and not name.endswith("-dbg") and not name=
.endswith("-nativesdk") and path.endswith(".so") and os.path.islink(path):
        messages.append("non -dev/-dbg/-nativesdk package contains symlink =
.so: %s path '%s'" % \
                 (name, package_qa_clean_path(path,d)))
}


python prserv_get_pr_auto () {
def prserv_get_pr_auto(d):
    import oe.prservice
    if d.getVar('USE_PR_SERV', True) !=3D "1":
        bb.warn("Not using network based PR service")
        return None

    version =3D d.getVar("PRAUTOINX", True)
    pkgarch =3D d.getVar("PACKAGE_ARCH", True)
    checksum =3D d.getVar("BB_TASKHASH", True)

    if d.getVar('PRSERV_LOCKDOWN', True):
        auto_rev =3D d.getVar('PRAUTO_' + version + '_' + pkgarch, True) or=
 d.getVar('PRAUTO_' + version, True) or None
    else:
        conn =3D d.getVar("__PRSERV_CONN", True)
        if conn is None:
            conn =3D oe.prservice.prserv_make_conn(d)
            if conn is None:
                return None
        auto_rev =3D conn.getPR(version, pkgarch, checksum)

    return auto_rev}


python do_fetch () {
	bb.build.exec_func('base_do_fetch', d)
}


python write_specfile () {
	import textwrap
	import oe.packagedata

	# append information for logs and patches to %prep
	def add_prep(d,spec_files_bottom):
		if d.getVar('SOURCE_ARCHIVE_PACKAGE_TYPE', True) and d.getVar('SOURCE_ARC=
HIVE_PACKAGE_TYPE', True).upper() =3D=3D 'SRPM':
			spec_files_bottom.append('%%prep -n %s' % d.getVar('PN', True) )
			spec_files_bottom.append('%s' % "echo \"include logs and patches, Please=
 check them in SOURCES\"")
			spec_files_bottom.append('')

	# get the name of tarball for sources, patches and logs
	def get_tarballs(d):
		if d.getVar('SOURCE_ARCHIVE_PACKAGE_TYPE', True) and d.getVar('SOURCE_ARC=
HIVE_PACKAGE_TYPE', True).upper() =3D=3D 'SRPM':
			return get_package(d)

	# append the name of tarball to key word 'SOURCE' in xxx.spec.
	def tail_source(d,source_list=3D[],patch_list=3DNone):
		if d.getVar('SOURCE_ARCHIVE_PACKAGE_TYPE', True) and d.getVar('SOURCE_ARC=
HIVE_PACKAGE_TYPE', True).upper() =3D=3D 'SRPM':
			source_number =3D 0
			patch_number =3D 0
			for source in source_list:
				spec_preamble_top.append('Source' + str(source_number) + ': %s' % sourc=
e)
				source_number +=3D 1
			if patch_list:
				for patch in patch_list:
					print_deps(patch, "Patch" + str(patch_number), spec_preamble_top, d)
					patch_number +=3D 1
	# We need a simple way to remove the MLPREFIX from the package name,
	# and dependency information...
	def strip_multilib(name, d):
		multilibs =3D d.getVar('MULTILIBS', True) or ""
		for ext in multilibs.split():
			eext =3D ext.split(':')
			if len(eext) > 1 and eext[0] =3D=3D 'multilib' and name and name.find(ee=
xt[1] + '-') >=3D 0:
				name =3D "".join(name.split(eext[1] + '-'))
		return name

#		ml =3D d.getVar("MLPREFIX", True)
#		if ml and name and len(ml) !=3D 0 and name.find(ml) =3D=3D 0:
#			return ml.join(name.split(ml, 1)[1:])
#		return name

	# In RPM, dependencies are of the format: pkg <>=3D Epoch:Version-Release
	# This format is similar to OE, however there are restrictions on the
	# characters that can be in a field.  In the Version field, "-"
	# characters are not allowed.  "-" is allowed in the Release field.
	#
	# We translate the "-" in the version to a "+", by loading the PKGV
	# from the dependent recipe, replacing the - with a +, and then using
	# that value to do a replace inside of this recipe's dependencies.
	# This preserves the "-" separator between the version and release, as
	# well as any "-" characters inside of the release field.
	#
	# All of this has to happen BEFORE the mapping_rename_hook as
	# after renaming we cannot look up the dependencies in the packagedata
	# store.
	def translate_vers(varname, d):
		depends =3D d.getVar(varname, True)
		if depends:
			depends_dict =3D bb.utils.explode_dep_versions(depends)
			newdeps_dict =3D {}
			for dep in depends_dict:
				ver =3D depends_dict[dep]
				if dep and ver:
					if '-' in ver:
						subd =3D oe.packagedata.read_subpkgdata_dict(dep, d)
						if 'PKGV' in subd:
							pv =3D subd['PKGV']
							reppv =3D pv.replace('-', '+')
							ver =3D ver.replace(pv, reppv)
				newdeps_dict[dep] =3D ver
			depends =3D bb.utils.join_deps(newdeps_dict)
			d.setVar(varname, depends.strip())

	# We need to change the style the dependency from BB to RPM
	# This needs to happen AFTER the mapping_rename_hook
	def print_deps(variable, tag, array, d):
		depends =3D variable
		if depends:
			depends_dict =3D bb.utils.explode_dep_versions(depends)
			for dep in depends_dict:
				ver =3D depends_dict[dep]
				if dep and ver:
					ver =3D ver.replace('(', '')
					ver =3D ver.replace(')', '')
					array.append("%s: %s %s" % (tag, dep, ver))
				else:
					array.append("%s: %s" % (tag, dep))

	def walk_files(walkpath, target, conffiles):
		import os
		for rootpath, dirs, files in os.walk(walkpath):
			path =3D rootpath.replace(walkpath, "")
			for dir in dirs:
				# All packages own the directories their files are in...
				target.append('%dir "' + path + '/' + dir + '"')
			for file in files:
				if conffiles.count(path + '/' + file):
					target.append('%config "' + path + '/' + file + '"')
				else:
					target.append('"' + path + '/' + file + '"')

	# Prevent the prerm/postrm scripts from being run during an upgrade
	def wrap_uninstall(scriptvar):
		scr =3D scriptvar.strip()
		if scr.startswith("#!"):
			pos =3D scr.find("\n") + 1
		else:
			pos =3D 0
		scr =3D scr[:pos] + 'if [ "$1" =3D "0" ] ; then\n' + scr[pos:] + '\nfi'
		return scr

	packages =3D d.getVar('PACKAGES', True)
	if not packages or packages =3D=3D '':
		bb.debug(1, "No packages; nothing to do")
		return

	pkgdest =3D d.getVar('PKGDEST', True)
	if not pkgdest:
		bb.fatal("No PKGDEST")
		return

	outspecfile =3D d.getVar('OUTSPECFILE', True)
	if not outspecfile:
		bb.fatal("No OUTSPECFILE")
		return

	# Construct the SPEC file...
	srcname    =3D strip_multilib(d.getVar('PN', True), d)
	srcsummary =3D (d.getVar('SUMMARY', True) or d.getVar('DESCRIPTION', True)=
 or ".")
	srcversion =3D d.getVar('PKGV', True).replace('-', '+')
	srcrelease =3D d.getVar('PKGR', True)
	srcepoch   =3D (d.getVar('PKGE', True) or "")
	srclicense =3D d.getVar('LICENSE', True)
	srcsection =3D d.getVar('SECTION', True)
	srcmaintainer  =3D d.getVar('MAINTAINER', True)
	srchomepage    =3D d.getVar('HOMEPAGE', True)
	srcdescription =3D d.getVar('DESCRIPTION', True) or "."

	srcdepends     =3D strip_multilib(d.getVar('DEPENDS', True), d)
	srcrdepends    =3D []
	srcrrecommends =3D []
	srcrsuggests   =3D []
	srcrprovides   =3D []
	srcrreplaces   =3D []
	srcrconflicts  =3D []
	srcrobsoletes  =3D []

	srcpreinst  =3D []
	srcpostinst =3D []
	srcprerm    =3D []
	srcpostrm   =3D []

	spec_preamble_top =3D []
	spec_preamble_bottom =3D []

	spec_scriptlets_top =3D []
	spec_scriptlets_bottom =3D []

	spec_files_top =3D []
	spec_files_bottom =3D []

	for pkg in packages.split():
		localdata =3D bb.data.createCopy(d)

		root =3D "%s/%s" % (pkgdest, pkg)

		lf =3D bb.utils.lockfile(root + ".lock")

		localdata.setVar('ROOT', '')
		localdata.setVar('ROOT_%s' % pkg, root)
		pkgname =3D localdata.getVar('PKG_%s' % pkg, True)
		if not pkgname:
			pkgname =3D pkg
		localdata.setVar('PKG', pkgname)

		localdata.setVar('OVERRIDES', pkg)

		bb.data.update_data(localdata)

		conffiles =3D (localdata.getVar('CONFFILES', True) or "").split()

		splitname    =3D strip_multilib(pkgname, d)

		splitsummary =3D (localdata.getVar('SUMMARY', True) or localdata.getVar('=
DESCRIPTION', True) or ".")
		splitversion =3D (localdata.getVar('PKGV', True) or "").replace('-', '+')
		splitrelease =3D (localdata.getVar('PKGR', True) or "")
		splitepoch   =3D (localdata.getVar('PKGE', True) or "")
		splitlicense =3D (localdata.getVar('LICENSE', True) or "")
		splitsection =3D (localdata.getVar('SECTION', True) or "")
		splitdescription =3D (localdata.getVar('DESCRIPTION', True) or ".")

		translate_vers('RDEPENDS', localdata)
		translate_vers('RRECOMMENDS', localdata)
		translate_vers('RSUGGESTS', localdata)
		translate_vers('RPROVIDES', localdata)
		translate_vers('RREPLACES', localdata)
		translate_vers('RCONFLICTS', localdata)

		# Map the dependencies into their final form
		mapping_rename_hook(localdata)

		splitrdepends    =3D strip_multilib(localdata.getVar('RDEPENDS', True), d=
) or ""
		splitrrecommends =3D strip_multilib(localdata.getVar('RRECOMMENDS', True)=
, d) or ""
		splitrsuggests   =3D strip_multilib(localdata.getVar('RSUGGESTS', True), =
d) or ""
		splitrprovides   =3D strip_multilib(localdata.getVar('RPROVIDES', True), =
d) or ""
		splitrreplaces   =3D strip_multilib(localdata.getVar('RREPLACES', True), =
d) or ""
		splitrconflicts  =3D strip_multilib(localdata.getVar('RCONFLICTS', True),=
 d) or ""
		splitrobsoletes  =3D []

		# Gather special src/first package data
		if srcname =3D=3D splitname:
			srcrdepends    =3D splitrdepends
			srcrrecommends =3D splitrrecommends
			srcrsuggests   =3D splitrsuggests
			srcrprovides   =3D splitrprovides
			srcrreplaces   =3D splitrreplaces
			srcrconflicts  =3D splitrconflicts

			srcpreinst  =3D localdata.getVar('pkg_preinst', True)
			srcpostinst =3D localdata.getVar('pkg_postinst', True)
			srcprerm    =3D localdata.getVar('pkg_prerm', True)
			srcpostrm   =3D localdata.getVar('pkg_postrm', True)

			file_list =3D []
			walk_files(root, file_list, conffiles)
			if not file_list and localdata.getVar('ALLOW_EMPTY') !=3D "1":
				bb.note("Not creating empty RPM package for %s" % splitname)
			else:
				bb.note("Creating RPM package for %s" % splitname)
				spec_files_top.append('%files')
				spec_files_top.append('%defattr(-,-,-,-)')
				if file_list:
					bb.note("Creating RPM package for %s" % splitname)
					spec_files_top.extend(file_list)
				else:
					bb.note("Creating EMPTY RPM Package for %s" % splitname)
				spec_files_top.append('')

			bb.utils.unlockfile(lf)
			continue

		# Process subpackage data
		spec_preamble_bottom.append('%%package -n %s' % splitname)
		spec_preamble_bottom.append('Summary: %s' % splitsummary)
		if srcversion !=3D splitversion:
			spec_preamble_bottom.append('Version: %s' % splitversion)
		if srcrelease !=3D splitrelease:
			spec_preamble_bottom.append('Release: %s' % splitrelease)
		if srcepoch !=3D splitepoch:
			spec_preamble_bottom.append('Epoch: %s' % splitepoch)
		if srclicense !=3D splitlicense:
			spec_preamble_bottom.append('License: %s' % splitlicense)
		spec_preamble_bottom.append('Group: %s' % splitsection)

		# Replaces =3D=3D Obsoletes && Provides
		if splitrreplaces and splitrreplaces.strip() !=3D "":
			for dep in splitrreplaces.split(','):
				if splitrprovides:
					splitrprovides =3D splitrprovides + ", " + dep
				else:
					splitrprovides =3D dep
				if splitrobsoletes:
					splitrobsoletes =3D splitrobsoletes + ", " + dep
				else:
					splitrobsoletes =3D dep

		print_deps(splitrdepends,	"Requires", spec_preamble_bottom, d)
		# Suggests in RPM are like recommends in OE-core!
		print_deps(splitrrecommends,	"Suggests", spec_preamble_bottom, d)
		# While there is no analog for suggests... (So call them recommends for n=
ow)
		print_deps(splitrsuggests, 	"Recommends", spec_preamble_bottom, d)
		print_deps(splitrprovides, 	"Provides", spec_preamble_bottom, d)
		print_deps(splitrobsoletes, 	"Obsoletes", spec_preamble_bottom, d)

		# conflicts can not be in a provide!  We will need to filter it.
		if splitrconflicts:
			depends_dict =3D bb.utils.explode_dep_versions(splitrconflicts)
			newdeps_dict =3D {}
			for dep in depends_dict:
				if dep not in splitrprovides:
					newdeps_dict[dep] =3D depends_dict[dep]
			if newdeps_dict:
				splitrconflicts =3D bb.utils.join_deps(newdeps_dict)
			else:
				splitrconflicts =3D ""

		print_deps(splitrconflicts, 	"Conflicts", spec_preamble_bottom, d)

		spec_preamble_bottom.append('')

		spec_preamble_bottom.append('%%description -n %s' % splitname)
		dedent_text =3D textwrap.dedent(splitdescription).strip()
		spec_preamble_bottom.append('%s' % textwrap.fill(dedent_text, width=3D75)=
)

		spec_preamble_bottom.append('')

		# Now process scriptlets
		for script in ["preinst", "postinst", "prerm", "postrm"]:
			scriptvar =3D localdata.getVar('pkg_%s' % script, True)
			if not scriptvar:
				continue
			if script =3D=3D 'preinst':
				spec_scriptlets_bottom.append('%%pre -n %s' % splitname)
			elif script =3D=3D 'postinst':
				spec_scriptlets_bottom.append('%%post -n %s' % splitname)
			elif script =3D=3D 'prerm':
				spec_scriptlets_bottom.append('%%preun -n %s' % splitname)
				scriptvar =3D wrap_uninstall(scriptvar)
			elif script =3D=3D 'postrm':
				spec_scriptlets_bottom.append('%%postun -n %s' % splitname)
				scriptvar =3D wrap_uninstall(scriptvar)
			spec_scriptlets_bottom.append('# %s - %s' % (splitname, script))
			spec_scriptlets_bottom.append(scriptvar)
			spec_scriptlets_bottom.append('')

		# Now process files
		file_list =3D []
		walk_files(root, file_list, conffiles)
		if not file_list and localdata.getVar('ALLOW_EMPTY') !=3D "1":
			bb.note("Not creating empty RPM package for %s" % splitname)
		else:
			spec_files_bottom.append('%%files -n %s' % splitname)
			spec_files_bottom.append('%defattr(-,-,-,-)')
			if file_list:
				bb.note("Creating RPM package for %s" % splitname)
				spec_files_bottom.extend(file_list)
			else:
				bb.note("Creating EMPTY RPM Package for %s" % splitname)
			spec_files_bottom.append('')

		del localdata
		bb.utils.unlockfile(lf)

	add_prep(d,spec_files_bottom)
	spec_preamble_top.append('Summary: %s' % srcsummary)
	spec_preamble_top.append('Name: %s' % srcname)
	spec_preamble_top.append('Version: %s' % srcversion)
	spec_preamble_top.append('Release: %s' % srcrelease)
	if srcepoch and srcepoch.strip() !=3D "":
		spec_preamble_top.append('Epoch: %s' % srcepoch)
	spec_preamble_top.append('License: %s' % srclicense)
	spec_preamble_top.append('Group: %s' % srcsection)
	spec_preamble_top.append('Packager: %s' % srcmaintainer)
	spec_preamble_top.append('URL: %s' % srchomepage)
	source_list =3D get_tarballs(d)
	tail_source(d,source_list,None)

	# Replaces =3D=3D Obsoletes && Provides
	if srcrreplaces and srcrreplaces.strip() !=3D "":
		for dep in srcrreplaces.split(','):
			if srcrprovides:
				srcrprovides =3D srcrprovides + ", " + dep
			else:
				srcrprovides =3D dep
			if srcrobsoletes:
				srcrobsoletes =3D srcrobsoletes + ", " + dep
			else:
				srcrobsoletes =3D dep

	print_deps(srcdepends,		"BuildRequires", spec_preamble_top, d)
	print_deps(srcrdepends,		"Requires", spec_preamble_top, d)
	# Suggests in RPM are like recommends in OE-core!
	print_deps(srcrrecommends,	"Suggests", spec_preamble_top, d)
	# While there is no analog for suggests... (So call them recommends for no=
w)
	print_deps(srcrsuggests, 	"Recommends", spec_preamble_top, d)
	print_deps(srcrprovides, 	"Provides", spec_preamble_top, d)
	print_deps(srcrobsoletes, 	"Obsoletes", spec_preamble_top, d)

	# conflicts can not be in a provide!  We will need to filter it.
	if srcrconflicts:
		depends_dict =3D bb.utils.explode_dep_versions(srcrconflicts)
		newdeps_dict =3D {}
		for dep in depends_dict:
			if dep not in srcrprovides:
				newdeps_dict[dep] =3D depends_dict[dep]
		if newdeps_dict:
			srcrconflicts =3D bb.utils.join_deps(newdeps_dict)
		else:
			srcrconflicts =3D ""

	print_deps(srcrconflicts, 	"Conflicts", spec_preamble_top, d)

	spec_preamble_top.append('')

	spec_preamble_top.append('%description')
	dedent_text =3D textwrap.dedent(srcdescription).strip()
	spec_preamble_top.append('%s' % textwrap.fill(dedent_text, width=3D75))

	spec_preamble_top.append('')

	if srcpreinst:
		spec_scriptlets_top.append('%pre')
		spec_scriptlets_top.append('# %s - preinst' % srcname)
		spec_scriptlets_top.append(srcpreinst)
		spec_scriptlets_top.append('')
	if srcpostinst:
		spec_scriptlets_top.append('%post')
		spec_scriptlets_top.append('# %s - postinst' % srcname)
		spec_scriptlets_top.append(srcpostinst)
		spec_scriptlets_top.append('')
	if srcprerm:
		spec_scriptlets_top.append('%preun')
		spec_scriptlets_top.append('# %s - prerm' % srcname)
		scriptvar =3D wrap_uninstall(srcprerm)
		spec_scriptlets_top.append(scriptvar)
		spec_scriptlets_top.append('')
	if srcpostrm:
		spec_scriptlets_top.append('%postun')
		spec_scriptlets_top.append('# %s - postrm' % srcname)
		scriptvar =3D wrap_uninstall(srcpostrm)
		spec_scriptlets_top.append(scriptvar)
		spec_scriptlets_top.append('')

	# Write the SPEC file
	try:
		from __builtin__ import file
		specfile =3D file(outspecfile, 'w')
	except OSError:
		raise bb.build.FuncFailed("unable to open spec file for writing.")

	# RPMSPEC_PREAMBLE is a way to add arbitrary text to the top
	# of the generated spec file
	external_preamble =3D d.getVar("RPMSPEC_PREAMBLE", True)
	if external_preamble:
		specfile.write(external_preamble + "\n")

	for line in spec_preamble_top:
		specfile.write(line + "\n")

	for line in spec_preamble_bottom:
		specfile.write(line + "\n")

	for line in spec_scriptlets_top:
		specfile.write(line + "\n")

	for line in spec_scriptlets_bottom:
		specfile.write(line + "\n")

	for line in spec_files_top:
		specfile.write(line + "\n")

	for line in spec_files_bottom:
		specfile.write(line + "\n")

	specfile.close()
}


python base_get_metadata_git_branch () {
def base_get_metadata_git_branch(path, d):
	branch =3D os.popen('cd %s; git branch 2>&1 | grep "^* " | tr -d "* "' % p=
ath).read()

	if len(branch) !=3D 0:
		return branch
	return "<unknown>"
}


python check_sanity_eventhandler () {
    if bb.event.getName(e) =3D=3D "BuildStarted" and e.data.getVar("BB_WORK=
ERCONTEXT", True) !=3D "1" and e.data.getVar("DISABLE_SANITY_CHECKS", True)=
 !=3D "1":
        sanity_data =3D copy_data(e)
        check_sanity(sanity_data)
    elif bb.event.getName(e) =3D=3D "SanityCheck":
        sanity_data =3D copy_data(e)
        sanity_data.setVar("SANITY_USE_EVENTS", "1")
        check_sanity(sanity_data)
        bb.event.fire(bb.event.SanityCheckPassed(), e.data)

    return
}


python oe_filter () {
def oe_filter(f, str, d):
    return oe.utils.str_filter(f, str, d)
}


python sstate_cleanall () {
    import fnmatch

    bb.note("Removing shared state for package %s" % d.getVar('PN', True))

    manifest_dir =3D d.getVar('SSTATE_MANIFESTS', True)
    manifest_prefix =3D d.getVar("SSTATE_MANFILEPREFIX", True)
    manifest_pattern =3D os.path.basename(manifest_prefix) + ".*"

    if not os.path.exists(manifest_dir):
        return

    for manifest in (os.listdir(manifest_dir)):
        if fnmatch.fnmatch(manifest, manifest_pattern):
             name =3D manifest.replace(manifest_pattern[:-1], "")
             namemap =3D d.getVar('SSTATETASKNAMES', True).split()
             tasks =3D d.getVar('SSTATETASKS', True).split()
             if name not in namemap:
                  continue
             taskname =3D tasks[namemap.index(name)]
             shared_state =3D sstate_state_fromvars(d, taskname[3:])
             sstate_clean(shared_state, d)
}


python do_checkuri () {
	src_uri =3D (d.getVar('SRC_URI', True) or "").split()
	if len(src_uri) =3D=3D 0:
		return

	localdata =3D bb.data.createCopy(d)
	bb.data.update_data(localdata)

        try:
            fetcher =3D bb.fetch2.Fetch(src_uri, localdata)
            fetcher.checkstatus()
        except bb.fetch2.BBFetchException, e:
            raise bb.build.FuncFailed(e)
}


python is_machine_specific () {
def is_machine_specific(d):
    """Determine whether the current recipe is machine specific"""
    machinepaths =3D set(machine_paths(d))
    srcuri =3D d.getVar("SRC_URI", True).split()
    for url in srcuri:
        fetcher =3D bb.fetch2.Fetch([srcuri], d)
        if url.startswith("file://"):
            if any(fetcher.localpath(url).startswith(mp + "/") for mp in ma=
chinepaths):
                return True
}


python package_qa_check_useless_rpaths () {
def package_qa_check_useless_rpaths(file, name, d, elf, messages):
    """
    Check for RPATHs that are useless but not dangerous
    """
    if not elf:
        return

    objdump =3D d.getVar('OBJDUMP', True)
    env_path =3D d.getVar('PATH', True)

    libdir =3D d.getVar("libdir", True)
    base_libdir =3D d.getVar("base_libdir", True)

    import re
    rpath_re =3D re.compile("\s+RPATH\s+(.*)")
    for line in os.popen("LC_ALL=3DC PATH=3D%s %s -p '%s' 2> /dev/null" % (=
env_path, objdump, file), "r"):
    	m =3D rpath_re.match(line)
	if m:
	   rpath =3D m.group(1)
	   if rpath =3D=3D libdir or rpath =3D=3D base_libdir:
	      # The dynamic linker searches both these places anyway.  There is no=
 point in
	      # looking there again.
	      messages.append("%s: %s contains probably-redundant RPATH %s" % (nam=
e, package_qa_clean_path(file, d), rpath))
}


python oe_filter_out () {
def oe_filter_out(f, str, d):
    return oe.utils.str_filter_out(f, str, d)
}


python oe_terminal () {
def oe_terminal(command, title, d):
    import oe.data
    import oe.terminal

    for export in oe.data.typed_value('OE_TERMINAL_EXPORTS', d):
        value =3D d.getVar(export, True)
        if value is not None:
            os.environ[export] =3D str(value)

    terminal =3D oe.data.typed_value('OE_TERMINAL', d).lower()
    if terminal =3D=3D 'none':
        bb.fatal('Devshell usage disabled with OE_TERMINAL')
    elif terminal !=3D 'auto':
        try:
            oe.terminal.spawn(terminal, command, title)
            return
        except oe.terminal.UnsupportedTerminal:
            bb.warn('Unsupported terminal "%s", defaulting to "auto"' %
                    terminal)
        except oe.terminal.ExecutionError as exc:
            bb.fatal('Unable to spawn terminal %s: %s' % (terminal, exc))

    try:
        oe.terminal.spawn_preferred(command, title)
    except oe.terminal.NoSupportedTerminals:
        bb.fatal('No valid terminal found, unable to open devshell')
    except oe.terminal.ExecutionError as exc:
        bb.fatal('Unable to spawn terminal %s: %s' % (terminal, exc))}


python package_qa_get_machine_dict () {
def package_qa_get_machine_dict():
    return {
            "darwin9" : {
                        "arm" :       (40,     0,    0,          True,     =
     32),
                      },
            "linux" : {
                        "arm" :       (40,    97,    0,          True,     =
     32),
                        "armeb":      (40,    97,    0,          False,    =
     32),
                        "powerpc":    (20,     0,    0,          False,    =
     32),
                        "powerpc64":  (21,     0,    0,          False,    =
     64),
                        "i386":       ( 3,     0,    0,          True,     =
     32),
                        "i486":       ( 3,     0,    0,          True,     =
     32),
                        "i586":       ( 3,     0,    0,          True,     =
     32),
                        "i686":       ( 3,     0,    0,          True,     =
     32),
                        "x86_64":     (62,     0,    0,          True,     =
     64),
                        "ia64":       (50,     0,    0,          True,     =
     64),
                        "alpha":      (36902,  0,    0,          True,     =
     64),
                        "hppa":       (15,     3,    0,          False,    =
     32),
                        "m68k":       ( 4,     0,    0,          False,    =
     32),
                        "mips":       ( 8,     0,    0,          False,    =
     32),
                        "mipsel":     ( 8,     0,    0,          True,     =
     32),
                        "mips64":     ( 8,     0,    0,          False,    =
     64),
                        "mips64el":   ( 8,     0,    0,          True,     =
     64),
                        "s390":       (22,     0,    0,          False,    =
     32),
                        "sh4":        (42,     0,    0,          True,     =
     32),
                        "sparc":      ( 2,     0,    0,          False,    =
     32),
                      },
            "linux-uclibc" : {
                        "arm" :       (  40,    97,    0,          True,   =
       32),
                        "armeb":      (  40,    97,    0,          False,  =
       32),
                        "powerpc":    (  20,     0,    0,          False,  =
       32),
                        "i386":       (   3,     0,    0,          True,   =
       32),
                        "i486":       (   3,     0,    0,          True,   =
       32),
                        "i586":       (   3,     0,    0,          True,   =
       32),
                        "i686":       (   3,     0,    0,          True,   =
       32),
                        "x86_64":     (  62,     0,    0,          True,   =
       64),
                        "mips":       (   8,     0,    0,          False,  =
       32),
                        "mipsel":     (   8,     0,    0,          True,   =
       32),
                        "mips64":     (   8,     0,    0,          False,  =
       64),
                        "mips64el":   (   8,     0,    0,          True,   =
       64),
                        "avr32":      (6317,     0,    0,          False,  =
       32),
			"sh4":        (42,	 0,    0,          True,          32),

                      },
            "uclinux-uclibc" : {
                        "bfin":       ( 106,     0,    0,          True,   =
      32),
                      },
            "linux-gnueabi" : {
                        "arm" :       (40,     0,    0,          True,     =
     32),
                        "armeb" :     (40,     0,    0,          False,    =
     32),
                      },
            "linux-uclibceabi" : {
                        "arm" :       (40,     0,    0,          True,     =
     32),
                        "armeb" :     (40,     0,    0,          False,    =
     32),
                      },
            "linux-gnu" : {
                        "powerpc":    (20,     0,    0,          False,    =
     32),
                      },
            "linux-gnuspe" : {
                        "powerpc":    (20,     0,    0,          False,    =
     32),
                      },
            "linux-uclibcspe" : {
                        "powerpc":    (20,     0,    0,          False,    =
     32),
                      },
            "linux-gnu" :       {
                        "microblaze":   (47787,  0,    0,          False,  =
       32),
                        "microblazeel": (47787,  0,    0,          True,   =
       32),
                      },
            "linux-gnux32" :       {
                        "x86_64":     (62,     0,    0,          True,     =
     32),
                      },
       }

}


python base_detect_revision () {
def base_detect_revision(d):
	path =3D base_get_scmbasepath(d)

	scms =3D [base_get_metadata_git_revision, \
			base_get_metadata_svn_revision]

	for scm in scms:
		rev =3D scm(path, d)
		if rev <> "<unknown>":
			return rev

	return "<unknown>"
}


python read_shlibdeps () {
	packages =3D d.getVar('PACKAGES', True).split()
	for pkg in packages:
		rdepends =3D bb.utils.explode_dep_versions(d.getVar('RDEPENDS_' + pkg, Fa=
lse) or d.getVar('RDEPENDS', False) or "")

		for extension in ".shlibdeps", ".pcdeps", ".clilibdeps":
			depsfile =3D d.expand("/tool/yocto/poky/build/tmp/work/virtex5-poky-linu=
x/linux-xilinx-3.3.0-r0/packages-split/" + pkg + extension)
			if os.access(depsfile, os.R_OK):
				fd =3D file(depsfile)
				lines =3D fd.readlines()
				fd.close()
				for l in lines:
					rdepends[l.rstrip()] =3D ""
		d.setVar('RDEPENDS_' + pkg, bb.utils.join_deps(rdepends, commasep=3DFalse=
))
}


python sstate_installpkg () {
def sstate_installpkg(ss, d):
    import oe.path
    import subprocess

    def prepdir(dir):
        # remove dir if it exists, ensure any parent directories do exist
        if os.path.exists(dir):
            oe.path.remove(dir)
        bb.mkdirhier(dir)
        oe.path.remove(dir)

    sstateinst =3D d.expand("/tool/yocto/poky/build/tmp/work/virtex5-poky-l=
inux/linux-xilinx-3.3.0-r0/sstate-install-%s/" % ss['name'])
    sstatepkg =3D d.getVar('SSTATE_PKG', True) + '_' + ss['name'] + ".tgz"

    if not os.path.exists(sstatepkg):
       pstaging_fetch(sstatepkg, d)

    if not os.path.isfile(sstatepkg):
        bb.note("Staging package %s does not exist" % sstatepkg)
        return False

    sstate_clean(ss, d)

    d.setVar('SSTATE_INSTDIR', sstateinst)
    d.setVar('SSTATE_PKG', sstatepkg)

    for preinst in (d.getVar('SSTATEPREINSTFUNCS', True) or '').split():
        bb.build.exec_func(preinst, d)

    bb.build.exec_func('sstate_unpack_package', d)

    # Fixup hardcoded paths
    #
    # Note: The logic below must match the reverse logic in
    # sstate_hardcode_path(d)

    fixmefn =3D  sstateinst + "fixmepath"
    if os.path.isfile(fixmefn):
        staging =3D d.getVar('STAGING_DIR', True)
        staging_target =3D d.getVar('STAGING_DIR_TARGET', True)
        staging_host =3D d.getVar('STAGING_DIR_HOST', True)

	if bb.data.inherits_class('native', d) or bb.data.inherits_class('nativesd=
k', d) or bb.data.inherits_class('crosssdk', d) or bb.data.inherits_class('=
cross-canadian', d):
		sstate_sed_cmd =3D "sed -i -e 's:FIXMESTAGINGDIR:%s:g'" % (staging)
	elif bb.data.inherits_class('cross', d):
		sstate_sed_cmd =3D "sed -i -e 's:FIXMESTAGINGDIRTARGET:%s:g; s:FIXMESTAGI=
NGDIR:%s:g'" % (staging_target, staging)
	else:
		sstate_sed_cmd =3D "sed -i -e 's:FIXMESTAGINGDIRHOST:%s:g'" % (staging_ho=
st)

	# Add sstateinst to each filename in fixmepath, use xargs to efficiently c=
all sed
	sstate_hardcode_cmd =3D "sed -e 's:^:%s:g' %s | xargs %s" % (sstateinst, f=
ixmefn, sstate_sed_cmd)

	print "Replacing fixme paths in sstate package: %s" % (sstate_hardcode_cmd=
)
	subprocess.call(sstate_hardcode_cmd, shell=3DTrue)

        # Need to remove this or we'd copy it into the target directory and=
 may
        # conflict with another writer
        os.remove(fixmefn)

    for state in ss['dirs']:
        prepdir(state[1])
        os.rename(sstateinst + state[0], state[1])
    sstate_install(ss, d)

    for plain in ss['plaindirs']:
        workdir =3D d.getVar('WORKDIR', True)
        src =3D sstateinst + "/" + plain.replace(workdir, '')
        dest =3D plain
        bb.mkdirhier(src)
        prepdir(dest)
        os.rename(src, dest)

    return True
}


python sstate_clean_cachefile () {
def sstate_clean_cachefile(ss, d):
    import oe.path

    sstatepkgdir =3D d.getVar('SSTATE_DIR', True)
    sstatepkgfile =3D sstatepkgdir + '/' + d.getVar('SSTATE_PKGSPEC', True)=
 + "*_" + ss['name'] + ".tgz*"
    bb.note("Removing %s" % sstatepkgfile)
    oe.path.remove(sstatepkgfile)
}


python base_read_file () {
def base_read_file(filename):
    return oe.utils.read_file(filename)
}


python set_bn () {
def set_bn(e):
    bn =3D e.getPkgs()[0] + "-" + e.data.getVar('MACHINE', True)
    try:
        os.remove(e.data.getVar('BNFILE', True))
    except:
        pass
    file =3D open(e.data.getVar('BNFILE', True), "w")
    file.write(os.path.join(bn, e.data.getVar('BUILDNAME', True)))
    file.close()
}


python do_clean () {
	"""clear the build and temp directories"""
	dir =3D d.expand("/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux=
-xilinx-3.3.0-r0")
	bb.note("Removing " + dir)
	oe.path.remove(dir)

	dir =3D "%s.*" % bb.data.expand(d.getVar('STAMP'), d)
	bb.note("Removing " + dir)
	oe.path.remove(dir)

	for f in (d.getVar('CLEANFUNCS', True) or '').split():
		bb.build.exec_func(f, d)
}


python do_package_write_rpm_setscene () {
	sstate_setscene(d)
}


python package_qa_write_error () {
def package_qa_write_error(error, d):
    logfile =3D d.getVar('QA_LOGFILE', True)
    if logfile:
        p =3D d.getVar('P', True)
        f =3D file( logfile, "a+")
        print >> f, "%s: %s" % (p, error)
        f.close()
}


python write_task_data () {
def write_task_data(status, logfile, dev, e):
    bn =3D get_bn(e)
    bsdir =3D os.path.join(e.data.getVar('BUILDSTATS_BASE', True), bn)
    taskdir =3D os.path.join(bsdir, e.data.expand("linux-xilinx-3.3.0-r0"))
    file =3D open(os.path.join(logfile), "a")
    timedata =3D get_timedata("__timedata_task", e.data)
    if timedata:
        elapsedtime, cpu =3D timedata
        file.write(bb.data.expand("linux-xilinx-3.3.0-r0: %s: Elapsed time:=
 %0.2f seconds \n" %
                                 (e.task, elapsedtime), e.data))
        if cpu:
            file.write("CPU usage: %0.1f%% \n" % cpu)
    #######################################################################=
#####
    # Here we gather up disk data. In an effort to avoid lying with stats
    # I do a bare minimum of analysis of collected data.
    # The simple fact is, doing disk io collection on a per process basis
    # without effecting build time would be difficult.
    # For the best information, running things with BB_TOTAL_THREADS =3D "1=
"
    # would return accurate per task results.
    #######################################################################=
#####
    if dev !=3D "NoLogicalDevice":
        diskdata =3D get_diskdata("__diskdata_task", dev, e.data)
        if diskdata:
            for key in sorted(diskdata.iterkeys()):
                file.write(key + ": " + diskdata[key] + "\n")
    if status is "passed":
	    file.write("Status: PASSED \n")
    else:
        file.write("Status: FAILED \n")
    file.write("Ended: %0.2f \n" % time.time())
    file.close()
}


python device_tree () {
def device_tree(a, d):
    # Device tree helper function
    import re

    board =3D bb.data.getVar('XILINX_BOARD', d, 1)
    cpu =3D bb.data.getVar('TARGET_CPU', d, 1)

    if re.match('powerpc', a):
        target =3D cpu + '-' + board
        dts =3D 'arch/' + a + '/boot/dts/virtex' + target + '.dts'
    else:
        target =3D 'system'
        dts =3D 'arch/' + a + '/boot/dts/' + target + '.dts'

    bb.data.setVar('KERNEL_TARGET', target, d)

    return dts

}


python package_qa_check_staged () {
def package_qa_check_staged(path,d):
    """
    Check staged la and pc files for sanity
      -e.g. installed being false

        As this is run after every stage we should be able
        to find the one responsible for the errors easily even
        if we look at every .pc and .la file
    """

    sane =3D True
    tmpdir =3D d.getVar('TMPDIR', True)
    workdir =3D os.path.join(tmpdir, "work")

    installed =3D "installed=3Dyes"
    if bb.data.inherits_class("native", d) or bb.data.inherits_class("cross=
", d):
        pkgconfigcheck =3D workdir
    else:
        pkgconfigcheck =3D tmpdir

    # find all .la and .pc files
    # read the content
    # and check for stuff that looks wrong
    for root, dirs, files in os.walk(path):
        for file in files:
            path =3D os.path.join(root,file)
            if file.endswith(".la"):
                file_content =3D open(path).read()
                if workdir in file_content:
                    error_msg =3D "%s failed sanity test (workdir) in path =
%s" % (file,root)
                    sane =3D package_qa_handle_error("la", error_msg, d)
            elif file.endswith(".pc"):
                file_content =3D open(path).read()
                if pkgconfigcheck in file_content:
                    error_msg =3D "%s failed sanity test (tmpdir) in path %=
s" % (file,root)
                    sane =3D package_qa_handle_error("pkgconfig", error_msg=
, d)

    return sane
}


python base_both_contain () {
def base_both_contain(variable1, variable2, checkvalue, d):
    return oe.utils.both_contain(variable1, variable2, checkvalue, d)
}


python sysroot_cleansstate () {
     ss =3D sstate_state_fromvars(d, "populate_sysroot")
     sstate_clean(ss, d)
}


python sstate_checkhashes () {
def sstate_checkhashes(sq_fn, sq_task, sq_hash, sq_hashfn, d):

    ret =3D []
    # This needs to go away, FIXME
    mapping =3D {
        "do_populate_sysroot" : "populate-sysroot",
        "do_populate_lic" : "populate-lic",
        "do_package_write_ipk" : "deploy-ipk",
        "do_package_write_deb" : "deploy-deb",
        "do_package_write_rpm" : "deploy-rpm",
        "do_package" : "package",
        "do_deploy" : "deploy",
    }

    for task in range(len(sq_fn)):
        sstatefile =3D d.expand("/tool/yocto/poky/build/sstate-cache/" + sq=
_hashfn[task] + "_" + mapping[sq_task[task]] + ".tgz")
        sstatefile =3D sstatefile.replace("${BB_TASKHASH}", sq_hash[task])
        if os.path.exists(sstatefile):
            bb.debug(2, "SState: Found valid sstate file %s" % sstatefile)
            ret.append(task)
            continue
        else:
            bb.debug(2, "SState: Looked for but didn't find file %s" % ssta=
tefile)

    mirrors =3D d.getVar("SSTATE_MIRRORS", True)
    if mirrors:
        # Copy the data object and override DL_DIR and SRC_URI
        localdata =3D bb.data.createCopy(d)
        bb.data.update_data(localdata)

        dldir =3D localdata.expand("/tool/yocto/poky/build/sstate-cache")
        localdata.setVar('DL_DIR', dldir)
        localdata.setVar('PREMIRRORS', mirrors)

        bb.debug(2, "SState using premirror of: %s" % mirrors)

        for task in range(len(sq_fn)):
            if task in ret:
                continue

            sstatefile =3D d.expand("/tool/yocto/poky/build/sstate-cache/" =
+ sq_hashfn[task] + "_" + mapping[sq_task[task]] + ".tgz")
            sstatefile =3D sstatefile.replace("${BB_TASKHASH}", sq_hash[tas=
k])

            srcuri =3D "file://" + os.path.basename(sstatefile)
            localdata.setVar('SRC_URI', srcuri)
            bb.debug(2, "SState: Attempting to fetch %s" % srcuri)

            try:
                fetcher =3D bb.fetch2.Fetch(srcuri.split(), localdata)
                fetcher.checkstatus()
                bb.debug(2, "SState: Successful fetch test for %s" % srcuri=
)
                ret.append(task)
            except:
                bb.debug(2, "SState: Unsuccessful fetch test for %s" % srcu=
ri)
                pass

    return ret
}


python __anonymous () {
None}


python base_prune_suffix () {
def base_prune_suffix(var, suffixes, d):
    return oe.utils.prune_suffix(var, suffixes, d)
}


python base_ifelse () {
def base_ifelse(condition, iftrue =3D True, iffalse =3D False):
    return oe.utils.ifelse(condition, iftrue, iffalse)
}


python package_qa_check_arch () {
def package_qa_check_arch(path,name,d, elf, messages):
    """
    Check if archs are compatible
    """
    if not elf:
        return

    target_os   =3D d.getVar('TARGET_OS', True)
    target_arch =3D d.getVar('TARGET_ARCH', True)
    provides =3D d.getVar('PROVIDES', d, True)
    bpn =3D d.getVar('BPN', True)

    # FIXME: Cross package confuse this check, so just skip them
    for s in ['cross', 'nativesdk', 'cross-canadian']:
        if bb.data.inherits_class(s, d):
            return

    # avoid following links to /usr/bin (e.g. on udev builds)
    # we will check the files pointed to anyway...
    if os.path.islink(path):
        return

    #if this will throw an exception, then fix the dict above
    (machine, osabi, abiversion, littleendian, bits) \
        =3D package_qa_get_machine_dict()[target_os][target_arch]

    # Check the architecture and endiannes of the binary
    if not ((machine =3D=3D elf.machine()) or \
	("virtual/kernel" in provides) and (target_os =3D=3D "linux-gnux32")):
        messages.append("Architecture did not match (%d to %d) on %s" % \
                 (machine, elf.machine(), package_qa_clean_path(path,d)))
    elif not ((bits =3D=3D elf.abiSize()) or  \
	("virtual/kernel" in provides) and (target_os =3D=3D "linux-gnux32")):
        messages.append("Bit size did not match (%d to %d) %s on %s" % \
                 (bits, elf.abiSize(), bpn, package_qa_clean_path(path,d)))
    elif not littleendian =3D=3D elf.isLittleEndian():
        messages.append("Endiannes did not match (%d to %d) on %s" % \
                 (littleendian, elf.isLittleEndian(), package_qa_clean_path=
(path,d)))
}


python package_qa_check_license () {
def package_qa_check_license(workdir, d):
    """
    Check for changes in the license files
    """
    import tempfile
    sane =3D True

    lic_files =3D d.getVar('LIC_FILES_CHKSUM', True)
    lic =3D d.getVar('LICENSE', True)
    pn =3D d.getVar('PN', True)

    if lic =3D=3D "CLOSED":
        return True

    if not lic_files:
        # just throw a warning now. Once licensing data in entered for enou=
gh of the recipes,
        # this will be converted into error and False will be returned.
        bb.error(pn + ": Recipe file does not have license file information=
 (LIC_FILES_CHKSUM)")
        return False

    srcdir =3D d.getVar('S', True)

    for url in lic_files.split():
        (type, host, path, user, pswd, parm) =3D bb.decodeurl(url)
        srclicfile =3D os.path.join(srcdir, path)
        if not os.path.isfile(srclicfile):
            raise bb.build.FuncFailed( pn + ": LIC_FILES_CHKSUM points to a=
n invalid file: " + srclicfile)

        if 'md5' not in parm:
            bb.error(pn + ": md5 checksum is not specified for ", url)
            return False
        beginline, endline =3D 0, 0
        if 'beginline' in parm:
            beginline =3D int(parm['beginline'])
        if 'endline' in parm:
            endline =3D int(parm['endline'])

        if (not beginline) and (not endline):
            md5chksum =3D bb.utils.md5_file(srclicfile)
        else:
            fi =3D open(srclicfile, 'r')
            fo =3D tempfile.NamedTemporaryFile(mode=3D'wb', prefix=3D'poky.=
', suffix=3D'.tmp', delete=3DFalse)
            tmplicfile =3D fo.name;
            lineno =3D 0
            linesout =3D 0
            for line in fi:
                lineno +=3D 1
                if (lineno >=3D beginline):
                    if ((lineno <=3D endline) or not endline):
                        fo.write(line)
                        linesout +=3D 1
                    else:
                        break
            fo.flush()
            fo.close()
            fi.close()
            md5chksum =3D bb.utils.md5_file(tmplicfile)
            os.unlink(tmplicfile)

        if parm['md5'] =3D=3D md5chksum:
            bb.note (pn + ": md5 checksum matched for ", url)
        else:
            bb.error (pn + ": md5 data is not matching for ", url)
            bb.error (pn + ": The new md5 checksum is ", md5chksum)
            bb.error (pn + ": Check if the license information has changed =
in")
            sane =3D False

    return sane
}


python do_package_qa () {
    import subprocess

    bb.note("DO PACKAGE QA")

    logdir =3D d.getVar('T', True)
    pkg =3D d.getVar('PN', True)

    # Check the compile log for host contamination
    compilelog =3D os.path.join(logdir,"log.do_compile")

    if os.path.exists(compilelog):
        statement =3D "grep -e 'CROSS COMPILE Badness:' -e 'is unsafe for c=
ross-compilation' %s > /dev/null" % compilelog
        if subprocess.call(statement, shell=3DTrue) =3D=3D 0:
            bb.warn("%s: The compile log indicates that host include and/or=
 library paths were used.\n \
        Please check the log '%s' for more information." % (pkg, compilelog=
))

    # Check the install log for host contamination
    installlog =3D os.path.join(logdir,"log.do_install")

    if os.path.exists(installlog):
        statement =3D "grep -e 'CROSS COMPILE Badness:' -e 'is unsafe for c=
ross-compilation' %s > /dev/null" % installlog
        if subprocess.call(statement, shell=3DTrue) =3D=3D 0:
            bb.warn("%s: The install log indicates that host include and/or=
 library paths were used.\n \
        Please check the log '%s' for more information." % (pkg, installlog=
))

    # Scan the packages...
    pkgdest =3D d.getVar('PKGDEST', True)
    packages =3D d.getVar('PACKAGES', True)

    # no packages should be scanned
    if not packages:
        return

    testmatrix =3D d.getVarFlags("QAPATHTEST")

    g =3D globals()
    walk_sane =3D True
    rdepends_sane =3D True
    for package in packages.split():
        skip =3D (d.getVar('INSANE_SKIP_' + package, True) or "").split()
        if skip:
            bb.note("Package %s skipping QA tests: %s" % (package, str(skip=
)))
        warnchecks =3D []
        for w in (d.getVar("WARN_QA", True) or "").split():
            if w in skip:
               continue
            if w in testmatrix and testmatrix[w] in g:
                warnchecks.append(g[testmatrix[w]])
        errorchecks =3D []
        for e in (d.getVar("ERROR_QA", True) or "").split():
            if e in skip:
               continue
            if e in testmatrix and testmatrix[e] in g:
                errorchecks.append(g[testmatrix[e]])

        bb.note("Checking Package: %s" % package)
        path =3D "%s/%s" % (pkgdest, package)
        if not package_qa_walk(path, warnchecks, errorchecks, skip, package=
, d):
            walk_sane  =3D False
        if not package_qa_check_rdepends(package, pkgdest, skip, d):
            rdepends_sane =3D False


    if not walk_sane or not rdepends_sane:
        bb.fatal("QA run found fatal errors. Please consider fixing them.")
    bb.note("DONE with PACKAGE QA")
}


python do_package_rpm () {
	import os

	def creat_srpm_dir(d):
		if d.getVar('SOURCE_ARCHIVE_PACKAGE_TYPE', True) and d.getVar('SOURCE_ARC=
HIVE_PACKAGE_TYPE', True).upper() =3D=3D 'SRPM':
			clean_licenses =3D get_licenses(d)
			pkgwritesrpmdir =3D bb.data.expand('/tool/yocto/poky/build/tmp/deploy/so=
urces/deploy-srpm/${PACKAGE_ARCH_EXTEND}', d)
			pkgwritesrpmdir =3D pkgwritesrpmdir + '/' + clean_licenses
			bb.mkdirhier(pkgwritesrpmdir)
			os.chmod(pkgwritesrpmdir, 0755)
			return pkgwritesrpmdir

	# We need a simple way to remove the MLPREFIX from the package name,
	# and dependency information...
	def strip_multilib(name, d):
		ml =3D d.getVar("MLPREFIX", True)
		if ml and name and len(ml) !=3D 0 and name.find(ml) >=3D 0:
			return "".join(name.split(ml))
		return name

	workdir =3D d.getVar('WORKDIR', True)
	outdir =3D d.getVar('DEPLOY_DIR_IPK', True)
	tmpdir =3D d.getVar('TMPDIR', True)
	pkgd =3D d.getVar('PKGD', True)
	pkgdest =3D d.getVar('PKGDEST', True)
	if not workdir or not outdir or not pkgd or not tmpdir:
		bb.error("Variables incorrectly set, unable to package")
		return

	packages =3D d.getVar('PACKAGES', True)
	if not packages or packages =3D=3D '':
		bb.debug(1, "No packages; nothing to do")
		return

	# Construct the spec file...
	srcname    =3D strip_multilib(d.getVar('PN', True), d)
	outspecfile =3D workdir + "/" + srcname + ".spec"
	d.setVar('OUTSPECFILE', outspecfile)
	bb.build.exec_func('write_specfile', d)

	# Construct per file dependencies file
	def dump_filerdeps(varname, outfile, d):
		outfile.write("#!/usr/bin/env python\n\n")
		outfile.write("# Dependency table\n")
		outfile.write('deps =3D {\n')
		for pkg in packages.split():
			dependsflist_key =3D 'FILE' + varname + 'FLIST' + "_" + pkg
			dependsflist =3D (d.getVar(dependsflist_key, True) or "")
			for dfile in dependsflist.split():
				key =3D "FILE" + varname + "_" + dfile + "_" + pkg
				depends_dict =3D bb.utils.explode_dep_versions(d.getVar(key, True) or "=
")
				file =3D dfile.replace("@underscore@", "_")
				file =3D file.replace("@closebrace@", "]")
				file =3D file.replace("@openbrace@", "[")
				file =3D file.replace("@tab@", "\t")
				file =3D file.replace("@space@", " ")
				file =3D file.replace("@at@", "@")
				outfile.write('"' + pkgd + file + '" : "')
				for dep in depends_dict:
					ver =3D depends_dict[dep]
					if dep and ver:
						ver =3D ver.replace("(","")
						ver =3D ver.replace(")","")
						outfile.write(dep + " " + ver + " ")
					else:
						outfile.write(dep + " ")
				outfile.write('",\n')
		outfile.write('}\n\n')
		outfile.write("import sys\n")
		outfile.write("while 1:\n")
		outfile.write("\tline =3D sys.stdin.readline().strip()\n")
		outfile.write("\tif not line:\n")
		outfile.write("\t\tsys.exit(0)\n")
		outfile.write("\tif line in deps:\n")
		outfile.write("\t\tprint(deps[line] + '\\n')\n")

	# OE-core dependencies a.k.a. RPM requires
	outdepends =3D workdir + "/" + srcname + ".requires"

	try:
		from __builtin__ import file
		dependsfile =3D file(outdepends, 'w')
	except OSError:
		raise bb.build.FuncFailed("unable to open spec file for writing.")

	dump_filerdeps('RDEPENDS', dependsfile, d)

	dependsfile.close()
	os.chmod(outdepends, 0755)

	# OE-core / RPM Provides
	outprovides =3D workdir + "/" + srcname + ".provides"

	try:
		from __builtin__ import file
		providesfile =3D file(outprovides, 'w')
	except OSError:
		raise bb.build.FuncFailed("unable to open spec file for writing.")

	dump_filerdeps('RPROVIDES', providesfile, d)

	providesfile.close()
	os.chmod(outprovides, 0755)

	# Setup the rpmbuild arguments...
	rpmbuild =3D d.getVar('RPMBUILD', True)
	targetsys =3D d.getVar('TARGET_SYS', True)
	targetvendor =3D d.getVar('TARGET_VENDOR', True)
	package_arch =3D d.getVar('PACKAGE_ARCH', True) or ""
	if package_arch not in "all any noarch".split():
		ml_prefix =3D (d.getVar('MLPREFIX', True) or "").replace("-", "_")
		d.setVar('PACKAGE_ARCH_EXTEND', ml_prefix + package_arch)
	else:
		d.setVar('PACKAGE_ARCH_EXTEND', package_arch)
	pkgwritedir =3D d.expand('/tool/yocto/poky/build/tmp/work/virtex5-poky-lin=
ux/linux-xilinx-3.3.0-r0/deploy-rpms/${PACKAGE_ARCH_EXTEND}')
	pkgarch =3D d.expand('${PACKAGE_ARCH_EXTEND}-poky-linux')
	magicfile =3D d.expand('/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/u=
sr/share/misc/magic.mgc')
	bb.mkdirhier(pkgwritedir)
	os.chmod(pkgwritedir, 0755)

	cmd =3D rpmbuild
	cmd =3D cmd + " --nodeps --short-circuit --target " + pkgarch + " --buildr=
oot " + pkgd
	cmd =3D cmd + " --define '_topdir " + workdir + "' --define '_rpmdir " + p=
kgwritedir + "'"
	cmd =3D cmd + " --define '_build_name_fmt %%{NAME}-%%{VERSION}-%%{RELEASE}=
.%%{ARCH}.rpm'"
	cmd =3D cmd + " --define '_use_internal_dependency_generator 0'"
	cmd =3D cmd + " --define '__find_requires " + outdepends + "'"
	cmd =3D cmd + " --define '__find_provides " + outprovides + "'"
	cmd =3D cmd + " --define '_unpackaged_files_terminate_build 0'"
	cmd =3D cmd + " --define 'debug_package %{nil}'"
	cmd =3D cmd + " --define '_rpmfc_magic_path " + magicfile + "'"
	cmd =3D cmd + " --define '_tmppath " + workdir + "'"
	if d.getVar('SOURCE_ARCHIVE_PACKAGE_TYPE', True) and d.getVar('SOURCE_ARCH=
IVE_PACKAGE_TYPE', True).upper() =3D=3D 'SRPM':
		cmdsrpm =3D cmd + " --define '_sourcedir " + workdir + "' --define '_srcr=
pmdir " + creat_srpm_dir(d) + "'"
		cmdsrpm =3D 'fakeroot ' + cmdsrpm + " -bs " + outspecfile
	cmd =3D cmd + " -bb " + outspecfile

    # Build the source rpm package !
	if d.getVar('SOURCE_ARCHIVE_PACKAGE_TYPE', True) and d.getVar('SOURCE_ARCH=
IVE_PACKAGE_TYPE', True).upper() =3D=3D 'SRPM':
		d.setVar('SBUILDSPEC', cmdsrpm + "\n")
		d.setVarFlag('SBUILDSPEC', 'func', '1')
		bb.build.exec_func('SBUILDSPEC', d)


	# Build the rpm package!
	d.setVar('BUILDSPEC', cmd + "\n")
	d.setVarFlag('BUILDSPEC', 'func', '1')
	bb.build.exec_func('BUILDSPEC', d)
}


python map_uboot_arch () {
def map_uboot_arch(a, d):
	import re

	if   re.match('p(pc|owerpc)(|64)', a): return 'ppc'
	elif re.match('i.86$', a): return 'x86'
	return a
}


python buildcfg_neededvars () {
def buildcfg_neededvars(d):
	needed_vars =3D oe.data.typed_value("BUILDCFG_NEEDEDVARS", d)
	pesteruser =3D []
	for v in needed_vars:
		val =3D d.getVar(v, True)
		if not val or val =3D=3D 'INVALID':
			pesteruser.append(v)

	if pesteruser:
		bb.fatal('The following variable(s) were not set: %s\nPlease set them dir=
ectly, or choose a MACHINE or DISTRO that sets them.' % ', '.join(pesteruse=
r))
}


python get_timedata () {
def get_timedata(var, data):
    import time
    timedata =3D data.getVar(var, False)
    if timedata is None:
        return
    oldtime, oldcpu, oldproc =3D timedata
    procdiff =3D get_process_cputime(os.getpid()) - oldproc
    cpudiff =3D get_cputime() - oldcpu
    timediff =3D time.time() - oldtime
    if cpudiff > 0:
        cpuperc =3D float(procdiff) * 100 / cpudiff
    else:
        cpuperc =3D None
    return timediff, cpuperc
}


python do_package () {
        # Change the following version to cause sstate to invalidate the pa=
ckage
        # cache.  This is useful if an item this class depends on changes i=
n a
        # way that the output of this class changes.  rpmdeps is a good exa=
mple
        # as any change to rpmdeps requires this to be rerun.
        # PACKAGE_BBCLASS_VERSION =3D "1"

	packages =3D (d.getVar('PACKAGES', True) or "").split()
	if len(packages) < 1:
		bb.debug(1, "No packages to build, skipping do_package")
		return

	workdir =3D d.getVar('WORKDIR', True)
	outdir =3D d.getVar('DEPLOY_DIR', True)
	dest =3D d.getVar('D', True)
	dvar =3D d.getVar('PKGD', True)
	pn =3D d.getVar('PN', True)

	if not workdir or not outdir or not dest or not dvar or not pn or not pack=
ages:
		bb.error("WORKDIR, DEPLOY_DIR, D, PN and PKGD all must be defined, unable=
 to package")
		return

	for f in (d.getVar('PACKAGEFUNCS', True) or '').split():
		bb.build.exec_func(f, d)
}


python package_do_shlibs () {
	import re, pipes

	exclude_shlibs =3D d.getVar('EXCLUDE_FROM_SHLIBS', 0)
	if exclude_shlibs:
		bb.note("not generating shlibs")
		return

	lib_re =3D re.compile("^.*\.so")
	libdir_re =3D re.compile(".*/lib$")

	packages =3D d.getVar('PACKAGES', True)
	targetos =3D d.getVar('TARGET_OS', True)

	workdir =3D d.getVar('WORKDIR', True)

	ver =3D d.getVar('PKGV', True)
	if not ver:
		bb.error("PKGV not defined")
		return

	pkgdest =3D d.getVar('PKGDEST', True)

	shlibs_dir =3D d.getVar('SHLIBSDIR', True)
	shlibswork_dir =3D d.getVar('SHLIBSWORKDIR', True)

	# Take shared lock since we're only reading, not writing
	lf =3D bb.utils.lockfile(d.expand("/tool/yocto/poky/build/tmp/sysroots/pac=
kage-output.lock"))

	def linux_so(root, path, file):
		needs_ldconfig =3D False
		cmd =3D d.getVar('OBJDUMP', True) + " -p " + pipes.quote(os.path.join(roo=
t, file)) + " 2>/dev/null"
		cmd =3D "PATH=3D\"%s\" %s" % (d.getVar('PATH', True), cmd)
		fd =3D os.popen(cmd)
		lines =3D fd.readlines()
		fd.close()
		for l in lines:
			m =3D re.match("\s+NEEDED\s+([^\s]*)", l)
			if m:
				if m.group(1) not in needed[pkg]:
					needed[pkg].append(m.group(1))
			m =3D re.match("\s+SONAME\s+([^\s]*)", l)
			if m:
				this_soname =3D m.group(1)
				if not this_soname in sonames:
					# if library is private (only used by package) then do not build shlib=
 for it
					if not private_libs or -1 =3D=3D private_libs.find(this_soname):
						sonames.append(this_soname)
				if libdir_re.match(root):
					needs_ldconfig =3D True
				if snap_symlinks and (file !=3D this_soname):
					renames.append((os.path.join(root, file), os.path.join(root, this_sona=
me)))
		return needs_ldconfig

	def darwin_so(root, path, file):
		fullpath =3D os.path.join(root, file)
		if not os.path.exists(fullpath):
			return

		def get_combinations(base):
			#
			# Given a base library name, find all combinations of this split by "." =
and "-"
			#
			combos =3D []
			options =3D base.split(".")
			for i in range(1, len(options) + 1):
				combos.append(".".join(options[0:i]))
			options =3D base.split("-")
			for i in range(1, len(options) + 1):
				combos.append("-".join(options[0:i]))
			return combos

		if (file.endswith('.dylib') or file.endswith('.so')) and not pkg.endswith=
('-dev') and not pkg.endswith('-dbg'):
			# Drop suffix
			name =3D file.rsplit(".",1)[0]
			# Find all combinations
			combos =3D get_combinations(name)
			for combo in combos:
				if not combo in sonames:
					sonames.append(combo)
		if file.endswith('.dylib') or file.endswith('.so'):
			lafile =3D fullpath.replace(os.path.join(pkgdest, pkg), d.getVar('PKGD',=
 True))
			# Drop suffix
			lafile =3D lafile.rsplit(".",1)[0]
			lapath =3D os.path.dirname(lafile)
			lafile =3D os.path.basename(lafile)
			# Find all combinations
			combos =3D get_combinations(lafile)
			for combo in combos:
				if os.path.exists(lapath + '/' + combo + '.la'):
					break
			lafile =3D lapath + '/' + combo + '.la'

			#bb.note("Foo2: %s" % lafile)
			#bb.note("Foo %s %s" % (file, fullpath))
			if os.path.exists(lafile):
				fd =3D open(lafile, 'r')
				lines =3D fd.readlines()
				fd.close()
				for l in lines:
					m =3D re.match("\s*dependency_libs=3D\s*'(.*)'", l)
					if m:
						deps =3D m.group(1).split(" ")
						for dep in deps:
							#bb.note("Trying %s for %s" % (dep, pkg))
							name =3D None
							if dep.endswith(".la"):
								name =3D os.path.basename(dep).replace(".la", "")
							elif dep.startswith("-l"):
								name =3D dep.replace("-l", "lib")
							if pkg not in needed:
								needed[pkg] =3D []
							if name and name not in needed[pkg]:
								needed[pkg].append(name)
								#bb.note("Adding %s for %s" % (name, pkg))

	if d.getVar('PACKAGE_SNAP_LIB_SYMLINKS', True) =3D=3D "1":
		snap_symlinks =3D True
	else:
		snap_symlinks =3D False

	if (d.getVar('USE_LDCONFIG', True) or "1") =3D=3D "1":
		use_ldconfig =3D True
	else:
		use_ldconfig =3D False

	needed =3D {}
	shlib_provider =3D {}
	for pkg in packages.split():
		private_libs =3D d.getVar('PRIVATE_LIBS_' + pkg, True) or d.getVar('PRIVA=
TE_LIBS', True)
		needs_ldconfig =3D False
		bb.debug(2, "calculating shlib provides for %s" % pkg)

		pkgver =3D d.getVar('PKGV_' + pkg, True)
		if not pkgver:
			pkgver =3D d.getVar('PV_' + pkg, True)
		if not pkgver:
			pkgver =3D ver

		needed[pkg] =3D []
		sonames =3D list()
		renames =3D list()
		top =3D os.path.join(pkgdest, pkg)
		for root, dirs, files in os.walk(top):
			for file in files:
				soname =3D None
				path =3D os.path.join(root, file)
				if os.path.islink(path):
					continue
				if targetos =3D=3D "darwin" or targetos =3D=3D "darwin8":
					darwin_so(root, dirs, file)
				elif os.access(path, os.X_OK) or lib_re.match(file):
					ldconfig =3D linux_so(root, dirs, file)
					needs_ldconfig =3D needs_ldconfig or ldconfig
		for (old, new) in renames:
		    	bb.note("Renaming %s to %s" % (old, new))
			os.rename(old, new)
		shlibs_file =3D os.path.join(shlibswork_dir, pkg + ".list")
		shver_file =3D os.path.join(shlibswork_dir, pkg + ".ver")
		if len(sonames):
			fd =3D open(shlibs_file, 'w')
			for s in sonames:
				fd.write(s + '\n')
				shlib_provider[s] =3D (pkg, pkgver)
			fd.close()
			fd =3D open(shver_file, 'w')
			fd.write(pkgver + '\n')
			fd.close()
		if needs_ldconfig and use_ldconfig:
			bb.debug(1, 'adding ldconfig call to postinst for %s' % pkg)
			postinst =3D d.getVar('pkg_postinst_%s' % pkg, True) or d.getVar('pkg_po=
stinst', True)
			if not postinst:
				postinst =3D '#!/bin/sh\n'
			postinst +=3D d.getVar('ldconfig_postinst_fragment', True)
			d.setVar('pkg_postinst_%s' % pkg, postinst)

	list_re =3D re.compile('^(.*)\.list$')
	for dir in [shlibs_dir]:
		if not os.path.exists(dir):
			continue
		for file in os.listdir(dir):
			m =3D list_re.match(file)
			if m:
				dep_pkg =3D m.group(1)
				fd =3D open(os.path.join(dir, file))
				lines =3D fd.readlines()
				fd.close()
				ver_file =3D os.path.join(dir, dep_pkg + '.ver')
				lib_ver =3D None
				if os.path.exists(ver_file):
					fd =3D open(ver_file)
					lib_ver =3D fd.readline().rstrip()
					fd.close()
				for l in lines:
					shlib_provider[l.rstrip()] =3D (dep_pkg, lib_ver)

	bb.utils.unlockfile(lf)

	assumed_libs =3D d.getVar('ASSUME_SHLIBS', True)
	if assumed_libs:
	    for e in assumed_libs.split():
		l, dep_pkg =3D e.split(":")
		lib_ver =3D None
		dep_pkg =3D dep_pkg.rsplit("_", 1)
		if len(dep_pkg) =3D=3D 2:
		    lib_ver =3D dep_pkg[1]
		dep_pkg =3D dep_pkg[0]
		shlib_provider[l] =3D (dep_pkg, lib_ver)

	for pkg in packages.split():
		bb.debug(2, "calculating shlib requirements for %s" % pkg)

		deps =3D list()
		for n in needed[pkg]:
			if n in shlib_provider.keys():
				(dep_pkg, ver_needed) =3D shlib_provider[n]

				bb.debug(2, '%s: Dependency %s requires package %s' % (pkg, n, dep_pkg)=
)

				if dep_pkg =3D=3D pkg:
					continue

				if ver_needed:
					dep =3D "%s (>=3D %s)" % (dep_pkg, ver_needed)
				else:
					dep =3D dep_pkg
				if not dep in deps:
					deps.append(dep)
			else:
				bb.note("Couldn't find shared library provider for %s" % n)

		deps_file =3D os.path.join(pkgdest, pkg + ".shlibdeps")
		if os.path.exists(deps_file):
			os.remove(deps_file)
		if len(deps):
			fd =3D open(deps_file, 'w')
			for dep in deps:
				fd.write(dep + '\n')
			fd.close()
}


python base_contains () {
def base_contains(variable, checkvalues, truevalue, falsevalue, d):
    return oe.utils.contains(variable, checkvalues, truevalue, falsevalue, =
d)
}


python package_qa_check_perm () {
def package_qa_check_perm(path,name,d, elf, messages):
    """
    Check the permission of files
    """
    return
}


python oe_import () {
def oe_import(d):
    import os, sys

    bbpath =3D d.getVar("BBPATH", True).split(":")
    sys.path[0:0] =3D [os.path.join(dir, "lib") for dir in bbpath]

    def inject(name, value):
        """Make a python object accessible from the metadata"""
        if hasattr(bb.utils, "_context"):
            bb.utils._context[name] =3D value
        else:
            __builtins__[name] =3D value

    import oe.data
    for toimport in oe.data.typed_value("OE_IMPORTS", d):
        imported =3D __import__(toimport)
        inject(toimport.split(".", 1)[0], imported)
}


python package_qa_walk () {
def package_qa_walk(path, warnfuncs, errorfuncs, skip, package, d):
    import oe.qa

    #if this will throw an exception, then fix the dict above
    target_os   =3D d.getVar('TARGET_OS', True)
    target_arch =3D d.getVar('TARGET_ARCH', True)

    warnings =3D []
    errors =3D []
    for root, dirs, files in os.walk(path):
        for file in files:
            path =3D os.path.join(root,file)
            elf =3D oe.qa.ELFFile(path)
            try:
                elf.open()
            except:
                elf =3D None
            for func in warnfuncs:
                func(path, package, d, elf, warnings)
            for func in errorfuncs:
                func(path, package, d, elf, errors)

    for w in warnings:
        bb.warn("QA Issue: %s" % w)
        package_qa_write_error(w, d)
    for e in errors:
        bb.error("QA Issue: %s" % e)
        package_qa_write_error(e, d)

    return len(errors) =3D=3D 0
}


python do_unpack () {
	bb.build.exec_func('base_do_unpack', d)
}


python runstrip () {
def runstrip(file, elftype, d):
    # Function to strip a single file, called from split_and_strip_files be=
low
    # A working 'file' (one which works on the target architecture)
    #
    # The elftype is a bit pattern (explained in split_and_strip_files) to =
tell
    # us what type of file we're processing...
    # 4 - executable
    # 8 - shared library

    import commands, stat, subprocess

    pathprefix =3D "export PATH=3D%s; " % d.getVar('PATH', True)
    strip =3D d.getVar("STRIP", True)

    # Handle kernel modules specifically - .debug directories here are poin=
tless
    if file.find("/lib/modules/") !=3D -1 and file.endswith(".ko"):
        return subprocess.call("%s'%s' --strip-debug --remove-section=3D.co=
mment --remove-section=3D.note --preserve-dates '%s'" % (pathprefix, strip,=
 file), shell=3DTrue)

    newmode =3D None
    if not os.access(file, os.W_OK) or os.access(file, os.R_OK):
        origmode =3D os.stat(file)[stat.ST_MODE]
        newmode =3D origmode | stat.S_IWRITE | stat.S_IREAD
        os.chmod(file, newmode)

    extraflags =3D ""
    # .so and shared library
    if ".so" in file and elftype & 8:
        extraflags =3D "--remove-section=3D.comment --remove-section=3D.not=
e --strip-unneeded"
    # shared or executable:
    elif elftype & 8 or elftype & 4:
        extraflags =3D "--remove-section=3D.comment --remove-section=3D.not=
e"

    stripcmd =3D "'%s' %s '%s'" % (strip, extraflags, file)
    bb.debug(1, "runstrip: %s" % stripcmd)

    ret =3D subprocess.call("%s%s" % (pathprefix, stripcmd), shell=3DTrue)

    if newmode:
        os.chmod(file, origmode)

    if ret:
        bb.error("runstrip: '%s' strip command failed" % stripcmd)

    return 0
}


python check_sanity_validmachine () {
def check_sanity_validmachine(sanity_data):
    from bb import data

    messages =3D ""

    # Check TUNE_ARCH is set
    if sanity_data.getVar('TUNE_ARCH', True) =3D=3D 'INVALID':
        messages =3D messages + 'TUNE_ARCH is unset. Please ensure your MAC=
HINE configuration includes a valid tune configuration file which will set =
this correctly.\n'

    # Check TARGET_OS is set
    if sanity_data.getVar('TARGET_OS', True) =3D=3D 'INVALID':
        messages =3D messages + 'Please set TARGET_OS directly, or choose a=
 MACHINE or DISTRO that does so.\n'

    # Check that we don't have duplicate entries in PACKAGE_ARCHS & that TU=
NE_PKGARCH is in PACKAGE_ARCHS
    pkgarchs =3D sanity_data.getVar('PACKAGE_ARCHS', True)
    tunepkg =3D sanity_data.getVar('TUNE_PKGARCH', True)
    tunefound =3D False
    seen =3D {}
    dups =3D []

    for pa in pkgarchs.split():
        if seen.get(pa, 0) =3D=3D 1:
            dups.append(pa)
        else:
            seen[pa] =3D 1
        if pa =3D=3D tunepkg:
            tunefound =3D True

    if len(dups):
       messages =3D messages + "Error, the PACKAGE_ARCHS variable contains =
duplicates. The following archs are listed more than once: %s" % " ".join(d=
ups)

    if tunefound =3D=3D False:
       messages =3D messages + "Error, the PACKAGE_ARCHS variable does not =
contain TUNE_PKGARCH (%s)." % tunepkg

    return messages

}


python package_qa_check_desktop () {
def package_qa_check_desktop(path, name, d, elf, messages):
    """
    Run all desktop files through desktop-file-validate.
    """
    if path.endswith(".desktop"):
        desktop_file_validate =3D os.path.join(d.getVar('STAGING_BINDIR_NAT=
IVE',True),'desktop-file-validate')
        output =3D os.popen("%s %s" % (desktop_file_validate, path))
        # This only produces output on errors
        for l in output:
            messages.append("Desktop file issue: " + l.strip())
}


python get_diskstats () {
def get_diskstats(dev):
    import itertools
    #######################################################################=
#####
    # For info on what these are, see kernel doc file iostats.txt
    #######################################################################=
#####
    DSTAT_KEYS =3D ['ReadsComp', 'ReadsMerged', 'SectRead', 'TimeReads', 'W=
ritesComp', 'SectWrite', 'TimeWrite', 'IOinProgress', 'TimeIO', 'WTimeIO']
    try:
        for x in open("/proc/diskstats", "r"):
            if dev in x:
                diskstats_val =3D x.rstrip().split()[4:]
    except IOError as e:
        return
    diskstats =3D dict(itertools.izip(DSTAT_KEYS, diskstats_val))
    return diskstats
}


python do_menuconfig () {
        try:
            mtime =3D os.path.getmtime(".config")
        except OSError:
            mtime =3D 0

        oe_terminal("/bin/bash -c \"make menuconfig; echo 'Pausing for 5 se=
conds'; sleep 5\"", 'linux-xilinx Configuration', d)

        # FIXME this check can be removed when the minimum bitbake version =
has been bumped
        if hasattr(bb.build, 'write_taint'):
            try:
                newmtime =3D os.path.getmtime(".config")
            except OSError:
                newmtime =3D 0

            if newmtime > mtime:
                bb.note("Configuration changed, recompile will be forced")
                bb.build.write_taint('do_compile', d)
}


python src_patches () {
def src_patches(d, all =3D False ):
	workdir =3D d.getVar('WORKDIR', True)
	fetch =3D bb.fetch2.Fetch([], d)
	patches =3D []
	sources =3D []
	for url in fetch.urls:
		local =3D patch_path(url, fetch, workdir)
		if not local:
			if all:
				local =3D fetch.localpath(url)
				sources.append(local)
			continue

		urldata =3D fetch.ud[url]
		parm =3D urldata.parm
		patchname =3D parm.get('pname') or os.path.basename(local)

		apply, reason =3D should_apply(parm, d)
		if not apply:
			if reason:
				bb.note("Patch %s %s" % (patchname, reason))
			continue

		patchparm =3D {'patchname': patchname}
		if "striplevel" in parm:
			striplevel =3D parm["striplevel"]
		elif "pnum" in parm:
			#bb.msg.warn(None, "Deprecated usage of 'pnum' url parameter in '%s', pl=
ease use 'striplevel'" % url)
			striplevel =3D parm["pnum"]
		else:
			striplevel =3D '1'
		patchparm['striplevel'] =3D striplevel

		patchdir =3D parm.get('patchdir')
		if patchdir:
			patchparm['patchdir'] =3D patchdir

		localurl =3D bb.encodeurl(('file', '', local, '', '', patchparm))
		patches.append(localurl)

	if all:
		return sources

	return patches
}


python get_device () {
def get_device(e):
    file =3D open(e.data.getVar('DEVFILE', True))
    device =3D file.readline()
    file.close()
    return device
}


python check_conf_exists () {
def check_conf_exists(fn, data):
    bbpath =3D []
    fn =3D data.expand(fn)
    vbbpath =3D data.getVar("BBPATH")
    if vbbpath:
        bbpath +=3D vbbpath.split(":")
    for p in bbpath:
        currname =3D os.path.join(data.expand(p), fn)
        if os.access(currname, os.R_OK):
            return True
    return False
}


python package_qa_hash_style () {
def package_qa_hash_style(path, name, d, elf, messages):
    """
    Check if the binary has the right hash style...
    """

    if not elf:
        return

    if os.path.islink(path):
        return

    gnu_hash =3D "--hash-style=3Dgnu" in d.getVar('LDFLAGS', True)
    if not gnu_hash:
        gnu_hash =3D "--hash-style=3Dboth" in d.getVar('LDFLAGS', True)
    if not gnu_hash:
        return

    objdump =3D d.getVar('OBJDUMP', True)
    env_path =3D d.getVar('PATH', True)

    sane =3D False
    has_syms =3D False

    # If this binary has symbols, we expect it to have GNU_HASH too.
    for line in os.popen("LC_ALL=3DC PATH=3D%s %s -p '%s' 2> /dev/null" % (=
env_path, objdump, path), "r"):
        if "SYMTAB" in line:
            has_syms =3D True
        if "GNU_HASH" in line:
            sane =3D True
        if "[mips32]" in line or "[mips64]" in line:
	    sane =3D True

    if has_syms and not sane:
        messages.append("No GNU_HASH in the elf binary: '%s'" % path)

}


python base_set_filespath () {
def base_set_filespath(path, d):
	filespath =3D []
	extrapaths =3D (d.getVar("FILESEXTRAPATHS", True) or "")
	# Don't prepend empty strings to the path list
	if extrapaths !=3D "":
		path =3D extrapaths.split(":") + path
	# The ":" ensures we have an 'empty' override
	overrides =3D (d.getVar("OVERRIDES", True) or "") + ":"
	for p in path:
		if p !=3D "":
			for o in overrides.split(":"):
				filespath.append(os.path.join(p, o))
	return ":".join(filespath)
}


python mapping_rename_hook () {
def mapping_rename_hook(d):
	"""
	Rewrite variables to account for package renaming in things
	like debian.bbclass or manual PKG variable name changes
	"""
	runtime_mapping_rename("RDEPENDS", d)
	runtime_mapping_rename("RRECOMMENDS", d)
	runtime_mapping_rename("RSUGGESTS", d)
	runtime_mapping_rename("RPROVIDES", d)
	runtime_mapping_rename("RREPLACES", d)
	runtime_mapping_rename("RCONFLICTS", d)
}


python linux_module_packages () {
def linux_module_packages(s, d):
	suffix =3D ""
	return " ".join(map(lambda s: "kernel-module-%s%s" % (s.lower().replace('_=
', '-').replace('@', '+'), suffix), s.split()))
}


python base_do_unpack () {
	src_uri =3D (d.getVar('SRC_URI', True) or "").split()
	if len(src_uri) =3D=3D 0:
		return

	localdata =3D bb.data.createCopy(d)
	bb.data.update_data(localdata)

	rootdir =3D localdata.getVar('WORKDIR', True)

        try:
            fetcher =3D bb.fetch2.Fetch(src_uri, localdata)
            fetcher.unpack(rootdir)
        except bb.fetch2.BBFetchException, e:
            raise bb.build.FuncFailed(e)
}


python do_populate_sysroot_setscene () {
	sstate_setscene(d)
}


python get_layers_branch_rev () {
def get_layers_branch_rev(d):
	layers =3D (d.getVar("BBLAYERS", True) or "").split()
	layers_branch_rev =3D ["%-17s =3D \"%s:%s\"" % (os.path.basename(i), \
		base_get_metadata_git_branch(i, None).strip(), \
		base_get_metadata_git_revision(i, None)) \
			for i in layers]
	i =3D len(layers_branch_rev)-1
	p1 =3D layers_branch_rev[i].find("=3D")
	s1 =3D layers_branch_rev[i][p1:]
	while i > 0:
		p2 =3D layers_branch_rev[i-1].find("=3D")
		s2=3D layers_branch_rev[i-1][p2:]
		if s1 =3D=3D s2:
			layers_branch_rev[i-1] =3D layers_branch_rev[i-1][0:p2]
			i -=3D 1
		else:
			i -=3D 1
			p1 =3D layers_branch_rev[i].find("=3D")
			s1=3D layers_branch_rev[i][p1:]
	return layers_branch_rev

}


python base_get_scmbasepath () {
def base_get_scmbasepath(d):
	return d.getVar( 'COREBASE', True)
}


python check_license_flags () {
def check_license_flags(d):
    """
    This function checks if a recipe has any LICENSE_FLAGs that
    aren't whitelisted.

    If it does, it returns the first LICENSE_FLAG missing from the
    whitelist, or all the LICENSE_FLAGs if there is no whitelist.

    If everything is is properly whitelisted, it returns None.
    """

    def license_flag_matches(flag, whitelist, pn):
        """
        Return True if flag matches something in whitelist, None if not.

        Before we test a flag against the whitelist, we append _linux-xilin=
x
        to it.  We then try to match that string against the
        whitelist.  This covers the normal case, where we expect
        LICENSE_FLAGS to be a simple string like 'commercial', which
        the user typically matches exactly in the whitelist by
        explicitly appending the package name e.g 'commercial_foo'.
        If we fail the match however, we then split the flag across
        '_' and append each fragment and test until we either match or
        run out of fragments.
        """
        flag_pn =3D ("%s_%s" % (flag, pn))
        for candidate in whitelist:
            if flag_pn =3D=3D candidate:
                    return True

        flag_cur =3D ""
        flagments =3D flag_pn.split("_")
        flagments.pop() # we've already tested the full string
        for flagment in flagments:
            if flag_cur:
                flag_cur +=3D "_"
            flag_cur +=3D flagment
            for candidate in whitelist:
                if flag_cur =3D=3D candidate:
                    return True
        return False

    def all_license_flags_match(license_flags, whitelist):
        """ Return first unmatched flag, None if all flags match """
        pn =3D d.getVar('PN', True)
        split_whitelist =3D whitelist.split()
        for flag in license_flags.split():
            if not license_flag_matches(flag, split_whitelist, pn):
                return flag
        return None

    license_flags =3D d.getVar('LICENSE_FLAGS', True)
    if license_flags:
        whitelist =3D d.getVar('LICENSE_FLAGS_WHITELIST', True)
        if not whitelist:
            return license_flags
        unmatched_flag =3D all_license_flags_match(license_flags, whitelist=
)
        if unmatched_flag:
            return unmatched_flag
    return None
}


python check_sanity_version_change () {
def check_sanity_version_change(data):
    # Sanity checks to be done when SANITY_VERSION changes
    return ""
}


python package_do_pkgconfig () {
	import re

	packages =3D d.getVar('PACKAGES', True)
	workdir =3D d.getVar('WORKDIR', True)
	pkgdest =3D d.getVar('PKGDEST', True)

	shlibs_dir =3D d.getVar('SHLIBSDIR', True)
	shlibswork_dir =3D d.getVar('SHLIBSWORKDIR', True)

	pc_re =3D re.compile('(.*)\.pc$')
	var_re =3D re.compile('(.*)=3D(.*)')
	field_re =3D re.compile('(.*): (.*)')

	pkgconfig_provided =3D {}
	pkgconfig_needed =3D {}
	for pkg in packages.split():
		pkgconfig_provided[pkg] =3D []
		pkgconfig_needed[pkg] =3D []
		top =3D os.path.join(pkgdest, pkg)
		for root, dirs, files in os.walk(top):
			for file in files:
				m =3D pc_re.match(file)
				if m:
					pd =3D bb.data.init()
					name =3D m.group(1)
					pkgconfig_provided[pkg].append(name)
					path =3D os.path.join(root, file)
					if not os.access(path, os.R_OK):
						continue
					f =3D open(path, 'r')
					lines =3D f.readlines()
					f.close()
					for l in lines:
						m =3D var_re.match(l)
						if m:
							name =3D m.group(1)
							val =3D m.group(2)
							pd.setVar(name, pd.expand(val))
							continue
						m =3D field_re.match(l)
						if m:
							hdr =3D m.group(1)
							exp =3D bb.data.expand(m.group(2), pd)
							if hdr =3D=3D 'Requires':
								pkgconfig_needed[pkg] +=3D exp.replace(',', ' ').split()

	# Take shared lock since we're only reading, not writing
	lf =3D bb.utils.lockfile(d.expand("/tool/yocto/poky/build/tmp/sysroots/pac=
kage-output.lock"))

	for pkg in packages.split():
		pkgs_file =3D os.path.join(shlibswork_dir, pkg + ".pclist")
		if pkgconfig_provided[pkg] !=3D []:
			f =3D open(pkgs_file, 'w')
			for p in pkgconfig_provided[pkg]:
				f.write('%s\n' % p)
			f.close()

	for dir in [shlibs_dir]:
		if not os.path.exists(dir):
			continue
		for file in os.listdir(dir):
			m =3D re.match('^(.*)\.pclist$', file)
			if m:
				pkg =3D m.group(1)
				fd =3D open(os.path.join(dir, file))
				lines =3D fd.readlines()
				fd.close()
				pkgconfig_provided[pkg] =3D []
				for l in lines:
					pkgconfig_provided[pkg].append(l.rstrip())

	for pkg in packages.split():
		deps =3D []
		for n in pkgconfig_needed[pkg]:
			found =3D False
			for k in pkgconfig_provided.keys():
				if n in pkgconfig_provided[k]:
					if k !=3D pkg and not (k in deps):
						deps.append(k)
					found =3D True
			if found =3D=3D False:
				bb.note("couldn't find pkgconfig module '%s' in any package" % n)
		deps_file =3D os.path.join(pkgdest, pkg + ".pcdeps")
		if len(deps):
			fd =3D open(deps_file, 'w')
			for dep in deps:
				fd.write(dep + '\n')
			fd.close()

	bb.utils.unlockfile(lf)
}


python base_eventhandler () {
        if isinstance(e, bb.event.ConfigParsed):
		e.data.setVar('BB_VERSION', bb.__version__)
                generate_git_config(e)
                pkgarch_mapping(e.data)
                preferred_ml_updates(e.data)

	if isinstance(e, bb.event.BuildStarted):
		statuslines =3D []
		for func in oe.data.typed_value('BUILDCFG_FUNCS', e.data):
			g =3D globals()
			if func not in g:
				bb.warn("Build configuration function '%s' does not exist" % func)
			else:
				flines =3D g[func](e.data)
				if flines:
					statuslines.extend(flines)

		statusheader =3D e.data.getVar('BUILDCFG_HEADER', True)
		bb.plain('\n%s\n%s\n' % (statusheader, '\n'.join(statuslines)))
}


python sstate_init () {
def sstate_init(name, task, d):
    ss =3D {}
    ss['task'] =3D task
    ss['name'] =3D name
    ss['dirs'] =3D []
    ss['plaindirs'] =3D []
    ss['lockfiles'] =3D []
    ss['lockfiles-shared'] =3D []
    return ss
}


python sstate_clean () {
def sstate_clean(ss, d):
    import oe.path

    manifest =3D d.expand("/tool/yocto/poky/build/tmp/sstate-control/manife=
st-virtex5-linux-xilinx.%s" % ss['name'])

    if os.path.exists(manifest):
        locks =3D []
        for lock in ss['lockfiles-shared']:
            locks.append(bb.utils.lockfile(lock))
        for lock in ss['lockfiles']:
            locks.append(bb.utils.lockfile(lock))

        sstate_clean_manifest(manifest, d)

        for lock in locks:
            bb.utils.unlockfile(lock)

    stfile =3D d.getVar("STAMP", True) + ".do_" + ss['task']
    extrainf =3D d.getVarFlag("do_" + ss['task'], 'stamp-extra-info', True)
    oe.path.remove(stfile)
    oe.path.remove(stfile + "_setscene")
    if extrainf:
        oe.path.remove(stfile + ".*" + extrainf)
        oe.path.remove(stfile + "_setscene" + ".*" + extrainf)
    else:
        oe.path.remove(stfile + ".*")
        oe.path.remove(stfile + "_setscene" + ".*")
}


python emit_pkgdata () {
	from glob import glob

	def write_if_exists(f, pkg, var):
		def encode(str):
			import codecs
			c =3D codecs.getencoder("string_escape")
			return c(str)[0]

		val =3D d.getVar('%s_%s' % (var, pkg), True)
		if val:
			f.write('%s_%s: %s\n' % (var, pkg, encode(val)))
			return
		val =3D d.getVar('%s' % (var), True)
		if val:
			f.write('%s: %s\n' % (var, encode(val)))
		return

	def get_directory_size(dir):
		if os.listdir(dir):
			size =3D int(os.popen('du -sk %s' % dir).readlines()[0].split('\t')[0])
		else:
			size =3D 0
		return size

	packages =3D d.getVar('PACKAGES', True)
	pkgdest =3D d.getVar('PKGDEST', True)
	pkgdatadir =3D d.getVar('PKGDESTWORK', True)

	# Take shared lock since we're only reading, not writing
	lf =3D bb.utils.lockfile(d.expand("/tool/yocto/poky/build/tmp/sysroots/pac=
kage-output.lock"), True)

	data_file =3D pkgdatadir + d.expand("/linux-xilinx" )
	f =3D open(data_file, 'w')
	f.write("PACKAGES: %s\n" % packages)
	f.close()

	workdir =3D d.getVar('WORKDIR', True)

	for pkg in packages.split():
		subdata_file =3D pkgdatadir + "/runtime/%s" % pkg

		sf =3D open(subdata_file, 'w')
		write_if_exists(sf, pkg, 'PN')
		write_if_exists(sf, pkg, 'PV')
		write_if_exists(sf, pkg, 'PR')
		write_if_exists(sf, pkg, 'PKGV')
		write_if_exists(sf, pkg, 'PKGR')
		write_if_exists(sf, pkg, 'LICENSE')
		write_if_exists(sf, pkg, 'DESCRIPTION')
		write_if_exists(sf, pkg, 'SUMMARY')
		write_if_exists(sf, pkg, 'RDEPENDS')
		write_if_exists(sf, pkg, 'RPROVIDES')
		write_if_exists(sf, pkg, 'RRECOMMENDS')
		write_if_exists(sf, pkg, 'RSUGGESTS')
		write_if_exists(sf, pkg, 'RREPLACES')
		write_if_exists(sf, pkg, 'RCONFLICTS')
		write_if_exists(sf, pkg, 'SECTION')
		write_if_exists(sf, pkg, 'PKG')
		write_if_exists(sf, pkg, 'ALLOW_EMPTY')
		write_if_exists(sf, pkg, 'FILES')
		write_if_exists(sf, pkg, 'pkg_postinst')
		write_if_exists(sf, pkg, 'pkg_postrm')
		write_if_exists(sf, pkg, 'pkg_preinst')
		write_if_exists(sf, pkg, 'pkg_prerm')
		write_if_exists(sf, pkg, 'FILERPROVIDESFLIST')
		for dfile in (d.getVar('FILERPROVIDESFLIST_' + pkg, True) or "").split():
			write_if_exists(sf, pkg, 'FILERPROVIDES_' + dfile)

		write_if_exists(sf, pkg, 'FILERDEPENDSFLIST')
		for dfile in (d.getVar('FILERDEPENDSFLIST_' + pkg, True) or "").split():
			write_if_exists(sf, pkg, 'FILERDEPENDS_' + dfile)

		sf.write('%s_%s: %s\n' % ('PKGSIZE', pkg, get_directory_size(pkgdest + "/=
%s" % pkg)))
		sf.close()


		allow_empty =3D d.getVar('ALLOW_EMPTY_%s' % pkg, True)
		if not allow_empty:
			allow_empty =3D d.getVar('ALLOW_EMPTY', True)
		root =3D "%s/%s" % (pkgdest, pkg)
		os.chdir(root)
		g =3D glob('*')
		if g or allow_empty =3D=3D "1":
			packagedfile =3D pkgdatadir + '/runtime/%s.packaged' % pkg
			file(packagedfile, 'w').close()

	bb.utils.unlockfile(lf)
}


python package_qa_check_dbg () {
def package_qa_check_dbg(path, name, d, elf, messages):
    """
    Check for ".debug" files or directories outside of the dbg package
    """

    if not "-dbg" in name:
        if '.debug' in path.split(os.path.sep):
            messages.append("non debug package contains .debug directory: %=
s path %s" % \
                     (name, package_qa_clean_path(path,d)))
}


python package_do_filedeps () {
	import re

	pkgdest =3D d.getVar('PKGDEST', True)
	packages =3D d.getVar('PACKAGES', True)

	rpmdeps =3D d.expand("/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr=
/lib/rpm/bin/rpmdeps-oecore --macros /tool/yocto/poky/build/tmp/sysroots/x8=
6_64-linux/usr/lib/rpm/macros --define '_rpmfc_magic_path /tool/yocto/poky/=
build/tmp/sysroots/x86_64-linux/usr/share/misc/magic.mgc' --rpmpopt /tool/y=
octo/poky/build/tmp/sysroots/x86_64-linux/usr/lib/rpm/rpmpopt")
	r =3D re.compile(r'[<>=3D]+ +[^ ]*')

	def file_translate(file):
		ft =3D file.replace("@", "@at@")
		ft =3D ft.replace(" ", "@space@")
		ft =3D ft.replace("\t", "@tab@")
		ft =3D ft.replace("[", "@openbrace@")
		ft =3D ft.replace("]", "@closebrace@")
		ft =3D ft.replace("_", "@underscore@")
		return ft

	# Quick routine to process the results of the rpmdeps call...
	def process_deps(pipe, pkg, provides_files, requires_files):
		provides =3D {}
		requires =3D {}

		for line in pipe:
			f =3D line.split(" ", 1)[0].strip()
			line =3D line.split(" ", 1)[1].strip()

			if line.startswith("Requires:"):
				i =3D requires
			elif line.startswith("Provides:"):
				i =3D provides
			else:
				continue

			file =3D f.replace(pkgdest + "/" + pkg, "")
			file =3D file_translate(file)
			value =3D line.split(":", 1)[1].strip()
			value =3D r.sub(r'(\g<0>)', value)

			if value.startswith("rpmlib("):
				continue
			if value =3D=3D "python":
				continue
			if file not in i:
				i[file] =3D []
			i[file].append(value)

		for file in provides:
			provides_files.append(file)
			key =3D "FILERPROVIDES_" + file + "_" + pkg
			d.setVar(key, " ".join(provides[file]))

		for file in requires:
			requires_files.append(file)
			key =3D "FILERDEPENDS_" + file + "_" + pkg
			d.setVar(key, " ".join(requires[file]))

	def chunks(files, n):
		return [files[i:i+n] for i in range(0, len(files), n)]

	# Determine dependencies
	for pkg in packages.split():
		if pkg.endswith('-dbg') or pkg.endswith('-doc') or pkg.find('-locale-') !=
=3D -1 or pkg.find('-localedata-') !=3D -1 or pkg.find('-gconv-') !=3D -1 o=
r pkg.find('-charmap-') !=3D -1 or pkg.startswith('kernel-module-'):
			continue

		provides_files =3D []
		requires_files =3D []
		rpfiles =3D []
		for root, dirs, files in os.walk(pkgdest + "/" + pkg):
			for file in files:
				rpfiles.append(os.path.join(root, file))

		for files in chunks(rpfiles, 100):
			dep_pipe =3D os.popen(rpmdeps + " " + " ".join(files))

			process_deps(dep_pipe, pkg, provides_files, requires_files)

		d.setVar("FILERDEPENDSFLIST_" + pkg, " ".join(requires_files))
		d.setVar("FILERPROVIDESFLIST_" + pkg, " ".join(provides_files))
}


python copy_data () {
def copy_data(e):
    sanity_data =3D bb.data.createCopy(e.data)
    sanity_data.finalize()
    return sanity_data
}


python raise_sanity_error () {
def raise_sanity_error(msg, d):
    if d.getVar("SANITY_USE_EVENTS", True) =3D=3D "1":
        # FIXME: handle when BitBake version is too old to support bb.event=
.SanityCheckFailed
        # We can just fire the event directly once the minimum version is b=
umped beyond 1.15.1
        try:
            bb.event.fire(bb.event.SanityCheckFailed(msg), d)
            return
        except AttributeError:
            pass

    bb.fatal(""" OE-core's config sanity checker detected a potential misco=
nfiguration.
    Either fix the cause of this error or at your own risk disable the chec=
ker (see sanity.conf).
    Following is the list of potential problems / advisories:

    %s""" % msg)
}


python base_detect_branch () {
def base_detect_branch(d):
	path =3D base_get_scmbasepath(d)

	scms =3D [base_get_metadata_git_branch]

	for scm in scms:
		rev =3D scm(path, d)
		if rev <> "<unknown>":
			return rev.strip()

	return "<unknown>"
}


python debian_package_name_hook () {
	import glob, copy, stat, errno, re

	pkgdest =3D d.getVar('PKGDEST', True)
	packages =3D d.getVar('PACKAGES', True)
	bin_re =3D re.compile(".*/s?" + os.path.basename(d.getVar("bindir", True))=
 + "$")
	lib_re =3D re.compile(".*/" + os.path.basename(d.getVar("libdir", True)) +=
 "$")
	so_re =3D re.compile("lib.*\.so")

	def socrunch(s):
		s =3D s.lower().replace('_', '-')
		m =3D re.match("^(.*)(.)\.so\.(.*)$", s)
		if m is None:
			return None
		if m.group(2) in '0123456789':
			bin =3D '%s%s-%s' % (m.group(1), m.group(2), m.group(3))
		else:
			bin =3D m.group(1) + m.group(2) + m.group(3)
		dev =3D m.group(1) + m.group(2)
		return (bin, dev)

	def isexec(path):
		try:
			s =3D os.stat(path)
		except (os.error, AttributeError):
			return 0
		return (s[stat.ST_MODE] & stat.S_IEXEC)

	def auto_libname(packages, orig_pkg):
		sonames =3D []
		has_bins =3D 0
		has_libs =3D 0
		pkg_dir =3D os.path.join(pkgdest, orig_pkg)
		for root, dirs, files in os.walk(pkg_dir):
			if bin_re.match(root) and files:
				has_bins =3D 1
			if lib_re.match(root) and files:
				has_libs =3D 1
				for f in files:
					if so_re.match(f):
						fp =3D os.path.join(root, f)
						cmd =3D (d.getVar('TARGET_PREFIX', True) or "") + "objdump -p " + fp =
+ " 2>/dev/null"
						fd =3D os.popen(cmd)
						lines =3D fd.readlines()
						fd.close()
						for l in lines:
							m =3D re.match("\s+SONAME\s+([^\s]*)", l)
							if m and not m.group(1) in sonames:
								sonames.append(m.group(1))

		bb.debug(1, 'LIBNAMES: pkg %s libs %d bins %d sonames %s' % (orig_pkg, ha=
s_libs, has_bins, sonames))
		soname =3D None
		if len(sonames) =3D=3D 1:
			soname =3D sonames[0]
		elif len(sonames) > 1:
			lead =3D d.getVar('LEAD_SONAME', True)
			if lead:
				r =3D re.compile(lead)
				filtered =3D []
				for s in sonames:
					if r.match(s):
						filtered.append(s)
				if len(filtered) =3D=3D 1:
					soname =3D filtered[0]
				elif len(filtered) > 1:
					bb.note("Multiple matches (%s) for LEAD_SONAME '%s'" % (", ".join(filt=
ered), lead))
				else:
					bb.note("Multiple libraries (%s) found, but LEAD_SONAME '%s' doesn't m=
atch any of them" % (", ".join(sonames), lead))
			else:
				bb.note("Multiple libraries (%s) found and LEAD_SONAME not defined" % "=
, ".join(sonames))

		if has_libs and not has_bins and soname:
			soname_result =3D socrunch(soname)
			if soname_result:
				(pkgname, devname) =3D soname_result
				for pkg in packages.split():
					if (d.getVar('PKG_' + pkg) or d.getVar('DEBIAN_NOAUTONAME_' + pkg)):
						continue
					debian_pn =3D d.getVar('DEBIANNAME_' + pkg)
					if debian_pn:
						newpkg =3D debian_pn
					elif pkg =3D=3D orig_pkg:
						newpkg =3D pkgname
					else:
						newpkg =3D pkg.replace(orig_pkg, devname, 1)
					mlpre=3Dd.getVar('MLPREFIX', True)
					if mlpre:
						if not newpkg.find(mlpre) =3D=3D 0:
							newpkg =3D mlpre + newpkg
					if newpkg !=3D pkg:
						d.setVar('PKG_' + pkg, newpkg)

	# reversed sort is needed when some package is substring of another
	# ie in ncurses we get without reverse sort:
	# DEBUG: LIBNAMES: pkgname libtic5 devname libtic pkg ncurses-libtic orig_=
pkg ncurses-libtic debian_pn None newpkg libtic5
	# and later
	# DEBUG: LIBNAMES: pkgname libtic5 devname libtic pkg ncurses-libticw orig=
_pkg ncurses-libtic debian_pn None newpkg libticw
	# so we need to handle ncurses-libticw->libticw5 before ncurses-libtic->li=
btic5
	for pkg in sorted((d.getVar('AUTO_LIBNAME_PKGS', True) or "").split(), rev=
erse=3DTrue):
		auto_libname(packages, pkg)
}


python check_toolchain_tune () {
def check_toolchain_tune(data, tune, multilib):
    tune_errors =3D []
    if not tune:
        return "No tuning found for %s multilib." % multilib
    bb.debug(2, "Sanity-checking tuning '%s' (%s) features:" % (tune, multi=
lib))
    features =3D (data.getVar("TUNE_FEATURES_tune-%s" % tune, True) or "").=
split()
    if not features:
        return "Tuning '%s' has no defined features, and cannot be used." %=
 tune
    valid_tunes =3D data.getVarFlags('TUNEVALID') or {}
    conflicts =3D data.getVarFlags('TUNECONFLICTS') or {}
    # [doc] is the documentation for the variable, not a real feature
    if 'doc' in valid_tunes:
        del valid_tunes['doc']
    if 'doc' in conflicts:
        del conflicts['doc']
    for feature in features:
        if feature in conflicts:
            for conflict in conflicts[feature].split():
                if conflict in features:
                    tune_errors.append("Feature '%s' conflicts with '%s'." =
%
                        (feature, conflict))
        if feature in valid_tunes:
            bb.debug(2, "  %s: %s" % (feature, valid_tunes[feature]))
        else:
            tune_errors.append("Feature '%s' is not defined." % feature)
    whitelist =3D data.getVar("TUNEABI_WHITELIST", True) or ''
    override =3D data.getVar("TUNEABI_OVERRIDE", True) or ''
    if whitelist:
        tuneabi =3D data.getVar("TUNEABI_tune-%s" % tune, True) or ''
        if not tuneabi:
            tuneabi =3D tune
        if True not in [x in whitelist.split() for x in tuneabi.split()]:
            tune_errors.append("Tuning '%s' (%s) cannot be used with any su=
pported tuning/ABI." %
                (tune, tuneabi))
    if tune_errors:
        return "Tuning '%s' has the following errors:\n" + '\n'.join(tune_e=
rrors)
}


python read_subpackage_metadata () {
	import oe.packagedata

	data =3D oe.packagedata.read_pkgdata(d.getVar('PN', True), d)

	for key in data.keys():
		d.setVar(key, data[key])

	for pkg in d.getVar('PACKAGES', True).split():
		sdata =3D oe.packagedata.read_subpkgdata(pkg, d)
		for key in sdata.keys():
			d.setVar(key, sdata[key])
}


python get_diskdata () {
def get_diskdata(var, dev, data):
    olddiskdata =3D data.getVar(var, False)
    diskdata =3D {}
    if olddiskdata is None:
       return
    newdiskdata =3D get_diskstats(dev)
    for key in olddiskdata.iterkeys():
        diskdata["Start"+key] =3D str(int(olddiskdata[key]))
        diskdata["End"+key] =3D str(int(newdiskdata[key]))
    return diskdata
}


python base_get_metadata_git_revision () {
def base_get_metadata_git_revision(path, d):
	f =3D os.popen("cd %s; git log -n 1 --pretty=3Doneline -- 2>&1" % path)
	data =3D f.read()
	if f.close() is None:
		rev =3D data.split(" ")[0]
		if len(rev) !=3D 0:
			return rev
	return "<unknown>"
}


python package_rpm_install () {
	bb.fatal("package_rpm_install not implemented!")
}


--Apple-Mail=_2A4BACD2-6D54-4C41-9DD5-3172313E307E--
