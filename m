Received: from mail-il1-f196.google.com (mail-il1-f196.google.com [209.85.166.196])
 by mx.groups.io with SMTP id smtpd.web11.9873.1579795712890603259
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 08:08:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q7brNAYp;
 spf=pass (domain: gmail.com, ip: 209.85.166.196, mailfrom: jpewhacker@gmail.com)
Received: by mail-il1-f196.google.com with SMTP id v15so2508914iln.0
        for <yocto@lists.yoctoproject.org>; Thu, 23 Jan 2020 08:08:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vK1vB6jfrLAY4Yg1x4FJBKxgJXOwGx0K2rHD3Zwmmuc=;
        b=Q7brNAYpQjlVT5adQIMGSoSdVFnZQ1AMUsNqapRMdtjnUsrWx2057JZyJ+8ecys6QH
         OOn7m7nF4XtgJSEItOL2sgEQEDiphfUHjGThcA58KYsJ0HEHGqD2cdtEqglDMcINJZdc
         5RB0/R2E4xr6Us5FUx6p0lYRnzZDUPIBivqDjAgQWFqUi18tz2/qS32yBWpWsPtqHMan
         lU5naf+z5LQVcLSG8P43P0w9mhqjqtcmMyPBlHJ1rGHzYb+A+hlKDdNih3rsJMv4CB9o
         yTFpX47tfikGfPuYT2pOPxcEy2KFrb9yIVfmG8e1/lfNghAFGkIxnm2HGyQltYqGiwFD
         QCFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vK1vB6jfrLAY4Yg1x4FJBKxgJXOwGx0K2rHD3Zwmmuc=;
        b=qe4WdFUmRG0iQrEIpN8FCTI74R9NZn2LzTCrVyxyoHlg3rf3i2GkXP1ds61xVsVCeP
         Za3j5A6tIB7hpEL8HkUe0MDao6N4qhNYhBlmpxSEVs3v/y039/tD8ZGsE0uaXK/ftARJ
         Oo3hulrmlHFFoU56ryXb21R+gey5f7RmJ5gl5xzyzlYOQBFTbIhUfbRfZ2SHDLiv2Qz+
         TZgLDkxKthcWK0SHmSfhVVAKN1TXaMcMURCrs8AxbY7L2ZQKY6/TFPant2RrSVCcV/2+
         qfJQqWkf3pShG7pjkUsJS3hX3GKufqkrFpa7tA2Q9FD5OayKLAbO+CY3N3ueC7jH4zxf
         ChNg==
X-Gm-Message-State: APjAAAUoKUM0mwr07NsyJ684dHbajgiJGwPDfwd966VGcSCLcARz20LK
	3J5lj30xe35Q8NqtH4jlGw3jhMeJv7o=
X-Google-Smtp-Source: APXvYqyiqwi8Mqj0ls1liRH0yGLTbaSFw+N+b4C8N2rJdgS23YZcRzqc9qWxKKlto6Ws59B6IuEdUA==
X-Received: by 2002:a92:15c1:: with SMTP id 62mr3758409ilv.216.1579795711903;
        Thu, 23 Jan 2020 08:08:31 -0800 (PST)
Return-Path: <jpewhacker@gmail.com>
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
        by smtp.gmail.com with ESMTPSA id w15sm523063iol.86.2020.01.23.08.08.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2020 08:08:31 -0800 (PST)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Joshua Watt <JPEWhacker@gmail.com>
Subject: [yocto][meta-rockchip][PATCH 2/4] gcc-arm-none-eabi-native: Add recipe
Date: Thu, 23 Jan 2020 10:08:19 -0600
Message-Id: <20200123160821.778821-3-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200123160821.778821-1-JPEWhacker@gmail.com>
References: <20200123160821.778821-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Adds a recipe to pull down the prebuilt GCC for compiling on Cortex-R
and Cortex-M processors from ARM. This toolchain is required to build
Arm Trusted Firmware for the Rockchip rk3399 SoC, since it must compile
some firmware for the M0 coprocessor.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 ...cc-arm-none-eabi-native_9-2019-q4-major.bb | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)
 create mode 100644 recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb

diff --git a/recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb b/recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb
new file mode 100644
index 0000000..a0c832d
--- /dev/null
+++ b/recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb
@@ -0,0 +1,37 @@
+# Copyright (C) 2019 Garmin Ltd. or its subsidaries
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+DESCRIPTION = "Baremetal GCC for ARM-R and ARM-M processors"
+LICENSE = "GPL-3.0-with-GCC-exception & GPLv3"
+
+LIC_FILES_CHKSUM = "file://share/doc/gcc-arm-none-eabi/license.txt;md5=c18349634b740b7b95f2c2159af888f5"
+
+PROVIDES = "virtual/arm-none-eabi-gcc"
+
+SRC_URI = "https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2019q4/RC2.1/${BPN}-${PV}-x86_64-linux.tar.bz2"
+
+SRC_URI[md5sum] = "fe0029de4f4ec43cf7008944e34ff8cc"
+SRC_URI[sha256sum] = "bcd840f839d5bf49279638e9f67890b2ef3a7c9c7a9b25271e83ec4ff41d177a"
+
+S = "${WORKDIR}/${BPN}-${PV}"
+
+inherit native
+
+COMPATIBLE_HOST = "x86_64.*-linux"
+
+do_install() {
+    install -d ${D}${datadir}/arm-none-eabi/
+    cp -r ${S}/. ${D}${datadir}/arm-none-eabi/
+
+    install -d ${D}${bindir}
+    # Symlink all executables into bindir
+    for f in ${D}${datadir}/arm-none-eabi/bin/arm-none-eabi-*; do
+        lnr $f ${D}${bindir}/$(basename $f)
+    done
+}
+
+INSANE_SKIP_${PN} = "already-stripped"
+
+INHIBIT_SYSROOT_STRIP = "1"
+INHIBIT_PACKAGE_STRIP = "1"
+INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
-- 
2.24.1

