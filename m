Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66563E00A39; Thu, 27 Jul 2017 09:34:52 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C44E3E00944
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 09:34:51 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	27 Jul 2017 09:34:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,421,1496127600"; d="scan'208";a="997900772"
Received: from pequod.jf.intel.com ([10.54.74.4])
	by orsmga003.jf.intel.com with ESMTP; 27 Jul 2017 09:34:50 -0700
From: Stephano Cetola <stephano.cetola@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 27 Jul 2017 09:34:04 -0700
Message-Id: <20170727163404.50268-1-stephano.cetola@linux.intel.com>
X-Mailer: git-send-email 2.13.3
Subject: [yocto-autobuilder][PATCH] buildsteps: add bblayers modification step
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
X-List-Received-Date: Thu, 27 Jul 2017 16:34:52 -0000

This step is currently only applicable to refkit. It allows us to
replace oe-core and oe-selftest layers in their bblayers.conf with
those layers that we are currently testing.

In the future, we may be able to improve this to replace layer "x"
with layer "y" dynamically, however that presents several challenges
outside the scope of this work.

[YOCTO #11745 ]

Signed-off-by: Stephano Cetola <stephano.cetola@linux.intel.com>
---
 .../autobuilder/buildsteps/ModBBLayersConf.py      | 35 ++++++++++++++++++++++
 1 file changed, 35 insertions(+)
 create mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps/ModBBLayersConf.py

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/ModBBLayersConf.py b/lib/python2.7/site-packages/autobuilder/buildsteps/ModBBLayersConf.py
new file mode 100644
index 000000000..513e8a15a
--- /dev/null
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/ModBBLayersConf.py
@@ -0,0 +1,35 @@
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
+        workdir = self.getProperty("workdir")
+        bblayers = "%s/build/build/conf/bblayers.conf" % workdir
+        yoctodir = "%s/build/meta \\\\" % workdir 
+        selftestdir = "%s/build/meta-selftest \\\\" % workdir
+        cmd1 = "sed -i 's|.*openembedded-core/meta .*|%s|' %s" % (yoctodir, bblayers)
+        cmd2 = "sed -i 's|.*openembedded-core/meta-selftest.*|%s|' %s" % (selftestdir, bblayers)
+        self.command = "%s;%s" % (cmd1, cmd2)
+        ShellCommand.start(self)
-- 
2.13.3


