Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web11.9007.1627378016653253838
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Jul 2021 02:26:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=iVFgyOXd;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f47.google.com with SMTP id b128so7099705wmb.4
        for <yocto@lists.yoctoproject.org>; Tue, 27 Jul 2021 02:26:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VSlbeqNuAEnUJ8LREGnxbl6AO2i+ZQdFM/qwWWAF0eU=;
        b=iVFgyOXdnoxUWtgBH7ybYBQmD+e7qYCV136ceTV2UXhMRo4xPcjcJhN+FXZBIDTPdi
         QcL7j3O1/PGDyV6REQ4RiEkLuPDP+dBooxTkjPjPK6VM/ANKgeG58ub4gNwnduRQPzo8
         6aM2BXqx6VnU28z+H5Sc+13xbcxi7DI84q9yU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VSlbeqNuAEnUJ8LREGnxbl6AO2i+ZQdFM/qwWWAF0eU=;
        b=GAyVPfdgAIkPc+rGad+VGXfT99qGJc/dRrmXgbKHz8c02gjSEKLLkEsIPYb/V5qtZx
         6bTAwC3SbBXfFmtjU7dL9yiUKCWmQrX5whI0cbZkSVIpOIx96n7Bn/jeaBoAsQ66xT1n
         YPINjb0B+HFcON1FtvohxJlXiWRO/4ezhRB+Z9qBwhSUjsgXTH8046elJV9O1A65DIgR
         3R0/zXXFjNOQ/kIqTy5Cbu+Lzm6qTZHEBlml3TLG0l+jAdtainzm8QurFrLEeesuy2I7
         YG32HArhnzIOWxSY9iFqirunKoViZaO82/7ylpqfzNFfmqQHeZvQB9yVcSGdNwfbddVz
         dFew==
X-Gm-Message-State: AOAM533irTA1Qor2InDe9k5rnjIddWJlr+lq9OUJ7/gS+tnzhnPEIfOv
	vfreIRN61fRL0F65YxL7Run8FTFKowojBg==
X-Google-Smtp-Source: ABdhPJxOKql+h/eVI3Fn0TvnQQQtIuh3NDvteA26JWpstrr1RGfdkcC/abP1F36p7L2bQefPzt+zFw==
X-Received: by 2002:a05:600c:649:: with SMTP id p9mr3087866wmm.151.1627378014678;
        Tue, 27 Jul 2021 02:26:54 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:8722:e8c0:4ebc:1cd4])
        by smtp.gmail.com with ESMTPSA id l15sm2582804wrv.87.2021.07.27.02.26.54
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 02:26:54 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH] config.json: Update to use new overrides syntax
Date: Tue, 27 Jul 2021 10:26:53 +0100
Message-Id: <20210727092653.3237689-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

To help with the conversion, switch the core configurations to use the new
syntax since this allows testing with the new syntax only.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 94 ++++++++++++++++++++++++++---------------------------
 1 file changed, 47 insertions(+), 47 deletions(-)

diff --git a/config.json b/config.json
index 8464da4..6efef34 100644
--- a/config.json
+++ b/config.json
@@ -35,7 +35,7 @@
         "SDKEXTRAS" : ["SSTATE_MIRRORS += '\\", "file://.* http://sstate.yoctoproject.org/dev/@RELEASENUM@PATH;downloadfilename=PATH'"],
         "BUILDINFO" : false,
         "BUILDHISTORY" : false,
