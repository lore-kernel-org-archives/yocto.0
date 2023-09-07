Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C67CEEC873E
	for <webhook@archiver.kernel.org>; Thu,  7 Sep 2023 16:48:53 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web10.18203.1694105329615028271
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Sep 2023 09:48:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=fJ0rt2BE;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-31c479ede21so1161818f8f.2
        for <yocto@lists.yoctoproject.org>; Thu, 07 Sep 2023 09:48:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1694105328; x=1694710128; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=D+4RqAW0i9iKX1+c4Hp8TcFnDT8TlI20SMe2WOklBO4=;
        b=fJ0rt2BE18Mcw6/nlksg7kh/JYqzUtUuyWMY6xtfDDEXOBaDTApJTDSPA/Sr6GFAOT
         XX+5thsAV0hb5lIZPaMCf3dOOHA+csAEzuEvuNEp128ApOZBnc02ayxJeXS/ks8vKOFW
         zeflwk3dMBd8CdL7GJ0rMQkO7N7WsA7Ivrihw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694105328; x=1694710128;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D+4RqAW0i9iKX1+c4Hp8TcFnDT8TlI20SMe2WOklBO4=;
        b=NkIvdd8AXeBlppjwF4AGrG8a8gYfTjvh5C1FPjZ8LLNUG36Kn03eqQW14xp/TRTDEV
         XZ/+LcRSWKgf+MuD/9wFXsGPh5Um/RUK2eMVuSMSYDu8QhboH4UpLNtB/4JNdrC2TXyD
         VT60mzpkpZv672GW8MljTCbDvnWpgk9n9jBP8PBNj3Om9sTbIocqcl4SVG43pjjhUhXE
         B5vi57dyGtx6LAF7IH3q+agkgcaqRhjrulEDncMS5C9mdG6HS1GRvpNHEvdwRHEiZ/VA
         6NuWOYTnGQaYbvouEedD6Gw7fGjxVdq/u9rj3ywWIr5SsBGIYAldW28/hVnZAEg1XWsw
         X7Lg==
X-Gm-Message-State: AOJu0YwyRiR3CeEDBZ95h2l8yuePUQyWd/CJieO7zLms0MpPViX4kybQ
	/EmvEB2hlXr6f96iD2I8QTQplXydNX501dbMmXk=
X-Google-Smtp-Source: AGHT+IEHXE4ue6MKqeZGd4qdCa4IOqJYrWS61+erLD42KdWyIdQY9B25hwD8od/DdSCskHHAkWbA4A==
X-Received: by 2002:a5d:58ca:0:b0:317:d048:8d87 with SMTP id o10-20020a5d58ca000000b00317d0488d87mr4999691wrf.61.1694105327721;
        Thu, 07 Sep 2023 09:48:47 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:5f38:2f43:a165:5f10])
        by smtp.gmail.com with ESMTPSA id l21-20020a1c7915000000b003fef6881350sm3026493wme.25.2023.09.07.09.48.47
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Sep 2023 09:48:47 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH 1/5] config.json: Set SDKMACHINE explicitly
Date: Thu,  7 Sep 2023 17:48:42 +0100
Message-Id: <20230907164846.3186078-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Sep 2023 16:48:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60935

SDKMACHINE defaults to i686 for historical reasons but it should no longer be the main
thing we test. Start to improve things by setting things by everywhere explicitly so
we can then rationalise to what makes sense.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/config.json b/config.json
index ae5e4ea..6d1076b 100644
--- a/config.json
+++ b/config.json
@@ -85,6 +85,7 @@
                 "IMAGE_INSTALL:append = ' ssh-pregen-hostkeys'"
             ],
             "step1" : {
+                "SDKMACHINE" : "i686",
                 "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage core-image-sato:do_testsdk"
             },
@@ -172,6 +173,7 @@
         "arch-hw" : {
             "BUILDINFO" : true,
             "step1" : {
+                "SDKMACHINE" : "i686",
                 "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-ptest-all core-image-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
             }
@@ -201,10 +203,12 @@
             "SSTATEDIR" : ["SSTATE_DIR ?= '${HELPERBUILDDIR}/sstate'"],
             "MACHINE" : "qemuarm64",
              "step1" : {
+                 "SDKMACHINE" : "i686",
                  "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato:do_populate_sdk",
                  "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage core-image-sato:do_testsdk"
              },
             "step2" : {
+                "SDKMACHINE" : "i686",
                 "MACHINE" : "qemux86-64",
                 "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-ptest-all core-image-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
@@ -326,6 +330,7 @@
                 "SANITYTARGETS" : "core-image-sato:do_testimage"
             },
             "step2" : {
+                "SDKMACHINE" : "i686",
                 "BBTARGETS" : "core-image-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
             },
@@ -449,12 +454,14 @@
             "step1": {
                 "shortname": "Build for fvp-base",
                 "MACHINE": "fvp-base",
+                "SDKMACHINE" : "i686",
                 "BBTARGETS": "core-image-minimal core-image-sato core-image-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
                 },
             "step2": {
                 "shortname": "Build for generic-arm64 (poky)",
                 "MACHINE": "generic-arm64",
+                "SDKMACHINE" : "i686",
                 "BBTARGETS": "core-image-minimal core-image-sato core-image-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
             },
@@ -462,6 +469,7 @@
                 "shortname": "Build for generic-arm64 (poky-altcfg)",
                 "DISTRO": "poky-altcfg",
                 "MACHINE": "generic-arm64",
+                "SDKMACHINE" : "i686",
                 "BBTARGETS": "core-image-minimal core-image-sato core-image-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
             }
@@ -759,6 +767,7 @@
                 "shortname" : "mip64 n32",
                 "description" : "qemumips64 image using n32 as default",
                 "MACHINE" : "qemumips64",
+                "SDKMACHINE" : "i686",
                 "BBTARGETS" : "core-image-minimal core-image-minimal:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-minimal:do_testsdk",
                 "extravars" : [
@@ -773,6 +782,7 @@
         "pkgman-non-rpm" : {
             "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-minimal:do_populate_sdk",
             "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage core-image-minimal:do_testsdk",
+            "SDKMACHINE" : "i686",
             "step1" : {
                 "shortname" : "x86 ipk",
                 "MACHINE" : "qemux86-64",
-- 
2.39.2


