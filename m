Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3CBCDE009CE; Tue, 21 Jun 2016 16:08:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	T_FILL_THIS_FORM_SHORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99A5EE009C9
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2016 16:08:07 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 21 Jun 2016 16:08:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,507,1459839600"; d="scan'208";a="1002631801"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.159])
	by orsmga002.jf.intel.com with ESMTP; 21 Jun 2016 16:08:06 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 21 Jun 2016 18:07:38 -0500
Message-Id: <1466550472-1365-2-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1466550472-1365-1-git-send-email-anibal.limon@linux.intel.com>
References: <1466550472-1365-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: joshua.g.lock@intel.com
Subject: [[yocto-autobuilder][PATCHv2] 01/15] lib/buildsteps.py: Add BitbakeShellCommand class
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
X-List-Received-Date: Tue, 21 Jun 2016 23:08:09 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The BitbakeShellCommand is a new class for store common methods when
is aim to run bitbake inside an step.

Also don't call directly the ShellCommand constructur use super to be
able for call the parent constructor no matter what is this enables
to call BitbakeShellCommand constructor.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py  | 7 +++++--
 .../site-packages/autobuilder/buildsteps/BuildToolchainImages.py   | 7 +++++--
 .../site-packages/autobuilder/buildsteps/GetBitbakeVersion.py      | 6 ++++--
 .../site-packages/autobuilder/buildsteps/RunESDKSanityTests.py     | 6 ++++--
 .../site-packages/autobuilder/buildsteps/RunSDKSanityTests.py      | 6 ++++--
 .../site-packages/autobuilder/buildsteps/RunSanityTests.py         | 6 ++++--
 lib/python2.7/site-packages/autobuilder/lib/buildsteps.py          | 5 +++++
 7 files changed, 31 insertions(+), 12 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
index 0cdd2ef..7ef8aab 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
@@ -17,7 +17,9 @@ from distutils.version import StrictVersion
 from buildbot.status.results import SUCCESS, SKIPPED
 import os
 
-class BuildImages(ShellCommand):
+from lib.buildsteps import BitbakeShellCommand
+
+class BuildImages(BitbakeShellCommand):
     haltOnFailure = False
     flunkOnFailure = True
     name = "BuildImages"
@@ -32,7 +34,8 @@ class BuildImages(ShellCommand):
         # Timeout needs to be passed to LoggingBuildStep as a kwarg
         self.timeout = 100000
         kwargs['timeout']=self.timeout
-        ShellCommand.__init__(self, **kwargs)
+        super(BuildImages, self).__init__(factory, argdict=None,
+                **kwargs)
 
     def start(self):
         self.localconf = self.getProperty("LOCALCONF")
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildToolchainImages.py b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildToolchainImages.py
index 89402cd..5a540bf 100644
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
@@ -29,7 +31,8 @@ class BuildToolchainImages(ShellCommand):
         # Timeout needs to be passed to LoggingBuildStep as a kwarg
         self.timeout = 100000
         kwargs['timeout']=self.timeout
-        ShellCommand.__init__(self, **kwargs)
+        super(BuildToolchainImages, self).__init__(factory, argdict=None,
+                **kwargs)
 
     def start(self):
         layerversion = self.getProperty("layerversion_core")
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/GetBitbakeVersion.py b/lib/python2.7/site-packages/autobuilder/buildsteps/GetBitbakeVersion.py
index 6eb1e21..6123343 100644
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
@@ -27,7 +29,7 @@ class GetBitbakeVersion(ShellCommand):
         self.workerworkdir=os.path.join(os.path.join(YOCTO_ABBASE, "yocto-worker"))
         for k, v in argdict.iteritems():
             setattr(self, k, v)
-        ShellCommand.__init__(self, **kwargs)
+        super(GetBitbakeVersion, self).__init__(factory, argdict=None, **kwargs)
 
     def start(self):
         buildername=self.getProperty("buildername")
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunESDKSanityTests.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunESDKSanityTests.py
index f0bddeb..7471d3d 100644
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
@@ -39,7 +41,7 @@ class RunESDKSanityTests(ShellCommand):
             setattr(self, k, v)
         self.description = "Running SDK Sanity Tests"
         kwargs['timeout']=self.timeout
-        ShellCommand.__init__(self, **kwargs)
+        super(RunESDKSanityTests, self).__init__(factory, argdict=None, **kwargs)
 
     def start(self):
         layerversion = self.getProperty("layerversion_core")
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunSDKSanityTests.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunSDKSanityTests.py
index 344dfd4..9b6eb5b 100644
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
@@ -39,7 +41,7 @@ class RunSDKSanityTests(ShellCommand):
             setattr(self, k, v)
         self.description = "Running SDK Sanity Tests"
         kwargs['timeout']=self.timeout
-        ShellCommand.__init__(self, **kwargs)
+        super(RunSDKSanityTests, self).__init__(factory, argdict=None, **kwargs)
 
     def start(self):
         layerversion = self.getProperty("layerversion_core")
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py
index aeb02b1..4fa6dac 100644
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
@@ -39,7 +41,7 @@ class RunSanityTests(ShellCommand):
             setattr(self, k, v)
         self.description = "Running Sanity Tests"
         kwargs['timeout']=self.timeout
-        ShellCommand.__init__(self, **kwargs)
+        super(RunSanityTests, self).__init__(factory, argdict=None, **kwargs)
 
     def start(self):
         layerversion = self.getProperty("layerversion_core")
diff --git a/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py b/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
index 3693a7a..4f15dcf 100644
--- a/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
+++ b/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
@@ -11,6 +11,7 @@ __email__ = "anibal.limon@linux.intel.com"
 '''
 
 import os
+
 from buildbot.steps.shell import ShellCommand
 
 DEFAULT_SHELL = 'bash'
@@ -40,3 +41,7 @@ class ShellCommandCleanEnv(ShellCommand):
             pe_cmd += "%s=\"$%s\" " % (pe, pe)
 
         return "env -i %s %s -c " % (pe_cmd, shell)
+
+class BitbakeShellCommand(ShellCommand):
+    def __init__(self, factory, argdict=None, **kwargs):
+        super(BitbakeShellCommand, self).__init__(**kwargs)
-- 
2.1.4


