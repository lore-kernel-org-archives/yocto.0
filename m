Return-Path: <elvis.dowson@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97E8FE0044D
	for <yocto@yoctoproject.org>; Fri,  4 May 2012 13:36:12 -0700 (PDT)
Received: by wibhm17 with SMTP id hm17so1510033wib.11
	for <yocto@yoctoproject.org>; Fri, 04 May 2012 13:36:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:to:mime-version:x-mailer;
	bh=aiw89dS22P+4DLOI6XIBXHJr0w75wsX5+q3khz29p4A=;
	b=HhPWcl5craK9JiaQbxkZMmvq7OfnZHxfJj3GTwlg0ApcglvG3anBMoUYxvbObN9+hm
	dkyG0uds/OCmE+0SDzAgEfMN8XYR3bryDVylCWRPZgD6FogdLmdRbbWqYMrfOrkFKNlt
	0yNBbqxVBeBZlVhJCd/QdXPq4ilE7RDnlLRd0wsU0XZyuHvv902zmwUtVOOGVRXO2u+s
	P+fmwgDos8T5s/Ta3XUJMDll9G6964pzRVNWbcYXGxK6WrKg+fbb8Ry+JGJX+Z18XlVT
	a/EkkO8EY0pING54n6bzLfaTA3Wk42cxZIdEBg/28i8pnWF7m6V2a3EQzbruwUOhf9H6
	oWqQ==
Received: by 10.180.98.8 with SMTP id ee8mr16092646wib.14.1336163771047;
	Fri, 04 May 2012 13:36:11 -0700 (PDT)
Received: from [192.168.1.34] (5.Red-83-49-41.dynamicIP.rima-tde.net.
	[83.49.41.5])
	by mx.google.com with ESMTPS id gd4sm254569wib.6.2012.05.04.13.35.57
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 04 May 2012 13:36:09 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Fri, 4 May 2012 22:35:54 +0200
Message-Id: <2DC81827-9707-4249-AC0A-DC1E3AD745AE@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1257)
X-Mailer: Apple Mail (2.1257)
X-Mailman-Approved-At: Fri, 04 May 2012 13:52:56 -0700
Subject: Problem compiling u-boot-2011.12 for overo-fire-chestnu43 custom machine configuration
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
X-List-Received-Date: Fri, 04 May 2012 20:36:14 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_F1C13FDB-DBD1-4407-BDE3-9CEAD5F37931"

--Apple-Mail=_F1C13FDB-DBD1-4407-BDE3-9CEAD5F37931
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
      I've created a new machine configuration called =
overo-fire-chestnut43. I've included the overo.inc and =
overo-fire-chestnut43.conf files below. When I try to build u-boot, it =
fails with the following errors:

ERROR: Function failed: do_compile (see =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/temp/log.do_compile.13502 for further information)

<snip>

| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/tools'
| cat /dev/null  >.depend
| /bin/sh: 1: Syntax error: Bad fd number

<snip>

| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/fat'
| arm-poky-linux-gnueabi-objdump: 'board/overo/libovero.o': No such file
| arm-poky-linux-gnueabi-objdump: 'arch/arm/cpu/armv7/libarmv7.o': No =
such file
| arm-poky-linux-gnueabi-objdump: =
'arch/arm/cpu/armv7/omap-common/libomap-common.o': No such file
| arm-poky-linux-gnueabi-objdump: 'arch/arm/cpu/armv7/omap3/libomap3.o': =
No such file
| arm-poky-linux-gnueabi-objdump: 'arch/arm/lib/libarm.o': No such file
| arm-poky-linux-gnueabi-objdump: 'common/libcommon.o': No such file
| arm-poky-linux-gnueabi-objdump: 'disk/libdisk.o': No such file
| arm-poky-linux-gnueabi-objdump: 'drivers/i2c/libi2c.o': No such file
| arm-poky-linux-gnueabi-objdump: 'drivers/misc/libmisc.o': No such file
| arm-poky-linux-gnueabi-objdump: 'drivers/mmc/libmmc.o': No such file
| arm-poky-linux-gnueabi-objdump: 'drivers/mtd/nand/libnand.o': No such =
file
| arm-poky-linux-gnueabi-objdump: 'drivers/net/libnet.o': No such file
| arm-poky-linux-gnueabi-objdump: 'drivers/pcmcia/libpcmcia.o': No such =
file
| arm-poky-linux-gnueabi-objdump: 'drivers/power/libpower.o': No such =
file
| arm-poky-linux-gnueabi-objdump: 'drivers/rtc/librtc.o': No such file
| arm-poky-linux-gnueabi-objdump: 'drivers/serial/libserial.o': No such =
file
| arm-poky-linux-gnueabi-objdump: 'fs/ext2/libext2fs.o': No such file
| arm-poky-linux-gnueabi-objdump: 'fs/fat/libfat.o': No such file
| arm-poky-linux-gnueabi-objdump: 'fs/jffs2/libjffs2.o': No such file
| arm-poky-linux-gnueabi-objdump: 'lib/libfdt/libfdt.o': No such file
| arm-poky-linux-gnueabi-objdump: 'lib/libgeneric.o': No such file
| arm-poky-linux-gnueabi-objdump: 'lib/zlib/libz.o': No such file
| arm-poky-linux-gnueabi-objdump: 'net/libnet.o': No such file
| arm-poky-linux-gnueabi-ld.bfd: cannot find =
arch/arm/cpu/armv7/libarmv7.o: No such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find =
arch/arm/cpu/armv7/omap-common/libomap-common.o: No such file or =
directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find =
arch/arm/cpu/armv7/omap3/libomap3.o: No such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find arch/arm/lib/libarm.o: No =
such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find common/libcommon.o: No such =
file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find disk/libdisk.o: No such =
file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/i2c/libi2c.o: No =
such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/misc/libmisc.o: No =
such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/mmc/libmmc.o: No =
such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/mtd/nand/libnand.o: =
No such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/net/libnet.o: No =
such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/pcmcia/libpcmcia.o: =
No such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/power/libpower.o: =
No such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/rtc/librtc.o: No =
such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/serial/libserial.o: =
No such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find fs/ext2/libext2fs.o: No =
such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find fs/fat/libfat.o: No such =
file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find fs/jffs2/libjffs2.o: No =
such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find lib/libfdt/libfdt.o: No =
such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find lib/libgeneric.o: No such =
file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find lib/zlib/libz.o: No such =
file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find net/libnet.o: No such file =
or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find board/overo/libovero.o: No =
such file or directory
| make: *** [u-boot] Error 1

<snip>

