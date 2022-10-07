Return-Path: <jon.mason@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41CF9C433FE
	for <webhook@archiver.kernel.org>; Fri,  7 Oct 2022 14:12:15 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web09.4980.1665151929545023010
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Oct 2022 07:12:09 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: jon.mason@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C048E16F2
	for <yocto@lists.yoctoproject.org>; Fri,  7 Oct 2022 07:12:14 -0700 (PDT)
Received: from localhost.localdomain (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6CB5C3F67D
	for <yocto@lists.yoctoproject.org>; Fri,  7 Oct 2022 07:12:08 -0700 (PDT)
From: Jon Mason <jon.mason@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 1/6] zephyr-bsp: add support for qemu-cortex-a9
Date: Fri,  7 Oct 2022 10:11:58 -0400
Message-Id: <20221007141203.16632-1-jon.mason@arm.com>
X-Mailer: git-send-email 2.17.1
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 07 Oct 2022 14:12:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58286

Signed-off-by: Jon Mason <jon.mason@arm.com>
---
 .gitlab-ci.yml                                |  7 +++++++
 ci/qemu-cortex-a9.yml                         | 10 ++++++++++
 .../conf/machine/qemu-cortex-a9.conf          | 20 +++++++++++++++++++
 3 files changed, 37 insertions(+)
 create mode 100644 ci/qemu-cortex-a9.yml
 create mode 100644 meta-zephyr-bsp/conf/machine/qemu-cortex-a9.conf

diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
index 5752254..031b5c5 100644
--- a/.gitlab-ci.yml
+++ b/.gitlab-ci.yml
@@ -90,6 +90,13 @@ qemu-cortex-a53:
       - TOOLCHAIN: [default, zephyr-toolchain]
         TESTING: testimage
 
+qemu-cortex-a9:
+  extends: .build
+  parallel:
+    matrix:
+      - TOOLCHAIN: [default, zephyr-toolchain]
+        TESTING: testimage
+
 qemu-cortex-m0:
   extends: .build
   parallel:
diff --git a/ci/qemu-cortex-a9.yml b/ci/qemu-cortex-a9.yml
new file mode 100644
index 0000000..cc44730
--- /dev/null
+++ b/ci/qemu-cortex-a9.yml
@@ -0,0 +1,10 @@
+header:
+  version: 11
+  includes:
+    - ci/base.yml
+
+local_conf_header:
+  failing_tests: |
+    ZEPHYRTESTS:remove = "common queue"
+
+machine: qemu-cortex-a9
diff --git a/meta-zephyr-bsp/conf/machine/qemu-cortex-a9.conf b/meta-zephyr-bsp/conf/machine/qemu-cortex-a9.conf
new file mode 100644
index 0000000..9dfee42
--- /dev/null
+++ b/meta-zephyr-bsp/conf/machine/qemu-cortex-a9.conf
@@ -0,0 +1,20 @@
+#@TYPE: Machine
+#@NAME: qemu-cortex-a9
+#@DESCRIPTION: Machine for Zephyr BOARD qemu_cortex_a9
+
+DEFAULTTUNE ?= "cortexa9"
+require conf/machine/include/qemu.inc
+require conf/machine/include/arm/armv7a/tune-cortexa9.inc
+
+TCLIBC = "newlib"
+
+# For runqemu
+QB_SYSTEM_NAME = "qemu-system-arm"
+QB_MACHINE = "-machine xilinx-zynq-a9"
+QB_CPU = "-cpu cortex-a9"
+QB_GRAPHICS = "-nographic -vga none"
+QB_OPT_APPEND = "-icount shift=3,align=off,sleep=off -rtc clock=vm"
+
+# Zephyr RTOS settings
+ZEPHYR_INHERIT_CLASSES += "zephyr-qemuboot"
+ARCH:qemu-cortex-a9 = "arm"
-- 
2.17.1


