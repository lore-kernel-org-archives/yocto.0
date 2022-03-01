Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1F81C433F5
	for <webhook@archiver.kernel.org>; Tue,  1 Mar 2022 11:10:38 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
 [209.85.208.45])
 by mx.groups.io with SMTP id smtpd.web09.7012.1646133037400024089
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Mar 2022 03:10:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=T1AFYDBj;
 spf=pass (domain: gmail.com, ip: 209.85.208.45,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f45.google.com with SMTP id h15so21499203edv.7
        for <yocto@lists.yoctoproject.org>;
 Tue, 01 Mar 2022 03:10:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=HK59sfJiOapljQTSg3M3FaPTK//4we8vdxYtATiMA2s=;
        b=T1AFYDBjxXb5nDsG0K28c1f8jnnSuf5z6RbeQCZgEaedcSbIlflLbhzqk4LtE2sBKv
         rHjfLrhHv87FMu437hhOScWyheFrMF9gtgGa/a70gcuFL6r5bP2hu9IYA6kzJYzzOKwm
         kCBgI3oWfmSES4YkhC3THh+NaAyfUYYARVZovLs1NC1AL4/e8IbAYCHZjBe31KxCyCEV
         eNvRrdWBPAilldyysyqlVfpS//HZToszo3OxINFXfJ9L4FysXioBJ3cxfqToRca4pZ8F
         ZZ3nWAsXsKQcmIRClmbSwsDV/wyS8HOYo6919HoSU9DZCoMW3gdg+6Mw50bTfK7CZ/o3
         cZrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=HK59sfJiOapljQTSg3M3FaPTK//4we8vdxYtATiMA2s=;
        b=kL0FnB048YhRUuBU7gtk2yOfZLAuKZnX5NImvrnq7h78ATYSyx+OBuNtrEr+iryh3/
         oT47KACGUv7OjhO3v8H85BBvyuhJtmkaDKUq8HM5cmYWlPzIOgfAFBUEDrkrUm0spxGt
         aqb0Ez/5jESvSEh3YY+C788T8Z2CmQ0WhphA9Mh3p0R0ckhvaXH4ZXqCSUnFwOXI6901
         lEDmQcLbCleV828QgWdlgsuDTzQGh5uzEXlL4V/3ek4xfRvQEY1RejGzky4VpD9+8S56
         tu5PSNbBx+cMFYWMHMDwHiLq9a7657ySkFKSpr6xbtDAJjnObDsHpXuDK+s6rUFqrbDq
         uxkw==
X-Gm-Message-State: AOAM531XZ7UwwHMZCyoPDphyeVmj5xg/rviH+KzaLt7npjrreCr0xEiX
	Uf9Bj37InSp1DbbLQubs7IMcQ0wLhSc=
X-Google-Smtp-Source: 
 ABdhPJyi2lZCwBFcmNCUY9PVXQiB4p3E5Xxr4vLSwK7D2eVMtZLloRSHLdMfEHwO/rjPG47Nse2G/w==
X-Received: by 2002:aa7:cc0a:0:b0:413:a674:7d33 with SMTP id
 q10-20020aa7cc0a000000b00413a6747d33mr11291876edt.369.1646133035791;
        Tue, 01 Mar 2022 03:10:35 -0800 (PST)
Received: from Zen2.lab.linutronix.de.
 (ip-109-090-143-203.um36.pools.vodafone-ip.de. [109.90.143.203])
        by smtp.gmail.com with ESMTPSA id
 c21-20020aa7c995000000b00400506d388bsm7129846edt.48.2022.03.01.03.10.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Mar 2022 03:10:35 -0800 (PST)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [auto-upgrade-helper][PATCH] error.py: initialize stdout/stderr to
 empty strings
Date: Tue,  1 Mar 2022 12:10:22 +0100
Message-Id: <20220301111022.2229998-1-alex@linutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Mar 2022 11:10:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56336

This avoids guarding them against NoneType everywhere

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 modules/errors.py        | 2 +-
 modules/utils/devtool.py | 5 +----
 2 files changed, 2 insertions(+), 5 deletions(-)

diff --git a/modules/errors.py b/modules/errors.py
index fa543f7..48e8b70 100644
--- a/modules/errors.py
+++ b/modules/errors.py
@@ -24,7 +24,7 @@
 #
 
 class Error(Exception):
-    def __init__(self, message=None, stdout=None, stderr=None):
+    def __init__(self, message=None, stdout="", stderr=""):
         self.message = message
         self.stdout = stdout
         self.stderr = stderr
diff --git a/modules/utils/devtool.py b/modules/utils/devtool.py
index e4e028f..c26061f 100644
--- a/modules/utils/devtool.py
+++ b/modules/utils/devtool.py
@@ -19,10 +19,7 @@ class Devtool(object):
             raise DevtoolError("The following devtool command failed: " + operation,
                         e.stdout, e.stderr)
 
-        if stderr is None:
-            return stdout
-        else:
-            return stdout + stderr
+        return stdout + stderr
 
     def upgrade(self, recipe, version = None, revision = None):
         cmd = " upgrade " + recipe
-- 
2.30.2


