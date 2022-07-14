Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69451C43334
	for <webhook@archiver.kernel.org>; Thu, 14 Jul 2022 19:13:20 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
 [209.85.222.182])
 by mx.groups.io with SMTP id smtpd.web11.236.1657825990368636305
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jul 2022 12:13:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=lGW+4h5B;
 spf=pass (domain: gmail.com, ip: 209.85.222.182,
 mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qk1-f182.google.com with SMTP id b25so1206345qka.11
        for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jul 2022 12:13:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yWzo2tbtEtThRGGd6dZa37RE5Vk1qYfZlWp3iE6Xwyg=;
        b=lGW+4h5Bv5idHUqMtcmOC9kJj8QrMRQe9pnhz7Kzuj7dru6BidlZEGQo/cVU99ujQO
         cgL+y96pK19YTUI1oKucA/Hr1/tfyGVVvx5DsKvl3D4AK6beErI7kk0hK3Xat/9H7JEC
         F1PzGeXU4/KEoWOOHHi6RC8YleHsZjm9IuAgdWhp5FjoNdYZqcIPNQgeO7LWQXIApu3W
         EEIs2NrLs/15/fmGg/xRU0AvN54jriIHymdznfPodWaAeAUPgWAndxkLMTy0HC33qepX
         rtRytbXRVEko9j41oDfkmrjEuu0CLPLX/OYVLExAQu0Of72DiE2jrFbvq2DY7OsNQDa0
         HXjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yWzo2tbtEtThRGGd6dZa37RE5Vk1qYfZlWp3iE6Xwyg=;
        b=uyJeTaQQc6GAX2Jvlgz7Tf164BqIq2wz5KBZ0giIY4mSG01m1JvfIbQVh9E6aDg708
         22oRxJSuZendhwi4gD/7phmBq1NMvYLugNwu60dHwSphhy5qp1pAbZkDGKy1+xoeVpeZ
         pKpew15Cap3GD+LCcoTOox7UEhcn4oqylFc12JML55hphSit0WE3jxXinzh5/tPwm8H4
         6sGRG6eBmIb2GVe04HRBKCjKo8ZE75KE6aPRp4de/A0sOEFcFhVckZGA2UKGp7p5LTiX
         jv1rW012tExMSU+5GkTudGIf1zYDxZk1B+1CknezfdXIfb6iPU90ln/ygop6LkXbqtxC
         L/gA==
X-Gm-Message-State: AJIora+XcXiScK2uG6XMrg0iJwOWmWUe0rVhdm1unxhWOmuiXou8RlJK
	xcJsWuKVMxTaOHVDuFhH0E6zM3G1NY8ojg==
X-Google-Smtp-Source: 
 AGRyM1vMvycJ6/6B3bmiuPFZmgISUnnkDb3x/LtpZuQsh4S6zuiheiT5BvXANggIVgGpq9jDwoRZoA==
X-Received: by 2002:a05:620a:685:b0:6b5:bfdb:50e5 with SMTP id
 f5-20020a05620a068500b006b5bfdb50e5mr4428936qkh.539.1657825989375;
        Thu, 14 Jul 2022 12:13:09 -0700 (PDT)
Received: from build.lan ([173.34.88.218])
        by smtp.gmail.com with ESMTPSA id
 x9-20020a05620a448900b006b59f4f66d6sm1778039qkp.112.2022.07.14.12.13.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jul 2022 12:13:08 -0700 (PDT)
From: bruce.ashfield@gmail.com
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 07/10] linux-yocto/5.15: fix buildpaths issue with pnmtologo
Date: Thu, 14 Jul 2022 15:12:50 -0400
Message-Id: 
 <b4092dd48e0b86e5832db5ab1befd4965ddcff24.1657825809.git.bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1657825809.git.bruce.ashfield@gmail.com>
References: <cover.1657825809.git.bruce.ashfield@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Jul 2022 19:13:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57544

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Integrating the following commit(s) to linux-yocto/5.15:

    a40d2daf2795 pnmtologo: use relocatable file name

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 .../linux/linux-yocto-rt_5.15.bb              |  2 +-
 .../linux/linux-yocto-tiny_5.15.bb            |  2 +-
 meta/recipes-kernel/linux/linux-yocto_5.15.bb | 20 +++++++++----------
 3 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/meta/recipes-kernel/linux/linux-yocto-rt_5.15.bb b/meta/recipes-kernel/linux/linux-yocto-rt_5.15.bb
index 0cac752eba..b6e443d4da 100644
--- a/meta/recipes-kernel/linux/linux-yocto-rt_5.15.bb
+++ b/meta/recipes-kernel/linux/linux-yocto-rt_5.15.bb
@@ -11,7 +11,7 @@ python () {
         raise bb.parse.SkipRecipe("Set PREFERRED_PROVIDER_virtual/kernel to linux-yocto-rt to enable it")
 }
 
