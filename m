Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC9EFC433FE
	for <webhook@archiver.kernel.org>; Tue, 19 Oct 2021 20:09:58 +0000 (UTC)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com
 [209.85.214.181])
 by mx.groups.io with SMTP id smtpd.web09.15553.1634674197862101431
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Oct 2021 13:09:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=dELgG8ad;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.181,
 mailfrom: steve@sakoman.com)
Received: by mail-pl1-f181.google.com with SMTP id v20so14480505plo.7
        for <yocto@lists.yoctoproject.org>;
 Tue, 19 Oct 2021 13:09:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=lw9HCP4reABRsddYgJK/vEmAvEgPbnvi3dOouTKZvPM=;
        b=dELgG8adg7OrNQFW4DUaC1rJfrO4VHk/ClXtpyNzZQ7r5LCpa2M4Eyz4wdwTzIpIL0
         KCaThL1mSWj4YaYPgJ4XFNqD4Q3KOm/dE9YpArszoGayiMvP32y+qwX9k+2ggOOFIfSY
         DMtY+iB/YBi+iLPDGL5DVMs+CtlBo9Ptu2d0S2EwrbOLHhTv4LPzhLRMUSY6WO/27JRV
         m0C7980xU15Qy6NcIOZYbB+YuuCKkvomAMcu94csgGyw/0L/WWRut8gLGY2qu+mhDWZH
         2Oi+CX9pVOv5AMh74M51EJHZkF7eefU5OYwMqqSSbYG1PKG3wkBz/ehnE2dZBmoYUE7x
         XYeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lw9HCP4reABRsddYgJK/vEmAvEgPbnvi3dOouTKZvPM=;
        b=Z6CE114+iyrcFMRnqufJ2Nd+TQ5qkrZeRMj/lTIeFk+cga5SOXToH2pnBCdfZGOfeZ
         e6anupMxid/cC7oZDBDXI4+aGelznhsYOK9QLxU/UZINGh9WjrMq/NkQZ3nuZyXyAELN
         B4UXrPREc7i7+TFs5hjrqCIK2b+45DIgv0GhUPFYm88Kef+VSJzf0EgS6FcMgkKC70kv
         bV64i8T307YlI5rNFhRGi0HF7flyxdHzcELNkP12iuKCsMHh2oibutBPLsKXGFxFJWLF
         FqhyPj5WZR0FAzOZ2tug7a9L0QizUqZvEdyPZXDzVdspcAM6dMkCnJ2LR7MJcLMcbctg
         Wqkw==
X-Gm-Message-State: AOAM531uquOhWj2fWYbMA4THSXe0uCMle7b0XhcpD3BshGmuGl1+JbJ5
	4yxVAZYXb6k2wXDkHp31iFCwD+jLjS8nN8WWdZY=
X-Google-Smtp-Source: 
 ABdhPJylJ/x/PQsJDeziNBXYULlA5ZHEnrLhrwP3Dx6PjMSKQQC9RAParEINQKN1ycvZFw3La39u0g==
X-Received: by 2002:a17:90a:a087:: with SMTP id
 r7mr2361714pjp.84.1634674196918;
        Tue, 19 Oct 2021 13:09:56 -0700 (PDT)
Received: from hexa.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com.
 [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id z71sm85819pfc.19.2021.10.19.13.09.55
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Oct 2021 13:09:56 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 1/3] config.json: Add BB_HASHSERVE
 to SDK_LOCAL_CONF_BLACKLIST
Date: Tue, 19 Oct 2021 10:09:27 -1000
Message-Id: 
 <e606fde003ad9ae6cffa61acf1b60775ab0ba6a6.1634674038.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1634674038.git.steve@sakoman.com>
References: <cover.1634674038.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Oct 2021 20:09:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55103

From: Richard Purdie <richard.purdie@linuxfoundation.org>

This should avoid issues with the hashequiv code attempting to contact
an non-existent server in the eSDKs built by the project.

[YOCTO #14471]

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 4db17f4c9da4efb48d428256efb696d86935a3ea)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 1 +
 1 file changed, 1 insertion(+)

diff --git a/config.json b/config.json
index d871349..571ddae 100644
--- a/config.json
+++ b/config.json
@@ -55,6 +55,7 @@
             "SANITY_TESTED_DISTROS = ''",
             "SDK_EXT_TYPE = 'minimal'",
             "SDK_INCLUDE_TOOLCHAIN = '1'",
+            "SDK_LOCAL_CONF_BLACKLIST:append = 'BB_HASHSERVE'",
             "BB_DISKMON_DIRS = 'STOPTASKS,${TMPDIR},1G,100K STOPTASKS,${DL_DIR},1G STOPTASKS,${SSTATE_DIR},1G STOPTASKS,/tmp,100M,100K ABORT,${TMPDIR},100M,1K ABORT,${DL_DIR},100M ABORT,${SSTATE_DIR},100M ABORT,/tmp,10M,1K'",
             "BB_HASHSERVE = 'typhoon.yocto.io:8686'"
         ]
-- 
2.25.1


