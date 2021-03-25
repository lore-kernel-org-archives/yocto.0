Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
 by mx.groups.io with SMTP id smtpd.web10.1480.1616688240619434172
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Mar 2021 09:04:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=y/IvQhMy;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.177, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f177.google.com with SMTP id j25so2535342pfe.2
        for <yocto@lists.yoctoproject.org>; Thu, 25 Mar 2021 09:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=OEWRhtq7kHVRJiTmEIkGZTw22+IzaLyIs5P2heDRzVc=;
        b=y/IvQhMy0rqnIwtPgTXQKiMdTUJOwDpcuzh7DBg8n4fuMjqLbUswszIoXFeDwJw5qi
         2te6hVyp8sltFZugJpdA2oMVKekwvJvgblltRzHb9mGGYtcLhvktRrKf0/dv6wWmsL1M
         YjjI+/aWS7h7UBluuohvGswlBnLIMOnkGLbWS/hCSWYPXVb86OeGpKqioCyvtRtMjYNv
         5R9e/45jnvHW9ZCfzwTsF5vUMXNfVURq9vtmaPKIyqpy7C4RvmQnciS9aC9ZwTYSxfvm
         mOSIl+zgT4DOa0w4eN15u2QN78jlw32HRGpCI50v9twrIhR/LdjI9waTBapQMauLAa46
         qWHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OEWRhtq7kHVRJiTmEIkGZTw22+IzaLyIs5P2heDRzVc=;
        b=KgOBLlV3uDlkuBSnKpNd9fXFAIOQbez26C6VW0AqxnfCiJ39xebANQ/+dj5YY1eNBm
         i06KAbsNg9yiRLfj5SKOTCADwCGEoeOsNuOtxgDY+/z77YX2ljgB7yxnPVRN6SunkLKg
         +MXYOuDFn0kCQl3lneeOQqURGcDfl2BH5ut4lHdV6xiSFdUiRxmY3DMQxces5CbnoNM2
         Xg9dGWXvltJ0i/RIT+XRxSEOpwt7dzDLR2wtLoJX02wBHHR0vRU1sp0qoyU098hwCEaT
         vXh/DzhSI8vGuy3TSKbIfyUYmg9mBjxvlb0PSx+YWfWEvkdLbQEnT1FR5frYeFSXTUCL
         g/BA==
X-Gm-Message-State: AOAM5334u+0W8dezhirkNhBBHJIyzb/5NAIENvLQXR2CPUIYq1/OdbGJ
	XAPTMn7ZU1Jc/8TMJS0E9ersCLE2vJG7MMxO
X-Google-Smtp-Source: ABdhPJxYRRlrHLo/jixgtv4XLIA4NMUB2YAaU6He6FDnQiaC1N7inZAO8WUcBiekbeRyBBoZgV2uUg==
X-Received: by 2002:a63:5416:: with SMTP id i22mr8444178pgb.43.1616688239596;
        Thu, 25 Mar 2021 09:03:59 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain ([72.173.249.164])
        by smtp.gmail.com with ESMTPSA id t18sm6290054pfh.57.2021.03.25.09.03.55
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 09:03:59 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell V2 12/15] config.json: Add further descriptions
Date: Thu, 25 Mar 2021 06:02:18 -1000
Message-Id: <11e82a3d7f4e82fa5e58066bdf4c0e83e5d941d6.1616687842.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1616687842.git.steve@sakoman.com>
References: <cover.1616687842.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 19b7456b92c2eb7b2b27f1e378dbc793d068ee3c)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/config.json b/config.json
index ddf36ae..cedcef7 100644
--- a/config.json
+++ b/config.json
@@ -71,6 +71,7 @@
                 "SANITYTARGETS" : "core-image-sato:do_testsdk core-image-minimal:do_testsdkext core-image-sato:do_testsdkext"
             },
             "step3" : {
+                "shortname" : "Machine oe-selftest",
                 "BUILDHISTORY" : false,
                 "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; DISPLAY=:1 oe-selftest ${HELPERSTMACHTARGS} -j 15"],
                 "ADDLAYER" : ["${BUILDDIR}/../meta-selftest"]
@@ -128,6 +129,7 @@
                 "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage core-image-sato:do_testsdk core-image-sato:do_testsdkext"
             },
             "step2" : {
+                "shortname" : "Machine oe-selftest",
                 "BUILDHISTORY" : false,
                 "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; DISPLAY=:1 oe-selftest -a -t machine -j 15"]
             }
