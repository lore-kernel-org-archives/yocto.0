Received: from mail-io1-f65.google.com (mail-io1-f65.google.com [209.85.166.65])
 by mx.groups.io with SMTP id smtpd.web11.1874.1579808812224738281
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 11:46:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qouOUy+0;
 spf=pass (domain: gmail.com, ip: 209.85.166.65, mailfrom: jpewhacker@gmail.com)
Received: by mail-io1-f65.google.com with SMTP id n21so4144037ioo.10
        for <yocto@lists.yoctoproject.org>; Thu, 23 Jan 2020 11:46:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vK1vB6jfrLAY4Yg1x4FJBKxgJXOwGx0K2rHD3Zwmmuc=;
        b=qouOUy+03rKypwqk5+vugSt4rofjJpfWakijG6ZLs0fGKcs492rWoc3GUOe48ERS1T
         aFHfXYYrBJjKPGuVodhrPyluVhsoFZcQ2JpmuU7REgQlfDMhyHj+01lb3oH0a5VV37sZ
         DNFq3vMOcyOHctf42/XAAuDE106cI4508VeoeGDuT8w3EFY66+E7gxvk16xWuDnPoTj2
         7O7SdBXH03KEXypqN3llmWLNaF42RRfdR5dsMvvGuqTXuKhZm0QMGKbRPc5+0hOyxnHl
         Y6UoPZm4lsizqFe2JUxZm/cHF8Z13rOn5hAdUjlbP6+538/Jtqw5KTlrYni0G9g3JfGn
         dVGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vK1vB6jfrLAY4Yg1x4FJBKxgJXOwGx0K2rHD3Zwmmuc=;
        b=XE9wQK2eYpRZ0+hsTcTF9I2Zoh3Xm+DB7W0OFP6/Cf1AVQBlMFNdbDle3LN/wS2u4Q
         8KMVfPBReEa0xBmAMDWYtGSQWEvD66IfhNgrAoDvuRLXIMEGBFrYwyGdyfRwQRdARg/O
         RJ83F6apXfqJx2uF9QZ0g1MJ86itmG9FbttmbMf2sf2md01Z+3kgIuUZeH0oFlv0MGUb
         ikfzjecCpkKgHEUUvUx6P2KDh7WiJPq1/fugIdeSJXmyrgab6krE3EzzoxCndjY2/dSg
         i+3J0Mo7OobsudKMVfFgn8vjSqQh7arJiqD/QZPgCUhvwXInMjbqiDEwoxvW9w1/Ftnd
         9j5w==
X-Gm-Message-State: APjAAAU4ZGAulUtRZah05zA+hrOHroDcF9lZyL486KmDwDU3eBlxvEFe
	N5+mG5+pb3U82ksrIxi5ry3Q+/6CZ3k=
X-Google-Smtp-Source: APXvYqyhStT6sflShqr9p3b3nN1MPn/R2UStgFmoq/yEsCFkr/6UR//LtUdkYE65wvrvkAupHMc0Ig==
X-Received: by 2002:a05:6638:a31:: with SMTP id 17mr573104jao.15.1579808811403;
        Thu, 23 Jan 2020 11:46:51 -0800 (PST)
Return-Path: <jpewhacker@gmail.com>
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
        by smtp.gmail.com with ESMTPSA id u5sm644834ion.51.2020.01.23.11.46.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2020 11:46:50 -0800 (PST)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <JPEWhacker@gmail.com>
Subject: [yocto][meta-rockchip][PATCH v2 2/4] gcc-arm-none-eabi-native: Add recipe
Date: Thu, 23 Jan 2020 13:46:43 -0600
Message-Id: <20200123194645.1240023-3-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200123194645.1240023-1-JPEWhacker@gmail.com>
References: <20200123160821.778821-1-JPEWhacker@gmail.com>
 <20200123194645.1240023-1-JPEWhacker@gmail.com>
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

