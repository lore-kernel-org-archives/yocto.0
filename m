Return-Path: <jon.mason@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969CCC54EE9
	for <webhook@archiver.kernel.org>; Tue, 20 Sep 2022 19:27:06 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web12.1394.1663702021718982539
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Sep 2022 12:27:02 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: jon.mason@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 941EE139F
	for <yocto@lists.yoctoproject.org>; Tue, 20 Sep 2022 12:27:07 -0700 (PDT)
Received: from localhost.localdomain (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E98053F73D
	for <yocto@lists.yoctoproject.org>; Tue, 20 Sep 2022 12:27:00 -0700 (PDT)
From: Jon Mason <jon.mason@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 1/2] zephyr-bsp/qemu-cortex-a53: run testimage
Date: Tue, 20 Sep 2022 11:01:08 -0400
Message-Id: <20220920150109.7042-1-jon.mason@arm.com>
X-Mailer: git-send-email 2.17.1
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Sep 2022 19:27:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58099

Make the changes necessary to get testimage working and run it as part
of CI

Signed-off-by: Jon Mason <jon.mason@arm.com>
---
 .gitlab-ci.yml                                    | 1 +
 ci/qemu-cortex-a53.yml                            | 4 ++++
 meta-zephyr-bsp/conf/machine/qemu-cortex-a53.conf | 3 ++-
 3 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
index 145aefd..e0bf84e 100644
--- a/.gitlab-ci.yml
+++ b/.gitlab-ci.yml
@@ -82,6 +82,7 @@ qemu-cortex-a53:
   parallel:
     matrix:
       - TOOLCHAIN: [default, zephyr-toolchain]
+        TESTING: testimage
 
 qemu-cortex-m0:
   extends: .build
diff --git a/ci/qemu-cortex-a53.yml b/ci/qemu-cortex-a53.yml
index e77da8b..ca8b649 100644
--- a/ci/qemu-cortex-a53.yml
+++ b/ci/qemu-cortex-a53.yml
@@ -3,4 +3,8 @@ header:
   includes:
     - ci/base.yml
 
+local_conf_header:
+  failing_tests: |
+    ZEPHYRTESTS:remove = "interrupt"
+
 machine: qemu-cortex-a53
diff --git a/meta-zephyr-bsp/conf/machine/qemu-cortex-a53.conf b/meta-zephyr-bsp/conf/machine/qemu-cortex-a53.conf
index b97cde7..97e536e 100644
--- a/meta-zephyr-bsp/conf/machine/qemu-cortex-a53.conf
+++ b/meta-zephyr-bsp/conf/machine/qemu-cortex-a53.conf
@@ -9,9 +9,10 @@ TCLIBC = "newlib"
 
 # For runqemu
 QB_SYSTEM_NAME = "qemu-system-aarch64"
-QB_MACHINE = "-machine virt"
+QB_MACHINE = "-machine virt,secure=on,gic-version=3"
 QB_CPU = "-cpu cortex-a53"
 QB_OPT_APPEND = "-nographic -vga none"
+QB_OPT_APPEND = "-icount shift=4,align=off,sleep=on -rtc clock=vm"
 
 # Zephyr RTOS settings
 ZEPHYR_BOARD = "qemu_cortex_a53"
-- 
2.17.1


