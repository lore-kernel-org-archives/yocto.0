Return-Path: <mihaix.lindner@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCA67E01479
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2013 01:09:08 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 19 Sep 2013 01:08:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,935,1371106800"; d="scan'208";a="404011723"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga002.fm.intel.com with ESMTP; 19 Sep 2013 01:08:38 -0700
Received: from mlindnex-mobl1.ger.corp.intel.com (unknown [10.237.105.140])
	by linux.intel.com (Postfix) with ESMTP id B48526A4007;
	Thu, 19 Sep 2013 01:08:35 -0700 (PDT)
From: Mihai Lindner <mihaix.lindner@linux.intel.com>
To: elizabeth.flanagan@intel.com,
	yocto@yoctoproject.org
Date: Thu, 19 Sep 2013 11:07:43 +0300
Message-Id: <1379578063-14038-1-git-send-email-mihaix.lindner@linux.intel.com>
X-Mailer: git-send-email 1.8.3.2
Subject: [PATCH] [yocto-autobuilder] BuildImages: fix description
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
X-List-Received-Date: Thu, 19 Sep 2013 08:09:08 -0000

The description of shell commands is printed as a list of characters
separated by spaces.
The description needs to be in a list, when it's set after
ShellCommand.__init__().

Signed-off-by: Mihai Lindner <mihaix.lindner@linux.intel.com>
---
 lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
index 0a9c3fc..3063bef 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
@@ -39,7 +39,7 @@ class BuildImages(ShellCommand):
             self.command = "echo 'Skipping Step.'"
         else:
             self.command = ". ./oe-init-build-env; bitbake " + self.images
-            self.description = "Building " + str(self.images)
+            self.description = ["Building " + str(self.images)]
         ShellCommand.start(self)
 
     def describe(self, done=False):
-- 
1.8.3.2


