Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BC7EE00DE1; Thu, 20 Jun 2019 04:19:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A3F7E00DFE
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2019 04:19:21 -0700 (PDT)
Received: from misaki.sumomo.pri (unknown
	[IPv6:2001:470:b30d:2:c604:15ff:0:56c])
	by kozue.soulik.info (Postfix) with ESMTPA id BE263100B78;
	Thu, 20 Jun 2019 20:20:51 +0900 (JST)
From: ayaka <ayaka@soulik.info>
To: yocto@yoctoproject.org
Date: Thu, 20 Jun 2019 19:19:04 +0800
Message-Id: <20190620111911.4736-3-ayaka@soulik.info>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190620111911.4736-1-ayaka@soulik.info>
References: <20190620111911.4736-1-ayaka@soulik.info>
MIME-Version: 1.0
Cc: Randy 'ayaka' Li <ayaka@soulik.info>
Subject: [PATCH v3 2/9] conf/machine: add support for rk3328
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
X-List-Received-Date: Thu, 20 Jun 2019 11:19:26 -0000
Content-Transfer-Encoding: 8bit

From: Randy 'ayaka' Li <ayaka@soulik.info>

The RK3328 is a SoC with Quad-core Cortex-A53 for Smart OTT/IPTV.

Signed-off-by: Randy 'ayaka' Li <ayaka@soulik.info>
---
 conf/machine/evb-rk3328.conf    | 11 +++++++++++
 conf/machine/include/rk3328.inc | 18 ++++++++++++++++++
 2 files changed, 29 insertions(+)
 create mode 100644 conf/machine/evb-rk3328.conf
 create mode 100644 conf/machine/include/rk3328.inc

diff --git a/conf/machine/evb-rk3328.conf b/conf/machine/evb-rk3328.conf
new file mode 100644
index 0000000..ae2c0f8
--- /dev/null
+++ b/conf/machine/evb-rk3328.conf
@@ -0,0 +1,11 @@
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
+GPTIMG_APPEND = "console=ttyS2,1500000n8 rw root=PARTUUID=B921B045-1DF0 rootfstype=ext4 init=/sbin/init"
diff --git a/conf/machine/include/rk3328.inc b/conf/machine/include/rk3328.inc
new file mode 100644
index 0000000..de5c9f4
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
+require conf/machine/include/rockchip-defaults.inc
+
+SERIAL_CONSOLES = "1500000;ttyS2"
+KERNEL_IMAGETYPE = "Image"
+KBUILD_DEFCONFIG = "defconfig"
+
+PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot-rockchip"
+
+IMAGE_FSTYPES = "rockchip-gpt-img"
+IMAGE_CLASSES = "rockchip-gpt-img"
-- 
2.21.0


