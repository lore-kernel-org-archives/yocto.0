Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
 by mx.groups.io with SMTP id smtpd.web11.6228.1611624658379074636
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Jan 2021 17:30:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=S5L+4o9U;
 spf=pass (domain: gmail.com, ip: 209.85.167.176, mailfrom: jpewhacker@gmail.com)
Received: by mail-oi1-f176.google.com with SMTP id h6so15567189oie.5
        for <yocto@lists.yoctoproject.org>; Mon, 25 Jan 2021 17:30:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5FnNQLDmxWoJ2skTo7UnTzRhjqXAv8JMwBrkTHNplqw=;
        b=S5L+4o9UiYffK1UgKi5mA/4DoYp4+DmNVfmZXgi2mzrZRtIQJxXtKP0bdQjhOVx1iy
         owT60Dcc5yl+6qKXgyNk1UJeaKJpDIOO4czQVgCYJe+0cWYsUPwsK6ZQn0tPY0fndr8z
         XZxpJepYtgb4wLXTD7MnmV3O1cNlJ5WfNymcbRxQMy5mJZOb0G98/amXtN6nGTspzz63
         rEGqshSfmI8dOobQwjz/hwM4LjXgYMrEOodj101B1ErOrN7gcXieUO4qK5cWQF4C6mTH
         7wfaKWHzRkXxcE64GAaEHZo+7Vq9ARKjbtuYsGNX3n+wRBrytBMpXNkANcX9PU5Ju4LT
         9/tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5FnNQLDmxWoJ2skTo7UnTzRhjqXAv8JMwBrkTHNplqw=;
        b=LN+GQzp+veJwzywRauIBnY1lXLsHldriltUQqUy28793FNjYgcfJWZOIr2ploCo32r
         rLggb2PHuQ2qrv69QJDATBRXFn/mnQnfBURpmT6wlJZsT/wBbRSsmOFeEgSEmJ0Oimy2
         Qfdg+lFk+6CKrAf6ZkCWNz8/+PAsKm3h0Z+MVfdIfUfuYJyK7q1+VanoYC+i2gBR64Oz
         76V7R/Ts8cUZmOHYmCgz+kdRHKOkKvS59A3NV4aOWerqHuPAuN0ietTXA1ZekttaAWA3
         ucQjQ67rAJ4hfWm5OPCb2yDPSRnjXbrJHY8R9FNlTDOqttWhszCuo4Yesj8Pjg4wLmiU
         pn4Q==
X-Gm-Message-State: AOAM5319BTkd7AkZjLTxtqpGmEKZliX5/GUGxl+RHfzJ0EAr/y9teVX7
	NyR6pQ+9FLyck8zI37E8udMOY0pNpxo=
X-Google-Smtp-Source: ABdhPJxhriyiEYiVTBPKr7x0Q8vgpbtuSyMtOfZfnun4EXO2UorvWnaDS08ozT1Bm/tK+sKtio2sOg==
X-Received: by 2002:a54:4482:: with SMTP id v2mr1764511oiv.121.1611624657479;
        Mon, 25 Jan 2021 17:30:57 -0800 (PST)
Return-Path: <jpewhacker@gmail.com>
Received: from localhost.localdomain ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id s123sm2526709oos.3.2021.01.25.17.30.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jan 2021 17:30:56 -0800 (PST)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Joshua Watt <JPEWhacker@gmail.com>
Subject: [meta-rockchip][PATCH v2] rock-pi-4: Split our variant machines
Date: Mon, 25 Jan 2021 19:30:43 -0600
Message-Id: <20210126013043.19569-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210123210512.20111-1-JPEWhacker@gmail.com>
References: <20210123210512.20111-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Splits out the three variants of the rock-pi-4 (A, B & C) into their own
machines. Unfortunately, it is not possible to have a single machine
that works for all three, as there isn't any known ways for the
bootloader to distinguish them. The old rock-pi-4 machine is kept around
for use with older kernels

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 conf/machine/include/rk3399.inc    |  2 +-
 conf/machine/include/rock-pi-4.inc | 22 ++++++++++++++++++++++
 conf/machine/rock-pi-4.conf        | 22 ++++------------------
 conf/machine/rock-pi-4a.conf       | 11 +++++++++++
 conf/machine/rock-pi-4b.conf       | 11 +++++++++++
 conf/machine/rock-pi-4c.conf       | 11 +++++++++++
 6 files changed, 60 insertions(+), 19 deletions(-)
 create mode 100644 conf/machine/include/rock-pi-4.inc
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
diff --git a/conf/machine/include/rock-pi-4.inc b/conf/machine/include/rock-pi-4.inc
new file mode 100644
index 0000000..9c21084
--- /dev/null
+++ b/conf/machine/include/rock-pi-4.inc
@@ -0,0 +1,22 @@
+# Add a common override for all Rock Pi 4 machines
+MACHINEOVERRIDES =. "rock-pi-4:"
+
+require conf/machine/include/rk3399.inc
+
+RK_BOOT_DEVICE = "mmcblk1"
+WKS_FILE ?= "rock-pi-4.wks"
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
+    "
+
+SERIAL_CONSOLES = "1500000;ttyS2"
+
+MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
diff --git a/conf/machine/rock-pi-4.conf b/conf/machine/rock-pi-4.conf
index 5231abf..23bbfc3 100644
--- a/conf/machine/rock-pi-4.conf
+++ b/conf/machine/rock-pi-4.conf
@@ -4,26 +4,12 @@
 #@TYPE: Machine
 #@NAME: Rock Pi 4 RK3399
 #@DESCRIPTION: Rock Pi 4 is a Raspberry Pi 4 Alternative based on Rockchip RK3399 Processor.
