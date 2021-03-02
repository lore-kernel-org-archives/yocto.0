Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
 by mx.groups.io with SMTP id smtpd.web09.450.1614718149279508125
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Mar 2021 12:49:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=P0PrgsJP;
 spf=pass (domain: gmail.com, ip: 209.85.160.174, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f174.google.com with SMTP id h9so5999571qtq.7
        for <yocto@lists.yoctoproject.org>; Tue, 02 Mar 2021 12:49:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oAQliur0pXF3r7NJc0BPtgYrzpPxvGS4aBX93Ilu/ss=;
        b=P0PrgsJPivyjcByaOl4h4XB9AeOtIFjKkebf2Gs9HtV6khw8rnRjYiDP96eg/P/HCX
         ZGMr0IaM//QTNFhb1TrH8CzlzhxzNr10K/YpmwGPVLCpn3J1g41HjRm4tkQCXMIxMU4d
         ilSO3OZSG2LeLzaII2PmgJ6rGK2J42hwNUPHJ/dShoQa/nu0h5aXfPfvXOJNWbuunBg4
         ALxEMIhI0HLu5ZFd3K0NU5nKMu7jSDcnK+lQiUrP7/A5reFzmC2o7PlZaNpcpkM0vBwF
         DvocEY0j5By+fuJ4cLdDwOJLCjbG1mguO9bePXJbYoNhvIRu2C/42bH9uyhzb1u4bnTS
         ygMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oAQliur0pXF3r7NJc0BPtgYrzpPxvGS4aBX93Ilu/ss=;
        b=MF/VODhp0SdXfrhuyIN3PIk/tK1MY1H0GTeqie+y49NF98ZRFbwh1FXOz40jkusT4d
         leX7MB7MG7gqFNvWGiDBmXZ8MvMa/VdLu9BfDaGnw53CDRGl28UHeR6g0PLuoAF0z2ns
         VZDNHIXlRRbQatem3+TIsaljemPjlQxYIlynx1ev13c8UX1extut2BMjZS8i4ACaR+HG
         BBdgD2QZz50R2kzkNZ+Gu5ftW0yRK2LvW+/mO0/ZeUb0X6H1xG6Q6hWqIQoiV38FD+9w
         0qQzwI8C83HGedhsNK4RDIJlFm74XZ8+qsdtTHcmFcuxIOlSSufwq9rrugdnbtkiApVr
         7JxQ==
X-Gm-Message-State: AOAM532RmAl20lpvMZxBUURm5D0MLJwhABTYpkA/K828HFzi9M4AA+e8
	0DbY5U0sBRUOnE5DGBq4m5c6ep5unPM=
X-Google-Smtp-Source: ABdhPJwM3GC11KdK3yVoT9QqKUorlhffxPeGRPABpPxBPhSMpAFZRNzxGcmqPgpMc1YfiIA33RFLOw==
X-Received: by 2002:ac8:48d7:: with SMTP id l23mr13840619qtr.227.1614718148027;
        Tue, 02 Mar 2021 12:49:08 -0800 (PST)
Return-Path: <twoerner@gmail.com>
Received: from localhost.nautel.com (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id 19sm15747420qkv.95.2021.03.02.12.49.07
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Mar 2021 12:49:07 -0800 (PST)
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] tinker board: refactor machine config
Date: Tue,  2 Mar 2021 15:49:02 -0500
Message-Id: <20210302204902.29030-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.30.0.rc0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Create a common conf/machine/include/tinker.inc and re-spin
    - conf/machine/tinker-board.conf
    - conf/machine-tinker-board-s.conf
to just contain the differences.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/include/tinker.inc  | 15 +++++++++++++++
 conf/machine/tinker-board-s.conf | 16 +---------------
 conf/machine/tinker-board.conf   | 16 +---------------
 3 files changed, 17 insertions(+), 30 deletions(-)
 create mode 100644 conf/machine/include/tinker.inc

diff --git a/conf/machine/include/tinker.inc b/conf/machine/include/tinker.inc
new file mode 100644
index 0000000..e851b59
--- /dev/null
+++ b/conf/machine/include/tinker.inc
@@ -0,0 +1,15 @@
+require conf/machine/include/rk3288.inc
+
+WKS_FILE ?= "tinker-board.wks"
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
diff --git a/conf/machine/tinker-board-s.conf b/conf/machine/tinker-board-s.conf
index f7b17e4..9f44f2f 100644
--- a/conf/machine/tinker-board-s.conf
+++ b/conf/machine/tinker-board-s.conf
@@ -5,23 +5,9 @@
 #@NAME: Tinker-S RK3288
 #@DESCRIPTION: ASUS Tinker Board is a Raspberry Pi 3 Alternative based on Rockchip RK3288 Processor.
 
-require conf/machine/include/rk3288.inc
+require conf/machine/include/tinker.inc
 
 KERNEL_DEVICETREE = "rk3288-tinker-s.dtb"
 UBOOT_MACHINE = "tinker-s-rk3288_defconfig"
 
 RK_BOOT_DEVICE ?= "mmcblk1"
-
-WKS_FILE ?= "tinker-board.wks"
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
-    ${KERNEL_DEVICETREE} \
-    "
diff --git a/conf/machine/tinker-board.conf b/conf/machine/tinker-board.conf
index 1c3c08a..8fe5f63 100644
--- a/conf/machine/tinker-board.conf
+++ b/conf/machine/tinker-board.conf
@@ -5,21 +5,7 @@
 #@NAME: Tinker RK3288
 #@DESCRIPTION: ASUS Tinker Board is a Raspberry Pi 3 Alternative based on Rockchip RK3288 Processor.
 
-require conf/machine/include/rk3288.inc
+require conf/machine/include/tinker.inc
 
 KERNEL_DEVICETREE = "rk3288-tinker.dtb"
 UBOOT_MACHINE = "tinker-rk3288_defconfig"
-
-WKS_FILE ?= "tinker-board.wks"
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
-    ${KERNEL_DEVICETREE} \
-    "
-- 
2.30.0.rc0

