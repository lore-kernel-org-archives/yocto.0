Return-Path: <scott.murray@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88DFCC433EF
	for <webhook@archiver.kernel.org>; Thu, 17 Feb 2022 22:15:16 +0000 (UTC)
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com
 [209.85.219.50])
 by mx.groups.io with SMTP id smtpd.web08.3448.1645136115459949028
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Feb 2022 14:15:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=kFe5VJMA;
 spf=pass (domain: konsulko.com, ip: 209.85.219.50,
 mailfrom: scott.murray@konsulko.com)
Received: by mail-qv1-f50.google.com with SMTP id h9so11163276qvm.0
        for <yocto@lists.yoctoproject.org>;
 Thu, 17 Feb 2022 14:15:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hxX1ZQGAOKq4oQ2qOW8AaJaYc8Lo1jPP3hTemslWXLw=;
        b=kFe5VJMAxq1n2GsHWp+9WzrlxS9Pm/LUz5eALAPtjhHkR2Z7rJrR2YhCVvihbIlepl
         QvpqVzq+0+a976OaEds2y5QECPu75N6SvuEUJWyk9jgvygXSxoBv4QGxmwjF79jZ/x4e
         9/PH15MkishTympdATS9ZCXc44pBsw79Mc0lI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hxX1ZQGAOKq4oQ2qOW8AaJaYc8Lo1jPP3hTemslWXLw=;
        b=PnbbIJv0U9npZNsHB9RidJYl/2mvVl4YLuSzxMHwlbKAXRaG1Ng4JqsFLN7UoU0qrq
         Lqwit58IGaOW94r2VCYiQv3wnIpjz3nfen3DShMVDp1wRYfyxzsPz5kk0R0c2DyjCaF8
         b6Fp4QYcg2XCLuCgQ99aVOPQzANteUfRIwacVufxfdbcbNNjfyTLvKn5Uj64060JaC/Y
         QrrkSlR9qHi7bSfYbPaJbAobjeggTnTnCDUqPyh8wOKXRHMJG77x+DGOljj9vqnPXxAp
         cZ6Bo9UCLXs8KZ7fi47h0tuVLOGs/FXb5hvjqjFKq4XcqUwZpMGNYmoFwRz/qqcPudkE
         56tw==
X-Gm-Message-State: AOAM532+yONBU6mW7bOM7NNfT5rifg0q0eCZJcP8xhw9JXE4TjWS7149
	EvLzOiubAlqWqt8ia1oYIdpKG+45P0Fj0A==
X-Google-Smtp-Source: 
 ABdhPJyyQExoLkJpAIY3DihigECPdxSjv0o1ThxNCuTCeNN4d1Kj4xvK8Ke+/C5mvg1x4kzErA1Cmw==
X-Received: by 2002:a05:6214:400b:b0:42e:556c:98c3 with SMTP id
 kd11-20020a056214400b00b0042e556c98c3mr3757192qvb.27.1645136114200;
        Thu, 17 Feb 2022 14:15:14 -0800 (PST)
Received: from ghidorah.spiteful.org (192-0-174-222.cpe.teksavvy.com.
 [192.0.174.222])
        by smtp.gmail.com with ESMTPSA id
 t15sm16327570qkp.48.2022.02.17.14.15.13
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Feb 2022 14:15:13 -0800 (PST)
From: Scott Murray <scott.murray@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH] meta-poky: Update BB_DISKMON_DIRS use
Date: Thu, 17 Feb 2022 17:15:03 -0500
Message-Id: <20220217221503.1532612-1-scott.murray@konsulko.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Feb 2022 22:15:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56216

Update the example BB_DISKMON_DIRS definitions in the sample
local.conf files for the rename of the "ABORT" action to "HALT".

Signed-off-by: Scott Murray <scott.murray@konsulko.com>
---
 meta-poky/conf/local.conf.sample          | 10 +++++-----
 meta-poky/conf/local.conf.sample.extended |  2 +-
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
index dc78919..55e90e0 100644
--- a/meta-poky/conf/local.conf.sample
+++ b/meta-poky/conf/local.conf.sample
@@ -184,7 +184,7 @@ PATCHRESOLVE = "noop"
 #
 # Monitor the disk space during the build. If there is less that 1GB of space or less
 # than 100K inodes in any key build location (TMPDIR, DL_DIR, SSTATE_DIR), gracefully
-# shutdown the build. If there is less than 100MB or 1K inodes, perform a hard abort
+# shutdown the build. If there is less than 100MB or 1K inodes, perform a hard halt
 # of the build. The reason for this is that running completely out of space can corrupt
 # files and damages the build in ways which may not be easily recoverable.
 # It's necessary to monitor /tmp, if there is no space left the build will fail
@@ -194,10 +194,10 @@ BB_DISKMON_DIRS ??= "\
     STOPTASKS,${DL_DIR},1G,100K \
     STOPTASKS,${SSTATE_DIR},1G,100K \
     STOPTASKS,/tmp,100M,100K \
-    ABORT,${TMPDIR},100M,1K \
-    ABORT,${DL_DIR},100M,1K \
-    ABORT,${SSTATE_DIR},100M,1K \
-    ABORT,/tmp,10M,1K"
+    HALT,${TMPDIR},100M,1K \
+    HALT,${DL_DIR},100M,1K \
+    HALT,${SSTATE_DIR},100M,1K \
+    HALT,/tmp,10M,1K"
 
 #
 # Shared-state files from other locations
diff --git a/meta-poky/conf/local.conf.sample.extended b/meta-poky/conf/local.conf.sample.extended
index 8a38454..1e3699e 100644
--- a/meta-poky/conf/local.conf.sample.extended
+++ b/meta-poky/conf/local.conf.sample.extended
@@ -195,7 +195,7 @@ DISTRO_FEATURES:remove = "x11"
 # "action,directory,minimum_space,minimum_free_inode"
 #
 # The "action" must be set and should be one of:
-# ABORT: Immediately abort
+# HALT: Immediately halt
 # STOPTASKS: The new tasks can't be executed any more, will stop the build
 #           when the running tasks have been done.
 # WARN: show warnings (see BB_DISKMON_WARNINTERVAL for more information)
-- 
2.35.1


