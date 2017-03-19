Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9275BE00AAB; Sun, 19 Mar 2017 10:58:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73C8BE00AAA
	for <yocto@yoctoproject.org>; Sun, 19 Mar 2017 10:58:47 -0700 (PDT)
Received: from misaki.sumomo.pri (unknown
	[IPv6:2001:470:b30d:2:3fe5:5e2:ef97:4abb])
	by kozue.soulik.info (Postfix) with ESMTPA id 2DC38102261;
	Mon, 20 Mar 2017 02:50:17 +0900 (JST)
From: ayaka <ayaka@soulik.info>
To: yocto@yoctoproject.org
Date: Mon, 20 Mar 2017 01:48:37 +0800
Message-Id: <1489945717-27219-8-git-send-email-ayaka@soulik.info>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1489945717-27219-1-git-send-email-ayaka@soulik.info>
References: <1489945717-27219-1-git-send-email-ayaka@soulik.info>
X-Mailman-Approved-At: Mon, 20 Mar 2017 10:57:32 -0700
Cc: Jacob Chen <jacob-chen@iotwrt.com>, ayaka <ayaka@soulik.info>
Subject: [PATCH 7/7] conf/machine: add support for rv1108
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
X-List-Received-Date: Sun, 19 Mar 2017 17:58:50 -0000

RV1108 is a SoC from Rockchip for the video recording
solutions.

Change-Id: I3e11ef2eababb4fc3cea497d7a8e00d9b0072a32
Signed-off-by: Jacob Chen <jacob-chen@iotwrt.com>
Signed-off-by: ayaka <ayaka@soulik.info>
---
 conf/machine/evb-rv1108.conf    | 10 ++++++++++
 conf/machine/include/rv1108.inc | 12 ++++++++++++
 2 files changed, 22 insertions(+)
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
index 0000000..1c70ef7
--- /dev/null
+++ b/conf/machine/include/rv1108.inc
@@ -0,0 +1,12 @@
+# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+SOC_FAMILY = "rv1108"
+
+require conf/machine/include/tune-cortexa7.inc
+require conf/machine/include/soc-family.inc
+
+PREFERRED_PROVIDER_virtual/kernel = "linux"
+SERIAL_CONSOLES = "1500000;ttyS2"
+KERNEL_IMAGETYPE = "zImage"
+KBUILD_DEFCONFIG = "multi_v7_defconfig"
-- 
2.7.4


