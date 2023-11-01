Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2622C4332F
	for <webhook@archiver.kernel.org>; Wed,  1 Nov 2023 00:06:25 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web10.10944.1698797175503175933
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Oct 2023 17:06:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=aEKs2D4R;
 spf=pass (domain: smile.fr, ip: 209.85.221.42, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-32d80ae19f8so4197080f8f.2
        for <yocto@lists.yoctoproject.org>; Tue, 31 Oct 2023 17:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1698797173; x=1699401973; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uObdY10+HIgIw1DzAS/FjxuPQ9H+ZkQ+Ui9gzy4pkEA=;
        b=aEKs2D4R5aXs9nQjYS0Bzs6gBLcHpGJDof5s9BuvbukMzaGB6qgFKZpabzrZRvetEz
         INqQl7vr+3F2cUpEOS8HX80xnDmkmsTAtyOdHjwpDLmFaMhm0yyTejNmCVTsHuYvvfbZ
         5Pr5QbPHuGXFMP9lhB1cw4dB5HlswvITAUvw3tAkG0rrChbK4iix7bvkGuPt0XjuCvxM
         6hYkJaxkV7MGrVjB7LVFT/m4MfPbr1n+DE9NURLOIeZtualvAdKVVKSP/3ALh9fFGe9k
         mOKEnOsYMo+NQ5m8fm6nCF1X8rUU1tcsNgsuMALtFAkzkSTaBS674UNGePXGbvDLPpID
         Mj3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698797173; x=1699401973;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uObdY10+HIgIw1DzAS/FjxuPQ9H+ZkQ+Ui9gzy4pkEA=;
        b=T25/Jr2npcHzaAxY7fX9XSam06kfeuEVRcv8SI0/oZYMc2iX/v6CxhajL1gOp2M45n
         YXrAlL9bf5SThvXmQmQhbunmEumO6AK/WhsTcuCKHUzUFpV91g8HY4gsketLm3633Y6k
         zgJWVqZhD/LX1dIvfj/A/kVWDUuT/m0tSiCMyRMB/7kEGt0Awv7BDW4QHOnMH8U5Q3LT
         WogIZr+0Su+Sogj39M7vogOr1qZ18own7yhFCp1IzljWgO2fqZ5eSECCgWHwffeaf9D8
         lAGIfShqCUkTe4FrDlkQz1jmxd9m9oWYnW9yexIvm7ea0d98++QC8N4BVNKcGf6/Zjfx
         DbqA==
X-Gm-Message-State: AOJu0YyczIU2MzCxu22Ajtw3Kr8anM9cTyMPmTPziCfcD4hTDqEmXc1v
	u4qCWb4DuzEkCykd1wFBuZPHp97w61VXRXohXhU=
X-Google-Smtp-Source: AGHT+IFjFYJYdBTL2K+LlJziVAbkc/9LEm+KhtmbN21+QnUcLfe5KUERUlO1YyoDkOqQEN7Nxn1fJA==
X-Received: by 2002:a5d:64c5:0:b0:32f:952f:c524 with SMTP id f5-20020a5d64c5000000b0032f952fc524mr2235667wri.10.1698797173321;
        Tue, 31 Oct 2023 17:06:13 -0700 (PDT)
Received: from P-ASN-ECS-830T8C3.numericable.fr ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id m5-20020adfe945000000b0032f7cc56509sm2571620wrn.98.2023.10.31.17.06.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Oct 2023 17:06:12 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Alex Kanavin <alex.kanavin@gmail.com>,
	Yoann Congal <yoann.congal@smile.fr>
Subject: [auh][PATCH 3/6] upgrade-helper.py: extract the inner function of get_packages_to_upgrade
Date: Wed,  1 Nov 2023 01:05:31 +0100
Message-Id: <20231101000534.241551-4-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20231101000534.241551-1-yoann.congal@smile.fr>
References: <20231101000534.241551-1-yoann.congal@smile.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 00:06:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61541

This is to prepare for the futur loop on layers.

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 upgrade-helper.py | 23 ++++++++++++++++-------
 1 file changed, 16 insertions(+), 7 deletions(-)

diff --git a/upgrade-helper.py b/upgrade-helper.py
index 2538d61..bc485b8 100755
--- a/upgrade-helper.py
+++ b/upgrade-helper.py
@@ -671,12 +671,10 @@ class UniverseUpdater(Updater):
         return True
 
     def _get_packages_to_upgrade(self, packages=None):
-
-        pkgs = oe.recipeutils.get_recipe_upgrade_status(self.recipes)
-
-        pkgs_list = []
-        for pkg in pkgs:
-            pn, status, cur_ver, next_ver, maintainer, revision, no_upgrade_reason = pkg
+    
+        # Prepare a single pkg dict data (or None is not upgradable) from recipeutils.get_recipe_upgrade_status data.
+        def _get_pkg_to_upgrade(self, pn, status, cur_ver, next_ver, maintainer, revision, no_upgrade_reason):
+            pkg_to_upgrade = None
 
             if self.args.to_version:
                  next_ver = self.args.to_version
@@ -691,7 +689,6 @@ class UniverseUpdater(Updater):
                         "maintainer": maintainer,
                         "revision": revision
                     }
-                    pkgs_list.append(pkg_to_upgrade)
             else:
                 if no_upgrade_reason:
                     I(" Skip package %s (status = %s, current version = %s," \
@@ -702,6 +699,18 @@ class UniverseUpdater(Updater):
                         " next version = %s)" %
                         (pn, status, cur_ver, next_ver))
 
+            return pkg_to_upgrade
+
+        pkgs = oe.recipeutils.get_recipe_upgrade_status(self.recipes)
+
+        pkgs_list = []
+        for pkg in pkgs:
+            pn, status, cur_ver, next_ver, maintainer, revision, no_upgrade_reason = pkg
+
+            pkg_to_upgrade = _get_pkg_to_upgrade(self, pn, status, cur_ver, next_ver, maintainer, revision, no_upgrade_reason)
+            if pkg_to_upgrade:
+                pkgs_list.append(pkg_to_upgrade)
+
         return pkgs_list
 
     def pkg_upgrade_handler(self, pkg_ctx):
-- 
2.30.2


