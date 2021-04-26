Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
 by mx.groups.io with SMTP id smtpd.web10.7763.1619446941338940735
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Apr 2021 07:22:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uykwTAO9;
 spf=pass (domain: gmail.com, ip: 209.85.215.178, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f178.google.com with SMTP id p12so40142244pgj.10
        for <yocto@lists.yoctoproject.org>; Mon, 26 Apr 2021 07:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jCYiLXLmVn3MJdvQw0LJn2vAR8pySsbkDbRvFHnbhzg=;
        b=uykwTAO9ADRF/fGB6giMuBGZbx3B3RrCzm5lnp+aV/PzQl8brDMjjYRJi9KsPwL+gf
         sLQl6UNbqIVHuoV+F//Wh3IH/KUhkywLl7qNyOlwmCaGmLXoFCnd0tNBp91s0CVFa7HC
         ICNVLoZg2nmqAiaBTSV+e7o9XTVpMHd48xHCf8xgDOD1HYVJWcU6uNNtnDYaPYc5ElHM
         6J8eUwJRiJnDFbm7HSZhPhmG11/+4b1uKR3eIRKg8TNJTFXoohiFqNJbQIqmZS3KkxR7
         m0vY1sBAX/CY/toYTGw1WaLFnwkSm0pwaIMgGK2ui3UeOAQspzfzVV4bQq/eUuOYPgOD
         dBww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jCYiLXLmVn3MJdvQw0LJn2vAR8pySsbkDbRvFHnbhzg=;
        b=KPXStWRA4gYPXchXBZkYqMyMqtbm1ClFUmwrfrFJPijE097wvnUfoXsN0FY+ucL9DI
         wInGbZtUa88Oj88pAIYqabKTvFC64P9EHnilWWYaK6e2otRVFqdHEdC4UeTx8AK60o91
         d1Lh7Pd4XQzpD6YeCuChdT47j7R3iJRjPVFtYnpkZ5OL2QjyS7+xcxHXmci8buWvtZYI
         OEd2sIBMVGZWZcjCzingmbr/FRlhdKAnz3J5uKhkEqTQo7hXBCV4cUr57H71rEo5ns1V
         KdoxJ88xc8OdGyZRDQ6Ns3Uv46TTjZFcytwafLnnaQST1TaOHLhbUh4cnh59YlSkS2ZO
         Ghdg==
X-Gm-Message-State: AOAM533mUbMbb5/StBAvras8Nmt+EXAFlD1Wg6telhe/G2Arg9Z9waO7
	Fx2XMlXsFQvvkX+3tXzBgzUMJ5XLu0CxIQ==
X-Google-Smtp-Source: ABdhPJzbh+rWDn0+WIK/NCQiKrEc0AUSEc+KvWfL/KsQyoMmdZyiKzxnr+hTLbBwUG1GKyTXV8pCAw==
X-Received: by 2002:a65:584e:: with SMTP id s14mr16800575pgr.229.1619446940478;
        Mon, 26 Apr 2021 07:22:20 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id b10sm17134pfb.27.2021.04.26.07.22.19
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Apr 2021 07:22:20 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] libseccomp: drop recipe. In core now
Date: Mon, 26 Apr 2021 14:22:18 +0000
Message-Id: <20210426142218.1233159-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/libseccomp/files/run-ptest   |  4 --
 .../libseccomp/libseccomp_2.5.1.bb            | 47 -------------------
 2 files changed, 51 deletions(-)
 delete mode 100644 recipes-security/libseccomp/files/run-ptest
 delete mode 100644 recipes-security/libseccomp/libseccomp_2.5.1.bb

diff --git a/recipes-security/libseccomp/files/run-ptest b/recipes-security/libseccomp/files/run-ptest
deleted file mode 100644
index 54b4a63..0000000
--- a/recipes-security/libseccomp/files/run-ptest
+++ /dev/null
@@ -1,4 +0,0 @@
-#!/bin/sh
-
-cd tests
-./regression -a
diff --git a/recipes-security/libseccomp/libseccomp_2.5.1.bb b/recipes-security/libseccomp/libseccomp_2.5.1.bb
deleted file mode 100644
index 40ac1a8..0000000
--- a/recipes-security/libseccomp/libseccomp_2.5.1.bb
+++ /dev/null
@@ -1,47 +0,0 @@
-SUMMARY = "interface to seccomp filtering mechanism"
-DESCRIPTION = "The libseccomp library provides and easy to use, platform independent,interface to the Linux Kernel's syscall filtering mechanism: seccomp."
-SECTION = "security"
-LICENSE = "LGPL-2.1"
-LIC_FILES_CHKSUM = "file://LICENSE;beginline=0;endline=1;md5=8eac08d22113880357ceb8e7c37f989f"
-
-DEPENDS += "gperf-native"
-
-SRCREV = "4bf70431a339a2886ab8c82e9a45378f30c6e6c7"
-
-SRC_URI = "git://github.com/seccomp/libseccomp.git;branch=release-2.5 \
-           file://run-ptest \
-           "
-
-COMPATIBLE_HOST_riscv32 = "null"
-
-S = "${WORKDIR}/git"
-
-inherit autotools-brokensep pkgconfig ptest
-
-PACKAGECONFIG ??= ""
-PACKAGECONFIG[python] = "--enable-python, --disable-python, python3"
-
-DISABLE_STATIC = ""
-
-do_compile_ptest() {
-    oe_runmake -C tests check-build
-}
-
-do_install_ptest() {
-    install -d ${D}${PTEST_PATH}/tests
-    install -d ${D}${PTEST_PATH}/tools
-    for file in $(find tests/* -executable -type f); do
-        install -m 744 ${S}/${file} ${D}/${PTEST_PATH}/tests
-    done
-    for file in $(find tests/*.tests -type f); do
-        install -m 744 ${S}/${file} ${D}/${PTEST_PATH}/tests
-    done
-    for file in $(find tools/* -executable -type f); do
-        install -m 744 ${S}/${file} ${D}/${PTEST_PATH}/tools
-    done
-}
-
-FILES_${PN} = "${bindir} ${libdir}/${BPN}.so*"
-FILES_${PN}-dbg += "${libdir}/${PN}/tests/.debug/* ${libdir}/${PN}/tools/.debug"
-
-RDEPENDS_${PN}-ptest = "coreutils bash"
-- 
2.25.1