+#
+# NOTE: This machine is for Kernels before 5.10. If you are using an newer kernel
+# see rock-pi-4{a,b,c}.conf
 
-require conf/machine/include/rk3399.inc
+require conf/machine/include/rock-pi-4.inc
 
 KERNEL_DEVICETREE = "rockchip/rk3399-rock-pi-4.dtb"
 UBOOT_MACHINE = "rock-pi-4-rk3399_defconfig"
 
-RK_BOOT_DEVICE = "mmcblk1"
-WKS_FILE ?= "rock-pi-4.wks"
-IMAGE_FSTYPES += "wic wic.bmap"
-
-WKS_FILE_DEPENDS ?= " \
-    mtools-native \
-    dosfstools-native \
-    virtual/bootloader \
-    virtual/kernel \
-    "
-IMAGE_BOOT_FILES ?= "\
-    ${KERNEL_IMAGETYPE} \
-    "
-
-SERIAL_CONSOLES = "1500000;ttyS2"
-
-MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
diff --git a/conf/machine/rock-pi-4a.conf b/conf/machine/rock-pi-4a.conf
new file mode 100644
index 0000000..abe2336
--- /dev/null
+++ b/conf/machine/rock-pi-4a.conf
@@ -0,0 +1,11 @@
+#@TYPE: Machine
+#@NAME: Rock Pi 4A RK3399
+#@DESCRIPTION: Rock Pi 4 is a Raspberry Pi 4 Alternative based on Rockchip RK3399 Processor.
+#
+# NOTE: This machine is for Kernel 5.10 and later. If you are using an older
+# kernel, see rock-pi-4.conf
+
+require conf/machine/include/rock-pi-4.inc
+
+KERNEL_DEVICETREE = "rockchip/rk3399-rock-pi-4a.dtb"
+UBOOT_MACHINE = "rock-pi-4-rk3399_defconfig"
diff --git a/conf/machine/rock-pi-4b.conf b/conf/machine/rock-pi-4b.conf
new file mode 100644
index 0000000..587fb32
--- /dev/null
+++ b/conf/machine/rock-pi-4b.conf
@@ -0,0 +1,11 @@
+#@TYPE: Machine
+#@NAME: Rock Pi 4B RK3399
+#@DESCRIPTION: Rock Pi 4 is a Raspberry Pi 4 Alternative based on Rockchip RK3399 Processor.
+#
+# NOTE: This machine is for Kernel 5.10 and later. If you are using an older
+# kernel, see rock-pi-4.conf
+
+require conf/machine/include/rock-pi-4.inc
+
+KERNEL_DEVICETREE = "rockchip/rk3399-rock-pi-4b.dtb"
+UBOOT_MACHINE = "rock-pi-4-rk3399_defconfig"
diff --git a/conf/machine/rock-pi-4c.conf b/conf/machine/rock-pi-4c.conf
new file mode 100644
index 0000000..3af26ff
--- /dev/null
+++ b/conf/machine/rock-pi-4c.conf
@@ -0,0 +1,11 @@
+#@TYPE: Machine
+#@NAME: Rock Pi 4C RK3399
+#@DESCRIPTION: Rock Pi 4 is a Raspberry Pi 4 Alternative based on Rockchip RK3399 Processor.
+#
+# NOTE: This machine is for Kernel 5.10 and later. If you are using an older
+# kernel, see rock-pi-4.conf
+
+require conf/machine/include/rock-pi-4.inc
+
+KERNEL_DEVICETREE = "rockchip/rk3399-rock-pi-4c.dtb"
+UBOOT_MACHINE = "rock-pi-4c-rk3399_defconfig"
-- 
2.30.0