| make[1]: *** =
[/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/u-boot-spl] Error 127
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl'
| make: *** [spl/u-boot-spl.bin] Error 2
| ERROR: oe_runmake failed
NOTE: package u-boot-2011.12-r2: task do_compile: Failed
ERROR: Task 7 =
(/tool/yocto/meta-gumstix/recipes-bsp/u-boot/u-boot_2011.12.bb, =
do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 858 tasks of which 851 didn't need to be =
rerun and 1 failed.

Summary: 1 task failed:
  /tool/yocto/meta-gumstix/recipes-bsp/u-boot/u-boot_2011.12.bb, =
do_compile


Best regards,

Elvis Dowson


file: overo.inc

require conf/machine/include/omap3.inc

# Increase this everytime you change something in the kernel
MACHINE_KERNEL_PR =3D "r1"

KERNEL_IMAGETYPE =3D "uImage"

UBOOT_ENTRYPOINT =3D "0x80008000"
UBOOT_LOADADDRESS =3D "0x80008000"

file: overo-fire-chestnut43.conf

#@TYPE: Machine
#@NAME: Overo Fire Chestnut43 machine
#@DESCRIPTION: Machine configuration for the Gumstix Overo Fire TI =
OMAP3530 COM module with the Chestnut43 LCD expansion board.

require conf/machine/include/overo.inc

# u-boot
EXTRA_IMAGEDEPENDS +=3D "u-boot"
PREFERRED_PROVIDER_virtual/bootloader =3D "u-boot"
UBOOT_ARCH =3D "arm"
UBOOT_MACHINE =3D "omap3_overo_config"
PREFERRED_VERSION_pn-u-boot =3D "2011.12"

# x-load
EXTRA_IMAGEDEPENDS +=3D "x-load"
XLOAD_MACHINE =3D "overo_config"

# kernel provider
PREFERRED_PROVIDER_virtual/kernel =3D "linux-omap"

# xserver provider
PREFERRED_PROVIDER_virtual/xserver =3D "xserver-xorg"
XSERVER =3D "xserver-xorg \
           xf86-input-evdev \
           xf86-input-mouse \
           xf86-video-omapfb \
           xf86-input-keyboard \
           xf86-input-tslib"

GUI_MACHINE_CLASS =3D "smallscreen"

IMAGE_FSTYPES +=3D "ubi tar.bz2"

# do ubiattach /dev/ubi_ctrl -m 4
# =46rom dmesg:
# UBI: smallest flash I/O unit:    2048
# UBI: logical eraseblock size:    129024 bytes
# from ubiattach stdout:
# UBI device number 0, total 1996 LEBs
MKUBIFS_ARGS =3D "-m 2048 -e 129024 -c 1996"

# do ubiattach /dev/ubi_ctrl -m 4
# from dmesg:
# UBI: smallest flash I/O unit:    2048
# UBI: physical eraseblock size:   131072 bytes (128 KiB)
# UBI: sub-page size:              512
UBINIZE_ARGS =3D "-m 2048 -p 128KiB -s 512"
UBI_VOLNAME =3D "rootfs"

SERIAL_CONSOLE =3D "115200 ttyO2"

MACHINE_EXTRA_RRECOMMENDS =3D "kernel-modules marvell-sdio-fw =
libgles-omap3"
MACHINE_FEATURES =3D "kernel26 alsa apm usbgadget usbhost vfat ext2 =
screen touchscreen serial ethernet"

Log of error messages:


elvis@eos:~$ cd /tool/yocto/poky
elvis@eos:/tool/yocto/poky$ source oe-init-build-env build

### Shell environment set up for builds. ###

You can now run 'bitbake <target>'

Common targets are:
    core-image-minimal
    core-image-sato
    meta-toolchain
    meta-toolchain-sdk
    adt-installer
    meta-ide-support

You can also run generated qemu images with a command like 'runqemu =
qemux86'

elvis@eos:/tool/yocto/poky/build$ bitbake u-boot
WARNING: Host distribution "Ubuntu 12.04 LTS" has not been validated =
with this version of the build system; you may possibly experience =
unexpected failures. It is recommended that you use a tested =
distribution.
Parsing recipes: 100% =
|#########################################################################=
#####################################| Time: 00:00:17
Parsing of 1247 .bb files complete (0 cached, 1247 parsed). 1583 =
targets, 56 skipped, 0 masked, 0 errors.

Build Configuration:
BB_VERSION        =3D "1.15.2"
TARGET_ARCH       =3D "arm"
TARGET_OS         =3D "linux-gnueabi"
MACHINE           =3D "overo-fire-chestnut43"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.2+snapshot-20120504"
TUNE_FEATURES     =3D "armv7a vfp neon cortexa8"
TARGET_FPU        =3D "vfp-neon"
meta             =20
meta-yocto        =3D "master:2e9bb9d103def3ce7499e1a09e47b9297f85c488"
meta-oe           =3D "master:6c1ac85792e6e558d78347499afa041cfd92d7ab"
meta-gumstix      =3D =
"overo-2.0.0:121ecf46ce8483535f5120cd8685a9d9c853fd09"
meta-ti           =3D "master:07913cca6cfd7f35a9bb5d6b2cca41c6b5f07ec3"
meta-xilinx       =3D "master:6d5684d44c1eac67e551a98b0751e996470d203c"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Running setscene task 298 of 309 =
(/tool/yocto/meta-gumstix/recipes-bsp/u-boot/u-boot_2011.12.bb, =
do_populate_lic_setscene)
NOTE: package u-boot-2011.12-r2: task do_populate_lic_setscene: Started
NOTE: package u-boot-2011.12-r2: task do_populate_lic_setscene: =
Succeeded
NOTE: Executing RunQueue Tasks
NOTE: Running task 539 of 865 (ID: 4, =
/tool/yocto/meta-gumstix/recipes-bsp/u-boot/u-boot_2011.12.bb, do_fetch)
NOTE: Running noexec task 747 of 865 (ID: 607, =
/tool/yocto/poky/meta/recipes-devtools/perl/perl_5.14.2.bb, =
do_package_write)
NOTE: Running noexec task 767 of 865 (ID: 498, =
/tool/yocto/poky/meta/recipes-core/util-linux/util-linux_2.21.1.bb, =
do_package_write)
NOTE: package u-boot-2011.12-r2: task do_fetch: Started
NOTE: package u-boot-2011.12-r2: task do_fetch: Succeeded
NOTE: Running task 854 of 865 (ID: 0, =
/tool/yocto/meta-gumstix/recipes-bsp/u-boot/u-boot_2011.12.bb, =
do_unpack)
NOTE: package u-boot-2011.12-r2: task do_unpack: Started
NOTE: package u-boot-2011.12-r2: task do_unpack: Succeeded
NOTE: Running task 855 of 865 (ID: 1, =
/tool/yocto/meta-gumstix/recipes-bsp/u-boot/u-boot_2011.12.bb, do_patch)
NOTE: package u-boot-2011.12-r2: task do_patch: Started
NOTE: package u-boot-2011.12-r2: task do_patch: Succeeded
NOTE: Running task 856 of 865 (ID: 6, =
/tool/yocto/meta-gumstix/recipes-bsp/u-boot/u-boot_2011.12.bb, =
do_configure)
NOTE: package u-boot-2011.12-r2: task do_configure: Started
NOTE: package u-boot-2011.12-r2: task do_configure: Succeeded
NOTE: Running task 858 of 865 (ID: 7, =
/tool/yocto/meta-gumstix/recipes-bsp/u-boot/u-boot_2011.12.bb, =
do_compile)
NOTE: package u-boot-2011.12-r2: task do_compile: Started
ERROR: Function failed: do_compile (see =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/temp/log.do_compile.13502 for further information)
ERROR: Logfile of failure stored in: =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/temp/log.do_compile.13502
Log data follows:
| NOTE: make -j 6 CROSS_COMPILE=3Darm-poky-linux-gnueabi- all
| Generating include/autoconf.mk
| Generating include/autoconf.mk.dep
| arm-poky-linux-gnueabi-gcc -DDO_DEPS_ONLY \
| 		-g  -Os   -fno-common -ffixed-r8 -msoft-float  =
-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security   \
| 		-o lib/asm-offsets.s lib/asm-offsets.c -c -S
| if [ -f arch/arm/cpu/armv7/omap3/asm-offsets.c ];then \
| 		arm-poky-linux-gnueabi-gcc -DDO_DEPS_ONLY \
| 		-g  -Os   -fno-common -ffixed-r8 -msoft-float  =
-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security   \
| 			-o arch/arm/cpu/armv7/omap3/asm-offsets.s =
arch/arm/cpu/armv7/omap3/asm-offsets.c -c -S; \
| 	else \
| 		touch arch/arm/cpu/armv7/omap3/asm-offsets.s; \
| 	fi
| Generating include/generated/asm-offsets.h
| tools/scripts/make-asm-offsets arch/arm/cpu/armv7/omap3/asm-offsets.s =
include/generated/asm-offsets.h
| Generating include/generated/generic-asm-offsets.h
| tools/scripts/make-asm-offsets lib/asm-offsets.s =
include/generated/generic-asm-offsets.h
| for dir in tools examples/standalone examples/api arch/arm/cpu/armv7 =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/arch/arm/cpu/armv7/ ; do \
| 			make -C $dir _depend ; done
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/tools'
| cat /dev/null  >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/tools'
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/tools'
| make[1]: Nothing to be done for `_depend'.
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/tools'
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/examples/standalone'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ hello_world.o hello_world.c =
>.depend.hello_world
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ smc911x_eeprom.o smc911x_eeprom.c =
>.depend.smc911x_eeprom
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ stubs.o stubs.c >.depend.stubs
| /bin/sh: 1: Syntax error: Bad fd number
| cat /dev/null .depend.hello_world .depend.smc911x_eeprom .depend.stubs =
>.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/examples/standalone'
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/examples/standalone'
| make[1]: Nothing to be done for `_depend'.
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/examples/standalone'
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/examples/api'
| cat /dev/null  >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/examples/api'
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/examples/api'
| make[1]: Nothing to be done for `_depend'.
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/examples/api'
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ start.o start.S >.depend.start
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ cache_v7.o cache_v7.c >.depend.cache_v7
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ cpu.o cpu.c >.depend.cpu
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ syslib.o syslib.c >.depend.syslib
| /bin/sh: 1: Syntax error: Bad fd number
| cat /dev/null .depend.start .depend.cache_v7 .depend.cpu =
.depend.syslib >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'
| make[1]: Nothing to be done for `_depend'.
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'
| make[1]: Nothing to be done for `_depend'.
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'
| make -C tools all
| make -C arch/arm/cpu/armv7 start.o
| make -C =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/arch/arm/cpu/armv7/ u-boot.lds
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'
| arm-poky-linux-gnueabi-gcc   -D__ASSEMBLY__ -g  -Os   -fno-common =
-ffixed-r8 -msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -o start.o start.S -c
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'
| make[1]: Nothing to be done for `u-boot.lds'.
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/tools'
| gcc -g -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -pedantic -c -o crc32.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/crc32.c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -E -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -include =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include/u-boot/u-boot.lds.h  -ansi -D__ASSEMBLY__ =
-P - =
</tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7/u-boot.lds >u-boot.lds
| gcc -g -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -c -o env_embedded.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/common/env_embedded.c
| /bin/sh: 1: Syntax error: Bad fd number
| gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -pedantic   -o envcrc.o envcrc.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| gcc -g -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -pedantic -c -o sha1.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/sha1.c
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'
| gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -pedantic   -o gen_eth_addr.o =
gen_eth_addr.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -pedantic   -o img2srec.o =
img2srec.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES   -o mkenvimage.o mkenvimage.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES   -o aisimage.o aisimage.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES   -o default_image.o =
default_image.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES   -o fit_image.o fit_image.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| gcc -g -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -c -o image.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/common/image.c
| /bin/sh: 1: Syntax error: Bad fd number
| gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES   -o imximage.o imximage.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES   -o kwbimage.o kwbimage.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| gcc -g -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -pedantic -c -o md5.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/md5.c
| /bin/sh: 1: Syntax error: Bad fd number
| gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES   -o mkimage.o mkimage.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES   -o os_support.o os_support.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES   -o omapimage.o omapimage.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES   -o ublimage.o ublimage.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| gcc -g -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -c -o fdt.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt/fdt.c
| /bin/sh: 1: Syntax error: Bad fd number
| gcc -g -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -c -o fdt_ro.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt/fdt_ro.c
| /bin/sh: 1: Syntax error: Bad fd number
| gcc -g -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -c -o fdt_rw.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt/fdt_rw.c
| /bin/sh: 1: Syntax error: Bad fd number
| gcc -g -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -c -o fdt_strerror.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt/fdt_strerror.c
| /bin/sh: 1: Syntax error: Bad fd number
| gcc -g -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -c -o fdt_wip.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt/fdt_wip.c
| /bin/sh: 1: Syntax error: Bad fd number
| gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -pedantic  -o envcrc crc32.o =
env_embedded.o envcrc.o sha1.o
| /bin/sh: 1: Syntax error: Bad fd number
| gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -pedantic  -o gen_eth_addr =
gen_eth_addr.o
| /bin/sh: 1: Syntax error: Bad fd number
| gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -pedantic  -o img2srec img2srec.o
| /bin/sh: 1: Syntax error: Bad fd number
| gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -pedantic  -o mkenvimage crc32.o =
mkenvimage.o
| /bin/sh: 1: Syntax error: Bad fd number
| strip gen_eth_addr
| strip img2srec
| strip mkenvimage
| gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -pedantic  -o mkimage aisimage.o =
crc32.o default_image.o fit_image.o image.o imximage.o kwbimage.o md5.o =
mkimage.o os_support.o omapimage.o sha1.o ublimage.o fdt.o fdt_ro.o =
fdt_rw.o fdt_strerror.o fdt_wip.o
| /bin/sh: 1: Syntax error: Bad fd number
| strip mkimage
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/tools'
| make -C api/
| make -C arch/arm/cpu/armv7/
| make -C arch/arm/cpu/armv7/omap-common/
| make -C arch/arm/cpu/armv7/omap3/
| make -C arch/arm/lib/
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/api'
| cat /dev/null  >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make -C common/
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/api'
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap-common'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ reset.o reset.S >.depend.reset
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap3'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ lowlevel_init.o lowlevel_init.S =
>.depend.lowlevel_init
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ timer.o timer.c >.depend.timer
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/lib'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ _ashldi3.o _ashldi3.S >.depend._ashldi3
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o cache_v7.o cache_v7.c =
-c
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/common'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ cmd_bdinfo.o cmd_bdinfo.c >.depend.cmd_bdinfo
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ board.o board.c >.depend.board
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/api'
| rm -f libapi.o; arm-poky-linux-gnueabi-ar rcs libapi.o
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ _ashrdi3.o _ashrdi3.S >.depend._ashrdi3
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ _divsi3.o _divsi3.S >.depend._divsi3
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/api'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ cmd_boot.o cmd_boot.c >.depend.cmd_boot
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ _lshrdi3.o _lshrdi3.S >.depend._lshrdi3
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ utils.o utils.c >.depend.utils
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ _modsi3.o _modsi3.S >.depend._modsi3
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ clock.o clock.c >.depend.clock
| /bin/sh: 1: Syntax error: Bad fd number
| make -C disk/
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ _udivsi3.o _udivsi3.S >.depend._udivsi3
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ cmd_bootm.o cmd_bootm.c >.depend.cmd_bootm
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ _umodsi3.o _umodsi3.S >.depend._umodsi3
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ gpio.o gpio.c >.depend.gpio
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/disk'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ part.o part.c >.depend.part
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ div0.o div0.c >.depend.div0
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ board.o board.c >.depend.board
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ mem.o mem.c >.depend.mem
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| cat /dev/null .depend.reset .depend.timer .depend.utils .depend.gpio =
>.depend
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ cmd_cache.o cmd_cache.c >.depend.cmd_cache
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap-common'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ part_dos.o part_dos.c >.depend.part_dos
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ sys_info.o sys_info.c >.depend.sys_info
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ bootm.o bootm.c >.depend.bootm
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ cmd_console.o cmd_console.c =
>.depend.cmd_console
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap-common'
| arm-poky-linux-gnueabi-gcc   -D__ASSEMBLY__ -g  -Os   -fno-common =
-ffixed-r8 -msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -o reset.o reset.S -c
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| cat /dev/null .depend.part .depend.part_dos >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o timer.o timer.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/disk'
| cat /dev/null .depend.lowlevel_init .depend.board .depend.clock =
.depend.mem .depend.sys_info >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap3'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ cache.o cache.c >.depend.cache
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ cmd_echo.o cmd_echo.c >.depend.cmd_echo
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/disk'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o part.o part.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o cpu.o cpu.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap3'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o board.o board.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ cache-cp15.o cache-cp15.c >.depend.cache-cp15
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ cmd_exit.o cmd_exit.c >.depend.cmd_exit
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ interrupts.o interrupts.c >.depend.interrupts
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ cmd_ext2.o cmd_ext2.c >.depend.cmd_ext2
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ reset.o reset.c >.depend.reset
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o syslib.o syslib.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ cmd_fat.o cmd_fat.c >.depend.cmd_fat
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o utils.o utils.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| cat /dev/null .depend._ashldi3 .depend._ashrdi3 .depend._divsi3 =
.depend._lshrdi3 .depend._modsi3 .depend._udivsi3 .depend._umodsi3 =
.depend.div0 .depend.board .depend.bootm .depend.cache =
.depend.cache-cp15 .depend.interrupts .depend.reset >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ cmd_fdt.o cmd_fdt.c >.depend.cmd_fdt
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/lib'
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/lib'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o board.o board.c -c
| /bin/sh: 1: arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common =
-ffixed-r8 -msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ cmd_help.o cmd_help.c >.depend.cmd_help
| Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o part_dos.o part_dos.c =
-c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o gpio.o gpio.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ cmd_i2c.o cmd_i2c.c >.depend.cmd_i2c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o clock.o clock.c -c
| /bin/sh: 1: /bin/sh: 1: Syntax error: Bad fd number
| Syntax error: Bad fd number
| r -o libarmv7.o  cache_v7.o cpu.o syslib.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: r: Command not found
| make[1]: [libarmv7.o] Error 127 (ignored)
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o mem.o mem.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ cmd_itest.o cmd_itest.c >.depend.cmd_itest
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ cmd_jffs2.o cmd_jffs2.c >.depend.cmd_jffs2
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ cmd_load.o cmd_load.c >.depend.cmd_load
| /bin/sh: 1: Syntax error: Bad fd number
| make -C drivers/bios_emulator/
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o bootm.o bootm.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ cmd_mem.o cmd_mem.c >.depend.cmd_mem
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| r -o libomap-common.o  reset.o timer.o utils.o gpio.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: r: Command not found
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/bios_emulator'
| cat /dev/null  >.depend
| make[1]: [libomap-common.o] Error 127 (ignored)
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap-common'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o sys_info.o sys_info.c =
-c
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ cmd_misc.o cmd_misc.c >.depend.cmd_misc
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| r -o libdisk.o  part.o part_dos.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/bios_emulator'
| make[1]: r: Command not found
| make[1]: [libdisk.o] Error 127 (ignored)
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/disk'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o sdrc.o sdrc.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ cmd_mmc.o cmd_mmc.c >.depend.cmd_mmc
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/bios_emulator'
| rm -f libatibiosemu.o; arm-poky-linux-gnueabi-ar rcs libatibiosemu.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/bios_emulator'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o cache.o cache.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ cmd_nand.o cmd_nand.c >.depend.cmd_nand
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ cmd_net.o cmd_net.c >.depend.cmd_net
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o cache-cp15.o =
cache-cp15.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ cmd_nvedit.o cmd_nvedit.c >.depend.cmd_nvedit
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o interrupts.o =
interrupts.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc   -D__ASSEMBLY__ -g  -Os   -fno-common =
-ffixed-r8 -msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -o lowlevel_init.o lowlevel_init.S -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ cmd_pcmcia.o cmd_pcmcia.c >.depend.cmd_pcmcia
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o reset.o reset.c -c
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ cmd_source.o cmd_source.c >.depend.cmd_source
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| r -o libomap3.o  board.o clock.o mem.o sys_info.o sdrc.o =
lowlevel_init.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: r: Command not found
| make[1]: [libomap3.o] Error 127 (ignored)
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap3'
| make -C drivers/block/
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o eabi_compat.o =
eabi_compat.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/block'
| cat /dev/null  >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ cmd_test.o cmd_test.c >.depend.cmd_test
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/block'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ cmd_version.o cmd_version.c =
>.depend.cmd_version
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/block'
| rm -f libblock.o; arm-poky-linux-gnueabi-ar rcs libblock.o
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ cmd_ximg.o cmd_ximg.c >.depend.cmd_ximg
| /bin/sh: 1: make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/block'
| make -C drivers/dma/
| Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ command.o command.c >.depend.command
| /bin/sh: 1: Syntax error: Bad fd number
| make -C drivers/fpga/
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ console.o console.c >.depend.console
| /bin/sh: 1: /bin/sh: 1: Syntax error: Bad fd number
| Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/dma'
| cat /dev/null  >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ dlmalloc.o dlmalloc.c >.depend.dlmalloc
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/fpga'
| cat /dev/null  >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/dma'
| r -o libarm.o  board.o bootm.o cache.o cache-cp15.o interrupts.o =
reset.o
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ env_common.o env_common.c >.depend.env_common
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: r: Command not found
| make[1]: [libarm.o] Error 127 (ignored)
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/lib'
| /bin/sh: 1: Syntax error: Bad fd number
| make -C drivers/gpio/
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/fpga'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ env_nand.o env_nand.c >.depend.env_nand
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/dma'
| rm -f libdma.o; arm-poky-linux-gnueabi-ar rcs libdma.o
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ exports.o exports.c >.depend.exports
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/fpga'
| rm -f libfpga.o; arm-poky-linux-gnueabi-ar rcs libfpga.o
| /bin/sh: 1: Syntax error: Bad fd number
| make -C drivers/hwmon/
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/gpio'
| cat /dev/null  >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/fpga'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ fdt_support.o fdt_support.c =
>.depend.fdt_support
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/dma'
| make -C drivers/i2c/
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ flash.o flash.c >.depend.flash
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/gpio'
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/hwmon'
| cat /dev/null  >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ hush.o hush.c >.depend.hush
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/i2c'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ omap24xx_i2c.o omap24xx_i2c.c >.depend.omap24xx_i2c
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/gpio'
| rm -f libgpio.o; arm-poky-linux-gnueabi-ar rcs libgpio.o
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ image.o image.c >.depend.image
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/hwmon'
| /bin/sh: 1: Syntax error: Bad fd number
| make -C drivers/input/
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/gpio'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ main.o main.c >.depend.main
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/input'
| cat /dev/null  >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/hwmon'
| rm -f libhwmon.o; arm-poky-linux-gnueabi-ar rcs libhwmon.o
| /bin/sh: 1: Syntax error: Bad fd number
| cat /dev/null .depend.omap24xx_i2c >.depend
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ memsize.o memsize.c >.depend.memsize
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/hwmon'
| make -C drivers/misc/
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/input'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ s_record.o s_record.c >.depend.s_record
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/i2c'
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ stdio.o stdio.c >.depend.stdio
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ xyzModem.o xyzModem.c >.depend.xyzModem
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/input'
| rm -f libinput.o; arm-poky-linux-gnueabi-ar rcs libinput.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/input'
| make -C drivers/mmc/
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/misc'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ twl4030_led.o twl4030_led.c >.depend.twl4030_led
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/i2c'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o omap24xx_i2c.o =
omap24xx_i2c.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| make -C drivers/mtd/
| cat /dev/null .depend.cmd_bdinfo .depend.cmd_boot .depend.cmd_bootm =
.depend.cmd_cache .depend.cmd_console .depend.cmd_echo .depend.cmd_exit =
.depend.cmd_ext2 .depend.cmd_fat .depend.cmd_fdt .depend.cmd_help =
.depend.cmd_i2c .depend.cmd_itest .depend.cmd_jffs2 .depend.cmd_load =
.depend.cmd_mem .depend.cmd_misc .depend.cmd_mmc .depend.cmd_nand =
.depend.cmd_net .depend.cmd_nvedit .depend.cmd_pcmcia .depend.cmd_source =
.depend.cmd_test .depend.cmd_version .depend.cmd_ximg .depend.command =
.depend.console .depend.dlmalloc .depend.env_common .depend.env_nand =
.depend.exports .depend.fdt_support .depend.flash .depend.hush =
.depend.image .depend.main .depend.memsize .depend.s_record =
.depend.stdio .depend.xyzModem >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make -C drivers/mtd/nand/
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/common'
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mmc'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ mmc.o mmc.c >.depend.mmc
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd'
| cat /dev/null  >.depend
| cat /dev/null .depend.twl4030_led >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/nand'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ nand.o nand.c >.depend.nand
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd'
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/misc'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ omap_hsmmc.o omap_hsmmc.c >.depend.omap_hsmmc
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/common'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o cmd_bdinfo.o =
cmd_bdinfo.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd'
| rm -f libmtd.o; arm-poky-linux-gnueabi-ar rcs libmtd.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ nand_bbt.o nand_bbt.c >.depend.nand_bbt
| make -C drivers/mtd/onenand/
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/misc'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o twl4030_led.o =
twl4030_led.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/onenand'
| cat /dev/null  >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| cat /dev/null .depend.mmc .depend.omap_hsmmc >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/onenand'
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mmc'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ nand_ids.o nand_ids.c >.depend.nand_ids
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/onenand'
| rm -f libonenand.o; arm-poky-linux-gnueabi-ar rcs libonenand.o
| /bin/sh: 1: make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mmc'
| Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o mmc.o mmc.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/onenand'
| make -C drivers/mtd/spi/
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ nand_util.o nand_util.c >.depend.nand_util
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o cmd_boot.o cmd_boot.c =
-c
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| r -o libmisc.o  twl4030_led.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: r: Command not found
| make[1]: [libmisc.o] Error 127 (ignored)
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/misc'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o cmd_bootm.o =
cmd_bootm.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/spi'
| cat /dev/null  >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/spi'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ nand_ecc.o nand_ecc.c >.depend.nand_ecc
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ nand_base.o nand_base.c >.depend.nand_base
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/spi'
| rm -f libspi_flash.o; arm-poky-linux-gnueabi-ar rcs libspi_flash.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/spi'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o cmd_cache.o =
cmd_cache.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| r -o libi2c.o  omap24xx_i2c.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: r: Command not found
| make[1]: [libi2c.o] Error 127 (ignored)
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/i2c'
| make -C drivers/mtd/ubi/
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ omap_gpmc.o omap_gpmc.c >.depend.omap_gpmc
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o cmd_console.o =
cmd_console.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/ubi'
| cat /dev/null  >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| cat /dev/null .depend.nand .depend.nand_bbt .depend.nand_ids =
.depend.nand_util .depend.nand_ecc .depend.nand_base .depend.omap_gpmc =
>.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/ubi'
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/nand'
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/ubi'
| rm -f libubi.o; arm-poky-linux-gnueabi-ar rcs libubi.o
| make -C drivers/net/
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/ubi'
| make -C drivers/net/phy/
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/nand'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o nand.o nand.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o nand_bbt.o nand_bbt.c =
-c
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/net'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ smc911x.o smc911x.c >.depend.smc911x
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/net/phy'
| cat /dev/null  >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/net/phy'
| cat /dev/null .depend.smc911x >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/net/phy'
| rm -f libphy.o; arm-poky-linux-gnueabi-ar rcs libphy.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/net'
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/net/phy'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o nand_ids.o nand_ids.c =
-c
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/net'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o smc911x.o smc911x.c =
-c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o cmd_echo.o cmd_echo.c =
-c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o nand_util.o =
nand_util.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o cmd_exit.o cmd_exit.c =
-c
| /bin/sh: 1: Syntax error: Bad fd number
| make -C drivers/pci/
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o cmd_ext2.o cmd_ext2.c =
-c
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/pci'
| cat /dev/null  >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/pci'
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/pci'
| rm -f libpci.o; arm-poky-linux-gnueabi-ar rcs libpci.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/pci'
| make -C drivers/pcmcia/
| /bin/sh: 1: Syntax error: Bad fd number
| r -o libnet.o  smc911x.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: r: Command not found
| make[1]: [libnet.o] Error 127 (ignored)
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/net'
| make -C drivers/power/
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/pcmcia'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ rpx_pcmcia.o rpx_pcmcia.c >.depend.rpx_pcmcia
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/power'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ twl4030.o twl4030.c >.depend.twl4030
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ tqm8xx_pcmcia.o tqm8xx_pcmcia.c =
>.depend.tqm8xx_pcmcia
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o cmd_fat.o cmd_fat.c =
-c
| /bin/sh: 1: Syntax error: Bad fd number
| cat /dev/null .depend.twl4030 >.depend
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o omap_hsmmc.o =
omap_hsmmc.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/power'
| cat /dev/null .depend.rpx_pcmcia .depend.tqm8xx_pcmcia >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/pcmcia'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o cmd_fdt.o cmd_fdt.c =
-c
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/power'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o twl4030.o twl4030.c =
-c
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/pcmcia'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o rpx_pcmcia.o =
rpx_pcmcia.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o tqm8xx_pcmcia.o =
tqm8xx_pcmcia.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| r -o libpower.o  twl4030.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: r: Command not found
| make[1]: [libpower.o] Error 127 (ignored)
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/power'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o cmd_help.o cmd_help.c =
-c
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o nand_ecc.o nand_ecc.c =
-c
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o cmd_i2c.o cmd_i2c.c =
-c
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| r -o libpcmcia.o  rpx_pcmcia.o tqm8xx_pcmcia.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: r: Command not found
| make[1]: [libpcmcia.o] Error 127 (ignored)
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/pcmcia'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o cmd_itest.o =
cmd_itest.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| make -C drivers/rtc/
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o nand_base.o =
nand_base.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/rtc'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ date.o date.c >.depend.date
| /bin/sh: 1: Syntax error: Bad fd number
| cat /dev/null .depend.date >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| r -o libmmc.o  mmc.o omap_hsmmc.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: r: Command not found
| make[1]: [libmmc.o] Error 127 (ignored)
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mmc'
| make -C drivers/serial/
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/rtc'
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/serial'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ ns16550.o ns16550.c >.depend.ns16550
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/rtc'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o date.o date.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ serial.o serial.c >.depend.serial
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o cmd_jffs2.o =
cmd_jffs2.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| cat /dev/null .depend.ns16550 .depend.serial >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/serial'
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/serial'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o ns16550.o ns16550.c =
-c
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| r -o librtc.o  date.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: r: Command not found
| make[1]: [librtc.o] Error 127 (ignored)
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/rtc'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o omap_gpmc.o =
omap_gpmc.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| make -C drivers/spi/
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/spi'
| cat /dev/null  >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/spi'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o serial.o serial.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o cmd_load.o cmd_load.c =
-c
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/spi'
| rm -f libspi.o; arm-poky-linux-gnueabi-ar rcs libspi.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/spi'
| make -C drivers/twserial/
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o cmd_mem.o cmd_mem.c =
-c
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/twserial'
| cat /dev/null  >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/twserial'
| make -C drivers/usb/eth/
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/twserial'
| rm -f libtws.o; arm-poky-linux-gnueabi-ar rcs libtws.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/twserial'
| make -C drivers/usb/gadget/
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/eth'
| cat /dev/null  >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/gadget'
| cat /dev/null  >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/eth'
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/gadget'
| /bin/sh: 1: Syntax error: Bad fd number
| r -o libserial.o  ns16550.o serial.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: r: Command not found
| make[1]: [libserial.o] Error 127 (ignored)
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/serial'
| make -C drivers/usb/host/
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/eth'
| rm -f libusb_eth.o; arm-poky-linux-gnueabi-ar rcs libusb_eth.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/eth'
| make -C drivers/usb/musb/
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/gadget'
| rm -f libusb_gadget.o; arm-poky-linux-gnueabi-ar rcs libusb_gadget.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/host'
| cat /dev/null  >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/gadget'
| make -C drivers/usb/phy/
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/host'
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/musb'
| cat /dev/null  >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/phy'
| cat /dev/null  >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/musb'
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/phy'
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/host'
| rm -f libusb_host.o; arm-poky-linux-gnueabi-ar rcs libusb_host.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/host'
| make -C drivers/usb/ulpi/
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/musb'
| rm -f libusb_musb.o; arm-poky-linux-gnueabi-ar rcs libusb_musb.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/phy'
| rm -f libusb_phy.o; arm-poky-linux-gnueabi-ar rcs libusb_phy.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/musb'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o cmd_misc.o cmd_misc.c =
-c
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/phy'
| make -C drivers/video/
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/ulpi'
| cat /dev/null  >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/ulpi'
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/video'
| cat /dev/null  >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/video'
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/ulpi'
| rm -f libusb_ulpi.o; arm-poky-linux-gnueabi-ar rcs libusb_ulpi.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/ulpi'
| make -C drivers/watchdog/
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/video'
| rm -f libvideo.o; arm-poky-linux-gnueabi-ar rcs libvideo.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/video'
| make -C fs/cramfs/
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/watchdog'
| cat /dev/null  >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o cmd_mmc.o cmd_mmc.c =
-c
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/watchdog'
| /bin/sh: 1: Syntax error: Bad fd number
| make -C fs/ext2/
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/cramfs'
| cat /dev/null  >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/watchdog'
| rm -f libwatchdog.o; arm-poky-linux-gnueabi-ar rcs libwatchdog.o
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/cramfs'
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/watchdog'
| make -C fs/fat/
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/ext2'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ ext2fs.o ext2fs.c >.depend.ext2fs
| /bin/sh: 1: Syntax error: Bad fd number
| make -C fs/fdos/
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/cramfs'
| rm -f libcramfs.o; arm-poky-linux-gnueabi-ar rcs libcramfs.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/cramfs'
| make -C fs/jffs2/
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/fat'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ fat.o fat.c >.depend.fat
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/fdos'
| cat /dev/null  >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ dev.o dev.c >.depend.dev
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/fdos'
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/jffs2'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ compr_rtime.o compr_rtime.c >.depend.compr_rtime
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ file.o file.c >.depend.file
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ compr_rubin.o compr_rubin.c >.depend.compr_rubin
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/fdos'
| rm -f libfdos.o; arm-poky-linux-gnueabi-ar rcs libfdos.o
| /bin/sh: 1: Syntax error: Bad fd number
| cat /dev/null .depend.ext2fs .depend.dev >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ compr_zlib.o compr_zlib.c >.depend.compr_zlib
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/fdos'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o cmd_nand.o cmd_nand.c =
-c
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/ext2'
| cat /dev/null .depend.fat .depend.file >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/fat'
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/ext2'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o ext2fs.o ext2fs.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ jffs2_1pass.o jffs2_1pass.c >.depend.jffs2_1pass
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/fat'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o fat.o fat.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ mini_inflate.o mini_inflate.c >.depend.mini_inflate
| /bin/sh: 1: Syntax error: Bad fd number
| make -C fs/reiserfs/
| cat /dev/null .depend.compr_rtime .depend.compr_rubin =
.depend.compr_zlib .depend.jffs2_1pass .depend.mini_inflate >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/jffs2'
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/reiserfs'
| cat /dev/null  >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/jffs2'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o compr_rtime.o =
compr_rtime.c -c
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/reiserfs'
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/reiserfs'
| rm -f libreiserfs.o; arm-poky-linux-gnueabi-ar rcs libreiserfs.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/reiserfs'
| make -C fs/ubifs/
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o compr_rubin.o =
compr_rubin.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/ubifs'
| cat /dev/null  >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/ubifs'
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/ubifs'
| rm -f libubifs.o; arm-poky-linux-gnueabi-ar rcs libubifs.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/ubifs'
| make -C fs/yaffs2/
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/yaffs2'
| cat /dev/null  >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/yaffs2'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o compr_zlib.o =
compr_zlib.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/yaffs2'
| rm -f libyaffs2.o; arm-poky-linux-gnueabi-ar rcs libyaffs2.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/yaffs2'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o jffs2_1pass.o =
jffs2_1pass.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o cmd_net.o cmd_net.c =
-c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o dev.o dev.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o mini_inflate.o =
mini_inflate.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o cmd_nvedit.o =
cmd_nvedit.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| r -o libext2fs.o  ext2fs.o dev.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: r: Command not found
| make[1]: [libext2fs.o] Error 127 (ignored)
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/ext2'
| make -C lib/libfdt/
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib/libfdt'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ fdt.o fdt.c >.depend.fdt
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ fdt_ro.o fdt_ro.c >.depend.fdt_ro
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ fdt_rw.o fdt_rw.c >.depend.fdt_rw
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ fdt_strerror.o fdt_strerror.c >.depend.fdt_strerror
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| r -o libnand.o  nand.o nand_bbt.o nand_ids.o nand_util.o nand_ecc.o =
nand_base.o omap_gpmc.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: r: Command not found
| make[1]: [libnand.o] Error 127 (ignored)
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/nand'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o cmd_pcmcia.o =
cmd_pcmcia.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ fdt_sw.o fdt_sw.c >.depend.fdt_sw
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ fdt_wip.o fdt_wip.c >.depend.fdt_wip
| /bin/sh: 1: Syntax error: Bad fd number
| cat /dev/null .depend.fdt .depend.fdt_ro .depend.fdt_rw =
.depend.fdt_strerror .depend.fdt_sw .depend.fdt_wip >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib/libfdt'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o file.o file.c -c
| make -C lib/
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib/libfdt'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o fdt.o fdt.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o cmd_source.o =
cmd_source.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ crc7.o crc7.c >.depend.crc7
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ crc16.o crc16.c >.depend.crc16
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ crc32.o crc32.c >.depend.crc32
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ display_options.o display_options.c =
>.depend.display_options
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ errno.o errno.c >.depend.errno
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o cmd_test.o cmd_test.c =
-c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ gunzip.o gunzip.c >.depend.gunzip
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o fdt_ro.o fdt_ro.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ hashtable.o hashtable.c >.depend.hashtable
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ lmb.o lmb.c >.depend.lmb
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| r -o libfat.o  fat.o file.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: r: Command not found
| make[1]: [libfat.o] Error 127 (ignored)
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/fat'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o cmd_version.o =
cmd_version.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| make -C lib/lzma/
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ ldiv.o ldiv.c >.depend.ldiv
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ net_utils.o net_utils.c >.depend.net_utils
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib/lzma'
| cat /dev/null  >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib/lzma'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ qsort.o qsort.c >.depend.qsort
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib/lzma'
| rm -f liblzma.o; arm-poky-linux-gnueabi-ar rcs liblzma.o
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o cmd_ximg.o cmd_ximg.c =
-c
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib/lzma'
| make -C lib/lzo/
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o fdt_rw.o fdt_rw.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ strmhz.o strmhz.c >.depend.strmhz
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib/lzo'
| cat /dev/null  >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib/lzo'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ ctype.o ctype.c >.depend.ctype
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib/lzo'
| rm -f liblzo.o; arm-poky-linux-gnueabi-ar rcs liblzo.o
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ div64.o div64.c >.depend.div64
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib/lzo'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o command.o command.c =
-c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ string.o string.c >.depend.string
| /bin/sh: 1: Syntax error: Bad fd number
| r -o libjffs2.o  compr_rtime.o compr_rubin.o compr_zlib.o =
jffs2_1pass.o mini_inflate.o
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: r: Command not found
| make[1]: [libjffs2.o] Error 127 (ignored)
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/jffs2'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o fdt_strerror.o =
fdt_strerror.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ time.o time.c >.depend.time
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o console.o console.c =
-c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ vsprintf.o vsprintf.c >.depend.vsprintf
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o fdt_sw.o fdt_sw.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o fdt_wip.o fdt_wip.c =
-c
| /bin/sh: 1: Syntax error: Bad fd number
| cat /dev/null .depend.crc7 .depend.crc16 .depend.crc32 =
.depend.display_options .depend.errno .depend.gunzip .depend.hashtable =
.depend.lmb .depend.ldiv .depend.net_utils .depend.qsort .depend.strmhz =
.depend.ctype .depend.div64 .depend.string .depend.time .depend.vsprintf =
>.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib'
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o crc7.o crc7.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o crc16.o crc16.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o crc32.o crc32.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o display_options.o =
display_options.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| make -C lib/zlib/
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib/zlib'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ zlib.o zlib.c >.depend.zlib
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o dlmalloc.o dlmalloc.c =
-c
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| r -o libfdt.o  fdt.o fdt_ro.o fdt_rw.o fdt_strerror.o fdt_sw.o =
fdt_wip.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: r: Command not found
| make[1]: [libfdt.o] Error 127 (ignored)
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib/libfdt'
| make -C net/
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o errno.o errno.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o gunzip.o gunzip.c -c
| cat /dev/null .depend.zlib >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/net'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ bootp.o bootp.c >.depend.bootp
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib/zlib'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ eth.o eth.c >.depend.eth
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o env_common.o =
env_common.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ net.o net.c >.depend.net
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib/zlib'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o zlib.o zlib.c -c
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o env_nand.o env_nand.c =
-c
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ tftp.o tftp.c >.depend.tftp
| /bin/sh: 1: Syntax error: Bad fd number
| cat /dev/null .depend.bootp .depend.eth .depend.net .depend.tftp =
>.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/net'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o hashtable.o =
hashtable.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/net'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o bootp.o bootp.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| make -C post/
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/post'
| cat /dev/null  >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/post'
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/post'
| rm -f libpost.o; arm-poky-linux-gnueabi-ar rcs libpost.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/post'
| make -C spl all
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o exports.o exports.c =
-c
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl'
| cat /dev/null  =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make -C =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/arch/arm/cpu/armv7 =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/start.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/start.o start.S =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/.depend.start
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/cpu.o cpu.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/.depend.cpu
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/syslib.o syslib.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/.depend.syslib
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o eth.o eth.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o net.o net.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| cat /dev/null =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/.depend.start =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/.depend.cpu =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/.depend.syslib =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'
| arm-poky-linux-gnueabi-gcc   -D__ASSEMBLY__ -g  -Os   -fno-common =
-ffixed-r8 -msoft-float  -D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/start.o start.S -c
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'
| make -C =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/arch/arm/cpu/armv7/
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o lmb.o lmb.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/cpu.o cpu.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o fdt_support.o =
fdt_support.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/syslib.o syslib.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| r -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/libarmv7.o  =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/cpu.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/syslib.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: r: Command not found
| make[2]: =
[/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/libarmv7.o] Error 127 =
(ignored)
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'
| make -C =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap-common/
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap-common'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/reset.o reset.S =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/.depend.reset
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o flash.o flash.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/timer.o timer.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/.depend.timer
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/utils.o utils.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/.depend.utils
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o ldiv.o ldiv.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o net_utils.o =
net_utils.c -c
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/gpio.o gpio.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/.depend.gpio
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o hush.o hush.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/spl.o spl.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/.depend.spl
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/spl_nand.o =
spl_nand.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/.depend.spl_nand
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o tftp.o tftp.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o qsort.o qsort.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/spl_mmc.o =
spl_mmc.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/.depend.spl_mmc
| /bin/sh: 1: Syntax error: Bad fd number
| cat /dev/null =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/.depend.reset =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/.depend.timer =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/.depend.utils =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/.depend.gpio =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/.depend.spl =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/.depend.spl_nand =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/.depend.spl_mmc =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap-common'
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap-common'
| arm-poky-linux-gnueabi-gcc   -D__ASSEMBLY__ -g  -Os   -fno-common =
-ffixed-r8 -msoft-float  -D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/reset.o reset.S =
-c
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o image.o image.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o strmhz.o strmhz.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/timer.o timer.c =
-c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o ctype.o ctype.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o div64.o div64.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/utils.o utils.c =
-c
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| r -o libnet.o  bootp.o eth.o net.o tftp.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: r: Command not found
| make[1]: [libnet.o] Error 127 (ignored)
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/net'
| make -C =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap3/
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap3'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/lowlevel_init.o =
lowlevel_init.S =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/.depend.lowlevel_init
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o string.o string.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/board.o board.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/.depend.board
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/clock.o clock.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/.depend.clock
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/mem.o mem.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/.depend.mem
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| r -o libz.o  zlib.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: r: Command not found
| make[1]: [libz.o] Error 127 (ignored)
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib/zlib'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o main.o main.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/gpio.o gpio.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/sys_info.o sys_info.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/.depend.sys_info
| /bin/sh: 1: Syntax error: Bad fd number
| cat /dev/null =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/.depend.lowlevel_init =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/.depend.board =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/.depend.clock =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/.depend.mem =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/.depend.sys_info =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap3'
| make -C =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/arch/arm/lib/
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap3'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/board.o board.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/lib'
| cat /dev/null  =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/arch/arm/lib/.depend
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/spl.o spl.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/lib'
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/lib'
| rm -f =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/lib/libarm.o; =
arm-poky-linux-gnueabi-ar rcs =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/lib/libarm.o
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/lib/eabi_compat.o eabi_compat.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o time.o time.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/clock.o clock.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o memsize.o memsize.c =
-c
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/lib'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/mem.o mem.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o vsprintf.o vsprintf.c =
-c
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o s_record.o s_record.c =
-c
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o stdio.o stdio.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/spl_nand.o =
spl_nand.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o xyzModem.o xyzModem.c =
-c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/spl_mmc.o =
spl_mmc.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/sys_info.o sys_info.c =
-c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/sdrc.o sdrc.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc   -D__ASSEMBLY__ -g  -Os   -fno-common =
-ffixed-r8 -msoft-float  -D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/lowlevel_init.o =
lowlevel_init.S -c
| /bin/sh: 1: Syntax error: Bad fd number
| make -C =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/board/overo/
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/board/overo'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/board/overo/overo.o overo.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/board/overo/.depend.overo
| /bin/sh: 1: Syntax error: Bad fd number
| cat /dev/null =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/board/overo/.depend.overo =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/board/overo/.depend
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| r -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/libomap-common.o =
 =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/reset.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/timer.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/utils.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/gpio.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/spl.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/spl_nand.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/spl_mmc.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: r: Command not found
| make[2]: =
[/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/libomap-common.o]=
 Error 127 (ignored)
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap-common'
| make -C =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/common/
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/board/overo'
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/common'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/console.o console.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/common/.depend.console
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/board/overo'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/board/overo/overo.o overo.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| make -C =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/disk/
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/disk'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/disk/part.o part.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/disk/.depend.part
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/dlmalloc.o dlmalloc.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/common/.depend.dlmalloc
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| r -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/libomap3.o  =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/board.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/clock.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/mem.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/sys_info.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/sdrc.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/lowlevel_init.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: r: Command not found
| make[2]: =
[/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/libomap3.o] Error 127 =
(ignored)
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap3'
| make -C =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/drivers/i2c/
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/disk/part_dos.o part_dos.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/disk/.depend.part_dos
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/i2c'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/i2c/omap24xx_i2c.o omap24xx_i2c.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/i2c/.depend.omap24xx_i2c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/memsize.o memsize.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/common/.depend.memsize
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -I..   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/stdio.o stdio.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/common/.depend.stdio
| /bin/sh: 1: Syntax error: Bad fd number
| cat /dev/null =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/disk/.depend.part =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/disk/.depend.part_dos =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/disk/.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/disk'
| /bin/sh: 1: Syntax error: Bad fd number
| r -o libcommon.o  cmd_bdinfo.o cmd_boot.o cmd_bootm.o cmd_cache.o =
cmd_console.o cmd_echo.o cmd_exit.o cmd_ext2.o cmd_fat.o cmd_fdt.o =
cmd_help.o cmd_i2c.o cmd_itest.o cmd_jffs2.o cmd_load.o cmd_mem.o =
cmd_misc.o cmd_mmc.o cmd_nand.o cmd_net.o cmd_nvedit.o cmd_pcmcia.o =
cmd_source.o cmd_test.o cmd_version.o cmd_ximg.o command.o console.o =
dlmalloc.o env_common.o env_nand.o exports.o fdt_support.o flash.o =
hush.o image.o main.o memsize.o s_record.o stdio.o xyzModem.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: r: Command not found
| make[1]: [libcommon.o] Error 127 (ignored)
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/common'
| make -C =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/drivers/mmc/
| /bin/sh: 1: Syntax error: Bad fd number
| cat /dev/null =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/i2c/.depend.omap24xx_i2c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/i2c/.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/i2c'
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/disk'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/disk/part.o part.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| cat /dev/null =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/.depend.console =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/.depend.dlmalloc =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/.depend.memsize =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/.depend.stdio =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/common/.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mmc'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mmc/mmc.o mmc.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/mmc/.depend.mmc
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/common'
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/i2c'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/i2c/omap24xx_i2c.o omap24xx_i2c.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/common'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/console.o console.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mmc/omap_hsmmc.o omap_hsmmc.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/mmc/.depend.omap_hsmmc
| /bin/sh: 1: Syntax error: Bad fd number
| cat /dev/null =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mmc/.depend.mmc =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mmc/.depend.omap_hsmmc =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/mmc/.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mmc'
| /bin/sh: 1: Syntax error: Bad fd number
| r -o libgeneric.o  crc7.o crc16.o crc32.o display_options.o errno.o =
gunzip.o hashtable.o lmb.o ldiv.o net_utils.o qsort.o strmhz.o ctype.o =
div64.o string.o time.o vsprintf.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: r: Command not found
| make[1]: [libgeneric.o] Error 127 (ignored)
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/disk/part_dos.o part_dos.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mmc'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mmc/mmc.o mmc.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| make -C =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/drivers/mtd/nand/
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/nand'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/nand_spl_simple.o =
nand_spl_simple.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/mtd/nand/.depend.nand_spl_simple
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/nand_ecc.o nand_ecc.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/mtd/nand/.depend.nand_ecc
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/nand_base.o nand_base.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/mtd/nand/.depend.nand_base
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/omap_gpmc.o omap_gpmc.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/mtd/nand/.depend.omap_gpmc
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/dlmalloc.o dlmalloc.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| r -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/board/overo/libovero.o  =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/board/overo/overo.o
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: r: Command not found
| make[2]: =
[/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/board/overo/libovero.o] Error 127 (ignored)
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/board/overo'
| make -C =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/drivers/power/
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| r -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/i2c/libi2c.o  =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/i2c/omap24xx_i2c.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: r: Command not found
| make[2]: =
[/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/i2c/libi2c.o] Error 127 (ignored)
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/i2c'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mmc/omap_hsmmc.o omap_hsmmc.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/power'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/power/twl4030.o twl4030.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/power/.depend.twl4030
| /bin/sh: 1: Syntax error: Bad fd number
| cat /dev/null =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/.depend.nand_spl_simple =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/.depend.nand_ecc =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/.depend.nand_base =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/.depend.omap_gpmc =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/mtd/nand/.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/nand'
| /bin/sh: 1: Syntax error: Bad fd number
| r -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/disk/libdisk.o  =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/disk/part.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/disk/part_dos.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: r: Command not found
| make[2]: =
[/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/disk/libdisk.o] Error 127 (ignored)
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/disk'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/memsize.o memsize.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| cat /dev/null =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/power/.depend.twl4030 =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/power/.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/nand'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/nand_spl_simple.o =
nand_spl_simple.c -c
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/power'
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/power'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/power/twl4030.o twl4030.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/stdio.o stdio.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| make -C =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/drivers/serial/
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/serial'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/serial/ns16550.o ns16550.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/serial/.depend.ns16550
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| r -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/power/libpower.o  =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/power/twl4030.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: r: Command not found
| make[2]: =
[/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/power/libpower.o] Error 127 (ignored)
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/power'
| make -C =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/fs/fat/
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/serial/serial.o serial.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/serial/.depend.serial
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/fat'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/fs/fat/fat.o fat.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/fs/fat/.depend.fat
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/nand_ecc.o nand_ecc.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| cat /dev/null =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/serial/.depend.ns16550 =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/serial/.depend.serial =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/serial/.depend
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/nand_base.o nand_base.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/serial'
| cat /dev/null =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/fs/fat/.depend.fat =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/fs/fat/.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/fat'
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/serial'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/serial/ns16550.o ns16550.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/fat'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/fs/fat/fat.o fat.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/serial/serial.o serial.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| make -C board/overo/
| /bin/sh: 1: Syntax error: Bad fd number
| r -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mmc/libmmc.o  =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mmc/mmc.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mmc/omap_hsmmc.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: r: Command not found
| make[2]: =
[/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/mmc/libmmc.o] Error 127 (ignored)
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mmc'
| make -C =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 0: Illegal option --
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/board/overo'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ overo.o overo.c >.depend.overo
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/ctype.o ctype.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/lib/.depend.ctype
| r -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/libcommon.o  =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/console.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/dlmalloc.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/memsize.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/stdio.o
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: r: Command not found
| make[2]: =
[/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/common/libcommon.o] Error 127 (ignored)
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/common'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/div64.o div64.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/lib/.depend.div64
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/string.o string.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/lib/.depend.string
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/time.o time.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/lib/.depend.time
| /bin/sh: 1: Syntax error: Bad fd number
| cat /dev/null .depend.overo >.depend
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/board/overo'
| arm-poky-linux-gnueabi-gcc -M -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5   -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/vsprintf.o vsprintf.c =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/lib/.depend.vsprintf
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/omap_gpmc.o omap_gpmc.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/board/overo'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o overo.o overo.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| cat /dev/null =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/.depend.ctype =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/.depend.div64 =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/.depend.string =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/.depend.time =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/.depend.vsprintf =
>/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/lib/.depend
| /bin/sh: 1: Syntax error: Bad fd number
| r -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/serial/libserial.o  =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/serial/ns16550.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/serial/serial.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: r: Command not found
| make[2]: =
[/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/serial/libserial.o] Error 127 =
(ignored)
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/serial'
| arm-poky-linux-gnueabi-gcc -E -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -include =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include/u-boot/u-boot.lds.h -include =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include/config.h  -ansi -D__ASSEMBLY__ -P - < =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap-common/u-boot-spl.lds > =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/u-boot-spl.lds
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib'
| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib'
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/ctype.o ctype.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/div64.o div64.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/string.o string.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/time.o time.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-gcc  -g  -Os   -fno-common -ffixed-r8 =
-msoft-float  -D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe  =
-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux -mno-thumb-interwork =
-march=3Darmv5 -Wall -Wstrict-prototypes -fno-stack-protector =
-Wno-format-nonliteral -Wno-format-security     -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/vsprintf.o vsprintf.c -c
| /bin/sh: 1: Syntax error: Bad fd number
| /bin/sh: 1: Syntax error: Bad fd number
| r -o libovero.o  overo.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[1]: r: Command not found
| make[1]: [libovero.o] Error 127 (ignored)
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/board/overo'
| UNDEF_SYM=3D`arm-poky-linux-gnueabi-objdump -x board/overo/libovero.o =
api/libapi.o arch/arm/cpu/armv7/libarmv7.o =
arch/arm/cpu/armv7/omap-common/libomap-common.o =
arch/arm/cpu/armv7/omap3/libomap3.o arch/arm/lib/libarm.o =
common/libcommon.o disk/libdisk.o drivers/bios_emulator/libatibiosemu.o =
drivers/block/libblock.o drivers/dma/libdma.o drivers/fpga/libfpga.o =
drivers/gpio/libgpio.o drivers/hwmon/libhwmon.o drivers/i2c/libi2c.o =
drivers/input/libinput.o drivers/misc/libmisc.o drivers/mmc/libmmc.o =
drivers/mtd/libmtd.o drivers/mtd/nand/libnand.o =
drivers/mtd/onenand/libonenand.o drivers/mtd/spi/libspi_flash.o =
drivers/mtd/ubi/libubi.o drivers/net/libnet.o drivers/net/phy/libphy.o =
drivers/pci/libpci.o drivers/pcmcia/libpcmcia.o drivers/power/libpower.o =
drivers/rtc/librtc.o drivers/serial/libserial.o drivers/spi/libspi.o =
drivers/twserial/libtws.o drivers/usb/eth/libusb_eth.o =
drivers/usb/gadget/libusb_gadget.o drivers/usb/host/libusb_host.o =
drivers/usb/musb/libusb_musb.o drivers/usb/phy/libusb_phy.o =
drivers/usb/ulpi/libusb_ulpi.o drivers/video/libvideo.o =
drivers/watchdog/libwatchdog.o fs/cramfs/libcramfs.o fs/ext2/libext2fs.o =
fs/fat/libfat.o fs/fdos/libfdos.o fs/jffs2/libjffs2.o =
fs/reiserfs/libreiserfs.o fs/ubifs/libubifs.o fs/yaffs2/libyaffs2.o =
lib/libfdt/libfdt.o lib/libgeneric.o lib/lzma/liblzma.o lib/lzo/liblzo.o =
lib/zlib/libz.o net/libnet.o post/libpost.o | sed  -n -e =
's/.*\(__u_boot_cmd_.*\)/-u\1/p'|sort|uniq`; cd =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git &&  arm-poky-linux-gnueabi-ld.bfd  -pie -T =
u-boot.lds -Bstatic -Ttext 0x80008000 $UNDEF_SYM =
arch/arm/cpu/armv7/start.o --start-group api/libapi.o =
arch/arm/cpu/armv7/libarmv7.o =
arch/arm/cpu/armv7/omap-common/libomap-common.o =
arch/arm/cpu/armv7/omap3/libomap3.o arch/arm/lib/libarm.o =
common/libcommon.o disk/libdisk.o drivers/bios_emulator/libatibiosemu.o =
drivers/block/libblock.o drivers/dma/libdma.o drivers/fpga/libfpga.o =
drivers/gpio/libgpio.o drivers/hwmon/libhwmon.o drivers/i2c/libi2c.o =
drivers/input/libinput.o drivers/misc/libmisc.o drivers/mmc/libmmc.o =
drivers/mtd/libmtd.o drivers/mtd/nand/libnand.o =
drivers/mtd/onenand/libonenand.o drivers/mtd/spi/libspi_flash.o =
drivers/mtd/ubi/libubi.o drivers/net/libnet.o drivers/net/phy/libphy.o =
drivers/pci/libpci.o drivers/pcmcia/libpcmcia.o drivers/power/libpower.o =
drivers/rtc/librtc.o drivers/serial/libserial.o drivers/spi/libspi.o =
drivers/twserial/libtws.o drivers/usb/eth/libusb_eth.o =
drivers/usb/gadget/libusb_gadget.o drivers/usb/host/libusb_host.o =
drivers/usb/musb/libusb_musb.o drivers/usb/phy/libusb_phy.o =
drivers/usb/ulpi/libusb_ulpi.o drivers/video/libvideo.o =
drivers/watchdog/libwatchdog.o fs/cramfs/libcramfs.o fs/ext2/libext2fs.o =
fs/fat/libfat.o fs/fdos/libfdos.o fs/jffs2/libjffs2.o =
fs/reiserfs/libreiserfs.o fs/ubifs/libubifs.o fs/yaffs2/libyaffs2.o =
lib/libfdt/libfdt.o lib/libgeneric.o lib/lzma/liblzma.o lib/lzo/liblzo.o =
lib/zlib/libz.o net/libnet.o post/libpost.o board/overo/libovero.o =
--end-group =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/arch/arm/lib/eabi_compat.o  -L =
/tool/yocto/poky/build/tmp/sysroots/overo-fire-chestnut43/usr/lib/arm-poky=
-linux-gnueabi/4.7.1 -lgcc -Map u-boot.map -o u-boot
| /bin/sh: 1: Syntax error: Bad fd number
| r -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/fs/fat/libfat.o  =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/fs/fat/fat.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: r: Command not found
| make[2]: =
[/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/fs/fat/libfat.o] Error 127 (ignored)
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/fat'
| arm-poky-linux-gnueabi-objdump: 'board/overo/libovero.o': No such file
| arm-poky-linux-gnueabi-objdump: 'arch/arm/cpu/armv7/libarmv7.o': No =
such file
| arm-poky-linux-gnueabi-objdump: =
'arch/arm/cpu/armv7/omap-common/libomap-common.o': No such file
| arm-poky-linux-gnueabi-objdump: 'arch/arm/cpu/armv7/omap3/libomap3.o': =
No such file
| arm-poky-linux-gnueabi-objdump: 'arch/arm/lib/libarm.o': No such file
| arm-poky-linux-gnueabi-objdump: 'common/libcommon.o': No such file
| arm-poky-linux-gnueabi-objdump: 'disk/libdisk.o': No such file
| arm-poky-linux-gnueabi-objdump: 'drivers/i2c/libi2c.o': No such file
| arm-poky-linux-gnueabi-objdump: 'drivers/misc/libmisc.o': No such file
| arm-poky-linux-gnueabi-objdump: 'drivers/mmc/libmmc.o': No such file
| arm-poky-linux-gnueabi-objdump: 'drivers/mtd/nand/libnand.o': No such =
file
| arm-poky-linux-gnueabi-objdump: 'drivers/net/libnet.o': No such file
| arm-poky-linux-gnueabi-objdump: 'drivers/pcmcia/libpcmcia.o': No such =
file
| arm-poky-linux-gnueabi-objdump: 'drivers/power/libpower.o': No such =
file
| arm-poky-linux-gnueabi-objdump: 'drivers/rtc/librtc.o': No such file
| arm-poky-linux-gnueabi-objdump: 'drivers/serial/libserial.o': No such =
file
| arm-poky-linux-gnueabi-objdump: 'fs/ext2/libext2fs.o': No such file
| arm-poky-linux-gnueabi-objdump: 'fs/fat/libfat.o': No such file
| arm-poky-linux-gnueabi-objdump: 'fs/jffs2/libjffs2.o': No such file
| arm-poky-linux-gnueabi-objdump: 'lib/libfdt/libfdt.o': No such file
| arm-poky-linux-gnueabi-objdump: 'lib/libgeneric.o': No such file
| arm-poky-linux-gnueabi-objdump: 'lib/zlib/libz.o': No such file
| arm-poky-linux-gnueabi-objdump: 'net/libnet.o': No such file
| arm-poky-linux-gnueabi-ld.bfd: cannot find =
arch/arm/cpu/armv7/libarmv7.o: No such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find =
arch/arm/cpu/armv7/omap-common/libomap-common.o: No such file or =
directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find =
arch/arm/cpu/armv7/omap3/libomap3.o: No such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find arch/arm/lib/libarm.o: No =
such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find common/libcommon.o: No such =
file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find disk/libdisk.o: No such =
file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/i2c/libi2c.o: No =
such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/misc/libmisc.o: No =
such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/mmc/libmmc.o: No =
such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/mtd/nand/libnand.o: =
No such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/net/libnet.o: No =
such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/pcmcia/libpcmcia.o: =
No such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/power/libpower.o: =
No such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/rtc/librtc.o: No =
such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/serial/libserial.o: =
No such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find fs/ext2/libext2fs.o: No =
such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find fs/fat/libfat.o: No such =
file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find fs/jffs2/libjffs2.o: No =
such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find lib/libfdt/libfdt.o: No =
such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find lib/libgeneric.o: No such =
file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find lib/zlib/libz.o: No such =
file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find net/libnet.o: No such file =
or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find board/overo/libovero.o: No =
such file or directory
| make: *** [u-boot] Error 1
| make: *** Waiting for unfinished jobs....
| /bin/sh: 1: Syntax error: Bad fd number
| r -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/libgeneric.o  =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/ctype.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/div64.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/string.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/time.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/vsprintf.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: r: Command not found
| make[2]: =
[/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/lib/libgeneric.o] Error 127 (ignored)
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib'
| /bin/sh: 1: Syntax error: Bad fd number
| r -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/libnand.o  =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/nand_spl_simple.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/nand_ecc.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/nand_base.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/omap_gpmc.o
| /bin/sh: 1: Syntax error: Bad fd number
| make[2]: r: Command not found
| make[2]: =
[/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/mtd/nand/libnand.o] Error 127 =
(ignored)
| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/nand'
| /bin/sh: 1: Syntax error: Bad fd number
| UNDEF_SYM=3D`arm-poky-linux-gnueabi-objdump -x =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/libarmv7.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/libomap-common.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/libomap3.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/lib/libarm.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/board/overo/libovero.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/libcommon.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/disk/libdisk.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/i2c/libi2c.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mmc/libmmc.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/libnand.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/power/libpower.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/serial/libserial.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/fs/fat/libfat.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/libgeneric.o | sed  -n -e =
's/.*\(__u_boot_cmd_.*\)/-u\1/p'|sort|uniq`; cd =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/ &&   -T =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/u-boot-spl.lds --gc-sections -Bstatic -Ttext =
0x40200800 $UNDEF_SYM arch/arm/cpu/armv7/start.o --start-group =
arch/arm/cpu/armv7/libarmv7.o =
arch/arm/cpu/armv7/omap-common/libomap-common.o =
arch/arm/cpu/armv7/omap3/libomap3.o arch/arm/lib/libarm.o =
board/overo/libovero.o common/libcommon.o disk/libdisk.o =
drivers/i2ERROR: Function failed: do_compile (see =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/temp/log.do_compile.13502 for further information)
| c/libi2c.o drivers/mmc/libmmc.o drivers/mtd/nand/libnand.o =
drivers/power/libpower.o drivers/serial/libserial.o fs/fat/libfat.o =
lib/libgeneric.o --end-group =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/lib/eabi_compat.o -L =
/tool/yocto/poky/build/tmp/sysroots/overo-fire-chestnut43/usr/lib/arm-poky=
-linux-gnueabi/4.7.1 -lgcc -Map u-boot-spl.map -o u-boot-spl
| /bin/sh: 1: Syntax error: Bad fd number
| arm-poky-linux-gnueabi-objdump: =
'/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/libarmv7.o': No such file
| arm-poky-linux-gnueabi-objdump: =
'/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/libomap-common.o'=
: No such file
| arm-poky-linux-gnueabi-objdump: =
'/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/libomap3.o': No such =
file
| arm-poky-linux-gnueabi-objdump: =
'/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/board/overo/libovero.o': No such file
| arm-poky-linux-gnueabi-objdump: =
'/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/common/libcommon.o': No such file
| arm-poky-linux-gnueabi-objdump: =
'/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/disk/libdisk.o': No such file
| arm-poky-linux-gnueabi-objdump: =
'/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/i2c/libi2c.o': No such file
| arm-poky-linux-gnueabi-objdump: =
'/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/mmc/libmmc.o': No such file
| arm-poky-linux-gnueabi-objdump: =
'/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/mtd/nand/libnand.o': No such file
| arm-poky-linux-gnueabi-objdump: =
'/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/power/libpower.o': No such file
| arm-poky-linux-gnueabi-objdump: =
'/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/serial/libserial.o': No such file
| arm-poky-linux-gnueabi-objdump: =
'/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/fs/fat/libfat.o': No such file
| arm-poky-linux-gnueabi-objdump: =
'/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/lib/libgeneric.o': No such file
| /bin/sh: 1: -T: not found
| make[1]: *** =
[/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/u-boot-spl] Error 127
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl'
| make: *** [spl/u-boot-spl.bin] Error 2
| ERROR: oe_runmake failed
NOTE: package u-boot-2011.12-r2: task do_compile: Failed
ERROR: Task 7 =
(/tool/yocto/meta-gumstix/recipes-bsp/u-boot/u-boot_2011.12.bb, =
do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 858 tasks of which 851 didn't need to be =
rerun and 1 failed.

Summary: 1 task failed:
  /tool/yocto/meta-gumstix/recipes-bsp/u-boot/u-boot_2011.12.bb, =
do_compile
Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit =
code.
elvis@eos:/tool/yocto/poky/build$=20


--Apple-Mail=_F1C13FDB-DBD1-4407-BDE3-9CEAD5F37931
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div>&nbsp; &nbsp; &nbsp; I've created a new machine configuration =
called overo-fire-chestnut43. I've included the overo.inc and =
overo-fire-chestnut43.conf files below. When I try to build u-boot, it =
fails with the following errors:</div><div><br></div><div><span =
class=3D"Apple-style-span" style=3D"font-family: Monaco; font-size: =
small; ">ERROR: Function failed: do_compile (see =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/temp/log.do_compile.13502 for further =
information)</span></div><div><span class=3D"Apple-style-span" =
style=3D"font-family: Monaco; font-size: small; =
"><br></span></div><div><span class=3D"Apple-style-span" =
style=3D"font-family: Monaco; font-size: small; =
">&lt;snip&gt;</span></div><div><span class=3D"Apple-style-span" =
style=3D"font-family: Monaco; font-size: small; =
"><br></span></div><div><span class=3D"Apple-style-span" =
style=3D"font-family: Monaco; font-size: small; "><div =
style=3D"font-family: Helvetica; font-size: medium; "><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/tools'</font></div><div style=3D"font-family: =
Helvetica; font-size: medium; "><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div style=3D"font-family: Helvetica; =
font-size: medium; "><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd number</font></div><div =
style=3D"font-family: Helvetica; font-size: medium; "><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div style=3D"font-family: Helvetica; =
font-size: medium; "><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&lt;snip&gt;</font></div><div style=3D"font-family: =
Helvetica; font-size: medium; "><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div></span><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/fat'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-objdump: 'board/overo/libovero.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'arch/arm/cpu/armv7/libarmv7.o': No such file</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-objdump: =
'arch/arm/cpu/armv7/omap-common/libomap-common.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'arch/arm/cpu/armv7/omap3/libomap3.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: 'arch/arm/lib/libarm.o': No =
such file</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'common/libcommon.o': No such file</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-objdump: 'disk/libdisk.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: 'drivers/i2c/libi2c.o': No =
such file</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'drivers/misc/libmisc.o': No such file</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-objdump: 'drivers/mmc/libmmc.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'drivers/mtd/nand/libnand.o': No such file</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-objdump: 'drivers/net/libnet.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'drivers/pcmcia/libpcmcia.o': No such file</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-objdump: 'drivers/power/libpower.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: 'drivers/rtc/librtc.o': No =
such file</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'drivers/serial/libserial.o': No such file</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-objdump: 'fs/ext2/libext2fs.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: 'fs/fat/libfat.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: 'fs/jffs2/libjffs2.o': No =
such file</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'lib/libfdt/libfdt.o': No such file</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-objdump: 'lib/libgeneric.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: 'lib/zlib/libz.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: 'net/libnet.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
arch/arm/cpu/armv7/libarmv7.o: No such file or =
directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
arch/arm/cpu/armv7/omap-common/libomap-common.o: No such file or =
directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
arch/arm/cpu/armv7/omap3/libomap3.o: No such file or =
directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
arch/arm/lib/libarm.o: No such file or directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-ld.bfd: cannot find common/libcommon.o: No such =
file or directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
disk/libdisk.o: No such file or directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/i2c/libi2c.o: No such =
file or directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
drivers/misc/libmisc.o: No such file or directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/mmc/libmmc.o: No such =
file or directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
drivers/mtd/nand/libnand.o: No such file or =
directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
drivers/net/libnet.o: No such file or directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/pcmcia/libpcmcia.o: =
No such file or directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/power/libpower.o: No =
such file or directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
drivers/rtc/librtc.o: No such file or directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/serial/libserial.o: =
No such file or directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-ld.bfd: cannot find fs/ext2/libext2fs.o: No such =
file or directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
fs/fat/libfat.o: No such file or directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-ld.bfd: cannot find fs/jffs2/libjffs2.o: No such =
file or directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
lib/libfdt/libfdt.o: No such file or directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-ld.bfd: cannot find lib/libgeneric.o: No such =
file or directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
lib/zlib/libz.o: No such file or directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-ld.bfd: cannot find net/libnet.o: No such file or =
directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
board/overo/libovero.o: No such file or directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make: *** =
[u-boot] Error 1</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&lt;snip&gt;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"><div =
style=3D"font-family: Helvetica; font-size: medium; "><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: *** =
[/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/u-boot-spl] Error 127</font></div><div =
style=3D"font-family: Helvetica; font-size: medium; "><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl'</font></div><div style=3D"font-family: =
Helvetica; font-size: medium; "><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make: *** [spl/u-boot-spl.bin] Error =
2</font></div><div style=3D"font-family: Helvetica; font-size: medium; =
"><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| ERROR: =
oe_runmake failed</font></div><div style=3D"font-family: Helvetica; =
font-size: medium; "><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">NOTE: package u-boot-2011.12-r2: task do_compile: =
Failed</font></div><div style=3D"font-family: Helvetica; font-size: =
medium; "><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">ERROR: Task 7 =
(/tool/yocto/meta-gumstix/recipes-bsp/u-boot/u-boot_2011.12.bb, =
do_compile) failed with exit code '1'</font></div><div =
style=3D"font-family: Helvetica; font-size: medium; "><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: Tasks =
Summary: Attempted 858 tasks of which 851 didn't need to be rerun and 1 =
failed.</font></div><div style=3D"font-family: Helvetica; font-size: =
medium; "><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div style=3D"font-family: Helvetica; =
font-size: medium; "><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">Summary: 1 task failed:</font></div><div style=3D"font-family: =
Helvetica; font-size: medium; "><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; =
/tool/yocto/meta-gumstix/recipes-bsp/u-boot/u-boot_2011.12.bb, =
do_compile</font></div></font></div><span class=3D"Apple-style-span" =
style=3D"font-family: Monaco; font-size: small; "><div =
style=3D"font-family: Helvetica; font-size: medium; "><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div></span></div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis =
Dowson</div><div><br></div><div><br></div><div>file: =
overo.inc</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">require =
conf/machine/include/omap3.inc</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"># Increase this everytime you change =
something in the kernel</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">MACHINE_KERNEL_PR =3D =
"r1"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">KERNEL_IMAGETYPE =3D =
"uImage"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">UBOOT_ENTRYPOINT =3D =
"0x80008000"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">UBOOT_LOADADDRESS =3D =
"0x80008000"</font></div></div><div><br></div><div>file: =
overo-fire-chestnut43.conf</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">#@TYPE: =
Machine</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">#@NAME: Overo Fire Chestnut43 machine</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">#@DESCRIPTION: =
Machine configuration for the Gumstix Overo Fire TI OMAP3530 COM module =
with the Chestnut43 LCD expansion board.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">require =
conf/machine/include/overo.inc</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"># u-boot</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">EXTRA_IMAGEDEPENDS =
+=3D "u-boot"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">PREFERRED_PROVIDER_virtual/bootloader =3D =
"u-boot"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">UBOOT_ARCH =3D "arm"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">UBOOT_MACHINE =3D =
"omap3_overo_config"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">PREFERRED_VERSION_pn-u-boot =3D =
"2011.12"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"># =
x-load</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">EXTRA_IMAGEDEPENDS +=3D "x-load"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">XLOAD_MACHINE =3D =
"overo_config"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"># kernel =
provider</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">PREFERRED_PROVIDER_virtual/kernel =3D =
"linux-omap"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"># xserver =
provider</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">PREFERRED_PROVIDER_virtual/xserver =3D =
"xserver-xorg"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">XSERVER =3D "xserver-xorg =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;xf86-input-evdev =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;xf86-input-mouse =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;xf86-video-omapfb =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;xf86-input-keyboard =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;xf86-input-tslib"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">GUI_MACHINE_CLASS =
=3D "smallscreen"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">IMAGE_FSTYPES +=3D =
"ubi tar.bz2"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"># do ubiattach =
/dev/ubi_ctrl -m 4</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"># =46rom dmesg:</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"># UBI: smallest =
flash I/O unit: &nbsp; &nbsp;2048</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"># UBI: logical =
eraseblock size: &nbsp; &nbsp;129024 bytes</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"># from ubiattach =
stdout:</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"># UBI device number 0, total 1996 LEBs</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">MKUBIFS_ARGS =3D =
"-m 2048 -e 129024 -c 1996"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"># do ubiattach /dev/ubi_ctrl -m =
4</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"># from dmesg:</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2"># UBI: smallest flash I/O unit: &nbsp; =
&nbsp;2048</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"># UBI: physical eraseblock size: &nbsp; =
131072 bytes (128 KiB)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"># UBI: sub-page size: &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;512</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">UBINIZE_ARGS =3D =
"-m 2048 -p 128KiB -s 512"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">UBI_VOLNAME =3D =
"rootfs"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">SERIAL_CONSOLE =3D "115200 =
ttyO2"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">MACHINE_EXTRA_RRECOMMENDS =3D "kernel-modules =
marvell-sdio-fw libgles-omap3"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">MACHINE_FEATURES =3D=
 "kernel26 alsa apm usbgadget usbhost vfat ext2 screen touchscreen =
serial ethernet"</font></div></div><div><br></div><div>Log of error =
messages:</div><div><br></div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">elvis@eos:~$ cd =
/tool/yocto/poky</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">elvis@eos:/tool/yocto/poky$ source =
oe-init-build-env build</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">### Shell =
environment set up for builds. ###</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">You can now run 'bitbake =
&lt;target&gt;'</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Common targets =
are:</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; core-image-minimal</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
core-image-sato</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
meta-toolchain</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
meta-toolchain-sdk</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
adt-installer</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
meta-ide-support</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">You can also run =
generated qemu images with a command like 'runqemu =
qemux86'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">elvis@eos:/tool/yocto/poky/build$ bitbake =
u-boot</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">WARNING: Host distribution "Ubuntu 12.04 LTS" has not been =
validated with this version of the build system; you may possibly =
experience unexpected failures. It is recommended that you use a tested =
distribution.</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Parsing recipes: 100% =
|#########################################################################=
#####################################| Time: =
00:00:17</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">Parsing of 1247 .bb files complete (0 cached, 1247 parsed). =
1583 targets, 56 skipped, 0 masked, 0 errors.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Build Configuration:</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">BB_VERSION &nbsp; =
&nbsp; &nbsp; &nbsp;=3D "1.15.2"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">TARGET_ARCH &nbsp; =
&nbsp; &nbsp; =3D "arm"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">TARGET_OS &nbsp; &nbsp; &nbsp; &nbsp; =3D =
"linux-gnueabi"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">MACHINE &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D =
"overo-fire-chestnut43"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">DISTRO &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;=3D "poky"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">DISTRO_VERSION &nbsp; &nbsp;=3D =
"1.2+snapshot-20120504"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">TUNE_FEATURES &nbsp; &nbsp; =3D "armv7a vfp =
neon cortexa8"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">TARGET_FPU &nbsp; &nbsp; &nbsp; &nbsp;=3D =
"vfp-neon"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">meta &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">meta-yocto &nbsp; &nbsp; &nbsp; &nbsp;=3D =
"master:2e9bb9d103def3ce7499e1a09e47b9297f85c488"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">meta-oe &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; =3D =
"master:6c1ac85792e6e558d78347499afa041cfd92d7ab"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">meta-gumstix =
&nbsp; &nbsp; &nbsp;=3D =
"overo-2.0.0:121ecf46ce8483535f5120cd8685a9d9c853fd09"</font></div><div><f=
ont class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">meta-ti &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; =3D =
"master:07913cca6cfd7f35a9bb5d6b2cca41c6b5f07ec3"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">meta-xilinx &nbsp; =
&nbsp; &nbsp; =3D =
"master:6d5684d44c1eac67e551a98b0751e996470d203c"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: Resolving any missing task queue =
dependencies</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: Preparing =
runqueue</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">NOTE: Executing SetScene Tasks</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: Running =
setscene task 298 of 309 =
(/tool/yocto/meta-gumstix/recipes-bsp/u-boot/u-boot_2011.12.bb, =
do_populate_lic_setscene)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: package =
u-boot-2011.12-r2: task do_populate_lic_setscene: =
Started</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">NOTE: package u-boot-2011.12-r2: task =
do_populate_lic_setscene: Succeeded</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: Executing =
RunQueue Tasks</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: Running task 539 of 865 (ID: 4, =
/tool/yocto/meta-gumstix/recipes-bsp/u-boot/u-boot_2011.12.bb, =
do_fetch)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: Running noexec task 747 of 865 (ID: =
607, /tool/yocto/poky/meta/recipes-devtools/perl/perl_5.14.2.bb, =
do_package_write)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: Running noexec task 767 of 865 (ID: =
498, /tool/yocto/poky/meta/recipes-core/util-linux/util-linux_2.21.1.bb, =
do_package_write)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: package u-boot-2011.12-r2: task =
do_fetch: Started</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: package u-boot-2011.12-r2: task =
do_fetch: Succeeded</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: Running task 854 of 865 (ID: 0, =
/tool/yocto/meta-gumstix/recipes-bsp/u-boot/u-boot_2011.12.bb, =
do_unpack)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: package u-boot-2011.12-r2: task =
do_unpack: Started</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: package u-boot-2011.12-r2: task =
do_unpack: Succeeded</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: Running task 855 of 865 (ID: 1, =
/tool/yocto/meta-gumstix/recipes-bsp/u-boot/u-boot_2011.12.bb, =
do_patch)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: package u-boot-2011.12-r2: task =
do_patch: Started</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: package u-boot-2011.12-r2: task =
do_patch: Succeeded</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: Running task 856 of 865 (ID: 6, =
/tool/yocto/meta-gumstix/recipes-bsp/u-boot/u-boot_2011.12.bb, =
do_configure)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: package u-boot-2011.12-r2: task =
do_configure: Started</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: package u-boot-2011.12-r2: task =
do_configure: Succeeded</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: Running task 858 of 865 (ID: 7, =
/tool/yocto/meta-gumstix/recipes-bsp/u-boot/u-boot_2011.12.bb, =
do_compile)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: package u-boot-2011.12-r2: task =
do_compile: Started</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">ERROR: Function failed: do_compile (see =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/temp/log.do_compile.13502 for further =
information)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">ERROR: Logfile of failure stored in: =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/temp/log.do_compile.13502</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Log data =
follows:</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">| NOTE: make -j 6 CROSS_COMPILE=3Darm-poky-linux-gnueabi- =
all</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| Generating include/autoconf.mk</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| Generating =
include/autoconf.mk.dep</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-gcc -DDO_DEPS_ONLY =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| <span class=3D"Apple-tab-span" style=3D"white-space:pre">		=
</span>-g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 -msoft-float =
&nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| <span class=3D"Apple-tab-span" style=3D"white-space:pre">		=
</span>-o lib/asm-offsets.s lib/asm-offsets.c -c =
-S</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| if [ -f arch/arm/cpu/armv7/omap3/asm-offsets.c ];then =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| <span class=3D"Apple-tab-span" style=3D"white-space:pre">		=
</span>arm-poky-linux-gnueabi-gcc -DDO_DEPS_ONLY =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| <span class=3D"Apple-tab-span" style=3D"white-space:pre">		=
</span>-g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 -msoft-float =
&nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| <span class=3D"Apple-tab-span" style=3D"white-space:pre">		=
	</span>-o arch/arm/cpu/armv7/omap3/asm-offsets.s =
