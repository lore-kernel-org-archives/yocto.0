Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4992E00C35; Mon, 10 Jul 2017 14:05:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79B4CE00B8B
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 14:05:53 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 Jul 2017 14:05:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,342,1496127600"; d="scan'208";a="109706434"
Received: from pequod.jf.intel.com ([10.54.74.4])
	by orsmga002.jf.intel.com with ESMTP; 10 Jul 2017 14:05:49 -0700
From: Stephano Cetola <stephano.cetola@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 10 Jul 2017 14:05:07 -0700
Message-Id: <20170710210507.45748-1-stephano.cetola@linux.intel.com>
X-Mailer: git-send-email 2.13.2
Subject: [yocto-autobuilder][PATCH] ScrapeTargets.py: Use python instead of awk
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 10 Jul 2017 21:05:57 -0000

Using awk, sed, or grep to pull a shell variable out of stdio proved
complex. Instead, simply cat the entire "inc" file to stdio and use
python/regex to find the variable.

Signed-off-by: Stephano Cetola <stephano.cetola@linux.intel.com>
---
 .../autobuilder/buildsteps/ScrapeTargets.py             | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/ScrapeTargets.py b/lib/python2.7/site-packages/autobuilder/buildsteps/ScrapeTargets.py
index 07e2fdcf4..8844c6366 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/ScrapeTargets.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/ScrapeTargets.py
@@ -15,6 +15,7 @@ from buildbot.steps.shell import ShellCommand
 from buildbot.status.results import SUCCESS, FAILURE
 from autobuilder.config import *
 import os
+import re
 
 class ScrapeTargets(ShellCommand):
     haltOnFailure = False
@@ -41,9 +42,7 @@ class ScrapeTargets(ShellCommand):
         workerdir = os.path.join(os.path.join(YOCTO_ABBASE, "yocto-worker"))
         buildername = self.getProperty("buildername")
         src = os.path.join(workerdir, buildername, "build", self.source)
-        # find targetsvar then return lines up to a quote
-        self.command = ["awk",
-                '/%s/{flag=1;print;next}/"/{flag=0}flag' % self.targetsvar, src]
+        self.command = ["cat", src]
         ShellCommand.start(self)
 
     def commandComplete(self, cmd):
@@ -51,10 +50,14 @@ class ScrapeTargets(ShellCommand):
             return
 
         result = cmd.logs['stdio'].getText()
-        targets = result.strip()
-        targets = targets.replace('%s="' % self.targetsvar, '')
-        targets = targets.replace('\\', '')
-        targets = targets.replace('\n', '')
+        start = result.find(self.targetsvar) + len(self.targetsvar)
+        res = re.search('"([^"]*)"', result[start:])
+        targets = ""
+        if res:
+            targets = res.group()
+            targets = targets.replace('%s="' % self.targetsvar, '')
+            targets = targets.replace('\\', '')
+            targets = targets.replace('\n', '')
         self.setProperty("scraped_targets",
                          targets,
                          'Targets "%s" scraped from %s' % (targets,
-- 
2.13.2