-SRCREV_machine ?= "3a0e5a16b0c30008959538258553ca70f33ff2fc"
+SRCREV_machine ?= "0222cbb8d40318cf5377875017e32eebefa59ab8"
 SRCREV_meta ?= "0e3a81a5aefbea03388b1235fbcc3dec278425d0"
 
 SRC_URI = "git://git.yoctoproject.org/linux-yocto.git;branch=${KBRANCH};name=machine \
diff --git a/meta/recipes-kernel/linux/linux-yocto-tiny_5.15.bb b/meta/recipes-kernel/linux/linux-yocto-tiny_5.15.bb
index 3a35c1e44c..aadf014463 100644
--- a/meta/recipes-kernel/linux/linux-yocto-tiny_5.15.bb
+++ b/meta/recipes-kernel/linux/linux-yocto-tiny_5.15.bb
@@ -14,7 +14,7 @@ DEPENDS += "openssl-native util-linux-native"
 KMETA = "kernel-meta"
 KCONF_BSP_AUDIT_LEVEL = "2"
 
-SRCREV_machine ?= "e7447cb9afee4a22b0d3102922c3430eeb44bcc3"
+SRCREV_machine ?= "9b1d0e5eb8b08323577f5e2b21cbb2065aba0aa1"
 SRCREV_meta ?= "0e3a81a5aefbea03388b1235fbcc3dec278425d0"
 
 PV = "${LINUX_VERSION}+git${SRCPV}"
diff --git a/meta/recipes-kernel/linux/linux-yocto_5.15.bb b/meta/recipes-kernel/linux/linux-yocto_5.15.bb
index 0b499b29ff..4c1d163a1e 100644
--- a/meta/recipes-kernel/linux/linux-yocto_5.15.bb
+++ b/meta/recipes-kernel/linux/linux-yocto_5.15.bb
@@ -13,16 +13,16 @@ KBRANCH:qemux86  ?= "v5.15/standard/base"
 KBRANCH:qemux86-64 ?= "v5.15/standard/base"
 KBRANCH:qemumips64 ?= "v5.15/standard/mti-malta64"
 
-SRCREV_machine:qemuarm ?= "e12b73a556e5cbd2c5cb157aba0d84e2c3be1ddf"
-SRCREV_machine:qemuarm64 ?= "b1f3c7dddb39848a5b6bae9f6490927bf090de84"
-SRCREV_machine:qemumips ?= "aa4bd512de00a1054205069ac334d97f82564b1e"
-SRCREV_machine:qemuppc ?= "fcd84bc0d01c29fe94f736812ef58978c57d6836"
-SRCREV_machine:qemuriscv64 ?= "d81d20a55992c55475d7b5570589cd5884059147"
-SRCREV_machine:qemuriscv32 ?= "d81d20a55992c55475d7b5570589cd5884059147"
-SRCREV_machine:qemux86 ?= "d81d20a55992c55475d7b5570589cd5884059147"
-SRCREV_machine:qemux86-64 ?= "d81d20a55992c55475d7b5570589cd5884059147"
-SRCREV_machine:qemumips64 ?= "694134b0fceb27051d3b0cfccc7ba0649319aa7e"
-SRCREV_machine ?= "d81d20a55992c55475d7b5570589cd5884059147"
+SRCREV_machine:qemuarm ?= "c284142affccb534122ad93bdcd4774af161d767"
+SRCREV_machine:qemuarm64 ?= "c4c194a34c568c17389120608b2ee8a7a988150a"
+SRCREV_machine:qemumips ?= "7b446965d9659d312952ef4dedf5b50a493e60c2"
+SRCREV_machine:qemuppc ?= "0c2a4ad856c8f0c1b3ca8a38c17e1194f47e4643"
+SRCREV_machine:qemuriscv64 ?= "a40d2daf2795d89e3ef8af0413b25190558831ec"
+SRCREV_machine:qemuriscv32 ?= "a40d2daf2795d89e3ef8af0413b25190558831ec"
+SRCREV_machine:qemux86 ?= "a40d2daf2795d89e3ef8af0413b25190558831ec"
+SRCREV_machine:qemux86-64 ?= "a40d2daf2795d89e3ef8af0413b25190558831ec"
+SRCREV_machine:qemumips64 ?= "9a8d4e00df67daf224ae62b238c151a3f3f70ae7"
+SRCREV_machine ?= "a40d2daf2795d89e3ef8af0413b25190558831ec"
 SRCREV_meta ?= "0e3a81a5aefbea03388b1235fbcc3dec278425d0"
 
 # set your preferred provider of linux-yocto to 'linux-yocto-upstream', and you'll
-- 
2.19.1


