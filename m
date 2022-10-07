Return-Path: <jon.mason@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3FA40C4332F
	for <webhook@archiver.kernel.org>; Fri,  7 Oct 2022 14:12:15 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.4916.1665151930412019046
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Oct 2022 07:12:10 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: jon.mason@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AD3FB106F
	for <yocto@lists.yoctoproject.org>; Fri,  7 Oct 2022 07:12:15 -0700 (PDT)
Received: from localhost.localdomain (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 5B1F23F67D
	for <yocto@lists.yoctoproject.org>; Fri,  7 Oct 2022 07:12:09 -0700 (PDT)
From: Jon Mason <jon.mason@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 6/6] zephyr-bsp: add support for v2m-musca-s1
Date: Fri,  7 Oct 2022 10:12:03 -0400
Message-Id: <20221007141203.16632-6-jon.mason@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221007141203.16632-1-jon.mason@arm.com>
References: <20221007141203.16632-1-jon.mason@arm.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 07 Oct 2022 14:12:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58291

Signed-off-by: Jon Mason <jon.mason@arm.com>
---
 .gitlab-ci.yml                                |  3 +++
 ci/v2m-musca-s1.yml                           | 10 ++++++++
 .../conf/machine/v2m-musca-s1.conf            | 23 +++++++++++++++++++
 3 files changed, 36 insertions(+)
 create mode 100644 ci/v2m-musca-s1.yml
 create mode 100644 meta-zephyr-bsp/conf/machine/v2m-musca-s1.conf

diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
index e3b15ad..3f0e319 100644
--- a/.gitlab-ci.yml
+++ b/.gitlab-ci.yml
@@ -150,3 +150,6 @@ stm32mp157c-dk2:
 
 v2m-musca-b1:
   extends: .build
+
+v2m-musca-s1:
+  extends: .build
diff --git a/ci/v2m-musca-s1.yml b/ci/v2m-musca-s1.yml
new file mode 100644
index 0000000..01480e2
--- /dev/null
+++ b/ci/v2m-musca-s1.yml
@@ -0,0 +1,10 @@
+header:
+  version: 11
+  includes:
+    - ci/base.yml
+
+local_conf_header:
+  nonbuilding_tests: |
+    ZEPHYRTESTS:remove = "common sleep poll device queue"
+
+machine: v2m-musca-s1
diff --git a/meta-zephyr-bsp/conf/machine/v2m-musca-s1.conf b/meta-zephyr-bsp/conf/machine/v2m-musca-s1.conf
new file mode 100644
index 0000000..c43d560
--- /dev/null
+++ b/meta-zephyr-bsp/conf/machine/v2m-musca-s1.conf
@@ -0,0 +1,23 @@
+# Configuration for Musca-S1 development board
+
+#@TYPE: Machine
+#@NAME: Musca-S1 machine
+#@DESCRIPTION: Machine configuration for Musca-S1
+
+require conf/machine/include/arm/armv8-m/tune-cortexm33.inc
+
+# GLIBC will not work with Cortex-M.
+TCLIBC = "newlib"
+
+# For runqemu
+IMAGE_FSTYPES += "ext4"
+IMAGE_CLASSES += "qemuboot"
+QB_SYSTEM_NAME = "qemu-system-arm"
+QB_MACHINE = "-machine musca-s1"
+QB_CPU = "-cpu cortex-m33"
+QB_GRAPHICS = "-nographic -vga none"
+QB_MEM = "512k"
+
+# Zephyr RTOS settings
+ZEPHYR_INHERIT_CLASSES += "zephyr-qemuboot"
+ARCH:musca-s1 = "arm"
-- 
2.17.1


