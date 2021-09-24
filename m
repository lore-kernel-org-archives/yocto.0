Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC525C433F5
	for <webhook@archiver.kernel.org>; Fri, 24 Sep 2021 15:11:53 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com
 [209.85.219.42])
 by mx.groups.io with SMTP id smtpd.web09.413.1632496312617631699
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Sep 2021 08:11:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=YgSamo3T;
 spf=pass (domain: gmail.com, ip: 209.85.219.42,
 mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qv1-f42.google.com with SMTP id a14so6431881qvb.6
        for <yocto@lists.yoctoproject.org>;
 Fri, 24 Sep 2021 08:11:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Sz1TdbIAxu+jW6lUy4V7k3VF2KaKN5B6ZhPKaTi5rcE=;
        b=YgSamo3Ty+tQ/6X5U1lOaBc6+HZNcYe2RIg/MCyig8bXJuNc+2fUfj0Ew2JJlvu0AK
         Mqpha3R5h/498tuvTYegrpOYSOKd8pi1xFSq02CpBUAPpFOeNY+48nviGVrA0/hcSjpV
         EzxNa2sjDMXkl1DXBdKIxhMPt7RB9+tXkkHEdeYCXPXhpxbEgScPKh0G/7ViXevnM+uX
         DefthDIDpo8nz1EHl3LmFTkHd0v96j7uV2ZHdotwYSrnZ0JrhEwLKDCRERhnVJVo+tpu
         2jTGpY4t/r0mCFnuzXfZgy4CSw4aOi1ov515RbBZ1Pob6dTaosDYuhwYwhDB7lMKfPDB
         ddSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Sz1TdbIAxu+jW6lUy4V7k3VF2KaKN5B6ZhPKaTi5rcE=;
        b=H2hQqakx/7VLgRw3Xu0/+8YI97GFh1pcXBt/7k6RyWDlLonMOsq20HC8kfhAd8PNLM
         ih1RxAwrpbJwB3gud3JR/zNZwEIfUePoZUOJ/bukduAQw0suTVpfM81Te1yk0L7kg/6g
         99XVpoMFvJZ88C1Rs5dBacgWuFqbafWkTByWWPT2pBponjD1X7+JgMdrUGEgDHto9+Wo
         FFWxERcE8gffrZ5VgqJNZ0/gh4XEKlhtk18dSDobVGKtwZBcgbKItxBgrPGJ+1filt5C
         CcUfeyJliVSN7BOAdNPY0tuoeqelWPWqVV1a0qXEGnmbNKGl34VaQRxo56QEz2g/4YAQ
         nBdw==
X-Gm-Message-State: AOAM53312zcxpXh+LP7ILiR6K0mRa0l1RsRvTzFL9dkwoMXzmXl/Ts0J
	Ct/qpIXsoweiI5/xrc68AxI=
X-Google-Smtp-Source: 
 ABdhPJzHkT1s9q0fjEfEgQntxx6TGrSOPziFwCKLOanGm4Bl23EeC8rThM3J+XP93mSf58jYgQMgXA==
X-Received: by 2002:a05:6214:1353:: with SMTP id
 b19mr2469591qvw.3.1632496311778;
        Fri, 24 Sep 2021 08:11:51 -0700 (PDT)
Received: from build.lan
 (cpe04d4c4975b80-cmf4c11490699b.cpe.net.cable.rogers.com. [174.112.63.222])
        by smtp.gmail.com with ESMTPSA id
 k203sm6442644qke.124.2021.09.24.08.11.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Sep 2021 08:11:51 -0700 (PDT)
From: bruce.ashfield@gmail.com
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH] yocto-bsp/5.13: drop recipes
Date: Fri, 24 Sep 2021 11:11:50 -0400
Message-Id: <20210924151150.14463-1-bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Sep 2021 15:11:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54846

From: Bruce Ashfield <bruce.ashfield@gmail.com>

5.13 has been removed from core, and we've moved the default
support to 5.14, so we can drop our bbappend.

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 .../linux/linux-yocto_5.13.bbappend           | 23 -------------------
 1 file changed, 23 deletions(-)
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.13.bbappend

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.13.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.13.bbappend
deleted file mode 100644
index daf5fd2cd6..0000000000
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.13.bbappend
+++ /dev/null
@@ -1,23 +0,0 @@
-KBRANCH:genericx86  = "v5.13/standard/base"
-KBRANCH:genericx86-64  = "v5.13/standard/base"
-KBRANCH:edgerouter = "v5.13/standard/edgerouter"
-KBRANCH:beaglebone-yocto = "v5.13/standard/beaglebone"
-
-KMACHINE:genericx86 ?= "common-pc"
-KMACHINE:genericx86-64 ?= "common-pc-64"
-KMACHINE:beaglebone-yocto ?= "beaglebone"
-
-SRCREV_machine:genericx86 ?= "7280c93f5599946db3add473eeb05b34c364938d"
-SRCREV_machine:genericx86-64 ?= "7280c93f5599946db3add473eeb05b34c364938d"
-SRCREV_machine:edgerouter ?= "a832a0390e96c4f014d7b2bf9f161ac9477140f7"
-SRCREV_machine:beaglebone-yocto ?= "dbdc921374c057a75b2df92302124994e241ca51"
-
-COMPATIBLE_MACHINE:genericx86 = "genericx86"
-COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
-COMPATIBLE_MACHINE:edgerouter = "edgerouter"
-COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
-
-LINUX_VERSION:genericx86 = "5.13.15"
-LINUX_VERSION:genericx86-64 = "5.13.15"
-LINUX_VERSION:edgerouter = "5.13.15"
-LINUX_VERSION:beaglebone-yocto = "5.13.15"
-- 
2.19.1


