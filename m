Return-Path: <daniela.plascencia@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 993CCE00726; Fri, 17 Feb 2017 13:54:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98130E00566
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2017 13:54:54 -0800 (PST)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 Feb 2017 13:54:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,173,1484035200"; d="scan'208";a="66619475"
Received: from dplascen-desk.zpn.intel.com ([10.219.4.147])
	by fmsmga005.fm.intel.com with ESMTP; 17 Feb 2017 13:54:53 -0800
From: daniela.plascencia@linux.intel.com
To: yocto@yoctoproject.org
Date: Fri, 17 Feb 2017 15:52:36 -0600
Message-Id: <20170217215236.30682-1-daniela.plascencia@linux.intel.com>
X-Mailer: git-send-email 2.11.0
X-Mailman-Approved-At: Mon, 20 Feb 2017 09:46:41 -0800
Cc: Daniela Plascencia <daniela.plascencia@linux.intel.com>
Subject: [patchtest-oe][PATCH] tests: modifies pylint check in the test suite
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
X-List-Received-Date: Fri, 17 Feb 2017 21:54:56 -0000

From: Daniela Plascencia <daniela.plascencia@linux.intel.com>

Changes pylint's check current logic using dictionaries and sets for easy
operations between pretest and test pylint results. The failing message is
now formatted so it is easier for the user to locate errors encountered
by the check.

[YOCTO #10789]

Signed-off-by: Daniela Plascencia <daniela.plascencia@linux.intel.com>
---
 tests/test_python_pylint.py | 59 +++++++++++++++++++++++----------------------
 1 file changed, 30 insertions(+), 29 deletions(-)

diff --git a/tests/test_python_pylint.py b/tests/test_python_pylint.py
index ea889a6..b61c31d 100644
--- a/tests/test_python_pylint.py
+++ b/tests/test_python_pylint.py
@@ -18,56 +18,57 @@
 # 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 
 import base
-import re
 import patchtestdata
 import pylint.epylint as lint
 
 class PyLint(base.Base):
-    pythonpatches = []
+    pythonpatches  = []
+    pylint_pretest = {}
+    pylint_test    = {}
+    pylint_options = " -E --disable='E0611, E1101, F0401, E0602' --msg-template='L:{line} F:{path} I:{msg}'"
 
     @classmethod
     def setUpClassLocal(cls):
         # get just those patches touching python files
+        cls.pythonpatches = []
         for patch in cls.patchset:
             if patch.path.endswith('.py'):
-                cls.pythonpatches.append(patch)
+                if not patch.is_removed_file:
+                    cls.pythonpatches.append(patch)
 
     def setUp(self):
-        self.skip('Pending for Yocto #10789]')
-
         if self.unidiff_parse_error:
             self.skip([('Python-unidiff parse error', self.unidiff_parse_error)])
         if not patchtestdata.PatchTestInput.repo.canbemerged:
-            self.skip('Patch cannot be merged, no reason to execute the test method')
+            self.skipTest('Patch cannot be merged, no reason to execute the test method')
         if not PyLint.pythonpatches:
-            self.skip('No python related patches, skipping test')
+            self.skipTest('No python related patches, skipping test')
 
     def pretest_pylint(self):
-        patchtestdata.PatchTestDataStore['pylint_pretest'] = list()
         for pythonpatch in self.pythonpatches:
             if pythonpatch.is_modified_file:
-                (pylint_stdout, pylint_stderr) = lint.py_run(pythonpatch.path, return_std=True)
-                patchtestdata.PatchTestDataStore['pylint_pretest'].extend(pylint_stdout.readlines())
+                (pylint_stdout, pylint_stderr) = lint.py_run(command_options = pythonpatch.path + self.pylint_options, return_std=True)
+                for line in pylint_stdout.readlines():
+                    if not '*' in line:
+                        if line.strip():
+                            self.pylint_pretest[line.strip().split(' ',1)[0]] = line.strip().split(' ',1)[1]
 
     def test_pylint(self):
-        patchtestdata.PatchTestDataStore['pylint_test'] = list()
         for pythonpatch in self.pythonpatches:
-            (pylint_stdout, pylint_stderr) = lint.py_run(pythonpatch.path, return_std=True)
-            patchtestdata.PatchTestDataStore['pylint_test'].extend(pylint_stdout.readlines())
-
-        # Removing line numbers of pylint log so system focus just on introduced issues
-        pylint_pretest = [re.sub(':\d+:', ':', pyline) for pyline in patchtestdata.PatchTestDataStore['pylint_pretest']]
-        pylint_test    = [re.sub(':\d+:', ':', pyline) for pyline in patchtestdata.PatchTestDataStore['pylint_test']]
-
-        while pylint_pretest:
-            pretest = pylint_pretest.pop(0)
-            try:
-                pylint_test.remove(pretest)
-            except ValueError as ve:
-                base.logger.warn('Line %s not found on pylint_test lines' % pretest)
-
-        if pylint_test:
-            self.fail('Pylint found issues on your proposed change',
-                      'Check your modified python lines with pylint, specially those lines introduced by your patch',
-                      data=[('Output', pylint_test[0].strip()), ('',''.join(pylint_test[1:]))])
+            # a condition checking whether a file is renamed or not
+            # unidiff doesn't support this yet
+            if pythonpatch.target_file is not pythonpatch.path:
+                path = pythonpatch.target_file[2:]
+            else:
+                path = pythonpatch.path
+            (pylint_stdout, pylint_stderr) = lint.py_run(command_options = path + self.pylint_options, return_std=True)
+            for line in pylint_stdout.readlines():
+                    if not '*' in line:
+                        if line.strip():
+                            self.pylint_test[line.strip().split(' ',1)[0]] = line.strip().split(' ',1)[1]
 
+        for issue in self.pylint_test:
+             if self.pylint_test[issue] not in self.pylint_pretest.values():
+                 self.fail('Errors in your Python code were encountered',
+                           'Correct the lines introduced by your patch',
+                           data=[('Output', 'Please, fix the listed issues:'), ('', issue + ' ' + self.pylint_test[issue])])
-- 
2.11.0


