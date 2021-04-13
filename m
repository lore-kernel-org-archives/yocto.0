Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web11.9724.1618322400496124968
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Apr 2021 07:00:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=CSSeHXZD;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f51.google.com with SMTP id x7so16558149wrw.10
        for <yocto@lists.yoctoproject.org>; Tue, 13 Apr 2021 07:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=cJ47ztZjeiVphfl5uOTkBB/Ftpgex/WtcUCdriqMHco=;
        b=CSSeHXZD9kWvcnfHaWZqPse6vSZq5dr3NhuwIdigqe23T2Ayzt4t7TTANoAUI4zjti
         Yk3ZWJc53H2CTIZeTDKYHyP5XgVIhWSsbe/S1enrdQ7LQ+Dlyv4q/lRCLaOnwVJzOkIy
         8IOr86rGW85p+WWsNoe5S4SuVkx0g5128iVg4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=cJ47ztZjeiVphfl5uOTkBB/Ftpgex/WtcUCdriqMHco=;
        b=bgZhNpHX5TttLPxpebrI7jt+E3Y7LEXOghAG3vuSFUZPaOslNMQo3f4UlMy5bU4Lz0
         XFQ8zhKLLL4+B+yGqFBy4yugFZM0+ISglUiB+/kHVLiQOQPYEJC3Qy+jNJsBYjEtJZH0
         FrPla5pH4k/Xa0h0NgWfMwa3DrQvam5afzWG3xQS+SIl6C2cRGTH8CLuGuKv8OBRm7zD
         S/n32yHXe82BGyZxwBdRoL3wi5/133YZXUDPYHaJSZfDWvsdNfjr8XJPv99zuQRLZlbz
         QpyNgy0AOasaoMO+op+8lDBdHASu5+YD0Ry0nlQyG5NpKhrhCREqmlAJUgZRDVSUdwrV
         hNuQ==
X-Gm-Message-State: AOAM530WXIwJThAvV3QeTT9G82AdF27GDHZF52dYE1hLsW9prbYjqLz9
	d3sK0Nu4gpaqcf6CBsRafRJXTmhuBjfe2g==
X-Google-Smtp-Source: ABdhPJx5Zj2dUskK4o6p8NYRL4rHOAD4PF1YhrfeptYAG+rxnRfFLecKYBgKHc8RioScoCmI48+5KQ==
X-Received: by 2002:adf:cd10:: with SMTP id w16mr3455085wrm.158.1618322398887;
        Tue, 13 Apr 2021 06:59:58 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:cfa:4562:e70e:c00b])
        by smtp.gmail.com with ESMTPSA id l14sm20673276wrm.77.2021.04.13.06.59.58
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 06:59:58 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2] [PATCH] config: Add meta-aws to base configuration
Date: Tue, 13 Apr 2021 14:59:58 +0100
Message-Id: <20210413135958.1239507-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 bsp-addition-example.patch | 54 --------------------------------------
 config.py                  |  3 +++
 2 files changed, 3 insertions(+), 54 deletions(-)
 delete mode 100644 bsp-addition-example.patch

