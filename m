Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5A70E00BB5; Sat,  1 Jul 2017 15:06:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4586FE00A39
	for <yocto@yoctoproject.org>; Sat,  1 Jul 2017 15:06:34 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	01 Jul 2017 15:06:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,294,1496127600"; d="scan'208";a="1167087399"
Received: from pequod.jf.intel.com ([10.54.74.4])
	by fmsmga001.fm.intel.com with ESMTP; 01 Jul 2017 15:06:28 -0700
From: Stephano Cetola <stephano.cetola@linux.intel.com>
To: yocto@yoctoproject.org
Date: Sat,  1 Jul 2017 15:05:34 -0700
Message-Id: <20170701220534.28857-1-stephano.cetola@linux.intel.com>
X-Mailer: git-send-email 2.13.1
Subject: [yocto-autobuilder][PATCH] ScrapeTargets.py: improve target search algorithm
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
X-List-Received-Date: Sat, 01 Jul 2017 22:06:38 -0000

When scraping the build targets from refkit-ci.inc, grep would only
return the first line of the search result. By replacing grep with
awk, we are now searching for multi-line variables, and should now
scrape build targets even if they have line breaks between them.

Signed-off-by: Stephano Cetola <stephano.cetola@linux.intel.com>
---
 .../site-packages/autobuilder/buildsteps/ScrapeTargets.py        | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/ScrapeTargets.py b/lib/python2.7/site-packages/autobuilder/buildsteps/ScrapeTargets.py
index 80153fe85..c5a2f8d6d 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/ScrapeTargets.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/ScrapeTargets.py
@@ -41,7 +41,9 @@ class ScrapeTargets(ShellCommand):
         workerdir = os.path.join(os.path.join(YOCTO_ABBASE, "yocto-worker"))
         buildername = self.getProperty("buildername")
         src = os.path.join(workerdir, buildername, "build", self.source)
-        self.command = "cat " + src + " | grep " + self.targetsvar
+        # find targetsvar=", skip a line, then return lines up to a quote
+        self.command = ["awk",
+                '/%s="/{flag=1;next}/"/{flag=0}flag' % self.targetsvar, src]
         ShellCommand.start(self)
 
     def commandComplete(self, cmd):
@@ -49,10 +51,7 @@ class ScrapeTargets(ShellCommand):
             return
 
         result = cmd.logs['stdio'].getText()
-        targets = result.replace(self.targetsvar, "")
-        targets = targets.strip()
-        targets = targets.replace('=', '')
-        targets = targets.strip('"')
+        targets = result.strip()
         self.setProperty("scraped_targets",
                          targets,
                          'Targets "%s" scraped from %s' % (targets,
-- 
2.13.1


