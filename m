Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25E89E00AF7
	for <yocto@yoctoproject.org>; Mon, 10 Mar 2014 11:18:04 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 10 Mar 2014 11:18:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,625,1389772800"; d="scan'208";a="495624889"
Received: from qana.jf.intel.com ([10.7.201.148])
	by fmsmga002.fm.intel.com with ESMTP; 10 Mar 2014 11:17:47 -0700
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id 9006A5F82890; Mon, 10 Mar 2014 11:14:24 -0700 (PDT)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 10 Mar 2014 11:14:22 -0700
Message-Id: <1394475262-12061-1-git-send-email-elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
Subject: [AUTOBUILDER][PATCH] BuildImages.py: core-image-basic name change support
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
X-List-Received-Date: Mon, 10 Mar 2014 18:18:07 -0000

Supports http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=b7f1cca517bbd4191828c6bae32e0c5041f1ff19

Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
---
 .../site-packages/autobuilder/buildsteps/BuildImages.py          | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
index 2dc72dd..664b65b 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
@@ -34,7 +34,16 @@ class BuildImages(ShellCommand):
 
     def start(self):
         self.layerversion_yoctobsp = self.getProperty("layerversion_yoctobsp")
+        self.layerversion_core = self.getProperty("layerversion_core")
         self.machine = self.getProperty("MACHINE")
+        # core-image-basic rename
+        # See: http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=b7f1cca517bbd4191828c6bae32e0c5041f1ff19
+        # I hate making people change their configs, so support both.
+        if self.layerversion_core < "4":
+            self.images.replace("core-image-full-cmdline", "core-image-basic")
+        elif self.layerversion_core > "3":
+            self.images.replace("core-image-basic", "core-image-full-cmdline")
+
         if self.layerversion_yoctobsp is not None and int(self.layerversion_yoctobsp) < 2 and self.machine is not None and self.machine == "genericx86-64":
             self.command = "echo 'Skipping Step.'"
         else:
-- 
1.8.1.2


