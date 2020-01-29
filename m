Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web09.127.1580337660642870843
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jan 2020 14:41:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=BgP0dK3j;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f52.google.com with SMTP id j104so1503476wrj.7
        for <yocto@lists.yoctoproject.org>; Wed, 29 Jan 2020 14:41:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=c6fMYUs1ggYOvZpEi2BZAeLQ+RVRdJca7uiegah+uAY=;
        b=BgP0dK3j34FVnVIyheFwqb8WIdUZiFtAQQgsgxCG1nl71mFKZdeWgI5yhFbywNeHwt
         Mu9OnPkgBxc827SPfEyot/LHJh2MLl90hSUgbUKa6dy2XpJ35kav5l8EQbnWjhknihCl
         apCi8PPDfkfei5bcPJatKZNwx3g9Yflr2F8W4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=c6fMYUs1ggYOvZpEi2BZAeLQ+RVRdJca7uiegah+uAY=;
        b=gPl7PY416ad49bIE5elA4042Ik/1NiewDOr+ME59wA758g01djcIcAO3yq3GJMfPvC
         ZJHcW5hxAHgJFcqqQUVl70HyjqX2F7Gk1VcT/zdpoh7NCvjZ7ohlUgUxc1qncVLHh14M
         DUWxrUbjs4Rr2F/2bv5NgJQLS0JdgIdjriGlQAg1OSOLM70edpqcru6AffDm1VsAXmun
         nKO/xBxGs+CdaEECLy71QdqJCT748RuSO2erTxDOl5qUV5N5sCCK33LNGyzjrqoRTI0p
         AM/A8PpOrfchpx15AoCAyY8FBsssUW72RUZgpFmr3+m45Je7uAmDlLTz2nigK49pfILf
         Gfdw==
X-Gm-Message-State: APjAAAWASXv75PMv/gW2/OD5bMcaBdZTwG8JPrJlSIhcuA218vdY/dJA
	Xr217OYeZv4K8eiea8DQa1U9XYA5J64=
X-Google-Smtp-Source: APXvYqy9PkiiU2KIf8mDsHUnqc3dpVAUvunybVh9ormKRmVMW7JY7Tz/TlWCtz96GcShEEpf0oFurw==
X-Received: by 2002:adf:ec83:: with SMTP id z3mr1111084wrn.133.1580337658171;
        Wed, 29 Jan 2020 14:40:58 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id e17sm3735093wma.12.2020.01.29.14.40.57
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jan 2020 14:40:57 -0800 (PST)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH] conf/machine: Remove mpc8315e-rdb machine
Date: Wed, 29 Jan 2020 22:40:56 +0000
Message-Id: <20200129224056.31061-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This hardware is old/obsolete and unobtainable. Its proving hard to support
with nobody fixing bugs or helping keep the platform running/up to date.

Whilst there is value in real hardware testing, this platform ist just too
old and obsolete to support. This does leave a gap for the power architecture
but at this point there is nobody willing to step up to cover it.

The TSC did discuss and agree support for this platform should be removed.

It calls into question the support/testing of the architecture by Yocto
Project which is being discussed by the TSC and governing board.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/local.conf.sample              |   1 -
 meta-yocto-bsp/README.hardware                | 142 ------------------
 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf |  36 -----
 .../linux/linux-yocto-dev.bbappend            |   2 -
 .../linux/linux-yocto_4.19.bbappend           |   4 -
 .../linux/linux-yocto_5.2.bbappend            |   4 -
 meta-yocto-bsp/wic/mpc8315e-rdb.wks           |   4 -
 7 files changed, 193 deletions(-)
 delete mode 100644 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
 delete mode 100644 meta-yocto-bsp/wic/mpc8315e-rdb.wks

diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
index 2e0bb41e646..b555f1d21ef 100644
--- a/meta-poky/conf/local.conf.sample
+++ b/meta-poky/conf/local.conf.sample
@@ -31,7 +31,6 @@
 #MACHINE ?= "beaglebone-yocto"
 #MACHINE ?= "genericx86"
 #MACHINE ?= "genericx86-64"
