Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40C6FE00CDF; Sun, 21 Apr 2019 09:03:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2E0AE00C46
	for <yocto@yoctoproject.org>; Sun, 21 Apr 2019 09:03:10 -0700 (PDT)
Received: from misaki.sumomo.pri (unknown
	[IPv6:2001:470:b30d:2:c604:15ff:0:d51])
	by kozue.soulik.info (Postfix) with ESMTPA id 7627C101FBD;
	Mon, 22 Apr 2019 00:54:10 +0900 (JST)
From: Randy 'ayaka' Li <ayaka@soulik.info>
To: yocto@yoctoproject.org
Date: Sun, 21 Apr 2019 23:53:37 +0800
Message-Id: <20190421155339.6332-4-ayaka@soulik.info>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190421155339.6332-1-ayaka@soulik.info>
References: <20190421155339.6332-1-ayaka@soulik.info>
MIME-Version: 1.0
Cc: Randy 'ayaka' Li <ayaka@soulik.info>, romain.perier@gmail.com
Subject: [PATCH 3/5] conf/machine: add support for rk3328
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

The RK3328 is a SoC with Quad-core Cortex-A53 for Smart OTT/IPTV.

Signed-off-by: Randy 'ayaka' Li <ayaka@soulik.info>
---
 conf/machine/evb-rk3328.conf    | 12 ++++++++++++
 conf/machine/include/rk3328.inc | 18 ++++++++++++++++++
 2 files changed, 30 insertions(+)
 create mode 100644 conf/machine/evb-rk3328.conf
 create mode 100644 conf/machine/include/rk3328.inc

diff --git a/conf/machine/evb-rk3328.conf b/conf/machine/evb-rk3328.conf
new file mode 100644
index 0000000..67d2083
--- /dev/null
+++ b/conf/machine/evb-rk3328.conf
@@ -0,0 +1,12 @@
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+#@TYPE: Machine
+#@NAME: EVB 3388
+
+include conf/machine/include/rk3328.inc
+
+KERNEL_DEVICETREE = "rockchip/rk3328-evb.dtb"
+UBOOT_MACHINE = "evb-rk3328_defconfig"
+
+PREFERRED_PROVIDER_virtual/kernel = "linux-rockchip"
+GPTIMG_APPEND = "console=ttyS20,1500000n8 rw root=/dev/mmcblk2p5 rootfstype=ext4 init=/sbin/init"
diff --git a/conf/machine/include/rk3328.inc b/conf/machine/include/rk3328.inc
new file mode 100644
index 0000000..8dc018e
--- /dev/null
+++ b/conf/machine/include/rk3328.inc
@@ -0,0 +1,18 @@
+# Copyright (C) 2017 Randy Li <ayaka@soulik.info>
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+# RK3228H is the same SoC as rk3328.
+SOC_FAMILY = "rk3328"
+
+require conf/machine/include/tune-cortexa53.inc
+require conf/machine/include/soc-family.inc
+
+PREFERRED_PROVIDER_virtual/kernel = "linux"
+SERIAL_CONSOLES = "1500000;ttyS2"
+KERNEL_IMAGETYPE = "Image"
+KBUILD_DEFCONFIG = "multi_v8_defconfig"
+
+PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot-rockchip"
+
+IMAGE_FSTYPES = "rockchip-gpt-img"
+IMAGE_CLASSES = "rockchip-gpt-img"
-- 
2.20.1


