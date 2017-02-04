Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D294E00A76; Sat,  4 Feb 2017 10:46:00 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30FC0E008F2
	for <yocto@yoctoproject.org>; Sat,  4 Feb 2017 10:45:50 -0800 (PST)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga102.fm.intel.com with ESMTP; 04 Feb 2017 10:45:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,335,1477983600"; d="scan'208";a="60868916"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.149])
	by orsmga005.jf.intel.com with ESMTP; 04 Feb 2017 10:45:50 -0800
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Sat,  4 Feb 2017 10:41:46 -0800
Message-Id: <1486233706-26855-1-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: jurobystricky@hotmail.com
Subject: [meta-zephyr][morty][PATCH] testimage: performace improvements
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
X-List-Received-Date: Sat, 04 Feb 2017 18:46:00 -0000

Refactored processing of QEMU logs.
The original code read QEMU logs every 30 seconds, which
resulted in each test taking at least 30 seconds to finish.
In reality, most tests take only a few seconds.
Although the tests run in parallel, on systems with only a few
CPUs this can make a very noticable difference.

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 lib/oeqa/controllers/zephyrtargetconrol.py  | 66 -----------------------------
 lib/oeqa/controllers/zephyrtargetcontrol.py | 66 +++++++++++++++++++++++++++++
 lib/oeqa/runtime/zephyr.py                  | 29 +++++++------
 lib/oeqa/utils/qemuzephyrrunner.py          | 52 +++++++++++++++--------
 4 files changed, 118 insertions(+), 95 deletions(-)
 delete mode 100644 lib/oeqa/controllers/zephyrtargetconrol.py
 create mode 100644 lib/oeqa/controllers/zephyrtargetcontrol.py