-#MACHINE ?= "mpc8315e-rdb"
 #MACHINE ?= "edgerouter"
 #
 # This sets the default machine to be qemux86-64 if no other machine is selected:
diff --git a/meta-yocto-bsp/README.hardware b/meta-yocto-bsp/README.hardware
index d8d2a0cac66..5996be764c7 100644
--- a/meta-yocto-bsp/README.hardware
+++ b/meta-yocto-bsp/README.hardware
@@ -28,7 +28,6 @@ Hardware Reference Boards
 The following boards are supported by the meta-yocto-bsp layer:
 
   * Texas Instruments Beaglebone (beaglebone-yocto)
-  * Freescale MPC8315E-RDB (mpc8315e-rdb)
   * Ubiquiti Networks EdgeRouter Lite (edgerouter)
   * General IA platforms (genericx86 and genericx86-64)
 
@@ -155,147 +154,6 @@ From a Linux system with access to the image files perform the following steps:
 
   3. Insert the SD card into the Beaglebone and boot the board.
 
-Freescale MPC8315E-RDB (mpc8315e-rdb)
-=====================================
-
-The MPC8315 PowerPC reference platform (MPC8315E-RDB) is aimed at hardware and
-software development of network attached storage (NAS) and digital media server
-applications. The MPC8315E-RDB features the PowerQUICC II Pro processor, which
-includes a built-in security accelerator.
-
-(Note: you may find it easier to order MPC8315E-RDBA; this appears to be the
-same board in an enclosure with accessories. In any case it is fully
-compatible with the instructions given here.)
-
-Setup instructions
-------------------
-
-You will need the following:
-* NFS root setup on your workstation
-* TFTP server installed on your workstation
-* Straight-thru 9-conductor serial cable (DB9, M/F) connected from your 
-  PC to UART1
-* Ethernet connected to the first ethernet port on the board
-
---- Preparation ---
-
-Note: if you have altered your board's ethernet MAC address(es) from the
-defaults, or you need to do so because you want multiple boards on the same
-network, then you will need to change the values in the dts file (patch
-linux/arch/powerpc/boot/dts/mpc8315erdb.dts within the kernel source). If
-you have left them at the factory default then you shouldn't need to do
-anything here.
-
-Note: To boot from USB disk you need u-boot that supports 'ext2load usb'
-command. You need to setup TFTP server, load u-boot from there and
-flash it to NOR flash.
-
-Beware! Flashing bootloader is potentially dangerous operation that can
-brick your device if done incorrectly. Please, make sure you understand
-what below commands mean before executing them.
-
-Load the new u-boot.bin from TFTP server to memory address 200000
-=> tftp 200000 u-boot.bin
-
-Disable flash protection
-=> protect off all
-
-Erase the old u-boot from fe000000 to fe06ffff in NOR flash.
-The size is 0x70000 (458752 bytes)
-=> erase fe000000 fe06ffff
-
-Copy the new u-boot from address 200000 to fe000000
-the size is 0x70000. It has to be greater or equal to u-boot.bin size
-=> cp.b 200000 fe000000 70000
-
-Enable flash protection again
-=> protect on all
-
-Reset the board
-=> reset
-
---- Booting from USB disk ---
-
- 1. Flash partitioned image to the USB disk
-
-    # dd if=core-image-minimal-mpc8315e-rdb.wic of=/dev/sdb
-
- 2. Plug USB disk into the MPC8315 board
-
- 3. Connect the board's first serial port to your workstation and then start up
-    your favourite serial terminal so that you will be able to interact with
-    the serial console. If you don't have a favourite, picocom is suggested:
-
-  $ picocom /dev/ttyUSB0 -b 115200
-
- 4. Power up or reset the board and press a key on the terminal when prompted
-    to get to the U-Boot command line
-
- 5. Optional. Load the u-boot.bin from the USB disk:
-
- => usb start
- => ext2load usb 0:1 200000 u-boot.bin
-
-    and flash it to NOR flash as described above.
-
- 6. Load the kernel and dtb from the first partition of the USB disk:
-
- => usb start
- => ext2load usb 0:1 1000000 uImage
- => ext2load usb 0:1 2000000 dtb
-
- 7. Set bootargs and boot up the device
-
- => setenv bootargs root=/dev/sdb2 rw rootwait console=ttyS0,115200
- => bootm 1000000 - 2000000
-
-
---- Booting from NFS root ---
-
-Load the kernel and dtb (device tree blob), and boot the system as follows:
-
- 1. Get the kernel (uImage-mpc8315e-rdb.bin) and dtb (uImage-mpc8315e-rdb.dtb)
-    files from the tmp/deploy directory, and make them available on your TFTP
-    server.
-
- 2. Connect the board's first serial port to your workstation and then start up
-    your favourite serial terminal so that you will be able to interact with
-    the serial console. If you don't have a favourite, picocom is suggested:
-
-  $ picocom /dev/ttyUSB0 -b 115200
-
- 3. Power up or reset the board and press a key on the terminal when prompted
-    to get to the U-Boot command line
-
- 4. Set up the environment in U-Boot:
-
- => setenv ipaddr <board ip>
- => setenv serverip <tftp server ip>
- => setenv bootargs root=/dev/nfs rw nfsroot=<nfsroot ip>:<rootfs path> ip=<board ip>:<server ip>:<gateway ip>:255.255.255.0:mpc8315e:eth0:off console=ttyS0,115200
-
- 5. Download the kernel and dtb, and boot:
-
- => tftp 1000000 uImage-mpc8315e-rdb.bin
- => tftp 2000000 uImage-mpc8315e-rdb.dtb
- => bootm 1000000 - 2000000
-
---- Booting from JFFS2 root ---
-
- 1. First boot the board with NFS root.
-
- 2. Erase the MTD partition which will be used as root:
-
-    $ flash_eraseall  /dev/mtd3
-
- 3. Copy the JFFS2 image to the MTD partition:
-
-    $ flashcp core-image-minimal-mpc8315e-rdb.jffs2 /dev/mtd3
-
- 4. Then reboot the board and set up the environment in U-Boot:
-
-    => setenv bootargs root=/dev/mtdblock3 rootfstype=jffs2 console=ttyS0,115200
-
-
 Ubiquiti Networks EdgeRouter Lite (edgerouter)
 ==============================================
 
diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
deleted file mode 100644
index 5382796284b..00000000000
--- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
+++ /dev/null
@@ -1,36 +0,0 @@
-#@TYPE: Machine
-#@NAME: Freescale MPC8315E-RDB
-#@DESCRIPTION: Machine configuration for Freescale MPC8315E-RDB
-
-TARGET_FPU = ""
-
-require conf/machine/include/tune-ppce300c3.inc
-
-KERNEL_IMAGETYPE = "uImage"
-
-EXTRA_IMAGEDEPENDS += "u-boot"
-UBOOT_MACHINE = "MPC8315ERDB_config"
-
-SERIAL_CONSOLES = "115200;ttyS0"
-
-MACHINE_FEATURES = "keyboard pci ext2 ext3 serial"
-
-PREFERRED_VERSION_linux-yocto ?= "5.2%"
-PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-
-PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
-XSERVER ?= "xserver-xorg \
-            xf86-video-fbdev"
-
-UBOOT_ENTRYPOINT = "0x00000000"
-
-KERNEL_DEVICETREE = "mpc8315erdb.dtb"
-
-MACHINE_EXTRA_RRECOMMENDS = "kernel-modules"
-
-IMAGE_FSTYPES ?= "jffs2 tar.bz2"
-JFFS2_ERASEBLOCK = "0x4000"
-
-IMAGE_FSTYPES += "wic wic.bmap"
-WKS_FILE ?= 'mpc8315e-rdb.wks'
-IMAGE_BOOT_FILES ?= "u-boot.bin uImage mpc8315erdb.dtb;dtb"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend
index f044dafb4d3..6e5a129dd41 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -2,7 +2,6 @@ KBRANCH_genericx86  = "standard/base"
 KBRANCH_genericx86-64  = "standard/base"
 KBRANCH_edgerouter = "standard/edgerouter"
 KBRANCH_beaglebone-yocto = "standard/beaglebone"
-KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
@@ -12,4 +11,3 @@ COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
-COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
index ec269d905c4..7b4bd2c4ee1 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
@@ -2,7 +2,6 @@ KBRANCH_genericx86  = "v4.19/standard/base"
 KBRANCH_genericx86-64  = "v4.19/standard/base"
 KBRANCH_edgerouter = "v4.19/standard/edgerouter"
 KBRANCH_beaglebone-yocto = "v4.19/standard/beaglebone"
-KBRANCH_mpc8315e-rdb = "v4.19/standard/fsl-mpc8315e-rdb"
 
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
@@ -12,16 +11,13 @@ SRCREV_machine_genericx86    ?= "5664dc14399edcaad210bbeb6343d84561fb3ea8"
 SRCREV_machine_genericx86-64 ?= "5664dc14399edcaad210bbeb6343d84561fb3ea8"
 SRCREV_machine_edgerouter ?= "5664dc14399edcaad210bbeb6343d84561fb3ea8"
 SRCREV_machine_beaglebone-yocto ?= "5664dc14399edcaad210bbeb6343d84561fb3ea8"
-SRCREV_machine_mpc8315e-rdb ?= "d419f4ca6ba4b097b8ad710a93b89510f5b2998c"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
-COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.19.34"
 LINUX_VERSION_genericx86-64 = "4.19.34"
 LINUX_VERSION_edgerouter = "4.19.34"
 LINUX_VERSION_beaglebone-yocto = "4.19.34"
-LINUX_VERSION_mpc8315e-rdb = "4.19.34"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend
index f15bccbaf2e..9a965321df9 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend
@@ -2,7 +2,6 @@ KBRANCH_genericx86  = "v5.2/standard/base"
 KBRANCH_genericx86-64  = "v5.2/standard/base"
 KBRANCH_edgerouter = "v5.2/standard/edgerouter"
 KBRANCH_beaglebone-yocto = "v5.2/standard/beaglebone"
-KBRANCH_mpc8315e-rdb = "v5.2/standard/fsl-mpc8315e-rdb"
 
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
@@ -12,16 +11,13 @@ SRCREV_machine_genericx86    ?= "25b14cdf9659c68ab32d66616dfdbbe2ece3fd94"
 SRCREV_machine_genericx86-64 ?= "25b14cdf9659c68ab32d66616dfdbbe2ece3fd94"
 SRCREV_machine_edgerouter ?= "25b14cdf9659c68ab32d66616dfdbbe2ece3fd94"
 SRCREV_machine_beaglebone-yocto ?= "25b14cdf9659c68ab32d66616dfdbbe2ece3fd94"
-SRCREV_machine_mpc8315e-rdb ?= "77f031b182885c177b3a96098ae61271911a7954"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
-COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "5.2.17"
 LINUX_VERSION_genericx86-64 = "5.2.17"
 LINUX_VERSION_edgerouter = "5.2.17"
 LINUX_VERSION_beaglebone-yocto = "5.2.17"
-LINUX_VERSION_mpc8315e-rdb = "5.2.17"
diff --git a/meta-yocto-bsp/wic/mpc8315e-rdb.wks b/meta-yocto-bsp/wic/mpc8315e-rdb.wks
deleted file mode 100644
index d0cb607ffc9..00000000000
--- a/meta-yocto-bsp/wic/mpc8315e-rdb.wks
+++ /dev/null
@@ -1,4 +0,0 @@
-# short-description: Create SD card image for MPC8315E-RDB
-# long-description: Create a partitioned SD card image for Freescale MPC8315E-RDB reference hardware.
-part /boot --source bootimg-partition --ondisk sdb --fstype=ext3 --label boot
-part / --source rootfs --ondisk sdb --fstype=ext3 --label root
-- 
2.20.1

