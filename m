Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6107C433EF
	for <webhook@archiver.kernel.org>; Wed,  1 Dec 2021 09:40:10 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web11.89401.1638351609559639235
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Dec 2021 01:40:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=acAEqp7y;
 spf=pass (domain: gmail.com, ip: 209.85.221.54,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-wr1-f54.google.com with SMTP id s13so50825879wrb.3
        for <yocto@lists.yoctoproject.org>;
 Wed, 01 Dec 2021 01:40:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=T/WafGlRP8L61VMek0cVzf+gWKEs2X4DU1z27TqDoRQ=;
        b=acAEqp7y+5VVyvZejlJn/02C2wOatW49P7CXTI/yBLJ9C7c05ZHgAo+5C9KqdzQxiv
         bF+nvoTfOFQT2qdZazTiRoNjFdfUfj8IJHT2rfzUbri97VlFRLl2CYJ6A2p7HsCrEzOD
         rux9hUVYeTNUcH7G+iEeCXbwG4HoQjU0cZm4fAoXJNLfawR7NJ5DZBTZpI1D0nEgZdf1
         48Be6ICN6oRqzccQPn+mAhYHgiq4a6ty8QXIuKgls2W0rwylyZufMfzhPd3AzZY96c0x
         nzBApLUDpS3YtE+amVVwGAApQzvmIq9DJbJCiXNm7SPs0uik1Eg0tNBQq8IA1EZOikbW
         fslg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=T/WafGlRP8L61VMek0cVzf+gWKEs2X4DU1z27TqDoRQ=;
        b=fB7vieKzN5zvtISzAsDUeJ0g21PR+xhNAo8u5QQZ1Govd4G3jnpbQImkukMbOANdQN
         vWJdTZfGwWwJnxaiU+eFk/aiPDDyPr4YLShoPUw6yjgt79VU4Ea+lO4YZ4WJKaNRn2T2
         XHYR8Er1zyFN+i0mGyXglPsif+SYEXjsBB7A42HEZT6iuH+ppVsr3SDnyuBvTItx6mJy
         SZntLFA6xGzLMmnVdFxC1gvMvkm6kTDLxsOudefsXDGSdUwDhdXLTCJGOjs5bNCshdBF
         3uiGX4pf0dwVXdNfuyltn36cSFHUOA9g9IyRoeH7Dely1Evb3hGBwev6/O0h+dS49UVG
         L23w==
X-Gm-Message-State: AOAM533cLTeB7ZgGBdZy/zGU4zZYMPHsY/5uxPNszEG4f6FwrQfrD/d1
	Bm7/j6T2Aa02DGa10aKF4gf/u+M2a4LCNA==
X-Google-Smtp-Source: 
 ABdhPJwIAtHNiWffzIuA1qz5moQSjGvRj1eG2/UurOmPqfi02jvRGvAc255nH0vjsoMdLoOhHWBK/A==
X-Received: by 2002:a05:6000:1889:: with SMTP id
 a9mr5539934wri.68.1638351608050;
        Wed, 01 Dec 2021 01:40:08 -0800 (PST)
Received: from nereus.lab.linutronix.de. (b2b-109-90-143-203.unitymedia.biz.
 [109.90.143.203])
        by smtp.gmail.com with ESMTPSA id
 t11sm19161783wrz.97.2021.12.01.01.40.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Dec 2021 01:40:07 -0800 (PST)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Alexander Kanavin <alex@linutronix.de>
Subject: [meta-mingw] [PATCH] mingw32-common.inc: remove qemu-usermode from
 MACHINE_FEATURES
Date: Wed,  1 Dec 2021 10:40:05 +0100
Message-Id: <20211201094005.2600050-1-alex@linutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Dec 2021 09:40:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55456

This is prompted by upcoming exe_wrapper setting in meson, which
is using qemu, subject to qemu-usermode, and so won't work for mingw
executables.

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 conf/machine-sdk/include/mingw32-common.inc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/conf/machine-sdk/include/mingw32-common.inc b/conf/machine-sdk/include/mingw32-common.inc
index 6c43fc9..1ee6cc4 100644
--- a/conf/machine-sdk/include/mingw32-common.inc
+++ b/conf/machine-sdk/include/mingw32-common.inc
@@ -52,3 +52,5 @@ GCCPIE:mingw32 = ""
 # wine and wineserver are required to test MinGW SDKs
 HOSTTOOLS += "${@'wine wineserver' if (bb.utils.contains_any('IMAGE_CLASSES', 'testsdk', True, False, d) or any(x in (d.getVar("BBINCLUDED") or "") for x in ["testsdk.bbclass"])) else ''}"
 
+# wine may work to run mingw executables, but qemu certainly isn't
+MACHINE_FEATURES_BACKFILL_CONSIDERED:append = " qemu-usermode"
-- 
2.20.1


