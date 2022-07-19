Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946B8C43334
	for <webhook@archiver.kernel.org>; Tue, 19 Jul 2022 10:51:08 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com
 [209.85.208.43])
 by mx.groups.io with SMTP id smtpd.web09.38980.1658227858777813135
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Jul 2022 03:50:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=D+jGhy4s;
 spf=pass (domain: gmail.com, ip: 209.85.208.43,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f43.google.com with SMTP id m8so5577599edd.9
        for <yocto@lists.yoctoproject.org>;
 Tue, 19 Jul 2022 03:50:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mTPLNl+OTvzzcn4ZVzFZv4ZQJNsUZSsiLS86WuUgu8g=;
        b=D+jGhy4sbXqc8dI7eliZ3TJg5JTfOYetlBp0Yz7lLar6ECn2wGgb7pG/JFnbSSIVx3
         fy9qH4SyJhQgwSZPsGu/ghy5JuEfWHbiztx9YpQI8buvW8yVdsNIkhcLqtUykXjh+jlj
         HMKdHlxXEVG5N5DPOHaOZhoJ1/mPFI3n9sB5GmyRrS/bizyqbENorT/xXK3ICta+tMZX
         Li/kNktaFkqRkKboTzv1Ekv4dVUm/DaUgHicLFUlX09FAKNbyWyifQ/8N8M+AJkSgUcG
         s4ny0LAzR6ZxfXtcOYlWl+oPzOo2nxu4BMHJptHeVtmuu1gYbOHEL4hiXcXg3SVE4lDn
         cJpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mTPLNl+OTvzzcn4ZVzFZv4ZQJNsUZSsiLS86WuUgu8g=;
        b=1OUNalOpixJlxa3vya8C5jkNmz20wyNL5FuLv1QI/vz3WNGjg3+Q96i/hGcOYtbC3k
         Eu/CDp2ARNJHi0Xoa+kfRskhx/8dHIXjvkutQ+MgvmbTKYfzFy56phe6ZGsIwTT927F3
         5Rt/YjN5GPfBCt4iaPH1hcuhKb0/RobyajUydBtaoSN+Z5DdNJ9NUVSzVo2cHOcWRxYA
         GEZjwdanc/EPFxjoWNkPKlv12P+Thop6yGzl8yxncjBQ/eIjWPE1OUsneCYKjawUVHDf
         2E3kQbV2XWX6zBpBdQ+k9O0Q05JrmFcig6cbVchVi41UzsjLqdQDRJCRmX9ZeukFtvYP
         m8Zw==
X-Gm-Message-State: AJIora/FZNImA9mjHeMZRchW+gchfK4kLFzU8kYpPLn2+cPva1L6pvsT
	y+/FDR1IAoWHQmk8Q6lhadPRmC69TSA=
X-Google-Smtp-Source: 
 AGRyM1tgKfM/35i1Sr8NZ1wYt250E4zOFQBbYuzu3BeY27o7S/bd5QJtXzcaDbRSYSHyZN6o6r4Jkw==
X-Received: by 2002:a05:6402:1914:b0:43a:d59b:5e79 with SMTP id
 e20-20020a056402191400b0043ad59b5e79mr42684265edz.124.1658227857219;
        Tue, 19 Jul 2022 03:50:57 -0700 (PDT)
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de.
 [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id
 l12-20020a50d6cc000000b0043b240ce57bsm10424647edj.82.2022.07.19.03.50.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Jul 2022 03:50:56 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [AUH][PATCH 2/2] upgrade-helper: attach a tarball with patches and
 other artefacts to summary emails
Date: Tue, 19 Jul 2022 12:50:52 +0200
Message-Id: <20220719105052.638381-2-alex@linutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220719105052.638381-1-alex@linutronix.de>
References: <20220719105052.638381-1-alex@linutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Jul 2022 10:51:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57570

This is optional, enabled by default, and allows easy extraction of patches
and other information to one's local disk (no need to go over individual maintainer
emails).

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 upgrade-helper.conf |  4 ++++
 upgrade-helper.py   | 14 ++++++++++----
 2 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/upgrade-helper.conf b/upgrade-helper.conf
index 5696564..251c36a 100644
--- a/upgrade-helper.conf
+++ b/upgrade-helper.conf
@@ -57,6 +57,10 @@
 # public url with AUH results to include in statistics summary (optional)
 #publish_work_url=http://auh.somehost.com/work
 
+# whether to attach a tarball with AUH artefacts (patches, log, buildhistory, etc.)
+# to the summary email
+#summary_includes_tarball=True
+
 # clean sstate directory before upgrading
 # Generally not necessary, as bitbake can handle this automatically.
 #clean_sstate=no
diff --git a/upgrade-helper.py b/upgrade-helper.py
index ecdabb0..4393589 100755
--- a/upgrade-helper.py
+++ b/upgrade-helper.py
@@ -411,7 +411,7 @@ class Updater(object):
             I(" %s: %s" % (pkg_ctx['PN'], e.stdout))
             raise e
 
-    def send_status_mail(self, statistics_summary):
+    def send_status_mail(self, statistics_summary, attachments):
         if "status_recipients" not in settings:
             E(" Could not send status email, no recipients set!")
             return -1
@@ -425,7 +425,7 @@ class Updater(object):
             subject = "[AUH] Upgrade status: " + date.isoformat(date.today())
 
         if self.statistics.total_attempted:
-            self.email_handler.send_email(to_list, subject, statistics_summary)
+            self.email_handler.send_email(to_list, subject, statistics_summary, attachments)
         else:
             W("No recipes attempted, not sending status mail!")
 
@@ -536,9 +536,10 @@ class Updater(object):
 
         if attempted_pkgs > 0:
             publish_work_url = settings.get('publish_work_url', '')
+            attach_tarball = settings.get('summary_includes_tarball', True)
             work_tarball = os.path.join(self.uh_base_work_dir,
                     os.path.basename(self.uh_work_dir) + '.tar.gz')
-            if publish_work_url:
+            if publish_work_url or attach_tarball:
                 I(" Generating work tarball in %s ..." % work_tarball)
                 tar_cmd = ["tar", "-chzf", work_tarball, "-C", self.uh_base_work_dir, os.path.basename(self.uh_work_dir)]
                 import subprocess
@@ -546,6 +547,7 @@ class Updater(object):
                     E(" Work tarball (%s) generation failed..." % (work_tarball))
                     E(" Tar command: %s" % (" ".join(tar_cmd)))
                     publish_work_url = ''
+                    attach_tarball = False
 
             statistics_summary = self.statistics.get_summary(
                     publish_work_url, os.path.basename(self.uh_work_dir))
@@ -557,8 +559,12 @@ class Updater(object):
 
             I(" %s" % statistics_summary)
 
+            attachments = []
+            if attach_tarball:
+                attachments.append(work_tarball)
+
             if self.opts['send_email']:
-                self.send_status_mail(statistics_summary)
+                self.send_status_mail(statistics_summary, attachments)
 
 class UniverseUpdater(Updater):
     def __init__(self, args):
-- 
2.30.2


