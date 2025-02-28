Return-Path: <abdelkhalek.mansouri@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87FC6C282C5
	for <webhook@archiver.kernel.org>; Fri, 28 Feb 2025 23:14:29 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web10.213.1740784460717072650
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Feb 2025 15:14:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kt5I32By;
 spf=pass (domain: gmail.com, ip: 209.85.221.50, mailfrom: abdelkhalek.mansouri@gmail.com)
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-38f29a1a93bso2102881f8f.1
        for <yocto@lists.yoctoproject.org>; Fri, 28 Feb 2025 15:14:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740784459; x=1741389259; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+FIliIFCKHa5Nvbo5e8/r57rq2nTPPuMX/WBYho+BQA=;
        b=kt5I32ByVkPkOjVpnp2Abu6DrW4FeBUSTqyIrF/d8rzS8cmVPGbNJVpk6RMJW7RXsQ
         ord3D8Ya/CEcDiU7k4jKIukbR/M83RhHVU26SoUcEBQz4aa0vjXwfli2qUqKrqYhmiek
         D4Mh6+socPKvH1LPCnmgGSBDFrj2vCDNpTRpYDw40+IndLYudewgYQ7+4ijjeqCGco+H
         WhjDawNz55ADfZ99ZnWm73xUyPYp/evL/nPsf+DJMRWoxK/lGqSI8ZQKlXoY2LNCG/mN
         jutpzPJW8Mnk2pPYS6PMKptRFffYq2ankG8KBOEfo5pKF6+7JIHxwA8EUmx1Jn2U1bUO
         32Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740784459; x=1741389259;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+FIliIFCKHa5Nvbo5e8/r57rq2nTPPuMX/WBYho+BQA=;
        b=T1PjOTJdxxFC3d/g8fk+hiNBaBezvDln1sJprbGXWT3B053gfaYzFpy50z0cgjRadC
         uJcalPmrBd9SsOsprZDWrihUq0CVrF3U9JU3w9GUzIIXPSJU6Yyr/oeMBPgx3Z1OHQIa
         GXPcdvUybWAO+OK5WAw2OmIdB5VTvS2hWabY1kYU88NAi9dZ9X8jkuHW0OX3IRylou6a
         37XKySyUWjYeHCNnUZB8/aCkOQQIlVUCU5jIH5iJrZiY5gHbJx0+odjlIlf6wPGyDc/k
         rwexDuomftu8d/4TdLttlkHAaRkriwszJjLNtjciFMAUFHZif5tjJZO/lsIbV2oGC2fv
         uHxg==
X-Gm-Message-State: AOJu0YyRijss64N3rCZKR2B3r4s+2mk52Z0dgV3xACeQ0jxeJtQJmuZg
	nCWEhSzN8UxQ1i1er5kblaWkMlPUFcOayB02RrhrLs7TmZExT4ndoE4Zqg==
X-Gm-Gg: ASbGncsd9MH79HR36X49KJdqwAGx6lMUJCVIfFBvuv8l3PVyfeKrQLdnQdEO+8hhfCZ
	YKDu4Wv5s5DzyO8vS8UyS0+/p+CucJZHDPo5u1xJ3cbZiBn0eQfzBJTivKyVfxhLnyRP3dF554c
	N+ykaODucu3oE/d7MnqdLPxgcf3nzeMVIq0D1wpyDDnb39WRc6+D6HSeiqEZlHcRE87E3MGHvgY
	5BPD+ePI1ytVDUfAz6MuAJ8YeT1Omae2yTYnX8TRUt/9xBjsc4BMP2CpCIs4gYMnrTCtM3WRHvv
	g+Sfu5p0q1nBstp/M0rZvJXXjjZClK5vqTp9AQ4YG7cBTwKhZzPzJH5qFVmQ7UyJs491rsJbViz
	crgpuJKxCX5X0/2tj7OfuBT8Inr67fVHGFcdvsJmG
X-Google-Smtp-Source: AGHT+IFFVk3XkssPdOQEvkea2rPSYKCkYzsra0AeOBmGbdJWMfOF1BNbtv2zsS7EguiE5Afp1mXnpw==
X-Received: by 2002:a05:6000:4182:b0:390:e521:4bc4 with SMTP id ffacd0b85a97d-390ec9bccf0mr4227920f8f.23.1740784458646;
        Fri, 28 Feb 2025 15:14:18 -0800 (PST)
