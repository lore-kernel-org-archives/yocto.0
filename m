Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B98BC433F5
	for <webhook@archiver.kernel.org>; Thu, 23 Dec 2021 20:21:24 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web10.37712.1640290883224657703
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Dec 2021 12:21:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Qb7aKLHg;
 spf=pass (domain: gmail.com, ip: 209.85.221.44,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-wr1-f44.google.com with SMTP id r17so13590505wrc.3
        for <yocto@lists.yoctoproject.org>;
 Thu, 23 Dec 2021 12:21:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Uiaw3/EG45sX40ToRpH1q1fEdpT845iRQZN/kCk6KM0=;
        b=Qb7aKLHg1peb4K9kn5q6P82qjFepzaXM0yI9C/5vfWo+q7Z4L297BP0kE1X5g1wu2e
         mmsnB2W8n1PjXaBlwBHZrMouFyIEbhW8a9CsWRjtcdXISyAAZV4+pamZB54CCLFKRD0C
         YADptiJ/4GN1FpceZQ3DM9JjPbXnwySq34q/h9xSQvNob+eG57McFYBz9+FK4MQa89Va
         GxWg53WLSoYE3go8mAPCvo0dCsemf2wWZ9RFPqyB+2431pAK8TdF3poqtCq2efeJFUo4
         nY9kyahVbYoVzm0PLFihEsqAjCgKAcVqOzH6MMwLms/vIwQi7quO4YGBujbSL2Gcc4Cq
         PBqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Uiaw3/EG45sX40ToRpH1q1fEdpT845iRQZN/kCk6KM0=;
        b=Ih09t3Hh0e+0AvuGgVv54VSKuYO5BnulrTiaW3ZwMxwJzDCFLows7R1S4g83RVnjhC
         7oQqUSihaYbQEJk1OFw7He8Iynd1ihKy8OSNQPN25waqzaYQKY9Y3EUELlt05fhn9wDU
         cE5RcnqbQxgujfaQznGuTZgA77sBfL3Y/pbYZgN2gvW2x93PABJvcXVhAyPri11jn0ui
         p02dzwmGTZHXZ0EvPoLuUqQIm3mX5y/5y/+t/rXsurA9OhMs+7l8cOjsVh4DMyyTD3fA
         Gd8ZVRpny0wIr0J6JeYWEX4tKTZFShrpu/szHTc1KMPhVafX4b8NcV4SmEN4aZbtpNuv
         mNJQ==
X-Gm-Message-State: AOAM533WHJ0jmeNpA3tIorsDg2L7XoQ/s6t2/m7s8fAT7vJWup+KJLzx
	zEycTEnBZN1Cx0+NkpMpqd3euyatiZ/nUw==
X-Google-Smtp-Source: 
 ABdhPJwB7V6W7c9xnlmx6lVsieIxomW0MOMpwHQZN2CVuxeWYm3zBHhz2ld2DkCXm73h91kPAnGQFw==
X-Received: by 2002:a05:6000:2cc:: with SMTP id
 o12mr2718695wry.206.1640290881644;
        Thu, 23 Dec 2021 12:21:21 -0800 (PST)
Received: from localhost.localdomain
 ([2a02:2454:29b:3b00:d35d:e3cf:58b5:748b])
        by smtp.gmail.com with ESMTPSA id
 a198sm5734460wmd.42.2021.12.23.12.21.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Dec 2021 12:21:21 -0800 (PST)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [auto-upgrade-helper][PATCH] bitbake: consider both stdout and stderr
 when checking or logging output
Date: Thu, 23 Dec 2021 21:21:13 +0100
Message-Id: <20211223202113.330030-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Dec 2021 20:21:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55653

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 modules/buildhistory.py  | 2 +-
 modules/steps.py         | 4 ++--
 modules/testimage.py     | 4 ++--
 modules/utils/bitbake.py | 2 +-
 upgrade-helper.py        | 4 ++--
 5 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/modules/buildhistory.py b/modules/buildhistory.py
index 6649023..e0f7191 100644
--- a/modules/buildhistory.py
+++ b/modules/buildhistory.py
@@ -43,7 +43,7 @@ class BuildHistory(object):
             try:
                 self.bb.complete(self.pn, machine)
             except Error as e:
-                for line in e.stdout.split("\n"):
+                for line in e.stdout.split("\n") + e.stderr.split("\n"):
                     # version going backwards is not a real error
                     if re.match(".* went backwards which would break package feeds .*", line):
                         break
diff --git a/modules/steps.py b/modules/steps.py
index 811b88d..bde72db 100644
--- a/modules/steps.py
+++ b/modules/steps.py
@@ -107,8 +107,8 @@ def _compile(bb, pkg, machine, workdir):
             bb.complete(pkg, machine)
         except Error as e:
             with open("{}/bitbake-output-{}.txt".format(workdir, machine), 'w') as f:
-                f.write(e.stdout)
-            for line in e.stdout.split("\n"):
+                f.write(e.stdout + e.stderr)
+            for line in e.stdout.split("\n") + e.stderr.split("\n"):
                 # version going backwards is not a real error
                 if re.match(".* went backwards which would break package feeds .*", line):
                     break
diff --git a/modules/testimage.py b/modules/testimage.py
index 4272c84..0fc1adb 100644
--- a/modules/testimage.py
+++ b/modules/testimage.py
@@ -85,14 +85,14 @@ class TestImage():
             bitbake_create_output = self.bb.complete(image, machine)
         except Error as e:
             I( "   building the testimage failed! Collecting logs...")
-            bitbake_create_output = e.stdout
+            bitbake_create_output = e.stdout + e.stderr
         else:
             I( "   running %s/testimage for %s ..." % (image, machine))
             try:
                 bitbake_run_output = self.bb.complete("%s -c testimage" % image, machine)
             except Error as e:
                 I( "   running the testimage failed! Collecting logs...")
-                bitbake_run_output = e.stdout
+                bitbake_run_output = e.stdout + e.stderr
 
         if bitbake_create_output:
             with open(os.path.join(self.logdir, "bitbake-create-testimage.log"), 'w') as f:
diff --git a/modules/utils/bitbake.py b/modules/utils/bitbake.py
index 4835ca6..a5fc6fa 100644
--- a/modules/utils/bitbake.py
+++ b/modules/utils/bitbake.py
@@ -73,7 +73,7 @@ class Bitbake(object):
 
             if self.log_dir is not None and os.path.exists(self.log_dir):
                 with open(os.path.join(self.log_dir, BITBAKE_ERROR_LOG), "a+") as log:
-                    log.write(e.stdout)
+                    log.write(e.stdout + e.stderr)
 
             raise Error("\'" + cmd + "\' failed", e.stdout, e.stderr)
 
diff --git a/upgrade-helper.py b/upgrade-helper.py
index eb3935e..ecdabb0 100755
--- a/upgrade-helper.py
+++ b/upgrade-helper.py
@@ -153,7 +153,7 @@ class Updater(object):
         except EmptyEnvError as e:
             import traceback
             E( " %s\n%s" % (e.message, traceback.format_exc()))
-            E( " Bitbake output:\n%s" % (e.stdout))
+            E( " Bitbake output:\n%s" % (e.stdout + e.stderr))
             exit(1)
 
         self._set_options()
@@ -459,7 +459,7 @@ class Updater(object):
                     E(" Can't build gcc-runtime for %s." % machine)
 
                     if isinstance(e, Error):
-                        E(e.stdout)
+                        E(e.stdout + e.stderr)
                     else:
                         import traceback
                         traceback.print_exc(file=sys.stdout)
-- 
2.33.1


