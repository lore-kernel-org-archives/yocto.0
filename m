Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 442E7E00D9E; Tue,  9 Feb 2016 14:41:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F19A6E00C8C
	for <yocto@yoctoproject.org>; Tue,  9 Feb 2016 14:41:19 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga104.fm.intel.com with ESMTP; 09 Feb 2016 14:41:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,423,1449561600"; d="scan'208";a="45243994"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.155])
	by fmsmga004.fm.intel.com with ESMTP; 09 Feb 2016 14:41:19 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  9 Feb 2016 16:43:17 -0600
Message-Id: <1455057798-3213-9-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1455057798-3213-1-git-send-email-anibal.limon@linux.intel.com>
References: <1455057798-3213-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: richard.purdie@intel.com, benjamin.esquivel@intel.com
Subject: [[PATCH][qa-tools] 08/16] toaster/helper.py: Add force mode to stop method.
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
X-List-Received-Date: Tue, 09 Feb 2016 22:41:22 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The stop method have force mode because toaster without production
setup have known issues when is on load, the server response 503
service unavailable.

This mode iterates over process to found PID's of toaster instance
then sends SIGKILL to it.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 requeriments.txt         |  1 +
 tests/toaster/helpers.py | 38 ++++++++++++++++++++++++++++++++++----
 2 files changed, 35 insertions(+), 4 deletions(-)

diff --git a/requeriments.txt b/requeriments.txt
index 9ee5047..89a735d 100644
--- a/requeriments.txt
+++ b/requeriments.txt
@@ -2,3 +2,4 @@ python-bugzilla==1.2.2
 
 # toaster requirements
 selenium
+proc
diff --git a/tests/toaster/helpers.py b/tests/toaster/helpers.py
index 98b65e0..753bbf0 100644
--- a/tests/toaster/helpers.py
+++ b/tests/toaster/helpers.py
@@ -4,6 +4,8 @@ import shutil
 import signal
 import tempfile
 
+from proc.core import find_processes
+
 TOASTER_TEST_BRANCH = 'toaster_tests'
 VENV_NAME = 'venv'
 SHELL_CMD = os.environ['SHELL'] if 'SHELL' in os.environ else "/bin/bash"
@@ -73,7 +75,35 @@ class ToasterHelper(object):
             "source %s/oe-init-build-env; source %s/bitbake/bin/toaster start" % \
             (self.directory, self.directory))
 
-    def stop(self):
-        return self._execute_command_venv(VENV_NAME,
-            "source %s/oe-init-build-env; source %s/bitbake/bin/toaster stop" % \
-            (self.directory, self.directory))
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
-- 
2.1.4


