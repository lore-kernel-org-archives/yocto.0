Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 041FAE00BE8; Sat, 15 Jul 2017 12:34:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84444E00BC8
	for <yocto@yoctoproject.org>; Sat, 15 Jul 2017 12:34:44 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Jul 2017 12:34:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,365,1496127600"; 
	d="scan'208,223";a="127104486"
Received: from pequod.jf.intel.com ([10.54.74.4])
	by fmsmga005.fm.intel.com with ESMTP; 15 Jul 2017 12:34:44 -0700
From: Stephano Cetola <stephano.cetola@linux.intel.com>
To: yocto@yoctoproject.org
Date: Sat, 15 Jul 2017 12:33:59 -0700
Message-Id: <20170715193359.63097-1-stephano.cetola@linux.intel.com>
X-Mailer: git-send-email 2.13.2
Subject: [yocto-autobuilder][PATCH] ScrapeTargets: use translate instead of regex
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
X-List-Received-Date: Sat, 15 Jul 2017 19:34:45 -0000

From some quick tests the string translate function is comparable in
efficiency and certainly more legible than regex. We should note that
if we ever move this functionality to an environment running python3,
the translate function takes one dictionary argument, but functions
in much the same way.

Signed-off-by: Stephano Cetola <stephano.cetola@linux.intel.com>
---
 .../site-packages/autobuilder/buildsteps/ScrapeTargets.py          | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/ScrapeTargets.py b/lib/python2.7/site-packages/autobuilder/buildsteps/ScrapeTargets.py
index ceed0c709..0480f3de3 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/ScrapeTargets.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/ScrapeTargets.py
@@ -57,9 +57,10 @@ class ScrapeTargets(ShellCommand):
             targets = res.group()
             # Try and ensure we scrape the target regardless of which
             # assignment operator is used and surrounding whitespace
-            targets = re.sub('%s *\??\??:?.?\+?=\+?\.? *\"' % self.targetsvar, '', targets, 1)
-            targets = targets.replace('\\', '')
-            targets = targets.replace('\n', '')
+            targets = targets.replace(self.targetsvar, '')
+            targets = targets.translate(None, ':+?="')
+            targets = targets.replace("\\", "")
+            targets = targets.replace ("\n", "")
         self.setProperty("scraped_targets",
                          targets,
                          'Targets "%s" scraped from %s' % (targets,
-- 
2.13.2


