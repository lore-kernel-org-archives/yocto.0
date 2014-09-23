Return-Path: <californialsullivan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0C7EE00876; Tue, 23 Sep 2014 10:20:42 -0700 (PDT)
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
	provider *      (californialsullivan[at]gmail.com)
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.9 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6C36E0086E
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 10:20:39 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 23 Sep 2014 10:11:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,581,1406617200"; d="scan'208";a="607285966"
Received: from sullical-studio-xps-9100.jf.intel.com (HELO
	sullical-Studio-XPS-9100) ([10.7.198.88])
	by orsmga002.jf.intel.com with SMTP; 23 Sep 2014 10:11:37 -0700
Received: by sullical-Studio-XPS-9100 (sSMTP sendmail emulation);
	Tue, 23 Sep 2014 10:14:09 -0700
From: californialsullivan@gmail.com
To: yocto@yoctoproject.org
Date: Tue, 23 Sep 2014 10:13:54 -0700
Message-Id: <1411492434-340-13-git-send-email-californialsullivan@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1411492434-340-1-git-send-email-californialsullivan@gmail.com>
References: <1411492434-340-1-git-send-email-californialsullivan@gmail.com>
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
X-List-Received-Date: Tue, 23 Sep 2014 17:20:42 -0000

From: California Sullivan <california.l.sullivan@intel.com>

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


