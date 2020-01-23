Received: from mail-il1-f194.google.com (mail-il1-f194.google.com [209.85.166.194])
 by mx.groups.io with SMTP id smtpd.web10.9704.1579795716163445692
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 08:08:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=liBCA1n2;
 spf=pass (domain: gmail.com, ip: 209.85.166.194, mailfrom: jpewhacker@gmail.com)
Received: by mail-il1-f194.google.com with SMTP id t2so2452506ilq.9
        for <yocto@lists.yoctoproject.org>; Thu, 23 Jan 2020 08:08:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TnwxJkZgAAI7LZerokD/XNtTY5JkOvM3xibuIuNmuNo=;
        b=liBCA1n2BR3lve3b8vphZgfn9IytuVwSBGUB1b+Z2qpnVOFUoQAq26BFhjavv6AJNp
         Xxoyq/SpkgMys571+QALrmWM07oOEoXfZxWWuTiQFh8vnq05KCM2Y7QYMaHXF+nlksYt
         6tssGa+SMOxWLiHbZhUK85da8mz9Tz3Yrn+JZeEcAqVNqzQyFvsRxONFf5R9SmeFv3N4
         AVYcfrynRZbEiKFd8O/jLc5ChscdvtAspId1EKab2q+2RaR4gK0y62rAkCcDYBPLZVSB
         B0Tbo116+5GJGr5gcPezSlpzEr8cVU3IUGtDM94FAp6hxd7REn9Ov27KQC8Jy3t4cJSO
         P6oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TnwxJkZgAAI7LZerokD/XNtTY5JkOvM3xibuIuNmuNo=;
        b=hILwSDcd6/czT5hMW+0vxdt7QNwfnVwhyiOljQLD/yGLEi3cB0opH6iNXRYnQ8mODZ
         AHBVWsG3nInlUMUAQVxNwujk81Yh+4FuuZHRzDqjRhl0OwSYUAyTK/FehsEapjcuY16M
         yN8fmBcK1C4Pb7UWEU0HkFUNcYg1PmSsQnt3mjyx9jhGUT/JzHxP6/vDdDELwtq0FWjd
         YxBAiaW+bn7MYxpWwDCnsEVi43F9TIVwDb1Vi6q5OTg2CP+EU40zQwuOtMzz+tj4zVv3
         wy+uSC5behhaH/O80sGvJvxnD7E6NN2BgnPtLuP28ES1BlOOyLYiAAgRh6qdabDbEcdK
         Mqvw==
X-Gm-Message-State: APjAAAX5XqxXtRSiPu4lCdE5c739HVXoxi5MFdsm+dLa7gP5YyzDi1ns
	uwYh/Y4cGWZ4UPByDyOMk/gJBjO6iYQ=
X-Google-Smtp-Source: APXvYqyri0OY/tAIWp9ZDcMdk/f5FDu2Wme73ril7SwJSmixdM/HctymXIvLoDwHONHrA9zGN1apPw==
X-Received: by 2002:a92:5ec8:: with SMTP id f69mr13237196ilg.8.1579795714816;
        Thu, 23 Jan 2020 08:08:34 -0800 (PST)
Return-Path: <jpewhacker@gmail.com>
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
        by smtp.gmail.com with ESMTPSA id w15sm523063iol.86.2020.01.23.08.08.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2020 08:08:33 -0800 (PST)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Joshua Watt <JPEWhacker@gmail.com>
Subject: [yocto][meta-rockchip][PATCH 4/4] rock-pi-4-rk3399: Add machine
Date: Thu, 23 Jan 2020 10:08:21 -0600
Message-Id: <20200123160821.778821-5-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200123160821.778821-1-JPEWhacker@gmail.com>
References: <20200123160821.778821-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Adds the machine definition for the Rock Pi 4 based around the RK3399
SoC.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 conf/machine/rock-pi-4-rk3399.conf | 28 ++++++++++++++++++++++++++++
 wic/rock-pi-4-rk3399.wks           |  7 +++++++
 2 files changed, 35 insertions(+)
 create mode 100644 conf/machine/rock-pi-4-rk3399.conf
 create mode 100644 wic/rock-pi-4-rk3399.wks

diff --git a/conf/machine/rock-pi-4-rk3399.conf b/conf/machine/rock-pi-4-rk3399.conf
new file mode 100644
index 0000000..ca02b8e
--- /dev/null
+++ b/conf/machine/rock-pi-4-rk3399.conf
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
+WKS_FILE ?= "rock-pi-4-rk3399.wks"
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
diff --git a/wic/rock-pi-4-rk3399.wks b/wic/rock-pi-4-rk3399.wks
new file mode 100644
index 0000000..8e4b37c
--- /dev/null
+++ b/wic/rock-pi-4-rk3399.wks
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

