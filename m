Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22C98E00B30; Tue, 21 Jun 2016 16:08:19 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6053CE00B54
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2016 16:08:17 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 21 Jun 2016 16:08:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,507,1459839600"; d="scan'208";a="1002631880"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.159])
	by orsmga002.jf.intel.com with ESMTP; 21 Jun 2016 16:08:17 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 21 Jun 2016 18:07:49 -0500
Message-Id: <1466550472-1365-13-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1466550472-1365-1-git-send-email-anibal.limon@linux.intel.com>
References: <1466550472-1365-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: joshua.g.lock@intel.com
Subject: [[yocto-autobuilder][PATCHv2] 12/15] buildsteps/RunOeSelftest.py: Add support for create/save error reports
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
X-List-Received-Date: Tue, 21 Jun 2016 23:08:19 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Now when oe-selftest fails the error report for send to the Error report
web are created and saved in the controller.

Since oe-selftest is intended to do a build system testing the values
for MACHINE, TARGET_SYS and DISTRO are provided so use universal value
instead.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 .../autobuilder/buildsteps/RunOeSelftest.py        | 46 ++++++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py
index a1df5cb..5b9e408 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py
@@ -8,9 +8,12 @@ __maintainer__ = "Stefan Stanacar"
 __email__ = "stefanx.stanacar@intel.com"
 '''
 
+import platform
 
 from buildbot.steps.shell import ShellCommand
 
+from lib.ABTools import save_error_report, get_lsb_distro
+
 class RunOeSelftest(ShellCommand):
     haltOnFailure = False
     flunkOnFailure = True
@@ -35,3 +38,46 @@ class RunOeSelftest(ShellCommand):
         else:
             self.command += "if [ -d ../meta-selftest ]; then export DISPLAY=:1; oe-selftest " + self.tests + "; else echo 'Skipping step - no meta-selftest layer here'; fi"
         ShellCommand.start(self)
+
+    def _createOESelftestErrorReport(self, log):
+        """
+            Create a oe-selftest error report since oe-selftest
+            is intended to test the build system no information
+            about machine, distro and target_sys are provided so
+            use universal value.
+        """
+
+        report = {}
+
+        report['machine'] = 'universal'
+        report['build_sys'] = "%s-%s" % (platform.machine(),
+                platform.system().lower())
+        report['nativelsb'] = get_lsb_distro() or 'universal'
+        report['distro'] = 'universal'
+        report['target_sys'] = 'universal'
+
+        report['component'] = 'oe-selftest'
+        report['branch_commit'] = self.getProperty('branch') + ': ' + \
+                self.getProperty('got_revision')
+
+        report['error_type'] = 'oe-selftest'
+
+        failure = {}
+        failure['package'] = 'oe-selftest'
+        failure['task'] = self.command[self.command.find('oe-selftest'):]
+        failure['log'] = log
+
+        report['failures'] = [failure]
+
+        return report
+
+    def commandComplete(self, cmd):
+        if cmd.didFail():
+            buildername = self.getProperty('buildername')
+            buildnumber = self.getProperty('buildnumber')
+
+            log = cmd.logs['stdio'].getText()
+
+            report = self._createOESelftestErrorReport(log)
+            save_error_report(buildername, buildnumber, report, 'oe_selftest')
+
-- 
2.1.4


