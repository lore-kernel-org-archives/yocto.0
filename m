Return-Path: <stefanx.stanacar@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87AC5E014F1
	for <yocto@yoctoproject.org>; Fri, 24 May 2013 08:52:04 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga101.ch.intel.com with ESMTP; 24 May 2013 08:52:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,736,1363158000"; d="scan'208";a="339529666"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga001.fm.intel.com with ESMTP; 24 May 2013 08:52:04 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.149])
	by linux.intel.com (Postfix) with ESMTP id A72756A4087;
	Fri, 24 May 2013 08:51:46 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: yocto@yoctoproject.org,
	elizabeth.flanagan@intel.com
Date: Fri, 24 May 2013 18:52:20 +0300
Message-Id: <1369410740-28744-1-git-send-email-stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
Subject: [yocto-autobuilder][PATCH] buildsteps: fix passing timeout arg for two steps
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
X-List-Received-Date: Fri, 24 May 2013 15:52:04 -0000

RunSanityTests and RunPreamble weren't passing kwargs to
ShellCommand so timeout was ignored.
For RunSanityTests I've changed the default to 1200 which should be
enough in most cases, but I've updated one build where
two images are actually tested (btrfs and ext4)

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 buildset-config/nightly-qa-extras.conf                               | 2 +-
 lib/python2.7/site-packages/autobuilder/buildsteps/RunPreamble.py    | 2 +-
 lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py | 5 +++--
 3 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/buildset-config/nightly-qa-extras.conf b/buildset-config/nightly-qa-extras.conf
index 1846764..1bdb0f0 100644
--- a/buildset-config/nightly-qa-extras.conf
+++ b/buildset-config/nightly-qa-extras.conf
@@ -11,7 +11,7 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'atextappend' : '\nROOT_HOME = "/root"\nIMAGE_FSTYPES = "btrfs"\nKERNEL_FEATURES_append = " cfg/fs/btrfs"\n'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'core-image-sato'}},
-        {'RunSanityTests': {'images': 'core-image-sato'}},
+        {'RunSanityTests': {'images': 'core-image-sato', 'timeout' : '2400'}},
         {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'atextappend' : '\nIMAGE_FEATURES_append = " read-only-rootfs"\n'}},
         {'BuildImages': {'images': 'core-image-sato'}},
         {'RunSanityTests': {'images': 'core-image-sato', 'scene' : 'sanity:boot sanity:ssh'}}]
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunPreamble.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunPreamble.py
index d6476d6..5df2a7c 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/RunPreamble.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunPreamble.py
@@ -30,7 +30,7 @@ class RunPreamble(ShellCommand):
         # Timeout needs to be passed to LoggingBuildStep as a kwarg
         self.timeout = 100000
         kwargs['timeout']=self.timeout
-        ShellCommand.__init__(self)
+        ShellCommand.__init__(self, **kwargs)
 
     def describe(self, done=False):
         description = ShellCommand.describe(self,done)
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py
index 1a428be..82fb044 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py
@@ -24,6 +24,8 @@ class RunSanityTests(ShellCommand):
         self.factory = factory
         self.images=""
         self.scene=None
+        # the default of 1200 seconds is enough for running sanity tests in most cases
+        self.timeout = 1200
         for k, v in argdict.iteritems():
             setattr(self, k, v)
         self.description = "Running Sanity Tests"
@@ -36,10 +38,9 @@ class RunSanityTests(ShellCommand):
             command = command + "echo 'TEST_SCEN = \"" + self.scene + "\"'" + " >> ./conf/auto.conf;"
         command = command + "DISPLAY=localhost:1 bitbake " + self.images + " -c qemuimagetest_standalone"
         # Timeout needs to be passed to LoggingBuildStep as a kwarg
-        self.timeout = 100000
         kwargs['timeout']=self.timeout
         self.command = command
-        ShellCommand.__init__(self)
+        ShellCommand.__init__(self, **kwargs)
 
     def describe(self, done=False):
         description = ShellCommand.describe(self,done)
-- 
1.8.1.4


