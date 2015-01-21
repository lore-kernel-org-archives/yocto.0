Return-Path: <brendan.le.foll@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4D02E008CF; Wed, 21 Jan 2015 03:09:04 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10006E00873
	for <yocto@yoctoproject.org>; Wed, 21 Jan 2015 03:08:52 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 21 Jan 2015 03:08:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,441,1418112000"; d="scan'208";a="654205393"
Received: from unknown (HELO jupiter.iwi.intel.com) ([172.28.33.58])
	by fmsmga001.fm.intel.com with ESMTP; 21 Jan 2015 03:08:51 -0800
From: brendan.le.foll@intel.com
To: yocto@yoctoproject.org
Date: Wed, 21 Jan 2015 11:08:28 +0000
Message-Id: <1421838509-29830-1-git-send-email-brendan.le.foll@intel.com>
X-Mailer: git-send-email 2.2.1
Subject: [autobuilder][PATCH 1/2] GetBitbakeVersion.py: add buildstep to get the version of bitbake
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
X-List-Received-Date: Wed, 21 Jan 2015 11:09:04 -0000

From: Brendan Le Foll <brendan.le.foll@intel.com>

This step allows people to use the property 'bitbakeversion' in their
buildsteps which is useful before running bitbake to check what flags will be
supported.

Signed-off-by: Brendan Le Foll <brendan.le.foll@intel.com>
---
 docs/YoctoAutobuilderDevelopersDocument.html       | 11 +++++
 .../autobuilder/buildsteps/GetBitbakeVersion.py    | 49 ++++++++++++++++++++++
 2 files changed, 60 insertions(+)
 create mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps/GetBitbakeVersion.py

diff --git a/docs/YoctoAutobuilderDevelopersDocument.html b/docs/YoctoAutobuilderDevelopersDocument.html
index 8a2747b..e583dea 100644
--- a/docs/YoctoAutobuilderDevelopersDocument.html
+++ b/docs/YoctoAutobuilderDevelopersDocument.html
@@ -1500,6 +1500,17 @@
                 </tr>
                 <tr class="c3">
                     <td class="c24" colspan="1" rowspan="1">
+                        <p class="c0"><span class="c9">GetBitbakeVersion</span></p>
+                    </td>
+                    <td class="c5" colspan="1" rowspan="1">
+                        <p class="c0"><span class="c9">Gets the version of bitbake being used. This is used by BuildImages.</span></p>
+                    </td>
+                    <td class="c21" colspan="1" rowspan="1">
+                        <p class="c0"><span class="c9">&quot;bitbakeversion&quot;: string</span></p>
+                    </td>
+                </tr>
+                <tr class="c3">
+                    <td class="c24" colspan="1" rowspan="1">
                         <p class="c0"><span class="c9">GetDistroVersion</span></p>
                     </td>
                     <td class="c5" colspan="1" rowspan="1">
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/GetBitbakeVersion.py b/lib/python2.7/site-packages/autobuilder/buildsteps/GetBitbakeVersion.py
new file mode 100644
index 0000000..dc6c25b
--- /dev/null
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/GetBitbakeVersion.py
@@ -0,0 +1,49 @@
+'''
+Created on January 20th, 2015
+
+__author__ = "Brendan Le Foll"
+__copyright__ = "Copyright 2015, Intel Corp."
+__credits__ = ["Brendan Le Foll"]
+__license__ = "GPL"
+__version__ = "2.0"
+__maintainer__ = "Elizabeth Flanagan"
+__email__ = "elizabeth.flanagan at intel.com"
+'''
+from buildbot.steps.shell import ShellCommand
+from buildbot.status import progress
+from buildbot.status.results import SUCCESS, FAILURE, WARNINGS
+from buildbot.process.properties import WithProperties
+from twisted.python import log
+from autobuilder.config import *
+
+class GetBitbakeVersion(ShellCommand):
+    haltOnFailure = False
+    flunkOnFailure = False
+    name = "GetBitbakeVersion"
+    def __init__(self, factory, argdict=None, **kwargs):
+        for k, v in argdict.iteritems():
+            setattr(self, k, v)
+        self.description = "Get Bitbake Version"
+        self.workerworkdir=os.path.join(os.path.join(YOCTO_ABBASE, "yocto-worker"))
+        for k, v in argdict.iteritems():
+            setattr(self, k, v)
+        ShellCommand.__init__(self, **kwargs)
+
+    def start(self):
+        buildername=self.getProperty("buildername")
+
+        self.command = '. ./oe-init-build-env; bitbake --version'
+        ShellCommand.start(self)
+
+    def commandComplete(self, cmd):
+        result = cmd.logs['stdio'].getText()
+        
+        bitbakev= result.split()[-1]
+        log.msg("Bitbake version: " + bitbakev)
+        if cmd.didFail():
+           bitbakev = "1"
+        self.setProperty('bitbakeversion', bitbakev, "Setting Bitbake Version")
+        self.finished(SUCCESS)
+
+    def getText(self, cmd, results):
+        return ShellCommand.getText(self, cmd, results)
-- 
2.2.1


