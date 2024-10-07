Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72A37CED242
	for <webhook@archiver.kernel.org>; Mon,  7 Oct 2024 21:28:09 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web10.3782.1728336487764323092
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Oct 2024 14:28:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=KUQPmyA9;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-42cb806623eso45369885e9.2
        for <yocto@lists.yoctoproject.org>; Mon, 07 Oct 2024 14:28:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1728336486; x=1728941286; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=maj29vghkdjnDyzHmta6PVM+3/63Fn/hMPjFgUlM5t0=;
        b=KUQPmyA9CqzyLl+zlxwR7842lNAwneXyFSPfDRImHKNZXlPEt735LjEDUoTiUq6Vzc
         U36OHBmmMUBdSWQOYVHLvC0WXTHwzBY3Z13ZFHUNxJ7ndP4DTOtZCyGLuh5d7e+REGiM
         sfgcEvL0MZZ46dsZGSBx3zfhix8koe8AF4Z/w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728336486; x=1728941286;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=maj29vghkdjnDyzHmta6PVM+3/63Fn/hMPjFgUlM5t0=;
        b=FZX1Mt+I/HWQN0mUUqgDNOCTjAlAbyVS5hqGM7E6YCeU5uTqzABEVsFf7jEXW+83tl
         qy9DWgbNC3kIQEQPnigNQzuwp3UbWfLbyG0nBz799dJci7os6teuatKhKaBLUGr4NX0T
         G6SyojS7NErQEbZXmTrqd7O8GGZ7cgfb6r/FHgqMcamha3LPwg4d9M98OUYFwY+U/8KZ
         461qQ9NeHO90mhEtzBIcXySUANVaEfptqTo8Ndtfi4IguX434evBwJoy2O28NOBmQGCZ
         CIYLny0qFGw2nEwPINWPdRxQz4n09ugAZnfxGrd0gJnDBg4coZ6nMVCEOzRT9eand2SM
         q7RQ==
X-Gm-Message-State: AOJu0YzDF3WdUxqsXPLHYKpVQyP4niXt2kVvJyPGGjgAzrc8TToHy3CO
	+eLFITNOJ4J07RhXMhGL6RAuOV+scwTj2Sf9RKA4EP2+uLsXlu3l1dybf96tURa94rTSdsbilTc
	h
X-Google-Smtp-Source: AGHT+IG9T9/0OF0xEuIqTSW3W2QYmn59DQSPzVGUPEgGX5MDuEGq4Ld0mPXDPxNfZ91HqIBiQk56EQ==
X-Received: by 2002:a05:600c:1c98:b0:42c:b8c9:16cb with SMTP id 5b1f17b1804b1-42f85aa6991mr109280815e9.5.1728336485735;
        Mon, 07 Oct 2024 14:28:05 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:4afa:9443:1775:54a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42f86a20537sm105018445e9.15.2024.10.07.14.28.03
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Oct 2024 14:28:04 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2] [PATCH] builders: Allow partial matching of helper branches
Date: Mon,  7 Oct 2024 22:28:03 +0100
Message-ID: <20241007212803.193484-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Oct 2024 21:28:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63953

Helper branches with names like contrib/kirkstone-nut don't work with
worker restrictions currently. Try and fix this.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 builders.py | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/builders.py b/builders.py
index b4685ec5..580ae264 100644
--- a/builders.py
+++ b/builders.py
@@ -158,12 +158,15 @@ def nextWorker(bldr, workers, buildrequest):
     if '' in buildrequest.sources:
         # Has to be a better way to do this
         branch = buildrequest.sources[''].branch
-    if branch and branch in config.workers_prev_releases and "bringup" not in bldr.name:
-        possible_workers = []
-        for w in workers:
-            if w.worker.workername.startswith(config.workers_prev_releases[branch]):
-                possible_workers.append(w)
-        log.msg("nextWorker: Limiting %s to workers %s for %s" % (str(bldr), str(possible_workers), branch))
+    if branch and "bringup" not in bldr.name:
+        for branchname in config.workers_prev_releases:
+            if branch in branchname:
+                possible_workers = []
+                for w in workers:
+                    if w.worker.workername.startswith(config.workers_prev_releases[branchname]):
+                        possible_workers.append(w)
+                log.msg("nextWorker: Limiting %s to workers %s for %s" % (str(bldr), str(possible_workers), branchname))
+                break
 
     if forced_worker == "*":
         return random.choice(possible_workers) if possible_workers else None