diff --git a/lib/oeqa/controllers/zephyrtargetconrol.py b/lib/oeqa/controllers/zephyrtargetconrol.py
deleted file mode 100644
index 94bf183..0000000
--- a/lib/oeqa/controllers/zephyrtargetconrol.py
+++ /dev/null
@@ -1,66 +0,0 @@
-# Copyright (C) 2013-2016 Intel Corporation
-#
-# Released under the MIT license (see COPYING.MIT)
-
-# This module is used by testimage.bbclass for setting up and controlling a target machine.
-
-import os
-import shutil
-import bb
-import logging
-from oeqa.targetcontrol import QemuTarget
-from oeqa.utils.dump import TargetDumper
-from oeqa.utils.qemuzephyrrunner import QemuZephyrRunner
-
-class QemuTargetZephyr(QemuTarget):
-
-    def __init__(self, d):
-
-        super(QemuTarget, self).__init__(d)
-        self.qemulog = os.path.join(self.testdir, "qemu_boot_log.%s" % self.datetime)
-        dump_target_cmds = d.getVar("testimage_dump_target", True)
-        dump_host_cmds = d.getVar("testimage_dump_host", True)
-        dump_dir = d.getVar("TESTIMAGE_DUMP_DIR", True)
-
-        self.kernel = os.path.join(d.getVar("DEPLOY_DIR_IMAGE", True), d.getVar("ZEPHYR_IMAGENAME", True))
-        self.rootfs = ""
-
-        # Log QemuRunner log output to a file
-        import oe.path
-        from oeqa.utils.qemuzephyrrunner import QemuZephyrRunner
-        bb.utils.mkdirhier(self.testdir)
-        self.qemurunnerlog = os.path.join(self.testdir, 'qemurunner_log.%s' % self.datetime)
-        logger = logging.getLogger('BitBake.QemuRunner')
-        loggerhandler = logging.FileHandler(self.qemurunnerlog)
-        loggerhandler.setFormatter(logging.Formatter("%(levelname)s: %(message)s"))
-        logger.addHandler(loggerhandler)
-        oe.path.symlink(os.path.basename(self.qemurunnerlog), os.path.join(self.testdir, 'qemurunner_log'), force=True)
-        self.runner = QemuZephyrRunner(machine=d.getVar("MACHINE", True),
-                        rootfs=self.rootfs,
-                        tmpdir = d.getVar("TMPDIR", True),
-                        deploy_dir_image = d.getVar("DEPLOY_DIR_IMAGE", True),
-                        display = d.getVar("BB_ORIGENV", False).getVar("DISPLAY", True),
-                        logfile = self.qemulog,
-                        kernel = self.kernel,
-                        boottime = int(d.getVar("TEST_QEMUBOOT_TIMEOUT", True)))
-
-        self.target_dumper = TargetDumper(dump_target_cmds, dump_dir, self.runner)
-
-    def deploy(self):
-        try:
-            bb.utils.mkdirhier(self.testdir)
-            if self.rootfs:
-                shutil.copyfile(self.origrootfs, self.rootfs)
-        except Exception as e:
-            bb.fatal("Error copying rootfs: %s" % e)
-
-        qemuloglink = os.path.join(self.testdir, "qemu_boot_log")
-        if os.path.islink(qemuloglink):
-            os.unlink(qemuloglink)
-        os.symlink(self.qemulog, qemuloglink)
-
-        bb.note("Qemu log file: %s" % self.qemulog)
-        super(QemuTarget, self).deploy()
-
-    def wait_for_serial(self, func_timeout, data_timeout):
-        return self.runner.wait_for_serial(func_timeout, data_timeout)
diff --git a/lib/oeqa/controllers/zephyrtargetcontrol.py b/lib/oeqa/controllers/zephyrtargetcontrol.py
new file mode 100644
index 0000000..8400bd1
--- /dev/null
+++ b/lib/oeqa/controllers/zephyrtargetcontrol.py
@@ -0,0 +1,66 @@
+# Copyright (C) 2013-2017 Intel Corporation
+#
+# Released under the MIT license (see COPYING.MIT)
+
+# This module is used by testimage.bbclass for setting up and controlling a target machine.
+
+import os
+import shutil
+import bb
+import logging
+from oeqa.targetcontrol import QemuTarget
+from oeqa.utils.dump import TargetDumper
+from oeqa.utils.qemuzephyrrunner import QemuZephyrRunner
+
+class QemuTargetZephyr(QemuTarget):
+
+    def __init__(self, d):
+
+        super(QemuTarget, self).__init__(d)
+        self.qemulog = os.path.join(self.testdir, "qemu_boot_log.%s" % self.datetime)
+        dump_target_cmds = d.getVar("testimage_dump_target", True)
+        dump_host_cmds = d.getVar("testimage_dump_host", True)
+        dump_dir = d.getVar("TESTIMAGE_DUMP_DIR", True)
+
+        self.kernel = os.path.join(d.getVar("DEPLOY_DIR_IMAGE", True), d.getVar("ZEPHYR_IMAGENAME", True))
+        self.rootfs = ""
+
+        # Log QemuRunner log output to a file
+        import oe.path
+        from oeqa.utils.qemuzephyrrunner import QemuZephyrRunner
+        bb.utils.mkdirhier(self.testdir)
+        self.qemurunnerlog = os.path.join(self.testdir, 'qemurunner_log.%s' % self.datetime)
+        logger = logging.getLogger('BitBake.QemuRunner')
+        loggerhandler = logging.FileHandler(self.qemurunnerlog)
+        loggerhandler.setFormatter(logging.Formatter("%(levelname)s: %(message)s"))
+        logger.addHandler(loggerhandler)
+        oe.path.symlink(os.path.basename(self.qemurunnerlog), os.path.join(self.testdir, 'qemurunner_log'), force=True)
+        self.runner = QemuZephyrRunner(machine=d.getVar("MACHINE", True),
+                        rootfs=self.rootfs,
+                        tmpdir = d.getVar("TMPDIR", True),
+                        deploy_dir_image = d.getVar("DEPLOY_DIR_IMAGE", True),
+                        display = d.getVar("BB_ORIGENV", False).getVar("DISPLAY", True),
+                        logfile = self.qemulog,
+                        kernel = self.kernel,
+                        boottime = int(d.getVar("TEST_QEMUBOOT_TIMEOUT", True)))
+
+        self.target_dumper = TargetDumper(dump_target_cmds, dump_dir, self.runner)
+
+    def deploy(self):
+        try:
+            bb.utils.mkdirhier(self.testdir)
+            if self.rootfs:
+                shutil.copyfile(self.origrootfs, self.rootfs)
+        except Exception as e:
+            bb.fatal("Error copying rootfs: %s" % e)
+
+        qemuloglink = os.path.join(self.testdir, "qemu_boot_log")
+        if os.path.islink(qemuloglink):
+            os.unlink(qemuloglink)
+        os.symlink(self.qemulog, qemuloglink)
+
+        bb.note("Qemu log file: %s" % self.qemulog)
+        super(QemuTarget, self).deploy()
+
+    def serial_readline(self):
+        return self.runner.serial_readline()
diff --git a/lib/oeqa/runtime/zephyr.py b/lib/oeqa/runtime/zephyr.py
index 94601b8..6670d96 100644
--- a/lib/oeqa/runtime/zephyr.py
+++ b/lib/oeqa/runtime/zephyr.py
@@ -5,19 +5,24 @@ class ZephyrTest(oeRuntimeTest):
 
     def test_boot_zephyr(self):
         success = False
