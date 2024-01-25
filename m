Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 373D2C47258
	for <webhook@archiver.kernel.org>; Thu, 25 Jan 2024 16:41:06 +0000 (UTC)
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web10.23038.1706200856146342216
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Jan 2024 08:40:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=QwuWgpNk;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.170, mailfrom: steve@sakoman.com)
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-1d89518d3b1so2937555ad.0
        for <yocto@lists.yoctoproject.org>; Thu, 25 Jan 2024 08:40:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1706200855; x=1706805655; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CLyfJdbfBOZUABUy86ABftJtfsR60s/9a2tM1D5B1hk=;
        b=QwuWgpNkqum3irqhGl1LPw4YRICx4jxounPMSYtFJaEac9mo1EViRYooGjnNcDGiNR
         kPJXL/klpfHbtQJ9MQEHUgBZzBQxi4AR0T1mkGi7UJnQh9ijZueIOoXJLlQX1QKAlaez
         T0eTvUXhdrfGxJgC+i8de4Ohxa5rRZq/+y2MytHmztvMIAzsyeuTfu7ucpBg04+uwbzu
         JQxHH+F0IWEF1WwukbC6bxUfSZW3WfhWCNbF3Oxi0hMl7sIQzpujPORDzKURkARWLxTG
         8K5IF1iBEpmAAK+fH+xUZ0msvzD81s5qNRmKNUmigCld5lwbga5kaj3o9r2FccGCvSWl
         3IyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706200855; x=1706805655;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CLyfJdbfBOZUABUy86ABftJtfsR60s/9a2tM1D5B1hk=;
        b=S+NgmSHMKyP52gRq7jBAKfPU8OKQpyoVc1T+w6BUlUakfwa0Jb68HQolxVQvo19o0I
         MAsvkBrs1emXwqQAKhbVduxpAoCTown/x5zdLQzPDZQ4qX4590JKUtGlGWKQ+JA8oVjn
         6Ww23e8qw2XGfu9vq3OdOqQgurkbPCzi3qODifCBeUpxJIScpMM2Zo/G/epQEJa3B43x
         n82kV6MMuynALLWXW22QqRN/JPv2NAX8F+qxbzNa7iK0OQ7fnhOYCLUWpaYmvWEq1xb+
         tU94tQWOB6stNsxdH+OC2o8Ii5tCQ7orQMva2dvvKoZrRn7xCcM9g3BS9z2GMaTV8BPZ
         eRbA==
X-Gm-Message-State: AOJu0Yxb5C4F6D9z49FHzrCZnh/t5x1ymCja1yHQmdQA4q67rg0l2d2B
	KbY9ZeVL3uirohiz9i+k992IMnMyhV8hotELGq4QNcjeYVrKra2T5c0N7X/y5oR++n9uxh82r9I
	gNLQ=
X-Google-Smtp-Source: AGHT+IGU3pmjfRPrJQIXhS+YnNv5QfkPQBOo6dDbTflISC46PHAc/l9V43pJWvDOqfyrK/VClmNE+A==
X-Received: by 2002:a17:902:7048:b0:1d7:407e:418d with SMTP id h8-20020a170902704800b001d7407e418dmr153571plt.26.1706200854914;
        Thu, 25 Jan 2024 08:40:54 -0800 (PST)
Received: from hexa.router0800d9.com (dhcp-72-234-108-41.hawaiiantel.net. [72.234.108.41])
        by smtp.gmail.com with ESMTPSA id q12-20020a170902c9cc00b001d7267934c7sm9899855pld.298.2024.01.25.08.40.54
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 08:40:54 -0800 (PST)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][nanbield] config.json: remove meta-agl-core tests
Date: Thu, 25 Jan 2024 06:40:44 -1000
Message-Id: <5ce7e0c1cdb515f01b983c2e71f735347e44062e.1706200722.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1706200722.git.steve@sakoman.com>
References: <cover.1706200722.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Jan 2024 16:41:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62294

There is currently not a branch which is compatible with nanbield

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 41 +++++++----------------------------------
 1 file changed, 7 insertions(+), 34 deletions(-)

