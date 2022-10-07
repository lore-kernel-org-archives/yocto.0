Return-Path: <jon.mason@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4BDC2C43217
	for <webhook@archiver.kernel.org>; Fri,  7 Oct 2022 14:12:15 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.5111.1665151929729428089
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Oct 2022 07:12:10 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: jon.mason@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F214F1764
	for <yocto@lists.yoctoproject.org>; Fri,  7 Oct 2022 07:12:14 -0700 (PDT)
Received: from localhost.localdomain (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 98C703F67D
	for <yocto@lists.yoctoproject.org>; Fri,  7 Oct 2022 07:12:08 -0700 (PDT)
From: Jon Mason <jon.mason@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 2/6] zephyr-bsp: add support for mps2-an385
Date: Fri,  7 Oct 2022 10:11:59 -0400
Message-Id: <20221007141203.16632-2-jon.mason@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221007141203.16632-1-jon.mason@arm.com>
References: <20221007141203.16632-1-jon.mason@arm.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 07 Oct 2022 14:12:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58289

Signed-off-by: Jon Mason <jon.mason@arm.com>
---
 .gitlab-ci.yml                               |  7 +++++++
 ci/mps2-an385.yml                            |  6 ++++++
 meta-zephyr-bsp/conf/machine/mps2-an385.conf | 19 +++++++++++++++++++
 3 files changed, 32 insertions(+)
 create mode 100644 ci/mps2-an385.yml
 create mode 100644 meta-zephyr-bsp/conf/machine/mps2-an385.conf

diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
index 031b5c5..b7de43a 100644
--- a/.gitlab-ci.yml
+++ b/.gitlab-ci.yml
@@ -77,6 +77,13 @@ frdm-kw41z:
 intel-x86-64:
   extends: .build
 
+mps2-an385:
+  extends: .build
+  parallel:
+    matrix:
+      - TOOLCHAIN: [default, zephyr-toolchain]
+        TESTING: testimage
+
 nrf52840-mdk-usb-dongle:
   extends: .build
 
diff --git a/ci/mps2-an385.yml b/ci/mps2-an385.yml
new file mode 100644
index 0000000..e536118
--- /dev/null
+++ b/ci/mps2-an385.yml
@@ -0,0 +1,6 @@
+header:
+  version: 11
+  includes:
+    - ci/base.yml
+
+machine: mps2-an385
diff --git a/meta-zephyr-bsp/conf/machine/mps2-an385.conf b/meta-zephyr-bsp/conf/machine/mps2-an385.conf
new file mode 100644
index 0000000..159e1bd
--- /dev/null
+++ b/meta-zephyr-bsp/conf/machine/mps2-an385.conf
@@ -0,0 +1,19 @@
+#@TYPE: Machine
+#@NAME: mps2-an385
+#@DESCRIPTION: Machine for Zephyr BOARD mps2-an385
+
+require conf/machine/include/qemu.inc
+require conf/machine/include/arm/armv7m/tune-cortexm3.inc
+
+TCLIBC = "newlib"
+
+# For runqemu
+QB_SYSTEM_NAME = "qemu-system-arm"
+QB_MACHINE = "-machine mps2-an385"
+QB_CPU = "-cpu cortex-m3"
+QB_GRAPHICS = "-nographic -vga none"
+QB_OPT_APPEND = "-icount shift=7,align=off,sleep=off -rtc clock=vm"
+
+# Zephyr RTOS settings
+ZEPHYR_INHERIT_CLASSES += "zephyr-qemuboot"
+ARCH:mps2-an385 = "arm"
-- 
2.17.1


