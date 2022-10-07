Return-Path: <jon.mason@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63367C43219
	for <webhook@archiver.kernel.org>; Fri,  7 Oct 2022 14:12:15 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web08.4907.1665151929616062563
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Oct 2022 07:12:10 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: jon.mason@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 577391CE2
	for <yocto@lists.yoctoproject.org>; Fri,  7 Oct 2022 07:12:15 -0700 (PDT)
Received: from localhost.localdomain (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 022053F67D
	for <yocto@lists.yoctoproject.org>; Fri,  7 Oct 2022 07:12:08 -0700 (PDT)
From: Jon Mason <jon.mason@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 4/6] zephyr-bsp: add support for mps3-an547
Date: Fri,  7 Oct 2022 10:12:01 -0400
Message-Id: <20221007141203.16632-4-jon.mason@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221007141203.16632-1-jon.mason@arm.com>
References: <20221007141203.16632-1-jon.mason@arm.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 07 Oct 2022 14:12:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58287

Signed-off-by: Jon Mason <jon.mason@arm.com>
---
 .gitlab-ci.yml                               |  7 +++++++
 ci/mps3-an547.yml                            |  6 ++++++
 meta-zephyr-bsp/conf/machine/mps3-an547.conf | 20 ++++++++++++++++++++
 3 files changed, 33 insertions(+)
 create mode 100644 ci/mps3-an547.yml
 create mode 100644 meta-zephyr-bsp/conf/machine/mps3-an547.conf

diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
index 9c6ac3b..538f4ff 100644
--- a/.gitlab-ci.yml
+++ b/.gitlab-ci.yml
@@ -91,6 +91,13 @@ mps2-an521:
       - TOOLCHAIN: [default, zephyr-toolchain]
         TESTING: testimage
 
+mps3-an547:
+  extends: .build
+  parallel:
+    matrix:
+      - TOOLCHAIN: [default, zephyr-toolchain]
+        TESTING: testimage
+
 nrf52840-mdk-usb-dongle:
   extends: .build
 
diff --git a/ci/mps3-an547.yml b/ci/mps3-an547.yml
new file mode 100644
index 0000000..372ec04
--- /dev/null
+++ b/ci/mps3-an547.yml
@@ -0,0 +1,6 @@
+header:
+  version: 11
+  includes:
+    - ci/base.yml
+
+machine: mps3-an547
diff --git a/meta-zephyr-bsp/conf/machine/mps3-an547.conf b/meta-zephyr-bsp/conf/machine/mps3-an547.conf
new file mode 100644
index 0000000..185c425
--- /dev/null
+++ b/meta-zephyr-bsp/conf/machine/mps3-an547.conf
@@ -0,0 +1,20 @@
+#@TYPE: Machine
+#@NAME: mps3-an547
+#@DESCRIPTION: Machine for Zephyr BOARD mps3-an547
+
+DEFAULTTUNE ?= "armv8-1m-main"
+require conf/machine/include/qemu.inc
+require conf/machine/include/arm/armv8-1m/tune-cortexm55.inc
+
+TCLIBC = "newlib"
+
+# For runqemu
+QB_SYSTEM_NAME = "qemu-system-arm"
+QB_MACHINE = "-machine mps3-an547"
+QB_CPU = "-cpu cortex-m55"
+QB_GRAPHICS = "-nographic -vga none"
+QB_OPT_APPEND = "-icount shift=7,align=off,sleep=off -rtc clock=vm"
+
+# Zephyr RTOS settings
+ZEPHYR_INHERIT_CLASSES += "zephyr-qemuboot"
+ARCH:mps3-an547 = "arm"
-- 
2.17.1


