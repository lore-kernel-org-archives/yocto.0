Return-Path: <changqing.li@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08902C433F5
	for <webhook@archiver.kernel.org>; Fri, 22 Oct 2021 04:03:55 +0000 (UTC)
Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web12.3772.1634875433764119723
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Oct 2021 21:03:54 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: changqing.li@windriver.com)
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com
 [147.11.82.252])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 19M43qOw014447
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Thu, 21 Oct 2021 21:03:52 -0700
Received: from ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 21 Oct 2021 21:03:51 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.14; Thu, 21 Oct 2021 21:03:51 -0700
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.12 via Frontend Transport; Thu, 21 Oct 2021 21:03:50 -0700
From: <changqing.li@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [layerindex-web][PATCH] update.py: add option -s for send mail
Date: Fri, 22 Oct 2021 12:02:55 +0800
Message-ID: <20211022040255.32031-1-changqing.li@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Oct 2021 04:03:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55115

From: Changqing Li <changqing.li@windriver.com>

Add option -s to support send mail to admin when update_layer.py
return non-zero value. So that admin can find issues ASAP.

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 layerindex/update.py                   | 27 ++++++++++++++++++++++++++
 templates/layerindex/updatefailure.txt | 11 +++++++++++
 2 files changed, 38 insertions(+)
 create mode 100644 templates/layerindex/updatefailure.txt

diff --git a/layerindex/update.py b/layerindex/update.py
index 5a2642b..f66a747 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -35,6 +35,28 @@ except ImportError:
     logger.error("Please install PythonGit 0.3.1 or later in order to use this script")
     sys.exit(1)
 
+def send_email(cmd, log):
+    from django.core.mail import EmailMessage
+    from django.template.loader import get_template
+    import settings
+
+    subject = 'Notification: Layer Index Update ERRORS/WARNINGS'
+    from_email = settings.DEFAULT_FROM_EMAIL
+
+    to_email_list = []
+    for a in settings.ADMINS:
+        to_email_list.append(a[1])
+
+    d = {
+        'cmd': cmd,
+        'log': log,
+    }
+
+    plaintext = get_template('layerindex/updatefailure.txt')
+    text_content = plaintext.render(d)
+
+    msg = EmailMessage(subject, text_content, from_email, to_email_list)
+    msg.send()
 
 def prepare_update_layer_command(options, branch, layer, initial=False):
     """Prepare the update_layer.py command line"""
@@ -178,6 +200,9 @@ def main():
     parser.add_option("", "--keep-temp",
             help = "Preserve temporary directory at the end instead of deleting it",
             action="store_true")
+    parser.add_option("-s", "--send-mail",
+            help = "Send mail to admin when update layer have errors",
+            action="store_true", dest="sendmail", default=False)
 
     options, args = parser.parse_args(sys.argv)
     if len(args) > 1:
@@ -443,6 +468,8 @@ def main():
                         layerupdate.retcode = ret
                         if not options.dryrun:
                             layerupdate.save()
+                        if options.sendmail:
+                            send_email(cmd, output)
                         continue
 
                     col = extract_value('BBFILE_COLLECTIONS', output)
diff --git a/templates/layerindex/updatefailure.txt b/templates/layerindex/updatefailure.txt
new file mode 100644
index 0000000..ddcb6b9
--- /dev/null
+++ b/templates/layerindex/updatefailure.txt
@@ -0,0 +1,11 @@
+Hi, Admins
+
+There are ERRORS/WARNINGS during layer index update, please check it.
+
+Layer update command:
+{{cmd}}
+
+Details:
+{{log | safe}}
+
+Have a nice day!
-- 
2.17.1


