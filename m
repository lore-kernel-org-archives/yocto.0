Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74076E00CDF; Sun, 21 Apr 2019 09:03:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 613DEE00CD6
	for <yocto@yoctoproject.org>; Sun, 21 Apr 2019 09:03:11 -0700 (PDT)
Received: from misaki.sumomo.pri (unknown
	[IPv6:2001:470:b30d:2:c604:15ff:0:d51])
	by kozue.soulik.info (Postfix) with ESMTPA id 934C5101829;
	Mon, 22 Apr 2019 00:54:09 +0900 (JST)
From: Randy 'ayaka' Li <ayaka@soulik.info>
To: yocto@yoctoproject.org
Date: Sun, 21 Apr 2019 23:53:36 +0800
Message-Id: <20190421155339.6332-3-ayaka@soulik.info>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190421155339.6332-1-ayaka@soulik.info>
References: <20190421155339.6332-1-ayaka@soulik.info>
MIME-Version: 1.0
Cc: Randy 'ayaka' Li <ayaka@soulik.info>, romain.perier@gmail.com
Subject: [PATCH 2/5] conf/machine: add rk3399 support
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

RK3399 is a new generation powerful SoC from Rockchip, which has
Dual Cortex-A72 + Quad Cortex-A53, 64-bit CPU.

Signed-off-by: Randy 'ayaka' Li <ayaka@soulik.info>
---
 conf/machine/excavator-rk3399.conf | 10 ++++++++++
 conf/machine/firefly-rk3399.conf   | 15 +++++++++++++++
 conf/machine/include/rk3399.inc    | 17 +++++++++++++++++
 3 files changed, 42 insertions(+)
 create mode 100644 conf/machine/excavator-rk3399.conf
 create mode 100644 conf/machine/firefly-rk3399.conf
 create mode 100644 conf/machine/include/rk3399.inc

diff --git a/conf/machine/excavator-rk3399.conf b/conf/machine/excavator-rk3399.conf
new file mode 100644
index 0000000..c7134d2
--- /dev/null
+++ b/conf/machine/excavator-rk3399.conf
@@ -0,0 +1,10 @@
+# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+#@TYPE: Machine
+#@NAME: EXCAVATOR 3399
+
+include conf/machine/include/rk3399.inc
+
+KERNEL_DEVICETREE = "rk3399-sapphire-excavator-linux.dtb"
+UBOOT_MACHINE = "evb-rk3399_defconfig"
diff --git a/conf/machine/firefly-rk3399.conf b/conf/machine/firefly-rk3399.conf
new file mode 100644
index 0000000..fefafed
--- /dev/null
+++ b/conf/machine/firefly-rk3399.conf
@@ -0,0 +1,15 @@
+# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+#@TYPE: Machine
+#@NAME: Firefly RK3399
+#@DESCRIPTION: Firefly-RK3399 is a Six-Core 64-bit High-Performance Platform.
+#http://www.t-firefly.com/en/
+
+include conf/machine/include/rk3399.inc
+
+PREFERRED_PROVIDER_virtual/kernel = "linux-rockchip"
+KERNEL_DEVICETREE = "rockchip/rk3399-firefly-linux.dtb"
+UBOOT_MACHINE = "evb-rk3399_defconfig"
+
+GPTIMG_APPEND = "console=ttyS2,1500000n8 rw root=PARTUUID=614e0000-0000 rootfstype=ext4 init=/sbin/init"
diff --git a/conf/machine/include/rk3399.inc b/conf/machine/include/rk3399.inc
new file mode 100644
index 0000000..6e2af57
--- /dev/null
+++ b/conf/machine/include/rk3399.inc
@@ -0,0 +1,17 @@
+# Copyright (C) 2019 SUMOMO Computer Association
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+SOC_FAMILY = "rk3399"
+
+require conf/machine/include/tune-cortexa72.inc
+require conf/machine/include/soc-family.inc
+
+PREFERRED_PROVIDER_virtual/kernel = "linux"
+SERIAL_CONSOLES = "1500000;ttyS2"
+KERNEL_IMAGETYPE = "Image"
+#KBUILD_DEFCONFIG = "multi_v8_defconfig"
+
+PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot-rockchip"
+
+IMAGE_FSTYPES = "rockchip-gpt-img"
+IMAGE_CLASSES = "rockchip-gpt-img"
-- 
2.20.1