Received: from tns-ubuntu.TECHANDSTRAT.COM (89-89-71-101.abo.bbox.fr. [89.89.71.101])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e4795da5sm6645205f8f.15.2025.02.28.15.14.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Feb 2025 15:14:17 -0800 (PST)
From: Abdelkhalek Mansouri <abdelkhalek.mansouri@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: "abdelkhalek-mansouri" <abdelkhalek.mansouri@gmail.com>
Subject: [meta-raspberrypi][PATCH 2/2] Add boot script for A/B partition layout
Date: Sat,  1 Mar 2025 00:14:13 +0100
Message-ID: <20250228231413.3022-1-abdelkhalek.mansouri@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Feb 2025 23:14:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64898

From: "abdelkhalek-mansouri" <abdelkhalek.mansouri@gmail.com>

Description:
This patch adds a new boot script "ab.boot.cmd.in", to support A/B partition layout.
The recipe "rpi-u-boot-scr" has been updated by consequence.

Signed-off-by: abdelkhalek-mansouri <abdelkhalek.mansouri@gmail.com>
---
 .../rpi-u-boot-scr/files/ab.boot.cmd.in       | 50 +++++++++++++++++++
 recipes-bsp/rpi-u-boot-scr/files/boot.cmd.in  |  1 +
 recipes-bsp/rpi-u-boot-scr/rpi-u-boot-scr.bb  | 22 +++++---
 3 files changed, 67 insertions(+), 6 deletions(-)
 create mode 100644 recipes-bsp/rpi-u-boot-scr/files/ab.boot.cmd.in

diff --git a/recipes-bsp/rpi-u-boot-scr/files/ab.boot.cmd.in b/recipes-bsp/rpi-u-boot-scr/files/ab.boot.cmd.in
new file mode 100644
index 0000000..2d33586
--- /dev/null
+++ b/recipes-bsp/rpi-u-boot-scr/files/ab.boot.cmd.in
@@ -0,0 +1,50 @@
+# Set the address of the Flattened Device Tree (FDT) and retreive the boot arguments
+fdt addr ${fdt_addr} && fdt get value bootargs /chosen bootargs
+
+echo "Using A/B rootfs layout setup"
+test -n "${BOOT_ORDER}"   || setenv BOOT_ORDER "A B"
+test -n "${BOOT_A_LEFT}"  || setenv BOOT_A_LEFT 3
+test -n "${BOOT_B_LEFT}"  || setenv BOOT_B_LEFT 3
+test -n "${BOOT_PART_NUM}" || setenv BOOT_PART_NUM "0:1"
+
+setenv bootpart
+
+for BOOT_SLOT in "${BOOT_ORDER}"; do
+  if test "x${bootpart}" != "x"; then
+    # skip remaining slots
+  elif test "x${BOOT_SLOT}" = "xA"; then
+    if itest ${BOOT_A_LEFT} -gt 0; then
+      setexpr BOOT_A_LEFT ${BOOT_A_LEFT} - 1
+      echo "Found valid slot A"
+      setenv bootpart "/dev/mmcblk0p2"
+      setenv BOOT_PART_NUM "0:2"
+    fi
+  elif test "x${BOOT_SLOT}" = "xB"; then
+    if itest ${BOOT_B_LEFT} -gt 0; then
+      setexpr BOOT_B_LEFT ${BOOT_B_LEFT} - 1
+      echo "Found valid slot B"
+      setenv bootpart "/dev/mmcblk0p3"
+      setenv BOOT_PART_NUM "0:3"
+    fi
+  fi
+done
+
+if test -n "${bootpart}"; then
+  setenv bootargs "${bootargs} root=${bootpart}"
+  saveenv
+else
+  echo "No valid slot found. Resetting tries to 3"
+  setenv BOOT_A_LEFT 3
+  setenv BOOT_B_LEFT 3
+  saveenv
+  reset
+fi        
+
+# Load the kernel image
+load @@BOOT_MEDIA@@ ${BOOT_PART_NUM} ${kernel_addr_r} boot/@@KERNEL_IMAGETYPE@@
+      
+# Check if the uboot.env file exists on the specified boot media and partition    
+if test ! -e @@BOOT_MEDIA@@ 0:1 uboot.env; then saveenv; fi;
+
+# Execute the kernel boot command
+@@KERNEL_BOOTCMD@@ ${kernel_addr_r} - ${fdt_addr}
diff --git a/recipes-bsp/rpi-u-boot-scr/files/boot.cmd.in b/recipes-bsp/rpi-u-boot-scr/files/boot.cmd.in
index 58fd86a..59eebd0 100644
--- a/recipes-bsp/rpi-u-boot-scr/files/boot.cmd.in
+++ b/recipes-bsp/rpi-u-boot-scr/files/boot.cmd.in
@@ -1,3 +1,4 @@
+echo "Using single rootfs layout setup"
 fdt addr ${fdt_addr} && fdt get value bootargs /chosen bootargs
 fatload @@BOOT_MEDIA@@ 0:1 ${kernel_addr_r} @@KERNEL_IMAGETYPE@@
 if test ! -e @@BOOT_MEDIA@@ 0:1 uboot.env; then saveenv; fi;