@@ -164,13 +166,16 @@
                 "RPM_GPG_SIGN_CHUNK = '1'"
             ],
             "step1" : {
+                "shortname" : "Bitbake Selftest",
                 "EXTRACMDS" : ["bitbake-selftest"]
             },
             "step2" : {
+                "shortname" : "OE Selftest",
                 "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail/ DISPLAY=:1 oe-selftest --skip-tests distrodata.Distrodata.test_checkpkg buildoptions.SourceMirroring.test_yocto_source_mirror devtool.DevtoolAddTests.test_devtool_add_npm recipetool.RecipetoolTests.test_recipetool_create_npm -T machine -T toolchain-user -T toolchain-system -j 15"],
                 "ADDLAYER" : ["${BUILDDIR}/../meta-selftest"]
             },
             "step3" : {
+                "shortname" : "Python Linter Report",
                 "EXTRACMDS" : ["if [ `which oe-pylint` ]; then mkdir -p ${HELPERRESULTSDIR}/${HELPERTARGET}; oe-pylint > ${HELPERRESULTSDIR}/${HELPERTARGET}/pylint.log || true; fi"]
             }
         },
@@ -178,6 +183,7 @@
             "SDKMACHINE" : "x86_64",
             "MACHINE" : "qemux86",
             "step1" : {
+                "shortname" : "Sources pre-fetching",
                 "BBTARGETS" : "universe -c fetch -k",
                 "ADDLAYER" : ["${BUILDDIR}/../meta-selftest"],
                 "extravars" : [
@@ -189,6 +195,7 @@
             "SDKMACHINE" : "x86_64",
             "MACHINE" : "qemux86",
             "step1" : {
+                "shortname" : "Source Mirror Selftest",
                 "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; DISPLAY=:1 oe-selftest -r buildoptions.SourceMirroring.test_yocto_source_mirror"],
                 "ADDLAYER" : ["${BUILDDIR}/../meta-selftest"]
             }
@@ -571,6 +578,7 @@
             ],
             "step1" : {
                 "MACHINE" : "qemux86",
+                "shortname" : "qemux86 wic",
                 "BBTARGETS" : "wic-tools core-image-sato",
                 "EXTRACMDS" : [
                     "wic create directdisk -e core-image-sato -o ${BUILDDIR}/tmp/deploy/wic_images/qemux86/directdisk/core-image-sato/",
@@ -580,6 +588,7 @@
             },
             "step2" : {
                 "MACHINE" : "genericx86",
+                "shortname" : "genericx86 wic",
                 "BBTARGETS" : "wic-tools core-image-sato",
                 "EXTRACMDS" : [
                     "wic create directdisk -e core-image-sato -o ${BUILDDIR}/tmp/deploy/wic_images/genericx86/directdisk/core-image-sato/",
@@ -589,6 +598,7 @@
             },
             "step3" : {
                 "MACHINE" : "qemux86-64",
+                "shortname" : "qemux86-64 wic",
                 "BBTARGETS" : "wic-tools core-image-sato",
                 "EXTRACMDS" : [
                     "wic create directdisk -e core-image-sato -o ${BUILDDIR}/tmp/deploy/wic_images/qemux86-64/directdisk/core-image-sato/",
@@ -598,6 +608,7 @@
             },
             "step4" : {
                 "MACHINE" : "genericx86-64",
+                "shortname" : "genericx86-64 wic",
                 "BBTARGETS" : "wic-tools core-image-sato",
                 "EXTRACMDS" : [
                     "wic create directdisk -e core-image-sato -o ${BUILDDIR}/tmp/deploy/wic_images/genericx86-64/directdisk/core-image-sato/",
@@ -613,14 +624,17 @@
             ],
             "step1" : {
                 "SDKMACHINE" : "x86_64",
+                "shortname" : "x86_64 tools",
                 "BBTARGETS" : "buildtools-tarball buildtools-extended-tarball uninative-tarball"
             },
             "step2" : {
                 "SDKMACHINE" : "i686",
+                "shortname" : "i686 tools",
                 "BBTARGETS" : "uninative-tarball"
             },
             "step3" : {
                 "SDKMACHINE" : "aarch64",
+                "shortname" : "aarch64 tools",
                 "BBTARGETS" : "buildtools-tarball buildtools-extended-tarball uninative-tarball"
             }
         },
@@ -635,9 +649,11 @@
                 "SOURCE_MIRROR_URL = 'file://${BASE_SHAREDDIR}/current_sources'"
             ],
             "step1" : {
+                "shortname" : "Universe fetch",
                 "BBTARGETS" : "universe -k -c fetch"
             },
             "step2" : {
+                "shortname" : "BA image build",
                 "BBTARGETS" : "build-appliance-image"
             }
         },
@@ -766,6 +782,7 @@
         "qa-extras" : {
             "MACHINE" : "qemux86-64",
             "step1" : {
+                "shortname" : "Readonly rootfs",
                 "BBTARGETS" : "core-image-minimal",
                 "SANITYTARGETS" : "core-image-minimal:do_testimage",
                 "extravars" : [
@@ -773,6 +790,7 @@
                 ]
             },
             "step2" : {
+                "shortname" : "ROOT_HOME testing",
                 "BBTARGETS" : "core-image-minimal",
                 "SANITYTARGETS" : "core-image-minimal:do_testimage",
                 "extravars" : [
@@ -780,6 +798,7 @@
                 ]
             },
             "step3" : {
+                "shortname" : "Full eSDK type",
                 "SDKMACHINE" : "x86_64",
                 "BBTARGETS" : "core-image-minimal:do_populate_sdk_ext",
                 "extravars" : [
@@ -787,15 +806,18 @@
                 ]
             },
             "step4" : {
+                "shortname" : "Prep locked-sigs test",
                 "SDKMACHINE" : "x86_64",
                 "BBTARGETS" : "core-image-sato core-image-sato:do_populate_sdk_ext"
             },
             "step5" : {
+                "shortname" : "Prep #2 locked-sigs test",
                 "SDKMACHINE" : "x86_64",
                 "BBTARGETS" : "core-image-sato -S none",
                 "EXTRACMDS" : ["${SCRIPTSDIR}/../janitor/clobberdir ${BUILDDIR}/../build/tmp"]
             },
             "step6" : {
+                "shortname" : "Test locked-sigs image",
                 "SDKMACHINE" : "x86_64",
                 "BBTARGETS" : "core-image-sato",
                 "extravars" : [
@@ -804,6 +826,7 @@
                 ]
             },
             "step7" : {
+                "shortname" : "Test locked-sigs eSDK",
                 "SDKMACHINE" : "x86_64",
                 "BBTARGETS" : "core-image-sato:do_populate_sdk_ext",
                 "extravars" : [
@@ -814,6 +837,7 @@
         "qa-extras2" : {
             "MACHINE" : "qemux86-64",
             "step1" : {
+                "shortname" : "Test logrotate",
                 "BBTARGETS" : "core-image-sato",
                 "SANITYTARGETS" : "core-image-sato:do_testimage",
                 "extravars" : [
@@ -830,6 +854,7 @@
                 ]
             },
             "step3" : {
+                "shortname" : "Test skeletoninit",
                 "BBTARGETS" : "core-image-sato",
                 "SANITYTARGETS" : "core-image-sato:do_testimage",
                 "extravars" : [
@@ -839,6 +864,7 @@
                 "ADDLAYER" : ["${BUILDDIR}/../meta-skeleton"]
             },
             "step4" : {
+                "shortname" : "Systemd with sysvinit compat",
                 "BBTARGETS" : "core-image-sato",
                 "SANITYTARGETS" : "core-image-sato:do_testimage",
                 "extravars" : [
@@ -848,6 +874,7 @@
                 ]
             },
             "step5" : {
+                "shortname" : "Sysvinit with systemd",
                 "BBTARGETS" : "core-image-sato",
                 "SANITYTARGETS" : "core-image-sato:do_testimage",
                 "extravars" : [
@@ -856,6 +883,7 @@
                 ]
             },
             "step6" : {
+                "shortname" : "Systemd",
                 "BBTARGETS" : "core-image-sato",
                 "SANITYTARGETS" : "core-image-sato:do_testimage",
                 "extravars" : [
@@ -866,6 +894,7 @@
                 ]
             },
             "step7" : {
+                "shortname" : "Mesa gallium-llvm",
                 "BBTARGETS" : "core-image-sato",
                 "SANITYTARGETS" : "core-image-sato:do_testimage",
                 "extravars" : [
-- 
2.25.1

