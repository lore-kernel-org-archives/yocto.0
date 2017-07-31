Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C1EDE00C2E; Mon, 31 Jul 2017 14:23:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE92CE00BAF
	for <yocto@yoctoproject.org>; Mon, 31 Jul 2017 14:23:44 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	31 Jul 2017 14:23:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,304,1498546800"; d="scan'208";a="114038009"
Received: from pequod.jf.intel.com ([10.54.74.4])
	by orsmga004.jf.intel.com with ESMTP; 31 Jul 2017 14:23:44 -0700
From: Stephano Cetola <stephano.cetola@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 31 Jul 2017 14:23:01 -0700
Message-Id: <20170731212301.19570-1-stephano.cetola@linux.intel.com>
X-Mailer: git-send-email 2.13.3
Subject: [yocto-autobuilder][PATCH V2] buildsteps: add bblayers modification step
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
X-List-Received-Date: Mon, 31 Jul 2017 21:23:45 -0000

Take a list of pairs of layer substitutions: (current, replacement)
and replace each entry's current layer with the replacement layer.
The replacement parameter may include #YPDIR which will be
substituted for the full path of the poky checkout.

[YOCTO #11745 ]

Signed-off-by: Stephano Cetola <stephano.cetola@linux.intel.com>
---
 .../autobuilder/buildsteps/ModBBLayersConf.py      | 40 ++++++++++++++++++++++
 1 file changed, 40 insertions(+)
 create mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps/ModBBLayersConf.py

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/ModBBLayersConf.py b/lib/python2.7/site-packages/autobuilder/buildsteps/ModBBLayersConf.py
new file mode 100644
index 000000000..5e9a7f22b
--- /dev/null
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/ModBBLayersConf.py
@@ -0,0 +1,40 @@
+'''
+Created on July 24, 2017
+
+__author__ = "Stephano Cetola"
+__copyright__ = "Copyright 2017, Intel Corp."
+__credits__ = ["Stephano Cetola"]
+__license__ = "GPL"
+__version__ = "2.0"
+__maintainer__ = "Stephano Cetola"
+__email__ = "stephano.cetola@linux.intel.com"
+'''
+
+from buildbot.steps.shell import ShellCommand
+from twisted.python import log
+import os
+
+class ModBBLayersConf(ShellCommand):
+    haltOnFailure = True
+    flunkOnFailure = True
+    name = "Modify BBLayers Configuration"
+    def __init__(self, factory, argdict=None, **kwargs):
+        self.factory = factory
+        for k, v in argdict.iteritems():
+            setattr(self, k, v)
+        self.description = "Modify BBLayers Configuration"
+        ShellCommand.__init__(self, **kwargs)
+
+    def start(self):
+        builddir = os.path.join(self.getProperty('builddir'), 'build')
+        bblayers = "%s/build/conf/bblayers.conf" % builddir
+        cmd = 'echo "Not configured"'
+        if self.sub:
+            cmd = ""
+            for mod in self.sub:
+                tgt, rep = mod
+                rep = rep.replace("#YPDIR", builddir)
+                cmd = cmd + "sed -i 's|.*%s .*|%s \\\\|' %s;" % (tgt, rep, bblayers)
+
+        self.command = cmd
+        ShellCommand.start(self)
-- 
2.13.3


