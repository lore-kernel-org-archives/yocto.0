Received: from mail-io1-f68.google.com (mail-io1-f68.google.com [209.85.166.68])
 by mx.groups.io with SMTP id smtpd.web12.1925.1579808814189478127
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 11:46:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ADb3xH9w;
 spf=pass (domain: gmail.com, ip: 209.85.166.68, mailfrom: jpewhacker@gmail.com)
Received: by mail-io1-f68.google.com with SMTP id x1so4173559iop.7
        for <yocto@lists.yoctoproject.org>; Thu, 23 Jan 2020 11:46:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1HX7SWEIxJGl9emc4rTUW81lcgoSiImlIaFMh2yA62U=;
        b=ADb3xH9wS+Hg9z55KDzW4XjnnCW8Ehk8GKuxO57ZA9HoxnKXbmCfEfMUmMvzHxBcyD
         c8/IYAZA5TZ5LV9NQYohvcMO+y7OzhgJC6H4TK12wwZhOdoNcVaez6MaChtOvJ4m6yVS
         wp8Xg9nZH11H4r023Er4a/XIdcJIdtpwH0QSrXhjazRXkpUCycAvMzLosfTwTiY1dN4L
         R3zAjQFAubaAYK0Dfsig/R7v8khx96EzEz44kiWplkhNdza96WBRffKLmNsc2z4sAjtW
         wy8YgtUE44n9IFGavCkgenbs7MZFzs4CBMQVo3BJLdDycWLiLxiiPxsTHKPlhlgMuH9t
         QVXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1HX7SWEIxJGl9emc4rTUW81lcgoSiImlIaFMh2yA62U=;
        b=LeHxaynKgcN+E34bjQwFRwM7wtz14Tu3XCqrJ25E3u7ruRRc13kioTFvBASjttGBOh
         V09FKcD7daq57Gmzh2g/m3gMcuqH3HMlENFXFQ/x0ukpakfNW7K0EEknbiGhqPKIVcRh
         Z+Fcfy4BvxTlogbrABQR8p11JYF+7gtoyWfRPOVx1sqsM6Srq3gUtiwbxEwOM3NA4jKi
         AYBnIY/ubuuPaQIWC8uasA/O2ziURRVdFDRqheGRAJGaFcGrb+PCqcEBlv/UNxZguFOm
         kN/BBws7ur7tHGAaKgoHMFLRjyqbg2yNLBMgxXovicRg/fYh2BcQ03qYyHu0PSMoJSvK
         nmoQ==
X-Gm-Message-State: APjAAAUbFepIXHQyhv3vUMnXgUeRFtpMeQYPSdjj0cRUmCWdvPQyUqXW
	sEfxChTDFB/uwa9WFsRlI6GfcInrhpU=
X-Google-Smtp-Source: APXvYqzGdaJMYkYHShSmLaQyb4Q61iieadx8hxX4zmqTm/K1HejjUPV9BCoHF8DUlFrIa6h8uy6/9A==
X-Received: by 2002:a02:910a:: with SMTP id a10mr593712jag.134.1579808813412;
        Thu, 23 Jan 2020 11:46:53 -0800 (PST)
Return-Path: <jpewhacker@gmail.com>
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
        by smtp.gmail.com with ESMTPSA id u5sm644834ion.51.2020.01.23.11.46.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2020 11:46:52 -0800 (PST)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <JPEWhacker@gmail.com>
Subject: [yocto][meta-rockchip][PATCH v2 4/4] rock-pi-4: Add machine
Date: Thu, 23 Jan 2020 13:46:45 -0600
Message-Id: <20200123194645.1240023-5-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200123194645.1240023-1-JPEWhacker@gmail.com>
References: <20200123160821.778821-1-JPEWhacker@gmail.com>
 <20200123194645.1240023-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Adds the machine definition for the Rock Pi 4 based around the RK3399
SoC.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 README                      |  1 +
 conf/machine/rock-pi-4.conf | 28 ++++++++++++++++++++++++++++
 wic/rock-pi-4.wks           |  7 +++++++
 3 files changed, 36 insertions(+)
 create mode 100644 conf/machine/rock-pi-4.conf
 create mode 100644 wic/rock-pi-4.wks

diff --git a/README b/README
index 77506c8..5486b29 100644
--- a/README
+++ b/README
@@ -14,6 +14,7 @@ Dependencies:
 Status of supported boards:
 --------------------------
 	builds and boots gpt image:
+		rock-pi-4
 		tinker-rk3288
 		vyasa-rk3288
 		firefly-rk3288
diff --git a/conf/machine/rock-pi-4.conf b/conf/machine/rock-pi-4.conf
new file mode 100644
index 0000000..4cbfc3f
--- /dev/null
+++ b/conf/machine/rock-pi-4.conf
@@ -0,0 +1,28 @@
+# Copyright (C) 2020 Garmin Ltd. or its subsidaries
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+#@TYPE: Machine
+#@NAME: Rock Pi 4 RK3288
+#@DESCRIPTION: Rock Pi 4 is a Raspberry Pi 4 Alternative based on Rockchip RK3399 Processor.
+
+require conf/machine/include/rk3399.inc
+
+KERNEL_DEVICETREE = "rockchip/rk3399-rock-pi-4.dtb"
+UBOOT_MACHINE = "rock-pi-4-rk3399_defconfig"
+
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
diff --git a/wic/rock-pi-4.wks b/wic/rock-pi-4.wks
new file mode 100644
index 0000000..8e4b37c
--- /dev/null
+++ b/wic/rock-pi-4.wks
@@ -0,0 +1,7 @@
+# Copyright (C) 2020 Garmin Ltd. or its subsidiaries
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+include rk3399-boot.wks
+part / --align 131072 --source rootfs --fstype=ext4 --label root
+
+bootloader --ptable gpt --append="console=tty1 console=ttyS2,1500000n8 rw root=/dev/mmcblk1p7 rootfstype=ext4 init=/sbin/init"
-- 
2.24.1

