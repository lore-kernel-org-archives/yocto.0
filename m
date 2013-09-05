Return-Path: <stefanx.stanacar@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE59AE00747
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2013 09:12:52 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 05 Sep 2013 09:09:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,847,1371106800"; d="scan'208";a="373983075"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga001.jf.intel.com with ESMTP; 05 Sep 2013 09:12:34 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.73])
	by linux.intel.com (Postfix) with ESMTP id A5A032C8001;
	Thu,  5 Sep 2013 09:12:31 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  5 Sep 2013 19:12:38 +0300
Message-Id: <1378397558-17830-1-git-send-email-stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.3.1
Subject: [meta-security][PATCH] Add runtime test for some scripts in redhat-security package
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
X-List-Received-Date: Thu, 05 Sep 2013 16:12:54 -0000

Now that the testimage class from core has the ability to run tests from other
layers it makes sens to add a basic runtime test here.
This runs some basic scripts from the redhat-security package that this layer provides.

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 lib/oeqa/runtime/__init__.py        |  0
 lib/oeqa/runtime/securityscripts.py | 27 +++++++++++++++++++++++++++
 2 files changed, 27 insertions(+)
 create mode 100644 lib/oeqa/runtime/__init__.py
 create mode 100644 lib/oeqa/runtime/securityscripts.py

diff --git a/lib/oeqa/runtime/__init__.py b/lib/oeqa/runtime/__init__.py
new file mode 100644
index 0000000..e69de29
diff --git a/lib/oeqa/runtime/securityscripts.py b/lib/oeqa/runtime/securityscripts.py
new file mode 100644
index 0000000..f78c28d
--- /dev/null
+++ b/lib/oeqa/runtime/securityscripts.py
@@ -0,0 +1,27 @@
+# Runs on target some of the scripts found in redhat-security package
+# The target image should be an rpm one as the scripts themselves call rpm.
+import unittest
+from oeqa.oetest import oeRuntimeTest, skipModule
+from oeqa.utils.decorators import *
+
+def setUpModule():
+    skipModuleUnless(oeRuntimeTest.hasPackage("redhat-security"), "redhat-security package not installed")
+    skipModuleUnless(oeRuntimeTest.hasFeature("package-management"), "target doesn't have package-management in IMAGE_FEATURES")
+    skipModuleUnless("package_rpm" == oeRuntimeTest.tc.d.getVar("PACKAGE_CLASSES", True).split()[0], "target doesn't have rpm as primary package manager")
+
+class SecurityScriptsTest(oeRuntimeTest):
+
+    @skipUnlessPassed('test_ssh')
+    def test_find_chroot(self):
+        (status, output) = self.target.run('find-chroot.sh', 1200)
+        self.assertEqual(status, 0, msg="find-chroot output:\n%s" % output)
+
+    @skipUnlessPassed('test_ssh')
+    def test_find_nodrop_groups(self):
+        (status, output) = self.target.run('find-nodrop-groups.sh', 1200)
+        self.assertEqual(status, 0, msg="find-nodrop-gropus output:\n%s" % output)
+
+    @skipUnlessPassed('test_ssh')
+    def test_find_execstack(self):
+        (status, output) = self.target.run('find-execstack.sh', 1200)
+        self.assertEqual(status, 0, msg="find-execstack output:\n%s" % output)
-- 
1.8.3.1