-        "BUILDINFOVARS" : ["INHERIT += 'image-buildinfo'", "IMAGE_BUILDINFO_VARS_append = ' IMAGE_BASENAME IMAGE_NAME'"],
+        "BUILDINFOVARS" : ["INHERIT += 'image-buildinfo'", "IMAGE_BUILDINFO_VARS:append = ' IMAGE_BASENAME IMAGE_NAME'"],
         "WRITECONFIG" : true,
         "SENDERRORS" : true,
         "extravars" : [
@@ -48,9 +48,9 @@
             "XZ_MEMLIMIT = '5%'",
             "XZ_THREADS = '8'",
             "BB_TASK_NICE_LEVEL = '5'",
-            "BB_TASK_NICE_LEVEL_task-testimage = '0'",
+            "BB_TASK_NICE_LEVEL:task-testimage = '0'",
             "BB_TASK_IONICE_LEVEL = '2.7'",
-            "BB_TASK_IONICE_LEVEL_task-testimage = '2.1'",
+            "BB_TASK_IONICE_LEVEL:task-testimage = '2.1'",
             "INHERIT += 'testimage'",
             "TEST_QEMUBOOT_TIMEOUT = '1500'",
             "SANITY_TESTED_DISTROS = ''",
@@ -71,7 +71,7 @@
             "BUILDINFO" : true,
             "BUILDHISTORY" : true,
             "extravars" : [
-                "IMAGE_INSTALL_append = ' ssh-pregen-hostkeys'"
+                "IMAGE_INSTALL:append = ' ssh-pregen-hostkeys'"
             ],
             "step1" : {
                 "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato:do_populate_sdk",
@@ -94,7 +94,7 @@
             "BUILDINFO" : true,
             "BUILDHISTORY" : true,
             "extravars" : [
-                "IMAGE_INSTALL_append = ' ssh-pregen-hostkeys'"
+                "IMAGE_INSTALL:append = ' ssh-pregen-hostkeys'"
             ],
             "step1" : {
                 "BBTARGETS" : "core-image-full-cmdline core-image-sato core-image-sato-sdk",
@@ -122,11 +122,11 @@
             "BBTARGETS" : "core-image-sato",
             "SANITYTARGETS" : "core-image-sato:do_testimage",
             "extravars" : [
-                "IMAGE_INSTALL_append = ' ltp'",
+                "IMAGE_INSTALL:append = ' ltp'",
                 "TEST_SUITES = 'ping ssh ltp ltp_compliance'",
                 "IMAGE_OVERHEAD_FACTOR = '1.0'",
                 "IMAGE_ROOTFS_EXTRA_SPACE = '1324288'",
-                "QB_MEM_forcevariable = '-m 1024'"
+                "QB_MEM:forcevariable = '-m 1024'"
             ]
         },
         "arch-hw" : {
@@ -180,7 +180,7 @@
             "PACKAGE_CLASSES" : "package_rpm",
             "extravars" : [
                 "RPM_GPG_SIGN_CHUNK = '1'",
-                "IMAGE_INSTALL_append = ' ssh-pregen-hostkeys'"
+                "IMAGE_INSTALL:append = ' ssh-pregen-hostkeys'"
             ],
             "step1" : {
                 "shortname" : "Bitbake Selftest",
@@ -436,7 +436,7 @@
             "TEMPLATE" : "arch-qemu",
             "step1" : {
                 "extravars" : [
-                     "IMAGE_FSTYPES_append = ' wic wic.bmap'"
+                     "IMAGE_FSTYPES:append = ' wic wic.bmap'"
                 ]
             }
         },
@@ -449,7 +449,7 @@
             "TEMPLATE" : "arch-hw",
             "step1" : {
                 "extravars" : [
-                     "IMAGE_FSTYPES_append = ' wic wic.bmap'"
+                     "IMAGE_FSTYPES:append = ' wic wic.bmap'"
                 ]
             }
         },
@@ -462,7 +462,7 @@
             "TEMPLATE" : "arch-qemu",
             "step1" : {
                 "extravars" : [
-                     "IMAGE_FSTYPES_append = ' wic wic.bmap'"
+                     "IMAGE_FSTYPES:append = ' wic wic.bmap'"
                 ]
             }
         },
@@ -475,7 +475,7 @@
             "TEMPLATE" : "arch-hw",
             "step1" : {
                 "extravars" : [
-                     "IMAGE_FSTYPES_append = ' wic wic.bmap'"
+                     "IMAGE_FSTYPES:append = ' wic wic.bmap'"
                 ]
             }
         },
