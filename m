Return-Path: <jon.mason@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985A6C6FA8B
	for <webhook@archiver.kernel.org>; Tue, 20 Sep 2022 19:27:06 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web08.1407.1663702022304591578
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Sep 2022 12:27:02 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: jon.mason@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BF702143D
	for <yocto@lists.yoctoproject.org>; Tue, 20 Sep 2022 12:27:07 -0700 (PDT)
Received: from localhost.localdomain (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 27AD93F73D
	for <yocto@lists.yoctoproject.org>; Tue, 20 Sep 2022 12:27:01 -0700 (PDT)
From: Jon Mason <jon.mason@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 2/2] zephyr-bsp: zephyr parameters update
Date: Tue, 20 Sep 2022 11:01:09 -0400
Message-Id: <20220920150109.7042-2-jon.mason@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220920150109.7042-1-jon.mason@arm.com>
References: <20220920150109.7042-1-jon.mason@arm.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Sep 2022 19:27:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58100

Update the parameters being run in qemu to get more stable results.
Values taken from zephyr qemu.  Also, use QB_GRAPHICS instead of
QB_OPT_APPEND for the relevant places.

Signed-off-by: Jon Mason <jon.mason@arm.com>
---
 .gitlab-ci.yml                                    | 3 ++-
 ci/qemu-cortex-m3.yml                             | 6 ------
 meta-zephyr-bsp/conf/machine/qemu-cortex-a53.conf | 2 +-
 meta-zephyr-bsp/conf/machine/qemu-cortex-m0.conf  | 4 ++--
 meta-zephyr-bsp/conf/machine/qemu-cortex-m3.conf  | 3 ++-
 meta-zephyr-bsp/conf/machine/qemu-cortex-r5.conf  | 2 +-
 meta-zephyr-bsp/conf/machine/qemu-x86.conf        | 2 +-
 7 files changed, 9 insertions(+), 13 deletions(-)

diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
index e0bf84e..082cd44 100644
--- a/.gitlab-ci.yml
+++ b/.gitlab-ci.yml
@@ -88,7 +88,8 @@ qemu-cortex-m0:
   extends: .build
   parallel:
     matrix:
-      - TESTING: testimage
+      - TOOLCHAIN: [default, zephyr-toolchain]
+        TESTING: testimage
 
 qemu-cortex-m3:
   extends: .build
diff --git a/ci/qemu-cortex-m3.yml b/ci/qemu-cortex-m3.yml
index b01480c..46fd551 100644
--- a/ci/qemu-cortex-m3.yml
+++ b/ci/qemu-cortex-m3.yml
@@ -3,10 +3,4 @@ header:
   includes:
     - ci/base.yml
 
-local_conf_header:
-  nonbuilding_tests: |
-    ZEPHYRTESTS:remove = "common context pending poll sleep"
-  qemu_opts: |
-    QB_OPT_APPEND = "-icount shift=3,align=off,sleep=on -rtc clock=vm"
-
 machine: qemu-cortex-m3
diff --git a/meta-zephyr-bsp/conf/machine/qemu-cortex-a53.conf b/meta-zephyr-bsp/conf/machine/qemu-cortex-a53.conf
index 97e536e..e21f3da 100644
--- a/meta-zephyr-bsp/conf/machine/qemu-cortex-a53.conf
+++ b/meta-zephyr-bsp/conf/machine/qemu-cortex-a53.conf
@@ -11,7 +11,7 @@ TCLIBC = "newlib"
 QB_SYSTEM_NAME = "qemu-system-aarch64"
 QB_MACHINE = "-machine virt,secure=on,gic-version=3"
 QB_CPU = "-cpu cortex-a53"
-QB_OPT_APPEND = "-nographic -vga none"
+QB_GRAPHICS = "-nographic -vga none"
 QB_OPT_APPEND = "-icount shift=4,align=off,sleep=on -rtc clock=vm"
 
 # Zephyr RTOS settings
