Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web08.4420.1604619152336300491
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Nov 2020 15:32:32 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: yock.gen.mah@intel.com)
IronPort-SDR: Ja9LoZUvrGFCi+EP43RRilGhvd4qGhpZyfB7tewWMQ5Xm4csUxO0RkGky1DPlKuDZkYcUZCO70
 JODk9Mj4oCVQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9796"; a="169626022"
X-IronPort-AV: E=Sophos;i="5.77,454,1596524400"; 
   d="scan'208";a="169626022"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Nov 2020 15:32:31 -0800
IronPort-SDR: I0Rih9DC3TYMfhV5HLIZ4Vqu7TOlFDRIJ5lncAYWyKdoCjDXKnF4HPLzqYGOO3oAnyP7C2+x9E
 gdzTtUWWgTJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,454,1596524400"; 
   d="scan'208";a="364511079"
Received: from andromeda02.png.intel.com ([10.221.183.11])
  by orsmga007.jf.intel.com with ESMTP; 05 Nov 2020 15:32:30 -0800
From: yock.gen.mah@intel.com
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH ] zephyr: Yocto Image Tests Fix
Date: Fri,  6 Nov 2020 07:32:25 +0800
Message-Id: <1604619145-20593-1-git-send-email-yock.gen.mah@intel.com>
X-Mailer: git-send-email 2.7.4

From: yockgenm <yock.gen.mah@intel.com>

Fix bug on Image Test, previously the Image Tests was not working due to update on Yocto Image Test Framework.

The fix has rewritten and restructured existing Image Tests code to latest Yocto testimage class requirement to make meta-zephyr able to run Image Tests as expected.

Signed-off-by: yockgenm <yock.gen.mah@intel.com>
---
 README.txt                                  | 14 +++++++++-----
 lib/oeqa/controllers/__init__.py            |  3 ---
 lib/oeqa/controllers/zephyrtargetcontrol.py | 24 +++++++++++++-----------
 lib/oeqa/runtime/{ => cases}/zephyr.py      | 15 ++++++++++++---
 lib/oeqa/utils/qemuzephyrrunner.py          | 12 ++++++------
 5 files changed, 40 insertions(+), 28 deletions(-)
 rename lib/oeqa/runtime/{ => cases}/zephyr.py (80%)

diff --git a/README.txt b/README.txt
index a02659a..6463339 100644
--- a/README.txt
+++ b/README.txt
@@ -49,24 +49,28 @@ Building and Running Zephyr Tests
 Presently only toolchains for ARM, x86, IAMCU and Nios2 are supported.
 (For ARM we use CortexM3 toolchain)
 
+To run Zephyr Test using Yocto Image Tests, ensure following in local.conf:
+
+    INHERIT += "testimage"
+
 You can build and test an individual existing Zephyr test.
 This is done by appending the actual test name to the "zephyr-kernel-test",
 for example:
 
-    $ MACHINE=qemu-x86 bitbake zephyr-kernel-test-test_sleep
-    $ MACHINE=qemu-x86 bitbake zephyr-kernel-test-test_sleep -ctestimage
+    $ MACHINE=qemu-x86 bitbake zephyr-kernel-test-sleep
+    $ MACHINE=qemu-x86 bitbake zephyr-kernel-test-sleep -c testimage
 
 You can also build and run all Zephyr existing tests (as listed in the file
 zephyr-kernel-test.inc). For example:
 
     $ MACHINE=qemu-x86 bitbake zephyr-kernel-test-all
-    $ MACHINE=qemu-x86 bitbake zephyr-kernel-test-all -ctestimage
+    $ MACHINE=qemu-x86 bitbake zephyr-kernel-test-all -c testimage
 or 
     $ MACHINE=qemu-cortex-m3 bitbake zephyr-kernel-test-all
-    $ MACHINE=qemu-cortex-m3 bitbake zephyr-kernel-test-all -ctestimage
+    $ MACHINE=qemu-cortex-m3 bitbake zephyr-kernel-test-all -c testimage
 or 
     $ MACHINE=qemu-nios2 bitbake zephyr-kernel-test-all
-    $ MACHINE=qemu-nios2 bitbake zephyr-kernel-test-all -ctestimage
+    $ MACHINE=qemu-nios2 bitbake zephyr-kernel-test-all -c testimage
         
 
 Contributing
diff --git a/lib/oeqa/controllers/__init__.py b/lib/oeqa/controllers/__init__.py
index 8eda927..e69de29 100644
--- a/lib/oeqa/controllers/__init__.py
+++ b/lib/oeqa/controllers/__init__.py
@@ -1,3 +0,0 @@
-# Enable other layers to have modules in the same named directory
-from pkgutil import extend_path
-__path__ = extend_path(__path__, __name__)
diff --git a/lib/oeqa/controllers/zephyrtargetcontrol.py b/lib/oeqa/controllers/zephyrtargetcontrol.py
index 84ba3be..8e94cb5 100644
--- a/lib/oeqa/controllers/zephyrtargetcontrol.py
+++ b/lib/oeqa/controllers/zephyrtargetcontrol.py
@@ -11,11 +11,16 @@ from oeqa.utils.qemuzephyrrunner import QemuZephyrRunner
 supported_fstypes = ['elf']
 
 class QemuTargetZephyr(OETarget):
