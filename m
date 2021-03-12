Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
 by mx.groups.io with SMTP id smtpd.web11.6031.1615541584376903521
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Mar 2021 01:33:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bdQMCFEG;
 spf=pass (domain: gmail.com, ip: 209.85.218.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f53.google.com with SMTP id ci14so51932375ejc.7
        for <yocto@lists.yoctoproject.org>; Fri, 12 Mar 2021 01:33:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=32MgyBTHHBo2W+56LTtXLoZqrS7X2c6pEplza5s0iLc=;
        b=bdQMCFEGfQ6oMIQoYNEihTc8IT+XzrDNQfjXjYwXHKVrT6DljvmSwd/0j3tJp3Bwj5
         c3LTsrSQR6BtRc1TnWSxzRC2kSnfALl6fVtxHt53CDF3rYtfHzaC8MVEu9IBgZXBZHow
         dtLqGVrxCd+DV40mIdB4pvv3O6b7L3x+xTIQ+hBM2qyBhhB+c25kciS5h0LzIIc73FjB
         FCW4Gl1i7pmXIfI+70wO9F6dCjSUnPYlrcd0nwPIs6L3K5wrPrBYoJOlKwfxNTS+EO5V
         5WnMLvMA6dGCh3Don1RZh/kPZJTGIcTQ2QHDXJGxRtnlRkb3o8BV88NBTZJ/g3YLYRC1
         g4ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=32MgyBTHHBo2W+56LTtXLoZqrS7X2c6pEplza5s0iLc=;
        b=BOvGXYoAS2nj39hBJyTRN8zjJlNUg0UuZdQGalAXiYTIEkNQStOkhyQTgch/u0+thh
         coJNrYWa6Vi+eVUE7+i/spDll2e0sn3sr9c9CehpEqfw1/nKOBNQRncCHJnLOZuVjtKS
         RwuhKOKxfgTlT7s1LVxfpjDTCzkxkWc1sY8xgJLs9CPM07ifBQIULtYNMeqYym1LuZz0
         TI0dbu1PvpKJGla/SFQllPtnlPqB1Rw54wRHys2EWyDPh6mzhjBhzjltKivKuyazjohw
         wWNPx6kTg/NzvpSvt7c2Nw8Vb0dJ6Vin5Cs71xHT7amoYKM8n5KBOg3I1e5vB0s3h4Wz
         7HxA==
X-Gm-Message-State: AOAM530ajpLUow2niOYLe1gzkv8SSYCPh1m1SaoHcxeY9lV5Sh/sLY9U
	IftD5XBzNVBlEuONi8/oVyzrgT64qfmsew==
X-Google-Smtp-Source: ABdhPJzIeLc9MI4wqT5P/h0ERUKsL+s79nlr4nNLFh+Zy2cgJfjgXswEWxs3A/qvhFkQnDSvccz1lQ==
X-Received: by 2002:a17:906:8147:: with SMTP id z7mr7193453ejw.436.1615541582875;
        Fri, 12 Mar 2021 01:33:02 -0800 (PST)
Return-Path: <alex.kanavin@gmail.com>
Received: from localhost.localdomain ([2a02:2454:2a0:cb00:eb83:2e01:3dda:5d46])
        by smtp.gmail.com with ESMTPSA id h2sm2532708ejk.32.2021.03.12.01.33.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Mar 2021 01:33:02 -0800 (PST)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [RFC PATCH 4/6] config.json: replace core-image-sato with core-image-weston
Date: Fri, 12 Mar 2021 10:32:38 +0100
Message-Id: <20210312093240.319125-4-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210312093240.319125-1-alex.kanavin@gmail.com>
References: <20210312093240.319125-1-alex.kanavin@gmail.com>
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
index b0fc363..cf6165a 100644
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
                 "shortname" : "Machine oe-selftest",
@@ -82,8 +82,8 @@
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
@@ -104,8 +104,8 @@
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
@@ -117,16 +117,16 @@
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
@@ -138,7 +138,7 @@
             "DISTRO" : "poky-altcfg",
             "BUILDINFO" : true,
             "step1" : {
-                "BBTARGETS" : "core-image-full-cmdline core-image-sato core-image-sato-sdk"
+                "BBTARGETS" : "core-image-full-cmdline core-image-weston core-image-weston-sdk"
             }
         },
         "buildperf" : {
@@ -224,17 +224,17 @@
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
@@ -246,8 +246,8 @@
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
@@ -259,7 +259,7 @@
             "TEMPLATE" : "arch-hw",
             "step2" : {
                 "SDKMACHINE" : "x86_64",
-                "BBTARGETS" : "core-image-minimal:do_populate_sdk_ext core-image-sato:do_populate_sdk"
+                "BBTARGETS" : "core-image-minimal:do_populate_sdk_ext core-image-weston:do_populate_sdk"
             }
         },
         "beaglebone-alt" : {
@@ -275,8 +275,8 @@
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
@@ -300,13 +300,13 @@
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
@@ -314,24 +314,24 @@
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
@@ -475,11 +475,11 @@
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
@@ -528,8 +528,8 @@
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
@@ -543,8 +543,8 @@
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
@@ -559,7 +559,7 @@
                 "description" : "x86 building 64bit multilib image",
                 "MACHINE" : "qemux86",
                 "SDKMACHINE" : "i686",
-                "BBTARGETS" : "lib64-core-image-sato lib64-core-image-sato-sdk",
+                "BBTARGETS" : "lib64-core-image-weston lib64-core-image-weston-sdk",
                 "extravars" : [
                     "require conf/multilib.conf",
                     "MULTILIBS = 'multilib:lib64'",
@@ -584,26 +584,26 @@
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
@@ -620,41 +620,41 @@
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
@@ -732,8 +732,8 @@
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
@@ -742,8 +742,8 @@
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
@@ -877,18 +877,18 @@
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
@@ -897,7 +897,7 @@
             "step7" : {
                 "shortname" : "Test locked-sigs eSDK",
                 "SDKMACHINE" : "x86_64",
-                "BBTARGETS" : "core-image-sato:do_populate_sdk_ext",
+                "BBTARGETS" : "core-image-weston:do_populate_sdk_ext",
                 "extravars" : [
                     "TMPDIR = '${TOPDIR}/sdktmp'"
                 ]
@@ -907,16 +907,16 @@
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
@@ -924,8 +924,8 @@
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
@@ -934,8 +934,8 @@
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
@@ -944,8 +944,8 @@
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
@@ -953,8 +953,8 @@
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
@@ -964,8 +964,8 @@
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
2.29.2

