Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ABECCCA47B
	for <webhook@archiver.kernel.org>; Thu, 14 Jul 2022 19:13:20 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
 [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web12.263.1657825995799428150
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jul 2022 12:13:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=FCCQxKHU;
 spf=pass (domain: gmail.com, ip: 209.85.222.176,
 mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qk1-f176.google.com with SMTP id c17so1965011qkl.4
        for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jul 2022 12:13:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=f7pnrjpKz9fXXhTqf96ltjJzPf/asgtr/fbbvsjsX2Q=;
        b=FCCQxKHUP4kEmz0x+pQTcpEXaCb+SlQEyFZX39oGa/GsnQdkp43SvqK8XaV5zuTY1p
         pzeFvS34qs29rLsTgtEnXrRd6zHuOPRVL2UkWIeVnQRM+QwSobvC79eKMefmRM8H5I0+
         1LRskHz80VZkTo8YciePF4isBjjHFXUq+5BHo+OCvV0/POO2J5EbmYBRydrg1A+IZ2ET
         tyug3uhHIThqEWqW1fStr/EZoqBYqW0MurSzbenoUgbF/n9//M18MQ7HxTxUUWiW9BDm
         1ZCyWHM7Cl2OZHfiU+gIiROIY6DBCrSERh7NKRdn5ciFwkytpv6fCIxmAK6yDQ+95k5D
         1LWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=f7pnrjpKz9fXXhTqf96ltjJzPf/asgtr/fbbvsjsX2Q=;
        b=xmNVjHTcjWBEjGDEkjynPMArPDhU+1z/RSVyQbX8xrEm0jaHC3trEjsZzw3ZNzISym
         LFhRcSWvm0rD5BJMrwGaeFWhkJX8eDjO524FdC1/aReIHALFMV3cmjTQGwhccnpudyY4
         nHe+8bcyfRTlNleBSOV3lQoX8KQivgqFzERG7FccwHoR2jNiVLwVNxILCEt4CjmFafXD
         wvIOZPFM2QXmZfedNcl4czbgufa12PS51+w/Z9adbCWXnfAhSuz4vBWKCWhZ5DcIgXGI
         aSB+zXltAz+0JPROhq689THZpN2DWXg0vmEtsbFVudILO5kmhetaoJdoFdU3PCEp5lBC
         iNyg==
X-Gm-Message-State: AJIora/+z70ETJrAKVKmdsitkudAdvWFo/1UGXVTMOD3JM8l8JAzEQFb
	4ZHPekaHafRf893/GUaeiG8=
X-Google-Smtp-Source: 
 AGRyM1s0EBdZdzDVYyT6ZoC5Gftduw/lHAVndUM5KTm/6OTVYRZkl7vNKxLJk6NhZ4oiFtPYJfxX7g==
X-Received: by 2002:a05:620a:4149:b0:6b5:8ce9:fbb8 with SMTP id
 k9-20020a05620a414900b006b58ce9fbb8mr7191472qko.75.1657825994800;
        Thu, 14 Jul 2022 12:13:14 -0700 (PDT)
Received: from build.lan ([173.34.88.218])
        by smtp.gmail.com with ESMTPSA id
 x9-20020a05620a448900b006b59f4f66d6sm1778039qkp.112.2022.07.14.12.13.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jul 2022 12:13:14 -0700 (PDT)
From: bruce.ashfield@gmail.com
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 09/10] yocto-bsps/5.10: fix buildpaths issue with pnmtologo
Date: Thu, 14 Jul 2022 15:12:52 -0400
Message-Id: 
 <7824a11e7e2e1e1f1cc3d26d44a82bc61caccd0d.1657825809.git.bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1657825809.git.bruce.ashfield@gmail.com>
References: <cover.1657825809.git.bruce.ashfield@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Jul 2022 19:13:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57546

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Integrating the following commit(s) to linux-yocto/5.10:

    2883e69e202d pnmtologo: use relocatable file name

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 .../recipes-kernel/linux/linux-yocto_5.10.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
index bfb36e173a..93466b70ed 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
@@ -7,10 +7,10 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "80f5207b5abddf0dae8eeaa5e3bcfe0e23538e62"
-SRCREV_machine:genericx86-64 ?= "80f5207b5abddf0dae8eeaa5e3bcfe0e23538e62"
-SRCREV_machine:edgerouter ?= "43a7a15cfe433584b6065c2492b2a7f9be7954c5"
-SRCREV_machine:beaglebone-yocto ?= "3651cd48f159c3b2a3a60d645baccc9d34baed54"
+SRCREV_machine:genericx86 ?= "2883e69e202dc7948c99a7828e192b2b42c2d90a"
+SRCREV_machine:genericx86-64 ?= "2883e69e202dc7948c99a7828e192b2b42c2d90a"
+SRCREV_machine:edgerouter ?= "7c9332d91089ee63581be6cd3e7197c9d3e9a883"
+SRCREV_machine:beaglebone-yocto ?= "3c44f12b9de336579d00ac0105852f4cbf7e8b7d"
 
 COMPATIBLE_MACHINE:genericx86 = "genericx86"
 COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
-- 
2.19.1


