Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
 by mx.groups.io with SMTP id smtpd.web09.57.1619200993290365832
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Apr 2021 11:03:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=vPTbfLPR;
 spf=pass (domain: gmail.com, ip: 209.85.208.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f48.google.com with SMTP id y3so22100822eds.5
        for <yocto@lists.yoctoproject.org>; Fri, 23 Apr 2021 11:03:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/AtwxEQGZuetyBWFuMHBtoKHXzMOzO4cys3PnO08AG0=;
        b=vPTbfLPRhyQGhTtgZNfRQvmrK4BhmNrWOTpkx8eFJWduMS+Z7hCbOTArRDsB1qSWGm
         KrnTStSslryqXhIpMNkuYGmkNZTLVZu8Fi4COCU0KtWnHHfHAoY6ko5xrUyTXJwM32BR
         drEAfvVhPe3Yg70fPwpX22JDmK/HlkFwxyvQabULviKPmRql3OqlRT8/e9gyCfxIJeET
         ENcwT7144yXmlXr6wGFvGkAI5jWyVd3ky0Ri7zHOKrClHJWGuuVykznMoYFDVYNbeqtp
         50+BnwmZIxbZBvQNQb+b2te7LYwNLFmopGbThf/1WqfCK8avt7I+pa7+wjoRiOPoFy/p
         Z2og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/AtwxEQGZuetyBWFuMHBtoKHXzMOzO4cys3PnO08AG0=;
        b=CZJRU2MYEVkT/QvEvmgyqRP2hi0g0rLuV3LQsVg4JSg/NDEYQQBxzKjwUAF81ckgi+
         /8oD4qUrOgrsq8O/lgHeLKjwBikg5QdJU9b8yzLh4dL9UwWMNvWF07FGgBDiEG9DkEF4
         ixygSObA219rOMj5hk8uu74ioEpeArN1anZ2JVFDSCrtU/3yDN9B9568S6Rlmp9v03ft
         rDO9qwiAvHJdXr33nflt5OGstwmByRWqGXgZzg5YaNRAJHfEZE+Z+5EOg4d8i8fmUbal
         gIYSLI+1TAQ19UUa24DcDkXkkRdtQH2MtwqjBceMWeHDW4pG70oUFZbuUYq4nvF5Ve6P
         cIww==
X-Gm-Message-State: AOAM532RA055aXbCa14WyMB5ifHn8f5BTl7TcAjJNb/iHPlv4Lzm9BAZ
	bmzIv2T0N++rotmK7S53nvvsPzWA1J9Yvw==
X-Google-Smtp-Source: ABdhPJx3qlV6Fu298qL/WGv8BUtiu3flYaZgpC2wbq3+ukJpmLnPe10E3AyMq3KlIDHkxLdux5DIug==
X-Received: by 2002:aa7:d78a:: with SMTP id s10mr5975140edq.310.1619200991800;
        Fri, 23 Apr 2021 11:03:11 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from localhost.localdomain ([2a02:2454:2a0:cb00:eb83:2e01:3dda:5d46])
        by smtp.gmail.com with ESMTPSA id bm13sm4604142ejb.75.2021.04.23.11.03.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Apr 2021 11:03:11 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper 2/4] config.json: replace core-image-sato with core-image-weston
Date: Fri, 23 Apr 2021 20:02:44 +0200
Message-Id: <20210423180246.706715-2-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210423180246.706715-1-alex.kanavin@gmail.com>
References: <20210423180246.706715-1-alex.kanavin@gmail.com>
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
index a1893db..8e0f0ac 100644
--- a/config.json
+++ b/config.json
@@ -66,13 +66,13 @@
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
                 "shortname" : "Machine oe-selftest",
@@ -86,8 +86,8 @@
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
@@ -108,8 +108,8 @@
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
@@ -121,16 +121,16 @@
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
                 "shortname" : "Machine oe-selftest",
