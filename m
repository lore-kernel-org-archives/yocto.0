Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.8425.1581417954258032239
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Feb 2020 02:45:54 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: mail1.xn--80adja5bqm.su, ip: 140.211.169.56, mailfrom: jin@mail1.xn--80adja5bqm.su)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25690E01673; Tue, 11 Feb 2020 02:45:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	KHOP_HELO_FCRDNS,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
	*  0.4 KHOP_HELO_FCRDNS Relay HELO differs from its IP's reverse DNS
Received: from mail1.xn--80adja5bqm.su (xn--80adja5bqm.su [45.62.210.217])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDEC3E00C62
	for <yocto@yoctoproject.org>; Tue, 11 Feb 2020 02:45:53 -0800 (PST)
Received: by mail1.xn--80adja5bqm.su (Postfix, from userid 1000)
	id 2C40F20DBB30; Tue, 11 Feb 2020 04:52:25 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail1.xn--80adja5bqm.su 2C40F20DBB30
From: "Sergey Bostandzhyan" <jin@mediatomb.cc>
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Sergey 'Jin' Bostandzhyan <jin@mediatomb.cc>
Subject: [meta-rockchip][PATCH v2 2/2] Add tinker-board-s machine configuration
Date: Tue, 11 Feb 2020 04:52:24 +0100
Message-Id: <1581393144-5538-1-git-send-email-jin@mediatomb.cc>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <20200211042324.GB10571@linux-uys3>
References: <20200211042324.GB10571@linux-uys3>

From: Sergey 'Jin' Bostandzhyan <jin@mediatomb.cc>

Asus Tinker Board-S has emmc on mmcblk1, this is also the default
configuration when building the image. If you need an image for booting
from the sd card set RK_BOOT_DEVICE to mmcblk0

Signed-off-by: Sergey Bostandzhyan <jin@mediatomb.cc>
---
 README                           |  1 +
 conf/machine/tinker-board-s.conf | 27 +++++++++++++++++++++++++++
 2 files changed, 28 insertions(+)
 create mode 100644 conf/machine/tinker-board-s.conf

diff --git a/README b/README
index 983d946..d7a42fe 100644
--- a/README
+++ b/README
@@ -16,6 +16,7 @@ Status of supported boards:
 	builds and boots gpt image:
 		rock-pi-4
 		tinker-board
+		tinker-board-s
 		vyasa-rk3288
 		firefly-rk3288
 	builds:
diff --git a/conf/machine/tinker-board-s.conf b/conf/machine/tinker-board-s.conf
new file mode 100644
index 0000000..a7fe2fc
--- /dev/null
+++ b/conf/machine/tinker-board-s.conf
@@ -0,0 +1,27 @@
+# Copyright (C) 2020  Sergey Bostandzhyan
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+#@TYPE: Machine
+#@NAME: Tinker-S RK3288
+#@DESCRIPTION: ASUS Tinker Board is a Raspberry Pi 3 Alternative based on Rockchip RK3288 Processor.
+
+require conf/machine/include/rk3288.inc
+
+KERNEL_DEVICETREE = "rk3288-tinker-s.dtb"
+UBOOT_MACHINE = "tinker-s-rk3288_defconfig"
+
+RK_BOOT_DEVICE ?= "mmcblk1"
+
+WKS_FILE = "tinker-board.wks"
+IMAGE_FSTYPES += "wic wic.bmap"
+
+WKS_FILE_DEPENDS ?= " \
+    mtools-native \
+    dosfstools-native \
+    virtual/bootloader \
+    virtual/kernel \
+    "
+IMAGE_BOOT_FILES ?= "\
+    ${KERNEL_IMAGETYPE} \
+    ${KERNEL_DEVICETREE} \
+    "
-- 
2.24.1

