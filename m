Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C960C43334
	for <webhook@archiver.kernel.org>; Wed, 22 Jun 2022 21:12:44 +0000 (UTC)
Received: from mail1.wrs.com (mail1.wrs.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web12.6.1655932360668083253
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Jun 2022 14:12:40 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid
 domain name (domain: windriver.com, ip: 147.11.146.13,
 mailfrom: randy.macleod@windriver.com)
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com
 [147.11.82.252])
	by mail1.wrs.com (8.15.2/8.15.2) with ESMTPS id 25MLCWQh022592
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Wed, 22 Jun 2022 14:12:32 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 22 Jun 2022 14:12:32 -0700
Received: from vme.wrs.com (172.25.44.7) by ala-exchng01.corp.ad.wrs.com
 (147.11.82.252) with Microsoft SMTP Server id 15.1.2242.12 via Frontend
 Transport; Wed, 22 Jun 2022 14:12:31 -0700
From: Randy MacLeod <Randy.MacLeod@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [PATCH yocto-autobuilder-helper] scripts/archive_buildstats.py: copy
 all buildstats
Date: Wed, 22 Jun 2022 17:12:31 -0400
Message-ID: <20220622211231.159988-1-Randy.MacLeod@windriver.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Jun 2022 21:12:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57378

As a first pass, collect all the tmp/buildstats logs
using 'cp -a', to enable review and graphing of all builds.
The goal is to understand the trends in the /proc/pressure/{cpu|io}
data that is now gathered as part of the buildstats system.

Signed-off-by: Aryaman Gupta <Aryaman.Gupta@windriver.com>
Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
---
 scripts/archive_buildstats.py | 27 +++++++++++++++++++++++++++
 scripts/run-config            |  1 +
 2 files changed, 28 insertions(+)
 create mode 100755 scripts/archive_buildstats.py

diff --git a/scripts/archive_buildstats.py b/scripts/archive_buildstats.py
new file mode 100755
index 0000000..bdbe9f4
--- /dev/null
+++ b/scripts/archive_buildstats.py
@@ -0,0 +1,27 @@
+#!/usr/bin/env python3
+#
+# SPDX-License-Identifier: GPL-2.0-only
+#
+
+import os, sys
+
+def usage():
+    print("Usage: " + sys.argv[0] + " <src> <dest> <target>")
+
+def main():
+    if len(sys.argv) != 4:
+        usage()
+        sys.exit()
+
+    builddir = sys.argv[1]
+    dest = sys.argv[2]
+    target = sys.argv[3]
+
+    bsdir = os.path.join(builddir, "tmp/buildstats")
+    directory = os.path.join(dest, target)
+
+    os.system('mkdir -p ' + directory)
+    # cp -a <path-to-worker-buildstats> <directory>
+    os.system('cp -a ' +  builddir + ' ' + directory)
+
+main()
diff --git a/scripts/run-config b/scripts/run-config
index 838847a..953977e 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -334,6 +334,7 @@ elif args.phase == "finish" and args.stepname == "collect-results":
         hp.printheader("Running results collection")
         runcmd([scriptsdir + "/collect-results", args.builddir, args.results_dir, args.target])
         runcmd([scriptsdir + "/summarize_top_output.py", args.results_dir, args.target])
+        runcmd([scriptsdir + "/archive_buildstats.py", args.builddir, args.results_dir, args.target])
     sys.exit(0)
 
 if jcfg:
-- 
2.32.0


