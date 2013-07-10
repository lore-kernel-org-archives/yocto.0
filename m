Return-Path: <stefanx.stanacar@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52BBCE00722
	for <yocto@yoctoproject.org>; Wed, 10 Jul 2013 10:52:43 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga102.ch.intel.com with ESMTP; 10 Jul 2013 10:52:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,1037,1363158000"; d="scan'208";a="363262702"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga001.fm.intel.com with ESMTP; 10 Jul 2013 10:53:45 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.73])
	by linux.intel.com (Postfix) with ESMTP id 741D86A4092;
	Wed, 10 Jul 2013 10:52:40 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: yocto@yoctoproject.org,
	elizabeth.flanagan@intel.com
Date: Wed, 10 Jul 2013 20:32:35 +0300
Message-Id: <9f5e5a7673b62227f510440ee41a510d47d75617.1373474163.git.stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <cover.1373474163.git.stefanx.stanacar@intel.com>
References: <cover.1373474163.git.stefanx.stanacar@intel.com>
In-Reply-To: <cover.1373474163.git.stefanx.stanacar@intel.com>
References: <cover.1373474163.git.stefanx.stanacar@intel.com>
Subject: [yocto-autobuilder][PATCH 1/3] RunSanityTests: add support for the new testimage class
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
X-List-Received-Date: Wed, 10 Jul 2013 17:52:46 -0000

Now that the new qemu testimage class has been merged in master,
we should use it instead of the old one.
We use "suites" keyword to overwrite the default tests (which are
defined in the class) and "suitesappend" to append to the default list
for special cases (like systemd images)

[YOCTO #4838]

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 .../autobuilder/buildsteps/RunSanityTests.py       | 27 ++++++++++++++++------
 1 file changed, 20 insertions(+), 7 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py
index 82fb044..a8948d7 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py
@@ -24,23 +24,36 @@ class RunSanityTests(ShellCommand):
         self.factory = factory
         self.images=""
         self.scene=None
+        self.suites=None
+        self.suitesappend=None
         # the default of 1200 seconds is enough for running sanity tests in most cases
         self.timeout = 1200
         for k, v in argdict.iteritems():
             setattr(self, k, v)
         self.description = "Running Sanity Tests"
+        kwargs['timeout']=self.timeout
+        ShellCommand.__init__(self, **kwargs)
+
+    def start(self):
+        branch = self.getProperty("branch_poky")
         command = ""
         command = command + ". ./oe-init-build-env; "
         command = command + "(echo > /dev/tcp/localhost/5901) 2> /dev/null;"
         command = command + 'if [ $? -ne 0 ]; then echo "Starting a VNC server on :1"; vncserver :1; else echo "Will use a VNC server already running on :1"; fi;'
-        command = command + "echo 'IMAGETEST = \"qemu\"' >> ./conf/auto.conf;"
-        if self.scene:
-            command = command + "echo 'TEST_SCEN = \"" + self.scene + "\"'" + " >> ./conf/auto.conf;"
-        command = command + "DISPLAY=localhost:1 bitbake " + self.images + " -c qemuimagetest_standalone"
-        # Timeout needs to be passed to LoggingBuildStep as a kwarg
-        kwargs['timeout']=self.timeout
+        if "danny" not in branch and "dylan" not in branch:
+            command = command + "echo 'INHERIT += \"testimage\"' >> ./conf/auto.conf;"
+            if self.suites:
+                command = command + "echo 'TEST_SUITES = \"" + self.suites + "\"'" + " >> ./conf/auto.conf;"
+            if self.suitesappend:
+                command = command + "echo 'TEST_SUITES_append = \" " + self.suitesappend + "\"'" + " >> ./conf/auto.conf;"
+            command = command + "DISPLAY=:1 bitbake " + self.images + " -c testimage"
+        else:
+            command = command + "echo 'IMAGETEST = \"qemu\"' >> ./conf/auto.conf;"
+            if self.scene:
+                command = command + "echo 'TEST_SCEN = \"" + self.scene + "\"'" + " >> ./conf/auto.conf;"
+            command = command + "DISPLAY=localhost:1 bitbake " + self.images + " -c qemuimagetest_standalone"
         self.command = command
-        ShellCommand.__init__(self, **kwargs)
+        ShellCommand.start(self)
 
     def describe(self, done=False):
         description = ShellCommand.describe(self,done)
-- 
1.8.1.4


