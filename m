Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C54B2C433EF
	for <webhook@archiver.kernel.org>; Wed, 30 Mar 2022 16:33:07 +0000 (UTC)
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com
 [209.85.210.177])
 by mx.groups.io with SMTP id smtpd.web12.50.1648657987343528314
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Mar 2022 09:33:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=0oADe+sw;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.177,
 mailfrom: steve@sakoman.com)
Received: by mail-pf1-f177.google.com with SMTP id b13so17334930pfv.0
        for <yocto@lists.yoctoproject.org>;
 Wed, 30 Mar 2022 09:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=eR8lmS5oijOFCFrfgX6A6kfBhiY97RPH7hJ6LzcxkUk=;
        b=0oADe+swFdTEjvTERoNIN0uFrvnt9MIxK6qvSuXibf4TkjlABLbVEC8MpmYhnxxgF/
         VufbWYQgOvpXPW7cYszDFxs27xi8YSYAtVMH6vUbC4Mm5/wt4IAz/fpnUOvmNQykP+Xf
         h02nTXTkpL7IX+DAC5DdGhWaig9n+LbinSj06GIdfzoi0K5LuVP0pouireMKvc0VckBv
         t5C0/vVLZLOtiD1KTMXsQLmGa6e/LuJ2zi7o1IZyB88jU1LxJAbp2eALzF5zhug8iK9w
         1uJ4W3X7lgoz/FlTIyKhc6rMtT1MUUFkQlGWmgavc5IEGwNBXhhiKg8564o0CFmAX23B
         muxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eR8lmS5oijOFCFrfgX6A6kfBhiY97RPH7hJ6LzcxkUk=;
        b=1seBuBn57XIYhMPcm0FPRjPdoASXYt7kHN1S04DzVicyXAZLzLgp6wAG/MY/IGsauA
         hqRK0bsbLa1bRxccohaNGmfu9Uu017pwWg86oC+b0MZ5LVyvwPChwdE9zW+MKXf7x4VL
         SHIplR1hOVPl13K4nJi8xyU9sNVyaHMqSGBoCT+cj3GU6Qadl+pEBodhB6WJP/zFUjzw
         XKHjSY7fbS5kObXjvDo5GixBJhzHk0b1PC2VnqhcJc0fYWh/j1jwq3y7p5VK10LPmIWW
         ks13vjG48yrnlvluRv17xgLWnRSC19wQTcwaFFS3+ZfDvV8Z5fEQ09GP5kzGPLWAXCKY
         g0AQ==
X-Gm-Message-State: AOAM532yAaLvQyhyHw32kH1cyA8Rw5v6Jm88HgsFyB0En0FxmBOR+0tA
	B4er7KJLjEOvTi/D7UjRxq/OFjE0WnJPGKN/HW0=
X-Google-Smtp-Source: 
 ABdhPJzU4tn+xniXETI/KJyfFqc6siivg9qgDCDX3KJqoCjvNNuX6+Y7f2LtDI/5FYhxnUa9oAMc2w==
X-Received: by 2002:a65:4141:0:b0:382:2b0c:2bf with SMTP id
 x1-20020a654141000000b003822b0c02bfmr6882443pgp.522.1648657986413;
        Wed, 30 Mar 2022 09:33:06 -0700 (PDT)
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net.
 [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id
 oc10-20020a17090b1c0a00b001c7510ed0c8sm7382484pjb.49.2022.03.30.09.33.05
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Mar 2022 09:33:05 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 1/2] config.json: Switch to 3.4 M2
 buildtools
Date: Wed, 30 Mar 2022 06:32:52 -1000
Message-Id: 
 <518797c61cb69e87f7ba6da63f2fc0956175889d.1648657669.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1648657669.git.steve@sakoman.com>
References: <cover.1648657669.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Mar 2022 16:33:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56604

From: Richard Purdie <richard.purdie@linuxfoundation.org>

This adds lz4c, zstd and pzstd for new tools requirements.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 502bcbbacfd6664d95bafd76fb0e1ee72027e4cb)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/config.json b/config.json
index 348339f..d63963d 100644
--- a/config.json
+++ b/config.json
@@ -8,9 +8,9 @@
     "BUILD_HISTORY_DIRECTPUSH" : ["poky:morty", "poky:pyro", "poky:rocko", "poky:sumo", "poky:thud", "poky:warrior", "poky:zeus", "poky:dunfell", "poky:master"],
     "BUILD_HISTORY_FORKPUSH" : {"poky-contrib:ross/mut" : "poky:master", "poky:master-next" : "poky:master"},
 
-    "BUILDTOOLS_URL_TEMPLOCAL" : "/srv/autobuilder/autobuilder.yoctoproject.org/pub/non-release/20200309-15/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200309.sh",
-    "BUILDTOOLS_URL_TEMPLOCAL2" : "http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M3/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200315.sh",
-    "BUILDTOOLS_URL" : "/srv/autobuilder/autobuilder.yoctoproject.org/pub/non-release/20210214-8/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.2+snapshot-7d38cc8e749aedb8435ee71847e04b353cca541d.sh",
+    "BUILDTOOLS_URL_TEMPLOCAL" : "/srv/autobuilder/autobuilder.yoctoproject.org/pub/non-release/20210214-8/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.2+snapshot-7d38cc8e749aedb8435ee71847e04b353cca541d.sh",
+    "BUILDTOOLS_URL_TEMPLOCAL2" : "https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M3/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200315.sh",
+    "BUILDTOOLS_URL" : "https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.4_M2/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.3%2Bsnapshot-1ad79313a5c3e6a453fbeb44caac5c5bbad46d3c.sh",
 
     "REPO_STASH_DIR" : "${BASE_HOMEDIR}/git/mirror",
     "TRASH_DIR" : "${BASE_HOMEDIR}/git/trash",
-- 
2.25.1


