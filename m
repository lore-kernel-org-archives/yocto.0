Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDEB0E00B30; Tue, 21 Jun 2016 16:08:17 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 990AAE009BF
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2016 16:08:15 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 21 Jun 2016 16:08:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,507,1459839600"; d="scan'208";a="1002631868"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.159])
	by orsmga002.jf.intel.com with ESMTP; 21 Jun 2016 16:08:15 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 21 Jun 2016 18:07:47 -0500
Message-Id: <1466550472-1365-11-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1466550472-1365-1-git-send-email-anibal.limon@linux.intel.com>
References: <1466550472-1365-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: joshua.g.lock@intel.com
Subject: [[yocto-autobuilder][PATCHv2] 10/15] autobuilder/lib/{ABtools, builsteps}.py: Create save_error_report func
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
X-List-Received-Date: Tue, 21 Jun 2016 23:08:17 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Create new generic function save_error_report  based on _saveBitbakeErrorReport
in order to use the same function on OESelftest error reports.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 .../site-packages/autobuilder/lib/ABTools.py       | 13 ++++++++++++
 .../site-packages/autobuilder/lib/buildsteps.py    | 23 +++++-----------------
 2 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/lib/ABTools.py b/lib/python2.7/site-packages/autobuilder/lib/ABTools.py
index 579ae85..1e09de7 100644
--- a/lib/python2.7/site-packages/autobuilder/lib/ABTools.py
+++ b/lib/python2.7/site-packages/autobuilder/lib/ABTools.py
@@ -11,6 +11,9 @@ __email__ = "elizabeth.flanagan@intel.com"
 '''
 
 import os
+import time
+import json
+import codecs
 
 from autobuilder.config import YOCTO_ABBASE
 
@@ -35,3 +38,13 @@ def get_error_report_worker_dir(buildername):
         errordir = os.environ.get('ERROR_REPORT_DIR')
 
     return errordir
+
+def save_error_report(buildername, buildnumber, report, report_type):
+    errordir = get_error_report_controller_dir(buildername, buildnumber)
+    if not os.path.exists(errordir):
+        os.makedirs(errordir)
+
+    filename = os.path.join(errordir, "error_report_%s_%d.txt" % \
+            (report_type, int(time.time())))
+    with codecs.open(filename, 'w', 'utf-8') as f:
+        json.dump(report, f, indent=4, sort_keys=True)
diff --git a/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py b/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
index c290218..eee0c1b 100644
--- a/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
+++ b/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
@@ -13,14 +13,11 @@ __email__ = "anibal.limon@linux.intel.com"
 import os
 import re
 
-import time
-import json
-import codecs
 
 from buildbot.steps.shell import ShellCommand
 from buildbot.process.buildstep import LogLineObserver
 
-from lib.ABTools import get_error_report_controller_dir
+from lib.ABTools import save_error_report
 
 DEFAULT_SHELL = 'bash'
 
@@ -139,21 +136,11 @@ class BitbakeShellCommand(ShellCommand):
 
         return report
 
-    def _saveBitbakeErrorReport(self, report):
-        buildername = self.getProperty('buildername')
-        buildnumber = self.getProperty('buildnumber')
-
-        errordir = get_error_report_controller_dir(buildername, buildnumber)
-        if not os.path.exists(errordir):
-            os.makedirs(errordir)
-
-        filename = os.path.join(errordir, "error_report_bitbake_%d.txt" % \
-                int(time.time()))
-        with codecs.open(filename, 'w', 'utf-8') as f:
-            json.dump(report, f, indent=4, sort_keys=True)
-
     def commandComplete(self, cmd):
         if cmd.didFail():
             if self.errors['bitbake']:
+                buildername = self.getProperty('buildername')
+                buildnumber = self.getProperty('buildnumber')
+
                 report = self._createBitbakeErrorReport(self.errors['log'])
-                self._saveBitbakeErrorReport(report)
+                save_error_report(buildername, buildnumber, report, 'bitbake')
-- 
2.1.4


