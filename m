Received: from mail-io1-f66.google.com (mail-io1-f66.google.com [209.85.166.66])
 by mx.groups.io with SMTP id smtpd.web12.1924.1579808812830140742
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 11:46:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BFDkyx/9;
 spf=pass (domain: gmail.com, ip: 209.85.166.66, mailfrom: jpewhacker@gmail.com)
Received: by mail-io1-f66.google.com with SMTP id d15so4215696iog.3
        for <yocto@lists.yoctoproject.org>; Thu, 23 Jan 2020 11:46:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=92MBGWELe4OiKgIpAcm+G8zJySaBXEB2D95JSngsvWg=;
        b=BFDkyx/90m/XPJPdX2NfcLZynM8rbky0bJZLbuLo8+kRRqHPqsyumXH21ele5J1URc
         4q0/NL0vh0muAPz+JGSHOtU+lE6tiWnHfWhH3hAKOILshe69jwGyCWiP2XmkVRD6WR3R
         +DeHIjiQx5ahLCnmvd2kMp6yxoNZm+eG/Y4bpBfgaopUG7FMZOxN6W/ntSU342mK4mfr
         1fQ9zpV7xBmOsO5ge/tpqP9tplf9S8Xp/gq0XfCKpwhmeXd72siRcdY1lr9tjL+3WdWb
         fmtMgAXlsE7xo6c6aW4fPLD/YHo4i/4/p8D1JOnFtbt9O0goIZcO6znIcy+nL04EYCXR
         J7Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=92MBGWELe4OiKgIpAcm+G8zJySaBXEB2D95JSngsvWg=;
        b=MtaQGDwK2dHAkmdM3HWfjhkOZIa3S1f5PRy/WofWbDb8mXblSp1vkjnkKqcIzXYdzb
         3Dlk1EkEnOFnGf+R/J/YfOynW2pNK5Z97eUP7wSt529UhZA1Slmj3k6/oBUCkdasnfEB
         Pn7sjRERtFSkndd/7gPsVq4pTQIeCvC9j9TwHrmINmedln0seIahsICSiewWPx+RjgcQ
         /mui7hHxmq72bqWKjngs/7WJrN7rfalXQtO2DyVcNYCaPemb1XCKCKJeFuvKNJHxya/1
         OcPm+7Ar/IuB4qodNWXvy/aw8mMS8mw+vIRvvcqRH4Ci48RYDGTMebljWo5rql3OdQGz
         OaUg==
X-Gm-Message-State: APjAAAX9SiXF90b3kfC0YTUr48XkWXmNgKXpj//KuvL7M2kNTukQirzb
	kxQWY+0XTB9vvTLOKNuLW4yMG0v00e0=
X-Google-Smtp-Source: APXvYqz+Y/NVPcPUz5aqOacqM5leEUGnhanTRh+8UGxzrZmEKCuuO9aUE84+8bD9/wB8YOr98X5y4Q==
X-Received: by 2002:a6b:7703:: with SMTP id n3mr128479iom.229.1579808810572;
        Thu, 23 Jan 2020 11:46:50 -0800 (PST)
Return-Path: <jpewhacker@gmail.com>
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
        by smtp.gmail.com with ESMTPSA id u5sm644834ion.51.2020.01.23.11.46.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2020 11:46:50 -0800 (PST)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <JPEWhacker@gmail.com>
Subject: [yocto][meta-rockchip][PATCH v2 1/4] arm-trusted-firmware: Add recipe
Date: Thu, 23 Jan 2020 13:46:42 -0600
Message-Id: <20200123194645.1240023-2-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200123194645.1240023-1-JPEWhacker@gmail.com>
References: <20200123160821.778821-1-JPEWhacker@gmail.com>
 <20200123194645.1240023-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Adds a recipe to build Arm Trusted Firmware

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 .../arm-trusted-firmware_2.2.bb               | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)
 create mode 100644 recipes-bsp/arm-trusted-firmware/arm-trusted-firmware_2.2.bb

diff --git a/recipes-bsp/arm-trusted-firmware/arm-trusted-firmware_2.2.bb b/recipes-bsp/arm-trusted-firmware/arm-trusted-firmware_2.2.bb
new file mode 100644
index 0000000..710336a
--- /dev/null
+++ b/recipes-bsp/arm-trusted-firmware/arm-trusted-firmware_2.2.bb
@@ -0,0 +1,38 @@
+# Copyright (C) 2019 Garmin Ltd. or its subsidaries
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+SUMMARY = "Arm Trusted Firmware"
+HOMEPAGE = "https://developer.trustedfirmware.org/"
+LICENSE = "BSD-3-Clause"
+LIC_FILES_CHKSUM = "file://docs/license.rst;md5=189505435dbcdcc8caa63c46fe93fa89"
+
+PROVIDES = "virtual/atf"
+
+BRANCH = "master"
+SRC_URI = "git://git.trustedfirmware.org/TF-A/trusted-firmware-a.git;protocol=http;branch=${BRANCH}"
+SRCREV = "a04808c16cfc126d9fe572ae7c4b5a3d39de5796"
+
+S = "${WORKDIR}/git"
+B = "${WORKDIR}/build"
+
+inherit deploy
+
+ATF_SUFFIX ??= "bin"
+
+do_compile() {
+	unset LDFLAGS
+	unset CFLAGS
+	unset CPPFLAGS
+
+    oe_runmake -C ${S} BUILD_BASE=${B} DEBUG=0 CROSS_COMPILE=${TARGET_PREFIX} \
+        PLAT=${ATF_PLATFORM} ${ATF_TARGET}
+}
+
+PACKAGE_ARCH = "${MACHINE_ARCH}"
+
+do_deploy() {
+    install -m 644 ${B}/${ATF_PLATFORM}/release/${ATF_TARGET}/${ATF_TARGET}.${ATF_SUFFIX} \
+        ${DEPLOYDIR}/${ATF_TARGET}.${ATF_SUFFIX}
+}
+addtask deploy after do_compile
+
-- 
2.24.1