arch/arm/cpu/armv7/omap3/asm-offsets.c -c -S; \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>else =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| <span class=3D"Apple-tab-span" style=3D"white-space:pre">		=
</span>touch arch/arm/cpu/armv7/omap3/asm-offsets.s; =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>fi</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| Generating =
include/generated/asm-offsets.h</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
tools/scripts/make-asm-offsets arch/arm/cpu/armv7/omap3/asm-offsets.s =
include/generated/asm-offsets.h</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| Generating =
include/generated/generic-asm-offsets.h</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
tools/scripts/make-asm-offsets lib/asm-offsets.s =
include/generated/generic-asm-offsets.h</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| for dir in tools =
examples/standalone examples/api arch/arm/cpu/armv7 =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/arch/arm/cpu/armv7/ ; do \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">			=
</span>make -C $dir _depend ; done</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/tools'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/tools'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/tools'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Nothing =
to be done for `_depend'.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/tools'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/examples/standalone'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ hello_world.o =
hello_world.c &gt;.depend.hello_world</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ smc911x_eeprom.o =
smc911x_eeprom.c &gt;.depend.smc911x_eeprom</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ stubs.o stubs.c =
&gt;.depend.stubs</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| cat /dev/null .depend.hello_world .depend.smc911x_eeprom =
.depend.stubs &gt;.depend</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/examples/standalone'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/examples/standalone'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Nothing =
to be done for `_depend'.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/examples/standalone'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/examples/api'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/examples/api'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/examples/api'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Nothing =
to be done for `_depend'.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/examples/api'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ start.o start.S =
&gt;.depend.start</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ cache_v7.o cache_v7.c =
&gt;.depend.cache_v7</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ cpu.o cpu.c =
&gt;.depend.cpu</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ syslib.o syslib.c =
&gt;.depend.syslib</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| cat /dev/null .depend.start .depend.cache_v7 .depend.cpu =
.depend.syslib &gt;.depend</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Nothing =
to be done for `_depend'.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Nothing =
to be done for `_depend'.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C tools =
all</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make -C arch/arm/cpu/armv7 start.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/arch/arm/cpu/armv7/ =
u-boot.lds</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp; -D__ASSEMBLY__ -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -o start.o start.S =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Nothing =
to be done for `u-boot.lds'.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/tools'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| gcc -g -Wall =
-Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -pedantic -c -o crc32.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/crc32.c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -E -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -include =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include/u-boot/u-boot.lds.h &nbsp;-ansi =
-D__ASSEMBLY__ -P - =
&lt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/arch/arm/cpu/armv7/u-boot.lds =
&gt;u-boot.lds</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| gcc -g -Wall -Wstrict-prototypes -O2 =
-fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -c -o env_embedded.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/common/env_embedded.c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| gcc -Wall =
-Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -pedantic &nbsp; -o envcrc.o =
envcrc.c -c</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| gcc -g -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer =
-idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -pedantic -c -o sha1.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/sha1.c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| gcc -Wall =
-Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -pedantic &nbsp; -o gen_eth_addr.o =
gen_eth_addr.c -c</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer =
-idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -pedantic &nbsp; -o img2srec.o =
img2srec.c -c</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer =
-idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES &nbsp; -o mkenvimage.o mkenvimage.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer =
-idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES &nbsp; -o aisimage.o aisimage.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer =
-idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES &nbsp; -o default_image.o =
default_image.c -c</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer =
-idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES &nbsp; -o fit_image.o fit_image.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| gcc -g -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer =
-idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -c -o image.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/common/image.c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| gcc -Wall =
-Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES &nbsp; -o imximage.o imximage.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer =
-idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES &nbsp; -o kwbimage.o kwbimage.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| gcc -g -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer =
-idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -pedantic -c -o md5.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/md5.c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| gcc -Wall =
-Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES &nbsp; -o mkimage.o mkimage.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer =
-idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES &nbsp; -o os_support.o os_support.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer =
-idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES &nbsp; -o omapimage.o omapimage.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer =
-idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES &nbsp; -o ublimage.o ublimage.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| gcc -g -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer =
-idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -c -o fdt.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt/fdt.c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| gcc -g -Wall =
-Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -c -o fdt_ro.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt/fdt_ro.c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| gcc -g -Wall =
-Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -c -o fdt_rw.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt/fdt_rw.c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| gcc -g -Wall =
-Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -c -o fdt_strerror.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt/fdt_strerror.c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| gcc -g -Wall =
-Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -c -o fdt_wip.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt/fdt_wip.c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| gcc -Wall =
-Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -pedantic &nbsp;-o envcrc crc32.o =
env_embedded.o envcrc.o sha1.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| gcc -Wall =
-Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -pedantic &nbsp;-o gen_eth_addr =
gen_eth_addr.o</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer =
-idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -pedantic &nbsp;-o img2srec =
img2srec.o</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| gcc -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer =
-idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -pedantic &nbsp;-o mkenvimage =
crc32.o mkenvimage.o</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| strip gen_eth_addr</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| strip =
img2srec</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">| strip mkenvimage</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| gcc -Wall =
-Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include2 -idirafter =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/libfdt -I =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/tools -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -pedantic &nbsp;-o mkimage =
aisimage.o crc32.o default_image.o fit_image.o image.o imximage.o =
kwbimage.o md5.o mkimage.o os_support.o omapimage.o sha1.o ublimage.o =
fdt.o fdt_ro.o fdt_rw.o fdt_strerror.o fdt_wip.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| strip =
mkimage</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/tools'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
api/</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make -C arch/arm/cpu/armv7/</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
arch/arm/cpu/armv7/omap-common/</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
arch/arm/cpu/armv7/omap3/</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
arch/arm/lib/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/api'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make -C common/</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/api'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap-common'</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ reset.o reset.S =
&gt;.depend.reset</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap3'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ lowlevel_init.o =
lowlevel_init.S &gt;.depend.lowlevel_init</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ timer.o timer.c =
&gt;.depend.timer</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/lib'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ _ashldi3.o _ashldi3.S =
&gt;.depend._ashldi3</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o cache_v7.o cache_v7.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/common'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ cmd_bdinfo.o =
cmd_bdinfo.c &gt;.depend.cmd_bdinfo</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ board.o board.c =
&gt;.depend.board</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/api'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| rm -f libapi.o; =
arm-poky-linux-gnueabi-ar rcs libapi.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ _ashrdi3.o _ashrdi3.S =
&gt;.depend._ashrdi3</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ _divsi3.o _divsi3.S =
&gt;.depend._divsi3</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/api'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ cmd_boot.o =
cmd_boot.c &gt;.depend.cmd_boot</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ _lshrdi3.o _lshrdi3.S =
&gt;.depend._lshrdi3</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ utils.o utils.c =
&gt;.depend.utils</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ _modsi3.o _modsi3.S =
&gt;.depend._modsi3</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ clock.o clock.c =
&gt;.depend.clock</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make -C disk/</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ _udivsi3.o _udivsi3.S =
&gt;.depend._udivsi3</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ cmd_bootm.o =
cmd_bootm.c &gt;.depend.cmd_bootm</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ _umodsi3.o _umodsi3.S =
&gt;.depend._umodsi3</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ gpio.o gpio.c =
&gt;.depend.gpio</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/disk'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ part.o part.c =
&gt;.depend.part</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os =
&nbsp; -fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ div0.o div0.c =
&gt;.depend.div0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ board.o board.c =
&gt;.depend.board</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os =
&nbsp; -fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ mem.o mem.c =
&gt;.depend.mem</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| cat /dev/null .depend.reset .depend.timer .depend.utils =
.depend.gpio &gt;.depend</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os =
&nbsp; -fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ cmd_cache.o =
cmd_cache.c &gt;.depend.cmd_cache</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap-common'</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ part_dos.o part_dos.c =
&gt;.depend.part_dos</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ sys_info.o sys_info.c =
&gt;.depend.sys_info</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ bootm.o bootm.c =
&gt;.depend.bootm</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ cmd_console.o =
cmd_console.c &gt;.depend.cmd_console</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap-common'</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp; -D__ASSEMBLY__ -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -o reset.o reset.S =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| cat /dev/null .depend.part .depend.part_dos =
&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o timer.o timer.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/disk'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
.depend.lowlevel_init .depend.board .depend.clock .depend.mem =
.depend.sys_info &gt;.depend</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap3'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ cache.o cache.c =
&gt;.depend.cache</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ cmd_echo.o =
cmd_echo.c &gt;.depend.cmd_echo</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/disk'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o part.o part.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o cpu.o cpu.c -c</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap3'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o board.o board.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ cache-cp15.o cache-cp15.c =
&gt;.depend.cache-cp15</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ cmd_exit.o =
cmd_exit.c &gt;.depend.cmd_exit</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ interrupts.o interrupts.c =
&gt;.depend.interrupts</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ cmd_ext2.o =
cmd_ext2.c &gt;.depend.cmd_ext2</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ reset.o reset.c =
&gt;.depend.reset</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g =
&nbsp;-Os &nbsp; -fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o syslib.o syslib.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ cmd_fat.o cmd_fat.c =
&gt;.depend.cmd_fat</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g =
&nbsp;-Os &nbsp; -fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o utils.o utils.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
.depend._ashldi3 .depend._ashrdi3 .depend._divsi3 .depend._lshrdi3 =
.depend._modsi3 .depend._udivsi3 .depend._umodsi3 .depend.div0 =
.depend.board .depend.bootm .depend.cache .depend.cache-cp15 =
.depend.interrupts .depend.reset &gt;.depend</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ cmd_fdt.o cmd_fdt.c =
&gt;.depend.cmd_fdt</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/lib'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/lib'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o board.o board.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ cmd_help.o =
cmd_help.c &gt;.depend.cmd_help</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| Syntax error: =
Bad fd number</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o part_dos.o part_dos.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o gpio.o gpio.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ cmd_i2c.o cmd_i2c.c =
&gt;.depend.cmd_i2c</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o clock.o clock.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
/bin/sh: 1: Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| Syntax error: =
Bad fd number</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| r -o libarmv7.o &nbsp;cache_v7.o cpu.o =
syslib.o</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: r: Command not found</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
[libarmv7.o] Error 127 (ignored)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o mem.o mem.c -c</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ cmd_itest.o =
cmd_itest.c &gt;.depend.cmd_itest</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ cmd_jffs2.o =
cmd_jffs2.c &gt;.depend.cmd_jffs2</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ cmd_load.o =
cmd_load.c &gt;.depend.cmd_load</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
drivers/bios_emulator/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g =
&nbsp;-Os &nbsp; -fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o bootm.o bootm.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ cmd_mem.o cmd_mem.c =
&gt;.depend.cmd_mem</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| r -o libomap-common.o &nbsp;reset.o timer.o utils.o =
gpio.o</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: r: Command not found</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/bios_emulator'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: [libomap-common.o] Error 127 =
(ignored)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap-common'</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o sys_info.o sys_info.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ cmd_misc.o =
cmd_misc.c &gt;.depend.cmd_misc</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| r -o libdisk.o =
&nbsp;part.o part_dos.o</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/bios_emulator'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: r: =
Command not found</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: [libdisk.o] Error 127 =
(ignored)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/disk'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o sdrc.o sdrc.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ cmd_mmc.o cmd_mmc.c =
&gt;.depend.cmd_mmc</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/bios_emulator'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| rm -f =
libatibiosemu.o; arm-poky-linux-gnueabi-ar rcs =
libatibiosemu.o</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/bios_emulator'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o cache.o cache.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ cmd_nand.o =
cmd_nand.c &gt;.depend.cmd_nand</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ cmd_net.o cmd_net.c =
&gt;.depend.cmd_net</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o cache-cp15.o cache-cp15.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ cmd_nvedit.o =
cmd_nvedit.c &gt;.depend.cmd_nvedit</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o interrupts.o interrupts.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp; -D__ASSEMBLY__ -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -o lowlevel_init.o =
lowlevel_init.S -c</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ cmd_pcmcia.o =
cmd_pcmcia.c &gt;.depend.cmd_pcmcia</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o reset.o reset.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ cmd_source.o =
cmd_source.c &gt;.depend.cmd_source</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| r -o libomap3.o =
&nbsp;board.o clock.o mem.o sys_info.o sdrc.o =
lowlevel_init.o</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: r: Command not found</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
[libomap3.o] Error 127 (ignored)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap3'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
drivers/block/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g =
&nbsp;-Os &nbsp; -fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o eabi_compat.o eabi_compat.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/block'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ cmd_test.o =
cmd_test.c &gt;.depend.cmd_test</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/block'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ cmd_version.o =
cmd_version.c &gt;.depend.cmd_version</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/block'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| rm -f =
libblock.o; arm-poky-linux-gnueabi-ar rcs =
libblock.o</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ cmd_ximg.o =
cmd_ximg.c &gt;.depend.cmd_ximg</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/block'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
drivers/dma/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ command.o command.c =
&gt;.depend.command</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make -C drivers/fpga/</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ console.o console.c =
&gt;.depend.console</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: /bin/sh: 1: Syntax error: Bad =
fd number</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/dma'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ dlmalloc.o =
dlmalloc.c &gt;.depend.dlmalloc</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/fpga'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/dma'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| r -o libarm.o =
&nbsp;board.o bootm.o cache.o cache-cp15.o interrupts.o =
reset.o</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ env_common.o =
env_common.c &gt;.depend.env_common</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: r: =
Command not found</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: [libarm.o] Error 127 =
(ignored)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/lib'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
drivers/gpio/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/fpga'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ env_nand.o =
env_nand.c &gt;.depend.env_nand</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/dma'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| rm -f libdma.o; =
arm-poky-linux-gnueabi-ar rcs libdma.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ exports.o exports.c =
&gt;.depend.exports</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/fpga'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| rm -f libfpga.o; =
arm-poky-linux-gnueabi-ar rcs libfpga.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
drivers/hwmon/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/gpio'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/fpga'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ fdt_support.o =
fdt_support.c &gt;.depend.fdt_support</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/dma'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
drivers/i2c/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ flash.o flash.c =
&gt;.depend.flash</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/gpio'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/hwmon'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ hush.o hush.c =
&gt;.depend.hush</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/i2c'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ omap24xx_i2c.o =
omap24xx_i2c.c &gt;.depend.omap24xx_i2c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/gpio'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| rm -f libgpio.o; =
arm-poky-linux-gnueabi-ar rcs libgpio.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ image.o image.c =
&gt;.depend.image</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/hwmon'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
drivers/input/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/gpio'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ main.o main.c =
&gt;.depend.main</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/input'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/hwmon'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| rm -f =
libhwmon.o; arm-poky-linux-gnueabi-ar rcs =
libhwmon.o</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| cat /dev/null .depend.omap24xx_i2c =
&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os =
&nbsp; -fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ memsize.o memsize.c =
&gt;.depend.memsize</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/hwmon'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
drivers/misc/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/input'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ s_record.o =
s_record.c &gt;.depend.s_record</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/i2c'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ stdio.o stdio.c =
&gt;.depend.stdio</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ xyzModem.o =
xyzModem.c &gt;.depend.xyzModem</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/input'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| rm -f =
libinput.o; arm-poky-linux-gnueabi-ar rcs =
libinput.o</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/input'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
drivers/mmc/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/misc'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ twl4030_led.o =
twl4030_led.c &gt;.depend.twl4030_led</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/i2c'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o omap24xx_i2c.o omap24xx_i2c.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
drivers/mtd/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| cat /dev/null .depend.cmd_bdinfo =
.depend.cmd_boot .depend.cmd_bootm .depend.cmd_cache .depend.cmd_console =
.depend.cmd_echo .depend.cmd_exit .depend.cmd_ext2 .depend.cmd_fat =
.depend.cmd_fdt .depend.cmd_help .depend.cmd_i2c .depend.cmd_itest =
.depend.cmd_jffs2 .depend.cmd_load .depend.cmd_mem .depend.cmd_misc =
.depend.cmd_mmc .depend.cmd_nand .depend.cmd_net .depend.cmd_nvedit =
.depend.cmd_pcmcia .depend.cmd_source .depend.cmd_test =
.depend.cmd_version .depend.cmd_ximg .depend.command .depend.console =
.depend.dlmalloc .depend.env_common .depend.env_nand .depend.exports =
.depend.fdt_support .depend.flash .depend.hush .depend.image =
.depend.main .depend.memsize .depend.s_record .depend.stdio =
.depend.xyzModem &gt;.depend</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
drivers/mtd/nand/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/common'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mmc'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ mmc.o mmc.c =
&gt;.depend.mmc</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| cat /dev/null .depend.twl4030_led =
&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/nand'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ nand.o nand.c =
&gt;.depend.nand</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/misc'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ omap_hsmmc.o omap_hsmmc.c =
&gt;.depend.omap_hsmmc</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/common'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o cmd_bdinfo.o cmd_bdinfo.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| rm -f libmtd.o; =
arm-poky-linux-gnueabi-ar rcs libmtd.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ nand_bbt.o nand_bbt.c =
&gt;.depend.nand_bbt</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make -C =
drivers/mtd/onenand/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/misc'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o twl4030_led.o twl4030_led.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/onenand'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| cat /dev/null .depend.mmc .depend.omap_hsmmc =
&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/onenand'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mmc'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ nand_ids.o nand_ids.c =
&gt;.depend.nand_ids</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/onenand'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| rm -f =
libonenand.o; arm-poky-linux-gnueabi-ar rcs =
libonenand.o</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mmc'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| Syntax error: =
Bad fd number</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g =
&nbsp;-Os &nbsp; -fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o mmc.o mmc.c -c</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/onenand'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
drivers/mtd/spi/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os =
&nbsp; -fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ nand_util.o nand_util.c =
&gt;.depend.nand_util</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o cmd_boot.o cmd_boot.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| r -o libmisc.o =
&nbsp;twl4030_led.o</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: r: Command not found</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
[libmisc.o] Error 127 (ignored)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/misc'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o cmd_bootm.o cmd_bootm.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/spi'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/spi'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ nand_ecc.o nand_ecc.c =
&gt;.depend.nand_ecc</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ nand_base.o nand_base.c =
&gt;.depend.nand_base</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/spi'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| rm -f =
libspi_flash.o; arm-poky-linux-gnueabi-ar rcs =
libspi_flash.o</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/spi'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o cmd_cache.o cmd_cache.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| r -o libi2c.o =
&nbsp;omap24xx_i2c.o</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: r: Command not found</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
[libi2c.o] Error 127 (ignored)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/i2c'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
drivers/mtd/ubi/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os =
&nbsp; -fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ omap_gpmc.o omap_gpmc.c =
&gt;.depend.omap_gpmc</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o cmd_console.o cmd_console.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/ubi'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| cat /dev/null .depend.nand .depend.nand_bbt =
.depend.nand_ids .depend.nand_util .depend.nand_ecc .depend.nand_base =
.depend.omap_gpmc &gt;.depend</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/ubi'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/nand'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/ubi'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| rm -f libubi.o; =
arm-poky-linux-gnueabi-ar rcs libubi.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
drivers/net/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/ubi'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
drivers/net/phy/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/nand'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o nand.o nand.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o nand_bbt.o nand_bbt.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/net'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ smc911x.o smc911x.c =
&gt;.depend.smc911x</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/net/phy'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/net/phy'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
.depend.smc911x &gt;.depend</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/net/phy'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| rm -f libphy.o; =
arm-poky-linux-gnueabi-ar rcs libphy.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/net'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/net/phy'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o nand_ids.o nand_ids.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/net'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o smc911x.o smc911x.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o cmd_echo.o cmd_echo.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o nand_util.o nand_util.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o cmd_exit.o cmd_exit.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
drivers/pci/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g =
&nbsp;-Os &nbsp; -fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o cmd_ext2.o cmd_ext2.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/pci'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/pci'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/pci'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| rm -f libpci.o; =
arm-poky-linux-gnueabi-ar rcs libpci.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/pci'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
drivers/pcmcia/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| r -o libnet.o &nbsp;smc911x.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: r: =
Command not found</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: [libnet.o] Error 127 =
(ignored)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/net'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
drivers/power/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/pcmcia'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ rpx_pcmcia.o rpx_pcmcia.c =
&gt;.depend.rpx_pcmcia</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/power'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ twl4030.o twl4030.c =
&gt;.depend.twl4030</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os =
&nbsp; -fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ tqm8xx_pcmcia.o =
tqm8xx_pcmcia.c &gt;.depend.tqm8xx_pcmcia</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o cmd_fat.o cmd_fat.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
.depend.twl4030 &gt;.depend</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o omap_hsmmc.o omap_hsmmc.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/power'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
.depend.rpx_pcmcia .depend.tqm8xx_pcmcia =
&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/pcmcia'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o cmd_fdt.o cmd_fdt.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/power'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o twl4030.o twl4030.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/pcmcia'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o rpx_pcmcia.o rpx_pcmcia.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o tqm8xx_pcmcia.o tqm8xx_pcmcia.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| r -o libpower.o =
&nbsp;twl4030.o</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: r: Command not found</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
[libpower.o] Error 127 (ignored)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/power'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o cmd_help.o cmd_help.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o nand_ecc.o nand_ecc.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o cmd_i2c.o cmd_i2c.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| r -o libpcmcia.o =
&nbsp;rpx_pcmcia.o tqm8xx_pcmcia.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: r: =
Command not found</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: [libpcmcia.o] Error 127 =
(ignored)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/pcmcia'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o cmd_itest.o cmd_itest.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
drivers/rtc/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g =
&nbsp;-Os &nbsp; -fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o nand_base.o nand_base.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/rtc'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ date.o date.c =
&gt;.depend.date</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| cat /dev/null .depend.date =
&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| r -o libmmc.o &nbsp;mmc.o =
omap_hsmmc.o</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: r: Command not found</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
[libmmc.o] Error 127 (ignored)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mmc'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
drivers/serial/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/rtc'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/serial'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ ns16550.o ns16550.c =
&gt;.depend.ns16550</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/rtc'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o date.o date.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ serial.o serial.c =
&gt;.depend.serial</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o cmd_jffs2.o cmd_jffs2.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
.depend.ns16550 .depend.serial &gt;.depend</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/serial'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/serial'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o ns16550.o ns16550.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| r -o librtc.o =
&nbsp;date.o</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: r: Command not found</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
[librtc.o] Error 127 (ignored)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/rtc'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o omap_gpmc.o omap_gpmc.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
drivers/spi/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/spi'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/spi'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o serial.o serial.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o cmd_load.o cmd_load.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/spi'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| rm -f libspi.o; =
arm-poky-linux-gnueabi-ar rcs libspi.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/spi'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
drivers/twserial/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g =
&nbsp;-Os &nbsp; -fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o cmd_mem.o cmd_mem.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/twserial'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/twserial'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
drivers/usb/eth/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/twserial'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| rm -f libtws.o; =
arm-poky-linux-gnueabi-ar rcs libtws.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/twserial'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
drivers/usb/gadget/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/eth'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/gadget'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/eth'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/gadget'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| r -o libserial.o =
&nbsp;ns16550.o serial.o</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: r: Command not found</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
[libserial.o] Error 127 (ignored)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/serial'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
drivers/usb/host/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/eth'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| rm -f =
libusb_eth.o; arm-poky-linux-gnueabi-ar rcs =
libusb_eth.o</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/eth'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
drivers/usb/musb/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/gadget'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| rm -f =
libusb_gadget.o; arm-poky-linux-gnueabi-ar rcs =
libusb_gadget.o</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/host'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/gadget'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
drivers/usb/phy/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/host'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/musb'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/phy'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/musb'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/phy'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/host'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| rm -f =
libusb_host.o; arm-poky-linux-gnueabi-ar rcs =
libusb_host.o</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/host'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
drivers/usb/ulpi/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/musb'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| rm -f =
libusb_musb.o; arm-poky-linux-gnueabi-ar rcs =
libusb_musb.o</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/phy'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| rm -f =
libusb_phy.o; arm-poky-linux-gnueabi-ar rcs =
libusb_phy.o</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/musb'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o cmd_misc.o cmd_misc.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/phy'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
drivers/video/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/ulpi'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/ulpi'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/video'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/video'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/ulpi'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| rm -f =
libusb_ulpi.o; arm-poky-linux-gnueabi-ar rcs =
libusb_ulpi.o</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/usb/ulpi'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
drivers/watchdog/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/video'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| rm -f =
libvideo.o; arm-poky-linux-gnueabi-ar rcs =
libvideo.o</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/video'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
fs/cramfs/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/watchdog'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o cmd_mmc.o cmd_mmc.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/watchdog'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
fs/ext2/</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/cramfs'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/watchdog'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| rm -f =
libwatchdog.o; arm-poky-linux-gnueabi-ar rcs =
libwatchdog.o</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/cramfs'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/watchdog'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
fs/fat/</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/ext2'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ ext2fs.o ext2fs.c =
&gt;.depend.ext2fs</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make -C fs/fdos/</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/cramfs'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| rm -f =
libcramfs.o; arm-poky-linux-gnueabi-ar rcs =
libcramfs.o</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/cramfs'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
fs/jffs2/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/fat'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ fat.o fat.c =
&gt;.depend.fat</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/fdos'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ dev.o dev.c =
&gt;.depend.dev</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/fdos'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/jffs2'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ compr_rtime.o =
compr_rtime.c &gt;.depend.compr_rtime</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ file.o file.c =
&gt;.depend.file</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ compr_rubin.o =
compr_rubin.c &gt;.depend.compr_rubin</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/fdos'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| rm -f libfdos.o; =
arm-poky-linux-gnueabi-ar rcs libfdos.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
.depend.ext2fs .depend.dev &gt;.depend</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ compr_zlib.o compr_zlib.c =
&gt;.depend.compr_zlib</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/fdos'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o cmd_nand.o cmd_nand.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/ext2'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
.depend.fat .depend.file &gt;.depend</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/fat'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/ext2'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o ext2fs.o ext2fs.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ jffs2_1pass.o =
jffs2_1pass.c &gt;.depend.jffs2_1pass</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/fat'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o fat.o fat.c -c</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ mini_inflate.o =
mini_inflate.c &gt;.depend.mini_inflate</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
fs/reiserfs/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| cat /dev/null .depend.compr_rtime =
.depend.compr_rubin .depend.compr_zlib .depend.jffs2_1pass =
.depend.mini_inflate &gt;.depend</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/jffs2'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/reiserfs'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/jffs2'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o compr_rtime.o compr_rtime.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/reiserfs'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/reiserfs'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| rm -f =
libreiserfs.o; arm-poky-linux-gnueabi-ar rcs =
libreiserfs.o</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/reiserfs'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
fs/ubifs/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g =
&nbsp;-Os &nbsp; -fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o compr_rubin.o compr_rubin.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/ubifs'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/ubifs'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/ubifs'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| rm -f =
libubifs.o; arm-poky-linux-gnueabi-ar rcs =
libubifs.o</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/ubifs'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
fs/yaffs2/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/yaffs2'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/yaffs2'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o compr_zlib.o compr_zlib.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/yaffs2'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| rm -f =
libyaffs2.o; arm-poky-linux-gnueabi-ar rcs =
libyaffs2.o</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/yaffs2'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o jffs2_1pass.o jffs2_1pass.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o cmd_net.o cmd_net.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o dev.o dev.c -c</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o mini_inflate.o mini_inflate.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o cmd_nvedit.o cmd_nvedit.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| r -o libext2fs.o =
&nbsp;ext2fs.o dev.o</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: r: Command not found</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
[libext2fs.o] Error 127 (ignored)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/ext2'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
lib/libfdt/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib/libfdt'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ fdt.o fdt.c =
&gt;.depend.fdt</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ fdt_ro.o fdt_ro.c =
&gt;.depend.fdt_ro</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ fdt_rw.o fdt_rw.c =
&gt;.depend.fdt_rw</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ fdt_strerror.o =
fdt_strerror.c &gt;.depend.fdt_strerror</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| r -o libnand.o =
&nbsp;nand.o nand_bbt.o nand_ids.o nand_util.o nand_ecc.o nand_base.o =
omap_gpmc.o</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: r: Command not found</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
[libnand.o] Error 127 (ignored)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/nand'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o cmd_pcmcia.o cmd_pcmcia.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ fdt_sw.o fdt_sw.c =
&gt;.depend.fdt_sw</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ fdt_wip.o fdt_wip.c =
&gt;.depend.fdt_wip</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| cat /dev/null .depend.fdt .depend.fdt_ro .depend.fdt_rw =
.depend.fdt_strerror .depend.fdt_sw .depend.fdt_wip =
&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib/libfdt'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o file.o file.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
lib/</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib/libfdt'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o fdt.o fdt.c -c</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o cmd_source.o cmd_source.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ crc7.o crc7.c =
&gt;.depend.crc7</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ crc16.o crc16.c =
&gt;.depend.crc16</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ crc32.o crc32.c =
&gt;.depend.crc32</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ display_options.o =
display_options.c &gt;.depend.display_options</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ errno.o errno.c =
&gt;.depend.errno</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o cmd_test.o cmd_test.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ gunzip.o gunzip.c =
&gt;.depend.gunzip</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o fdt_ro.o fdt_ro.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ hashtable.o hashtable.c =
&gt;.depend.hashtable</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ lmb.o lmb.c =
&gt;.depend.lmb</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| r -o libfat.o &nbsp;fat.o file.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: r: =
Command not found</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: [libfat.o] Error 127 =
(ignored)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/fat'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o cmd_version.o cmd_version.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
lib/lzma/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os =
&nbsp; -fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ ldiv.o ldiv.c =
&gt;.depend.ldiv</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ net_utils.o net_utils.c =
&gt;.depend.net_utils</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib/lzma'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib/lzma'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ qsort.o qsort.c =
&gt;.depend.qsort</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib/lzma'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| rm -f liblzma.o; =
arm-poky-linux-gnueabi-ar rcs liblzma.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o cmd_ximg.o cmd_ximg.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib/lzma'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
lib/lzo/</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o fdt_rw.o fdt_rw.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ strmhz.o strmhz.c =
&gt;.depend.strmhz</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib/lzo'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib/lzo'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ ctype.o ctype.c =
&gt;.depend.ctype</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib/lzo'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| rm -f liblzo.o; =
arm-poky-linux-gnueabi-ar rcs liblzo.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ div64.o div64.c =
&gt;.depend.div64</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib/lzo'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o command.o command.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ string.o string.c =
&gt;.depend.string</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| r -o libjffs2.o &nbsp;compr_rtime.o compr_rubin.o =
compr_zlib.o jffs2_1pass.o mini_inflate.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: r: =
Command not found</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: [libjffs2.o] Error 127 =
(ignored)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/jffs2'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o fdt_strerror.o fdt_strerror.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ time.o time.c =
&gt;.depend.time</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o console.o console.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ vsprintf.o vsprintf.c =
&gt;.depend.vsprintf</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o fdt_sw.o fdt_sw.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o fdt_wip.o fdt_wip.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
.depend.crc7 .depend.crc16 .depend.crc32 .depend.display_options =
.depend.errno .depend.gunzip .depend.hashtable .depend.lmb .depend.ldiv =
.depend.net_utils .depend.qsort .depend.strmhz .depend.ctype =
.depend.div64 .depend.string .depend.time .depend.vsprintf =
&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o crc7.o crc7.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o crc16.o crc16.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o crc32.o crc32.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o display_options.o display_options.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
lib/zlib/</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib/zlib'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ zlib.o zlib.c =
&gt;.depend.zlib</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o dlmalloc.o dlmalloc.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| r -o libfdt.o =
&nbsp;fdt.o fdt_ro.o fdt_rw.o fdt_strerror.o fdt_sw.o =
fdt_wip.o</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: r: Command not found</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
[libfdt.o] Error 127 (ignored)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib/libfdt'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
net/</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o errno.o errno.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o gunzip.o gunzip.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
.depend.zlib &gt;.depend</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/net'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ bootp.o bootp.c =
&gt;.depend.bootp</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib/zlib'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ eth.o eth.c =
&gt;.depend.eth</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g =
&nbsp;-Os &nbsp; -fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o env_common.o env_common.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ net.o net.c =
&gt;.depend.net</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib/zlib'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o zlib.o zlib.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o env_nand.o env_nand.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ tftp.o tftp.c =
&gt;.depend.tftp</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| cat /dev/null .depend.bootp .depend.eth .depend.net =
.depend.tftp &gt;.depend</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/net'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o hashtable.o hashtable.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/net'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o bootp.o bootp.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
post/</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/post'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/post'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/post'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| rm -f libpost.o; =
arm-poky-linux-gnueabi-ar rcs libpost.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/post'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C spl =
all</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o exports.o exports.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux=
-gnueabi/u-boot-2011.12-r2/git/spl/.depend</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/arch/arm/cpu/armv7 =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/start.o</font></div><div><font=
 class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/start.o start.S =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/.depend.start</font></div>=
