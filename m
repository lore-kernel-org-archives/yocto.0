Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67E70C433EF
	for <webhook@archiver.kernel.org>; Thu, 14 Jul 2022 19:13:20 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
 [209.85.222.180])
 by mx.groups.io with SMTP id smtpd.web10.214.1657825987686763402
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jul 2022 12:13:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=WuckU6jP;
 spf=pass (domain: gmail.com, ip: 209.85.222.180,
 mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qk1-f180.google.com with SMTP id o21so1943493qkm.10
        for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jul 2022 12:13:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Gl/AurDpzqRPGpYpXWqMQ0+BjB2uMRmhaGrcARmFejU=;
        b=WuckU6jPDedGmp/IOK63Wj4cBu8uULlf6wuLwM0dkRTVCjWPNXZwD/l3/tkZR7z+e2
         JB20ZLMiZKRtuntPVGZBEgjsvGzZHmBI2kS3cLA2m0hgIUE9s4BIpsONVglfw2zoi0Ee
         7cD0Xws2fTpFzxsLRahGXV+ADbrfeiokGWGTUfVrMHxyprAQ/1H2YuYAxKn6TBhbBLR8
         oouTLLoC7jNJ6NOcOWpHagpLgdjyL1RMIjS1xyumVBGWjixcRzpZsGJo5N7QGLc1AEPb
         oMczLFiDQO+qMg1M14bXcGJeG/eALWw8Eyqdyx4MWRmzTPa0Nws7hGYXzoRgCwCXDDKD
         UrHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Gl/AurDpzqRPGpYpXWqMQ0+BjB2uMRmhaGrcARmFejU=;
        b=2MVfoWS3wPYfjMOnaG2M8FFYOTBbTz7UAGnB5kpiescQLooWTD8MGji9N7l87+pKE0
         GaXiyi/mT+UekOiONLY/kJnxYSpFE2c0//6mtJuLt7+kHVCu/n0rgBDlfd9NvoMU/6Hs
         UgtMIqFI9J9lFOe7NjLlWRy11HXT/uTClp14nxmin1Vvg4rSiaMWVillRz1jdwcbz4RX
         py4Qxv/7ypOeDhUIsfzl8zkv0aVPczOteK49u9A9oH1ud83RTgtE9zLQ4K6wytceHytp
         5PvBFmTug5Cn59atoDjE6RtGJmhniS8cRYM78Zlur6rjb45eIgYxhvjq7O/8V4V5We5f
         RcLw==
X-Gm-Message-State: AJIora+u48MHHMON7e/WlwLF3ZO8d3p050swljZcpzaHtdpaI2Kne3I5
	Z628ICK9rQqOTifSNUPnxNgjC3xlzApKEQ==
X-Google-Smtp-Source: 
 AGRyM1tUXVeCLNWei8K5sJVVKh9TY3MWuHPQok4Ynb4e+PMdPg8RNdYnpmThbUp1qhyQ7ct1SO+ZTg==
X-Received: by 2002:a05:620a:4142:b0:6b2:6615:fc84 with SMTP id
 k2-20020a05620a414200b006b26615fc84mr7109447qko.475.1657825997129;
        Thu, 14 Jul 2022 12:13:17 -0700 (PDT)
Received: from build.lan ([173.34.88.218])
        by smtp.gmail.com with ESMTPSA id
 x9-20020a05620a448900b006b59f4f66d6sm1778039qkp.112.2022.07.14.12.13.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jul 2022 12:13:16 -0700 (PDT)
From: bruce.ashfield@gmail.com
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 10/10] yocto-bsps/5.15: fix buildpaths issue with pnmtologo
Date: Thu, 14 Jul 2022 15:12:53 -0400
Message-Id: 
 <5e6c5c4efc533649eeb754502766e42ddf751f13.1657825809.git.bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1657825809.git.bruce.ashfield@gmail.com>
References: <cover.1657825809.git.bruce.ashfield@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Jul 2022 19:13:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57547

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Integrating the following commit(s) to linux-yocto/5.15:

    a40d2daf2795 pnmtologo: use relocatable file name

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 .../recipes-kernel/linux/linux-yocto_5.15.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
index 8d2ec873fa..52aa36b2e6 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
@@ -7,10 +7,10 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "6c085baf183868ed45d8c1d44408d7b24724cde5"
-SRCREV_machine:genericx86-64 ?= "6c085baf183868ed45d8c1d44408d7b24724cde5"
-SRCREV_machine:edgerouter ?= "e90573857c176458965737d77b1747be83fe7edc"
-SRCREV_machine:beaglebone-yocto ?= "d91bb88e58c575e7c3b9fb111b6711a206eba64b"
+SRCREV_machine:genericx86 ?= "a40d2daf2795d89e3ef8af0413b25190558831ec"
+SRCREV_machine:genericx86-64 ?= "a40d2daf2795d89e3ef8af0413b25190558831ec"
+SRCREV_machine:edgerouter ?= "90f1ee6589264545f548d731c2480b08a007230f"
+SRCREV_machine:beaglebone-yocto ?= "9aabbaa89fcb21af7028e814c1f5b61171314d5a"
 
 COMPATIBLE_MACHINE:genericx86 = "genericx86"
 COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
-- 
2.19.1


