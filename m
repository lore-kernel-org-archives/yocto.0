Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7AA50CCA47B
	for <webhook@archiver.kernel.org>; Thu, 14 Jul 2022 19:13:10 +0000 (UTC)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
 [209.85.222.178])
 by mx.groups.io with SMTP id smtpd.web08.231.1657825983330646330
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jul 2022 12:13:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=pwsimVTi;
 spf=pass (domain: gmail.com, ip: 209.85.222.178,
 mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qk1-f178.google.com with SMTP id o26so1956653qkl.6
        for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jul 2022 12:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=K1BrHC14yQZN7JLjbhIUWIoQvuCRLAobdvWAzpecT8c=;
        b=pwsimVTiltEFBWZkYWAzkFBP7tKq5tSoLmBqJXVE8ZKE1QWipuLlDuaUwAmd8/fG6z
         cKpX6Fp2Sm8rl0Z7CKRT7kKFh6R25WQMwMtM/wRM8llytKcYUznOOdhPwsCqbU+oQngz
         GCgDXxITGqVI3EpaL01tjliSr0shdryAuPGuGoMCaTa30hfIsTlWzLOKLdXJ3oaor14A
         zIDAV1DXHnTJpmwsrOwU0wvCccodu1gEPbbxwLP3xeVePlAPR6lSyWgUlFsuN89TABWN
         iOMsrbU1AhpqCItZxO0b/lB2/MG7XLOutpkbveF6kVjPiqxO1PAYQPKnAXIFW/lII/Bx
         5R1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=K1BrHC14yQZN7JLjbhIUWIoQvuCRLAobdvWAzpecT8c=;
        b=cFNOLYRjvXrB7xSaLeKFefnIk8G1WYE+0xRCyxuh0EzKgj/oK5aJT0wijEYsMXOocH
         QJ2hlh45sSXQKldb0+lKHPDVHZWV0N0+gFJTNqpeZ2gmVj0HBbesp5wEfU1uV7Zyhi5E
         5+X19nhUob5gAKjli/RkkUw71s1pMLcz4+kK80fCPU/CzpIfD60Ge99q13wKmB0LO7tg
         fv2sABJ5aGFiEyDys2161Kx8FvFGhrmY5KRTGCl3H3YpDSilI7Uc1VRtAl0QBc5CraZ9
         WmTwDG03UDU0oZ3AFlUTe8Uc/QL2E+VKEjOIgdr+DRuq+FNu6LPjrCMBIrZ2Hyuw+jEg
         9pGQ==
X-Gm-Message-State: AJIora9N5CSyqYZWRm77ZCChIWS5HDUSzB+lytkXlURWXuniCxmqxwSL
	RjKgN/TpJMXZVS/wh1sfx8Qpl1wwT5xYZQ==
X-Google-Smtp-Source: 
 AGRyM1s2SPyg5t7Ajo0xiuA3gTgTiIk/NfD8Ye0TmWY7IEQUrg8Rjlo/ZjoBPKG8DFfMkGkqfmmY3w==
X-Received: by 2002:a05:620a:2624:b0:6b5:965d:e043 with SMTP id
 z36-20020a05620a262400b006b5965de043mr7197648qko.236.1657825982363;
        Thu, 14 Jul 2022 12:13:02 -0700 (PDT)
Received: from build.lan ([173.34.88.218])
        by smtp.gmail.com with ESMTPSA id
 x9-20020a05620a448900b006b59f4f66d6sm1778039qkp.112.2022.07.14.12.13.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jul 2022 12:13:01 -0700 (PDT)
From: bruce.ashfield@gmail.com
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 04/10] yocto-bsps/5.15: fix buildpaths issue with
 gen-mach-types
Date: Thu, 14 Jul 2022 15:12:47 -0400
Message-Id: 
 <fbe86fb0d5e8fa180b1addcba9e3e159cf736e80.1657825809.git.bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1657825809.git.bruce.ashfield@gmail.com>
References: <cover.1657825809.git.bruce.ashfield@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Jul 2022 19:13:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57541

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Integrating the following commit(s) to linux-yocto/5.15:

    6c085baf1838 tools: use basename to identify file in gen-mach-types

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 .../recipes-kernel/linux/linux-yocto_5.15.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
index 11e78e2be2..8d2ec873fa 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
@@ -7,10 +7,10 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "2fca0fd719812ea2ff67630b01355aa80481623e"
-SRCREV_machine:genericx86-64 ?= "2fca0fd719812ea2ff67630b01355aa80481623e"
-SRCREV_machine:edgerouter ?= "26de0a7a59c56b63833a55dc33dbf70a7984d140"
-SRCREV_machine:beaglebone-yocto ?= "3ec00e9ee0e41e4c402396425337c42da58c4d6f"
+SRCREV_machine:genericx86 ?= "6c085baf183868ed45d8c1d44408d7b24724cde5"
+SRCREV_machine:genericx86-64 ?= "6c085baf183868ed45d8c1d44408d7b24724cde5"
+SRCREV_machine:edgerouter ?= "e90573857c176458965737d77b1747be83fe7edc"
+SRCREV_machine:beaglebone-yocto ?= "d91bb88e58c575e7c3b9fb111b6711a206eba64b"
 
 COMPATIBLE_MACHINE:genericx86 = "genericx86"
 COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
-- 
2.19.1


