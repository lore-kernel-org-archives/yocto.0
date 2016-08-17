Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2BEABE0073D; Tue, 16 Aug 2016 17:09:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAFC8E0043F
	for <yocto@yoctoproject.org>; Tue, 16 Aug 2016 17:09:22 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga104.fm.intel.com with ESMTP; 16 Aug 2016 17:09:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,529,1464678000"; d="scan'208";a="1036797729"
Received: from wcrandle-mobl1.jf.intel.com ([10.7.199.73])
	by orsmga002.jf.intel.com with ESMTP; 16 Aug 2016 17:09:22 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 16 Aug 2016 17:09:19 -0700
Message-Id: <1471392559-5756-1-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [yocto-autobuilder][PATCH] cleanup and restart crashed vnc server
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
X-List-Received-Date: Wed, 17 Aug 2016 00:09:24 -0000

Use a common script to check for a running vnc server, and if not running
cleanup dangling lock files and restart the server.

[YOCTO #8210]

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
 bin/checkvnc                                                   | 10 ++++++++++
 .../site-packages/autobuilder/buildsteps/RunESDKSanityTests.py |  3 +--
 .../site-packages/autobuilder/buildsteps/RunOeSelftest.py      |  3 +--
 .../site-packages/autobuilder/buildsteps/RunSDKSanityTests.py  |  3 +--
 .../site-packages/autobuilder/buildsteps/RunSanityTests.py     |  3 +--
 5 files changed, 14 insertions(+), 8 deletions(-)
 create mode 100755 bin/checkvnc

diff --git a/bin/checkvnc b/bin/checkvnc
new file mode 100755
index 0000000..574ba48
--- /dev/null
+++ b/bin/checkvnc
@@ -0,0 +1,10 @@
+#!/bin/sh
+#
+# check if vnc server is running, and if not, cleanup and restart
+#
+pid=$(pidof Xvnc)
+if [[ $? != 0 ]]; then
+    echo "Xvnc not running, attempting restart"
+    vncserver -kill :1
+    vncserver
+fi
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunESDKSanityTests.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunESDKSanityTests.py
index 7471d3d..c16c8c2 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/RunESDKSanityTests.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunESDKSanityTests.py
@@ -47,8 +47,7 @@ class RunESDKSanityTests(BitbakeShellCommand):
         layerversion = self.getProperty("layerversion_core")
         command = ""
         command = command + ". ./oe-init-build-env; "
-        command = command + "netstat -an | grep -q 5901 ;"
-        command = command + 'if [ $? -ne 0 ]; then echo "Starting a VNC server on :1"; vncserver :1; else echo "Will use a VNC server already running on :1"; fi;'
+        command = command + "checkvnc; "
         if layerversion and int(layerversion) >= 7:
             command = command + "echo 'INHERIT += \"testsdk\"' >> ./conf/auto.conf;"
             command = command + "echo 'TEST_QEMUBOOT_TIMEOUT = \"1500\"' >> ./conf/auto.conf;"
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py
index 809bcc3..84d32fe 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py
@@ -31,8 +31,7 @@ class RunOeSelftest(ShellCommand):
     def start(self):
         self.command = ""
         self.command += ". ./oe-init-build-env; "
-        self.command += "netstat -an | grep -q 5901 ;"
-        self.command += "if [ $? -ne 0 ]; then echo 'Starting a VNC server on :1'; vncserver :1; else echo 'Will use a VNC server already running on :1'; fi;"
+        self.command += "checkvnc; "
         if self.tests == None:
             self.command += "if [ -d ../meta-selftest ]; then export DISPLAY=:1; oe-selftest --run-all-tests; else echo 'Skipping step - no meta-selftest layer here'; fi"
         else:
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunSDKSanityTests.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunSDKSanityTests.py
index 9b6eb5b..6fb3127 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/RunSDKSanityTests.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunSDKSanityTests.py
@@ -47,8 +47,7 @@ class RunSDKSanityTests(BitbakeShellCommand):
         layerversion = self.getProperty("layerversion_core")
         command = ""
         command = command + ". ./oe-init-build-env; "
-        command = command + "netstat -an | grep -q 5901 ;"
-        command = command + 'if [ $? -ne 0 ]; then echo "Starting a VNC server on :1"; vncserver :1; else echo "Will use a VNC server already running on :1"; fi;'
+        command = command + "checkvnc; "
         if layerversion and int(layerversion) >= 6:
             command = command + "echo 'INHERIT += \"testimage\"' >> ./conf/auto.conf;"
             command = command + "echo 'TEST_QEMUBOOT_TIMEOUT = \"1500\"' >> ./conf/auto.conf;"
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py
index 4fa6dac..81e20cd 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py
@@ -48,8 +48,7 @@ class RunSanityTests(BitbakeShellCommand):
         distro = self.getProperty("DISTRO")
         command = ""
         command = command + ". ./oe-init-build-env; "
-        command = command + "netstat -an | grep -q 5901 ;"
-        command = command + 'if [ $? -ne 0 ]; then echo "Starting a VNC server on :1"; vncserver :1; else echo "Will use a VNC server already running on :1"; fi;'
+        command = command + "checkvnc; "
         if distro == "poky-lsb" and layerversion and int(layerversion) < 6:
             command = "echo 'Skipping step.'"
         elif layerversion and int(layerversion) > 1:
-- 
2.5.5


