Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB8A7EC8747
	for <webhook@archiver.kernel.org>; Thu,  7 Sep 2023 16:48:53 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web11.18377.1694105331185991112
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Sep 2023 09:48:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=BNOviZ00;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-401b393ddd2so13529105e9.0
        for <yocto@lists.yoctoproject.org>; Thu, 07 Sep 2023 09:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1694105329; x=1694710129; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oKRD1MthngblTv8qnDjDeopn4gXyTLtFcFxKUJa4OW8=;
        b=BNOviZ00aNItgz9iunpi8HFOE8YV9saKWZd5djFEAws9nzHq8NgfSN/aDP5x3DsGII
         MMpcR9WsLzt90wNLqWHl0aHb1gOfbKkStfAnnPMMFrwgGsQUhIhsjs6L8d+GybxTRKZD
         cBvVWp/2bMtfnh8YWsLcrupDU4Qf20t5ztixE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694105329; x=1694710129;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oKRD1MthngblTv8qnDjDeopn4gXyTLtFcFxKUJa4OW8=;
        b=PnqypcHKa6O10C8940yk0Su5Fx9Ln6CFsmj7eoQuqaTX7T6yKDP1Do6VdO669oxb5X
         HJ+B2ikCTO9D8QBNCmID/YV8TTXVpkwD5p1gyW3JyI9CFciQw+wTyKHAN5W1kXxqSnYo
         mmHUKYidvnKUMvHgWWH2dgF1E9KjrASF4LNXqeylOeXYMw2hFyE/9YEqsjfud1dmpkea
         YBWxGh8I0ZQu7688uI6gKBsSrPMVzz03DT4r1QYuAwyla+5bH5LHe94upJyXoMzMEKNW
         htm0C/FrE1+MCziZBDUbQuYfXNFJ884xQVgxBbdOutpryRAhJoBTi9zog6KFxhWu1FoB
         kF0w==
X-Gm-Message-State: AOJu0Yz0fmSurBKRvXtv1F/r7OhaxZN/XHI2kBaXmPnkK4Mp33JGChws
	yD4ubSdDu26l22GaGVnxrcOVakfLw3lh154UiDI=
X-Google-Smtp-Source: AGHT+IH/4LbI/+NHqBvllF+SMy/aVgjbrgmdfTVfvhl/KT2xuvxRMidmJw83Ueg1Gkxs1wEPDgbwhg==
X-Received: by 2002:a05:600c:214e:b0:401:eb0:a980 with SMTP id v14-20020a05600c214e00b004010eb0a980mr233098wml.14.1694105329186;
        Thu, 07 Sep 2023 09:48:49 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:5f38:2f43:a165:5f10])
        by smtp.gmail.com with ESMTPSA id l21-20020a1c7915000000b003fef6881350sm3026493wme.25.2023.09.07.09.48.48
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Sep 2023 09:48:48 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH 3/5] config.json: Drop now unneeded SDKMACHINE settings
Date: Thu,  7 Sep 2023 17:48:44 +0100
Message-Id: <20230907164846.3186078-3-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230907164846.3186078-1-richard.purdie@linuxfoundation.org>
References: <20230907164846.3186078-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Sep 2023 16:48:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60937

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 28 ----------------------------
 1 file changed, 28 deletions(-)

diff --git a/config.json b/config.json
index df83bdb..bc73e93 100644
--- a/config.json
+++ b/config.json
@@ -102,7 +102,6 @@
                 "IMAGE_INSTALL:append = ' ssh-pregen-hostkeys'"
             ],
             "step1" : {
-                "SDKMACHINE" : "x86_64",
                 "BBTARGETS" : "core-image-sato core-image-minimal core-image-sato:do_populate_sdk core-image-minimal:do_populate_sdk_ext core-image-sato:do_populate_sdk_ext",
                 "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato:do_testsdk core-image-minimal:do_testsdkext core-image-sato:do_testsdkext"
             }
