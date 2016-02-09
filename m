Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13708E00D98; Tue,  9 Feb 2016 14:41:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59B5AE00CC3
	for <yocto@yoctoproject.org>; Tue,  9 Feb 2016 14:41:18 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga104.fm.intel.com with ESMTP; 09 Feb 2016 14:41:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,423,1449561600"; d="scan'208";a="45243981"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.155])
	by fmsmga004.fm.intel.com with ESMTP; 09 Feb 2016 14:41:17 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  9 Feb 2016 16:43:15 -0600
Message-Id: <1455057798-3213-7-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1455057798-3213-1-git-send-email-anibal.limon@linux.intel.com>
References: <1455057798-3213-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: richard.purdie@intel.com, benjamin.esquivel@intel.com
Subject: [[PATCH][qa-tools] 06/16] tests/toaster/helpers.py: Fix toaster_start deadlocks.
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

When call toaster_start on failing scenarios (already started) it
becomes blocked on process.communicate() function so add my own
function for solve this issue.

The new function uses a tempfile instead of PIPE for avoid deadlocks.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 tests/toaster/helpers.py | 38 ++++++++++++++++++++++++++++++++++----
 1 file changed, 34 insertions(+), 4 deletions(-)

diff --git a/tests/toaster/helpers.py b/tests/toaster/helpers.py
index 7b82e88..5e54723 100644
--- a/tests/toaster/helpers.py
+++ b/tests/toaster/helpers.py
@@ -2,17 +2,47 @@ import subprocess
 import os
 import shutil
 import signal
+import tempfile
 
 TOASTER_TEST_BRANCH = 'toaster_tests'
 VENV_NAME = 'venv'
 SHELL_CMD = os.environ['SHELL'] if 'SHELL' in os.environ else "/bin/bash"
 
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
 def _execute_command(directory, cmd):
-    subprocess.check_call([SHELL_CMD, "-c", "cd %s; %s" % \
+    return _check_output1([SHELL_CMD, "-c", "cd %s; %s" % \
         (directory, cmd)], stderr=subprocess.STDOUT)
 
 def _execute_command_venv(directory, venv, cmd):
-    _execute_command(directory, "source %s/%s/bin/activate; %s" % \
+    return _execute_command(directory, "source %s/%s/bin/activate; %s" % \
         (directory, venv, cmd))
 
 def toaster_clone(directory, repo, ref='master', rm=False):
@@ -33,11 +63,11 @@ def toaster_setup(directory):
         " bitbake/toaster-requirements.txt")
 
 def toaster_start(directory):
-    _execute_command_venv(directory, VENV_NAME,
+    return _execute_command_venv(directory, VENV_NAME,
         "source %s/oe-init-build-env; source %s/bitbake/bin/toaster start" % \
         (directory, directory))
 
 def toaster_stop(directory):
-    _execute_command_venv(directory, VENV_NAME,
+    return _execute_command_venv(directory, VENV_NAME,
         "source %s/oe-init-build-env; source %s/bitbake/bin/toaster stop" % \
         (directory, directory))
-- 
2.1.4


