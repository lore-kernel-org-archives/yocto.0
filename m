Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0FADFE009CB; Tue, 21 Jun 2016 16:08:11 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F401E009CB
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2016 16:08:10 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 21 Jun 2016 16:08:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,507,1459839600"; d="scan'208";a="1002631822"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.159])
	by orsmga002.jf.intel.com with ESMTP; 21 Jun 2016 16:08:09 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 21 Jun 2016 18:07:41 -0500
Message-Id: <1466550472-1365-5-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1466550472-1365-1-git-send-email-anibal.limon@linux.intel.com>
References: <1466550472-1365-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: joshua.g.lock@intel.com
Subject: [[yocto-autobuilder][PATCHv2] 04/15] lib/ABTools: Add functions for get errordir path in controller and worker
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
X-List-Received-Date: Tue, 21 Jun 2016 23:08:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

get_error_report_controller_dir: Returns controller error report dir
where bitbake exception/errors are stored.

get_error_report_worker_dir: Returns controller error report dir
where recipe task failures are stored.

Also update the current sources to use that functions.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 .../autobuilder/buildsteps/SendErrorReport.py           | 16 +++++++---------
 lib/python2.7/site-packages/autobuilder/lib/ABTools.py  | 17 +++++++++++++++++
 .../site-packages/autobuilder/lib/buildsteps.py         | 10 ++--------
 3 files changed, 26 insertions(+), 17 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/SendErrorReport.py b/lib/python2.7/site-packages/autobuilder/buildsteps/SendErrorReport.py
index 33f9fe3..23e94b1 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/SendErrorReport.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/SendErrorReport.py
@@ -9,8 +9,12 @@ __version__ = "2.0"
 __maintainer__ = "Elizabeth Flanagan"
 __email__ = "pidge@toganlabs.com"
 '''
+
+import os
+
 from buildbot.steps.shell import ShellCommand
-from autobuilder.config import *
+
+from lib.ABTools import get_error_report_worker_dir
 
 class SendErrorReport(ShellCommand):
     haltOnFailure = False
@@ -18,7 +22,6 @@ class SendErrorReport(ShellCommand):
     name = "SendErrorReport"
     def __init__(self, factory, argdict=None, **kwargs):
         self.factory = factory
-        self.workerdir=os.path.join(os.path.join(YOCTO_ABBASE, "yocto-worker"))
         for k, v in argdict.iteritems():
             setattr(self, k, v)
         # Timeout needs to be passed to LoggingBuildStep as a kwarg
@@ -27,17 +30,12 @@ class SendErrorReport(ShellCommand):
         ShellCommand.__init__(self, **kwargs)
 
     def start(self):
-        self.workerdir=os.path.join(os.path.join(YOCTO_ABBASE, "yocto-worker"))
         self.buildername=self.getProperty("buildername")
         self.buildnumber=self.getProperty("buildnumber")
+        self.errordir = get_error_report_worker_dir(self.buildername)
         self.layerversion_core = self.getProperty("layerversion_core")
         self.command=""
-        if os.environ.get('ERROR_REPORT_DIR') is None:
-            self.errordir=os.path.join(os.path.join(
-                            self.workerdir, self.buildername),
-                            "build/build/tmp/log/error-report/")
-        else:
-            self.errordir=os.environ.get('ERROR_REPORT_DIR')
+
         if int(self.layerversion_core) < 4:
             self.command = "echo 'Skipping Step.'"
         else:
diff --git a/lib/python2.7/site-packages/autobuilder/lib/ABTools.py b/lib/python2.7/site-packages/autobuilder/lib/ABTools.py
index a665373..579ae85 100644
--- a/lib/python2.7/site-packages/autobuilder/lib/ABTools.py
+++ b/lib/python2.7/site-packages/autobuilder/lib/ABTools.py
@@ -10,7 +10,9 @@ __maintainer__ = "Elizabeth Flanagan"
 __email__ = "elizabeth.flanagan@intel.com"
 '''
 
+import os
 
+from autobuilder.config import YOCTO_ABBASE
 
 def capitalize(word):
     return ' '.join([s[0].upper() + s[1:] for s in word.split(' ')])
@@ -18,3 +20,18 @@ def capitalize(word):
 def stringToBool(v):
     return v.lower() in ("true", "t", "1")
 
+def get_error_report_controller_dir(buildername, buildnumber):
+    errordir_base = os.path.join(YOCTO_ABBASE, 'yocto-controller', buildername,
+            'error-report')
+    errordir = os.path.join(errordir_base, str(buildnumber))
+    return errordir
+
+def get_error_report_worker_dir(buildername):
+    if os.environ.get('ERROR_REPORT_DIR') is None:
+        workerdir = os.path.join(YOCTO_ABBASE, 'yocto-worker')
+        errordir = os.path.join(workerdir, buildername,
+                'build/build/tmp/log/error-report/')
+    else:
+        errordir = os.environ.get('ERROR_REPORT_DIR')
+
+    return errordir
diff --git a/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py b/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
index 7354c83..9f63a2b 100644
--- a/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
+++ b/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
@@ -20,7 +20,7 @@ import codecs
 from buildbot.steps.shell import ShellCommand
 from buildbot.process.buildstep import LogLineObserver
 
-from autobuilder.config import YOCTO_ABBASE
+from lib.ABTools import get_error_report_controller_dir
 
 DEFAULT_SHELL = 'bash'
 
@@ -92,12 +92,6 @@ class BitbakeLogLineObserver(LogLineObserver):
     def errLineReceived(self, line):
         self._handleError(line)
 
-def get_error_report_bitbake_dir(buildername, buildnumber):
-    errordir_base = os.path.join(YOCTO_ABBASE, 'yocto-controller', buildername,
-            'error-report')
-    errordir = os.path.join(errordir_base, str(buildnumber))
-    return errordir
-
 class BitbakeShellCommand(ShellCommand):
     def __init__(self, factory, argdict=None, **kwargs):
         super(BitbakeShellCommand, self).__init__(**kwargs)
@@ -143,7 +137,7 @@ class BitbakeShellCommand(ShellCommand):
         buildername = self.getProperty('buildername')
         buildnumber = self.getProperty('buildnumber')
 
-        errordir = get_error_report_bitbake_dir(buildername, buildnumber)
+        errordir = get_error_report_controller_dir(buildername, buildnumber)
         if not os.path.exists(errordir):
             os.makedirs(errordir)
 
-- 
2.1.4


