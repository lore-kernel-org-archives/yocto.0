Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C3D3E009F4; Tue, 21 Jun 2016 16:08:10 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48090E009CB
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2016 16:08:08 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 21 Jun 2016 16:08:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,507,1459839600"; d="scan'208";a="1002631807"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.159])
	by orsmga002.jf.intel.com with ESMTP; 21 Jun 2016 16:08:08 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 21 Jun 2016 18:07:39 -0500
Message-Id: <1466550472-1365-3-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1466550472-1365-1-git-send-email-anibal.limon@linux.intel.com>
References: <1466550472-1365-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: joshua.g.lock@intel.com
Subject: [[yocto-autobuilder][PATCHv2] 02/15] lib/buildsteps.py: Add BitbakeLogLineObserver for BitbakeShellCommands.
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

The BitbakeLogLineObserver look into stdio output of bitbake process and
identify for exception/errors into log,

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 .../site-packages/autobuilder/lib/buildsteps.py    | 51 ++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py b/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
index 4f15dcf..9822b3c 100644
--- a/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
+++ b/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
@@ -11,8 +11,10 @@ __email__ = "anibal.limon@linux.intel.com"
 '''
 
 import os
+import re
 
 from buildbot.steps.shell import ShellCommand
+from buildbot.process.buildstep import LogLineObserver
 
 DEFAULT_SHELL = 'bash'
 
@@ -42,6 +44,55 @@ class ShellCommandCleanEnv(ShellCommand):
 
         return "env -i %s %s -c " % (pe_cmd, shell)
 
+class BitbakeLogLineObserver(LogLineObserver):
+    """
+        Search in the stdio bitbake log for exception/errors, identify
+        if the error is a recipe/task one if not turn on the flag of
+        bitbake error/exception and save the log.
+    """
+
+    rexp_error = re.compile("^ERROR: .*$")
+
+    # recipe task errors regex'es
+    rexp_pnpv_error = re.compile("^ERROR: (?P<pnpv>.*) do_(?P<task>.*):.*$")
+    rexp_task_error = re.compile("^ERROR: Task .*$")
+    rexp_log_error = re.compile("^ERROR: Logfile of failure stored in: "\
+            "(?P<path>.*)$")
+
+    def _handleError(self, line):
+        if not hasattr(self.step, 'errors'):
+            self.step.errors = {}
+            self.step.errors['bitbake'] = False
+            self.step.errors['log'] = []
+
+        # save all the log for be able to get report variables like
+        # machine, target, distro, etc
+        self.step.errors['log'].append(line)
+
+        # discard line that are not errors and line that
+        # is recipe task errors
+        if (not self.rexp_error.match(line)) or \
+                self.rexp_pnpv_error.match(line) or \
+                self.rexp_task_error.match(line) or \
+                self.rexp_log_error.match(line):
+            return
+
+        # if not match recipe task type is a bitbake exception/error
+        self.step.errors['bitbake'] = True
+
+    def outLineReceived(self, line):
+        self._handleError(line)
+
+    def errLineReceived(self, line):
+        self._handleError(line)
+
 class BitbakeShellCommand(ShellCommand):
     def __init__(self, factory, argdict=None, **kwargs):
         super(BitbakeShellCommand, self).__init__(**kwargs)
+
+        self.stdio_observer = BitbakeLogLineObserver()
+        self.addLogObserver('stdio', self.stdio_observer)
+
+    def commandComplete(self, cmd):
+        if cmd.didFail():
+            pass
-- 
2.1.4


