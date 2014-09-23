Return-Path: <california.l.sullivan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7929AE008BA; Tue, 23 Sep 2014 09:53:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08EA9E0087C
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 09:53:01 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 23 Sep 2014 09:44:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,581,1406617200"; d="scan'208";a="577664377"
Received: from sullical-studio-xps-9100.jf.intel.com (HELO
	sullical-Studio-XPS-9100) ([10.7.198.88])
	by orsmga001.jf.intel.com with SMTP; 23 Sep 2014 09:50:39 -0700
Received: by sullical-Studio-XPS-9100 (sSMTP sendmail emulation);
	Tue, 23 Sep 2014 09:53:10 -0700
From: California Sullivan <california.l.sullivan@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 23 Sep 2014 09:52:35 -0700
Message-Id: <1411491155-32414-13-git-send-email-california.l.sullivan@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1411491155-32414-1-git-send-email-california.l.sullivan@intel.com>
References: <1411491155-32414-1-git-send-email-california.l.sullivan@intel.com>
X-Mailman-Approved-At: Tue, 23 Sep 2014 11:54:23 -0700
Cc: California Sullivan <california.l.sullivan@intel.com>
Subject: [PATCH 13/13] ProvisionGoogleVMs.py: Delete VM before trying to provision it.
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
X-List-Received-Date: Tue, 23 Sep 2014 16:53:02 -0000

In the case that somebody turned off a build before it completed, the
buildstep would attempt and fail to procure a new VM, failing the build.

Signed-off-by: California Sullivan <california.l.sullivan@intel.com>
---
 .../autobuilder/buildsteps/ProvisionGoogleVMs.py         | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoogleVMs.py b/lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoogleVMs.py
index d0bc6eb..262526f 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoogleVMs.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoogleVMs.py
@@ -19,6 +19,7 @@ class ProvisionGoogleVMs(ShellCommand):
     name = "Provision Google VMs"
     def __init__(self, factory, argdict=None, **kwargs):
         self.vmname=None
+        self.vmnames=""
         self.vmcount=1
         self.startupscript=None
         self.metadata=None
@@ -38,15 +39,18 @@ class ProvisionGoogleVMs(ShellCommand):
         if self.vmname is None or self.vmname == "":
             self.finished(FAILURE)
         else:
-            self.command = "gcloud compute instances create"
-            self.vmnames = ""
+            self.command = ""
+            if self.zone is None or self.zone not in ["us-central1-a", "us-central1-b", "us-central1-f", "europe-west1-a", "europe-west1-b", "asia-east1-a", "asia-east1-b", "asia-east1-b"]:
+                self.zone = "us-central1-a"
             for x in range(0, self.vmcount):
                 self.vmnames += " " + self.vmname + "-" + str(x)
+            self.command += " gcloud compute instances delete"
             self.command += self.vmnames
-            if self.zone is not None and self.zone in ["us-central1-a", "us-central1-b", "us-central1-f", "europe-west1-a", "europe-west1-b", "asia-east1-a", "asia-east1-b", "asia-east1-b"]:
-                self.command += " --zone " + self.zone
-            else:
-                self.command += " --zone us-central1-a"
+            self.command += " --zone " + self.zone + " --quiet;"
+            self.command += " gcloud compute instances create"
+            self.command += self.vmnames
+            self.command += " --zone " + self.zone
+
             if self.disksize is not None and self.disksize != "":
                 self.command += " --boot-disk-size " + self.disksize
             else:
-- 
1.9.1