<div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
/bin/sh: 1: Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/cpu.o cpu.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/.depend.cpu</font></div><d=
iv><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
/bin/sh: 1: Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/syslib.o syslib.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/.depend.syslib</font></div=
><div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
/bin/sh: 1: Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o eth.o eth.c -c</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o net.o net.c -c</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| cat /dev/null =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/.depend.start =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/.depend.cpu =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/.depend.syslib =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/.depend</font></div><div><=
font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp; -D__ASSEMBLY__ -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-ffunction-sections -fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/start.o start.S =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/arch/arm/cpu/armv7/</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o lmb.o lmb.c -c</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/cpu.o cpu.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o fdt_support.o fdt_support.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/syslib.o syslib.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| r -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/libarmv7.o =
&nbsp;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnu=
eabi/u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/cpu.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/syslib.o</font></div><div><fon=
t class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: r: =
Command not found</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[2]: =
[/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/libarmv7.o] Error 127 =
(ignored)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap-common/</font></div><div><fon=
t class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap-common'</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/reset.o reset.S =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/.depend.reset<=
/font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o flash.o flash.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/timer.o timer.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/.depend.timer<=
/font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-ffunction-sections -fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/utils.o utils.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/.depend.utils<=
/font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o ldiv.o ldiv.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o net_utils.o net_utils.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/gpio.o gpio.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/.depend.gpio</=
font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o hush.o hush.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/spl.o spl.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/.depend.spl</f=
ont></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-ffunction-sections -fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/spl_nand.o =
spl_nand.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/.depend.spl_na=
nd</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o tftp.o tftp.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o qsort.o qsort.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/spl_mmc.o =
spl_mmc.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/.depend.spl_mm=
c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| cat /dev/null =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/.depend.reset =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/.depend.timer =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/.depend.utils =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/.depend.gpio =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/.depend.spl =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/.depend.spl_nand =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/.depend.spl_mmc =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/.depend</font>=
</div><div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
/bin/sh: 1: Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap-common'</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap-common'</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp; -D__ASSEMBLY__ -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-ffunction-sections -fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/reset.o reset.S =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o image.o image.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o strmhz.o strmhz.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/timer.o timer.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o ctype.o ctype.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o div64.o div64.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/utils.o utils.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| r -o libnet.o &nbsp;bootp.o eth.o net.o =
tftp.o</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: r: Command not found</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
[libnet.o] Error 127 (ignored)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/net'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap3/</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap3'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/lowlevel_init.o =
lowlevel_init.S =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/.depend.lowlevel_ini=
t</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o string.o string.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/board.o board.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/.depend.board</font>=
</div><div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
/bin/sh: 1: Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/clock.o clock.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/.depend.clock</font>=
</div><div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
/bin/sh: 1: Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/mem.o mem.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/.depend.mem</font></=
div><div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
/bin/sh: 1: Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| r -o libz.o =
&nbsp;zlib.o</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: r: Command not found</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
[libz.o] Error 127 (ignored)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib/zlib'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o main.o main.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/gpio.o gpio.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-ffunction-sections -fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/sys_info.o sys_info.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/.depend.sys_info</fo=
nt></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| cat /dev/null =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/.depend.lowlevel_init =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/.depend.board =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/.depend.clock =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/.depend.mem =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/.depend.sys_info =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/.depend</font></div>=
<div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
/bin/sh: 1: Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap3'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/arch/arm/lib/</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap3'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/board.o board.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/lib'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux=
-gnueabi/u-boot-2011.12-r2/git/spl/arch/arm/lib/.depend</font></div><div><=
font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/spl.o spl.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/lib'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/lib'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| rm -f =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/lib/libarm.o; =
arm-poky-linux-gnueabi-ar rcs =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/lib/libarm.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/lib/eabi_compat.o eabi_compat.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o time.o time.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/clock.o clock.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o memsize.o memsize.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/lib'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/mem.o mem.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o vsprintf.o vsprintf.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o s_record.o s_record.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o stdio.o stdio.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/spl_nand.o =
spl_nand.c -c</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o xyzModem.o xyzModem.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/spl_mmc.o =
spl_mmc.c -c</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-ffunction-sections -fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/sys_info.o sys_info.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-ffunction-sections -fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/sdrc.o sdrc.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp; -D__ASSEMBLY__ -g =
&nbsp;-Os &nbsp; -fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-ffunction-sections -fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/lowlevel_init.o =
lowlevel_init.S -c</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make -C =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/board/overo/</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/board/overo'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/board/overo/overo.o overo.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/board/overo/.depend.overo</font></div><div><f=
ont class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/board/overo/.depend.overo =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/board/overo/.depend</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| r -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/libomap-common.o =
&nbsp;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnu=
eabi/u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/reset.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/timer.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/utils.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/gpio.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/spl.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/spl_nand.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/spl_mmc.o</font></=
div><div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
/bin/sh: 1: Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: r: =
Command not found</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[2]: =
[/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/libomap-common.o]=
 Error 127 (ignored)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap-common'</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/common/</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/board/overo'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/common'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/console.o console.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/common/.depend.console</font></div><div><font=
 class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/board/overo'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/board/overo/overo.o overo.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make -C =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/disk/</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/disk'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/disk/part.o part.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/disk/.depend.part</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/dlmalloc.o dlmalloc.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/common/.depend.dlmalloc</font></div><div><fon=