-        logfile = self.target.wait_for_serial(180, 30)
+        logfile = self.target.qemurunnerlog
+        while True:
+            line = self.target.serial_readline().decode("utf-8")
 
-        with open(logfile) as f:
-            for line in f:
-                # All good
-                if "PROJECT EXECUTION SUCCESSFUL" in line:
-                    success = True
-                    break
-                # Most likely cause for faults is incorrectly compiled code
-                if "***** USAGE FAULT *****" in line:
-                    success = False
-                    self.assertTrue(success, msg='***** USAGE FAULT *****" in file:///%s' % logfile)
-                    break
+            # All good
+            if "PROJECT EXECUTION SUCCESSFUL" in line:
+                success = True
+                break
+
+            if "PROJECT EXECUTION FAILED" in line:
+                success = False
+                self.assertTrue(success, msg='PROJECT EXECUTION FAILED in file:///%s' % logfile)
+                break
+            # Most likely cause for faults is incorrectly compiled code
+            if "***** USAGE FAULT *****" in line:
+                success = False
+                self.assertTrue(success, msg='***** USAGE FAULT *****" in file:///%s' % logfile)
+                break
 
         # test program finished, complain if no success message
         self.assertTrue(success, msg='"PROJECT EXECUTION SUCCESSFUL" not in file:///%s' % logfile)
diff --git a/lib/oeqa/utils/qemuzephyrrunner.py b/lib/oeqa/utils/qemuzephyrrunner.py
index 2011434..d4b6c8e 100644
--- a/lib/oeqa/utils/qemuzephyrrunner.py
+++ b/lib/oeqa/utils/qemuzephyrrunner.py
@@ -1,8 +1,8 @@
-# Copyright (C) 2015-2016 Intel Corporation
+# Copyright (C) 2015-2017 Intel Corporation
 #
 # Released under the MIT license (see COPYING.MIT)
 
-# This module provides a class for starting qemu images of poky tiny.
+# This module provides a class for starting qemu images.
 # It's used by testimage.bbclass.
 
 import subprocess
@@ -13,6 +13,7 @@ import socket
 import select
 import bb
 import tempfile
+import sys
 from oeqa.utils.qemurunner import QemuRunner
 
 class QemuZephyrRunner(QemuRunner):
@@ -28,6 +29,10 @@ class QemuZephyrRunner(QemuRunner):
         self.socketname = self.socketfile.name
         self.server_socket = None
         self.kernel = kernel
+        self.buffers = b''
+        self._rbufsize = 4096
+        # 5 minutes timeout...
+        self.endtime = time.time() + 60*5
 
     def create_socket(self):
         bb.note("waiting at most %s seconds for qemu pid" % self.runqemutime)
@@ -117,20 +122,33 @@ class QemuZephyrRunner(QemuRunner):
         bb.note("qemu started, pid is %s" % self.runqemu.pid)
         return self.create_socket()
 
-    def wait_for_serial(self, func_timeout, data_timeout):
-        stopread = False
-        check_endtime = False
-        self.server_socket.setblocking(0)
-        endtime = time.time() + func_timeout
+    def _readline(self):
+        nl = self.buffers.find(b'\n')
+        if nl >= 0:
+            nl += 1
+            line = self.buffers[:nl]
+            newbuf = self.buffers[nl:]
+            self.buffers = newbuf
+            return line
+        return None
+
+    def serial_readline(self):
+        line = self._readline()
+        if line is None:
+            while True:
+                if time.time() >= self.endtime:
+                    bb.warn("Timeout!")
+                    raise Exception("Timeout")
+                data = self.server_socket.recv(self._rbufsize)
+                if data is None:
+                    raise Exception("No data on read ready socket")
+
+                self.buffers = self.buffers + data
+                line = self._readline()
+                if line is not None:
+                    break
+
+        self.log(line)
+        return line
 
-        while time.time() < endtime:
-            sread, _, _ = select.select([self.server_socket],[],[],data_timeout)
-            if not sread:
-                break
-            answer = self.server_socket.recv(1024)
-            if answer:
-                self.log(answer)
-            else:
-                break
 
-        return self.logfile
-- 
2.7.4


