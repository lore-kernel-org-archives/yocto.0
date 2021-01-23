Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
 by mx.groups.io with SMTP id smtpd.web09.12650.1611435921836326789
 for <yocto@lists.yoctoproject.org>;
 Sat, 23 Jan 2021 13:05:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=KJTTzeLf;
 spf=pass (domain: gmail.com, ip: 209.85.210.50, mailfrom: jpewhacker@gmail.com)
Received: by mail-ot1-f50.google.com with SMTP id i30so8849866ota.6
        for <yocto@lists.yoctoproject.org>; Sat, 23 Jan 2021 13:05:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LdU1zvshC+3/ZRVIoBs5P15KaNUKg/y3OQBOoGpFR5Q=;
        b=KJTTzeLfYqsKKID2VKZacLnRiCDnyGzuDYyxJ0+TqRVlFvehIZtLWsKDKDvNU9dmrj
         iRVZB7BkywGYPB2rQwkh0kSlFa45VdegkhU2/kPevKaQh+FAEu599d6wvtDE6DKjCIAf
         R8+agPbYsKckrqzPQUqjyn/4/BirSdNVeQ0vLzGGMkOV+2kqfKIkyL77oTdmR2GhQfj7
         vlWlHdSaaTNrWrfInK8EIkqqc5hkVlGGkI46mpIGoLEQBc+WKXFseSMuWC4dGJTW8EFU
         4GpTyGnbMJqsJR3w3OuUla+0UvFLApgQO0c6k5W4MndYcadWvFof8bdUf4VWF089C80s
         JrQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LdU1zvshC+3/ZRVIoBs5P15KaNUKg/y3OQBOoGpFR5Q=;
        b=qniWvwdtbAqJo6SU63dTjWyUKLMFQJ+zWnZDwUmwshf2G7PxTRuvB0x+1I/74BXKHg
         kDVnrRRvXoM0MvDMD+P6Z4K9xL9ZK+7PImjyeaTW3ZDL76InpXxikt0jx5TiudlDxYim
         R3UPSTKXQujPP9MpBNIqaJ5KzRTUwMJQ2QJ/38prXmkn1C5JG/pEljl02rRni1/YokY7
         HAjG2eu0zJW+Xa0JzVIvLUuKXG6tAAgNoRzsDsUwkUqi+Dqdfb34naLcLkMOWoAlwS7n
         u+CWqOdHK9fv4MxeGZK8OloOQI26LnuPUjew/jGW42R0MBgDRIwDdwBMHRhBHe1pxc+4
         vIQQ==
X-Gm-Message-State: AOAM532LzwyrqEYwN/1sP7NWFawC91LRFFQy9kb6sTT1OKyMRrd+Co+0
	ro/3YHeKLHPU4z0+ytGB8MlblouGCVM=
X-Google-Smtp-Source: ABdhPJxJ5St6OADtOuEXJdfAgVbIBf/tlzh34YFK6dNCS7MclAeCwE8j8HVP55mFjAC6tFPgUXds2A==
X-Received: by 2002:a05:6830:185:: with SMTP id q5mr292174ota.359.1611435920966;
        Sat, 23 Jan 2021 13:05:20 -0800 (PST)
Return-Path: <jpewhacker@gmail.com>
Received: from localhost.localdomain ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id i9sm2558389oii.34.2021.01.23.13.05.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jan 2021 13:05:20 -0800 (PST)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Joshua Watt <JPEWhacker@gmail.com>
Subject: [meta-rockchip][PATCH] rock-pi-4: Split our variant machines
Date: Sat, 23 Jan 2021 15:05:12 -0600
Message-Id: <20210123210512.20111-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Splits out the three variants of the rock-pi-4 (A, B & C) into their own
machines. Unfortunately, it is not possible to have a single machine
that works for all three, as there isn't any known ways for the
bootloader to distinguish them.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 conf/machine/include/rk3399.inc                        | 2 +-
 conf/machine/{rock-pi-4.conf => include/rock-pi-4.inc} | 8 ++------
 conf/machine/rock-pi-4a.conf                           | 8 ++++++++
 conf/machine/rock-pi-4b.conf                           | 8 ++++++++
 conf/machine/rock-pi-4c.conf                           | 8 ++++++++
 5 files changed, 27 insertions(+), 7 deletions(-)
 rename conf/machine/{rock-pi-4.conf => include/rock-pi-4.inc} (68%)
 create mode 100644 conf/machine/rock-pi-4a.conf
 create mode 100644 conf/machine/rock-pi-4b.conf
 create mode 100644 conf/machine/rock-pi-4c.conf

