Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B038E00A84; Tue, 23 Apr 2019 06:25:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88F07E00D39
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 06:25:34 -0700 (PDT)
Received: from misaki.sumomo.pri (unknown
	[IPv6:2001:470:b30d:2:c604:15ff:0:d51])
	by kozue.soulik.info (Postfix) with ESMTPA id 7BD13101FC5;
	Tue, 23 Apr 2019 22:25:47 +0900 (JST)
From: Randy 'ayaka' Li <ayaka@soulik.info>
To: yocto@yoctoproject.org
Date: Tue, 23 Apr 2019 21:25:07 +0800
Message-Id: <20190423132514.21996-4-ayaka@soulik.info>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190423132514.21996-1-ayaka@soulik.info>
References: <20190423132514.21996-1-ayaka@soulik.info>
MIME-Version: 1.0
Cc: Randy 'ayaka' Li <ayaka@soulik.info>, romain.perier@gmail.com
Subject: [PATCH v2 03/10] conf/machine: add support for rv1108
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

RV1108 is a SoC specific for video enhanced and
recording. It is embedded with a DSP for digital
process and an ARM Cortex-A7 single core processor
for system and application.

Signed-off-by: Randy 'ayaka' Li <ayaka@soulik.info>
---
 conf/machine/evb-rv1108.conf    | 10 ++++++++++
 conf/machine/include/rv1108.inc | 16 ++++++++++++++++
 2 files changed, 26 insertions(+)
 create mode 100644 conf/machine/evb-rv1108.conf
 create mode 100644 conf/machine/include/rv1108.inc

diff --git a/conf/machine/evb-rv1108.conf b/conf/machine/evb-rv1108.conf
new file mode 100644
index 0000000..3e85d80
--- /dev/null
+++ b/conf/machine/evb-rv1108.conf
@@ -0,0 +1,10 @@
+# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+#@TYPE: Machine
+#@NAME: EVB rv1108
+
+include conf/machine/include/rv1108.inc
+
+KERNEL_DEVICETREE = "rv1108-evb.dtb"
+UBOOT_MACHINE = "evb-rk3288_defconfig"
diff --git a/conf/machine/include/rv1108.inc b/conf/machine/include/rv1108.inc
new file mode 100644
index 0000000..c1bb584
--- /dev/null
+++ b/conf/machine/include/rv1108.inc
@@ -0,0 +1,16 @@
+# Copyright (C) 2019 Randy 'ayaka' Li <ayaka@soulik.info>
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+SOC_FAMILY = "rv1108"
+
+require conf/machine/include/tune-cortexa7.inc
+require conf/machine/include/soc-family.inc
+require conf/machine/include/rockchip-defaults.inc
+
+SERIAL_CONSOLES = "1500000;ttyS2"
+
+PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot-rockchip"
+SPL_BINARY ?= "u-boot-spl-nodtb.bin"
+
+IMAGE_FSTYPES = "rockchip-gpt-img"
+IMAGE_CLASSES = "rockchip-gpt-img"
-- 
2.20.1


