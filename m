Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59A6CEB64D7
	for <webhook@archiver.kernel.org>; Fri, 30 Jun 2023 17:30:39 +0000 (UTC)
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
 by mx.groups.io with SMTP id smtpd.web11.20016.1688146232943368595
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Jun 2023 10:30:33 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@sakoman-com.20221208.gappssmtp.com header.s=20221208 header.b=kaJyXMJy;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.178, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-666e6ecb52dso1336213b3a.2
        for <yocto@lists.yoctoproject.org>; Fri, 30 Jun 2023 10:30:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20221208.gappssmtp.com; s=20221208; t=1688146232; x=1690738232;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qEnE8hdr+Ck+ZgubqKdoyCqqB8RiA09jjAsGodACyGg=;
        b=kaJyXMJyletssf3Q0rjX0BBQhW1TNxkyxiOiC9Lwru3/y8/I8H7Ic4RoN08izd4tn4
         JWWFxgGjULNel94yzBTc3w0sv1C+jBLt/bC27vZJdiY9245VCnlM7w1looWaeciR5uwz
         44A5r70kAihZcuTHgFmtH1iOXSHwCXwEzF/fsU4loPSLoCR+kZrT8wMEVJZt8UIuOcUO
         /Sr//JRyRzLfKSuIU3em9yCc00NQp/0030COUiuvLG9zVHonU1DvvFFJXU7rcGu2WWkb
         Ku5RfPJ97CVE2izuy0/GKXqtcXwQL6c65b0tLSes+eVXetyt1qfh2kYq+/Ra7gYM+6Z+
         WtsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688146232; x=1690738232;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qEnE8hdr+Ck+ZgubqKdoyCqqB8RiA09jjAsGodACyGg=;
        b=cxQt69UeCrVY2wrYDbldgtT6Tr1YQ4IUVGQZ6WYF2j10VudGp9ekLhw+gEPMyMWwA9
         huKQrcWmoowrrx1pzFsjOqrMEpjUFy6Ppy/NXrQ/rDDkGHh0v9VspnXVigYWwQr6Mr4S
         ZMKzT5MINYjeYw986DswM46Ah/23E/MtTEL6yPu4VWeZnhAYo7JToEMU3X0sprbRd8DG
         EjfFYv7dZlErk585xL3CAA9I/SeM1RKPAjShop+Pg3nDTxcQaMFZ/NuUOsY7uflc+fzw
         l6EwXZWgm4JMo8JWV5iKC/l0NKG9oFSmcJMGERg6PfFS9tKHQ3hYATdnqGpoLjfnaaPN
         F/wQ==
X-Gm-Message-State: ABy/qLaFLmemBe8+KarbYXzvJDo8LWiqDoeX2fZsWOLqa9SGgOanZtFs
	zxjR19NhMLDqMNm6n/1lHfIRRB6QfweQP+Tmy7CC1g==
X-Google-Smtp-Source: APBJJlEwSZOg/9L906GlF3Oe9dO3RSDUylwmtX4RvFPui6W9SZ13VG/q9jDw3gDEhjCxnaAneQXQCg==
X-Received: by 2002:a05:6a00:b81:b0:662:f0d0:a77d with SMTP id g1-20020a056a000b8100b00662f0d0a77dmr3791171pfj.30.1688146231622;
        Fri, 30 Jun 2023 10:30:31 -0700 (PDT)
Received: from hexa.router0800d9.com (dhcp-72-234-106-30.hawaiiantel.net. [72.234.106.30])
        by smtp.gmail.com with ESMTPSA id k125-20020a632483000000b0055b149a6db5sm5521233pgk.43.2023.06.30.10.30.30
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jun 2023 10:30:31 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][mickledore] config.json: remove meta-agl-core tests
Date: Fri, 30 Jun 2023 07:30:27 -1000
Message-Id: <72b24952910ef588228a8edeb0d0bffac0480bca.1688146154.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1688146154.git.steve@sakoman.com>
References: <cover.1688146154.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 30 Jun 2023 17:30:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60488

There is currently not a branch which is compatible with mickledore

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 39 ++++++---------------------------------
 1 file changed, 6 insertions(+), 33 deletions(-)

diff --git a/config.json b/config.json
index 087abf0..195b980 100644
--- a/config.json
+++ b/config.json
@@ -409,23 +409,6 @@
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
@@ -923,33 +906,29 @@
             }
         },
         "check-layer-nightly" : {
-            "NEEDREPOS" : ["poky", "meta-agl", "meta-arm", "meta-aws", "meta-intel", "meta-ti", "meta-openembedded", "meta-virtualization"],
+            "NEEDREPOS" : ["poky", "meta-arm", "meta-aws", "meta-intel", "meta-ti", "meta-openembedded", "meta-virtualization"],
             "step1" : {
-                "shortname" : "Test meta-agl YP Compatibility",
-                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-agl/meta-agl-core ../meta-agl/meta-netboot ../meta-agl/meta-pipewire --dependency ../meta-openembedded/meta-oe ../meta-openembedded/meta-networking ../meta-openembedded/meta-python --no-auto-dependency"]
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
             }
@@ -1272,12 +1251,6 @@
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