diff --git a/config.json b/config.json
index 0e00296..1bbb19a 100644
--- a/config.json
+++ b/config.json
@@ -622,23 +622,6 @@
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
             }
         },
-        "meta-agl-core" : {
-            "NEEDREPOS" : ["poky", "meta-agl"],
-            "ADDLAYER" : [
-                "${BUILDDIR}/../meta-agl/meta-agl-core"
-            ],
-            "DISTRO" : "poky-agl",
-            "BUILDINFO" : true,
-            "BUILDHISTORY" : true,
-            "PACKAGE_CLASSES" : "package_rpm",
-            "extravars" : [
-                "AGL_FEATURES = 'aglcore'"
-            ],
-            "step1" : {
-                "MACHINE": "qemux86-64",
-                "BBTARGETS": "agl-image-core-autobuilder"
-            }
-        },
         "meta-aws" : {
             "NEEDREPOS" : ["poky", "meta-openembedded", "meta-aws"],
             "ADDLAYER" : [
@@ -1158,37 +1141,33 @@
             }
         },
         "check-layer-nightly" : {
-            "NEEDREPOS" : ["poky", "meta-agl", "meta-arm", "meta-aws", "meta-intel", "meta-ti", "meta-openembedded", "meta-virtualization", "meta-clang"],
+            "NEEDREPOS" : ["poky", "meta-arm", "meta-aws", "meta-intel", "meta-ti", "meta-openembedded", "meta-virtualization", "meta-clang"],
             "step1" : {
-                "shortname" : "Test meta-agl YP Compatibility",
-                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-agl/meta-agl-core ../meta-agl/meta-netboot --dependency ../meta-openembedded/meta-oe ../meta-openembedded/meta-networking ../meta-openembedded/meta-python --no-auto-dependency"]
-            },
-            "step2" : {
                 "shortname" : "Test meta-arm YP Compatibility",
                 "MACHINE" : "qemuarm64",
                 "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-arm/meta-arm ../meta-arm/meta-arm-toolchain ../meta-arm/meta-arm-bsp ../meta-arm/meta-gem5 ../meta-arm/meta-arm-autonomy --dependency ../meta-openembedded/meta-oe ../meta-openembedded/meta-networking ../meta-openembedded/meta-python ../meta-poky ../meta-openembedded/meta-filesystems ../meta-virtualization --no-auto-dependency"]
             },
-            "step3" : {
+            "step2" : {
                 "shortname" : "Test meta-aws YP Compatibility",
                 "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-aws --dependency ../meta-openembedded/meta-oe ../meta-openembedded/meta-networking ../meta-openembedded/meta-multimedia ../meta-openembedded/meta-python -n --no-auto-dependency"]
             },
-            "step4" : {
+            "step3" : {
                 "shortname" : "Test meta-intel YP Compatibility",
                 "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-intel --no-auto-dependency"]
             },
-            "step5" : {
+            "step4" : {
                 "shortname" : "Test meta-ti YP Compatibility",
                 "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-ti/meta-ti-bsp ../meta-ti/meta-ti-extras --dependency ../meta-arm --no-auto-dependency"]
             },
-            "step6" : {
+            "step5" : {
                 "shortname" : "Test meta-oe YP Compatibility",
                 "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-openembedded --no-auto-dependency"]
             },
-            "step7" : {
+            "step6" : {
                 "shortname" : "Test meta-virtualization YP Compatibility",
                 "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-virtualization --dependency ../meta-openembedded/meta-oe ../meta-openembedded/meta-networking ../meta-openembedded/meta-python ../meta-openembedded/meta-filesystems --no-auto-dependency"]
             },
-            "step8" : {
+            "step7" : {
                 "shortname" : "Test meta-clang YP Compatibility",
                 "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-clang --no-auto-dependency"]
             }
@@ -1573,12 +1552,6 @@
             "revision" : "HEAD",
             "no-layer-add" : true
         },
-        "meta-agl": {
-            "url" : "https://git.automotivelinux.org/AGL/meta-agl",
-            "branch" : "next",
-            "revision" : "HEAD",
-            "no-layer-add" : true
-        },
         "meta-aws": {
             "url" : "https://github.com/aws/meta-aws.git",
             "branch" : "master",
-- 
2.34.1


