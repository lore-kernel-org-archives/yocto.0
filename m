Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC38EC433EF
	for <webhook@archiver.kernel.org>; Sat, 30 Oct 2021 17:10:00 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web10.21402.1635613799797716355
 for <yocto@lists.yoctoproject.org>;
 Sat, 30 Oct 2021 10:10:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=XQt9q0RZ;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.49,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f49.google.com with SMTP id v17so21592729wrv.9
        for <yocto@lists.yoctoproject.org>;
 Sat, 30 Oct 2021 10:09:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=80vcQHHGZ/m6GHAOt82ZRLQ7AXT21mAwpMVg1hAgB9E=;
        b=XQt9q0RZ03WMP7V3P+dvXu6WbIR43P8jxsWqzONaS7SBoaiIXktu7+9Q8eyQtu2mFe
         EzlBz2wAhY/BfjF/PlVPyW4Wy2c/TViKlRibvgGWpLXr4QzEFOTXXHP9KcDZfcl4weok
         PzD63Kx0wEgNWKBKzF9T5ET9cB90CmWaLfsss=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=80vcQHHGZ/m6GHAOt82ZRLQ7AXT21mAwpMVg1hAgB9E=;
        b=dCvECvOxdq072GDG5Fhbxp6h7uHDQSQ3o4o8Fb6B5JZUR4czNlzqtzc3O76cxIYs4i
         GAQRu+wbK+FXn2V/y5WruCOuJcFgwicxDrV3zHhr+Ie4Y5NGLDM7+YcqGRDXR6IStHyP
         anT8SQJ31dFTEzptBFSeQQK19LFjEk67xAAkY9Sg7/xxPz84tOTFi9loFKMfv2KYN70j
         0QArNOTiOjN3AjjvfmOP/jy5ekdvQAbEpCBVR1pXSdALkvbAbIk0Qq1R3fMsIRXjrh/n
         ddPSwFfbEkhO9HXCopgUypOmRc77p7tonCgXYO1D9CKtdbuGOTyymsFzc2YXTfSNV0Qn
         0Fcw==
X-Gm-Message-State: AOAM5312oX8SrzmJbWPGOsOhOUk34g3gZla7IIkgXaH0bJqJBIpz9405
	bXaPAl5PfEbzOTYb2T5AMn5e0hMZXtN5yg==
X-Google-Smtp-Source: 
 ABdhPJxk9I7Fnj/nal/2NXSTg5JlevpedmG3inqFxnG+T17flc43ktSFWVfjkoKX7E8nOgXZPneTCA==
X-Received: by 2002:adf:ecca:: with SMTP id s10mr9562173wro.405.1635613798025;
        Sat, 30 Oct 2021 10:09:58 -0700 (PDT)
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:af33:8564:b018:31d5])
        by smtp.gmail.com with ESMTPSA id
 d24sm7740482wmb.35.2021.10.30.10.09.57
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Oct 2021 10:09:57 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2] [PATCH] builders: Fix quarantine handling
Date: Sat, 30 Oct 2021 18:09:56 +0100
Message-Id: <20211030170956.3456430-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 30 Oct 2021 17:10:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55194

The way the canStartBuild code was written, it inserted a delay between
each build starting of 2 minutes unconditionally. We only want to do this
if the worker had run out of space so tweak the code accordingly.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 builders.py | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/builders.py b/builders.py
index 20ad0bb2..e575a1a6 100644
--- a/builders.py
+++ b/builders.py
@@ -69,16 +69,17 @@ def canStartBuild(builder, wfb, request):
     threshold = 60 # GB of space
     if int(cmd.stdout) < threshold:
         log.msg("Detected {0} GB of space available, less than threshold of {1} GB. Can't start build".format(cmd.stdout, threshold))
+        wfb.worker.quarantine_timeout = 2 * 60
         wfb.worker.putInQuarantine()
         return False
-    else:
-        log.msg("Detected {0} GB of space available, more than threshold of {1} GB. OK to build".format(cmd.stdout, threshold))
-
-    wfb.worker.quarantine_timeout = 120
-    wfb.worker.putInQuarantine()
-
-    wfb.worker.resetQuarantine()
 
+    log.msg("Detected {0} GB of space available, more than threshold of {1} GB. OK to build".format(cmd.stdout, threshold))
+    if wfb.worker.isPaused:
+        # It was low on space so delay the builds starting a bit
+        wfb.worker.quarantine_timeout = 2 * 60
+        wfb.worker.putInQuarantine()
+    else:
+        wfb.worker.exitQuarantine()
     return True
 
 def create_builder_factory():
-- 
2.32.0