t class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| r -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/libomap3.o =
&nbsp;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnu=
eabi/u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/board.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/clock.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/mem.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/sys_info.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/sdrc.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/lowlevel_init.o</font></=
div><div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
/bin/sh: 1: Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: r: =
Command not found</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[2]: =
[/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/libomap3.o] Error 127 =
(ignored)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap3'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/drivers/i2c/</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/disk/part_dos.o part_dos.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/disk/.depend.part_dos</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/i2c'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/i2c/omap24xx_i2c.o omap24xx_i2c.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/drivers/i2c/.depend.omap24xx_i2c</font></div>=
<div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
/bin/sh: 1: Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/memsize.o memsize.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/common/.depend.memsize</font></div><div><font=
 class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -I.. &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/stdio.o stdio.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/common/.depend.stdio</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/disk/.depend.part =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/disk/.depend.part_dos =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/disk/.depend</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/disk'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| r -o libcommon.o =
&nbsp;cmd_bdinfo.o cmd_boot.o cmd_bootm.o cmd_cache.o cmd_console.o =
cmd_echo.o cmd_exit.o cmd_ext2.o cmd_fat.o cmd_fdt.o cmd_help.o =
cmd_i2c.o cmd_itest.o cmd_jffs2.o cmd_load.o cmd_mem.o cmd_misc.o =
cmd_mmc.o cmd_nand.o cmd_net.o cmd_nvedit.o cmd_pcmcia.o cmd_source.o =
cmd_test.o cmd_version.o cmd_ximg.o command.o console.o dlmalloc.o =
env_common.o env_nand.o exports.o fdt_support.o flash.o hush.o image.o =
main.o memsize.o s_record.o stdio.o xyzModem.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: r: =
Command not found</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: [libcommon.o] Error 127 =
(ignored)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/common'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/drivers/mmc/</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/i2c/.depend.omap24xx_i2c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/drivers/i2c/.depend</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/i2c'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/disk'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/disk/part.o part.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/.depend.console =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/.depend.dlmalloc =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/.depend.memsize =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/.depend.stdio =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/common/.depend</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mmc'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mmc/mmc.o mmc.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/drivers/mmc/.depend.mmc</font></div><div><fon=
t class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/common'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/i2c'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/i2c/omap24xx_i2c.o omap24xx_i2c.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/common'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/console.o console.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-ffunction-sections -fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mmc/omap_hsmmc.o omap_hsmmc.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/drivers/mmc/.depend.omap_hsmmc</font></div><d=
iv><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
/bin/sh: 1: Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mmc/.depend.mmc =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mmc/.depend.omap_hsmmc =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/drivers/mmc/.depend</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mmc'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| r -o =
libgeneric.o &nbsp;crc7.o crc16.o crc32.o display_options.o errno.o =
gunzip.o hashtable.o lmb.o ldiv.o net_utils.o qsort.o strmhz.o ctype.o =
div64.o string.o time.o vsprintf.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: r: =
Command not found</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: [libgeneric.o] Error 127 =
(ignored)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/disk/part_dos.o part_dos.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mmc'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mmc/mmc.o mmc.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make -C =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/drivers/mtd/nand/</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/nand'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/nand_spl_simple.o =
nand_spl_simple.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/drivers/mtd/nand/.depend.nand_spl_simple</fon=
t></div><div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">|=
 /bin/sh: 1: Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/nand_ecc.o nand_ecc.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/drivers/mtd/nand/.depend.nand_ecc</font></div=
