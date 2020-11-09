Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com [209.85.208.65])
 by mx.groups.io with SMTP id smtpd.web09.8736.1604910749113210761
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Nov 2020 00:32:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TPtg2Lg0;
 spf=pass (domain: gmail.com, ip: 209.85.208.65, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f65.google.com with SMTP id e18so7782851edy.6
        for <yocto@lists.yoctoproject.org>; Mon, 09 Nov 2020 00:32:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=08/KZEPmIHXTyzjmd9PwEEAhzNEvza9gFwvE4TsuBR0=;
        b=TPtg2Lg0T4OoHPm18229u1Em0KQOLQ+ITKbmUgyDW/oAOUnw+NtYr8wfCkIcyafH9c
         zR0YE3VXK/kBX2gdNwyeMgV7CFnkvSnnUpDsf8qaBzkkQ5de9frhvzG4ooAVXxA4TZhz
         MBXi5oKsneISrDYHdVPYG+GiAOCknP6jGl1Mvqh6JE8pNoVT9+ajQa4WQaXsRvF6z2vn
         UmoBFIzd9m/T8b08WFxmGttpXxf9IhjNu/OZ7p/WY4YLl3Yzt/fUCGM3X+ckWTRH25TD
         XKPxYS7O9MjngNaGdjuKOWFG4wCJ6bXD8nzgN0QPIou7QZ9pKadj0SCcMg4cNDVN2YZ+
         YMzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=08/KZEPmIHXTyzjmd9PwEEAhzNEvza9gFwvE4TsuBR0=;
        b=DOcZGFsGXlbzBxZv7BWmfbaOm7OcEEDPV9daibzhYBGY+Lsmd/RKbpr2E4ZhT1Zrfg
         PoWsH7QaHE35+TqOwGS1a/63pxEVkQzGxvv2VRGDRPCeSuBvLmoflkSTTTMuLEYRT90G
         1elSnnNZeym775mMHJo3FRrDpOgrhb9pbhnQ2PgawKAOCV4/IEQoQn3aHBaYySH32l/u
         +OjI4qZf0VpEW5ScW5AcQxw53r0Tk4EjKGhzjlF2juYAvGDkvF0QeqL+X5o+Xtz2RXcc
         SDl5L1oY5tyTefhoe/vprOHEFM8UV2wav4XqUujRirFwqqxVc5dEZ7m7AIZ7CstH2kWd
         CufQ==
X-Gm-Message-State: AOAM530zbFfpOiWBbtRFRhNb/o67GF/vWeui69R4BWcEcOVwsTgAw1ge
	EeeIBisSoFkkBwcYt5WpfNS2fciWKWxYew==
X-Google-Smtp-Source: ABdhPJyEJ6U5qPVAilw7YWjiFTpfaoSZX5jX4N34X3DmrcEn1Zw7hYKa3JbPuEfdWCJ6jGvLTzda8A==
X-Received: by 2002:a05:6402:1c84:: with SMTP id cy4mr14035319edb.382.1604910746902;
        Mon, 09 Nov 2020 00:32:26 -0800 (PST)
Return-Path: <alex.kanavin@gmail.com>
Received: from linux-f9zs.fritz.box ([2a02:2450:1011:4f7:596d:bf31:3950:5bda])
        by smtp.gmail.com with ESMTPSA id d23sm8191927edp.36.2020.11.09.00.32.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2020 00:32:26 -0800 (PST)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [RFC PATCH 3/5] config.json: replace core-image-sato with core-image-weston
Date: Mon,  9 Nov 2020 09:32:04 +0100
Message-Id: <20201109083206.16832-3-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.29.1
In-Reply-To: <20201109083206.16832-1-alex.kanavin@gmail.com>
References: <20201109083206.16832-1-alex.kanavin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

I believe the time has come for YP to be defaulting to Wayland
and not X11.

X11 is effectively deprecated technology at this point with
only minimal maintenance; standalone X server will not be
developed any further, and all attention currently is towards
making X apps work well under Wayland.

Weston is built with x11 support enabled via xwayland, so
x11 bits continue do be built and exercised in tests and SDKs;
for testing core-image-sato as a whole a separate target will
be added next.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.json | 176 ++++++++++++++++++++++++++--------------------------
 1 file changed, 88 insertions(+), 88 deletions(-)

diff --git a/config.json b/config.json
index 3e60d15..def8d5a 100644
--- a/config.json
+++ b/config.json
@@ -62,13 +62,13 @@
             "BUILDINFO" : true,
             "BUILDHISTORY" : true,
             "step1" : {
-                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato:do_populate_sdk",
-                "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage core-image-sato:do_testsdk"
+                "BBTARGETS" : "core-image-weston core-image-weston-sdk core-image-minimal core-image-minimal-dev core-image-weston:do_populate_sdk",
+                "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-weston:do_testimage core-image-weston-sdk:do_testimage core-image-weston:do_testsdk"
             },
             "step2" : {
                 "SDKMACHINE" : "x86_64",
-                "BBTARGETS" : "core-image-sato:do_populate_sdk core-image-minimal:do_populate_sdk_ext core-image-sato:do_populate_sdk_ext",
-                "SANITYTARGETS" : "core-image-sato:do_testsdk core-image-minimal:do_testsdkext core-image-sato:do_testsdkext"
+                "BBTARGETS" : "core-image-weston:do_populate_sdk core-image-minimal:do_populate_sdk_ext core-image-weston:do_populate_sdk_ext",
+                "SANITYTARGETS" : "core-image-weston:do_testsdk core-image-minimal:do_testsdkext core-image-weston:do_testsdkext"
             },
             "step3" : {
                 "BUILDHISTORY" : false,
@@ -81,8 +81,8 @@
             "BUILDINFO" : true,
             "BUILDHISTORY" : true,
             "step1" : {
-                "BBTARGETS" : "core-image-full-cmdline core-image-sato core-image-sato-sdk",
-                "SANITYTARGETS" : "core-image-full-cmdline:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage"
+                "BBTARGETS" : "core-image-full-cmdline core-image-weston core-image-weston-sdk",
+                "SANITYTARGETS" : "core-image-full-cmdline:do_testimage core-image-weston:do_testimage core-image-weston-sdk:do_testimage"
             }
         },
         "ptest-qemu" : {
@@ -103,8 +103,8 @@
         },
         "ltp-qemu" : {
             "BUILDINFO" : true,
-            "BBTARGETS" : "core-image-sato",
-            "SANITYTARGETS" : "core-image-sato:do_testimage",
+            "BBTARGETS" : "core-image-weston",
+            "SANITYTARGETS" : "core-image-weston:do_testimage",
             "extravars" : [
                 "IMAGE_INSTALL_append = ' ltp'",
                 "TEST_SUITES = 'ping ssh ltp ltp_compliance'",
@@ -116,16 +116,16 @@
         "arch-hw" : {
             "BUILDINFO" : true,
             "step1" : {
-                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-weston-ptest-all core-image-sato:do_populate_sdk",
-                "SANITYTARGETS" : "core-image-sato:do_testsdk"
+                "BBTARGETS" : "core-image-weston core-image-weston-sdk core-image-minimal core-image-minimal-dev core-image-weston-ptest-all core-image-weston:do_populate_sdk",
+                "SANITYTARGETS" : "core-image-weston:do_testsdk"
             }
         },
         "arch-hw-qemu" : {
             "BUILDINFO" : true,
             "step1" : {
                 "SDKMACHINE" : "x86_64",
-                "BBTARGETS" : "core-image-minimal core-image-sato core-image-sato-sdk core-image-sato:do_populate_sdk core-image-sato:do_populate_sdk_ext",
-                "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage core-image-sato:do_testsdk core-image-sato:do_testsdkext"
+                "BBTARGETS" : "core-image-minimal core-image-weston core-image-weston-sdk core-image-weston:do_populate_sdk core-image-weston:do_populate_sdk_ext",
+                "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-weston:do_testimage core-image-weston-sdk:do_testimage core-image-weston:do_testsdk core-image-weston:do_testsdkext"
             },
             "step2" : {
                 "BUILDHISTORY" : false,
@@ -136,7 +136,7 @@
             "DISTRO" : "poky-altcfg",
             "BUILDINFO" : true,
             "step1" : {
-                "BBTARGETS" : "core-image-full-cmdline core-image-sato core-image-sato-sdk"
+                "BBTARGETS" : "core-image-full-cmdline core-image-weston core-image-weston-sdk"
             }
         },
         "buildperf" : {
@@ -207,17 +207,17 @@
                 "BB_SIGNATURE_HANDLER = 'OEEquivHash'"
             ],
             "step1" : {
-                "BBTARGETS" : "core-image-sato",
-                "SANITYTARGETS" : "core-image-sato:do_testimage"
+                "BBTARGETS" : "core-image-weston",
+                "SANITYTARGETS" : "core-image-weston:do_testimage"
             },
             "step2" : {
-                "BBTARGETS" : "core-image-sato:do_populate_sdk",
-                "SANITYTARGETS" : "core-image-sato:do_testsdk"
+                "BBTARGETS" : "core-image-weston:do_populate_sdk",
+                "SANITYTARGETS" : "core-image-weston:do_testsdk"
             },
             "step3" : {
                 "SDKMACHINE" : "x86_64",
-                "BBTARGETS" : "core-image-sato:do_populate_sdk core-image-minimal:do_populate_sdk_ext",
-                "SANITYTARGETS" : "core-image-sato:do_testsdk"
+                "BBTARGETS" : "core-image-weston:do_populate_sdk core-image-minimal:do_populate_sdk_ext",
+                "SANITYTARGETS" : "core-image-weston:do_testsdk"
             }
         },
         "qemuarm" : {
@@ -229,8 +229,8 @@
             "BUILDINFO" : true,
             "step1" : {
                 "SDKMACHINE" : "aarch64",
-                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato:do_populate_sdk core-image-minimal:do_populate_sdk_ext core-image-sato:do_populate_sdk_ext",
-                "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage core-image-sato:do_testsdk  core-image-minimal:do_testsdkext core-image-sato:do_testsdkext"
+                "BBTARGETS" : "core-image-weston core-image-weston-sdk core-image-minimal core-image-minimal-dev core-image-weston:do_populate_sdk core-image-minimal:do_populate_sdk_ext core-image-weston:do_populate_sdk_ext",
+                "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-weston:do_testimage core-image-weston-sdk:do_testimage core-image-weston:do_testsdk  core-image-minimal:do_testsdkext core-image-weston:do_testsdkext"
             }
         },
         "qemuarm-alt" : {
@@ -242,7 +242,7 @@
             "TEMPLATE" : "arch-hw",
             "step2" : {
                 "SDKMACHINE" : "x86_64",
-                "BBTARGETS" : "core-image-minimal:do_populate_sdk_ext core-image-sato:do_populate_sdk"
+                "BBTARGETS" : "core-image-minimal:do_populate_sdk_ext core-image-weston:do_populate_sdk"
             }
         },
         "beaglebone-alt" : {
@@ -258,8 +258,8 @@
             "BUILDINFO" : true,
             "step1" : {
                 "SDKMACHINE" : "aarch64",
-                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato:do_populate_sdk core-image-minimal:do_populate_sdk_ext core-image-sato:do_populate_sdk_ext",
-                "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage core-image-sato:do_testsdk  core-image-minimal:do_testsdkext core-image-sato:do_testsdkext"
+                "BBTARGETS" : "core-image-weston core-image-weston-sdk core-image-minimal core-image-minimal-dev core-image-weston:do_populate_sdk core-image-minimal:do_populate_sdk_ext core-image-weston:do_populate_sdk_ext",
+                "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-weston:do_testimage core-image-weston-sdk:do_testimage core-image-weston:do_testsdk  core-image-minimal:do_testsdkext core-image-weston:do_testsdkext"
             }
         },
         "qemuarm64-ptest" : {
@@ -284,13 +284,13 @@
             ],
             "step1": {
                 "MACHINE": "n1sdp",
-                "BBTARGETS": "core-image-minimal core-image-sato core-image-sato:do_populate_sdk",
-                "SANITYTARGETS" : "core-image-sato:do_testsdk"
+                "BBTARGETS": "core-image-minimal core-image-weston core-image-weston:do_populate_sdk",
+                "SANITYTARGETS" : "core-image-weston:do_testsdk"
                 },
             "step2": {
                 "MACHINE": "juno",
-                "BBTARGETS": "core-image-minimal core-image-sato core-image-sato:do_populate_sdk",
-                "SANITYTARGETS" : "core-image-sato:do_testsdk"
+                "BBTARGETS": "core-image-minimal core-image-weston core-image-weston:do_populate_sdk",
+                "SANITYTARGETS" : "core-image-weston:do_testsdk"
             }
         },
        "bringup" : {
@@ -298,24 +298,24 @@
             "SSTATEDIR" : ["SSTATE_DIR ?= '${HELPERBUILDDIR}/sstate'"],
             "MACHINE" : "qemuarm64",
              "step1" : {
-                 "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato:do_populate_sdk",
-                 "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage core-image-sato:do_testsdk"
+                 "BBTARGETS" : "core-image-weston core-image-weston-sdk core-image-minimal core-image-minimal-dev core-image-weston:do_populate_sdk",
+                 "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-weston:do_testimage core-image-weston-sdk:do_testimage core-image-weston:do_testsdk"
              },
             "step2" : {
                 "MACHINE" : "qemux86-64",
-                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-weston-ptest-all core-image-sato:do_populate_sdk",
-                "SANITYTARGETS" : "core-image-sato:do_testsdk"
+                "BBTARGETS" : "core-image-weston core-image-weston-sdk core-image-minimal core-image-minimal-dev core-image-weston-ptest-all core-image-weston:do_populate_sdk",
+                "SANITYTARGETS" : "core-image-weston:do_testsdk"
 
             },
             "step3" : {
                  "SDKMACHINE" : "x86_64",
-                 "BBTARGETS" : "core-image-sato:do_populate_sdk core-image-minimal:do_populate_sdk_ext core-image-sato:do_populate_sdk_ext",
-                 "SANITYTARGETS" : "core-image-sato:do_testsdk core-image-minimal:do_testsdkext core-image-sato:do_testsdkext"
+                 "BBTARGETS" : "core-image-weston:do_populate_sdk core-image-minimal:do_populate_sdk_ext core-image-weston:do_populate_sdk_ext",
+                 "SANITYTARGETS" : "core-image-weston:do_testsdk core-image-minimal:do_testsdkext core-image-weston:do_testsdkext"
              },
             "step4" : {
                 "MACHINE" : "qemux86-64",
                 "SDKMACHINE" : "x86_64",
-                "BBTARGETS" : "core-image-minimal:do_populate_sdk_ext core-image-sato:do_populate_sdk"
+                "BBTARGETS" : "core-image-minimal:do_populate_sdk_ext core-image-weston:do_populate_sdk"
             },
             "step5" : {
                 "BUILDINFO" : false,
@@ -459,11 +459,11 @@
                 "baselib = \"${@d.getVar('BASE_LIB_tune-' + (d.getVar('DEFAULTTUNE', True) or 'INVALID'), True) or 'lib'}\""
             ],
             "step1" : {
-                "BBTARGETS" : "core-image-minimal core-image-sato",
+                "BBTARGETS" : "core-image-minimal core-image-weston",
                 "SANITYTARGETS" : "core-image-minimal:do_testimage"
             },
             "step2" : {
-                "SANITYTARGETS" : "core-image-sato:do_testimage",
+                "SANITYTARGETS" : "core-image-weston:do_testimage",
                 "extravars" : [
                     "TEST_SUITES_append = ' x32lib'"
                 ]
@@ -506,8 +506,8 @@
                 ]
             },
             "step3" : {
-                "BBTARGETS" : "core-image-sato",
-                "SANITYTARGETS" : "core-image-sato:do_testimage",
+                "BBTARGETS" : "core-image-weston",
+                "SANITYTARGETS" : "core-image-weston:do_testimage",
                 "extravars" : [
                     "TEST_SUITES_append = ' multilib'",
                     "require conf/multilib.conf",
@@ -519,8 +519,8 @@
             },
             "step4" : {
                 "PACKAGE_CLASSES" : "package_ipk",
-                "BBTARGETS" : "core-image-sato",
-                "SANITYTARGETS" : "core-image-sato:do_testimage",
+                "BBTARGETS" : "core-image-weston",
+                "SANITYTARGETS" : "core-image-weston:do_testimage",
                 "extravars" : [
                     "TEST_SUITES_append = ' multilib'",
                     "require conf/multilib.conf",
@@ -533,7 +533,7 @@
             "step5" : {
                 "MACHINE" : "qemux86",
                 "SDKMACHINE" : "i686",
-                "BBTARGETS" : "lib64-core-image-sato lib64-core-image-sato-sdk",
+                "BBTARGETS" : "lib64-core-image-weston lib64-core-image-weston-sdk",
                 "extravars" : [
                     "require conf/multilib.conf",
                     "MULTILIBS = 'multilib:lib64'",
@@ -556,26 +556,26 @@
         "pkgman-rpm-non-rpm" : {
             "MACHINE" : "qemux86",
             "PACKAGE_CLASSES" : "package_rpm",
-            "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev",
-            "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage"
+            "BBTARGETS" : "core-image-weston core-image-weston-sdk core-image-minimal core-image-minimal-dev",
+            "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-weston:do_testimage core-image-weston-sdk:do_testimage"
         },
         "pkgman-deb-non-deb" : {
             "MACHINE" : "qemux86",
             "PACKAGE_CLASSES" : "package_deb",
-            "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev",
-            "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage"
+            "BBTARGETS" : "core-image-weston core-image-weston-sdk core-image-minimal core-image-minimal-dev",
+            "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-weston:do_testimage core-image-weston-sdk:do_testimage"
         },
         "pkgman-non-rpm" : {
             "MACHINE" : "qemux86",
             "step1" : {
                 "PACKAGE_CLASSES" : "package_ipk",
-                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev",
-                "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage"
+                "BBTARGETS" : "core-image-weston core-image-weston-sdk core-image-minimal core-image-minimal-dev",
+                "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-weston:do_testimage core-image-weston-sdk:do_testimage"
             },
             "step2" : {
                 "PACKAGE_CLASSES" : "package_deb",
-                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev",
-                "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage"
+                "BBTARGETS" : "core-image-weston core-image-weston-sdk core-image-minimal core-image-minimal-dev",
+                "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-weston:do_testimage core-image-weston-sdk:do_testimage"
             }
         },
         "poky-tiny" : {
@@ -591,38 +591,38 @@
             ],
             "step1" : {
                 "MACHINE" : "qemux86",
-                "BBTARGETS" : "wic-tools core-image-sato",
+                "BBTARGETS" : "wic-tools core-image-weston",
                 "EXTRACMDS" : [
-                    "wic create directdisk -e core-image-sato -o ${BUILDDIR}/tmp/deploy/wic_images/qemux86/directdisk/core-image-sato/",
-                    "wic create directdisk-gpt -e core-image-sato -o ${BUILDDIR}/tmp/deploy/wic_images/qemux86/directdisk/core-image-sato/",
-                    "wic create mkefidisk -e core-image-sato -o ${BUILDDIR}/tmp/deploy/wic_images/qemux86/directdisk/core-image-sato/"
+                    "wic create directdisk -e core-image-weston -o ${BUILDDIR}/tmp/deploy/wic_images/qemux86/directdisk/core-image-weston/",
+                    "wic create directdisk-gpt -e core-image-weston -o ${BUILDDIR}/tmp/deploy/wic_images/qemux86/directdisk/core-image-weston/",
+                    "wic create mkefidisk -e core-image-weston -o ${BUILDDIR}/tmp/deploy/wic_images/qemux86/directdisk/core-image-weston/"
                 ]
             },
             "step2" : {
                 "MACHINE" : "genericx86",
-                "BBTARGETS" : "wic-tools core-image-sato",
+                "BBTARGETS" : "wic-tools core-image-weston",
                 "EXTRACMDS" : [
-                    "wic create directdisk -e core-image-sato -o ${BUILDDIR}/tmp/deploy/wic_images/genericx86/directdisk/core-image-sato/",
-                    "wic create directdisk-gpt -e core-image-sato -o ${BUILDDIR}/tmp/deploy/wic_images/genericx86/directdisk/core-image-sato/",
-                    "wic create mkefidisk -e core-image-sato -o ${BUILDDIR}/tmp/deploy/wic_images/genericx86/directdisk/core-image-sato/"
+                    "wic create directdisk -e core-image-weston -o ${BUILDDIR}/tmp/deploy/wic_images/genericx86/directdisk/core-image-weston/",
+                    "wic create directdisk-gpt -e core-image-weston -o ${BUILDDIR}/tmp/deploy/wic_images/genericx86/directdisk/core-image-weston/",
+                    "wic create mkefidisk -e core-image-weston -o ${BUILDDIR}/tmp/deploy/wic_images/genericx86/directdisk/core-image-weston/"
                 ]
             },
             "step3" : {
                 "MACHINE" : "qemux86-64",
-                "BBTARGETS" : "wic-tools core-image-sato",
+                "BBTARGETS" : "wic-tools core-image-weston",
                 "EXTRACMDS" : [
-                    "wic create directdisk -e core-image-sato -o ${BUILDDIR}/tmp/deploy/wic_images/qemux86-64/directdisk/core-image-sato/",
-                    "wic create directdisk-gpt -e core-image-sato -o ${BUILDDIR}/tmp/deploy/wic_images/qemux86-64/directdisk/core-image-sato/",
-                    "wic create mkefidisk -e core-image-sato -o ${BUILDDIR}/tmp/deploy/wic_images/qemux86-64/directdisk/core-image-sato/"
+                    "wic create directdisk -e core-image-weston -o ${BUILDDIR}/tmp/deploy/wic_images/qemux86-64/directdisk/core-image-weston/",
+                    "wic create directdisk-gpt -e core-image-weston -o ${BUILDDIR}/tmp/deploy/wic_images/qemux86-64/directdisk/core-image-weston/",
+                    "wic create mkefidisk -e core-image-weston -o ${BUILDDIR}/tmp/deploy/wic_images/qemux86-64/directdisk/core-image-weston/"
                 ]
             },
             "step4" : {
                 "MACHINE" : "genericx86-64",
-                "BBTARGETS" : "wic-tools core-image-sato",
+                "BBTARGETS" : "wic-tools core-image-weston",
                 "EXTRACMDS" : [
-                    "wic create directdisk -e core-image-sato -o ${BUILDDIR}/tmp/deploy/wic_images/genericx86-64/directdisk/core-image-sato/",
-                    "wic create directdisk-gpt -e core-image-sato -o ${BUILDDIR}/tmp/deploy/wic_images/genericx86-64/directdisk/core-image-sato/",
-                    "wic create mkefidisk -e core-image-sato -o ${BUILDDIR}/tmp/deploy/wic_images/genericx86-64/directdisk/core-image-sato/"
+                    "wic create directdisk -e core-image-weston -o ${BUILDDIR}/tmp/deploy/wic_images/genericx86-64/directdisk/core-image-weston/",
+                    "wic create directdisk-gpt -e core-image-weston -o ${BUILDDIR}/tmp/deploy/wic_images/genericx86-64/directdisk/core-image-weston/",
+                    "wic create mkefidisk -e core-image-weston -o ${BUILDDIR}/tmp/deploy/wic_images/genericx86-64/directdisk/core-image-weston/"
                 ]
             }
         },
@@ -684,8 +684,8 @@
         "musl-qemux86" : {
             "MACHINE" : "qemux86",
             "SDKMACHINE" : "x86_64",
-            "BBTARGETS" : "core-image-minimal core-image-full-cmdline core-image-sato-sdk world",
-            "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-full-cmdline:do_testimage core-image-sato-sdk:do_testimage",
+            "BBTARGETS" : "core-image-minimal core-image-full-cmdline core-image-weston-sdk world",
+            "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-full-cmdline:do_testimage core-image-weston-sdk:do_testimage",
             "extravars" : [
                 "TCLIBC = 'musl'"
             ]
@@ -694,8 +694,8 @@
             "MACHINE" : "qemux86-64",
             "SDKMACHINE" : "x86_64",
             "BUILDINFO" : true,
-            "BBTARGETS" : "core-image-minimal core-image-full-cmdline core-image-sato-sdk world",
-            "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-full-cmdline:do_testimage core-image-sato-sdk:do_testimage",
+            "BBTARGETS" : "core-image-minimal core-image-full-cmdline core-image-weston-sdk world",
+            "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-full-cmdline:do_testimage core-image-weston-sdk:do_testimage",
             "extravars" : [
                 "TCLIBC = 'musl'"
             ]
@@ -807,16 +807,16 @@
             },
             "step4" : {
                 "SDKMACHINE" : "x86_64",
-                "BBTARGETS" : "core-image-sato core-image-sato:do_populate_sdk_ext"
+                "BBTARGETS" : "core-image-weston core-image-weston:do_populate_sdk_ext"
             },
             "step5" : {
                 "SDKMACHINE" : "x86_64",
-                "BBTARGETS" : "core-image-sato -S none",
+                "BBTARGETS" : "core-image-weston -S none",
                 "EXTRACMDS" : ["${SCRIPTSDIR}/../janitor/clobberdir ${BUILDDIR}/../build/tmp"]
             },
             "step6" : {
                 "SDKMACHINE" : "x86_64",
-                "BBTARGETS" : "core-image-sato",
+                "BBTARGETS" : "core-image-weston",
                 "extravars" : [
                     "TMPDIR = '${TOPDIR}/newtmp'",
                     "require ../locked-sigs.inc"
@@ -827,30 +827,30 @@
             "MACHINE" : "qemux86-64",
             "step1" : {
                 "SDKMACHINE" : "x86_64",
-                "BBTARGETS" : "core-image-sato:do_populate_sdk_ext",
+                "BBTARGETS" : "core-image-weston:do_populate_sdk_ext",
                 "extravars" : [
                     "TMPDIR = '${TOPDIR}/sdktmp'"
                 ]
             },
             "step2" : {
-                "BBTARGETS" : "core-image-sato",
-                "SANITYTARGETS" : "core-image-sato:do_testimage",
+                "BBTARGETS" : "core-image-weston",
+                "SANITYTARGETS" : "core-image-weston:do_testimage",
                 "extravars" : [
                     "IMAGE_INSTALL_append = ' logrotate'",
                     "TEST_SUITES_append = ' logrotate'"
                 ]
             },
             "step3" : {
-                "BBTARGETS" : "core-image-sato",
-                "SANITYTARGETS" : "core-image-sato:do_testimage",
+                "BBTARGETS" : "core-image-weston",
+                "SANITYTARGETS" : "core-image-weston:do_testimage",
                 "extravars" : [
                     "DISTRO_FEATURES_append = ' pam'",
                     "TEST_SUITES_append = ' pam'"
                 ]
             },
             "step4" : {
-                "BBTARGETS" : "core-image-sato",
-                "SANITYTARGETS" : "core-image-sato:do_testimage",
+                "BBTARGETS" : "core-image-weston",
+                "SANITYTARGETS" : "core-image-weston:do_testimage",
                 "extravars" : [
                     "IMAGE_INSTALL_append = ' service hello-mod'",
                     "TEST_SUITES_append = ' skeletoninit'"
@@ -858,8 +858,8 @@
                 "ADDLAYER" : ["${BUILDDIR}/../meta-skeleton"]
             },
             "step5" : {
-                "BBTARGETS" : "core-image-sato",
-                "SANITYTARGETS" : "core-image-sato:do_testimage",
+                "BBTARGETS" : "core-image-weston",
+                "SANITYTARGETS" : "core-image-weston:do_testimage",
                 "extravars" : [
                     "DISTRO_FEATURES_append = ' systemd'",
                     "VIRTUAL-RUNTIME_init_manager = 'systemd'",
@@ -867,16 +867,16 @@
                 ]
             },
             "step6" : {
-                "BBTARGETS" : "core-image-sato",
-                "SANITYTARGETS" : "core-image-sato:do_testimage",
+                "BBTARGETS" : "core-image-weston",
+                "SANITYTARGETS" : "core-image-weston:do_testimage",
                 "extravars" : [
                     "DISTRO_FEATURES_append = ' systemd'",
                     "VIRTUAL-RUNTIME_init_manager = 'sysvinit'"
                 ]
             },
             "step7" : {
-                "BBTARGETS" : "core-image-sato",
-                "SANITYTARGETS" : "core-image-sato:do_testimage",
+                "BBTARGETS" : "core-image-weston",
+                "SANITYTARGETS" : "core-image-weston:do_testimage",
                 "extravars" : [
                     "TEST_SUITES_append = ' systemd'",
                     "DISTRO_FEATURES_append = ' systemd'",
@@ -885,8 +885,8 @@
                 ]
             },
             "step8" : {
-                "BBTARGETS" : "core-image-sato",
-                "SANITYTARGETS" : "core-image-sato:do_testimage",
+                "BBTARGETS" : "core-image-weston",
+                "SANITYTARGETS" : "core-image-weston:do_testimage",
                 "extravars" : [
                     "PACKAGECONFIG_append_x86-64_pn-mesa = ' gallium-llvm gallium r600'"
                 ]
-- 
2.29.1

