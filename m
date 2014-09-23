Return-Path: <california.l.sullivan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 781BAE0087E; Tue, 23 Sep 2014 10:09:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=5.0 tests=BAYES_00, DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM, NML_ADSP_CUSTOM_MED,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (california.l.sullivan[at]gmail.com)
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.9 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 843BBE00875
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 10:09:10 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 Sep 2014 10:04:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,581,1406617200"; d="scan'208";a="577672995"
Received: from sullical-studio-xps-9100.jf.intel.com (HELO
	sullical-Studio-XPS-9100) ([10.7.198.88])
	by orsmga001.jf.intel.com with SMTP; 23 Sep 2014 10:03:33 -0700
Received: by sullical-Studio-XPS-9100 (sSMTP sendmail emulation);
	Tue, 23 Sep 2014 10:06:05 -0700
From: california.l.sullivan@gmail.com
To: yocto@yoctoproject.org
Date: Tue, 23 Sep 2014 10:05:38 -0700
Message-Id: <1411491940-32686-11-git-send-email-california.l.sullivan@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1411491940-32686-1-git-send-email-california.l.sullivan@gmail.com>
References: <1411491940-32686-1-git-send-email-california.l.sullivan@gmail.com>
X-Mailman-Approved-At: Tue, 23 Sep 2014 11:54:23 -0700
Cc: California Sullivan <california.l.sullivan@intel.com>
Subject: [PATCH 11/13] ProvisionGoogleVM.py: Rename to ProvisionGoogleVMs.py
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
X-List-Received-Date: Tue, 23 Sep 2014 17:09:22 -0000

From: California Sullivan <california.l.sullivan@intel.com>

This can provision multiple VMs at once.

Signed-off-by: California Sullivan <california.l.sullivan@intel.com>
---
 .../autobuilder/buildsteps/ProvisionGoogleVM.py    | 86 ----------------------
 .../autobuilder/buildsteps/ProvisionGoogleVMs.py   | 86 ++++++++++++++++++++++
 2 files changed, 86 insertions(+), 86 deletions(-)
 delete mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoogleVM.py
 create mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoogleVMs.py

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoogleVM.py b/lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoogleVM.py
deleted file mode 100644
index e7f488f..0000000
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoogleVM.py
+++ /dev/null
@@ -1,86 +0,0 @@
-'''
-Created on Aug 13, 2014
-
-__author__ = "California Sullivan"
-__copyright__ = "Copyright 2014, Intel Corp."
-__credits__ = ["California Sullivan"]
-__license__ = "GPL"
-__version__ = "2.0"
-__maintainer__ = "Elizabeth Flanagan"
-__email__ = "elizabeth.flanagan@intel.com"
-'''
-
-from autobuilder.config import *
-from buildbot.steps.shell import ShellCommand
-
-class ProvisionGoogleVM(ShellCommand):
-    haltOnFailure = True
-    flunkOnFailure = True
-    name = "Provision Google VM"
-    def __init__(self, factory, argdict=None, **kwargs):
-        self.vmname=None
-        self.vmcount=1
-        self.startupscript=None
-        self.metadata=None
-        self.zone="us-central1-a"
-        self.image=None
-        self.machine=None
-        self.network=None
-        self.disksize=None
-        self.factory = factory
-        self.description = "Provision Google VM"
-        for k, v in argdict.iteritems():
-            if type(v) is bool:
-                setattr(self, k, str(v))
-            else:
-                setattr(self, k, v)
-
-        if self.vmname is None or self.vmname == "":
-            self.finished(FAILURE)
-        else:
-            self.command = "gcloud compute instances create"
-            self.vmnames = ""
-            for x in range(0, self.vmcount):
-                self.vmnames += " " + self.vmname + "-" + str(x)
-            self.command += self.vmnames
-            if self.zone is not None and self.zone in ["us-central1-a", "us-central1-b", "us-central1-f", "europe-west1-a", "europe-west1-b", "asia-east1-a", "asia-east1-b", "asia-east1-b"]:
-                self.command += " --zone " + self.zone
-            else:
-                self.command += " --zone us-central1-a"
-            if self.disksize is not None and self.disksize != "":
-                self.command += " --boot-disk-size " + self.disksize
-            else:
-                self.command += " --boot-disk-size 200GB"
-            if self.image is None:
-                self.command += " --image debian-7"
-            else:
-                self.command += " --image " + self.image
-
-            if self.machine is not None and self.machine in ["g1-small", "f1-micro", "n1-standard-1", "n1-standard-2", "n1-standard-4", "n1-standard-8", "n1-standard-16", "n1-highmem-2", "n1-highmem-4"]:
-                self.command += " --machine-type " + self.machine
-            else:
-                self.command += " --machine-type n1-standard-1"
-            if self.network is not None and self.network != "":
-                self.command += " --network " + self.network
-            if self.startupscript is not None and self.startupscript != "":
-                self.command += " --metadata-from-file startup-script="+YOCTO_ABBASE+"/bin/"+self.startupscript
-                if self.metadata is not None and self.metadata != "":
-                    self.command += " --metadata " + self.metadata
-            self.command += " 1> /dev/null";
-
-            # Timeout needs to be passed to LoggingBuildStep as a kwarg
-            self.timeout = 1000
-            kwargs['timeout']=self.timeout
-            ShellCommand.__init__(self, **kwargs)
-
-    def describe(self, done=False):
-        description = ShellCommand.describe(self,done)
-        return description
-
-    def commandComplete(self, cmd):
-        if not cmd.didFail():
-            self.setProperty("vmnames", self.vmnames)
-            self.setProperty("zone", self.zone)
-            self.setProperty("vmcount", self.vmcount)
-
-
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoogleVMs.py b/lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoogleVMs.py
new file mode 100644
index 0000000..d0bc6eb
--- /dev/null
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoogleVMs.py
@@ -0,0 +1,86 @@
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
+from autobuilder.config import *
+from buildbot.steps.shell import ShellCommand
+
+class ProvisionGoogleVMs(ShellCommand):
+    haltOnFailure = True
+    flunkOnFailure = True
+    name = "Provision Google VMs"
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
+        self.description = "Provision Google VMs"
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
+                self.command += " --metadata-from-file startup-script="+YOCTO_ABBASE+"/bin/"+self.startupscript
+                if self.metadata is not None and self.metadata != "":
+                    self.command += " --metadata " + self.metadata
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
1.9.1


