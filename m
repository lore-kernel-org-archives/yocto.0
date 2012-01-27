Return-Path: <paul.gortmaker@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CCE9E0136A
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2012 08:22:12 -0800 (PST)
Received: from yow-pgortmak-d2.corp.ad.wrs.com
	(yow-pgortmak-d2.ottawa.windriver.com [128.224.146.165])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q0RGMBZG020251
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2012 08:22:12 -0800 (PST)
From: Paul Gortmaker <paul.gortmaker@windriver.com>
To: yocto@yoctoproject.org
Date: Fri, 27 Jan 2012 11:22:11 -0500
Message-Id: <1327681331-11557-1-git-send-email-paul.gortmaker@windriver.com>
X-Mailer: git-send-email 1.7.7
Subject: [PATCH] mpc8315: build u-boot by default.
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
X-List-Received-Date: Fri, 27 Jan 2012 16:22:12 -0000

Valdiated on v2011.12 with hardware:

    U-Boot 2011.12 (Jan 26 2012 - 16:55:23)MPC83XX

    Reset Status: Software Hard, External/Internal Soft, External/Internal Hard

    CPU:   e300c3, MPC8315E, Rev: 1.2 at 400 MHz, CSB: 133.333 MHz
    Board: Freescale MPC8315ERDB Rev 1.0
    I2C:   ready
    DRAM:  128 MiB (DDR2, 32-bit, ECC off, 266.667 MHz)
    Flash: 8 MiB
    NAND:  32 MiB
    PCIE0: No link
    PCIE1: No link
    In:    serial
    Out:   serial
    Err:   serial
    Net:   eTSEC0, eTSEC1
    Hit any key to stop autoboot:  0
    => ver

    U-Boot 2011.12 (Jan 26 2012 - 16:55:23)MPC83XX
    powerpc-poky-linux-gcc (GCC) 4.6.3 20111117 (prerelease)
    GNU ld (GNU Binutils) 2.22
    =>

Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>

diff --git a/meta-yocto/conf/machine/mpc8315e-rdb.conf b/meta-yocto/conf/machine/mpc8315e-rdb.conf
index d3a5b1c..74ef611 100644
--- a/meta-yocto/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto/conf/machine/mpc8315e-rdb.conf
@@ -7,6 +7,9 @@ require conf/machine/include/tune-ppc603e.inc
 
 KERNEL_IMAGETYPE = "uImage"
 
+EXTRA_IMAGEDEPENDS += "u-boot"
+UBOOT_MACHINE_mpc8315e-rdb = "MPC8315ERDB_config"
+
 SERIAL_CONSOLE = "115200 ttyS0"
 
 MACHINE_FEATURES = "kernel26 keyboard pci ext2 ext3 serial"
-- 
1.7.7


