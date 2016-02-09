Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C864EE00DC0; Tue,  9 Feb 2016 14:43:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53DAEE00DB8
	for <yocto@yoctoproject.org>; Tue,  9 Feb 2016 14:43:16 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 09 Feb 2016 14:43:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,423,1449561600"; d="scan'208";a="743319779"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.155])
	by orsmga003.jf.intel.com with ESMTP; 09 Feb 2016 14:43:14 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  9 Feb 2016 16:45:14 -0600
Message-Id: <1455057920-11174-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Cc: richard.purdie@intel.com, benjamin.esquivel@intel.com
Subject: [[PATCH][qa-tools] 10/16] Reorder source code tree,
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
X-List-Received-Date: Tue, 09 Feb 2016 22:43:24 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Get rid of unnecessary level of tests folder.

Move toaster/__init__.py to toaster/toaster.py program.

Add empty toaster/__init__.py and external/__init__.py for said
to python to use folder as module.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 external/__init__.py      |   0
 tests/toaster/__init__.py | 125 ----------------------------------------------
 tests/toaster/helpers.py  | 109 ----------------------------------------
 toaster/__init__.py       |   0
 toaster/helpers.py        | 109 ++++++++++++++++++++++++++++++++++++++++
 toaster/toaster.py        | 125 ++++++++++++++++++++++++++++++++++++++++++++++
 6 files changed, 234 insertions(+), 234 deletions(-)
 create mode 100644 external/__init__.py
 delete mode 100755 tests/toaster/__init__.py
 delete mode 100644 tests/toaster/helpers.py
 create mode 100644 toaster/__init__.py
 create mode 100644 toaster/helpers.py
 create mode 100755 toaster/toaster.py

