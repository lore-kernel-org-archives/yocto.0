Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20A5CE00BB7; Tue, 23 Apr 2019 06:25:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A8FEE00BAA
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 06:25:36 -0700 (PDT)
Received: from misaki.sumomo.pri (unknown
	[IPv6:2001:470:b30d:2:c604:15ff:0:d51])
	by kozue.soulik.info (Postfix) with ESMTPA id 36075101FC6;
	Tue, 23 Apr 2019 22:25:51 +0900 (JST)
From: Randy 'ayaka' Li <ayaka@soulik.info>
To: yocto@yoctoproject.org
Date: Tue, 23 Apr 2019 21:25:08 +0800
Message-Id: <20190423132514.21996-5-ayaka@soulik.info>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190423132514.21996-1-ayaka@soulik.info>
References: <20190423132514.21996-1-ayaka@soulik.info>
MIME-Version: 1.0
Cc: Randy Li <randy.li@rock-chips.com>, Randy 'ayaka' Li <ayaka@soulik.info>,
	romain.perier@gmail.com
Subject: [PATCH v2 04/10] conf/machine: add support for rk3036
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
X-List-Received-Date: Tue, 23 Apr 2019 13:25:38 -0000
Content-Transfer-Encoding: 8bit

RK3036 is a SoC from Rockchip which has Dual-Core
ARM Cortex-A7 CPU, for low-end OTT TV Box.

Supporting video acceleration for the HEVC and AVC
up to 1080P video. With a HDMI sink.

Signed-off-by: Randy 'ayaka' Li <ayaka@soulik.info>
Signed-off-by: Randy Li <randy.li@rock-chips.com>
---
 conf/machine/include/rk3036.inc | 16 ++++++++++++++++
 conf/machine/kylin-rk3036.conf  | 12 ++++++++++++
 2 files changed, 28 insertions(+)
 create mode 100644 conf/machine/include/rk3036.inc
 create mode 100644 conf/machine/kylin-rk3036.conf

diff --git a/conf/machine/include/rk3036.inc b/conf/machine/include/rk3036.inc
new file mode 100644
index 0000000..196f5a3
--- /dev/null
+++ b/conf/machine/include/rk3036.inc
@@ -0,0 +1,16 @@
+# Copyright (C) 2018 Randy 'ayaka' Li <ayaka@soulik.info>
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+SOC_FAMILY = "rk3036"
+
+require conf/machine/include/tune-cortexa7.inc
+require conf/machine/include/soc-family.inc
+require conf/machine/include/rockchip-defaults.inc
+
+SERIAL_CONSOLES = "115200;ttyS2"
+
+PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot-rockchip"
+SPL_BINARY ?= "u-boot-spl-nodtb.bin"
+
+IMAGE_FSTYPES = "rockchip-gpt-img"
+IMAGE_CLASSES = "rockchip-gpt-img"
diff --git a/conf/machine/kylin-rk3036.conf b/conf/machine/kylin-rk3036.conf
new file mode 100644
index 0000000..e47a3be
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
+KERNEL_DEVICETREE = "rk3036-kylin.dtb"
+UBOOT_MACHINE = "kylin-rk3036_defconfig"
+
+GPTIMG_APPEND = "console=ttyS2,115200n8 rw root=PARTUUID=69DAD710-2CE4 rootfstype=ext4 init=/sbin/init"
-- 
2.20.1