-    def __init__(self, logger, ip, server_ip, target_modules_path,
-            timeout=300, user='root',
-            port=None, machine='', rootfs='', kernel='', kvm=False,
-            dump_dir='', dump_host_cmds='', display='', bootlog='',
-            tmpdir='', dir_image='', boottime=60):
+    def __init__(self, logger, ip, server_ip,
+            machine='', rootfs='', tmpdir ='',dir_image ='',display=None,
+            kernel='',boottime=60,bootlog='',kvm=False,slirp=False,
+            dump_dir='',serial_ports=0,ovmf=None,target_modules_path='',powercontrol_cmd='',powercontrol_extra_args='',
+            serialcontrol_cmd=None,serialcontrol_extra_args='',testimage_dump_target='' ):
+
+        timeout =  300
+        user = 'root'
+        port = serial_ports
+        dump_host_cmds = testimage_dump_target
 
         super(QemuTargetZephyr, self).__init__(logger, ip, server_ip, timeout,
                 user, port)
@@ -42,19 +47,16 @@ class QemuTargetZephyr(OETarget):
                                  deploy_dir_image=dir_image, display=display,
                                  logfile=self.qemulog, boottime=boottime,
                                  use_kvm=kvm, dump_dir=dump_dir,
-                                 dump_host_cmds=dump_host_cmds)
+                                 dump_host_cmds=dump_host_cmds,
+                                 logger = logger)
 
 
-    def start(self, params=None, extra_bootparams=None):
+    def start(self, params=None, runqemuparams=None, extra_bootparams=None):
         if self.runner.start(params, extra_bootparams=extra_bootparams):
             self.ip = self.runner.ip
             self.server_ip = self.runner.server_ip
         else:
-            self.stop()
             raise RuntimeError("FAILED to start qemu - check the task log and the boot log")
 
-    def stop(self):
-        self.runner.stop()
-
     def serial_readline(self):
         return self.runner.serial_readline()
diff --git a/lib/oeqa/runtime/zephyr.py b/lib/oeqa/runtime/cases/zephyr.py
similarity index 80%
rename from lib/oeqa/runtime/zephyr.py
rename to lib/oeqa/runtime/cases/zephyr.py
index 96a119a..8751aba 100644
--- a/lib/oeqa/runtime/zephyr.py
+++ b/lib/oeqa/runtime/cases/zephyr.py
@@ -1,11 +1,20 @@
-import unittest
-from oeqa.oetest import oeRuntimeTest
+#
+# SPDX-License-Identifier: MIT
+#
 
-class ZephyrTest(oeRuntimeTest):
+from subprocess import Popen, PIPE
 
+from oeqa.runtime.case import OERuntimeTestCase
+from oeqa.core.decorator.oetimeout import OETimeout
+
+class ZephyrTest(OERuntimeTestCase):
+
+    @OETimeout(120)
     def test_boot_zephyr(self):
+
         success = False
         logfile = self.target.qemurunnerlog
+
         while True:
             line = self.target.serial_readline().decode("utf-8")
 
diff --git a/lib/oeqa/utils/qemuzephyrrunner.py b/lib/oeqa/utils/qemuzephyrrunner.py
index 9d7badb..0308f1e 100644
--- a/lib/oeqa/utils/qemuzephyrrunner.py
+++ b/lib/oeqa/utils/qemuzephyrrunner.py
@@ -18,10 +18,11 @@ from oeqa.utils.qemurunner import QemuRunner
 
 class QemuZephyrRunner(QemuRunner):
 
-    def __init__(self, machine, rootfs, display, tmpdir, deploy_dir_image, logfile, boottime, dump_dir, dump_host_cmds, use_kvm):
+    def __init__(self, machine, rootfs, display, tmpdir, deploy_dir_image, logfile, boottime, dump_dir, dump_host_cmds, use_kvm, logger):
+
         QemuRunner.__init__(self, machine, rootfs, display, tmpdir,
                             deploy_dir_image, logfile, boottime, None,
-                            None, use_kvm)
+                            None, use_kvm, logger)
 
         # Popen object for runqemu
         self.socketfile = tempfile.NamedTemporaryFile()
@@ -59,7 +60,8 @@ class QemuZephyrRunner(QemuRunner):
             return False
         return True
 
-    def start(self, params=None, extra_bootparams=None):
+    def start(self, params=None,runqemuparams=None, extra_bootparams=None):
+
         if not os.path.exists(self.tmpdir):
             bb.error("Invalid TMPDIR path %s" % self.tmpdir)
             #logger.error("Invalid TMPDIR path %s" % self.tmpdir)
@@ -83,7 +85,7 @@ class QemuZephyrRunner(QemuRunner):
             qemu_machine_args = '-machine lm3s6965evb'
         elif 'x86' in self.machine:
             qemu_binary = 'qemu-system-i386'
-            qemu_machine_args = '-machine type=pc-0.14'
+            qemu_machine_args = '-machine type=pc-1.3 -no-acpi -nographic -cpu qemu32,+nx,+pae'
         elif 'nios2' in self.machine:
             qemu_binary = 'qemu-system-nios2'
             qemu_machine_args = '-machine altera_10m50_zephyr'
@@ -155,5 +157,3 @@ class QemuZephyrRunner(QemuRunner):
 
         self.log(line)
         return line
-
-
-- 
2.7.4