diff --git a/conf/machine/include/rk3399.inc b/conf/machine/include/rk3399.inc
index 4019988..f6b7826 100644
--- a/conf/machine/include/rk3399.inc
+++ b/conf/machine/include/rk3399.inc
@@ -5,8 +5,8 @@ SOC_FAMILY = "rk3399"
 
 DEFAULTTUNE ?= "cortexa72-cortexa53-crypto"
 
-require conf/machine/include/tune-cortexa72-cortexa53.inc
 require conf/machine/include/soc-family.inc
+require conf/machine/include/tune-cortexa72-cortexa53.inc
 require conf/machine/include/rockchip-defaults.inc
 
 KBUILD_DEFCONFIG ?= "defconfig"
diff --git a/conf/machine/rock-pi-4.conf b/conf/machine/include/rock-pi-4.inc
similarity index 68%
rename from conf/machine/rock-pi-4.conf
rename to conf/machine/include/rock-pi-4.inc
index 5231abf..7a98063 100644
--- a/conf/machine/rock-pi-4.conf
+++ b/conf/machine/include/rock-pi-4.inc
@@ -1,15 +1,11 @@
 # Copyright (C) 2020 Garmin Ltd. or its subsidaries
 # Released under the MIT license (see COPYING.MIT for the terms)
 
-#@TYPE: Machine
-#@NAME: Rock Pi 4 RK3399
-#@DESCRIPTION: Rock Pi 4 is a Raspberry Pi 4 Alternative based on Rockchip RK3399 Processor.
+# Add a common override for all Rock Pi 4 machines
+MACHINEOVERRIDES =. "rock-pi-4:"
 
 require conf/machine/include/rk3399.inc
 
-KERNEL_DEVICETREE = "rockchip/rk3399-rock-pi-4.dtb"
-UBOOT_MACHINE = "rock-pi-4-rk3399_defconfig"
-
 RK_BOOT_DEVICE = "mmcblk1"
 WKS_FILE ?= "rock-pi-4.wks"
 IMAGE_FSTYPES += "wic wic.bmap"
diff --git a/conf/machine/rock-pi-4a.conf b/conf/machine/rock-pi-4a.conf
new file mode 100644
index 0000000..9f3aa5a
--- /dev/null
+++ b/conf/machine/rock-pi-4a.conf
@@ -0,0 +1,8 @@
+#@TYPE: Machine
+#@NAME: Rock Pi 4A RK3399
+#@DESCRIPTION: Rock Pi 4 is a Raspberry Pi 4 Alternative based on Rockchip RK3399 Processor.
+
+require conf/machine/include/rock-pi-4.inc
+
+KERNEL_DEVICETREE = "rockchip/rk3399-rock-pi-4a.dtb"
+UBOOT_MACHINE = "rock-pi-4-rk3399_defconfig"
diff --git a/conf/machine/rock-pi-4b.conf b/conf/machine/rock-pi-4b.conf
new file mode 100644
index 0000000..033c063
--- /dev/null
+++ b/conf/machine/rock-pi-4b.conf
@@ -0,0 +1,8 @@
+#@TYPE: Machine
+#@NAME: Rock Pi 4B RK3399
+#@DESCRIPTION: Rock Pi 4 is a Raspberry Pi 4 Alternative based on Rockchip RK3399 Processor.
+
+require conf/machine/include/rock-pi-4.inc
+
+KERNEL_DEVICETREE = "rockchip/rk3399-rock-pi-4b.dtb"
+UBOOT_MACHINE = "rock-pi-4-rk3399_defconfig"
diff --git a/conf/machine/rock-pi-4c.conf b/conf/machine/rock-pi-4c.conf
new file mode 100644
index 0000000..9e9bbbb
--- /dev/null
+++ b/conf/machine/rock-pi-4c.conf
@@ -0,0 +1,8 @@
+#@TYPE: Machine
+#@NAME: Rock Pi 4C RK3399
+#@DESCRIPTION: Rock Pi 4 is a Raspberry Pi 4 Alternative based on Rockchip RK3399 Processor.
+
+require conf/machine/include/rock-pi-4.inc
+
+KERNEL_DEVICETREE = "rockchip/rk3399-rock-pi-4c.dtb"
+UBOOT_MACHINE = "rock-pi-4c-rk3399_defconfig"
-- 
2.30.0