diff --git a/external/__init__.py b/external/__init__.py
new file mode 100644
index 0000000..e69de29
diff --git a/tests/toaster/__init__.py b/tests/toaster/__init__.py
deleted file mode 100755
index d3c5fff..0000000
--- a/tests/toaster/__init__.py
+++ /dev/null
@@ -1,125 +0,0 @@
-import unittest, time, re, sys, getopt, os, logging, string, errno, exceptions
-import shutil, argparse, ConfigParser, platform
-
-from selenium import webdriver
-from selenium.common.exceptions import NoSuchElementException
-from selenium import selenium
-from selenium.webdriver.common.by import By
-from selenium.webdriver.common.keys import Keys
-from selenium.webdriver.support.ui import Select
-
-sys.path.insert(0, os.path.join(os.path.dirname(
-    os.path.abspath(__file__)), '../'))
-from toaster.helpers import ToasterHelper
-
-WORK_DIRECTORY = '/tmp/toaster'
-POKY_URL = 'http://git.yoctoproject.org/git/poky.git'
-
-class InitToaster(unittest.TestCase):
-    @classmethod
-    def setUpClass(self):
-        self.toaster_helper = ToasterHelper(WORK_DIRECTORY, POKY_URL)
-        self.toaster_helper.clone(rm=True)
-        self.toaster_helper.setup()
-        self.toaster_helper.start()
-
-        self.driver = webdriver.Firefox()
-        self.timeout = 320
-
-    @classmethod
-    def tearDownClass(self):
-        self.toaster_helper.stop(force=True)
-        self.driver.close()
-
-    def is_text_present (self, patterns):
-        for pattern in patterns:
-            if str(pattern) not in self.driver.page_source:
-                print pattern
-                return False
-        return True
-
-    def test_setupToaster(self):
-        self.driver.maximize_window()
-        self.driver.get("localhost:8000")
-        try:
-            self.driver.find_element_by_css_selector("a[href='/toastergui/projects/']").click()
-        except:
-            self.driver.find_element_by_id("new-project-button").click()
-            self.driver.find_element_by_id("new-project-name").send_keys("selenium-project")
-            self.driver.find_element_by_id("create-project-button").click()
-        try:
-            self.driver.find_element_by_link_text("selenium-project").click()
-        except:
-            self.driver.find_element_by_id("new-project-button").click()
-            self.driver.find_element_by_id("new-project-name").send_keys("selenium-project")
-            self.driver.find_element_by_id("create-project-button").click()
-        time.sleep(5)
-        #workaround
-#        self.driver.find_element_by_partial_link_text("Bitbake").click()
-#        self.driver.find_element_by_id("config_var_trash_10").click()
-#        time.sleep(5)
-        #queue up a core-image-minimal
-        self.driver.find_element_by_id("build-input").send_keys("core-image-minimal")
-        self.driver.find_element_by_id("build-button").click()
-        time.sleep(20)
-        #queue up a core-image-sato
-        self.driver.find_element_by_id("build-input").send_keys("core-image-sato")
-        self.driver.find_element_by_id("build-button").click()
-        time.sleep(20)
-        #go back to the main project page
-        self.driver.find_element_by_css_selector("a[href='/toastergui/projects/']").click()
-        self.driver.find_element_by_link_text("selenium-project").click()
-        #check if meta-selftest layer is added and import it if it's not
-        if not (self.is_text_present("meta-selftest")):
-            self.driver.find_element_by_css_selector("a[href='/toastergui/project/2/importlayer']").click()
-            self.driver.find_element_by_id("import-layer-name").send_keys("meta-selftest")
-            self.driver.find_element_by_id("layer-git-repo-url").send_keys("git://git.yoctoproject.org/poky")
-            self.driver.find_element_by_id("layer-subdir").send_keys("meta-selftest")
-            self.driver.find_element_by_id("layer-git-ref").send_keys("HEAD")
-            self.driver.find_element_by_id("import-and-add-btn").click()
-        #queue up an error-image build
-        self.driver.find_element_by_id("build-input").send_keys("error-image")
-        self.driver.find_element_by_id("build-button").click()
-        time.sleep(5)
-        #move to all builds page
-        self.driver.find_element_by_css_selector("a[href='/toastergui/builds/']").click()
-        time.sleep(5)
-        self.driver.refresh()
-        #check progress bar is displayed to signal a build has started
-        try:
-            self.driver.find_element_by_xpath("//div[@class='progress']").is_displayed()
-        except:
-            print "Unable to start new build"
-            self.fail(msg="Unable to start new build")
-        count = 0
-        failflag = False
-        try:
-            self.driver.refresh()
-            time.sleep(1)
-            print "First check starting"
-            while (self.driver.find_element_by_xpath("//div[@class='progress']").is_displayed()):
-                #print "Looking for build in progress"
-                print 'Builds running for '+str(count)+' minutes'
-                count += 5
-                #timeout default is at 179 minutes(3 hours); see set_up method to change
-                if (count > self.timeout):
-                    failflag = True
-                    print 'Builds took longer than expected to complete; Failing due to possible build stuck.'
-                    self.fail()
-                time.sleep(300)
-                self.driver.refresh()
-        except:
-           try:
-                if failflag:
-                    self.fail(msg="Builds took longer than expected to complete; Failing due to possible build stuck.")
-                print "Looking for successful build"
-                self.driver.find_element_by_xpath("//div[@class='alert build-result alert-success']").is_displayed()
-           except:
-                if failflag:
-                    self.fail(msg="Builds took longer than expected to complete; Failing due to possible build stuck.")
-                print 'Builds did not complete successfully'
-                self.fail(msg="Builds did not complete successfully.")
-        print "Builds complete!"
-
-if __name__ == "__main__":
-    unittest.main()
diff --git a/tests/toaster/helpers.py b/tests/toaster/helpers.py
deleted file mode 100644
index 753bbf0..0000000
--- a/tests/toaster/helpers.py
+++ /dev/null
@@ -1,109 +0,0 @@
-import subprocess
-import os
-import shutil
-import signal
-import tempfile
-
-from proc.core import find_processes
-
-TOASTER_TEST_BRANCH = 'toaster_tests'
-VENV_NAME = 'venv'
-SHELL_CMD = os.environ['SHELL'] if 'SHELL' in os.environ else "/bin/bash"
-
-def _check_output1(*popenargs, **kwargs):
-    """
-        Almost the same as subprocess.check_output but change the stdout from
-        PIPE to tempfile to avoid deadlocks when trying to read the PIPE using
-        communicate(). This scenario can be seen calling toaster_start on failure
-        scenarios.
-
-        This causes a little overhead by the tempfile.
-    """
-
-    f = tempfile.TemporaryFile(mode='rw+')
-    if 'stdout' in kwargs:
-        raise ValueError('stdout argument not allowed, it will be overridden.')
-    process = subprocess.Popen(stdout=f, *popenargs, **kwargs)
-    retcode = process.wait()
-
-    f.flush()
-    os.fsync(f.fileno())
-    f.seek(0, 0)
-    output = f.read()
-    f.close()
-
-    if retcode:
-        cmd = kwargs.get("args")
-        if cmd is None:
-            cmd = popenargs[0]
-        raise subprocess.CalledProcessError(retcode, cmd, output=output)
-    return output
-
-class ToasterHelper(object):
-    def __init__(self, directory, repo, repo_ref='master'):
-        self.directory = directory
-        self.repo = repo
-        self.repo_ref = repo_ref
-
-    def _execute_command(self, cmd):
-        return _check_output1([SHELL_CMD, "-c", "cd %s; %s" % \
-            (self.directory, cmd)], stderr=subprocess.STDOUT)
-
-    def _execute_command_venv(self, venv, cmd):
-        return self._execute_command("source %s/%s/bin/activate; %s"\
-                % (self.directory, venv, cmd))
-
-    def clone(self, rm=False):
-        if os.path.exists(self.directory):
-            if rm:
-                shutil.rmtree(self.directory)
-            else:
-                raise IOError
-
-        subprocess.check_output([SHELL_CMD, "-c", "git clone %s %s" % \
-            (self.repo, self.directory)], stderr=subprocess.STDOUT)
-        self._execute_command("git checkout %s -b %s" % \
-            (self.repo_ref, TOASTER_TEST_BRANCH))
-
-    def setup(self):
-        self._execute_command("virtualenv %s" % VENV_NAME)
-        self._execute_command_venv(VENV_NAME, "pip install -r" \
-            " bitbake/toaster-requirements.txt")
-
-    def start(self):
-        return self._execute_command_venv(VENV_NAME,
-            "source %s/oe-init-build-env; source %s/bitbake/bin/toaster start" % \
-            (self.directory, self.directory))
-
-    def _stop_force(self):
-        """
-            The _stop_force method iterates over the /proc and search for toaster path
-            in the process cmdline then send SIGKILL for every matched process.
-        """
-        pids = []
-        for p in find_processes():
-            if len(p.cmdline) > 1 and \
-                os.path.basename(p.cmdline[0]) == 'python' and \
-                p.cmdline[1].startswith(self.directory):
-                    pids.append(p.pid)
-
-        for pid in pids:
-            try:
-                os.kill(pid, signal.SIGKILL)
-            except:
-                pass
-
-        return ''
-
-    def stop(self, force=False):
-        """
-            The stop method have force mode because toaster without production 
-            setup have known issues when is on load, the server response 503
-            service unavailable.
-        """
-        if force:
-            return self._stop_force()
-        else:
-            return self._execute_command_venv(VENV_NAME,
-                "source %s/oe-init-build-env; source %s/bitbake/bin/toaster stop" % \
-                (self.directory, self.directory))
diff --git a/toaster/__init__.py b/toaster/__init__.py
new file mode 100644
index 0000000..e69de29
diff --git a/toaster/helpers.py b/toaster/helpers.py
new file mode 100644
index 0000000..753bbf0
--- /dev/null
+++ b/toaster/helpers.py
@@ -0,0 +1,109 @@
+import subprocess
+import os
+import shutil
+import signal
+import tempfile
+
+from proc.core import find_processes
+
+TOASTER_TEST_BRANCH = 'toaster_tests'
+VENV_NAME = 'venv'
+SHELL_CMD = os.environ['SHELL'] if 'SHELL' in os.environ else "/bin/bash"
+
+def _check_output1(*popenargs, **kwargs):
+    """
+        Almost the same as subprocess.check_output but change the stdout from
+        PIPE to tempfile to avoid deadlocks when trying to read the PIPE using
+        communicate(). This scenario can be seen calling toaster_start on failure
+        scenarios.
+
+        This causes a little overhead by the tempfile.
+    """
+
+    f = tempfile.TemporaryFile(mode='rw+')
+    if 'stdout' in kwargs:
+        raise ValueError('stdout argument not allowed, it will be overridden.')
+    process = subprocess.Popen(stdout=f, *popenargs, **kwargs)
+    retcode = process.wait()
+
+    f.flush()
+    os.fsync(f.fileno())
+    f.seek(0, 0)
+    output = f.read()
+    f.close()
+
+    if retcode:
+        cmd = kwargs.get("args")
+        if cmd is None:
+            cmd = popenargs[0]
+        raise subprocess.CalledProcessError(retcode, cmd, output=output)
+    return output
+
+class ToasterHelper(object):
+    def __init__(self, directory, repo, repo_ref='master'):
+        self.directory = directory
+        self.repo = repo
+        self.repo_ref = repo_ref
+
+    def _execute_command(self, cmd):
+        return _check_output1([SHELL_CMD, "-c", "cd %s; %s" % \
+            (self.directory, cmd)], stderr=subprocess.STDOUT)
+
+    def _execute_command_venv(self, venv, cmd):
+        return self._execute_command("source %s/%s/bin/activate; %s"\
+                % (self.directory, venv, cmd))
+
+    def clone(self, rm=False):
+        if os.path.exists(self.directory):
+            if rm:
+                shutil.rmtree(self.directory)
+            else:
+                raise IOError
+
+        subprocess.check_output([SHELL_CMD, "-c", "git clone %s %s" % \
+            (self.repo, self.directory)], stderr=subprocess.STDOUT)
+        self._execute_command("git checkout %s -b %s" % \
+            (self.repo_ref, TOASTER_TEST_BRANCH))
+
+    def setup(self):
+        self._execute_command("virtualenv %s" % VENV_NAME)
+        self._execute_command_venv(VENV_NAME, "pip install -r" \
+            " bitbake/toaster-requirements.txt")
+
+    def start(self):
+        return self._execute_command_venv(VENV_NAME,
+            "source %s/oe-init-build-env; source %s/bitbake/bin/toaster start" % \
+            (self.directory, self.directory))
+
+    def _stop_force(self):
+        """
+            The _stop_force method iterates over the /proc and search for toaster path
+            in the process cmdline then send SIGKILL for every matched process.
+        """
+        pids = []
+        for p in find_processes():
+            if len(p.cmdline) > 1 and \
+                os.path.basename(p.cmdline[0]) == 'python' and \
+                p.cmdline[1].startswith(self.directory):
+                    pids.append(p.pid)
+
+        for pid in pids:
+            try:
+                os.kill(pid, signal.SIGKILL)
+            except:
+                pass
+
+        return ''
+
+    def stop(self, force=False):
+        """
+            The stop method have force mode because toaster without production 
+            setup have known issues when is on load, the server response 503
+            service unavailable.
+        """
+        if force:
+            return self._stop_force()
+        else:
+            return self._execute_command_venv(VENV_NAME,
+                "source %s/oe-init-build-env; source %s/bitbake/bin/toaster stop" % \
+                (self.directory, self.directory))
diff --git a/toaster/toaster.py b/toaster/toaster.py
new file mode 100755
index 0000000..d3c5fff
--- /dev/null
+++ b/toaster/toaster.py
@@ -0,0 +1,125 @@
+import unittest, time, re, sys, getopt, os, logging, string, errno, exceptions
+import shutil, argparse, ConfigParser, platform
+
+from selenium import webdriver
+from selenium.common.exceptions import NoSuchElementException
+from selenium import selenium
+from selenium.webdriver.common.by import By
+from selenium.webdriver.common.keys import Keys
+from selenium.webdriver.support.ui import Select
+
+sys.path.insert(0, os.path.join(os.path.dirname(
+    os.path.abspath(__file__)), '../'))
+from toaster.helpers import ToasterHelper
+
+WORK_DIRECTORY = '/tmp/toaster'
+POKY_URL = 'http://git.yoctoproject.org/git/poky.git'
+
+class InitToaster(unittest.TestCase):
+    @classmethod
+    def setUpClass(self):
+        self.toaster_helper = ToasterHelper(WORK_DIRECTORY, POKY_URL)
+        self.toaster_helper.clone(rm=True)
+        self.toaster_helper.setup()
+        self.toaster_helper.start()
+
+        self.driver = webdriver.Firefox()
+        self.timeout = 320
+
+    @classmethod
+    def tearDownClass(self):
+        self.toaster_helper.stop(force=True)
+        self.driver.close()
+
+    def is_text_present (self, patterns):
+        for pattern in patterns:
+            if str(pattern) not in self.driver.page_source:
+                print pattern
+                return False
+        return True
+
+    def test_setupToaster(self):
+        self.driver.maximize_window()
+        self.driver.get("localhost:8000")
+        try:
+            self.driver.find_element_by_css_selector("a[href='/toastergui/projects/']").click()
+        except:
+            self.driver.find_element_by_id("new-project-button").click()
+            self.driver.find_element_by_id("new-project-name").send_keys("selenium-project")
+            self.driver.find_element_by_id("create-project-button").click()
+        try:
+            self.driver.find_element_by_link_text("selenium-project").click()
+        except:
+            self.driver.find_element_by_id("new-project-button").click()
+            self.driver.find_element_by_id("new-project-name").send_keys("selenium-project")
+            self.driver.find_element_by_id("create-project-button").click()
+        time.sleep(5)
+        #workaround
+#        self.driver.find_element_by_partial_link_text("Bitbake").click()
+#        self.driver.find_element_by_id("config_var_trash_10").click()
+#        time.sleep(5)
+        #queue up a core-image-minimal
+        self.driver.find_element_by_id("build-input").send_keys("core-image-minimal")
+        self.driver.find_element_by_id("build-button").click()
+        time.sleep(20)
+        #queue up a core-image-sato
+        self.driver.find_element_by_id("build-input").send_keys("core-image-sato")
+        self.driver.find_element_by_id("build-button").click()
+        time.sleep(20)
+        #go back to the main project page
+        self.driver.find_element_by_css_selector("a[href='/toastergui/projects/']").click()
+        self.driver.find_element_by_link_text("selenium-project").click()
+        #check if meta-selftest layer is added and import it if it's not
+        if not (self.is_text_present("meta-selftest")):
+            self.driver.find_element_by_css_selector("a[href='/toastergui/project/2/importlayer']").click()
+            self.driver.find_element_by_id("import-layer-name").send_keys("meta-selftest")
+            self.driver.find_element_by_id("layer-git-repo-url").send_keys("git://git.yoctoproject.org/poky")
+            self.driver.find_element_by_id("layer-subdir").send_keys("meta-selftest")
+            self.driver.find_element_by_id("layer-git-ref").send_keys("HEAD")
+            self.driver.find_element_by_id("import-and-add-btn").click()
+        #queue up an error-image build
+        self.driver.find_element_by_id("build-input").send_keys("error-image")
+        self.driver.find_element_by_id("build-button").click()
+        time.sleep(5)
+        #move to all builds page
+        self.driver.find_element_by_css_selector("a[href='/toastergui/builds/']").click()
+        time.sleep(5)
+        self.driver.refresh()
+        #check progress bar is displayed to signal a build has started
+        try:
+            self.driver.find_element_by_xpath("//div[@class='progress']").is_displayed()
+        except:
+            print "Unable to start new build"
+            self.fail(msg="Unable to start new build")
+        count = 0
+        failflag = False
+        try:
+            self.driver.refresh()
+            time.sleep(1)
+            print "First check starting"
+            while (self.driver.find_element_by_xpath("//div[@class='progress']").is_displayed()):
+                #print "Looking for build in progress"
+                print 'Builds running for '+str(count)+' minutes'
+                count += 5
+                #timeout default is at 179 minutes(3 hours); see set_up method to change
+                if (count > self.timeout):
+                    failflag = True
+                    print 'Builds took longer than expected to complete; Failing due to possible build stuck.'
+                    self.fail()
+                time.sleep(300)
+                self.driver.refresh()
+        except:
+           try:
+                if failflag:
+                    self.fail(msg="Builds took longer than expected to complete; Failing due to possible build stuck.")
+                print "Looking for successful build"
+                self.driver.find_element_by_xpath("//div[@class='alert build-result alert-success']").is_displayed()
+           except:
+                if failflag:
+                    self.fail(msg="Builds took longer than expected to complete; Failing due to possible build stuck.")
+                print 'Builds did not complete successfully'
+                self.fail(msg="Builds did not complete successfully.")
+        print "Builds complete!"
+
+if __name__ == "__main__":
+    unittest.main()
-- 
2.1.4


