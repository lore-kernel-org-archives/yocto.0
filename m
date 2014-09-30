Return-Path: <californialsullivan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 590F0E00876; Tue, 30 Sep 2014 09:59:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00, DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,NML_ADSP_CUSTOM_MED autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (californialsullivan[at]gmail.com)
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.9 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AA00E0034C
	for <yocto@yoctoproject.org>; Tue, 30 Sep 2014 09:59:45 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP; 30 Sep 2014 09:57:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,627,1406617200"; d="scan'208";a="581376891"
Received: from sullical-studio-xps-9100.jf.intel.com (HELO
	sullical-Studio-XPS-9100) ([10.7.198.172])
	by orsmga001.jf.intel.com with SMTP; 30 Sep 2014 09:59:43 -0700
Received: by sullical-Studio-XPS-9100 (sSMTP sendmail emulation);
	Tue, 30 Sep 2014 10:02:17 -0700
From: californialsullivan@gmail.com
To: yocto@yoctoproject.org
Date: Tue, 30 Sep 2014 10:01:54 -0700
Message-Id: <1412096519-8995-2-git-send-email-californialsullivan@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1412096519-8995-1-git-send-email-californialsullivan@gmail.com>
References: <1412096519-8995-1-git-send-email-californialsullivan@gmail.com>
Cc: California Sullivan <california.l.sullivan@intel.com>
Subject: [PATCH V2 2/7] DeleteGoogleVMs.py: Initial commit
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
X-List-Received-Date: Tue, 30 Sep 2014 16:59:48 -0000

From: California Sullivan <california.l.sullivan@intel.com>

This build step deletes the Google VMs created in the previous ProvisionGoogleVM
build step using Google's gcloud command line tool.

Signed-off-by: California Sullivan <california.l.sullivan@intel.com>
---
 .../autobuilder/buildsteps/DeleteGoogleVMs.py      | 52 ++++++++++++++++++++++
 1 file changed, 52 insertions(+)
 create mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps/DeleteGoogleVMs.py

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/DeleteGoogleVMs.py b/lib/python2.7/site-packages/autobuilder/buildsteps/DeleteGoogleVMs.py
new file mode 100644
index 0000000..b0071cf
--- /dev/null
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/DeleteGoogleVMs.py
@@ -0,0 +1,52 @@
+'''
+Created on Aug 13, 2014
+
+__author__ = "California Sullivan"
+__copyright__ = "Copyright 2014, Intel Corp."
+__credits__ = ["California Sullivan"]
+__license__ = "GPL"
+__version__ = "2.0"
+__maintainer__ = "Elizabeth Flanagan"
+__email__ = "elizabeth.flanagan@intel.com"
+'''
+
+from buildbot.steps.shell import ShellCommand
+
+class DeleteGoogleVMs(ShellCommand):
+    haltOnFailure = True
+    flunkOnFailure = True
+    name = "Delete Google VMs"
+    def __init__(self, factory, argdict=None, **kwargs):
+
+        self.factory = factory
+        self.description = "Deleting Google VMs"
+        for k, v in argdict.iteritems():
+            if type(v) is bool:
+                setattr(self, k, str(v))
+            else:
+                setattr(self, k, v)
+        # Timeout needs to be passed to LoggingBuildStep as a kwarg
+        self.timeout = 1000
+        kwargs['timeout']=self.timeout
+        ShellCommand.__init__(self, **kwargs)
+
+
+    def start(self):
+        self.vmnames = self.getProperty("vmnames")
+        self.vmcount = self.getProperty("vmcount")
+        self.zone = self.getProperty("zone")
+
+        if self.vmnames is not None and self.vmnames != "":
+            self.command = "gcloud compute instances delete"
+            self.command += " " + self.vmnames
+
+        if self.zone is not None and self.zone in ["us-central1-a", "us-central1-b", "us-central1-f", "europe-west1-a", "europe-west1-b", "asia-east1-a", "asia-east1-b", "asia-east1-b"]:
+            self.command += " --zone " + self.zone
+        else:
+            self.command += " --zone us-central1-a"
+        self.command += " --quiet"
+        ShellCommand.start(self)
+
+    def describe(self, done=False):
+        description = ShellCommand.describe(self,done)
+        return description
-- 
1.9.1


