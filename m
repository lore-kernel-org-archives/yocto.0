Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D97D4C433EF
	for <webhook@archiver.kernel.org>; Wed, 13 Jul 2022 18:34:33 +0000 (UTC)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
 [209.85.160.173])
 by mx.groups.io with SMTP id smtpd.web08.728.1657737264339236234
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Jul 2022 11:34:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=HL0ZWrEF;
 spf=pass (domain: gmail.com, ip: 209.85.160.173,
 mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qt1-f173.google.com with SMTP id r2so12605951qta.0
        for <yocto@lists.yoctoproject.org>;
 Wed, 13 Jul 2022 11:34:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=K1BrHC14yQZN7JLjbhIUWIoQvuCRLAobdvWAzpecT8c=;
        b=HL0ZWrEFfUoieVz5aHcKMdAacbgp69tXZ3YSrkGLKMfYm5R2CG5JCwxfKd2ZJ1Ej6t
         12smcHxevEz7hFHTp5c93cGOqI1Zyh3YRbF6t0O/FANo8QNhORZ/XZQ66EhacU/w7A/u
         TsxQnoZmAyPw+1Fa6VPmfNdf/mG7U0bmrz1sAh/+UnSGOxaUwwQY3HdMY/2apHM1N30j
         Fj7FOUPzYnEJq2Hv4+0BOSCejx7bcraSLaMZM6wZ6wnGHKBm6l+i+Hp4gTfWQubqpgOY
         Yu2IJMgwvMbKwlJSwfgC32F9ElNo610gz5ggGXPO6urdd4CYd2BJwGq40s2Jj30FlrgX
         2U6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=K1BrHC14yQZN7JLjbhIUWIoQvuCRLAobdvWAzpecT8c=;
        b=U44a0BlPwH1ZZC9aAhJDQ2jyPHKuA/GXMSUQHqkxjtM183zl5wucee7jSQoyCFXoy2
         u1+hhDD2wxXdJrGBuFJAAdjYdiNFeny4wz01zuTWc6a0/xHelI/LsayZjfI4/h3IgrlK
         OMVqHMsa9hgq3/Je1gVEBI6bvoUBWLJLmSfDnnzCt5B9vy4HAtiRpHUw5ro3Wef3jNJJ
         qCT4AzSw8kYZELWX9YutGvozcoBa8/H+afNwx0krLBrV7OXStc/El6xiVUTM4/JDgxN5
         36iIo9HqFRNi42a3yHPCmWeLEcFIAUjS1mX6JXajk2H2ochwcuHj8P5xljkqdUQn139j
         q6dQ==
X-Gm-Message-State: AJIora8bhxi1FvT0OPB9kuhu1SbT9u9UeVdSf+PcAaeyWbvTaSlfFcDq
	wsGLdu2H9LpEoTZkF7Je46w=
X-Google-Smtp-Source: 
 AGRyM1tsmrhDOp8L16lgd3X1zVQhV/IKUfrIuaBNqdE9M9v7STcV5Ozipa1VhvLnWJWbpQH7Hk7kzw==
X-Received: by 2002:ac8:57d1:0:b0:31d:3e00:dfdc with SMTP id
 w17-20020ac857d1000000b0031d3e00dfdcmr4514366qta.333.1657737263377;
        Wed, 13 Jul 2022 11:34:23 -0700 (PDT)
Received: from build.lan ([173.34.88.218])
        by smtp.gmail.com with ESMTPSA id
 c7-20020ac87dc7000000b003172da668desm10758673qte.50.2022.07.13.11.34.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jul 2022 11:34:22 -0700 (PDT)
From: bruce.ashfield@gmail.com
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 2/2] yocto-bsps/5.15: fix buildpaths issue with gen-mach-types
Date: Wed, 13 Jul 2022 14:34:19 -0400
Message-Id: <20220713183419.24851-2-bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20220713183419.24851-1-bruce.ashfield@gmail.com>
References: <20220713183419.24851-1-bruce.ashfield@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Jul 2022 18:34:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57528

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


