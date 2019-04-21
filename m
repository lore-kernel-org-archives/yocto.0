Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F80EE00A62; Sun, 21 Apr 2019 09:03:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2372E00C44
	for <yocto@yoctoproject.org>; Sun, 21 Apr 2019 09:03:10 -0700 (PDT)
Received: from misaki.sumomo.pri (unknown
	[IPv6:2001:470:b30d:2:c604:15ff:0:d51])
	by kozue.soulik.info (Postfix) with ESMTPA id 282F9100D6C;
	Mon, 22 Apr 2019 00:54:08 +0900 (JST)
From: Randy 'ayaka' Li <ayaka@soulik.info>
To: yocto@yoctoproject.org
Date: Sun, 21 Apr 2019 23:53:35 +0800
Message-Id: <20190421155339.6332-2-ayaka@soulik.info>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190421155339.6332-1-ayaka@soulik.info>
References: <20190421155339.6332-1-ayaka@soulik.info>
MIME-Version: 1.0
Cc: Randy 'ayaka' Li <ayaka@soulik.info>, romain.perier@gmail.com,
	Jacob Chen <jacob-chen@rock-chips.com>
Subject: [PATCH 1/5] conf/machine: rk3288: Add some machine files
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
X-List-Received-Date: Sun, 21 Apr 2019 16:03:13 -0000
Content-Transfer-Encoding: 8bit

Evb-rk3288 is the offical evaluate board.
Fennec-rk3288 and Tinker-rk3288 is rk3288 based SBCs.
Tinker Boards is a RPi compatible board made by ASUS.

Signed-off-by: Jacob Chen <jacob-chen@rock-chips.com>
Signed-off-by: Randy 'ayaka' Li <ayaka@soulik.info>
---
 conf/machine/evb-rk3288.conf    | 10 ++++++++++
 conf/machine/fennec-rk3288.conf | 10 ++++++++++
 conf/machine/include/rk3288.inc |  5 +++++
 conf/machine/tinker-rk3288.conf |  2 ++
 4 files changed, 27 insertions(+)
 create mode 100644 conf/machine/evb-rk3288.conf
 create mode 100644 conf/machine/fennec-rk3288.conf

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
diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
index 0528e8a..73b39fb 100644
--- a/conf/machine/include/rk3288.inc
+++ b/conf/machine/include/rk3288.inc
@@ -8,9 +8,14 @@ require conf/machine/include/soc-family.inc
 require conf/machine/include/rockchip-defaults.inc
 
 SERIAL_CONSOLES = "115200;ttyS2"
+SPL_BINARY = "u-boot-spl-dtb.bin"
+KERNEL_IMAGETYPE = "zImage"
+KBUILD_DEFCONFIG = "multi_v7_defconfig"
 
 PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot"
 SPL_BINARY ?= "u-boot-spl-dtb.bin"
 
 IMAGE_FSTYPES = "rockchip-gpt-img"
 IMAGE_CLASSES += "rockchip-gpt-img"
+
+APPEND = "console=ttyS2,115200n8 rw root=/dev/mmcblk2p7 rootfstype=ext4 init=/sbin/init"
diff --git a/conf/machine/tinker-rk3288.conf b/conf/machine/tinker-rk3288.conf
index 294bdc7..cf793cd 100644
--- a/conf/machine/tinker-rk3288.conf
+++ b/conf/machine/tinker-rk3288.conf
@@ -9,3 +9,5 @@ require conf/machine/include/rk3288.inc
 
 KERNEL_DEVICETREE = "rk3288-tinker.dtb"
 UBOOT_MACHINE = "tinker-rk3288_defconfig"
+
+GPTIMG_APPEND = "console=tty1 console=ttyS2,115200n8 rw root=/dev/mmcblk0p7 rootfstype=ext4 init=/sbin/init"
-- 
2.20.1


