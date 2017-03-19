Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09669E00AE0; Sun, 19 Mar 2017 10:58:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FC33E00A6D
	for <yocto@yoctoproject.org>; Sun, 19 Mar 2017 10:58:47 -0700 (PDT)
Received: from misaki.sumomo.pri (unknown
	[IPv6:2001:470:b30d:2:3fe5:5e2:ef97:4abb])
	by kozue.soulik.info (Postfix) with ESMTPA id 8660010225E;
	Mon, 20 Mar 2017 02:50:11 +0900 (JST)
From: ayaka <ayaka@soulik.info>
To: yocto@yoctoproject.org
Date: Mon, 20 Mar 2017 01:48:34 +0800
Message-Id: <1489945717-27219-5-git-send-email-ayaka@soulik.info>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1489945717-27219-1-git-send-email-ayaka@soulik.info>
References: <1489945717-27219-1-git-send-email-ayaka@soulik.info>
X-Mailman-Approved-At: Mon, 20 Mar 2017 10:57:32 -0700
Cc: ayaka <ayaka@soulik.info>, Jacob Chen <jacob-chen@rock-chips.com>
Subject: [PATCH 4/7] conf/machine: rk3288: Add some machine files
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
X-List-Received-Date: Sun, 19 Mar 2017 17:58:51 -0000

Evb-rk3288 is the offical evaluate board.
Fennec-rk3288 and Tinker-rk3288 is rk3288 based SBCs.
Tinker Boards is a RPi compatible board made by ASUS.

Update the kernel for Firefly Release to kernel 4.4.

Signed-off-by: Jacob Chen <jacob-chen@rock-chips.com>
Signed-off-by: ayaka <ayaka@soulik.info>
---
 conf/machine/evb-rk3288.conf     | 10 ++++++++++
 conf/machine/fennec-rk3288.conf  | 10 ++++++++++
 conf/machine/firefly-rk3288.conf |  1 +
 conf/machine/include/rk3288.inc  |  4 ++++
 conf/machine/tinker-rk3288.conf  | 13 +++++++++++++
 5 files changed, 38 insertions(+)
 create mode 100644 conf/machine/evb-rk3288.conf
 create mode 100644 conf/machine/fennec-rk3288.conf
 create mode 100644 conf/machine/tinker-rk3288.conf

diff --git a/conf/machine/evb-rk3288.conf b/conf/machine/evb-rk3288.conf
new file mode 100644
index 0000000..e6c1f1e
--- /dev/null
+++ b/conf/machine/evb-rk3288.conf
@@ -0,0 +1,10 @@
+# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+#@TYPE: Machine
+#@NAME: EVB 3288
+
+include conf/machine/include/rk3288.inc
+
+KERNEL_DEVICETREE = "rk3288-evb-act8846.dtb"
+UBOOT_MACHINE = "evb-rk3288_defconfig"
diff --git a/conf/machine/fennec-rk3288.conf b/conf/machine/fennec-rk3288.conf
new file mode 100644
index 0000000..23e3ee7
--- /dev/null
+++ b/conf/machine/fennec-rk3288.conf
@@ -0,0 +1,10 @@
+# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+#@TYPE: Machine
+#@NAME: FENNEC RK3288
+
+include conf/machine/include/rk3288.inc
+
+KERNEL_DEVICETREE = "rk3288-fennec.dtb"
+UBOOT_MACHINE = "fennec-rk3288_defconfig"
diff --git a/conf/machine/firefly-rk3288.conf b/conf/machine/firefly-rk3288.conf
index 58d752b..d6e95ce 100644
--- a/conf/machine/firefly-rk3288.conf
+++ b/conf/machine/firefly-rk3288.conf
@@ -7,5 +7,6 @@
 #http://www.t-firefly.com/en/
 
 include conf/machine/include/rk3288.inc
+
 KERNEL_DEVICETREE = "rk3288-firefly.dtb"
 UBOOT_MACHINE = "firefly-rk3288_defconfig"
diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
index 964d8b0..8d8a3a3 100644
--- a/conf/machine/include/rk3288.inc
+++ b/conf/machine/include/rk3288.inc
@@ -8,6 +8,7 @@ require conf/machine/include/soc-family.inc
 
 PREFERRED_PROVIDER_virtual/kernel = "linux"
 SERIAL_CONSOLES = "115200;ttyS2"
+SPL_BINARY = "u-boot-spl-dtb.bin"
 KERNEL_IMAGETYPE = "zImage"
 KBUILD_DEFCONFIG = "multi_v7_defconfig"
 
@@ -16,3 +17,6 @@ SPL_BINARY ?= "u-boot-spl-dtb.bin"
 
 IMAGE_FSTYPES = "ext4 rockchip-gpt-img"
 IMAGE_CLASSES += "rockchip-gpt-img"
+
+APPEND = "console=tty1 console=ttyS2,115200n8 rw root=/dev/mmcblk2p7 rootfstype=ext4 init=/sbin/init"
+PREFERRED_VERSION_mali-userspace = "t76x"
diff --git a/conf/machine/tinker-rk3288.conf b/conf/machine/tinker-rk3288.conf
new file mode 100644
index 0000000..932c9ab
--- /dev/null
+++ b/conf/machine/tinker-rk3288.conf
@@ -0,0 +1,13 @@
+# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+#@TYPE: Machine
+#@NAME: Tinker RK3288
+#@DESCRIPTION: ASUS Tinker Board is a Raspberry Pi 3 Alternative based on Rockchip RK3288 Processor.
+
+include conf/machine/include/rk3288.inc
+
+KERNEL_DEVICETREE = "rk3288-miniarm.dtb"
+UBOOT_MACHINE = "tinker-rk3288_defconfig"
+
+GPTIMG_APPEND = "console=tty1 console=ttyS2,115200n8 rw root=/dev/mmcblk0p7 rootfstype=ext4 init=/sbin/init"
-- 
2.7.4


