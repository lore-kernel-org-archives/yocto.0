Received: from mail-il1-f195.google.com (mail-il1-f195.google.com [209.85.166.195])
 by mx.groups.io with SMTP id smtpd.web10.9703.1579795711758205328
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 08:08:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HAD/jOvN;
 spf=pass (domain: gmail.com, ip: 209.85.166.195, mailfrom: jpewhacker@gmail.com)
Received: by mail-il1-f195.google.com with SMTP id b15so2478217iln.3
        for <yocto@lists.yoctoproject.org>; Thu, 23 Jan 2020 08:08:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=92MBGWELe4OiKgIpAcm+G8zJySaBXEB2D95JSngsvWg=;
        b=HAD/jOvNuWxQ95HWQKUf7hXvSlYWJeEwgCOvd3VqYXYriV8GGgE0YPPxTu9WghaYMd
         Ci/N7IUisFTvFCMmCv5CxGPqZvhff5CSGJnBWzrneLQgokg4qLGW1KzLhJ6tTgxJmiTY
         8ZVB6gA7TUNHYha6CQjuqdnLmNCReY6E6HobJklYWLsKobWLoBg12X8gOCoaIiszU+Dp
         dGgNJkP8pl1XwHo7v45lRN2gSey6ECPSg1UFaOaHRU9znTe6EuORpkU2HuxC6GfjOWhy
         w3fxX+3OHMxjiLn0QrJlsiwkS3lFIuIJsMDpoC28oHG42ny+F7SIqeql7hbyOQ+vz4o0
         8taQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=92MBGWELe4OiKgIpAcm+G8zJySaBXEB2D95JSngsvWg=;
        b=CiGGBug5qHFlylsaTAVmgZNNlqHPgOSr50DXKSvkd11FYDzwaRRa5wNidbXLfQU9fz
         Lp69YosoqCoy/BmMY34pODXf2tKfFO2x3bNmbVifltgxSnrg5pE7QB9UBys7S+vHSGyj
         TgoxWoht+NweY2YAhaVnGCpZ1vA3au0G/tCABNqnPVlDubTEiSHC5wxl3/ZjHLx76vl6
         RAoos214OGBDgx7uOU5MDhXbSczlFj3KAefhMD2ikqIPUuaS/LCEe6NYB8MiAGFtTVU9
         fYU10uIJFZXvFTJb1/YiYS+8aiEMl9SapsACoibiUn6wEgsv+U27voxAUWegmpXYKV0W
         DvDg==
X-Gm-Message-State: APjAAAXBde4Vni2u3pDQCpIQ6nA/pjRe8sYrASQRnd18hijTxvHFqIMY
	IdsfwcEAMibYPxZDiOzHKGmLrBc+RYc=
X-Google-Smtp-Source: APXvYqzhfBMQZ7AsJIPlOQBvHkiKqTxnj5H9MW1t/r19F5Xhbk6bDaO9qBjmImtSnWRUCHjrLFOvyA==
X-Received: by 2002:a92:d451:: with SMTP id r17mr13203764ilm.201.1579795710700;
        Thu, 23 Jan 2020 08:08:30 -0800 (PST)
Return-Path: <jpewhacker@gmail.com>
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
        by smtp.gmail.com with ESMTPSA id w15sm523063iol.86.2020.01.23.08.08.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2020 08:08:29 -0800 (PST)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Joshua Watt <JPEWhacker@gmail.com>
Subject: [yocto][meta-rockchip][PATCH 1/4] arm-trusted-firmware: Add recipe
Date: Thu, 23 Jan 2020 10:08:18 -0600
Message-Id: <20200123160821.778821-2-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200123160821.778821-1-JPEWhacker@gmail.com>
References: <20200123160821.778821-1-JPEWhacker@gmail.com>
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

