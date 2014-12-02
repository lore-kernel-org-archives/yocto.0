Return-Path: <californialsullivan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47E88E00521; Tue,  2 Dec 2014 10:34:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00, DATE_IN_PAST_03_06, 
	DKIM_ADSP_CUSTOM_MED, FREEMAIL_FROM, NML_ADSP_CUSTOM_MED,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (californialsullivan[at]gmail.com)
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED
	*  1.6 DATE_IN_PAST_03_06 Date: is 3 to 6 hours before Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.9 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3CFCE002F9
	for <yocto@yoctoproject.org>; Tue,  2 Dec 2014 10:34:18 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 02 Dec 2014 10:34:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,502,1413270000"; d="scan'208";a="647050207"
Received: from unknown (HELO localhost.jf.intel.com) ([10.7.198.57])
	by orsmga002.jf.intel.com with ESMTP; 02 Dec 2014 10:34:16 -0800
From: californialsullivan@gmail.com
To: yocto@yoctoproject.org
Date: Tue,  2 Dec 2014 10:31:37 -0500
Message-Id: <1417534303-20323-1-git-send-email-californialsullivan@gmail.com>
X-Mailer: git-send-email 1.9.3
Cc: California Sullivan <california.l.sullivan@intel.com>
Subject: [PATCH 1/7] ProvisionGoogleVM.py: Initial commit
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
X-List-Received-Date: Tue, 02 Dec 2014 18:34:26 -0000

From: California Sullivan <california.l.sullivan@intel.com>

This build step provisions a Google VM using the gcloud command line tool.

Signed-off-by: California Sullivan <california.l.sullivan@intel.com>
---
 .../autobuilder/buildsteps/ProvisionGoogleVM.py    | 85 ++++++++++++++++++++++
 1 file changed, 85 insertions(+)
 create mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoogleVM.py

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoogleVM.py b/lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoogleVM.py
new file mode 100644
index 0000000..fb667dd
--- /dev/null
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoogleVM.py
@@ -0,0 +1,85 @@
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
+class ProvisionGoogleVM(ShellCommand):
+    haltOnFailure = True
+    flunkOnFailure = True
+    name = "Provision Google VM"
+    def __init__(self, factory, argdict=None, **kwargs):
+        self.vmname=None
+        self.vmcount=1
+        self.startupscript=None
+        self.metadata=None
+        self.zone="us-central1-a"
+        self.image=None
+        self.machine=None
+        self.network=None
+        self.disksize=None
+        self.factory = factory
+        self.description = "Provision Google VM"
+        for k, v in argdict.iteritems():
+            if type(v) is bool:
+                setattr(self, k, str(v))
+            else:
+                setattr(self, k, v)
+
+        if self.vmname is None or self.vmname == "":
+            self.finished(FAILURE)
+        else:
+            self.command = "gcloud compute instances create"
+            self.vmnames = ""
+            for x in range(0, self.vmcount):
+                self.vmnames += " " + self.vmname + "-" + str(x)
+            self.command += self.vmnames
+            if self.zone is not None and self.zone in ["us-central1-a", "us-central1-b", "us-central1-f", "europe-west1-a", "europe-west1-b", "asia-east1-a", "asia-east1-b", "asia-east1-b"]:
+                self.command += " --zone " + self.zone
+            else:
+                self.command += " --zone us-central1-a"
+            if self.disksize is not None and self.disksize != "":
+                self.command += " --boot-disk-size " + self.disksize
+            else:
+                self.command += " --boot-disk-size 200GB"
+            if self.image is None:
+                self.command += " --image debian-7"
+            else:
+                self.command += " --image " + self.image
+
+            if self.machine is not None and self.machine in ["g1-small", "f1-micro", "n1-standard-1", "n1-standard-2", "n1-standard-4", "n1-standard-8", "n1-standard-16", "n1-highmem-2", "n1-highmem-4"]:
+                self.command += " --machine-type " + self.machine
+            else:
+                self.command += " --machine-type n1-standard-1"
+            if self.network is not None and self.network != "":
+                self.command += " --network " + self.network
+            if self.startupscript is not None and self.startupscript != "":
+                self.command += " --metadata-from-file startup-script=" + self.startupscript
+                if self.metadata is not None and self.metadata != "":
+                    self.command += " --metadata " + self.scriptargs
+            self.command += " 1> /dev/null";
+
+            # Timeout needs to be passed to LoggingBuildStep as a kwarg
+            self.timeout = 1000
+            kwargs['timeout']=self.timeout
+            ShellCommand.__init__(self, **kwargs)
+
+    def describe(self, done=False):
+        description = ShellCommand.describe(self,done)
+        return description
+
+    def commandComplete(self, cmd):
+        if not cmd.didFail():
+            self.setProperty("vmnames", self.vmnames)
+            self.setProperty("zone", self.zone)
+            self.setProperty("vmcount", self.vmcount)
+
+
-- 
1.9.3


