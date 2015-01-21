Return-Path: <brendan.le.foll@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2CF8E008E5; Wed, 21 Jan 2015 03:09:04 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11761E00894
	for <yocto@yoctoproject.org>; Wed, 21 Jan 2015 03:09:00 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 21 Jan 2015 03:08:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,441,1418112000"; d="scan'208";a="654205427"
Received: from unknown (HELO jupiter.iwi.intel.com) ([172.28.33.58])
	by fmsmga001.fm.intel.com with ESMTP; 21 Jan 2015 03:08:58 -0800
From: brendan.le.foll@intel.com
To: yocto@yoctoproject.org
Date: Wed, 21 Jan 2015 11:08:29 +0000
Message-Id: <1421838509-29830-2-git-send-email-brendan.le.foll@intel.com>
X-Mailer: git-send-email 2.2.1
In-Reply-To: <1421838509-29830-1-git-send-email-brendan.le.foll@intel.com>
References: <1421838509-29830-1-git-send-email-brendan.le.foll@intel.com>
Subject: [autobuilder][PATCH 2/2] BuildImages.py: Make -w flag depend on bitbake version check
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

Because bitbake -w flag does not exist in verisons of bitbake prior to 1.25
BuildImages.py is broken for anything older like daisy, adding this check means
that -w will only be applied if the GetBitbakeVersion step has been run.

Signed-off-by: Brendan Le Foll <brendan.le.foll@intel.com>
---
 lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
index 31a29a8..bf1ac5e 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
@@ -13,6 +13,7 @@ __email__ = "elizabeth.flanagan@intel.com"
 
 from buildbot.steps.shell import ShellCommand
 from buildbot.process.buildstep import LogLineObserver
+from distutils.version import StrictVersion
 import os
 
 class BuildImages(ShellCommand):
@@ -47,7 +48,11 @@ class BuildImages(ShellCommand):
         if self.layerversion_yoctobsp is not None and int(self.layerversion_yoctobsp) < 2 and self.machine is not None and self.machine == "genericx86-64":
             self.command = "echo 'Skipping Step.'"
         else:
-            self.command = ". ./oe-init-build-env; bitbake -w -k " + self.images
+            bitbakeflags = "-k "
+            # -w only exists in bitbake 1.25 and newer, use distroversion string and make sure we're on poky >1.7
+            if self.getProperty('bitbakeversion') and StrictVersion(self.getProperty('bitbakeversion')) >= StrictVersion("1.25"):
+                bitbakeflags += "-w "
+            self.command = ". ./oe-init-build-env; bitbake " + bitbakeflags + self.images
             self.description = ["Building " + str(self.images)]
         ShellCommand.start(self)
 
-- 
2.2.1


