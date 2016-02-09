Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3250E00CB9; Tue,  9 Feb 2016 14:41:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE5F2E00CBE
	for <yocto@yoctoproject.org>; Tue,  9 Feb 2016 14:41:16 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga104.fm.intel.com with ESMTP; 09 Feb 2016 14:41:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,423,1449561600"; d="scan'208";a="45243967"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.155])
	by fmsmga004.fm.intel.com with ESMTP; 09 Feb 2016 14:41:16 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  9 Feb 2016 16:43:13 -0600
Message-Id: <1455057798-3213-5-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1455057798-3213-1-git-send-email-anibal.limon@linux.intel.com>
References: <1455057798-3213-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: richard.purdie@intel.com,
	=?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <limon.anibal@gmail.com>,
	benjamin.esquivel@intel.com
Subject: [[PATCH][qa-tools] 04/16] tests/toaster/__init__.py: Add support for clone/setup/start/stop
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
X-List-Received-Date: Tue, 09 Feb 2016 22:41:18 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Aníbal Limón <limon.anibal@gmail.com>

The main idea is to have an script for execute tests against toaster
so for now the arguments to execute toaster tests are fixed but
will be configured with args in the console.

Signed-off-by: Aníbal Limón <limon.anibal@gmail.com>
---
 tests/toaster/__init__.py | 23 +++++++++++++++++++----
 1 file changed, 19 insertions(+), 4 deletions(-)

diff --git a/tests/toaster/__init__.py b/tests/toaster/__init__.py
index 659faa8..3762094 100755
--- a/tests/toaster/__init__.py
+++ b/tests/toaster/__init__.py
@@ -1,5 +1,6 @@
 import unittest, time, re, sys, getopt, os, logging, string, errno, exceptions
 import shutil, argparse, ConfigParser, platform
+
 from selenium import webdriver
 from selenium.common.exceptions import NoSuchElementException
 from selenium import selenium
@@ -7,11 +8,28 @@ from selenium.webdriver.common.by import By
 from selenium.webdriver.common.keys import Keys
 from selenium.webdriver.support.ui import Select
 
+sys.path.insert(0, os.path.join(os.path.dirname(
+    os.path.abspath(__file__)), '../'))
+from toaster.helpers import *
+
+WORK_DIRECTORY = '/tmp/toaster'
+POKY_URL = 'http://git.yoctoproject.org/git/poky.git'
+
 class InitToaster(unittest.TestCase):
-    def setUp(self):
+    @classmethod
+    def setUpClass(self):
+        toaster_clone(WORK_DIRECTORY, POKY_URL, rm=True)
+        toaster_setup(WORK_DIRECTORY)
+        toaster_start(WORK_DIRECTORY)
+
         self.driver = webdriver.Firefox()
         self.timeout = 320
 
+    @classmethod
+    def tearDownClass(self):
+        self.driver.close()
+        toaster_stop(WORK_DIRECTORY)
+
     def is_text_present (self, patterns):
         for pattern in patterns:
             if str(pattern) not in self.driver.page_source:
@@ -102,8 +120,5 @@ class InitToaster(unittest.TestCase):
                 self.fail(msg="Builds did not complete successfully.")
         print "Builds complete!"
 
-    def tearDown(self):
-        self.driver.close()
-
 if __name__ == "__main__":
     unittest.main()
-- 
2.1.4


