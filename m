Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DE96C433EF
	for <webhook@archiver.kernel.org>; Thu, 14 Jul 2022 19:13:10 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
 [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web10.210.1657825980379137911
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jul 2022 12:13:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=UYHsyow5;
 spf=pass (domain: gmail.com, ip: 209.85.222.176,
 mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qk1-f176.google.com with SMTP id g1so1162315qki.7
        for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jul 2022 12:13:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=oeZU176pg0tLtxl0dn2lTGKPh0P0wsXbPdR+OAUbLjs=;
        b=UYHsyow5BCzkQkoqYD/8kCty8BXFFJJt9BntRywB1I3pvLjHZPiJAWSr/D3CNRz2ZY
         56CJrRM/eHzNJyjoyr1beI33uGhB7xtivLZ6DFzNFurMyzopvrke7NpOheSqQFGZOESp
         Eaddxn0VsSTD9t/Cnfqxq/THAz/HCGEqTgeTgqbW9MtQsaavZ+Kvln2PSzQHRx1e4XWH
         vpCKvM4CG4aDf8Da5KmxDbxOfQMkw3tVz54dLWFZ8TI3rZHxeRJWH8JrCZIWRou1k1+B
         gmYflo+mID2y38XMxt1HOIswXUdC6zZsICSYe4fhIuu6E8eHZ/0sYlVePRamNREpwQKR
         PmlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oeZU176pg0tLtxl0dn2lTGKPh0P0wsXbPdR+OAUbLjs=;
        b=VRzyyLbAyv0aw2Dz5KaEUTvdvT6PcdHXgg/CmPQIK1VYVdLbyULKm6aml9TwX+2Ei7
         pz71IIQMqCAK0ald+B8pjaf0rpMDuv/4YIQKUopkChckdPid9T3te45yBYhuPCkyksqT
         rfy11jUdEd1SA+cuxSHn1cXyaV2lCpp2A/zhKY032XIWlnXsAFJqbMhyJmg+hCkAkY7S
         4GDQMwbhWeMy1/G/k4eN5Q0tFJ4L59qoo2G6mt+1iwx10WPcRVIw7rPqpZj3U4CJvGFZ
         wf2YEv2u8euj7bKcK6GVUzlkvaNAh6lDLUlGEnRsFAcLVjGCvDiFGQBmq4zHvHQYKTLK
         krzg==
X-Gm-Message-State: AJIora8wCG0MnykwNSXkyfSQLZdZYzbRE3oX6UIbrXpAzpzdIWJceIRa
	W8N8BsOmixOOMlib9MXyWSdqKoYxx76qQQ==
X-Google-Smtp-Source: 
 AGRyM1tg+rN+SvyGtxJ+2+c8x2duCXIa44yLUITKyy6/dJ9gP8GbGt/AO+SmmyaqcTABJHif2UxgyQ==
X-Received: by 2002:a37:2794:0:b0:6b5:c5fb:c8cd with SMTP id
 n142-20020a372794000000b006b5c5fbc8cdmr2124646qkn.279.1657825979301;
        Thu, 14 Jul 2022 12:12:59 -0700 (PDT)
Received: from build.lan ([173.34.88.218])
        by smtp.gmail.com with ESMTPSA id
 x9-20020a05620a448900b006b59f4f66d6sm1778039qkp.112.2022.07.14.12.12.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jul 2022 12:12:58 -0700 (PDT)
From: bruce.ashfield@gmail.com
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 02/10] linux-yocto/5.15: fix buildpaths issue with
 gen-mach-types
Date: Thu, 14 Jul 2022 15:12:45 -0400
Message-Id: 
 <d082bc050471f200f1d475c9d9de1ac40d1ef57d.1657825809.git.bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1657825809.git.bruce.ashfield@gmail.com>
References: <cover.1657825809.git.bruce.ashfield@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Jul 2022 19:13:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57539

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Integrating the following commit(s) to linux-yocto/5.15:

    6c085baf1838 tools: use basename to identify file in gen-mach-types

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 .../linux/linux-yocto-rt_5.15.bb              |  2 +-
 .../linux/linux-yocto-tiny_5.15.bb            |  2 +-
 meta/recipes-kernel/linux/linux-yocto_5.15.bb | 20 +++++++++----------
 3 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/meta/recipes-kernel/linux/linux-yocto-rt_5.15.bb b/meta/recipes-kernel/linux/linux-yocto-rt_5.15.bb
index 61b1df04a9..f1f5de3b18 100644
--- a/meta/recipes-kernel/linux/linux-yocto-rt_5.15.bb
+++ b/meta/recipes-kernel/linux/linux-yocto-rt_5.15.bb
@@ -11,7 +11,7 @@ python () {
         raise bb.parse.SkipRecipe("Set PREFERRED_PROVIDER_virtual/kernel to linux-yocto-rt to enable it")
 }
 
-SRCREV_machine ?= "4132e425a2dee778212b42d99a9812fe1c78a03d"
+SRCREV_machine ?= "3a7da2af1ba40b8c2247bac03a1fae488a1abde2"
 SRCREV_meta ?= "f122fe59e74365eba84bae800898ffd7329c628d"
 
 SRC_URI = "git://git.yoctoproject.org/linux-yocto.git;branch=${KBRANCH};name=machine \
diff --git a/meta/recipes-kernel/linux/linux-yocto-tiny_5.15.bb b/meta/recipes-kernel/linux/linux-yocto-tiny_5.15.bb
index 7c81b048dc..e271c6741a 100644
--- a/meta/recipes-kernel/linux/linux-yocto-tiny_5.15.bb
+++ b/meta/recipes-kernel/linux/linux-yocto-tiny_5.15.bb
@@ -14,7 +14,7 @@ DEPENDS += "openssl-native util-linux-native"
 KMETA = "kernel-meta"
 KCONF_BSP_AUDIT_LEVEL = "2"
 
-SRCREV_machine ?= "b2dcc4f70362059ef107000f9be5c76c2886911c"
+SRCREV_machine ?= "122de5742628e6b4303f0bbc653d409ff9f93557"
 SRCREV_meta ?= "f122fe59e74365eba84bae800898ffd7329c628d"
 
 PV = "${LINUX_VERSION}+git${SRCPV}"
diff --git a/meta/recipes-kernel/linux/linux-yocto_5.15.bb b/meta/recipes-kernel/linux/linux-yocto_5.15.bb
index 3e22f8d570..1c090db7b8 100644
--- a/meta/recipes-kernel/linux/linux-yocto_5.15.bb
+++ b/meta/recipes-kernel/linux/linux-yocto_5.15.bb
@@ -13,16 +13,16 @@ KBRANCH:qemux86  ?= "v5.15/standard/base"
 KBRANCH:qemux86-64 ?= "v5.15/standard/base"
 KBRANCH:qemumips64 ?= "v5.15/standard/mti-malta64"
 
-SRCREV_machine:qemuarm ?= "3d2ffe77f277a0a650e7d012c5bfe3765a467e4b"
-SRCREV_machine:qemuarm64 ?= "1da6524b1508ca6e9b6602471b478d310bec1960"
-SRCREV_machine:qemumips ?= "4101fd448319edc00fec2bd822be407d19205bb9"
-SRCREV_machine:qemuppc ?= "651a0112fb207bae1be0d2609e9a910135fb4feb"
-SRCREV_machine:qemuriscv64 ?= "2fca0fd719812ea2ff67630b01355aa80481623e"
-SRCREV_machine:qemuriscv32 ?= "2fca0fd719812ea2ff67630b01355aa80481623e"
-SRCREV_machine:qemux86 ?= "2fca0fd719812ea2ff67630b01355aa80481623e"
-SRCREV_machine:qemux86-64 ?= "2fca0fd719812ea2ff67630b01355aa80481623e"
-SRCREV_machine:qemumips64 ?= "d518b9a80c938ca7ce11e56d2275c33b89dfc9c3"
-SRCREV_machine ?= "2fca0fd719812ea2ff67630b01355aa80481623e"
+SRCREV_machine:qemuarm ?= "41652fad285637467681f47d4e94a886ffb473cd"
+SRCREV_machine:qemuarm64 ?= "b28bd930f849c23a8f1576b22a8e59a0b2ac8cc1"
+SRCREV_machine:qemumips ?= "fb51b7d8d905883f2595f006428c142975231886"
+SRCREV_machine:qemuppc ?= "731587ce51ec087bfbb6255a1e9c763b4f71f7cb"
+SRCREV_machine:qemuriscv64 ?= "6c085baf183868ed45d8c1d44408d7b24724cde5"
+SRCREV_machine:qemuriscv32 ?= "6c085baf183868ed45d8c1d44408d7b24724cde5"
+SRCREV_machine:qemux86 ?= "6c085baf183868ed45d8c1d44408d7b24724cde5"
+SRCREV_machine:qemux86-64 ?= "6c085baf183868ed45d8c1d44408d7b24724cde5"
+SRCREV_machine:qemumips64 ?= "5fcf0d1536623c9ede2ee54d143a650c59ca9d59"
+SRCREV_machine ?= "6c085baf183868ed45d8c1d44408d7b24724cde5"
 SRCREV_meta ?= "f122fe59e74365eba84bae800898ffd7329c628d"
 
 # set your preferred provider of linux-yocto to 'linux-yocto-upstream', and you'll
-- 
2.19.1


