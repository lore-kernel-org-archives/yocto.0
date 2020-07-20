Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
 by mx.groups.io with SMTP id smtpd.web11.7092.1595284475347174167
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jul 2020 15:34:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uoH5vA4B;
 spf=pass (domain: gmail.com, ip: 209.85.160.170, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f170.google.com with SMTP id w9so2127225qts.6
        for <yocto@lists.yoctoproject.org>; Mon, 20 Jul 2020 15:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3cRnDTI3xJsv9B6Cu4Ez2sB/eGcCT77eaVQYZRQozV8=;
        b=uoH5vA4BrLJOjarRzYdgKy99Yx3QzJrk9VQxHJS54FYdKyK9vjUFoqlphb4g6QDcb9
         C9U5x6SyAL65PKX+g26zg4RrVImrQ6sQZXPSkOJ52Utq9M6UbRAfuzUZKw1G/mIddqJi
         gPXPDxza0n3HYH31aGenwgYUBk38rFtOgIjCAhMTGsdkW3FtiVjonrJhl2vthCltzZQD
         x0n0Zi6wDnqy5uEK8U4jwQDpM4JRCFtqBjjuRYeX6hu1R1VRvguAiqU/ZpJvRCaGsv5C
         qPRXvO2KSITN+BFPM29ZdrkmIS0VmvEL+bfHgQVN4YvH4KKXqp+JwBraNLXUgPdDmxxL
         LNBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3cRnDTI3xJsv9B6Cu4Ez2sB/eGcCT77eaVQYZRQozV8=;
        b=ZhPPBAHnZhqMtMNYfHcOUTaLGYmqAYq7V/GlnsrMZ39WvVJnllWPLQBwjPXPKZ3F1S
         cf2lPyR90UbscjNxShmyhUc8oK9eN8GRAckTlDD0Pfw8P8r6iTU3H26LIsGv0U/yBTEt
         T5cZuFSVodOAaW2OTaYGhfCuNyy4jvF/4+2roSNhLnyfUmm0yuNkxcPPeYOTrGKDBgKt
         rGJD4jetiVIph4wSz6iRyX4fxoTsu7clpCD/usSjHBFwcEUEmowsjwV8wdfT2b9XkCuS
         6CNkd/RiYrXVpYgO6+k6hlg6Fks6Wc4eTmmsBBup+X18tb4XQ9OntUXunn2trM3Iq+mR
         4pUg==
X-Gm-Message-State: AOAM531OQGUqXI6+ICgegJq8MIsN14PYtS1ZrliJ4FCZfu04FE3QCW3R
	mX2lsc5cYFFnksN7NGR7nnYlwpuk
X-Google-Smtp-Source: ABdhPJwjmyn8Ta8fyqgVLS2cNuGQ2K6wTqMavgCQZGC4OY/dHmsWDOx/G8sQY5s7BYsuUXpJDNq62A==
X-Received: by 2002:ac8:2aa9:: with SMTP id b38mr26687293qta.49.1595284474157;
        Mon, 20 Jul 2020 15:34:34 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from linux-uys3.suse ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id k50sm1683135qtf.15.2020.07.20.15.34.33
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Jul 2020 15:34:33 -0700 (PDT)
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][meta-rockchip] arm-none-eabi toolchain
Date: Mon, 20 Jul 2020 18:34:26 -0400
Message-Id: <20200720223426.17416-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.26.0.106.g9fadedd637
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

We now have a dependency on meta-arm/meta-arm in order to build tf-a (there's
no point carrying our own recipe when there's a common, consolidated one to
use in meta-arm).

meta-arm/meta-arm now has a dependency on meta-arm/meta-arm-toolchain.
meta-arm-toolchain now also has a recipe for arm-none-eabi, so we might as
well use that too, and remove our own version.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 ...cc-arm-none-eabi-native_9-2019-q4-major.bb | 37 -------------------
 1 file changed, 37 deletions(-)
 delete mode 100644 recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb

diff --git a/recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb b/recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb
deleted file mode 100644
index a0c832d..0000000
--- a/recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb
+++ /dev/null
@@ -1,37 +0,0 @@
-# Copyright (C) 2019 Garmin Ltd. or its subsidaries
-# Released under the MIT license (see COPYING.MIT for the terms)
-
-DESCRIPTION = "Baremetal GCC for ARM-R and ARM-M processors"
-LICENSE = "GPL-3.0-with-GCC-exception & GPLv3"
-
-LIC_FILES_CHKSUM = "file://share/doc/gcc-arm-none-eabi/license.txt;md5=c18349634b740b7b95f2c2159af888f5"
-
-PROVIDES = "virtual/arm-none-eabi-gcc"
-
-SRC_URI = "https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2019q4/RC2.1/${BPN}-${PV}-x86_64-linux.tar.bz2"
-
-SRC_URI[md5sum] = "fe0029de4f4ec43cf7008944e34ff8cc"
-SRC_URI[sha256sum] = "bcd840f839d5bf49279638e9f67890b2ef3a7c9c7a9b25271e83ec4ff41d177a"
-
-S = "${WORKDIR}/${BPN}-${PV}"
-
-inherit native
-
-COMPATIBLE_HOST = "x86_64.*-linux"
-
-do_install() {
-    install -d ${D}${datadir}/arm-none-eabi/
-    cp -r ${S}/. ${D}${datadir}/arm-none-eabi/
-
-    install -d ${D}${bindir}
-    # Symlink all executables into bindir
-    for f in ${D}${datadir}/arm-none-eabi/bin/arm-none-eabi-*; do
-        lnr $f ${D}${bindir}/$(basename $f)
-    done
-}
-
-INSANE_SKIP_${PN} = "already-stripped"
-
-INHIBIT_SYSROOT_STRIP = "1"
-INHIBIT_PACKAGE_STRIP = "1"
-INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
-- 
2.26.0.106.g9fadedd637