diff --git a/bsp-addition-example.patch b/bsp-addition-example.patch
deleted file mode 100644
index 7f92789d..00000000
--- a/bsp-addition-example.patch
+++ /dev/null
@@ -1,54 +0,0 @@
-From d5fb6c086c18722532333c8af1e19b42b9ffb138 Mon Sep 17 00:00:00 2001
-From: Aaron Chan <aaron.chun.yew.chan@intel.com>
-Date: Tue, 28 Aug 2018 10:49:13 +0800
-Subject: [PATCH] config.py: Add new job category with suffix bsp
-
-Add new support on Open Source Automated Hardware Tests on BSP test
-cases. New job category is define with builder name standard as
-"nightly-<arch>-bsp" where Yocto Project supports architecutures on
-hardware platforms of x86, x86-64, arm, arm64, mips, mips64, pcc.
-
-Add initial support on x86-64 BSP hardware tests and included meta
-layers needed to run QA test cases on these platforms.
-Community to adopt and add support to autobuilder job config to
-support future BSP testing and validation on their architecture.
-
-Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
----
- config.py | 9 +++++++--
- 1 file changed, 7 insertions(+), 2 deletions(-)
-
-diff --git a/config.py b/config.py
-index 2568768..10f740d 100644
---- a/config.py
-+++ b/config.py
-@@ -11,6 +11,7 @@
-     "nightly-oecore": ["oecore", "bitbake"],
-     "nightly-checkuri": ["poky", "meta-qt4", "meta-qt3"],
-     "nightly-check-layer": ["poky", "meta-mingw", "meta-gplv2"],
-+    "nightly-x86-64-bsp": ["poky", "meta-intel", "meta-openembedded", "meta-security", "meta-ros", "meta-browser"],
-     "default": ["poky"]
- }
- 
-@@ -32,7 +33,11 @@
-     "meta-qt4": ["git://git.yoctoproject.org/meta-qt4", "master"],
-     "meta-qt3": ["git://git.yoctoproject.org/meta-qt3", "master"],
-     "meta-mingw": ["git://git.yoctoproject.org/meta-mingw", "master"],
--    "meta-gplv2": ["git://git.yoctoproject.org/meta-gplv2", "master"]
-+    "meta-gplv2": ["git://git.yoctoproject.org/meta-gplv2", "master"],
-+    "meta-security": ["git://git.yoctoproject.org/meta-security", "master"],
-+    "meta-openembedded": ["git://git.openembedded.org/meta-openembedded", "master"],
-+    "meta-ros": ["git://github.com/bmwcarit/meta-ros", "master"],
-+    "meta-browser": ["git://github.com/OSSystems/meta-browser", "master"]
- }
- 
- trigger_builders_wait = [
-@@ -40,7 +45,7 @@
-     "nightly-mips", "nightly-mips-lsb", "nightly-mips64",
-     "nightly-multilib", "nightly-x32",
-     "nightly-ppc", "nightly-ppc-lsb",
--    "nightly-x86-64", "nightly-x86-64-lsb",
-+    "nightly-x86-64", "nightly-x86-64-lsb", "nightly-x86-64-bsp",
-     "nightly-x86", "nightly-x86-lsb",
-     "nightly-packagemanagers",
-     "nightly-rpm-non-rpm", "nightly-deb-non-deb",
diff --git a/config.py b/config.py
index 903cb4b8..54ec9ce8 100644
--- a/config.py
+++ b/config.py
@@ -19,6 +19,7 @@ buildertorepos = {
     "meta-intel": ["poky", "meta-intel"],
     "meta-arm": ["poky", "meta-arm", "meta-kernel"],
     "meta-agl-core": ["poky", "meta-agl"],
+    "meta-aws": ["poky", "meta-aws", "meta-openembedded"],
     "qemuarm-oecore": ["oecore", "bitbake"],
     "checkuri": ["poky"],
     "check-layer": ["poky", "meta-mingw", "meta-gplv2"],
@@ -40,6 +41,7 @@ repos = {
     "meta-intel": ["git://git.yoctoproject.org/meta-intel", "master"],
     "meta-arm": ["git://git.yoctoproject.org/meta-arm", "master"],
     "meta-agl": ["https://git.automotivelinux.org/AGL/meta-agl", "next"],
+    "meta-aws": ["https://github.com/aws/meta-aws.git", "master"],
     "oecore": ["git://git.openembedded.org/openembedded-core",
                           "master"],
     "bitbake": ["git://git.openembedded.org/bitbake", "master"],
@@ -107,6 +109,7 @@ builders_others = [
     "bringup",
     "qemuarm-armhost",
     "meta-agl-core",
+    "meta-aws",
     "auh"
 ]
 
-- 
2.30.2

