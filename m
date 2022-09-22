Return-Path: <benjamin.esquivel@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6676CECAAD8
	for <webhook@archiver.kernel.org>; Thu, 22 Sep 2022 02:33:53 +0000 (UTC)
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com
 [209.85.210.172])
 by mx.groups.io with SMTP id smtpd.web08.2847.1663814030099861346
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Sep 2022 19:33:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=a+q+wQj+;
 spf=pass (domain: gmail.com, ip: 209.85.210.172,
 mailfrom: benjamin.esquivel@gmail.com)
Received: by mail-pf1-f172.google.com with SMTP id c198so7844682pfc.13
        for <yocto@lists.yoctoproject.org>;
 Wed, 21 Sep 2022 19:33:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=mFQDhuMPIbGoRtQL12XjghjPW92zO+M6/zE9kzpNnQI=;
        b=a+q+wQj+FQ9AJHs4WR8n1GRlB8ho0SdoTSaD8KZVMmRbu9YEUFd2lmft+Ep9PLAq6p
         DjrRqcvCrfEL4PxFgeoRy6JVB3IEvu/5ju68zJFGtTtUppuYjsJchvh+Pt5gNXSPAp/2
         m/nXSl0q26Vx0iti5Q2GXT6DU6oNcnlb5Nhb/dp0bAk4WJ/fGjN4J+0U5aJe7FL9Y9D1
         uSGFBmXrI1b7zTzccfkeOhvZGxw9i3oeasY3rZk2/+FrzCJZrp6/t6xZ9OUfngMvWUev
         pEj8V1z8pWReyo86B9AgcPG5m1gdeje8XZkjPZsMqmLF/y+dzQmqFfIbXrk+WyNBRigk
         axNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=mFQDhuMPIbGoRtQL12XjghjPW92zO+M6/zE9kzpNnQI=;
        b=SZjZym8weKWPltTuaH88taidrBQVf0kaO6WFSTeXg+zZ/Wfss6XNGYkVNhbjZj63EQ
         j82QhB02Jib8Hf1f7BpRUgea/kUC3lOITG/4jN7BHlXah6kAq8th1eLK6AgnpAd7d77h
         JGR1KG14No3+WvHl8hUgZnl8nNC0jOt8/ZjurYGmrjEWucJDs1YAatIcEj81TpoKR/ZV
         /DQ9ToX+pKCzb+VCNjZKk5uBEmB93L38Lp/TqpzUZIPxFEtWBy47FqSwJk+O6HDcMw4q
         Zx99Mibcld3N89gbuNiSvvE6FSySaQHYIqRS3QQHkNJcsP+0LsX4ldA+g+ZGBhOvvqcA
         YbbQ==
X-Gm-Message-State: ACrzQf24czGsH8aBDpPGOyVpGwfOMxPD2kRuNAdDDaSCNjSdvOim+FVi
	/N+D4eaqUDZV0yC/IYSdUfRXEe2NLPZfow==
X-Google-Smtp-Source: 
 AMsMyM5jrMLSbardXko3CMfS3PXfNDjh9RrzIIS5f6V7+dhR/jqyP/+Bxikwl6Fgl36MqYh6kUoxHw==
X-Received: by 2002:a63:82c1:0:b0:439:f2c6:374a with SMTP id
 w184-20020a6382c1000000b00439f2c6374amr1085768pgd.103.1663814028944;
        Wed, 21 Sep 2022 19:33:48 -0700 (PDT)
Received: from machine.hsd1.wa.comcast.net ([24.16.138.215])
        by smtp.gmail.com with ESMTPSA id
 14-20020a630b0e000000b00438ce2800e5sm2649383pgl.7.2022.09.21.19.33.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Sep 2022 19:33:48 -0700 (PDT)
From: benjamin.esquivel@gmail.com
To: yocto@lists.yoctoproject.org
Cc: tarxf@esquibits.com,
	Benjamin Esquivel <benjamin.esquivel@gmail.com>
Subject: [yocto-autobuilder2][PATCH] config.py: default repository updates
Date: Wed, 21 Sep 2022 19:33:34 -0700
Message-Id: <20220922023334.386489-1-benjamin.esquivel@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Sep 2022 02:33:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58126

From: Benjamin Esquivel <benjamin.esquivel@gmail.com>

the repos that are used as defaults in the build requests are outdated
hence the update.

Signed-off-by: Benjamin Esquivel <benjamin.esquivel@gmail.com>
---
 config.py | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/config.py b/config.py
index 042a1ec..2249e82 100644
--- a/config.py
+++ b/config.py
@@ -38,23 +38,23 @@ repos = {
                           "neon-master"],
     "eclipse-poky-oxygen": ["ssh://git@push.yoctoproject.org/eclipse-yocto",
                             "oxygen-master"],
-    "poky": ["ssh://git@push.yoctoproject.org/poky", "master"],
-    "meta-intel": ["ssh://git@push.yoctoproject.org/meta-intel", "master"],
-    "meta-arm": ["ssh://git@push.yoctoproject.org/meta-arm", "master"],
+    "poky": ["git://git.yoctoproject.org/poky", "master"],
+    "meta-intel": ["git://git.yoctoproject.org/meta-intel", "master"],
+    "meta-arm": ["git://git.yoctoproject.org/meta-arm", "master"],
     "meta-agl": ["https://git.automotivelinux.org/AGL/meta-agl", "next"],
     "meta-aws": ["https://github.com/aws/meta-aws.git", "master"],
-    "meta-ti": ["ssh://git@push.yoctoproject.org/meta-ti", "master"],
-    "meta-security": ["ssh://git@push.yoctoproject.org/meta-security", "master"],
+    "meta-ti": ["git://git.yoctoproject.org/meta-ti", "master"],
+    "meta-security": ["git://git.yoctoproject.org/meta-security", "master"],
     "oecore": ["git://git.openembedded.org/openembedded-core",
                           "master"],
     "bitbake": ["git://git.openembedded.org/bitbake", "master"],
-    "meta-qt4": ["ssh://git@push.yoctoproject.org/meta-qt4", "master"],
-    "meta-qt3": ["ssh://git@push.yoctoproject.org/meta-qt3", "master"],
-    "meta-mingw": ["ssh://git@push.yoctoproject.org/meta-mingw", "master"],
-    "meta-gplv2": ["ssh://git@push.yoctoproject.org/meta-gplv2", "master"],
+    "meta-qt4": ["git://git.yoctoproject.org/meta-qt4", "master"],
+    "meta-qt3": ["git://git.yoctoproject.org/meta-qt3", "master"],
+    "meta-mingw": ["git://git.yoctoproject.org/meta-mingw", "master"],
+    "meta-gplv2": ["git://git.yoctoproject.org/meta-gplv2", "master"],
     "meta-openembedded": ["git://git.openembedded.org/meta-openembedded", "master"],
-    "meta-virtualization": ["ssh://git@push.yoctoproject.org/meta-virtualization", "master"],
-    "yocto-docs": ["ssh://git@push.yoctoproject.org/yocto-docs", "master"]
+    "meta-virtualization": ["git://git.yoctoproject.org/meta-virtualization", "master"],
+    "yocto-docs": ["git://git.yoctoproject.org/yocto-docs", "master"]
 }
 
 trigger_builders_wait_shared = [
-- 
2.30.2


