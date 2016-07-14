Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E9E8E00EC4; Thu, 14 Jul 2016 10:06:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E29EBE00E98
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2016 10:06:17 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 14 Jul 2016 10:06:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,363,1464678000"; d="scan'208";a="1016960735"
Received: from wcrandle-mobl1.amr.corp.intel.com (HELO
	wcrandle-mobl1.jf.intel.com) ([10.7.199.71])
	by orsmga002.jf.intel.com with ESMTP; 14 Jul 2016 10:06:12 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Jul 2016 10:05:50 -0700
Message-Id: <1468515952-12949-3-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <1468515952-12949-1-git-send-email-william.c.randle@intel.com>
References: <1468515952-12949-1-git-send-email-william.c.randle@intel.com>
Subject: [yocto-autobuilder][PATCH 2/4] BuildImages.py: build toaster eventlog only when requested
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
X-List-Received-Date: Thu, 14 Jul 2016 17:06:29 -0000

Qualify creation of the toaster eventlog based on the setting of the new
'custom_create_eventlog' property. Place the eventlog in build/tmp/log,
instead of build and add a timestamp to the eventlog filename since
multiple event logs can be generated during a multi-image buildset and
otherwise only the last one would otherwise be saved.

[YOCTO #9884]

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
 .../autobuilder/buildsteps/BuildImages.py          | 24 +++++++++++++++++-----
 1 file changed, 19 insertions(+), 5 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
index 7ef8aab..9ea350f 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
@@ -15,7 +15,7 @@ from buildbot.steps.shell import ShellCommand
 from buildbot.process.buildstep import LogLineObserver
 from distutils.version import StrictVersion
 from buildbot.status.results import SUCCESS, SKIPPED
-import os
+import os, datetime
 
 from lib.buildsteps import BitbakeShellCommand
 
@@ -47,8 +47,23 @@ class BuildImages(BitbakeShellCommand):
             self.deploycheck = self.getProperty('custom_deploy_artifacts')
         except:
             self.deploycheck = "True"
+
+        # the eventlog capability exists only in bitbake 1.25 and newer
+        self.create_eventlog = "False"
+        if self.getProperty('bitbakeversion') \
+           and StrictVersion(self.getProperty('bitbakeversion')) >= StrictVersion("1.25"):
+            try:
+                self.create_eventlog = self.getProperty("custom_create_eventlog")
+                if self.create_eventlog == "True":
+                    timestamp = datetime.datetime.now().strftime("%Y%m%d%H%M%S")
+                    self.eventlog_name = "tmp/log/bitbake_eventlog-%s.json" % timestamp
+            except:
+                pass
+
         if self.images == "#TOASTER":
-            bitbakeflags = "-k -w 'bitbake_eventlog.json' "
+            bitbakeflags = "-k "
+            if self.create_eventlog == "True":
+                bitbakeflags += "-w '" + self.eventlog_name + "' "
             self.images=self.getProperty("custom_images")
             self.command = ". ./oe-init-build-env; bitbake " + bitbakeflags + self.images
             self.description = ["Building " + str(self.images)]
@@ -130,9 +145,8 @@ class BuildImages(BitbakeShellCommand):
                 self.description = ["Skipping Build. No Images to be built"]
             else:
                 bitbakeflags = "-k "
-                # -w only exists in bitbake 1.25 and newer, use distroversion string and make sure we're on poky >1.7
-                if self.getProperty('bitbakeversion') and StrictVersion(self.getProperty('bitbakeversion')) >= StrictVersion("1.25"):
-                    bitbakeflags += "-w 'bitbake_eventlog.json' "
+                if self.create_eventlog == "True":
+                    bitbakeflags += "-w '" + self.eventlog_name + "' "
                 if self.minnowExists is None or self.minnowExists == "True":
                     self.command = ". ./oe-init-build-env; bitbake " + bitbakeflags + self.images
                     self.description = ["Building " + str(self.images)]
-- 
2.5.5


