Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 109EAE00D38; Sun, 21 Apr 2019 09:03:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 558 seconds by postgrey-1.32 at yocto-www;
	Sun, 21 Apr 2019 09:03:10 PDT
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF3B1E009A0
	for <yocto@yoctoproject.org>; Sun, 21 Apr 2019 09:03:10 -0700 (PDT)
Received: from misaki.sumomo.pri (unknown
	[IPv6:2001:470:b30d:2:c604:15ff:0:d51])
	by kozue.soulik.info (Postfix) with ESMTPA id 5FBBD101FC2;
	Mon, 22 Apr 2019 00:54:11 +0900 (JST)
From: Randy 'ayaka' Li <ayaka@soulik.info>
To: yocto@yoctoproject.org
Date: Sun, 21 Apr 2019 23:53:38 +0800
Message-Id: <20190421155339.6332-5-ayaka@soulik.info>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190421155339.6332-1-ayaka@soulik.info>
References: <20190421155339.6332-1-ayaka@soulik.info>
MIME-Version: 1.0
Cc: Randy Li <randy.li@rock-chips.com>, Randy 'ayaka' Li <ayaka@soulik.info>,
	romain.perier@gmail.com
Subject: [PATCH 4/5] conf/machine: add support for rk3036
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
X-List-Received-Date: Sun, 21 Apr 2019 16:03:12 -0000
Content-Transfer-Encoding: 8bit

RK3036 is a SoC from Rockchip which has Dual-Core
ARM Cortex-A7 CPU, for low-end OTT TV Box.

Supporting video acceleration for the HEVC and AVC
up to 1080P video. With a HDMI sink.

Signed-off-by: Randy 'ayaka' Li <ayaka@soulik.info>
Signed-off-by: Randy Li <randy.li@rock-chips.com>
---
 conf/machine/include/rk3036.inc | 19 +++++++++++++++++++
 conf/machine/kylin-rk3036.conf  | 12 ++++++++++++
 2 files changed, 31 insertions(+)
 create mode 100644 conf/machine/include/rk3036.inc
 create mode 100644 conf/machine/kylin-rk3036.conf

diff --git a/conf/machine/include/rk3036.inc b/conf/machine/include/rk3036.inc
new file mode 100644
index 0000000..5a9c55e
--- /dev/null
+++ b/conf/machine/include/rk3036.inc
@@ -0,0 +1,19 @@
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+SOC_FAMILY = "rk3036"
+
+require conf/machine/include/tune-cortexa7.inc
+require conf/machine/include/soc-family.inc
+
+PREFERRED_PROVIDER_virtual/kernel = "linux"
+SERIAL_CONSOLES = "115200;ttyS2"
+KERNEL_IMAGETYPE = "zImage"
+KBUILD_DEFCONFIG = "multi_v7_defconfig"
+
+PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot-rockchip"
+SPL_BINARY ?= "u-boot-spl-nodtb.bin"
+
+IMAGE_FSTYPES = "rockchip-gpt-img"
+IMAGE_CLASSES = "rockchip-gpt-img"
+
+GPTIMG_APPEND = "console=ttyS2,115200n8 rw root=/dev/mmcblk1p7 rootfstype=ext4 init=/sbin/init rootwait"
diff --git a/conf/machine/kylin-rk3036.conf b/conf/machine/kylin-rk3036.conf
new file mode 100644
index 0000000..9e42e87
--- /dev/null
+++ b/conf/machine/kylin-rk3036.conf
@@ -0,0 +1,12 @@
+# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+#@TYPE: Machine
+#@NAME: Kylin rk3036
+
+include conf/machine/include/rk3036.inc
+
+PREFERRED_PROVIDER_virtual/kernel = "linux-rockchip"
+
+KERNEL_DEVICETREE = "rk3036-kylin.dtb"
+UBOOT_MACHINE = "kylin-rk3036_defconfig"
-- 
2.20.1