@@ -173,7 +172,6 @@
         "arch-hw" : {
             "BUILDINFO" : true,
             "step1" : {
-                "SDKMACHINE" : "x86_64",
                 "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-ptest-all core-image-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
             }
@@ -181,7 +179,6 @@
         "arch-hw-qemu" : {
             "BUILDINFO" : true,
             "step1" : {
-                "SDKMACHINE" : "x86_64",
                 "BBTARGETS" : "core-image-minimal core-image-sato core-image-sato-sdk core-image-sato:do_populate_sdk core-image-sato:do_populate_sdk_ext",
                 "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage core-image-sato:do_testsdk core-image-sato:do_testsdkext"
             },
@@ -239,7 +236,6 @@
         },
         "buildperf" : {
             "MACHINE" : "qemux86",
-            "SDKMACHINE" : "x86_64",
             "SSTATEDIR" : ["SSTATE_DIR ?= '${HELPERBUILDDIR}/sstate'"],
             "SSTATEDIR_RELEASE" : ["SSTATE_DIR ?= '${HELPERBUILDDIR}/sstate'"],
             "PACKAGE_CLASSES" : "package_rpm",
@@ -259,7 +255,6 @@
         },
         "selftest" : {
             "MACHINE" : "qemux86-64",
-            "SDKMACHINE" : "x86_64",
             "PACKAGE_CLASSES" : "package_rpm",
             "extravars" : [
                 "RPM_GPG_SIGN_CHUNK = '1'",
@@ -285,7 +280,6 @@
         },
         "reproducible" : {
             "MACHINE" : "qemux86-64",
-            "SDKMACHINE" : "x86_64",
             "step1" : {
                 "shortname" : "Reproducible Selftest",
                 "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail/ DISPLAY=:1 oe-selftest -r reproducible"],
@@ -294,7 +288,6 @@
             }
         },
         "trigger-build" : {
-            "SDKMACHINE" : "x86_64",
             "MACHINE" : "qemux86-64",
             "step1" : {
                 "shortname" : "Sources pre-fetching",
@@ -306,7 +299,6 @@
             }
         },
         "trigger-build-posttrigger" : {
-            "SDKMACHINE" : "x86_64",
             "MACHINE" : "qemux86-64",
             "step1" : {
                 "shortname" : "Source Mirror Selftest",
@@ -336,7 +328,6 @@
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
             },
             "step3" : {
-                "SDKMACHINE" : "x86_64",
                 "BBTARGETS" : "core-image-sato:do_populate_sdk core-image-minimal:do_populate_sdk_ext",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
             }
@@ -366,7 +357,6 @@
             "MACHINE" : "beaglebone-yocto",
             "TEMPLATE" : "arch-hw",
             "step2" : {
-                "SDKMACHINE" : "x86_64",
                 "BBTARGETS" : "core-image-minimal:do_populate_sdk_ext core-image-sato:do_populate_sdk"
             }
         },
@@ -455,14 +445,12 @@
             "step1": {
                 "shortname": "Build for fvp-base",
                 "MACHINE": "fvp-base",
-                "SDKMACHINE" : "x86_64",
                 "BBTARGETS": "core-image-minimal core-image-sato core-image-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
                 },
             "step2": {
                 "shortname": "Build for generic-arm64 (poky)",
                 "MACHINE": "generic-arm64",
-                "SDKMACHINE" : "x86_64",
                 "BBTARGETS": "core-image-minimal core-image-sato core-image-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
             },
@@ -470,7 +458,6 @@
                 "shortname": "Build for generic-arm64 (poky-altcfg)",
                 "DISTRO": "poky-altcfg",
                 "MACHINE": "generic-arm64",
-                "SDKMACHINE" : "x86_64",
                 "BBTARGETS": "core-image-minimal core-image-sato core-image-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
             }
