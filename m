Return-Path: <vidal.develone@gmail.com>
Received: from mail-ea0-f181.google.com (mail-ea0-f181.google.com
	[209.85.215.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCCFBE0045D
	for <yocto@yoctoproject.org>; Tue,  1 Jan 2013 15:37:49 -0800 (PST)
Received: by mail-ea0-f181.google.com with SMTP id k14so5505598eaa.12
	for <yocto@yoctoproject.org>; Tue, 01 Jan 2013 15:37:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=8iQ6fx2XgKUTjzcFpKddRocekOy11cOgHeXzyraNM+c=;
	b=awRsonQODO+9cZyC9oGY9aBfVUieuT7svvJcakw3cKs/+OVJc55D5KK4tltE+pQluZ
	7BtKcIqvD2hUZ7yvKb2Dqw1JP6qKOElNfK5r/Xes5utsi6vfk1Zqi98ABsaarLjeW21Q
	N1Xol+46T8Th4Pq4mH0XZjBsCE60bxP9OKcqeTm6B+5B+aseSo2ztDUU9xH7KJQeZglj
	b/633VF870AhDHz3SEudBf2IvwuDIhlj+miP28rREyn/LwzBkuNM+mS3AveBSrDsqIwK
	3CcaJmBL4wjbfy+e5fzs3IlCsjXnG7NFCoD6FimOhzy3UIpKB5hTA7K56s6F5Qgs2ExW
	eQ8Q==
MIME-Version: 1.0
Received: by 10.14.218.69 with SMTP id j45mr120663464eep.35.1357083468179;
	Tue, 01 Jan 2013 15:37:48 -0800 (PST)
Received: by 10.223.160.16 with HTTP; Tue, 1 Jan 2013 15:37:48 -0800 (PST)
In-Reply-To: <CANwz6nwnXZkbxU-5TvktzNfdWXwm_JkjwOrLW6d7acuMjohsXg@mail.gmail.com>
References: <CANwz6nwnXZkbxU-5TvktzNfdWXwm_JkjwOrLW6d7acuMjohsXg@mail.gmail.com>
Date: Tue, 1 Jan 2013 16:37:48 -0700
Message-ID: <CANwz6nxROCQyz4t3MvY6D9ACtq_DcKhay7LUmr4OLfXC4_ieOA@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: yocto@yoctoproject.org
Subject: meta-ti with yocto
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
X-List-Received-Date: Tue, 01 Jan 2013 23:37:50 -0000
Content-Type: multipart/alternative; boundary=047d7b6042fa0d290804d2429eed

--047d7b6042fa0d290804d2429eed
Content-Type: text/plain; charset=ISO-8859-1

---------- Forwarded message ----------
From: Edward Vidal <vidal.develone@gmail.com>
Date: Mon, Dec 31, 2012 at 12:49 PM
Subject: meta-ti with yocto
To: yocto@yoctoproject.org


Hello,
 Any help will be appreciated..

Following the steps at site
*http://maniacbug.wordpress.com/2012/08/03/pandayocto/* with minor
changes.
Not using poky-denzil-7.0 instead using latest version as of 12/22/12 (see
below). Did not git checkout 30fb40ebc13614a74c2e237927c60ac43e01d1bc
instead used version that was 07/09/12 which follows oe-core to v5.0. The
changes described were modified (see below diff local.conf &
local.conf.installed ) since quotes were needed for MACHINE & BBMASK. I
also tried with a build using Angstrom which fails but does create a kernel
uImage using linux-omap4-3.1.0-r1a. The meta-ti with yocto is fetching
linux-omap4-3.1.0-r0 which fails at do_fetch. This was fixed with a manual
fetch (see below on steps to download the kernel). Now the problem is
getting the pandaboard to boot.

Does a build with yocto and meta-ti require an initrd file? Does anyone
have a working uEnv.txt for the pandaboard?

Build system Fedora17 x86_17

cd /home/vidal/POKY/build122912_panda/

git clone git://git.yoctoproject.org/poky.git

cd poky

git clone *https://github.com/Angstrom-distribution/meta-ti.git*

/home/vidal/POKY/build122912_panda/poky

commit 4a36a32567ecfbc7ce7b967803e6e23314953ef5


 Author: Martin Jansa <martin.jansa at gmail.com
<http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/angstrom-distro-devel>>


 Date: Sat Dec 22 17:24:20 2012 +0100




 libpng: fix packaging



 * PN-LIBV is not needed, was used to package libpng12 from libpng3 build


 now only libpng15 is built.


 * if you're not using OEBasicHash + PRserv you need to rebuild and


 reinstall a lot of packages to upgrade to libpng-1.5 correctly



 (From OE-Core rev: 69bbce0176183b0dc14eda21e4f6b601443060f0)



 Signed-off-by: Martin Jansa <Martin.Jansa at gmail.com
<http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/angstrom-distro-devel>>


 Signed-off-by: Saul Wold <sgw at linux.intel.com
<http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/angstrom-distro-devel>>


 Signed-off-by: Richard Purdie <richard.purdie at linuxfoundation.org
<http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/angstrom-distro-devel>>


 /home/vidal/POKY/build122912_panda/poky/build/conf/local.conf

*********************************************************

----------new text--------------


 MACHINE ?= "pandaboard"


 BBMASK = "meta-ti/recipes-misc"


 ----------new text--------------

----------additional text--------------

----------modified text--------------

BB_NUMBER_THREADS = "8"

----------modified text--------------

----------additional text--------------

----------modified text--------------

PARALLEL_MAKE = "-j 8"

----------modified text--------------

----------additional text--------------

----------modified text--------------

DL_DIR ?= "/home/vidal/POKY/linux_sr_dnloads_panda/downloads"

----------modified text--------------

----------additional text--------------

*********************************************************

/home/vidal/POKY/build129112_panda/poky/build/conf/bblayers.conf

*********************************************************


 # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf


 # changes incompatibly


 LCONF_VERSION = "6"




 BBPATH = "${TOPDIR}"


 BBFILES ?= ""




 BBLAYERS ?= " \


 /home/vidal/POKY/build122912_panda/poky/meta \


 /home/vidal/POKY/build122912_panda/poky/meta-yocto \


 /home/vidal/POKY/build122912_panda/poky/meta-ti \


 /home/vidal/POKY/build122912_panda/poky/meta-yocto-bsp \


 "


 BBLAYERS_NON_REMOVABLE ?= " \


 /home/vidal/POKY/build122912_panda/poky/meta \


 /home/vidal/POKY/build122912_panda/poky/meta-yocto \


 "

*********************************************************

/home/vidal/POKY/build129112_panda/poky/meta-ti/conf/machine/pandaboard.conf


 *********************************************************

#@TYPE: Machine


 #@NAME: Pandaboard


 #@DESCRIPTION: Machine configuration for the OMAP4430 Panda




 require conf/machine/include/omap4.inc




 UBOOT_MACHINE = "omap4_panda_config"




 GUI_MACHINE_CLASS = "bigscreen"




 IMAGE_FSTYPES += "tar.bz2"




 SERIAL_CONSOLE = "115200 ttyO2"




 MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"


 MACHINE_FEATURES = "kernel26 wifi bluetooth alsa apm ext2 screen
touchscreen usbgadget usbhost vfat"



 *********************************************************

/home/vidal/POKY/build122912_panda/poky/meta-ti/conf/machine/include/omap4.inc


 *********************************************************

SOC_FAMILY = "omap4"

require conf/machine/include/soc-family.inc


 require conf/machine/include/tune-cortexa9.inc


 PREFERRED_PROVIDER_virtual/kernel = "linux-omap4"

PREFERRED_PROVIDER_virtual/bootloader = "u-boot"


 PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"

XSERVER = "xserver-xorg \

xserver-xorg-extension-dri \

xserver-xorg-extension-dri2 \

xserver-xorg-extension-glx \

xf86-input-evdev \

xf86-video-fbdev"


 # Increase this everytime you change something in the kernel

MACHINE_KERNEL_PR = "r1"


 KERNEL_IMAGETYPE = "uImage"


 UBOOT_ENTRYPOINT = "0x80008000"

UBOOT_LOADADDRESS = "0x80008000"


 EXTRA_IMAGEDEPENDS += "u-boot"


 *********************************************************

/home/vidal/POKY/build122912_panda/poky/meta-ti/recipes-kernel/linux/linux-omap4_3.1.0.bb

*********************************************************

COMPATIBLE_MACHINE = "pandaboard"


 require linux.inc


 # The main PR is now using MACHINE_KERNEL_PR, for omap4 see
conf/machine/include/omap4.inc

MACHINE_KERNEL_PR_append = "a"


 CORTEXA8FIXUP = "no"


 # ti-ubuntu-3.1.0-1282.11

SRCREV = "a5c60c099296fcfc0c8fa8085c40883971486512"


 SRC_URI = "git://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git;protocol=git;branch=ti-ubuntu-3.1-1282\
<http://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git;protocol=git;branch=ti-ubuntu-3.1-1282%5C>
file://0001-Makefile.fwinst-fix-install-breakage-for-FW-images-r.patch \
file://defconfig \

"


 S = "${WORKDIR}/git"

*********************************************************

When fetching linux-omap4_3.0.1-r0 would hang and the kernel was never
built.



/home/vidal/POKY/linux_sr_dnloads_panda/downloads/git2/dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git/


 drwxr-xr-x. 2 vidal users 4096 Dec 21 12:05 branches


 -rw-r--r--. 1 vidal users 176 Dec 29 11:51 config


 -rw-r--r--. 1 vidal users 73 Dec 21 12:05 description


 -rw-r--r--. 1 vidal users 0 Dec 29 11:51 FETCH_HEAD


 -rw-r--r--. 1 vidal users 23 Dec 21 12:05 HEAD


 drwxr-xr-x. 2 vidal users 4096 Dec 21 12:05 hooks


 drwxr-xr-x. 2 vidal users 4096 Dec 21 12:05 info


 drwxr-xr-x. 4 vidal users 4096 Dec 21 12:05 objects


 drwxr-xr-x. 4 vidal users 4096 Dec 21 12:05 refs


 Manually downloaded the kernel with the command below.

git clone git://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git

cd kernel-ubuntu/

The contents of .git were replaces in
/home/vidal/POKY/linux_sr_dnloads_panda/downloads/git2/dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git/


 drwxr-xr-x. 8 vidal users 4096 Dec 30 09:40 .


 drwxr-xr-x. 60 vidal users 4096 Dec 30 09:38 ..


 drwxr-xr-x. 2 vidal users 4096 Dec 30 09:33 branches


 -rw-r--r--. 1 vidal users 285 Dec 30 09:33 config


 -rw-r--r--. 1 vidal users 73 Dec 30 09:33 description


 -rw-r--r--. 1 vidal users 20217144 Dec 30 09:33 gitk.cache


 -rw-r--r--. 1 vidal users 23 Dec 30 09:33 HEAD


 drwxr-xr-x. 2 vidal users 4096 Dec 30 09:33 hooks


 -rw-r--r--. 1 vidal users 3206624 Dec 30 09:33 index


 drwxr-xr-x. 2 vidal users 4096 Dec 30 09:33 info


 drwxr-xr-x. 3 vidal users 4096 Dec 30 09:33 logs


 drwxr-xr-x. 4 vidal users 4096 Dec 30 09:33 objects


 -rw-r--r--. 1 vidal users 32682 Dec 30 09:33 packed-refs


 drwxr-xr-x. 5 vidal users 4096 Dec 30 09:33 refs


 -rw-r--r--. 1 vidal users 4174976 Dec 30 10:14
uImage-3.1.0-r0-pandaboard-20121230164443.bin


 git clone git://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git

cd kernel-ubuntu/

git checkout ti-ubuntu-3.1-1282

commit a5c60c099296fcfc0c8fa8085c40883971486512


 Author: Sebastien Jan <s-jan at ti.com
<http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/angstrom-distro-devel>>


 Date: Mon Feb 13 13:29:50 2012 +0100



 UBUNTU: Ubuntu-3.1.0-1282.11



 Signed-off-by: Sebastien Jan <s-jan at ti.com
<http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/angstrom-distro-devel>>

*********************************************************

/home/vidal/POKY/poky_chgs/yocto_pandaboard/mmc/boot_mmc.txt

*********************************************************

setenv bootargs 'root=/dev/mmcblk0p2 rw rootwait rootfstype=ext3
console=ttyO2,115200n8 vram=16M'

fatload mmc 0 82000000 uImage

bootm 82000000

*********************************************************

[vidal at ws009
<http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/angstrom-distro-devel>
~]$ sudo su -

[root at ws009 <http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/angstrom-distro-devel>
~]# cd /home/vidal /POKY/poky_chgs/yocto_pandaboard/mmc

[root at ws009 <http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/angstrom-distro-devel>
vidal]# mkimage -A arm -O linux -T script -C none -a 0 -e 0 -n
"Panda SD Boot" -d boot_mmc.txt boot.scr

Image Name: Panda SD Boot

Created: Mon Dec 31 04:40:56 2012

Image Type: ARM Linux Script (uncompressed)

Data Size: 152 Bytes = 0.15 kB = 0.00 MB

Load Address: 00000000

Entry Point: 00000000

Contents:

Image 0: 144 Bytes = 0.14 kB = 0.00 MB

od -x -Ax boot.scr

/home/vidal/POKY/poky_chgs/yocto_pandaboard/mmc/boot.scr

*********************************************************

000000 0527 5619 3ca9 c5a1 e150 377c 0000 9800

000010 0000 0000 0000 0000 f001 2b1e 0205 0006

000020 6150 646e 2061 4453 4220 6f6f 0074 0000

000030 0000 0000 0000 0000 0000 0000 0000 0000

000040 0000 9000 0000 0000 6573 6574 766e 6220

000050 6f6f 6174 6772 2073 7227 6f6f 3d74 642f

000060 7665 6d2f 636d 6c62 306b 3270 7220 2077

000070 6f72 746f 6177 7469 7220 6f6f 6674 7473

000080 7079 3d65 7865 3374 6320 6e6f 6f73 656c

000090 743d 7974 324f 312c 3531 3032 6e30 2038

0000a0 7620 6172 3d6d 3631 274d 660a 7461 6f6c

0000b0 6461 6d20 636d 3020 3820 3032 3030 3030

0000c0 2030 4975 616d 6567 620a 6f6f 6d74 3820

0000d0 3032 3030 3030 0a30

0000d8

*********************************************************

/home/vidal/POKY/poky_chgs/yocto_pandaboard/conf/uEnv.txt

File obtained from working Fedora17 ARM system appears to require
uInitrf-omap file.

*********************************************************

bootfile=uImage-omap

bootinitrd=uInitrd-omap

boot=bootm

address_image=0x80300000

address_initrd=0x81600000

mmcroot=LABEL=rootfs ro

mmcargs=setenv bootargs root=${mmcroot} init=/sbin/init quiet rootwait rhgb
earlyprintk

loaduimage=run xyz_mmcboot; run mmcargs; ${boot} ${address_image}
${address_initrd}

xyz_load_image=fatload mmc 0:1 ${address_image} ${bootfile}

xyz_load_initrd=fatload mmc 0:1 ${address_initrd} ${bootinitrd}

xyz_mmcboot=run xyz_load_image; run xyz_load_initrd; echo Booting from mmc
...

*********************************************************

Booting with MLO, u-boot.img created by poky and the boot.scr above.

* - * Qodem 0.1.2 Capture Generated Mon, 31 Dec 2012 05:20:44 -0700 BEGIN *
- *

  U-Boot SPL 2011.12-dirty (Dec 29 2012 - 11:25:52)

Texas Instruments OMAP4460 ES1.1

OMAP SD/MMC: 0

reading u-boot.img

reading u-boot.img

  U-Boot 2011.12-dirty (Dec 29 2012 - 11:25:52)

 CPU : OMAP4460 ES1.1

Board: OMAP4 Panda

I2C: ready

DRAM: 1 GiB

MMC: OMAP SD/MMC: 0

Using default environment

 In: serial

Out: serial

Err: serial

Hit any key to stop autoboot: 3 2 1 0

reading boot.scr

 216 bytes read

Running bootscript from mmc0 ...

## Executing script at 82000000

reading uImage

 4174976 bytes read

## Booting kernel from Legacy Image at 82000000 ...

Image Name: Linux-3.1.0

Image Type: ARM Linux Kernel Image (uncompressed)

Data Size: 4174912 Bytes = 4 MiB

Load Address: 80008000

Entry Point: 80008000

Verifying Checksum ... OK

Loading Kernel Image ... OK

OK

 Starting kernel ...

 Uncompressing Linux... done, booting the kernel.

--047d7b6042fa0d290804d2429eed
Content-Type: text/html; charset=ISO-8859-1

<br><br><div class="gmail_quote">---------- Forwarded message ----------<br>From: <b class="gmail_sendername">Edward Vidal</b> <span dir="ltr">&lt;<a href="mailto:vidal.develone@gmail.com">vidal.develone@gmail.com</a>&gt;</span><br>
Date: Mon, Dec 31, 2012 at 12:49 PM<br>Subject: meta-ti with yocto<br>To: <a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br><br><br><pre>Hello,
 Any help will be appreciated..

Following the steps at site *
<a href="http://maniacbug.wordpress.com/2012/08/03/pandayocto/*" target="_blank">http://maniacbug.wordpress.com/2012/08/03/pandayocto/*</a> with minor changes.
Not using poky-denzil-7.0 instead using latest version as of 12/22/12 (see
below). Did not git checkout 30fb40ebc13614a74c2e237927c60ac43e01d1bc
instead used version that was 07/09/12 which follows oe-core to v5.0. The
changes described were modified (see below diff local.conf &amp;
local.conf.installed ) since quotes were needed for MACHINE &amp; BBMASK. I
also tried with a build using Angstrom which fails but does create a kernel
uImage using linux-omap4-3.1.0-r1a. The meta-ti with yocto is fetching
linux-omap4-3.1.0-r0 which fails at do_fetch. This was fixed with a manual
fetch (see below on steps to download the kernel). Now the problem is
getting the pandaboard to boot.

Does a build with yocto and meta-ti require an initrd file? Does anyone
have a working uEnv.txt for the pandaboard?

Build system Fedora17 x86_17

cd /home/vidal/POKY/build122912_panda/

git clone <a>git://git.yoctoproject.org/poky.git</a>

cd poky

git clone *<a href="https://github.com/Angstrom-distribution/meta-ti.git*" target="_blank">https://github.com/Angstrom-distribution/meta-ti.git*</a>

/home/vidal/POKY/build122912_panda/poky

commit 4a36a32567ecfbc7ce7b967803e6e23314953ef5


 Author: Martin Jansa &lt;<a href="http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/angstrom-distro-devel" target="_blank">martin.jansa at gmail.com</a>&gt;


 Date: Sat Dec 22 17:24:20 2012 +0100




 libpng: fix packaging



 * PN-LIBV is not needed, was used to package libpng12 from libpng3 build


 now only libpng15 is built.


 * if you&#39;re not using OEBasicHash + PRserv you need to rebuild and


 reinstall a lot of packages to upgrade to libpng-1.5 correctly



 (From OE-Core rev: 69bbce0176183b0dc14eda21e4f6b601443060f0)



 Signed-off-by: Martin Jansa &lt;<a href="http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/angstrom-distro-devel" target="_blank">Martin.Jansa at gmail.com</a>&gt;


 Signed-off-by: Saul Wold &lt;<a href="http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/angstrom-distro-devel" target="_blank">sgw at linux.intel.com</a>&gt;


 Signed-off-by: Richard Purdie &lt;<a href="http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/angstrom-distro-devel" target="_blank">richard.purdie at linuxfoundation.org</a>&gt;


 /home/vidal/POKY/build122912_panda/poky/build/conf/local.conf

*********************************************************

----------new text--------------


 MACHINE ?= &quot;pandaboard&quot;


 BBMASK = &quot;meta-ti/recipes-misc&quot;


 ----------new text--------------

----------additional text--------------

----------modified text--------------

BB_NUMBER_THREADS = &quot;8&quot;

----------modified text--------------

----------additional text--------------

----------modified text--------------

PARALLEL_MAKE = &quot;-j 8&quot;

----------modified text--------------

----------additional text--------------

----------modified text--------------

DL_DIR ?= &quot;/home/vidal/POKY/linux_sr_dnloads_panda/downloads&quot;

----------modified text--------------

----------additional text--------------

*********************************************************

/home/vidal/POKY/build129112_panda/poky/build/conf/bblayers.conf

*********************************************************


 # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf


 # changes incompatibly


 LCONF_VERSION = &quot;6&quot;




 BBPATH = &quot;${TOPDIR}&quot;


 BBFILES ?= &quot;&quot;




 BBLAYERS ?= &quot; \


 /home/vidal/POKY/build122912_panda/poky/meta \


 /home/vidal/POKY/build122912_panda/poky/meta-yocto \


 /home/vidal/POKY/build122912_panda/poky/meta-ti \


 /home/vidal/POKY/build122912_panda/poky/meta-yocto-bsp \


 &quot;


 BBLAYERS_NON_REMOVABLE ?= &quot; \


 /home/vidal/POKY/build122912_panda/poky/meta \


 /home/vidal/POKY/build122912_panda/poky/meta-yocto \


 &quot;

*********************************************************

/home/vidal/POKY/build129112_panda/poky/meta-ti/conf/machine/pandaboard.conf


 *********************************************************

#@TYPE: Machine


 #@NAME: Pandaboard


 #@DESCRIPTION: Machine configuration for the OMAP4430 Panda




 require conf/machine/include/omap4.inc




 UBOOT_MACHINE = &quot;omap4_panda_config&quot;




 GUI_MACHINE_CLASS = &quot;bigscreen&quot;




 IMAGE_FSTYPES += &quot;tar.bz2&quot;




 SERIAL_CONSOLE = &quot;115200 ttyO2&quot;




 MACHINE_EXTRA_RRECOMMENDS = &quot; kernel-modules&quot;


 MACHINE_FEATURES = &quot;kernel26 wifi bluetooth alsa apm ext2 screen
touchscreen usbgadget usbhost vfat&quot;



 *********************************************************

/home/vidal/POKY/build122912_panda/poky/meta-ti/conf/machine/include/omap4.inc


 *********************************************************

SOC_FAMILY = &quot;omap4&quot;

require conf/machine/include/soc-family.inc


 require conf/machine/include/tune-cortexa9.inc


 PREFERRED_PROVIDER_virtual/kernel = &quot;linux-omap4&quot;

PREFERRED_PROVIDER_virtual/bootloader = &quot;u-boot&quot;


 PREFERRED_PROVIDER_virtual/xserver = &quot;xserver-xorg&quot;

XSERVER = &quot;xserver-xorg \

xserver-xorg-extension-dri \

xserver-xorg-extension-dri2 \

xserver-xorg-extension-glx \

xf86-input-evdev \

xf86-video-fbdev&quot;


 # Increase this everytime you change something in the kernel

MACHINE_KERNEL_PR = &quot;r1&quot;


 KERNEL_IMAGETYPE = &quot;uImage&quot;


 UBOOT_ENTRYPOINT = &quot;0x80008000&quot;

UBOOT_LOADADDRESS = &quot;0x80008000&quot;


 EXTRA_IMAGEDEPENDS += &quot;u-boot&quot;


 *********************************************************

/home/vidal/POKY/build122912_panda/poky/meta-ti/recipes-kernel/linux/
<a href="http://linux-omap4_3.1.0.bb" target="_blank">linux-omap4_3.1.0.bb</a>

*********************************************************

COMPATIBLE_MACHINE = &quot;pandaboard&quot;


 require linux.inc


 # The main PR is now using MACHINE_KERNEL_PR, for omap4 see
conf/machine/include/omap4.inc

MACHINE_KERNEL_PR_append = &quot;a&quot;


 CORTEXA8FIXUP = &quot;no&quot;


 # ti-ubuntu-3.1.0-1282.11

SRCREV = &quot;a5c60c099296fcfc0c8fa8085c40883971486512&quot;


 SRC_URI = &quot;git://
<a href="http://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git;protocol=git;branch=ti-ubuntu-3.1-1282%5C" target="_blank">dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git;protocol=git;branch=ti-ubuntu-3.1-1282\</a>

<a>file://0001-Makefile.fwinst-fix-install-breakage-for-FW-images-r.patch</a> \

<a>file://defconfig</a> \

&quot;


 S = &quot;${WORKDIR}/git&quot;

*********************************************************

When fetching linux-omap4_3.0.1-r0 would hang and the kernel was never
built.



/home/vidal/POKY/linux_sr_dnloads_panda/downloads/git2/dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git/


 drwxr-xr-x. 2 vidal users 4096 Dec 21 12:05 branches


 -rw-r--r--. 1 vidal users 176 Dec 29 11:51 config


 -rw-r--r--. 1 vidal users 73 Dec 21 12:05 description


 -rw-r--r--. 1 vidal users 0 Dec 29 11:51 FETCH_HEAD


 -rw-r--r--. 1 vidal users 23 Dec 21 12:05 HEAD


 drwxr-xr-x. 2 vidal users 4096 Dec 21 12:05 hooks


 drwxr-xr-x. 2 vidal users 4096 Dec 21 12:05 info


 drwxr-xr-x. 4 vidal users 4096 Dec 21 12:05 objects


 drwxr-xr-x. 4 vidal users 4096 Dec 21 12:05 refs


 Manually downloaded the kernel with the command below.

git clone <a>git://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git</a>

cd kernel-ubuntu/

The contents of .git were replaces in
/home/vidal/POKY/linux_sr_dnloads_panda/downloads/git2/dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git/


 drwxr-xr-x. 8 vidal users 4096 Dec 30 09:40 .


 drwxr-xr-x. 60 vidal users 4096 Dec 30 09:38 ..


 drwxr-xr-x. 2 vidal users 4096 Dec 30 09:33 branches


 -rw-r--r--. 1 vidal users 285 Dec 30 09:33 config


 -rw-r--r--. 1 vidal users 73 Dec 30 09:33 description


 -rw-r--r--. 1 vidal users 20217144 Dec 30 09:33 gitk.cache


 -rw-r--r--. 1 vidal users 23 Dec 30 09:33 HEAD


 drwxr-xr-x. 2 vidal users 4096 Dec 30 09:33 hooks


 -rw-r--r--. 1 vidal users 3206624 Dec 30 09:33 index


 drwxr-xr-x. 2 vidal users 4096 Dec 30 09:33 info


 drwxr-xr-x. 3 vidal users 4096 Dec 30 09:33 logs


 drwxr-xr-x. 4 vidal users 4096 Dec 30 09:33 objects


 -rw-r--r--. 1 vidal users 32682 Dec 30 09:33 packed-refs


 drwxr-xr-x. 5 vidal users 4096 Dec 30 09:33 refs


 -rw-r--r--. 1 vidal users 4174976 Dec 30 10:14
uImage-3.1.0-r0-pandaboard-20121230164443.bin


 git clone <a>git://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git</a>

cd kernel-ubuntu/

git checkout ti-ubuntu-3.1-1282

commit a5c60c099296fcfc0c8fa8085c40883971486512


 Author: Sebastien Jan &lt;<a href="http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/angstrom-distro-devel" target="_blank">s-jan at ti.com</a>&gt;


 Date: Mon Feb 13 13:29:50 2012 +0100



 UBUNTU: Ubuntu-3.1.0-1282.11



 Signed-off-by: Sebastien Jan &lt;<a href="http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/angstrom-distro-devel" target="_blank">s-jan at ti.com</a>&gt;

*********************************************************

/home/vidal/POKY/poky_chgs/yocto_pandaboard/mmc/boot_mmc.txt

*********************************************************

setenv bootargs &#39;root=/dev/mmcblk0p2 rw rootwait rootfstype=ext3
console=ttyO2,115200n8 vram=16M&#39;

fatload mmc 0 82000000 uImage

bootm 82000000

*********************************************************

[<a href="http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/angstrom-distro-devel" target="_blank">vidal at ws009</a> ~]$ sudo su -

[<a href="http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/angstrom-distro-devel" target="_blank">root at ws009</a> ~]# cd /home/vidal /POKY/poky_chgs/yocto_pandaboard/mmc

[<a href="http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/angstrom-distro-devel" target="_blank">root at ws009</a> vidal]# mkimage -A arm -O linux -T script -C none -a 0 -e 0 -n
&quot;Panda SD Boot&quot; -d boot_mmc.txt boot.scr

Image Name: Panda SD Boot

Created: Mon Dec 31 04:40:56 2012

Image Type: ARM Linux Script (uncompressed)

Data Size: 152 Bytes = 0.15 kB = 0.00 MB

Load Address: 00000000

Entry Point: 00000000

Contents:

Image 0: 144 Bytes = 0.14 kB = 0.00 MB

od -x -Ax boot.scr

/home/vidal/POKY/poky_chgs/yocto_pandaboard/mmc/boot.scr

*********************************************************

000000 0527 5619 3ca9 c5a1 e150 377c 0000 9800

000010 0000 0000 0000 0000 f001 2b1e 0205 0006

000020 6150 646e 2061 4453 4220 6f6f 0074 0000

000030 0000 0000 0000 0000 0000 0000 0000 0000

000040 0000 9000 0000 0000 6573 6574 766e 6220

000050 6f6f 6174 6772 2073 7227 6f6f 3d74 642f

000060 7665 6d2f 636d 6c62 306b 3270 7220 2077

000070 6f72 746f 6177 7469 7220 6f6f 6674 7473

000080 7079 3d65 7865 3374 6320 6e6f 6f73 656c

000090 743d 7974 324f 312c 3531 3032 6e30 2038

0000a0 7620 6172 3d6d 3631 274d 660a 7461 6f6c

0000b0 6461 6d20 636d 3020 3820 3032 3030 3030

0000c0 2030 4975 616d 6567 620a 6f6f 6d74 3820

0000d0 3032 3030 3030 0a30

0000d8

*********************************************************

/home/vidal/POKY/poky_chgs/yocto_pandaboard/conf/uEnv.txt

File obtained from working Fedora17 ARM system appears to require
uInitrf-omap file.

*********************************************************

bootfile=uImage-omap

bootinitrd=uInitrd-omap

boot=bootm

address_image=0x80300000

address_initrd=0x81600000

mmcroot=LABEL=rootfs ro

mmcargs=setenv bootargs root=${mmcroot} init=/sbin/init quiet rootwait rhgb
earlyprintk

loaduimage=run xyz_mmcboot; run mmcargs; ${boot} ${address_image}
${address_initrd}

xyz_load_image=fatload mmc 0:1 ${address_image} ${bootfile}

xyz_load_initrd=fatload mmc 0:1 ${address_initrd} ${bootinitrd}

xyz_mmcboot=run xyz_load_image; run xyz_load_initrd; echo Booting from mmc
...

*********************************************************

Booting with MLO, u-boot.img created by poky and the boot.scr above.

* - * Qodem 0.1.2 Capture Generated Mon, 31 Dec 2012 05:20:44 -0700 BEGIN *
- *

  U-Boot SPL 2011.12-dirty (Dec 29 2012 - 11:25:52)

Texas Instruments OMAP4460 ES1.1

OMAP SD/MMC: 0

reading u-boot.img

reading u-boot.img

  U-Boot 2011.12-dirty (Dec 29 2012 - 11:25:52)

 CPU : OMAP4460 ES1.1

Board: OMAP4 Panda

I2C: ready

DRAM: 1 GiB

MMC: OMAP SD/MMC: 0

Using default environment

 In: serial

Out: serial

Err: serial

Hit any key to stop autoboot: 3 2 1 0

reading boot.scr

 216 bytes read

Running bootscript from mmc0 ...

## Executing script at 82000000

reading uImage

 4174976 bytes read

## Booting kernel from Legacy Image at 82000000 ...

Image Name: Linux-3.1.0

Image Type: ARM Linux Kernel Image (uncompressed)

Data Size: 4174912 Bytes = 4 MiB

Load Address: 80008000

Entry Point: 80008000

Verifying Checksum ... OK

Loading Kernel Image ... OK

OK

 Starting kernel ...

 Uncompressing Linux... done, booting the kernel.</pre>
</div><br>

--047d7b6042fa0d290804d2429eed--