><div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
/bin/sh: 1: Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/nand_base.o nand_base.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/drivers/mtd/nand/.depend.nand_base</font></di=
v><div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
/bin/sh: 1: Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/omap_gpmc.o omap_gpmc.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/drivers/mtd/nand/.depend.omap_gpmc</font></di=
v><div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
/bin/sh: 1: Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/dlmalloc.o dlmalloc.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| r -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/board/overo/libovero.o =
&nbsp;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnu=
eabi/u-boot-2011.12-r2/git/spl/board/overo/overo.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: r: =
Command not found</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[2]: =
[/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/board/overo/libovero.o] Error 127 =
(ignored)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/board/overo'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/drivers/power/</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| r -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/i2c/libi2c.o =
&nbsp;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnu=
eabi/u-boot-2011.12-r2/git/spl/drivers/i2c/omap24xx_i2c.o</font></div><div=
><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: =
1: Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: r: =
Command not found</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[2]: =
[/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/i2c/libi2c.o] Error 127 =
(ignored)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/i2c'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mmc/omap_hsmmc.o omap_hsmmc.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/power'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/power/twl4030.o twl4030.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/drivers/power/.depend.twl4030</font></div><di=
v><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: =
1: Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/.depend.nand_spl_simple =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/.depend.nand_ecc =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/.depend.nand_base =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/.depend.omap_gpmc =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/drivers/mtd/nand/.depend</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/nand'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| r -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/disk/libdisk.o =
&nbsp;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnu=
eabi/u-boot-2011.12-r2/git/spl/disk/part.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/disk/part_dos.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: r: =
Command not found</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[2]: =
[/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/disk/libdisk.o] Error 127 =
(ignored)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/disk'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/memsize.o memsize.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| cat /dev/null =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/power/.depend.twl4030 =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/drivers/power/.depend</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/nand'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/nand_spl_simple.o =
nand_spl_simple.c -c</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/power'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/power'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/power/twl4030.o twl4030.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; =
-fno-common -ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-ffunction-sections -fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/stdio.o stdio.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make -C =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/drivers/serial/</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/serial'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/serial/ns16550.o ns16550.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/drivers/serial/.depend.ns16550</font></div><d=
iv><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
/bin/sh: 1: Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| r -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/power/libpower.o =
&nbsp;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnu=
eabi/u-boot-2011.12-r2/git/spl/drivers/power/twl4030.o</font></div><div><f=
ont class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: r: =
Command not found</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[2]: =
[/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/power/libpower.o] Error 127 =
(ignored)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/power'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/fs/fat/</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/serial/serial.o serial.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/drivers/serial/.depend.serial</font></div><di=
v><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: =
1: Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/fat'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/fs/fat/fat.o fat.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/fs/fat/.depend.fat</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/nand_ecc.o nand_ecc.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| cat /dev/null =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/serial/.depend.ns16550 =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/serial/.depend.serial =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/drivers/serial/.depend</font></div><div><font=
 class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/nand_base.o nand_base.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/serial'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/fs/fat/.depend.fat =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/fs/fat/.depend</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/fat'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/serial'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/serial/ns16550.o ns16550.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/fat'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/fs/fat/fat.o fat.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/serial/serial.o serial.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make -C board/overo/</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| r -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mmc/libmmc.o =
