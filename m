Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15F52E00951; Mon, 29 Feb 2016 16:36:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	T_FILL_THIS_FORM_SHORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B75BBE008EE
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 16:36:48 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP; 29 Feb 2016 16:36:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,521,1449561600"; d="scan'208";a="661487103"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.54])
	by FMSMGA003.fm.intel.com with ESMTP; 29 Feb 2016 16:36:47 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 29 Feb 2016 18:36:52 -0600
Message-Id: <1456792612-28764-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Subject: [PATCH][autobuilder] lib/buildsteps.py: Add BitbakeShellCommand class for dump bitbake logs
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
X-List-Received-Date: Tue, 01 Mar 2016 00:36:52 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The BitbakeShellCommand is a new class for store common methods when
is aim to run bitbake inside an step.

This commit overrides commandComplete method for search in bitbake
stdout if ERROR exists and if found then open the bitbake log and
dumps into new bitbake_logs output.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 .../autobuilder/buildsteps/BuildImages.py          |  4 +++-
 .../autobuilder/buildsteps/BuildToolchainImages.py |  4 +++-
 .../autobuilder/buildsteps/GetBitbakeVersion.py    |  4 +++-
 .../autobuilder/buildsteps/RunESDKSanityTests.py   |  4 +++-
 .../autobuilder/buildsteps/RunSDKSanityTests.py    |  4 +++-
 .../autobuilder/buildsteps/RunSanityTests.py       |  4 +++-
 .../site-packages/autobuilder/lib/buildsteps.py    | 28 ++++++++++++++++++++++
 7 files changed, 46 insertions(+), 6 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
index 4987ef3..5ed6e1a 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
@@ -17,7 +17,9 @@ from distutils.version import StrictVersion
 from buildbot.status.results import SUCCESS
 import os
 
-class BuildImages(ShellCommand):
+from lib.buildsteps import BitbakeShellCommand
+
+class BuildImages(BitbakeShellCommand):
     haltOnFailure = False
     flunkOnFailure = True
     name = "BuildImages"
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildToolchainImages.py b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildToolchainImages.py
index 51069c2..0594ac2 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildToolchainImages.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildToolchainImages.py
@@ -15,7 +15,9 @@ from buildbot.steps.shell import ShellCommand
 from buildbot.process.buildstep import LogLineObserver
 import os
 
-class BuildToolchainImages(ShellCommand):
+from lib.buildsteps import BitbakeShellCommand
+
+class BuildToolchainImages(BitbakeShellCommand):
     haltOnFailure = False
     flunkOnFailure = True
     name = "Building Toolchain Images"
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/GetBitbakeVersion.py b/lib/python2.7/site-packages/autobuilder/buildsteps/GetBitbakeVersion.py
index dc6c25b..94b5efe 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/GetBitbakeVersion.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/GetBitbakeVersion.py
@@ -16,7 +16,9 @@ from buildbot.process.properties import WithProperties
 from twisted.python import log
 from autobuilder.config import *
 
-class GetBitbakeVersion(ShellCommand):
+from lib.buildsteps import BitbakeShellCommand
+
+class GetBitbakeVersion(BitbakeShellCommand):
     haltOnFailure = False
     flunkOnFailure = False
     name = "GetBitbakeVersion"
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunESDKSanityTests.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunESDKSanityTests.py
index e3df6c8..f2817d4 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/RunESDKSanityTests.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunESDKSanityTests.py
@@ -16,7 +16,9 @@ from buildbot.status.results import SUCCESS, FAILURE
 from twisted.python import log as tlog
 import os, re
 
-class RunESDKSanityTests(ShellCommand):
+from lib.buildsteps import BitbakeShellCommand
+
+class RunESDKSanityTests(BitbakeShellCommand):
 
     haltOnFailure = False
     flunkOnFailure = True
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunSDKSanityTests.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunSDKSanityTests.py
index cc0321f..1eeb4d3 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/RunSDKSanityTests.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunSDKSanityTests.py
@@ -16,7 +16,9 @@ from buildbot.status.results import SUCCESS, FAILURE
 from twisted.python import log as tlog
 import os, re
 
-class RunSDKSanityTests(ShellCommand):
+from lib.buildsteps import BitbakeShellCommand
+
+class RunSDKSanityTests(BitbakeShellCommand):
 
     haltOnFailure = False
     flunkOnFailure = True
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py
index 62f04af..15a714c 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py
@@ -16,7 +16,9 @@ from buildbot.status.results import SUCCESS, FAILURE
 from twisted.python import log as tlog
 import os, re
 
-class RunSanityTests(ShellCommand):
+from lib.buildsteps import BitbakeShellCommand
+
+class RunSanityTests(BitbakeShellCommand):
 
     haltOnFailure = False
     flunkOnFailure = True
diff --git a/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py b/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
index 3693a7a..4d2787d 100644
--- a/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
+++ b/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
@@ -11,6 +11,8 @@ __email__ = "anibal.limon@linux.intel.com"
 '''
 
 import os
+import re
+
 from buildbot.steps.shell import ShellCommand
 
 DEFAULT_SHELL = 'bash'
@@ -40,3 +42,29 @@ class ShellCommandCleanEnv(ShellCommand):
             pe_cmd += "%s=\"$%s\" " % (pe, pe)
 
         return "env -i %s %s -c " % (pe_cmd, shell)
+
+class BitbakeShellCommand(ShellCommand):
+    def commandComplete(self, cmd):
+        if cmd.didFail():
+            log = self.addLog('bitbake_logs')
+            paths_displayed = []
+
+            rexp = re.compile("^ERROR: Logfile of failure stored in: (.*)$")
+            out = cmd.logs['stdio'].getText()
+            for line in out.split('\n'):
+                m = rexp.match(line)
+                if m:
+                    path = m.group(1)
+
+                    if path in paths_displayed:
+                        continue
+
+                    paths_displayed.append(path)
+
+                    log.addStdout("Output of: %s\n" % path)
+                    with open(path, "r") as f:
+                        log.addStdout(f.read())
+                    log.addStdout("End output of: %s\n" % path)
+                    log.addStdout("\n\n\n\n")
+            log.finish()
+
-- 
2.1.4


