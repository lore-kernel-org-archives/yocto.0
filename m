Return-Path: <Paul.Gortmaker@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD5DDE006D9
	for <yocto@yoctoproject.org>; Fri, 29 Jun 2012 11:41:41 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q5TIffCV003485
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 29 Jun 2012 11:41:41 -0700 (PDT)
Received: from yow-pgortmak-d2.corp.ad.wrs.com (128.224.146.165) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Fri, 29 Jun 2012 11:41:41 -0700
From: Paul Gortmaker <paul.gortmaker@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 29 Jun 2012 14:40:58 -0400
Message-ID: <1340995258-15063-1-git-send-email-paul.gortmaker@windriver.com>
X-Mailer: git-send-email 1.7.9.6
MIME-Version: 1.0
Subject: [PATCH] mpc8315: build u-boot v2012.04 by default.
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
X-List-Received-Date: Fri, 29 Jun 2012 18:41:41 -0000
Content-Type: text/plain

Validated on real hardware:

   U-Boot 2012.04.01 (Jun 29 2012 - 13:48:03)MPC83XX

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

[YOCTO #943]

Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
---

[Note -- this depends on the series of three patches that I
 just sent to oe-core for u-boot, in order to build properly. ]

 meta-yocto/conf/machine/mpc8315e-rdb.conf |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/meta-yocto/conf/machine/mpc8315e-rdb.conf b/meta-yocto/conf/machine/mpc8315e-rdb.conf
index 03b5f34..09670e5 100644
--- a/meta-yocto/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto/conf/machine/mpc8315e-rdb.conf
@@ -7,6 +7,9 @@ require conf/machine/include/tune-ppc603e.inc
 
 KERNEL_IMAGETYPE = "uImage"
 
+EXTRA_IMAGEDEPENDS += "u-boot"
+UBOOT_MACHINE_mpc8315e-rdb = "MPC8315ERDB_config"
+
 SERIAL_CONSOLE = "115200 ttyS0"
 
 MACHINE_FEATURES = "keyboard pci ext2 ext3 serial"
@@ -17,6 +20,7 @@ PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
 PREFERRED_PROVIDER_virtual/xserver = "xserver-kdrive"
 XSERVER = "xserver-kdrive-fbdev"
 
+PREFERRED_VERSION_u-boot ?= "v2012.04%"
 UBOOT_ENTRYPOINT = "0x00000000"
 
 KERNEL_DEVICETREE = "${S}/arch/powerpc/boot/dts/mpc8315erdb.dts"
-- 
1.7.9.6