&nbsp;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnu=
eabi/u-boot-2011.12-r2/git/spl/drivers/mmc/mmc.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mmc/omap_hsmmc.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: r: =
Command not found</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[2]: =
[/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/mmc/libmmc.o] Error 127 =
(ignored)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mmc'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make -C =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/lib/</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 0: =
Illegal option --</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/board/overo'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ overo.o overo.c =
&gt;.depend.overo</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[2]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/ctype.o ctype.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/lib/.depend.ctype</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| r -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/libcommon.o =
&nbsp;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnu=
eabi/u-boot-2011.12-r2/git/spl/common/console.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/dlmalloc.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/memsize.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/stdio.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: r: =
Command not found</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[2]: =
[/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/common/libcommon.o] Error 127 =
(ignored)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/common'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/div64.o div64.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/lib/.depend.div64</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/string.o string.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/lib/.depend.string</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/time.o time.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/lib/.depend.time</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
.depend.overo &gt;.depend</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/board/overo'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -M -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 &nbsp; -MQ =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/vsprintf.o vsprintf.c =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/lib/.depend.vsprintf</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/omap_gpmc.o omap_gpmc.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/board/overo'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o overo.o overo.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| cat /dev/null =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/.depend.ctype =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/.depend.div64 =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/.depend.string =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/.depend.time =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/.depend.vsprintf =
&gt;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnuea=
bi/u-boot-2011.12-r2/git/spl/lib/.depend</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| r -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/serial/libserial.o =
&nbsp;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnu=
eabi/u-boot-2011.12-r2/git/spl/drivers/serial/ns16550.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/serial/serial.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: r: =
Command not found</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[2]: =
[/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/serial/libserial.o] Error 127 =
(ignored)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/serial'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc -E -g &nbsp;-Os &nbsp; -fno-common -ffixed-r8 =
-msoft-float &nbsp;-D__KERNEL__ -ffunction-sections -fdata-sections =
-DCONFIG_SYS_TEXT_BASE=3D0x80008000 -DCONFIG_SPL_TEXT_BASE=3D0x40200800 =
-DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -include =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include/u-boot/u-boot.lds.h -include =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/include/config.h &nbsp;-ansi -D__ASSEMBLY__ -P - =
&lt; =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/arch/arm/cpu/armv7/omap-common/u-boot-spl.lds &gt; =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/u-boot-spl.lds</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/ctype.o ctype.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/div64.o div64.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/string.o string.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/time.o time.c -c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-gcc &nbsp;-g &nbsp;-Os &nbsp; -fno-common =
-ffixed-r8 -msoft-float &nbsp;-D__KERNEL__ -ffunction-sections =
-fdata-sections -DCONFIG_SYS_TEXT_BASE=3D0x80008000 =
-DCONFIG_SPL_TEXT_BASE=3D0x40200800 -DCONFIG_SPL_BUILD =
-I/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi=
/u-boot-2011.12-r2/git/include -fno-builtin -ffreestanding -nostdinc =
-isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-p=
oky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.1/include -pipe =
&nbsp;-DCONFIG_ARM -D__ARM__ -marm -mabi=3Daapcs-linux =
-mno-thumb-interwork -march=3Darmv5 -Wall -Wstrict-prototypes =
-fno-stack-protector -Wno-format-nonliteral -Wno-format-security &nbsp; =
&nbsp; -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/vsprintf.o vsprintf.c =
-c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| r -o libovero.o &nbsp;overo.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: r: =
Command not found</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: [libovero.o] Error 127 =
(ignored)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/board/overo'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
UNDEF_SYM=3D`arm-poky-linux-gnueabi-objdump -x board/overo/libovero.o =
api/libapi.o arch/arm/cpu/armv7/libarmv7.o =
arch/arm/cpu/armv7/omap-common/libomap-common.o =
arch/arm/cpu/armv7/omap3/libomap3.o arch/arm/lib/libarm.o =
common/libcommon.o disk/libdisk.o drivers/bios_emulator/libatibiosemu.o =
drivers/block/libblock.o drivers/dma/libdma.o drivers/fpga/libfpga.o =
drivers/gpio/libgpio.o drivers/hwmon/libhwmon.o drivers/i2c/libi2c.o =
drivers/input/libinput.o drivers/misc/libmisc.o drivers/mmc/libmmc.o =
drivers/mtd/libmtd.o drivers/mtd/nand/libnand.o =
drivers/mtd/onenand/libonenand.o drivers/mtd/spi/libspi_flash.o =
drivers/mtd/ubi/libubi.o drivers/net/libnet.o drivers/net/phy/libphy.o =
drivers/pci/libpci.o drivers/pcmcia/libpcmcia.o drivers/power/libpower.o =
drivers/rtc/librtc.o drivers/serial/libserial.o drivers/spi/libspi.o =
drivers/twserial/libtws.o drivers/usb/eth/libusb_eth.o =
drivers/usb/gadget/libusb_gadget.o drivers/usb/host/libusb_host.o =
drivers/usb/musb/libusb_musb.o drivers/usb/phy/libusb_phy.o =
drivers/usb/ulpi/libusb_ulpi.o drivers/video/libvideo.o =
drivers/watchdog/libwatchdog.o fs/cramfs/libcramfs.o fs/ext2/libext2fs.o =
fs/fat/libfat.o fs/fdos/libfdos.o fs/jffs2/libjffs2.o =
fs/reiserfs/libreiserfs.o fs/ubifs/libubifs.o fs/yaffs2/libyaffs2.o =
lib/libfdt/libfdt.o lib/libgeneric.o lib/lzma/liblzma.o lib/lzo/liblzo.o =
lib/zlib/libz.o net/libnet.o post/libpost.o | sed &nbsp;-n -e =
's/.*\(__u_boot_cmd_.*\)/-u\1/p'|sort|uniq`; cd =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git &amp;&amp; &nbsp;arm-poky-linux-gnueabi-ld.bfd =
&nbsp;-pie -T u-boot.lds -Bstatic -Ttext 0x80008000 $UNDEF_SYM =
arch/arm/cpu/armv7/start.o --start-group api/libapi.o =
arch/arm/cpu/armv7/libarmv7.o =
arch/arm/cpu/armv7/omap-common/libomap-common.o =
arch/arm/cpu/armv7/omap3/libomap3.o arch/arm/lib/libarm.o =
common/libcommon.o disk/libdisk.o drivers/bios_emulator/libatibiosemu.o =
drivers/block/libblock.o drivers/dma/libdma.o drivers/fpga/libfpga.o =
drivers/gpio/libgpio.o drivers/hwmon/libhwmon.o drivers/i2c/libi2c.o =
drivers/input/libinput.o drivers/misc/libmisc.o drivers/mmc/libmmc.o =
drivers/mtd/libmtd.o drivers/mtd/nand/libnand.o =
drivers/mtd/onenand/libonenand.o drivers/mtd/spi/libspi_flash.o =
drivers/mtd/ubi/libubi.o drivers/net/libnet.o drivers/net/phy/libphy.o =
drivers/pci/libpci.o drivers/pcmcia/libpcmcia.o drivers/power/libpower.o =
drivers/rtc/librtc.o drivers/serial/libserial.o drivers/spi/libspi.o =
drivers/twserial/libtws.o drivers/usb/eth/libusb_eth.o =
drivers/usb/gadget/libusb_gadget.o drivers/usb/host/libusb_host.o =
drivers/usb/musb/libusb_musb.o drivers/usb/phy/libusb_phy.o =
drivers/usb/ulpi/libusb_ulpi.o drivers/video/libvideo.o =
drivers/watchdog/libwatchdog.o fs/cramfs/libcramfs.o fs/ext2/libext2fs.o =
fs/fat/libfat.o fs/fdos/libfdos.o fs/jffs2/libjffs2.o =
fs/reiserfs/libreiserfs.o fs/ubifs/libubifs.o fs/yaffs2/libyaffs2.o =
lib/libfdt/libfdt.o lib/libgeneric.o lib/lzma/liblzma.o lib/lzo/liblzo.o =
lib/zlib/libz.o net/libnet.o post/libpost.o board/overo/libovero.o =
--end-group =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/arch/arm/lib/eabi_compat.o &nbsp;-L =
/tool/yocto/poky/build/tmp/sysroots/overo-fire-chestnut43/usr/lib/arm-poky=
-linux-gnueabi/4.7.1 -lgcc -Map u-boot.map -o =
u-boot</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| r -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/fs/fat/libfat.o =
&nbsp;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnu=
eabi/u-boot-2011.12-r2/git/spl/fs/fat/fat.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: r: =
Command not found</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[2]: =
[/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/fs/fat/libfat.o] Error 127 =
(ignored)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/fat'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-objdump: 'board/overo/libovero.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'arch/arm/cpu/armv7/libarmv7.o': No such file</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-objdump: =
'arch/arm/cpu/armv7/omap-common/libomap-common.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'arch/arm/cpu/armv7/omap3/libomap3.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: 'arch/arm/lib/libarm.o': No =
such file</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'common/libcommon.o': No such file</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-objdump: 'disk/libdisk.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: 'drivers/i2c/libi2c.o': No =
such file</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'drivers/misc/libmisc.o': No such file</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-objdump: 'drivers/mmc/libmmc.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'drivers/mtd/nand/libnand.o': No such file</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-objdump: 'drivers/net/libnet.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'drivers/pcmcia/libpcmcia.o': No such file</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-objdump: 'drivers/power/libpower.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: 'drivers/rtc/librtc.o': No =
such file</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'drivers/serial/libserial.o': No such file</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-objdump: 'fs/ext2/libext2fs.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: 'fs/fat/libfat.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: 'fs/jffs2/libjffs2.o': No =
such file</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'lib/libfdt/libfdt.o': No such file</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-objdump: 'lib/libgeneric.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: 'lib/zlib/libz.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: 'net/libnet.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
arch/arm/cpu/armv7/libarmv7.o: No such file or =
directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
arch/arm/cpu/armv7/omap-common/libomap-common.o: No such file or =
directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
arch/arm/cpu/armv7/omap3/libomap3.o: No such file or =
directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
arch/arm/lib/libarm.o: No such file or directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-ld.bfd: cannot find common/libcommon.o: No such =
file or directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
disk/libdisk.o: No such file or directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/i2c/libi2c.o: No such =
file or directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
drivers/misc/libmisc.o: No such file or directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/mmc/libmmc.o: No such =
file or directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
drivers/mtd/nand/libnand.o: No such file or =
directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
drivers/net/libnet.o: No such file or directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/pcmcia/libpcmcia.o: =
No such file or directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/power/libpower.o: No =
such file or directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
drivers/rtc/librtc.o: No such file or directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/serial/libserial.o: =
No such file or directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-ld.bfd: cannot find fs/ext2/libext2fs.o: No such =
file or directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
fs/fat/libfat.o: No such file or directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-ld.bfd: cannot find fs/jffs2/libjffs2.o: No such =
file or directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
lib/libfdt/libfdt.o: No such file or directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-ld.bfd: cannot find lib/libgeneric.o: No such =
file or directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
lib/zlib/libz.o: No such file or directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-ld.bfd: cannot find net/libnet.o: No such file or =
directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
board/overo/libovero.o: No such file or directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make: *** =
[u-boot] Error 1</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make: *** Waiting for unfinished =
jobs....</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| r -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/libgeneric.o =
&nbsp;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnu=
eabi/u-boot-2011.12-r2/git/spl/lib/ctype.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/div64.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/string.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/time.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/vsprintf.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: r: =
Command not found</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[2]: =
[/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/lib/libgeneric.o] Error 127 =
(ignored)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/lib'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| r -o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/libnand.o =
&nbsp;/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnu=
eabi/u-boot-2011.12-r2/git/spl/drivers/mtd/nand/nand_spl_simple.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/nand_ecc.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/nand_base.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/omap_gpmc.o</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: r: =
Command not found</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[2]: =
[/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/mtd/nand/libnand.o] Error 127 =
(ignored)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/drivers/mtd/nand'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| /bin/sh: 1: =
Syntax error: Bad fd number</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
UNDEF_SYM=3D`arm-poky-linux-gnueabi-objdump -x =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/libarmv7.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/libomap-common.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/libomap3.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/lib/libarm.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/board/overo/libovero.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/common/libcommon.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/disk/libdisk.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/i2c/libi2c.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mmc/libmmc.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/mtd/nand/libnand.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/power/libpower.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/drivers/serial/libserial.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/fs/fat/libfat.o =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/lib/libgeneric.o | sed &nbsp;-n -e =
's/.*\(__u_boot_cmd_.*\)/-u\1/p'|sort|uniq`; cd =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/ &amp;&amp; &nbsp; -T =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/u-boot-spl.lds --gc-sections -Bstatic -Ttext =
0x40200800 $UNDEF_SYM arch/arm/cpu/armv7/start.o --start-group =
arch/arm/cpu/armv7/libarmv7.o =
arch/arm/cpu/armv7/omap-common/libomap-common.o =
arch/arm/cpu/armv7/omap3/libomap3.o arch/arm/lib/libarm.o =
board/overo/libovero.o common/libcommon.o disk/libdisk.o =
drivers/i2ERROR: Function failed: do_compile (see =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/temp/log.do_compile.13502 for further =
information)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| c/libi2c.o drivers/mmc/libmmc.o =
drivers/mtd/nand/libnand.o drivers/power/libpower.o =
drivers/serial/libserial.o fs/fat/libfat.o lib/libgeneric.o --end-group =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/git/spl/arch/arm/lib/eabi_compat.o -L =
/tool/yocto/poky/build/tmp/sysroots/overo-fire-chestnut43/usr/lib/arm-poky=
-linux-gnueabi/4.7.1 -lgcc -Map u-boot-spl.map -o =
u-boot-spl</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| /bin/sh: 1: Syntax error: Bad fd =
number</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/libarmv7.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap-common/libomap-common.o'=
: No such file</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/arch/arm/cpu/armv7/omap3/libomap3.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/board/overo/libovero.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/common/libcommon.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/disk/libdisk.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/i2c/libi2c.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/mmc/libmmc.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/mtd/nand/libnand.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/power/libpower.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/drivers/serial/libserial.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/fs/fat/libfat.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/lib/libgeneric.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: -T: not found</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: *** =
[/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/u-boot-spl] Error 127</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make: *** =
[spl/u-boot-spl.bin] Error 2</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| ERROR: =
oe_runmake failed</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: package u-boot-2011.12-r2: task =
do_compile: Failed</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">ERROR: Task 7 =
(/tool/yocto/meta-gumstix/recipes-bsp/u-boot/u-boot_2011.12.bb, =
do_compile) failed with exit code '1'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: Tasks =
Summary: Attempted 858 tasks of which 851 didn't need to be rerun and 1 =
failed.</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Summary: 1 task =
failed:</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; =
/tool/yocto/meta-gumstix/recipes-bsp/u-boot/u-boot_2011.12.bb, =
do_compile</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Summary: There was 1 WARNING message =
shown.</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">Summary: There was 1 ERROR message shown, returning a =
non-zero exit code.</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" =
size=3D"2">elvis@eos:/tool/yocto/poky/build$&nbsp;</font></div></div><div>=
<br></div></body></html>=

--Apple-Mail=_F1C13FDB-DBD1-4407-BDE3-9CEAD5F37931--