@@ -142,7 +142,7 @@
             "DISTRO" : "poky-altcfg",
             "BUILDINFO" : true,
             "step1" : {
-                "BBTARGETS" : "core-image-full-cmdline core-image-sato core-image-sato-sdk"
+                "BBTARGETS" : "core-image-full-cmdline core-image-weston core-image-weston-sdk"
             }
         },
         "buildperf" : {
@@ -229,17 +229,17 @@
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
@@ -251,8 +251,8 @@
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
@@ -264,7 +264,7 @@
             "TEMPLATE" : "arch-hw",
             "step2" : {
                 "SDKMACHINE" : "x86_64",
-                "BBTARGETS" : "core-image-minimal:do_populate_sdk_ext core-image-sato:do_populate_sdk"
+                "BBTARGETS" : "core-image-minimal:do_populate_sdk_ext core-image-weston:do_populate_sdk"
             }
         },
         "beaglebone-alt" : {
@@ -280,8 +280,8 @@
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
@@ -305,13 +305,13 @@
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
         "meta-agl-core" : {
@@ -336,24 +336,24 @@
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
@@ -497,11 +497,11 @@
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
@@ -550,8 +550,8 @@
             "step3" : {
                 "shortname" : "x86-64 lib32 rpm",
                 "description" : "qemux86-64 64bit image and 32 bit multilibs with rpm",
-                "BBTARGETS" : "core-image-sato",
-                "SANITYTARGETS" : "core-image-sato:do_testimage",
+                "BBTARGETS" : "core-image-weston",
+                "SANITYTARGETS" : "core-image-weston:do_testimage",
                 "extravars" : [
                     "TEST_SUITES_append = ' multilib'",
                     "require conf/multilib.conf",
@@ -565,8 +565,8 @@
                 "shortname" : "x86-64 lib32 ipk",
                 "description" : "qemux86-64 64bit image and 32 bit multilibs with ipk",
                 "PACKAGE_CLASSES" : "package_ipk",
-                "BBTARGETS" : "core-image-sato",
-                "SANITYTARGETS" : "core-image-sato:do_testimage",
+                "BBTARGETS" : "core-image-weston",
+                "SANITYTARGETS" : "core-image-weston:do_testimage",
                 "extravars" : [
                     "TEST_SUITES_append = ' multilib'",
                     "require conf/multilib.conf",
@@ -581,7 +581,7 @@
                 "description" : "x86 building 64bit multilib image",
                 "MACHINE" : "qemux86",
                 "SDKMACHINE" : "i686",
-                "BBTARGETS" : "lib64-core-image-sato lib64-core-image-sato-sdk",
+                "BBTARGETS" : "lib64-core-image-weston lib64-core-image-weston-sdk",
                 "extravars" : [
                     "require conf/multilib.conf",
                     "MULTILIBS = 'multilib:lib64'",
@@ -606,26 +606,26 @@
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
-            "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato:do_populate_sdk",
-            "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage core-image-sato:do_testsdk"
+            "BBTARGETS" : "core-image-weston core-image-weston-sdk core-image-minimal core-image-minimal-dev core-image-weston:do_populate_sdk",
+            "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-weston:do_testimage core-image-weston-sdk:do_testimage core-image-weston:do_testsdk"
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
@@ -642,41 +642,41 @@
             "step1" : {
                 "MACHINE" : "qemux86",
                 "shortname" : "qemux86 wic",
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
                 "shortname" : "genericx86 wic",
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
                 "shortname" : "qemux86-64 wic",
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
                 "shortname" : "genericx86-64 wic",
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
@@ -754,8 +754,8 @@
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
@@ -764,8 +764,8 @@
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
@@ -916,18 +916,18 @@
             "step4" : {
                 "shortname" : "Prep locked-sigs test",
                 "SDKMACHINE" : "x86_64",
-                "BBTARGETS" : "core-image-sato core-image-sato:do_populate_sdk_ext"
+                "BBTARGETS" : "core-image-weston core-image-weston:do_populate_sdk_ext"
             },
             "step5" : {
                 "shortname" : "Prep #2 locked-sigs test",
                 "SDKMACHINE" : "x86_64",
-                "BBTARGETS" : "core-image-sato -S none",
+                "BBTARGETS" : "core-image-weston -S none",
                 "EXTRACMDS" : ["${SCRIPTSDIR}/../janitor/clobberdir ${BUILDDIR}/../build/tmp"]
             },
             "step6" : {
                 "shortname" : "Test locked-sigs image",
                 "SDKMACHINE" : "x86_64",
-                "BBTARGETS" : "core-image-sato",
+                "BBTARGETS" : "core-image-weston",
                 "extravars" : [
                     "TMPDIR = '${TOPDIR}/newtmp'",
                     "require ../locked-sigs.inc"
@@ -936,7 +936,7 @@
             "step7" : {
                 "shortname" : "Test locked-sigs eSDK",
                 "SDKMACHINE" : "x86_64",
-                "BBTARGETS" : "core-image-sato:do_populate_sdk_ext",
+                "BBTARGETS" : "core-image-weston:do_populate_sdk_ext",
                 "extravars" : [
                     "TMPDIR = '${TOPDIR}/sdktmp'"
                 ]
@@ -946,16 +946,16 @@
             "MACHINE" : "qemux86-64",
             "step1" : {
                 "shortname" : "Test logrotate",
-                "BBTARGETS" : "core-image-sato",
-                "SANITYTARGETS" : "core-image-sato:do_testimage",
+                "BBTARGETS" : "core-image-weston",
+                "SANITYTARGETS" : "core-image-weston:do_testimage",
                 "extravars" : [
                     "IMAGE_INSTALL_append = ' logrotate'",
                     "TEST_SUITES_append = ' logrotate'"
                 ]
             },
             "step2" : {
-                "BBTARGETS" : "core-image-sato",
-                "SANITYTARGETS" : "core-image-sato:do_testimage",
+                "BBTARGETS" : "core-image-weston",
+                "SANITYTARGETS" : "core-image-weston:do_testimage",
                 "extravars" : [
                     "DISTRO_FEATURES_append = ' pam'",
                     "TEST_SUITES_append = ' pam'"
@@ -963,8 +963,8 @@
             },
             "step3" : {
                 "shortname" : "Test skeletoninit",
-                "BBTARGETS" : "core-image-sato",
-                "SANITYTARGETS" : "core-image-sato:do_testimage",
+                "BBTARGETS" : "core-image-weston",
+                "SANITYTARGETS" : "core-image-weston:do_testimage",
                 "extravars" : [
                     "IMAGE_INSTALL_append = ' service hello-mod'",
                     "TEST_SUITES_append = ' skeletoninit'"
@@ -973,8 +973,8 @@
             },
             "step4" : {
                 "shortname" : "Systemd with sysvinit compat",
-                "BBTARGETS" : "core-image-sato",
-                "SANITYTARGETS" : "core-image-sato:do_testimage",
+                "BBTARGETS" : "core-image-weston",
+                "SANITYTARGETS" : "core-image-weston:do_testimage",
                 "extravars" : [
                     "DISTRO_FEATURES_append = ' systemd'",
                     "VIRTUAL-RUNTIME_init_manager = 'systemd'",
@@ -983,8 +983,8 @@
             },
             "step5" : {
                 "shortname" : "Sysvinit with systemd",
-                "BBTARGETS" : "core-image-sato",
-                "SANITYTARGETS" : "core-image-sato:do_testimage",
+                "BBTARGETS" : "core-image-weston",
+                "SANITYTARGETS" : "core-image-weston:do_testimage",
                 "extravars" : [
                     "DISTRO_FEATURES_append = ' systemd'",
                     "VIRTUAL-RUNTIME_init_manager = 'sysvinit'"
@@ -992,8 +992,8 @@
             },
             "step6" : {
                 "shortname" : "Systemd",
-                "BBTARGETS" : "core-image-sato",
-                "SANITYTARGETS" : "core-image-sato:do_testimage",
+                "BBTARGETS" : "core-image-weston",
+                "SANITYTARGETS" : "core-image-weston:do_testimage",
                 "extravars" : [
                     "TEST_SUITES_append = ' systemd'",
                     "DISTRO_FEATURES_append = ' systemd'",
@@ -1003,8 +1003,8 @@
             },
             "step7" : {
                 "shortname" : "Mesa gallium-llvm",
-                "BBTARGETS" : "core-image-sato",
-                "SANITYTARGETS" : "core-image-sato:do_testimage",
+                "BBTARGETS" : "core-image-weston",
+                "SANITYTARGETS" : "core-image-weston:do_testimage",
                 "extravars" : [
                     "PACKAGECONFIG_append_x86-64_pn-mesa = ' gallium-llvm gallium r600'"
                 ]
-- 
2.30.2

