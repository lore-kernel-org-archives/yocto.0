Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7D5BE00726; Wed,  5 Jul 2017 11:09:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2827E00718
	for <yocto@yoctoproject.org>; Wed,  5 Jul 2017 11:09:25 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga105.jf.intel.com with ESMTP; 05 Jul 2017 11:09:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,312,1496127600"; d="scan'208";a="1148044057"
Received: from pequod.jf.intel.com ([10.54.74.4])
	by orsmga001.jf.intel.com with ESMTP; 05 Jul 2017 11:09:24 -0700
From: Stephano Cetola <stephano.cetola@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Jul 2017 11:08:42 -0700
Message-Id: <20170705180842.33124-2-stephano.cetola@linux.intel.com>
X-Mailer: git-send-email 2.13.2
In-Reply-To: <20170705180842.33124-1-stephano.cetola@linux.intel.com>
References: <20170705180842.33124-1-stephano.cetola@linux.intel.com>
Subject: [yocto-autobuilder][PATCH V3 1/1] ScrapeTargets.py: improve target search algorithm
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
X-List-Received-Date: Wed, 05 Jul 2017 18:09:26 -0000

When scraping the build targets from refkit-ci.inc, grep would only
return the first line of the search result. By replacing grep with
awk, we are now searching for multi-line variables, and should now
scrape build targets even if they have line breaks between them.

[YOCTO #11720]

Signed-off-by: Stephano Cetola <stephano.cetola@linux.intel.com>
---
 .../site-packages/autobuilder/buildsteps/ScrapeTargets.py     | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/ScrapeTargets.py b/lib/python2.7/site-packages/autobuilder/buildsteps/ScrapeTargets.py
index 80153fe85..8d1549636 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/ScrapeTargets.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/ScrapeTargets.py
@@ -41,7 +41,9 @@ class ScrapeTargets(ShellCommand):
         workerdir = os.path.join(os.path.join(YOCTO_ABBASE, "yocto-worker"))
         buildername = self.getProperty("buildername")
         src = os.path.join(workerdir, buildername, "build", self.source)
-        self.command = "cat " + src + " | grep " + self.targetsvar
+        # find targetsvar then return lines up to a quote
+        self.command = ["awk",
+                '/%s/{flag=1;print;next}/"/{flag=0}flag' % self.targetsvar, src]
         ShellCommand.start(self)
 
     def commandComplete(self, cmd):
@@ -49,10 +51,9 @@ class ScrapeTargets(ShellCommand):
             return
 
         result = cmd.logs['stdio'].getText()
-        targets = result.replace(self.targetsvar, "")
-        targets = targets.strip()
-        targets = targets.replace('=', '')
-        targets = targets.strip('"')
+        targets = result.strip()
+        targets = targets.replace('%s="' % self.targetsvar, '')
+        targets = targets.replace('\\', '')
         self.setProperty("scraped_targets",
                          targets,
                          'Targets "%s" scraped from %s' % (targets,
-- 
2.13.2


