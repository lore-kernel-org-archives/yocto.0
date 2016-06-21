Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31E92E009BF; Tue, 21 Jun 2016 16:08:10 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55E8FE009BF
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2016 16:08:09 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 21 Jun 2016 16:08:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,507,1459839600"; d="scan'208";a="1002631815"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.159])
	by orsmga002.jf.intel.com with ESMTP; 21 Jun 2016 16:08:08 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 21 Jun 2016 18:07:40 -0500
Message-Id: <1466550472-1365-4-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1466550472-1365-1-git-send-email-anibal.limon@linux.intel.com>
References: <1466550472-1365-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: joshua.g.lock@intel.com
Subject: [[yocto-autobuilder][PATCHv2] 03/15] lib/buildsteps: BitbakeShellCommand add support for create error reports
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
X-List-Received-Date: Tue, 21 Jun 2016 23:08:10 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

When bitbake command fails and isn't a recipe task failure then create
an error report and store into yocto-controller folder for be able to
transfer to the worker in order to send to the Error report web.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 .../site-packages/autobuilder/lib/buildsteps.py    | 63 +++++++++++++++++++++-
 1 file changed, 62 insertions(+), 1 deletion(-)

diff --git a/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py b/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
index 9822b3c..7354c83 100644
--- a/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
+++ b/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
@@ -13,9 +13,15 @@ __email__ = "anibal.limon@linux.intel.com"
 import os
 import re
 
+import time
+import json
+import codecs
+
 from buildbot.steps.shell import ShellCommand
 from buildbot.process.buildstep import LogLineObserver
 
+from autobuilder.config import YOCTO_ABBASE
+
 DEFAULT_SHELL = 'bash'
 
 class ShellCommandCleanEnv(ShellCommand):
@@ -86,6 +92,12 @@ class BitbakeLogLineObserver(LogLineObserver):
     def errLineReceived(self, line):
         self._handleError(line)
 
+def get_error_report_bitbake_dir(buildername, buildnumber):
+    errordir_base = os.path.join(YOCTO_ABBASE, 'yocto-controller', buildername,
+            'error-report')
+    errordir = os.path.join(errordir_base, str(buildnumber))
+    return errordir
+
 class BitbakeShellCommand(ShellCommand):
     def __init__(self, factory, argdict=None, **kwargs):
         super(BitbakeShellCommand, self).__init__(**kwargs)
@@ -93,6 +105,55 @@ class BitbakeShellCommand(ShellCommand):
         self.stdio_observer = BitbakeLogLineObserver()
         self.addLogObserver('stdio', self.stdio_observer)
 
+    def _get_variables(self, log):
+        vrs = {}
+
+        rexp = re.compile("^(.*)=.*\"(.*)\"$")
+        for line in log:
+            m = rexp.match(line)
+            if m:
+                vrs[m.group(1).rstrip()] = m.group(2)
+
+        return vrs
+
+    def _createBitbakeErrorReport(self, log):
+        vrs = self._get_variables(log)
+
+        report = {}
+        report['machine'] = vrs['MACHINE']
+        report['build_sys'] = vrs['BUILD_SYS']
+        report['nativelsb'] = vrs['NATIVELSBSTRING']
+        report['distro'] = vrs['DISTRO']
+        report['target_sys'] = vrs['TARGET_SYS']
+
+        report['component'] = 'bitbake'
+        report['branch_commit'] = self.getProperty('branch') + ': ' + \
+                self.getProperty('got_revision')
+
+        failure = {}
+        failure['package'] = "bitbake-%s" % vrs['BB_VERSION']
+        failure['task'] = self.command
+        failure['log'] = "\n".join(log)
+
+        report['failures'] = [failure]
+
+        return report
+
+    def _saveBitbakeErrorReport(self, report):
+        buildername = self.getProperty('buildername')
+        buildnumber = self.getProperty('buildnumber')
+
+        errordir = get_error_report_bitbake_dir(buildername, buildnumber)
+        if not os.path.exists(errordir):
+            os.makedirs(errordir)
+
+        filename = os.path.join(errordir, "error_report_bitbake_%d.txt" % \
+                int(time.time()))
+        with codecs.open(filename, 'w', 'utf-8') as f:
+            json.dump(report, f, indent=4, sort_keys=True)
+
     def commandComplete(self, cmd):
         if cmd.didFail():
-            pass
+            if self.errors['bitbake']:
+                report = self._createBitbakeErrorReport(self.errors['log'])
+                self._saveBitbakeErrorReport(report)
-- 
2.1.4


