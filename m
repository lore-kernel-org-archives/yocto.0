Return-Path: <stefanx.stanacar@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49D56E0150B
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2013 11:52:14 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 23 Apr 2013 11:52:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,536,1363158000"; d="scan'208";a="327031227"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga002.fm.intel.com with ESMTP; 23 Apr 2013 11:52:13 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.149])
	by linux.intel.com (Postfix) with ESMTP id 066622C8001;
	Tue, 23 Apr 2013 11:52:04 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: elizabeth.flanagan@intel.com,
	 yocto@yoctoproject.org
Date: Tue, 23 Apr 2013 21:52:05 +0300
Message-Id: <ccc7bd958328b4741d7130288ebea432f2e7f9c2.1366742537.git.stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <cover.1366742537.git.stefanx.stanacar@intel.com>
References: <cover.1366742537.git.stefanx.stanacar@intel.com>
In-Reply-To: <cover.1366742537.git.stefanx.stanacar@intel.com>
References: <cover.1366742537.git.stefanx.stanacar@intel.com>
Subject: [yocto-autobuilder][RFC 5/6] buildsteps/RunSanityTests.py: add suport for custom steps
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
X-List-Received-Date: Tue, 23 Apr 2013 18:52:14 -0000

Add an option so we can pass custom qemuimage tests,
by appending TEST_SCEN to local.conf.

This isn't used by any buildsets right now.

It could be used when we want to run only certain sanity tests (i.e don't run
all the tests in the image scenario but run only sanity:boot and sanity:dmesg
by appending TEST_SCENE = "sanity:boot sanity:dmesg")

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py
index a352de5..1a428be 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py
@@ -23,6 +23,7 @@ class RunSanityTests(ShellCommand):
     def __init__(self, factory, argdict=None, **kwargs):
         self.factory = factory
         self.images=""
+        self.scene=None
         for k, v in argdict.iteritems():
             setattr(self, k, v)
         self.description = "Running Sanity Tests"
@@ -31,6 +32,8 @@ class RunSanityTests(ShellCommand):
         command = command + "(echo > /dev/tcp/localhost/5901) 2> /dev/null;"
         command = command + 'if [ $? -ne 0 ]; then echo "Starting a VNC server on :1"; vncserver :1; else echo "Will use a VNC server already running on :1"; fi;'
         command = command + "echo 'IMAGETEST = \"qemu\"' >> ./conf/auto.conf;"
+        if self.scene:
+            command = command + "echo 'TEST_SCEN = \"" + self.scene + "\"'" + " >> ./conf/auto.conf;"
         command = command + "DISPLAY=localhost:1 bitbake " + self.images + " -c qemuimagetest_standalone"
         # Timeout needs to be passed to LoggingBuildStep as a kwarg
         self.timeout = 100000
-- 
1.8.1.4


