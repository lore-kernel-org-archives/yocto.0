Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCC4DEC874C
	for <webhook@archiver.kernel.org>; Thu,  7 Sep 2023 16:48:53 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web10.18206.1694105332219580463
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Sep 2023 09:48:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=RRYw0w5N;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-402c1407139so13426985e9.1
        for <yocto@lists.yoctoproject.org>; Thu, 07 Sep 2023 09:48:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1694105330; x=1694710130; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TTTIBQeIsL5tNdjzfh/XgwBb93sS51ungLip+Uguuqc=;
        b=RRYw0w5NfZbS9rWIW8ZSuhQBTwPgq00bsK4pw7jC7qdZkeFGo84Lj5ytH9RmxSVVIM
         HOccz2ku82Hrvz0RV1+iWrSFjLGPIWsqp7VqsnUTOPMXpwQuFNCssEWD6hD1wigfl+/8
         F4ZkNiDODhlmyQdBEDHyhE44+CHkLHpofFBiw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694105330; x=1694710130;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TTTIBQeIsL5tNdjzfh/XgwBb93sS51ungLip+Uguuqc=;
        b=c7pXqlvYKzY4uXGQpPslxpQvUnEOt5lVJ5zjThl4On+ShRwVZugqkyrVxNShAn8fSB
         +/59ff8DEThu3j1lgGc8GCeZtWL5UpbpNCN/IpM+9ch2l7yCQ9NQXj0EQD98RmarDEen
         tWCxOI/KrMndS0TpU1aPsBvMAsmt0CjhnbsDCbkNATtTVBgR6qZbrJ5O0wMiiOIq+nMO
         faoBAQW6Fl82VTe8c3SnnW02YtAZ01EYPYXlUwvmwqQOpVKZKgwQ8AVfLHIKeRwpM+/s
         1HG8PZRhaox9eC+3Gff/o8qqSU+L3iWiBqm11bX5i3M+pocloVcAcBHL+2GA4I35ykoV
         jl3A==
X-Gm-Message-State: AOJu0YxoK5omY6RbBx1bGoZm21VmtbdAJBrsWwDBMAGrIWSWcQNIyvTk
	lty0VMQ8qk1sdTiKDyAvbmueKk9Ui9sUN4GTmdo=
X-Google-Smtp-Source: AGHT+IF3fvuOJzo0EjiGyqSyz45fW5mp/F7eZe+spm0B1wJytQPvjZcSyFRW3Ax9/f6QmzFLyKavnw==
X-Received: by 2002:a1c:4b0a:0:b0:401:bd2e:49fc with SMTP id y10-20020a1c4b0a000000b00401bd2e49fcmr212502wma.24.1694105330562;
        Thu, 07 Sep 2023 09:48:50 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:5f38:2f43:a165:5f10])
        by smtp.gmail.com with ESMTPSA id l21-20020a1c7915000000b003fef6881350sm3026493wme.25.2023.09.07.09.48.50
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Sep 2023 09:48:50 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH 5/5] config.json: Drop most core-image-minimal-dev image tests and add core-image-full-cmdline
Date: Thu,  7 Sep 2023 17:48:46 +0100
Message-Id: <20230907164846.3186078-5-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230907164846.3186078-1-richard.purdie@linuxfoundation.org>
References: <20230907164846.3186078-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Sep 2023 16:48:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60939

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/config.json b/config.json
index 685e957..59944f2 100644
--- a/config.json
+++ b/config.json
@@ -86,7 +86,7 @@
             ],
             "step1" : {
                 "SDKMACHINE" : "x86_64",
-                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato:do_populate_sdk core-image-minimal:do_populate_sdk_ext core-image-sato:do_populate_sdk_ext",
+                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-full-cmdline core-image-sato:do_populate_sdk core-image-minimal:do_populate_sdk_ext core-image-sato:do_populate_sdk_ext",
                 "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage core-image-sato:do_testsdk core-image-minimal:do_testsdkext core-image-sato:do_testsdkext"
             },
             "step2" : {
@@ -172,7 +172,7 @@
         "arch-hw" : {
             "BUILDINFO" : true,
             "step1" : {
-                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-ptest-all core-image-sato:do_populate_sdk",
+                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-ptest-all core-image-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
             }
         },
@@ -201,13 +201,13 @@
             "MACHINE" : "qemuarm64",
              "step1" : {
                  "SDKMACHINE" : "x86_64",
-                 "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato:do_populate_sdk core-image-minimal:do_populate_sdk_ext core-image-sato:do_populate_sdk_ext",
+                 "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-sato:do_populate_sdk core-image-minimal:do_populate_sdk_ext core-image-sato:do_populate_sdk_ext",
                  "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage core-image-sato:do_testsdk core-image-minimal:do_testsdkext core-image-sato:do_testsdkext"
              },
             "step2" : {
                 "SDKMACHINE" : "x86_64",
                 "MACHINE" : "qemux86-64",
-                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-ptest-all core-image-sato:do_populate_sdk core-image-minimal:do_populate_sdk_ext",
+                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-ptest-all core-image-sato:do_populate_sdk core-image-minimal:do_populate_sdk_ext",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
 
             },
@@ -341,7 +341,7 @@
             "BUILDINFO" : true,
             "step1" : {
                 "SDKMACHINE" : "aarch64",
-                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato:do_populate_sdk core-image-minimal:do_populate_sdk_ext core-image-sato:do_populate_sdk_ext",
+                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-sato:do_populate_sdk core-image-minimal:do_populate_sdk_ext core-image-sato:do_populate_sdk_ext",
                 "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage core-image-sato:do_testsdk  core-image-minimal:do_testsdkext core-image-sato:do_testsdkext"
             }
         },
@@ -385,7 +385,7 @@
             },
             "step2" : {
                 "SDKMACHINE" : "aarch64",
-                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato:do_populate_sdk core-image-minimal:do_populate_sdk_ext core-image-sato:do_populate_sdk_ext",
+                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-sato:do_populate_sdk core-image-minimal:do_populate_sdk_ext core-image-sato:do_populate_sdk_ext",
                 "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage core-image-sato:do_testsdk  core-image-minimal:do_testsdkext core-image-sato:do_testsdkext"
             }
         },
@@ -758,7 +758,7 @@
             }
         },
         "pkgman-non-rpm" : {
-            "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-minimal:do_populate_sdk",
+            "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal:do_populate_sdk",
             "SANITYTARGETS" : "core-image-minimal:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage core-image-minimal:do_testsdk",
             "step1" : {
                 "shortname" : "x86 ipk",
-- 
2.39.2