diff --git a/recipes-bsp/rpi-u-boot-scr/rpi-u-boot-scr.bb b/recipes-bsp/rpi-u-boot-scr/rpi-u-boot-scr.bb
index 1dff808..0e7b78d 100644
--- a/recipes-bsp/rpi-u-boot-scr/rpi-u-boot-scr.bb
+++ b/recipes-bsp/rpi-u-boot-scr/rpi-u-boot-scr.bb
@@ -7,16 +7,26 @@ DEPENDS = "u-boot-mkimage-native"
 
 INHIBIT_DEFAULT_DEPS = "1"
 
-SRC_URI = "file://boot.cmd.in"
+SRC_URI = "file://boot.cmd.in \
+           file://ab.boot.cmd.in"
 
 BOOT_MEDIA ?= "mmc"
 
 do_compile() {
-    sed -e 's/@@KERNEL_IMAGETYPE@@/${KERNEL_IMAGETYPE}/' \
-        -e 's/@@KERNEL_BOOTCMD@@/${KERNEL_BOOTCMD}/' \
-        -e 's/@@BOOT_MEDIA@@/${BOOT_MEDIA}/' \
-        "${WORKDIR}/boot.cmd.in" > "${WORKDIR}/boot.cmd"
-    mkimage -A ${UBOOT_ARCH} -T script -C none -n "Boot script" -d "${WORKDIR}/boot.cmd" boot.scr
+    if [ "${RPI_AB_PARTITION_LAYOUT}" = "0" ]; then
+        sed -e 's/@@KERNEL_IMAGETYPE@@/${KERNEL_IMAGETYPE}/' \
+            -e 's/@@KERNEL_BOOTCMD@@/${KERNEL_BOOTCMD}/' \
+            -e 's/@@BOOT_MEDIA@@/${BOOT_MEDIA}/' \
+            "${WORKDIR}/boot.cmd.in" > "${WORKDIR}/boot.cmd"
+        mkimage -A ${UBOOT_ARCH} -T script -C none -n "Boot script" -d "${WORKDIR}/boot.cmd" boot.scr
+    else
+        sed -e 's/@@KERNEL_IMAGETYPE@@/${KERNEL_IMAGETYPE}/' \
+            -e 's/@@KERNEL_BOOTCMD@@/${KERNEL_BOOTCMD}/' \
+            -e 's/@@BOOT_MEDIA@@/${BOOT_MEDIA}/' \
+            -e 's/@@RPI_AB_PARTITION_LAYOUT@@/${RPI_AB_PARTITION_LAYOUT}/' \
+            "${WORKDIR}/ab.boot.cmd.in" > "${WORKDIR}/boot.cmd"
+        mkimage -A ${UBOOT_ARCH} -T script -C none -n "Boot script" -d "${WORKDIR}/boot.cmd" boot.scr
+    fi
 }
 
 inherit kernel-arch deploy nopackages
-- 
2.43.0