diff --git a/meta-zephyr-bsp/conf/machine/qemu-cortex-m0.conf b/meta-zephyr-bsp/conf/machine/qemu-cortex-m0.conf
index 1cf2bb0..736579e 100644
--- a/meta-zephyr-bsp/conf/machine/qemu-cortex-m0.conf
+++ b/meta-zephyr-bsp/conf/machine/qemu-cortex-m0.conf
@@ -14,9 +14,9 @@ TCLIBC = "newlib"
 QB_SYSTEM_NAME = "qemu-system-arm"
 QB_MACHINE = "-machine microbit"
 QB_CPU = "-cpu cortex-m0"
-QB_OPT_APPEND = "-nographic -vga none"
+QB_GRAPHICS = "-nographic -vga none"
 QB_RNG = ""
-QB_OPT_APPEND = "-icount shift=6,align=off,sleep=on -rtc clock=vm"
+QB_OPT_APPEND = "-icount shift=6,align=off,sleep=off -rtc clock=vm"
 
 # Zephyr RTOS settings
 ZEPHYR_BOARD = "qemu_cortex_m0"
diff --git a/meta-zephyr-bsp/conf/machine/qemu-cortex-m3.conf b/meta-zephyr-bsp/conf/machine/qemu-cortex-m3.conf
index 835a775..e6edefb 100644
--- a/meta-zephyr-bsp/conf/machine/qemu-cortex-m3.conf
+++ b/meta-zephyr-bsp/conf/machine/qemu-cortex-m3.conf
@@ -10,8 +10,9 @@ ZEPHYR_INHERIT_CLASSES += "zephyr-qemuboot"
 # For runqemu
 QB_SYSTEM_NAME = "qemu-system-arm"
 QB_MACHINE = "-machine lm3s6965evb"
-QB_OPT_APPEND = "-nographic -vga none"
+QB_GRAPHICS = "-nographic -vga none"
 QB_CPU = "-cpu cortex-m3"
 QB_RNG = ""
+QB_OPT_APPEND = "-icount shift=6,align=off,sleep=off -rtc clock=vm"
 
 ARCH:qemu-cortex-m3 = "arm"
diff --git a/meta-zephyr-bsp/conf/machine/qemu-cortex-r5.conf b/meta-zephyr-bsp/conf/machine/qemu-cortex-r5.conf
index 29b37d7..5a0ea69 100644
--- a/meta-zephyr-bsp/conf/machine/qemu-cortex-r5.conf
+++ b/meta-zephyr-bsp/conf/machine/qemu-cortex-r5.conf
@@ -13,7 +13,7 @@ QB_SYSTEM_NAME = "qemu-system-aarch64"
 QB_MACHINE = "-machine xlnx-zcu102"
 QB_CPU = "-cpu cortex-r5"
 QB_MEM = "-m 64k"
-QB_OPT_APPEND = "-nographic -vga none"
+QB_GRAPHICS = "-nographic -vga none"
 QB_RNG = ""
 
 # Zephyr RTOS settings
diff --git a/meta-zephyr-bsp/conf/machine/qemu-x86.conf b/meta-zephyr-bsp/conf/machine/qemu-x86.conf
index ae7716c..0333d7c 100644
--- a/meta-zephyr-bsp/conf/machine/qemu-x86.conf
+++ b/meta-zephyr-bsp/conf/machine/qemu-x86.conf
@@ -10,7 +10,7 @@ ZEPHYR_INHERIT_CLASSES += "zephyr-qemuboot"
 # For runqemu
 QB_SYSTEM_NAME = "qemu-system-i386"
 QB_MACHINE = "-machine type=pc-q35-2.10"
-QB_OPT_APPEND = "-nographic -no-acpi"
+QB_GRAPHICS = "-nographic -no-acpi"
 QB_CPU:x86 = "-cpu qemu32,+nx,+pae"
 QB_CPU_KVM:x86 = "-cpu kvm32"
 
-- 
2.17.1


