Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web10.31374.1620652373929752404
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 May 2021 06:12:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wgj1x27K;
 spf=pass (domain: gmail.com, ip: 209.85.218.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f54.google.com with SMTP id zg3so24448337ejb.8
        for <yocto@lists.yoctoproject.org>; Mon, 10 May 2021 06:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Z9pRDCRNoc3hfnRQxY2Lt63i5rd7RrZ2rZi2VNiwMC0=;
        b=Wgj1x27KtN6itwyH6wPvQXeQ610SfeB7tYoyQhm0/BV9zgRTU5X+skGW+L7EVic2Ko
         NlV8kA/tNEQgUJNgQDmoXgNjie/tMy7dkUd0+IiHDCB5Nfuf2PZD9W1uG3o+ExY3AwiJ
         QwhOythLgkgHsrOHhqq2Dkc0iG9AbdG3zk9SmJYOrWY+fgutLkpqIU3Pk2cCW29OdtZv
         q/rXJ38GtubESlNLxhSfvDvapF1HOmquS4FONqur0UWir127P3kHWFVEIPzBoRjZInS3
         ZB42GsGkleRAWI+RF2m+ju1E8d1EpA0n56rLl0wY8y0AiB2sBseaVo7AvvHGaPVQilqq
         aMgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Z9pRDCRNoc3hfnRQxY2Lt63i5rd7RrZ2rZi2VNiwMC0=;
        b=g0tIv2pVCnHXcLXeWw//yuiSgq30rROhEVKqFkYYLfG85bxOG66recQLjOGoK7qNTY
         r0+pubRCjujw+ory7tbJzkJ0wfNsEemYqYmi2ieRB5GvqOPkgiRWgsbwRf/vYsX46+vC
         xjVsvNkvGVkBRGswBvgahuAujiys6fbxLQXwYbKwz2KlcrA7U633nrcvHe/LD0q+7Led
         uEfei7wtUEleWqmilHR5o3ankQu1p4VEIoEpe/NgosteJ5ZvyF4Mmw1YLONfaRm+RRkp
         fLvzNpc/Nrqc4voBz6q5cD0FLVvyfbBQeiqp6ulFrkirxN1+GFMHHdsx5qs9GeM4JqUm
         QNkA==
X-Gm-Message-State: AOAM530cBV0E5KoqF/1Pt3u/CpGk1CX4QACW8YkJPFN2/dmDMj+Kljd3
	5c9cFpK7RE2S/TSIjsJs5DvttOq6faE=
X-Google-Smtp-Source: ABdhPJxAjW/cwvioQ9ZjGCRdUzpA6E0/nj1+M3/+YmLUY99LOT6HZQTCz47gRm6iWy3f6DezrWX06w==
X-Received: by 2002:a17:906:8693:: with SMTP id g19mr26005954ejx.270.1620652372168;
        Mon, 10 May 2021 06:12:52 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from localhost.localdomain ([2a02:2454:2a0:cb00:eb83:2e01:3dda:5d46])
        by smtp.gmail.com with ESMTPSA id s4sm11473338edq.96.2021.05.10.06.12.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 06:12:51 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper 2/4] config.json: replace core-image-sato with core-image-weston
Date: Mon, 10 May 2021 15:12:38 +0200
Message-Id: <20210510131240.940687-2-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210510131240.940687-1-alex.kanavin@gmail.com>
References: <20210510131240.940687-1-alex.kanavin@gmail.com>
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
index c122412..ef1637e 100644
--- a/config.json
+++ b/config.json
@@ -67,13 +67,13 @@
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
@@ -87,8 +87,8 @@
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
@@ -109,8 +109,8 @@
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
@@ -122,16 +122,16 @@
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
@@ -143,7 +143,7 @@
             "DISTRO" : "poky-altcfg",
             "BUILDINFO" : true,
             "step1" : {
-                "BBTARGETS" : "core-image-full-cmdline core-image-sato core-image-sato-sdk"
+                "BBTARGETS" : "core-image-full-cmdline core-image-weston core-image-weston-sdk"
             }
         },
         "buildperf" : {
@@ -230,17 +230,17 @@
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
@@ -252,8 +252,8 @@
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
@@ -265,7 +265,7 @@
             "TEMPLATE" : "arch-hw",
             "step2" : {
                 "SDKMACHINE" : "x86_64",
-                "BBTARGETS" : "core-image-minimal:do_populate_sdk_ext core-image-sato:do_populate_sdk"
+                "BBTARGETS" : "core-image-minimal:do_populate_sdk_ext core-image-weston:do_populate_sdk"
             }
         },
         "beaglebone-alt" : {
@@ -281,8 +281,8 @@
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
@@ -306,13 +306,13 @@
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
@@ -337,24 +337,24 @@
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
@@ -498,11 +498,11 @@
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
@@ -551,8 +551,8 @@
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
@@ -566,8 +566,8 @@
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
@@ -582,7 +582,7 @@
                 "description" : "x86 building 64bit multilib image",
                 "MACHINE" : "qemux86",
                 "SDKMACHINE" : "i686",
-                "BBTARGETS" : "lib64-core-image-sato lib64-core-image-sato-sdk",
+                "BBTARGETS" : "lib64-core-image-weston lib64-core-image-weston-sdk",
                 "extravars" : [
                     "require conf/multilib.conf",
                     "MULTILIBS = 'multilib:lib64'",
@@ -607,26 +607,26 @@
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
@@ -643,41 +643,41 @@
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
@@ -755,8 +755,8 @@
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
@@ -765,8 +765,8 @@
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
@@ -938,18 +938,18 @@
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
@@ -958,7 +958,7 @@
             "step7" : {
                 "shortname" : "Test locked-sigs eSDK",
                 "SDKMACHINE" : "x86_64",
-                "BBTARGETS" : "core-image-sato:do_populate_sdk_ext",
+                "BBTARGETS" : "core-image-weston:do_populate_sdk_ext",
                 "extravars" : [
                     "TMPDIR = '${TOPDIR}/sdktmp'"
                 ]
@@ -968,16 +968,16 @@
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
@@ -985,8 +985,8 @@
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
@@ -995,8 +995,8 @@
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
@@ -1005,8 +1005,8 @@
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
@@ -1014,8 +1014,8 @@
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
@@ -1025,8 +1025,8 @@
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
2.31.1