@@ -496,7 +496,7 @@
             "extravars" : [
                 "require conf/multilib.conf",
                 "MULTILIBS = 'multilib:lib32'",
-                "DEFAULTTUNE_virtclass-multilib-lib32 = 'x86'"
+                "DEFAULTTUNE:virtclass-multilib-lib32 = 'x86'"
             ]
         },
         "qemux86-world-alt" : {
@@ -505,10 +505,10 @@
             "DISTRO" : "poky-altcfg",
             "BBTARGETS" : "world",
             "extravars" : [
-                "DISTRO_FEATURES_append = ' api-documentation'",
+                "DISTRO_FEATURES:append = ' api-documentation'",
                 "require conf/multilib.conf",
                 "MULTILIBS = 'multilib:lib32'",
-                "DEFAULTTUNE_virtclass-multilib-lib32 = 'x86'",
+                "DEFAULTTUNE:virtclass-multilib-lib32 = 'x86'",
                 "QTDEMOS_remove = 'qmmp'"
             ]
         },
@@ -527,7 +527,7 @@
             "step2" : {
                 "SANITYTARGETS" : "core-image-sato:do_testimage",
                 "extravars" : [
-                    "TEST_SUITES_append = ' x32lib'"
+                    "TEST_SUITES:append = ' x32lib'"
                 ]
             }
         },
@@ -555,7 +555,7 @@
                     "TEST_SUITES = 'ping'",
                     "require conf/multilib.conf",
                     "MULTILIBS = 'multilib:lib32'",
-                    "DEFAULTTUNE_virtclass-multilib-lib32 = 'x86'"
+                    "DEFAULTTUNE:virtclass-multilib-lib32 = 'x86'"
                 ]
             },
             "step2" : {
@@ -568,7 +568,7 @@
                     "TEST_SUITES = 'ping'",
                     "require conf/multilib.conf",
                     "MULTILIBS = 'multilib:lib32'",
-                    "DEFAULTTUNE_virtclass-multilib-lib32 = 'x86'"
+                    "DEFAULTTUNE:virtclass-multilib-lib32 = 'x86'"
                 ]
             },
             "step3" : {
@@ -577,12 +577,12 @@
                 "BBTARGETS" : "core-image-sato",
                 "SANITYTARGETS" : "core-image-sato:do_testimage",
                 "extravars" : [
-                    "TEST_SUITES_append = ' multilib'",
+                    "TEST_SUITES:append = ' multilib'",
                     "require conf/multilib.conf",
                     "MULTILIBS = 'multilib:lib32'",
-                    "DEFAULTTUNE_virtclass-multilib-lib32 = 'x86'",
+                    "DEFAULTTUNE:virtclass-multilib-lib32 = 'x86'",
                     "RPM_PREFER_ELF_ARCH = '1'",
-                    "IMAGE_INSTALL_append = ' lib32-connman-gnome pango-module-basic-fc lib32-pango-module-basic-fc'"
+                    "IMAGE_INSTALL:append = ' lib32-connman-gnome pango-module-basic-fc lib32-pango-module-basic-fc'"
                 ]
             },
             "step4" : {
@@ -592,12 +592,12 @@
                 "BBTARGETS" : "core-image-sato",
                 "SANITYTARGETS" : "core-image-sato:do_testimage",
                 "extravars" : [
-                    "TEST_SUITES_append = ' multilib'",
+                    "TEST_SUITES:append = ' multilib'",
                     "require conf/multilib.conf",
                     "MULTILIBS = 'multilib:lib32'",
-                    "DEFAULTTUNE_virtclass-multilib-lib32 = 'x86'",
+                    "DEFAULTTUNE:virtclass-multilib-lib32 = 'x86'",
                     "RPM_PREFER_ELF_ARCH = '1'",
-                    "IMAGE_INSTALL_append = ' lib32-connman-gnome pango-module-basic-fc lib32-pango-module-basic-fc'"
+                    "IMAGE_INSTALL:append = ' lib32-connman-gnome pango-module-basic-fc lib32-pango-module-basic-fc'"
                 ]
             },
             "step5" : {
@@ -609,7 +609,7 @@
                 "extravars" : [
                     "require conf/multilib.conf",
                     "MULTILIBS = 'multilib:lib64'",
-                    "DEFAULTTUNE_virtclass-multilib-lib64 = 'x86-64'"
+                    "DEFAULTTUNE:virtclass-multilib-lib64 = 'x86-64'"
                 ]
             },
             "step6" : {
@@ -622,8 +622,8 @@
                     "require conf/multilib.conf",
                     "MULTILIBS = 'multilib:lib64 multilib:lib32'",
                     "DEFAULTTUNE = 'mips64-n32'",
-                    "DEFAULTTUNE_virtclass-multilib-lib64 = 'mips64'",
-                    "DEFAULTTUNE_virtclass-multilib-lib32 = 'mips32r2'"
+                    "DEFAULTTUNE:virtclass-multilib-lib64 = 'mips64'",
+                    "DEFAULTTUNE:virtclass-multilib-lib32 = 'mips32r2'"
                 ]
             }
         },
