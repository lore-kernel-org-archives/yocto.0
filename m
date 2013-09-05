Return-Path: <stefanx.stanacar@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1622E01542
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2013 01:15:00 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 05 Sep 2013 01:14:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,845,1371106800"; d="scan'208";a="291075989"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by AZSMGA002.ch.intel.com with ESMTP; 05 Sep 2013 01:14:58 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.73])
	by linux.intel.com (Postfix) with ESMTP id 192792C8001;
	Thu,  5 Sep 2013 01:14:55 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  5 Sep 2013 11:15:03 +0300
Message-Id: <1378368903-28966-1-git-send-email-stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.3.1
Subject: [meta-security][PATCH] meta-security: add a basic runtime test for scanelf
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
X-List-Received-Date: Thu, 05 Sep 2013 08:15:03 -0000

Now that the testimage class from core has the ability to run tests from other
layers it makes sens to add a basic runtime test here.
This uses scanelf from the pax-utils package and scans the binaries in PATH
for TEXTREL and RPATH information.

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 lib/oeqa/runtime/__init__.py |  0
 lib/oeqa/runtime/scanelf.py  | 26 ++++++++++++++++++++++++++
 2 files changed, 26 insertions(+)
 create mode 100644 lib/oeqa/runtime/__init__.py
 create mode 100644 lib/oeqa/runtime/scanelf.py

diff --git a/lib/oeqa/runtime/__init__.py b/lib/oeqa/runtime/__init__.py
new file mode 100644
index 0000000..e69de29
diff --git a/lib/oeqa/runtime/scanelf.py b/lib/oeqa/runtime/scanelf.py
new file mode 100644
index 0000000..b9abf24
--- /dev/null
+++ b/lib/oeqa/runtime/scanelf.py
@@ -0,0 +1,26 @@
+import unittest
+from oeqa.oetest import oeRuntimeTest, skipModule
+from oeqa.utils.decorators import *
+
+def setUpModule():
+    if not oeRuntimeTest.hasPackage("pax-utils"):
+        skipModule("pax-utils package not installed")
+
+class ScanelfTest(oeRuntimeTest):
+
+    def setUp(self):
+        self.scancmd = 'scanelf --quiet --recursive --mount --ldpath --path'
+
+    @skipUnlessPassed('test_ssh')
+    def test_scanelf_textrel(self):
+        # print TEXTREL information
+        self.scancmd += " --textrel"
+        (status, output) = self.target.run(self.scancmd)
+        self.assertEqual(output.strip(), "", "\n".join([self.scancmd, output]))
+
+    @skipUnlessPassed('test_ssh')
+    def test_scanelf_rpath(self):
+        # print RPATH information
+        self.scancmd += " --rpath"
+        (status, output) = self.target.run(self.scancmd)
+        self.assertEqual(output.strip(), "", "\n".join([self.scancmd, output]))
-- 
1.8.3.1


