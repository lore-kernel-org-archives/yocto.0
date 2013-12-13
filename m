Return-Path: <visgupta07@gmail.com>
Received: from mail-pd0-f171.google.com (mail-pd0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 407B1E007D9
	for <yocto@yoctoproject.org>; Fri, 13 Dec 2013 06:05:32 -0800 (PST)
Received: by mail-pd0-f171.google.com with SMTP id z10so2528470pdj.30
	for <yocto@yoctoproject.org>; Fri, 13 Dec 2013 06:05:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type;
	bh=Lv3XzDnAP2iJ37JdvG9UR+ZxLyDJDZ/hGx5oE9ZqjXM=;
	b=rGiH0Ms3C5shRZeogg6LAyuN70z7ldIWUytiJelj4jSIHnxo3C6Yib1btJ4Vmwp5GM
	oxqmhYOwkBTKec2SUG6/or6fcp2ScKgAxnyOhORTtDjXO6DgLYZHMnGtSBuDIFiou9Ts
	8rFZQQghbxFbR+FH+ZICus89rTam7kZpmU3ZmNUMqHz1nZvsnWktODeBPGGEWqW3sgWn
	uQXafpDwWATQhE4NFgEk2YqO1/tJ0amgX5Ub90IO8pyiyTRkP7ZSDk0FO8yd38s+6wre
	o5GpxRBtJ145npOMyCSPnDpitulYetAFOxk7hpjgqwZVCvmvOOlCiDNgPfTnVcrbn3fj
	KlcQ==
MIME-Version: 1.0
X-Received: by 10.68.241.134 with SMTP id wi6mr3527442pbc.44.1386943531839;
	Fri, 13 Dec 2013 06:05:31 -0800 (PST)
Received: by 10.67.14.169 with HTTP; Fri, 13 Dec 2013 06:05:31 -0800 (PST)
Date: Fri, 13 Dec 2013 19:35:31 +0530
Message-ID: <CAMGfQQrvsr6_d8fx+8KcrVhXLiPWPOXy_+ojWNwoRiz5DQ_XSw@mail.gmail.com>
From: vishal gupta <visgupta07@gmail.com>
To: openembedded-devel@lists.openembedded.org
Cc: yocto@yoctoproject.org
Subject: Compiling the kernel source from Angstrom distribution & building an OS console-image.
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
X-List-Received-Date: Fri, 13 Dec 2013 14:05:33 -0000
Content-Type: multipart/alternative; boundary=047d7b339be78a046904ed6af418

--047d7b339be78a046904ed6af418
Content-Type: text/plain; charset=ISO-8859-1

 Hi, I'm having this issue, I'm not able to build an  OS console-image.

When the command "MACHINE=beagleboard bitbake console-image" is run, i got
the error as follows:

"
Log data follows:
| DEBUG: Executing shell function do_compileconfigs
| Multiple configs found, building those first
| NOTE: make -j2 oldconfig
| scripts/kconfig/conf -o arch/arm/Kconfig
| .config:341:warning: override: reassigning to symbol OABI_COMPAT
| .config:3041:warning: override: reassigning to symbol IKCONFIG
| .config:3042:warning: override: reassigning to symbol IKCONFIG_PROC
| .config:3057:warning: override: reassigning to symbol DEVTMPFS
| .config:3058:warning: override: reassigning to symbol DEVTMPFS_MOUNT
| *
| * Restart config...
| *
| *
| * Character devices
| *
| Virtual terminal (VT) [Y/n/?] y
|   Enable character translations in console (CONSOLE_TRANSLATIONS) [Y/n/?]
y
|   Support for console on virtual terminal (VT_CONSOLE) [Y/n/?] y
|   Support for binding and unbinding console drivers
(VT_HW_CONSOLE_BINDING) [Y/n/?] y
| /dev/kmem virtual device support (DEVKMEM) [Y/n/?] y
| Non-standard serial port support (SERIAL_NONSTANDARD) [N/y/?] n
| Unix98 PTY support (UNIX98_PTYS) [Y/n/?] (NEW)   Support multiple
instances of devpts (DEVPTS_MULTIPLE_INSTANCES) [N/y/?] n
| Legacy (BSD) PTY support (LEGACY_PTYS) [N/y/?] n
| Hardware Random Number Generator Core support (HW_RANDOM) [Y/n/m/?] y
|   Timer IOMEM HW Random Number Generator support (HW_RANDOM_TIMERIOMEM)
[N/m/y/?] n
| Siemens R3964 line discipline (R3964) [N/m/y/?] n
| RAW driver (/dev/raw/rawN) (RAW_DRIVER) [N/m/y/?] n
| *
| * Partition Types
| *
| Advanced partition selection (PARTITION_ADVANCED) [Y/n/?] y
|   Acorn partition support (ACORN_PARTITION) [N/y/?] n
|   Alpha OSF partition support (OSF_PARTITION) [N/y/?] n
|   Amiga partition table support (AMIGA_PARTITION) [N/y/?] n
|   Atari partition table support (ATARI_PARTITION) [N/y/?] n
|   Macintosh partition map support (MAC_PARTITION) [Y/n/?] y
|   PC BIOS (MSDOS partition tables) support (MSDOS_PARTITION) [Y/n/?] y
|     BSD disklabel (FreeBSD partition tables) support (BSD_DISKLABEL)
[Y/n/?] y
|     Minix subpartition support (MINIX_SUBPARTITION) [Y/n/?] y
|     Solaris (x86) partition table support (SOLARIS_X86_PARTITION) [Y/n/?]
y
|     Unixware slices support (UNIXWARE_DISKLABEL) [N/y/?] (NEW)   Windows
Logical Disk Manager (Dynamic Disk) support (LDM_PARTITION) [Y/n/?] y
|     Windows LDM extra logging (LDM_DEBUG) [Y/n/?] y
|   SGI partition support (SGI_PARTITION) [N/y/?] n
|   Ultrix partition table support (ULTRIX_PARTITION) [N/y/?] n
|   Sun partition tables support (SUN_PARTITION) [N/y/?] n
|   Karma Partition support (KARMA_PARTITION) [N/y/?] n
|   EFI GUID Partition support (EFI_PARTITION) [Y/n/?] y
|   SYSV68 partition table support (SYSV68_PARTITION) [N/y/?] n
| *
| * OCF Configuration
| *
| OCF (Open Cryptograhic Framework) (OCF_OCF) [N/m/y/?] (NEW) #
| # configuration written to .config
| #
| NOTE: make -j2 oldconfig
| scripts/kconfig/conf -o arch/arm/Kconfig
| #
| # configuration written to .config
| #
| NOTE: make -j2 uImage CC=arm-angstrom-linux-gnueabi-gcc
-mno-thumb-interwork -marm
--sysroot=/home/vishal/oe-nad/setup-scripts/build/tmp-angstrom_v2012_12-eglibc/sysroots/beagleboard
LD=arm-angstrom-linux-gnueabi-ld
--sysroot=/home/vishal/oe-nad/setup-scripts/build/tmp-angstrom_v2012_12-eglibc/sysroots/beagleboard
| scripts/kconfig/conf -s arch/arm/Kconfig
|   CHK     include/linux/version.h
|   SYMLINK include/asm -> include/asm-arm
| make[1]: `include/asm-arm/mach-types.h' is up to date.
|   CHK     include/linux/utsrelease.h
|   CALL    scripts/checksyscalls.sh
| <stdin>:1523:2: warning: #warning syscall recvmmsg not implemented [-Wcpp]
|   CHK     include/linux/compile.h
|   GZIP    kernel/config_data.gz
|   IKCFG   kernel/config_data.h
|   CC      kernel/configs.o
|   LD      kernel/built-in.o
|   LOGO    drivers/video/logo/logo_linux_clut224.c
|   CC      drivers/video/logo/logo_linux_clut224.o
|   LD      drivers/video/logo/built-in.o
|   LD      drivers/video/built-in.o
|   LD      drivers/built-in.o
|   LD      vmlinux.o
|   MODPOST vmlinux.o
|   GEN     .version
|   CHK     include/linux/compile.h
|   UPD     include/linux/compile.h
|   CC      init/version.o
|   LD      init/built-in.o
|   LD      .tmp_vmlinux1
|   KSYM    .tmp_kallsyms1.S
|   AS      .tmp_kallsyms1.o
|   LD      .tmp_vmlinux2
|   KSYM    .tmp_kallsyms2.S
|   AS      .tmp_kallsyms2.o
|   LD      vmlinux
|   SYSMAP  System.map
|   SYSMAP  .tmp_System.map
|   OBJCOPY arch/arm/boot/Image
|   Kernel: arch/arm/boot/Image is ready
|   GZIP    arch/arm/boot/compressed/piggy.gz
|   AS      arch/arm/boot/compressed/piggy.o
|   LD      arch/arm/boot/compressed/vmlinux
|   OBJCOPY arch/arm/boot/zImage
|   Kernel: arch/arm/boot/zImage is ready
|   UIMAGE  arch/arm/boot/uImage
| Image Name:   Linux-2.6.32
| Created:      Fri Dec 13 16:13:18 2013
| Image Type:   ARM Linux Kernel Image (uncompressed)
| Data Size:    3134344 Bytes = 3060.88 kB = 2.99 MB
| Load Address: 80008000
| Entry Point:  80008000
|   Image arch/arm/boot/uImage is ready
| NOTE: make -j2 -j2 modules CC=arm-angstrom-linux-gnueabi-gcc
-mno-thumb-interwork -marm
--sysroot=/home/vishal/oe-nad/setup-scripts/build/tmp-angstrom_v2012_12-eglibc/sysroots/beagleboard
LD=arm-angstrom-linux-gnueabi-ld
--sysroot=/home/vishal/oe-nad/setup-scripts/build/tmp-angstrom_v2012_12-eglibc/sysroots/beagleboard
|   CHK     include/linux/version.h
|   SYMLINK include/asm -> include/asm-arm
| make[1]: `include/asm-arm/mach-types.h' is up to date.
|   CHK     include/linux/utsrelease.h
|   CALL    scripts/checksyscalls.sh
| <stdin>:1523:2: warning: #warning syscall recvmmsg not implemented [-Wcpp]
|   Building modules, stage 2.
|   MODPOST 699 modules
| NOTE: make -j2 DEPMOD=echo
INSTALL_MOD_PATH=/home/vishal/oe-nad/setup-scripts/build/tmp-angstrom_v2012_12-eglibc/work/beagleboard-angstrom-linux-gnueabi/linux-omap-psp-2.6.32-r122c+gitr5fc29e7b2a76a64a739f857858ef0b98294aa155/image
modules_install
| Warning: you may need to install module-init-tools
| See http://www.codemonkey.org.uk/docs/post-halloween-2.6.txt


///////There is a big list of install module-init-tools which i have
deleted as log is big/////////////


|   DEPMOD  2.6.32
| NOTE: make -j2 -C
/home/vishal/oe-nad/setup-scripts/build/tmp-angstrom_v2012_12-eglibc/work/beagleboard-angstrom-linux-gnueabi/linux-omap-psp-2.6.32-r122c+gitr5fc29e7b2a76a64a739f857858ef0b98294aa155/image/usr/src/kernel
CC=arm-angstrom-linux-gnueabi-gcc  -mno-thumb-interwork -marm
--sysroot=/home/vishal/oe-nad/setup-scripts/build/tmp-angstrom_v2012_12-eglibc/sysroots/beagleboard
LD=arm-angstrom-linux-gnueabi-ld
--sysroot=/home/vishal/oe-nad/setup-scripts/build/tmp-angstrom_v2012_12-eglibc/sysroots/beagleboard
clean
| make: Entering directory
`/home/vishal/oe-nad/setup-scripts/build/tmp-angstrom_v2012_12-eglibc/work/beagleboard-angstrom-linux-gnueabi/linux-omap-psp-2.6.32-r122c+gitr5fc29e7b2a76a64a739f857858ef0b98294aa155/image/usr/src/kernel'
|   CLEAN   arch/arm/boot/compressed
|   CLEAN   arch/arm/boot
|   CLEAN
/home/vishal/oe-nad/setup-scripts/build/tmp-angstrom_v2012_12-eglibc/work/beagleboard-angstrom-linux-gnueabi/linux-omap-psp-2.6.32-r122c+gitr5fc29e7b2a76a64a739f857858ef0b98294aa155/image/usr/src/kernel
|   CLEAN   arch/arm/kernel
|
/home/vishal/oe-nad/setup-scripts/build/tmp-angstrom_v2012_12-eglibc/work/beagleboard-angstrom-linux-gnueabi/linux-omap-psp-2.6.32-r122c+gitr5fc29e7b2a76a64a739f857858ef0b98294aa155/image/usr/src/kernel/crypto/ocf/ep80579/Makefile:75:
ICP_ROOT is undefined. Please set the path to EP80579 release package
directory "-> setenv ICP_ROOT <path>"
|   CLEAN   firmware
|   CLEAN   drivers/char
|   CLEAN   drivers/md
|   CLEAN   init
|   CLEAN   kernel
|   CLEAN   lib
|   CLEAN   drivers/video/logo
|   CLEAN   usr
|   CLEAN   include/asm-arm/mach-types.h vmlinux System.map
| make: Leaving directory
`/home/vishal/oe-nad/setup-scripts/build/tmp-angstrom_v2012_12-eglibc/work/beagleboard-angstrom-linux-gnueabi/linux-omap-psp-2.6.32-r122c+gitr5fc29e7b2a76a64a739f857858ef0b98294aa155/image/usr/src/kernel'
| make: Entering directory
`/home/vishal/oe-nad/setup-scripts/build/tmp-angstrom_v2012_12-eglibc/work/beagleboard-angstrom-linux-gnueabi/linux-omap-psp-2.6.32-r122c+gitr5fc29e7b2a76a64a739f857858ef0b98294aa155/image/usr/src/kernel'
|   HOSTCC  scripts/basic/fixdep
|   HOSTCC  scripts/basic/docproc
|   HOSTCC  scripts/basic/hash
|   HOSTCC  scripts/kconfig/conf.o
| scripts/kconfig/conf.c: In function 'conf_sym':
| scripts/kconfig/conf.c:159:6: warning: variable 'type' set but not used
[-Wunused-but-set-variable]
| scripts/kconfig/conf.c: In function 'conf_choice':
| scripts/kconfig/conf.c:231:6: warning: variable 'type' set but not used
[-Wunused-but-set-variable]
| scripts/kconfig/conf.c:307:9: warning: ignoring return value of 'fgets',
declared with attribute warn_unused_result [-Wunused-result]
| scripts/kconfig/conf.c: In function 'conf_askvalue':
| scripts/kconfig/conf.c:105:8: warning: ignoring return value of 'fgets',
declared with attribute warn_unused_result [-Wunused-result]
|   HOSTCC  scripts/kconfig/kxgettext.o
|   SHIPPED scripts/kconfig/lex.zconf.c
|   HOSTCC  scripts/kconfig/zconf.tab.o
|   HOSTLD  scripts/kconfig/conf
| scripts/kconfig/conf -s arch/arm/Kconfig
| make: Leaving directory
`/home/vishal/oe-nad/setup-scripts/build/tmp-angstrom_v2012_12-eglibc/work/beagleboard-angstrom-linux-gnueabi/linux-omap-psp-2.6.32-r122c+gitr5fc29e7b2a76a64a739f857858ef0b98294aa155/image/usr/src/kernel'
| make: Entering directory
`/home/vishal/oe-nad/setup-scripts/build/tmp-angstrom_v2012_12-eglibc/work/beagleboard-angstrom-linux-gnueabi/linux-omap-psp-2.6.32-r122c+gitr5fc29e7b2a76a64a739f857858ef0b98294aa155/image/usr/src/kernel'
|   CLEAN   scripts/basic
|   CLEAN   scripts/genksyms
|   CLEAN   scripts/kconfig
|   CLEAN   scripts/mod
|   CLEAN   scripts
| make: Leaving directory
`/home/vishal/oe-nad/setup-scripts/build/tmp-angstrom_v2012_12-eglibc/work/beagleboard-angstrom-linux-gnueabi/linux-omap-psp-2.6.32-r122c+gitr5fc29e7b2a76a64a739f857858ef0b98294aa155/image/usr/src/kernel'
|

* cp: cannot stat `include/generated/bounds.h': No such file or directory|
ERROR: Function failed: do_compileconfigs (see
/home/vishal/oe-nad/setup-scripts/build/tmp-angstrom_v2012_12-eglibc/work/beagleboard-angstrom-linux-gnueabi/linux-omap-psp-2.6.32-r122c+gitr5fc29e7b2a76a64a739f857858ef0b98294aa155/temp/log.do_compileconfigs.22554
for further information)ERROR: Task 635
(/home/vishal/oe-nad/setup-scripts/sources/meta-ti/recipes-kernel/linux/linux-omap-psp_2.6.32.bb
<http://linux-omap-psp_2.6.32.bb>, do_compileconfigs) failed with exit code
'1'*
NOTE: Tasks Summary: Attempted 3197 tasks of which 3182 didn't need to be
rerun and 1 failed.
No currently running tasks (3168 of 3276)

Summary: 1 task failed:
  /home/vishal/oe-nad/setup-scripts/sources/meta-ti/recipes-kernel/linux/
linux-omap-psp_2.6.32.bb, do_compileconfigs
Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.
"

Please point me towards the solution as i am not getting much data for the
ERROR: Function failed: do_compileconfigs specific to my build over net.
Or It will be helpful if anyone comments on the error.

Vishal

--047d7b339be78a046904ed6af418
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div> Hi, I&#39;m having this issue, I&#39;m not able to b=
uild an=A0 OS console-image.<br><br>When the command &quot;MACHINE=3Dbeagle=
board bitbake console-image&quot; is run, i got the error as follows:<br></=
div>
<br><div>&quot;<br>Log data follows:<br>| DEBUG: Executing shell function d=
o_compileconfigs<br>| Multiple configs found, building those first<br>| NOT=
E: make -j2 oldconfig<br>| scripts/kconfig/conf -o arch/arm/Kconfig<br>
| .config:341:warning: override: reassigning to symbol OABI_COMPAT<br>| .co=
nfig:3041:warning: override: reassigning to symbol IKCONFIG<br>| .config:30=
42:warning: override: reassigning to symbol IKCONFIG_PROC<br>| .config:3057=
:warning: override: reassigning to symbol DEVTMPFS<br>
| .config:3058:warning: override: reassigning to symbol DEVTMPFS_MOUNT<br>|=
 *<br>| * Restart config...<br>| *<br>| *<br>| * Character devices<br>| *<b=
r>| Virtual terminal (VT) [Y/n/?] y<br>|=A0=A0 Enable character translation=
s in console (CONSOLE_TRANSLATIONS) [Y/n/?] y<br>
|=A0=A0 Support for console on virtual terminal (VT_CONSOLE) [Y/n/?] y<br>|=
=A0=A0 Support for binding and unbinding console drivers (VT_HW_CONSOLE_BIN=
DING) [Y/n/?] y<br>| /dev/kmem virtual device support (DEVKMEM) [Y/n/?] y<b=
r>| Non-standard serial port support (SERIAL_NONSTANDARD) [N/y/?] n<br>
| Unix98 PTY support (UNIX98_PTYS) [Y/n/?] (NEW)=A0=A0 Support multiple ins=
tances of devpts (DEVPTS_MULTIPLE_INSTANCES) [N/y/?] n<br>| Legacy (BSD) PT=
Y support (LEGACY_PTYS) [N/y/?] n<br>| Hardware Random Number Generator Cor=
e support (HW_RANDOM) [Y/n/m/?] y<br>
|=A0=A0 Timer IOMEM HW Random Number Generator support (HW_RANDOM_TIMERIOME=
M) [N/m/y/?] n<br>| Siemens R3964 line discipline (R3964) [N/m/y/?] n<br>| =
RAW driver (/dev/raw/rawN) (RAW_DRIVER) [N/m/y/?] n<br>| *<br>| * Partition=
 Types<br>
| *<br>| Advanced partition selection (PARTITION_ADVANCED) [Y/n/?] y<br>|=
=A0=A0 Acorn partition support (ACORN_PARTITION) [N/y/?] n<br>|=A0=A0 Alpha=
 OSF partition support (OSF_PARTITION) [N/y/?] n<br>|=A0=A0 Amiga partition=
 table support (AMIGA_PARTITION) [N/y/?] n<br>
|=A0=A0 Atari partition table support (ATARI_PARTITION) [N/y/?] n<br>|=A0=
=A0 Macintosh partition map support (MAC_PARTITION) [Y/n/?] y<br>|=A0=A0 PC=
 BIOS (MSDOS partition tables) support (MSDOS_PARTITION) [Y/n/?] y<br>|=A0=
=A0=A0=A0 BSD disklabel (FreeBSD partition tables) support (BSD_DISKLABEL) =
[Y/n/?] y<br>
|=A0=A0=A0=A0 Minix subpartition support (MINIX_SUBPARTITION) [Y/n/?] y<br>=
|=A0=A0=A0=A0 Solaris (x86) partition table support (SOLARIS_X86_PARTITION)=
 [Y/n/?] y<br>|=A0=A0=A0=A0 Unixware slices support (UNIXWARE_DISKLABEL) [N=
/y/?] (NEW)=A0=A0 Windows Logical Disk Manager (Dynamic Disk) support (LDM_=
PARTITION) [Y/n/?] y<br>
|=A0=A0=A0=A0 Windows LDM extra logging (LDM_DEBUG) [Y/n/?] y<br>|=A0=A0 SG=
I partition support (SGI_PARTITION) [N/y/?] n<br>|=A0=A0 Ultrix partition t=
able support (ULTRIX_PARTITION) [N/y/?] n<br>|=A0=A0 Sun partition tables s=
upport (SUN_PARTITION) [N/y/?] n<br>
|=A0=A0 Karma Partition support (KARMA_PARTITION) [N/y/?] n<br>|=A0=A0 EFI =
GUID Partition support (EFI_PARTITION) [Y/n/?] y<br>|=A0=A0 SYSV68 partitio=
n table support (SYSV68_PARTITION) [N/y/?] n<br>| *<br>| * OCF Configuratio=
n<br>| *<br>
| OCF (Open Cryptograhic Framework) (OCF_OCF) [N/m/y/?] (NEW) #<br>| # conf=
iguration written to .config<br>| #<br>| NOTE: make -j2 oldconfig<br>| scri=
pts/kconfig/conf -o arch/arm/Kconfig<br>| #<br>| # configuration written to=
 .config<br>
| #<br>| NOTE: make -j2 uImage CC=3Darm-angstrom-linux-gnueabi-gcc=A0 -mno-=
thumb-interwork -marm --sysroot=3D/home/vishal/oe-nad/setup-scripts/build/t=
mp-angstrom_v2012_12-eglibc/sysroots/beagleboard LD=3Darm-angstrom-linux-gn=
ueabi-ld=A0=A0 --sysroot=3D/home/vishal/oe-nad/setup-scripts/build/tmp-angs=
trom_v2012_12-eglibc/sysroots/beagleboard<br>
| scripts/kconfig/conf -s arch/arm/Kconfig<br>|=A0=A0 CHK=A0=A0=A0=A0 inclu=
de/linux/version.h<br>|=A0=A0 SYMLINK include/asm -&gt; include/asm-arm<br>=
| make[1]: `include/asm-arm/mach-types.h&#39; is up to date.<br>|=A0=A0 CHK=
=A0=A0=A0=A0 include/linux/utsrelease.h<br>
|=A0=A0 CALL=A0=A0=A0 scripts/checksyscalls.sh<br>| &lt;stdin&gt;:1523:2: w=
arning: #warning syscall recvmmsg not implemented [-Wcpp]<br>|=A0=A0 CHK=A0=
=A0=A0=A0 include/linux/compile.h<br>|=A0=A0 GZIP=A0=A0=A0 kernel/config_da=
ta.gz<br>|=A0=A0 IKCFG=A0=A0 kernel/config_data.h<br>
|=A0=A0 CC=A0=A0=A0=A0=A0 kernel/configs.o<br>|=A0=A0 LD=A0=A0=A0=A0=A0 ker=
nel/built-in.o<br>|=A0=A0 LOGO=A0=A0=A0 drivers/video/logo/logo_linux_clut2=
24.c<br>|=A0=A0 CC=A0=A0=A0=A0=A0 drivers/video/logo/logo_linux_clut224.o<b=
r>|=A0=A0 LD=A0=A0=A0=A0=A0 drivers/video/logo/built-in.o<br>|=A0=A0 LD=A0=
=A0=A0=A0=A0 drivers/video/built-in.o<br>
|=A0=A0 LD=A0=A0=A0=A0=A0 drivers/built-in.o<br>|=A0=A0 LD=A0=A0=A0=A0=A0 v=
mlinux.o<br>|=A0=A0 MODPOST vmlinux.o<br>|=A0=A0 GEN=A0=A0=A0=A0 .version<b=
r>|=A0=A0 CHK=A0=A0=A0=A0 include/linux/compile.h<br>|=A0=A0 UPD=A0=A0=A0=
=A0 include/linux/compile.h<br>|=A0=A0 CC=A0=A0=A0=A0=A0 init/version.o<br>=
|=A0=A0 LD=A0=A0=A0=A0=A0 init/built-in.o<br>
|=A0=A0 LD=A0=A0=A0=A0=A0 .tmp_vmlinux1<br>|=A0=A0 KSYM=A0=A0=A0 .tmp_kalls=
yms1.S<br>|=A0=A0 AS=A0=A0=A0=A0=A0 .tmp_kallsyms1.o<br>|=A0=A0 LD=A0=A0=A0=
=A0=A0 .tmp_vmlinux2<br>|=A0=A0 KSYM=A0=A0=A0 .tmp_kallsyms2.S<br>|=A0=A0 A=
S=A0=A0=A0=A0=A0 .tmp_kallsyms2.o<br>|=A0=A0 LD=A0=A0=A0=A0=A0 vmlinux<br>|=
=A0=A0 SYSMAP=A0 System.map<br>
|=A0=A0 SYSMAP=A0 .tmp_System.map<br>|=A0=A0 OBJCOPY arch/arm/boot/Image<br=
>|=A0=A0 Kernel: arch/arm/boot/Image is ready<br>|=A0=A0 GZIP=A0=A0=A0 arch=
/arm/boot/compressed/piggy.gz<br>|=A0=A0 AS=A0=A0=A0=A0=A0 arch/arm/boot/co=
mpressed/piggy.o<br>|=A0=A0 LD=A0=A0=A0=A0=A0 arch/arm/boot/compressed/vmli=
nux<br>
|=A0=A0 OBJCOPY arch/arm/boot/zImage<br>|=A0=A0 Kernel: arch/arm/boot/zImag=
e is ready<br>|=A0=A0 UIMAGE=A0 arch/arm/boot/uImage<br>| Image Name:=A0=A0=
 Linux-2.6.32<br>| Created:=A0=A0=A0=A0=A0 Fri Dec 13 16:13:18 2013<br>| Im=
age Type:=A0=A0 ARM Linux Kernel Image (uncompressed)<br>
| Data Size:=A0=A0=A0 3134344 Bytes =3D 3060.88 kB =3D 2.99 MB<br>| Load Ad=
dress: 80008000<br>| Entry Point:=A0 80008000<br>|=A0=A0 Image arch/arm/boo=
t/uImage is ready<br>| NOTE: make -j2 -j2 modules CC=3Darm-angstrom-linux-g=
nueabi-gcc=A0 -mno-thumb-interwork -marm --sysroot=3D/home/vishal/oe-nad/se=
tup-scripts/build/tmp-angstrom_v2012_12-eglibc/sysroots/beagleboard LD=3Dar=
m-angstrom-linux-gnueabi-ld=A0=A0 --sysroot=3D/home/vishal/oe-nad/setup-scr=
ipts/build/tmp-angstrom_v2012_12-eglibc/sysroots/beagleboard<br>
|=A0=A0 CHK=A0=A0=A0=A0 include/linux/version.h<br>|=A0=A0 SYMLINK include/=
asm -&gt; include/asm-arm<br>| make[1]: `include/asm-arm/mach-types.h&#39; =
is up to date.<br>|=A0=A0 CHK=A0=A0=A0=A0 include/linux/utsrelease.h<br>|=
=A0=A0 CALL=A0=A0=A0 scripts/checksyscalls.sh<br>
| &lt;stdin&gt;:1523:2: warning: #warning syscall recvmmsg not implemented =
[-Wcpp]<br>|=A0=A0 Building modules, stage 2.<br>|=A0=A0 MODPOST 699 module=
s<br>| NOTE: make -j2 DEPMOD=3Decho INSTALL_MOD_PATH=3D/home/vishal/oe-nad/=
setup-scripts/build/tmp-angstrom_v2012_12-eglibc/work/beagleboard-angstrom-=
linux-gnueabi/linux-omap-psp-2.6.32-r122c+gitr5fc29e7b2a76a64a739f857858ef0=
b98294aa155/image modules_install<br>
| Warning: you may need to install module-init-tools<br>| See <a href=3D"ht=
tp://www.codemonkey.org.uk/docs/post-halloween-2.6.txt">http://www.codemonk=
ey.org.uk/docs/post-halloween-2.6.txt</a><br><br><br></div><div>///////Ther=
e is a big list of install module-init-tools which i have deleted as log is=
 big/////////////<br>
</div><div><br><br>|=A0=A0 DEPMOD=A0 2.6.32<br>| NOTE: make -j2 -C /home/vi=
shal/oe-nad/setup-scripts/build/tmp-angstrom_v2012_12-eglibc/work/beagleboa=
rd-angstrom-linux-gnueabi/linux-omap-psp-2.6.32-r122c+gitr5fc29e7b2a76a64a7=
39f857858ef0b98294aa155/image/usr/src/kernel CC=3Darm-angstrom-linux-gnueab=
i-gcc=A0 -mno-thumb-interwork -marm --sysroot=3D/home/vishal/oe-nad/setup-s=
cripts/build/tmp-angstrom_v2012_12-eglibc/sysroots/beagleboard LD=3Darm-ang=
strom-linux-gnueabi-ld=A0=A0 --sysroot=3D/home/vishal/oe-nad/setup-scripts/=
build/tmp-angstrom_v2012_12-eglibc/sysroots/beagleboard clean<br>
| make: Entering directory `/home/vishal/oe-nad/setup-scripts/build/tmp-ang=
strom_v2012_12-eglibc/work/beagleboard-angstrom-linux-gnueabi/linux-omap-ps=
p-2.6.32-r122c+gitr5fc29e7b2a76a64a739f857858ef0b98294aa155/image/usr/src/k=
ernel&#39;<br>
|=A0=A0 CLEAN=A0=A0 arch/arm/boot/compressed<br>|=A0=A0 CLEAN=A0=A0 arch/ar=
m/boot<br>|=A0=A0 CLEAN=A0=A0 /home/vishal/oe-nad/setup-scripts/build/tmp-a=
ngstrom_v2012_12-eglibc/work/beagleboard-angstrom-linux-gnueabi/linux-omap-=
psp-2.6.32-r122c+gitr5fc29e7b2a76a64a739f857858ef0b98294aa155/image/usr/src=
/kernel<br>
|=A0=A0 CLEAN=A0=A0 arch/arm/kernel<br>| /home/vishal/oe-nad/setup-scripts/=
build/tmp-angstrom_v2012_12-eglibc/work/beagleboard-angstrom-linux-gnueabi/=
linux-omap-psp-2.6.32-r122c+gitr5fc29e7b2a76a64a739f857858ef0b98294aa155/im=
age/usr/src/kernel/crypto/ocf/ep80579/Makefile:75: ICP_ROOT is undefined. P=
lease set the path to EP80579 release package directory &quot;-&gt; setenv =
ICP_ROOT &lt;path&gt;&quot;<br>
|=A0=A0 CLEAN=A0=A0 firmware<br>|=A0=A0 CLEAN=A0=A0 drivers/char<br>|=A0=A0=
 CLEAN=A0=A0 drivers/md<br>|=A0=A0 CLEAN=A0=A0 init<br>|=A0=A0 CLEAN=A0=A0 =
kernel<br>|=A0=A0 CLEAN=A0=A0 lib<br>|=A0=A0 CLEAN=A0=A0 drivers/video/logo=
<br>|=A0=A0 CLEAN=A0=A0 usr<br>|=A0=A0 CLEAN=A0=A0 include/asm-arm/mach-typ=
es.h vmlinux System.map<br>
| make: Leaving directory `/home/vishal/oe-nad/setup-scripts/build/tmp-angs=
trom_v2012_12-eglibc/work/beagleboard-angstrom-linux-gnueabi/linux-omap-psp=
-2.6.32-r122c+gitr5fc29e7b2a76a64a739f857858ef0b98294aa155/image/usr/src/ke=
rnel&#39;<br>
| make: Entering directory `/home/vishal/oe-nad/setup-scripts/build/tmp-ang=
strom_v2012_12-eglibc/work/beagleboard-angstrom-linux-gnueabi/linux-omap-ps=
p-2.6.32-r122c+gitr5fc29e7b2a76a64a739f857858ef0b98294aa155/image/usr/src/k=
ernel&#39;<br>
|=A0=A0 HOSTCC=A0 scripts/basic/fixdep<br>|=A0=A0 HOSTCC=A0 scripts/basic/d=
ocproc<br>|=A0=A0 HOSTCC=A0 scripts/basic/hash<br>|=A0=A0 HOSTCC=A0 scripts=
/kconfig/conf.o<br>| scripts/kconfig/conf.c: In function &#39;conf_sym&#39;=
:<br>| scripts/kconfig/conf.c:159:6: warning: variable &#39;type&#39; set b=
ut not used [-Wunused-but-set-variable]<br>
| scripts/kconfig/conf.c: In function &#39;conf_choice&#39;:<br>| scripts/k=
config/conf.c:231:6: warning: variable &#39;type&#39; set but not used [-Wu=
nused-but-set-variable]<br>| scripts/kconfig/conf.c:307:9: warning: ignorin=
g return value of &#39;fgets&#39;, declared with attribute warn_unused_resu=
lt [-Wunused-result]<br>
| scripts/kconfig/conf.c: In function &#39;conf_askvalue&#39;:<br>| scripts=
/kconfig/conf.c:105:8: warning: ignoring return value of &#39;fgets&#39;, d=
eclared with attribute warn_unused_result [-Wunused-result]<br>|=A0=A0 HOST=
CC=A0 scripts/kconfig/kxgettext.o<br>
|=A0=A0 SHIPPED scripts/kconfig/lex.zconf.c<br>|=A0=A0 HOSTCC=A0 scripts/kc=
onfig/zconf.tab.o<br>|=A0=A0 HOSTLD=A0 scripts/kconfig/conf<br>| scripts/kc=
onfig/conf -s arch/arm/Kconfig<br>| make: Leaving directory `/home/vishal/o=
e-nad/setup-scripts/build/tmp-angstrom_v2012_12-eglibc/work/beagleboard-ang=
strom-linux-gnueabi/linux-omap-psp-2.6.32-r122c+gitr5fc29e7b2a76a64a739f857=
858ef0b98294aa155/image/usr/src/kernel&#39;<br>
| make: Entering directory `/home/vishal/oe-nad/setup-scripts/build/tmp-ang=
strom_v2012_12-eglibc/work/beagleboard-angstrom-linux-gnueabi/linux-omap-ps=
p-2.6.32-r122c+gitr5fc29e7b2a76a64a739f857858ef0b98294aa155/image/usr/src/k=
ernel&#39;<br>
|=A0=A0 CLEAN=A0=A0 scripts/basic<br>|=A0=A0 CLEAN=A0=A0 scripts/genksyms<b=
r>|=A0=A0 CLEAN=A0=A0 scripts/kconfig<br>|=A0=A0 CLEAN=A0=A0 scripts/mod<br=
>|=A0=A0 CLEAN=A0=A0 scripts<br>| make: Leaving directory `/home/vishal/oe-=
nad/setup-scripts/build/tmp-angstrom_v2012_12-eglibc/work/beagleboard-angst=
rom-linux-gnueabi/linux-omap-psp-2.6.32-r122c+gitr5fc29e7b2a76a64a739f85785=
8ef0b98294aa155/image/usr/src/kernel&#39;<br>
|<span style=3D"background-color:rgb(255,0,0)"><b> cp: cannot stat `include=
/generated/bounds.h&#39;: No such file or directory<br>| ERROR: Function fa=
iled: do_compileconfigs (see /home/vishal/oe-nad/setup-scripts/build/tmp-an=
gstrom_v2012_12-eglibc/work/beagleboard-angstrom-linux-gnueabi/linux-omap-p=
sp-2.6.32-r122c+gitr5fc29e7b2a76a64a739f857858ef0b98294aa155/temp/log.do_co=
mpileconfigs.22554 for further information)<br>
ERROR: Task 635 (/home/vishal/oe-nad/setup-scripts/sources/meta-ti/recipes-=
kernel/linux/<a href=3D"http://linux-omap-psp_2.6.32.bb">linux-omap-psp_2.6=
.32.bb</a>, do_compileconfigs) failed with exit code &#39;1&#39;</b></span>=
<br>
NOTE: Tasks Summary: Attempted 3197 tasks of which 3182 didn&#39;t need to =
be rerun and 1 failed.<br>No currently running tasks (3168 of 3276)<br><br>=
Summary: 1 task failed:<br>=A0 /home/vishal/oe-nad/setup-scripts/sources/me=
ta-ti/recipes-kernel/linux/<a href=3D"http://linux-omap-psp_2.6.32.bb">linu=
x-omap-psp_2.6.32.bb</a>, do_compileconfigs<br>
Summary: There was 1 WARNING message shown.<br>Summary: There was 1 ERROR m=
essage shown, returning a non-zero exit code.<br>&quot;<br><br></div><div>P=
lease point me towards the solution as i am not getting much data for the  =
ERROR: Function failed: do_compileconfigs specific to my build over net.<br=
>
</div><div>Or It will be helpful if anyone comments on the error.<br>=A0<br=
></div><div>Vishal<br></div><div><br></div><div><br></div></div>

--047d7b339be78a046904ed6af418--
