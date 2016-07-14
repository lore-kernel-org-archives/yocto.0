Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3AAB4E00E98; Thu, 14 Jul 2016 10:06:29 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE892E00E88
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2016 10:06:17 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 14 Jul 2016 10:06:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,363,1464678000"; d="scan'208";a="1016960791"
Received: from wcrandle-mobl1.amr.corp.intel.com (HELO
	wcrandle-mobl1.jf.intel.com) ([10.7.199.71])
	by orsmga002.jf.intel.com with ESMTP; 14 Jul 2016 10:06:15 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Jul 2016 10:05:51 -0700
Message-Id: <1468515952-12949-4-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <1468515952-12949-1-git-send-email-william.c.randle@intel.com>
References: <1468515952-12949-1-git-send-email-william.c.randle@intel.com>
Subject: [yocto-autobuilder][PATCH 3/4] UploadToasterEventlog.py: handle multiple eventlog files
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

Now that multiple eventlog files can be generated, upload thyem all. Also,
only upload files in user requested an eventlog be generated.

[YOCTO #9884]

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
 .../autobuilder/buildsteps/UploadToasterEventlog.py      | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/UploadToasterEventlog.py b/lib/python2.7/site-packages/autobuilder/buildsteps/UploadToasterEventlog.py
index ed1cb1c..0fbb899 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/UploadToasterEventlog.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/UploadToasterEventlog.py
@@ -34,17 +34,23 @@ class UploadToasterEventlog(ShellCommand):
         self.workerdir=os.path.join(os.path.join(YOCTO_ABBASE, "yocto-worker"))
         self.buildername=self.getProperty("buildername")
         self.layerversion_core = self.getProperty("layerversion_core")
-        self.filepath=os.path.join(os.path.join(
-                            self.workerdir, self.buildername),
-                            "build/build/bitbake_eventlog.json")
+        try:
+            self.create_eventlog = self.getProperty("custom_create_eventlog")
+        except:
+            self.create_eventlog = "False"
 
-        if int(self.layerversion_core) < 5:
+        if int(self.layerversion_core) < 5 or self.create_eventlog == "False":
             self.command = "echo 'Skipping Step.'"
         else:
             if os.environ.get('TOASTER_UPLOAD_URL') is not None:
+                self.filepath = os.path.join(os.path.join(
+                                self.workerdir, self.buildername),
+                                "build/build/tmp/log/bitbake_eventlog-*.json")
                 self.toasterserver = str(os.environ.get('TOASTER_UPLOAD_URL'))
 
-                self.command = "curl -F eventlog=@" + self.filepath + " " + self.toasterserver
+                self.command = "for fn in %s; do " % self.filepath
+                self.command += "curl -F eventlog=@$fn " + self.toasterserver + ";"
+                self.command += "done"
             else:
                 self.command = "echo environment var TOASTER_UPLOADURL not set - Step is noop"
             self.description = ["Uploading toaster data"]
-- 
2.5.5