@@ -644,7 +631,6 @@
         },
         "qemux86-world" : {
             "MACHINE" : "qemux86-64",
-            "SDKMACHINE" : "x86_64",
             "BBTARGETS" : "world",
             "extravars" : [
                 "require conf/multilib.conf",
@@ -654,7 +640,6 @@
         },
         "qemux86-world-alt" : {
             "MACHINE" : "qemux86-64",
-            "SDKMACHINE" : "x86_64",
             "DISTRO" : "poky-altcfg",
             "BBTARGETS" : "world",
             "extravars" : [
@@ -666,7 +651,6 @@
         },
         "qemux86-64-x32" : {
             "MACHINE" : "qemux86-64",
-            "SDKMACHINE" : "x86_64",
             "BUILDINFO" : true,
             "extravars" : [
                 "DEFAULTTUNE = 'x86-64-x32'",
@@ -697,7 +681,6 @@
         },
         "multilib" : {
             "MACHINE" : "qemux86-64",
-            "SDKMACHINE" : "x86_64",
             "step1" : {
                 "shortname" : "x86-64 lib32-img rpm",
                 "description" : "qemux86-64 32bit multilib image with rpm",
@@ -756,7 +739,6 @@
                 "shortname" : "x86-64 lib64-img",
                 "description" : "x86 building 64bit multilib image",
                 "MACHINE" : "qemux86",
-                "SDKMACHINE" : "x86_64",
                 "BBTARGETS" : "lib64-core-image-sato lib64-core-image-sato-sdk",
                 "extravars" : [
                     "require conf/multilib.conf",
@@ -768,7 +750,6 @@
                 "shortname" : "mip64 n32",
                 "description" : "qemumips64 image using n32 as default",
                 "MACHINE" : "qemumips64",
-                "SDKMACHINE" : "x86_64",
                 "BBTARGETS" : "core-image-minimal core-image-minimal:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-minimal:do_testsdk",
                 "extravars" : [
@@ -783,7 +764,6 @@
         "pkgman-non-rpm" : {
             "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-minimal:do_populate_sdk",
             "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage core-image-minimal:do_testsdk",
-            "SDKMACHINE" : "x86_64",
             "step1" : {
                 "shortname" : "x86 ipk",
                 "MACHINE" : "qemux86-64",
@@ -936,7 +916,6 @@
         },
         "musl-qemux86" : {
             "MACHINE" : "qemux86",
-            "SDKMACHINE" : "x86_64",
             "BBTARGETS" : "core-image-minimal core-image-full-cmdline core-image-sato-sdk world",
             "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-full-cmdline:do_testimage core-image-sato-sdk:do_testimage",
             "extravars" : [
@@ -945,7 +924,6 @@
         },
         "musl-qemux86-64" : {
             "MACHINE" : "qemux86-64",
-            "SDKMACHINE" : "x86_64",
             "BUILDINFO" : true,
             "BBTARGETS" : "core-image-minimal core-image-full-cmdline core-image-sato-sdk world",
             "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-full-cmdline:do_testimage core-image-sato-sdk:do_testimage",
@@ -955,7 +933,6 @@
         },
         "checkuri" : {
             "MACHINE" : "qemux86-64",
-            "SDKMACHINE" : "x86_64",
             "BBTARGETS" : "universe:do_checkuri",
             "extravars" : [
                 "SOURCE_MIRROR_FETCH = '1'",
@@ -1147,7 +1124,6 @@
             },
             "step3" : {
                 "shortname" : "Full eSDK type",
-                "SDKMACHINE" : "x86_64",
                 "BBTARGETS" : "core-image-minimal:do_populate_sdk_ext",
                 "extravars" : [
                     "SDK_EXT_TYPE = 'full'"
@@ -1155,18 +1131,15 @@
             },
             "step4" : {
                 "shortname" : "Prep locked-sigs test",
-                "SDKMACHINE" : "x86_64",
                 "BBTARGETS" : "core-image-sato core-image-sato:do_populate_sdk_ext"
             },
             "step5" : {
                 "shortname" : "Prep #2 locked-sigs test",
-                "SDKMACHINE" : "x86_64",
                 "BBTARGETS" : "core-image-sato -S none",
                 "EXTRACMDS" : ["${SCRIPTSDIR}/../janitor/clobberdir ${BUILDDIR}/../build/tmp"]
             },
             "step6" : {
                 "shortname" : "Test locked-sigs image",
-                "SDKMACHINE" : "x86_64",
                 "BBTARGETS" : "core-image-sato",
                 "extravars" : [
                     "TMPDIR = '${TOPDIR}/newtmp'",
@@ -1175,7 +1148,6 @@
             },
             "step7" : {
                 "shortname" : "Test locked-sigs eSDK",
-                "SDKMACHINE" : "x86_64",
                 "BBTARGETS" : "core-image-sato:do_populate_sdk_ext",
                 "extravars" : [
                     "TMPDIR = '${TOPDIR}/sdktmp'"
-- 
2.39.2


