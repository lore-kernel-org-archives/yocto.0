Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02F28E00CC8; Tue,  9 Feb 2016 14:41:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D563E00CC8
	for <yocto@yoctoproject.org>; Tue,  9 Feb 2016 14:41:19 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga104.fm.intel.com with ESMTP; 09 Feb 2016 14:41:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,423,1449561600"; d="scan'208";a="45243990"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.155])
	by fmsmga004.fm.intel.com with ESMTP; 09 Feb 2016 14:41:18 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  9 Feb 2016 16:43:16 -0600
Message-Id: <1455057798-3213-8-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1455057798-3213-1-git-send-email-anibal.limon@linux.intel.com>
References: <1455057798-3213-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: richard.purdie@intel.com, benjamin.esquivel@intel.com
Subject: [[PATCH][qa-tools] 07/16] ts/toaster/helpers.py: Add new class ToasterHelper instead functions.
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
X-List-Received-Date: Tue, 09 Feb 2016 22:41:20 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

In order to provide a better interface add a ToasterHelper class the
functionality is the same so only modified functions to match method
definitions.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 tests/toaster/helpers.py | 62 ++++++++++++++++++++++++++----------------------
 1 file changed, 34 insertions(+), 28 deletions(-)

diff --git a/tests/toaster/helpers.py b/tests/toaster/helpers.py
index 5e54723..98b65e0 100644
--- a/tests/toaster/helpers.py
+++ b/tests/toaster/helpers.py
@@ -37,37 +37,43 @@ def _check_output1(*popenargs, **kwargs):
         raise subprocess.CalledProcessError(retcode, cmd, output=output)
     return output
 
-def _execute_command(directory, cmd):
-    return _check_output1([SHELL_CMD, "-c", "cd %s; %s" % \
-        (directory, cmd)], stderr=subprocess.STDOUT)
+class ToasterHelper(object):
+    def __init__(self, directory, repo, repo_ref='master'):
+        self.directory = directory
+        self.repo = repo
+        self.repo_ref = repo_ref
 
-def _execute_command_venv(directory, venv, cmd):
-    return _execute_command(directory, "source %s/%s/bin/activate; %s" % \
-        (directory, venv, cmd))
+    def _execute_command(self, cmd):
+        return _check_output1([SHELL_CMD, "-c", "cd %s; %s" % \
+            (self.directory, cmd)], stderr=subprocess.STDOUT)
 
-def toaster_clone(directory, repo, ref='master', rm=False):
-    if os.path.exists(directory):
-        if rm:
-            shutil.rmtree(directory)
-        else:
-            raise IOError
+    def _execute_command_venv(self, venv, cmd):
+        return self._execute_command("source %s/%s/bin/activate; %s"\
+                % (self.directory, venv, cmd))
 
-    subprocess.check_output([SHELL_CMD, "-c", "git clone %s %s" % \
-        (repo, directory)], stderr=subprocess.STDOUT)
-    _execute_command(directory, "git checkout %s -b %s" % \
-        (ref, TOASTER_TEST_BRANCH))
+    def clone(self, rm=False):
+        if os.path.exists(self.directory):
+            if rm:
+                shutil.rmtree(self.directory)
+            else:
+                raise IOError
 
-def toaster_setup(directory):
-    _execute_command(directory, "virtualenv %s" % VENV_NAME)
-    _execute_command_venv(directory, VENV_NAME, "pip install -r" \
-        " bitbake/toaster-requirements.txt")
+        subprocess.check_output([SHELL_CMD, "-c", "git clone %s %s" % \
+            (self.repo, self.directory)], stderr=subprocess.STDOUT)
+        self._execute_command("git checkout %s -b %s" % \
+            (self.repo_ref, TOASTER_TEST_BRANCH))
 
-def toaster_start(directory):
-    return _execute_command_venv(directory, VENV_NAME,
-        "source %s/oe-init-build-env; source %s/bitbake/bin/toaster start" % \
-        (directory, directory))
+    def setup(self):
+        self._execute_command("virtualenv %s" % VENV_NAME)
+        self._execute_command_venv(VENV_NAME, "pip install -r" \
+            " bitbake/toaster-requirements.txt")
 
-def toaster_stop(directory):
-    return _execute_command_venv(directory, VENV_NAME,
-        "source %s/oe-init-build-env; source %s/bitbake/bin/toaster stop" % \
-        (directory, directory))
+    def start(self):
+        return self._execute_command_venv(VENV_NAME,
+            "source %s/oe-init-build-env; source %s/bitbake/bin/toaster start" % \
+            (self.directory, self.directory))
+
+    def stop(self):
+        return self._execute_command_venv(VENV_NAME,
+            "source %s/oe-init-build-env; source %s/bitbake/bin/toaster stop" % \
+            (self.directory, self.directory))
-- 
2.1.4