@@ -661,7 +661,7 @@
             "BUILDINFO" : true,
             "extravars" : [
                 "IMAGE_FSTYPES += ' hddimg'",
-                "MACHINE_FEATURES_append = ' efi'"
+                "MACHINE_FEATURES:append = ' efi'"
             ],
             "step1" : {
                 "MACHINE" : "qemux86",
@@ -728,7 +728,7 @@
         "build-appliance" : {
             "MACHINE" : "qemux86-64",
             "DLDIR" : "DL_DIR ?= '${TOPDIR}/downloads'",
-            "BUILDAPP_SRCREV" : ["SRCREV_pn-build-appliance-image = '@SRCREV@'", "PV_append_pn-build-appliance-image = '+git${SRCPV}'"],
+            "BUILDAPP_SRCREV" : ["SRCREV_pn-build-appliance-image = '@SRCREV@'", "PV:append:pn-build-appliance-image = '+git${SRCPV}'"],
             "BBTARGETS" : "core-image-minimal core-image-full-cmdline",
             "extravars" : [
                 "SOURCE_MIRROR_FETCH = '1'",
@@ -760,7 +760,7 @@
             "BBTARGETS" : "core-image-full-cmdline core-image-weston world",
             "SANITYTARGETS" : "core-image-full-cmdline:do_testimage core-image-weston:do_testimage",
             "extravars" : [
-                "DISTRO_FEATURES_remove = 'x11'"
+                "DISTRO_FEATURES:remove = 'x11'"
             ],
             "step1" : {
                 "shortname" : "Sysvinit weston"
@@ -768,8 +768,8 @@
             "step2" : {
                 "shortname" : "Systemd weston",
                 "extravars" : [
-                     "TEST_SUITES_append = ' systemd'",
-                     "DISTRO_FEATURES_append = ' pam systemd'",
+                     "TEST_SUITES:append = ' systemd'",
+                     "DISTRO_FEATURES:append = ' pam systemd'",
                      "VIRTUAL-RUNTIME_init_manager = 'systemd'",
                      "DISTRO_FEATURES_BACKFILL_CONSIDERED = 'sysvinit'"
                 ]
@@ -801,7 +801,7 @@
             "extravars" : [
                 "SOURCE_MIRROR_FETCH = '1'",
                 "BB_NUMBER_THREADS = '1'",
-                "do_checkuri_pn-lsof = ''"
+                "do_checkuri:pn-lsof = ''"
             ]
         },
         "oe-selftest" : {
@@ -929,7 +929,7 @@
                 "${BUILDDIR}/../meta-virtualization"
             ],
             "extravars" : [
-                "DISTRO_FEATURES_append = ' virtualization'"
+                "DISTRO_FEATURES:append = ' virtualization'"
             ]
         },
         "qa-extras" : {
@@ -939,7 +939,7 @@
                 "BBTARGETS" : "core-image-minimal",
                 "SANITYTARGETS" : "core-image-minimal:do_testimage",
                 "extravars" : [
-                    "IMAGE_FEATURES_append = ' read-only-rootfs'"
+                    "IMAGE_FEATURES:append = ' read-only-rootfs'"
                 ]
             },
             "step2" : {
@@ -994,16 +994,16 @@
                 "BBTARGETS" : "core-image-sato",
                 "SANITYTARGETS" : "core-image-sato:do_testimage",
                 "extravars" : [
-                    "IMAGE_INSTALL_append = ' logrotate'",
-                    "TEST_SUITES_append = ' logrotate'"
+                    "IMAGE_INSTALL:append = ' logrotate'",
+                    "TEST_SUITES:append = ' logrotate'"
                 ]
             },
             "step2" : {
                 "BBTARGETS" : "core-image-sato",
                 "SANITYTARGETS" : "core-image-sato:do_testimage",
                 "extravars" : [
-                    "DISTRO_FEATURES_append = ' pam'",
-                    "TEST_SUITES_append = ' pam'"
+                    "DISTRO_FEATURES:append = ' pam'",
+                    "TEST_SUITES:append = ' pam'"
                 ]
             },
             "step3" : {
@@ -1011,8 +1011,8 @@
                 "BBTARGETS" : "core-image-sato",
                 "SANITYTARGETS" : "core-image-sato:do_testimage",
                 "extravars" : [
-                    "IMAGE_INSTALL_append = ' service hello-mod'",
-                    "TEST_SUITES_append = ' skeletoninit'"
+                    "IMAGE_INSTALL:append = ' service hello-mod'",
+                    "TEST_SUITES:append = ' skeletoninit'"
                 ],
                 "ADDLAYER" : ["${BUILDDIR}/../meta-skeleton"]
             },
@@ -1021,9 +1021,9 @@
                 "BBTARGETS" : "core-image-sato",
                 "SANITYTARGETS" : "core-image-sato:do_testimage",
                 "extravars" : [
-                    "DISTRO_FEATURES_append = ' systemd'",
+                    "DISTRO_FEATURES:append = ' systemd'",
                     "VIRTUAL-RUNTIME_init_manager = 'systemd'",
-                    "TEST_SUITES_append = ' systemd'"
+                    "TEST_SUITES:append = ' systemd'"
                 ]
             },
             "step5" : {
@@ -1031,7 +1031,7 @@
                 "BBTARGETS" : "core-image-sato",
                 "SANITYTARGETS" : "core-image-sato:do_testimage",
                 "extravars" : [
-                    "DISTRO_FEATURES_append = ' systemd'",
+                    "DISTRO_FEATURES:append = ' systemd'",
                     "VIRTUAL-RUNTIME_init_manager = 'sysvinit'"
                 ]
             },
@@ -1040,8 +1040,8 @@
                 "BBTARGETS" : "core-image-sato",
                 "SANITYTARGETS" : "core-image-sato:do_testimage",
                 "extravars" : [
-                    "TEST_SUITES_append = ' systemd'",
-                    "DISTRO_FEATURES_append = ' systemd'",
+                    "TEST_SUITES:append = ' systemd'",
+                    "DISTRO_FEATURES:append = ' systemd'",
                     "VIRTUAL-RUNTIME_init_manager = 'systemd'",
                     "DISTRO_FEATURES_BACKFILL_CONSIDERED = 'sysvinit'"
                 ]
@@ -1051,7 +1051,7 @@
                 "BBTARGETS" : "core-image-sato",
                 "SANITYTARGETS" : "core-image-sato:do_testimage",
                 "extravars" : [
-                    "PACKAGECONFIG_append_x86-64_pn-mesa = ' gallium-llvm gallium r600'"
+                    "PACKAGECONFIG:append:x86-64:pn-mesa = ' gallium-llvm gallium r600'"
                 ]
 
             }
-- 
2.30.2

