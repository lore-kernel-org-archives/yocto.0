Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B5D2E00C35; Mon, 10 Jul 2017 14:05:35 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EFE5E00B8B
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 14:05:30 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 Jul 2017 14:05:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,342,1496127600"; d="scan'208";a="125495641"
Received: from pequod.jf.intel.com ([10.54.74.4])
	by fmsmga006.fm.intel.com with ESMTP; 10 Jul 2017 14:05:29 -0700
From: Stephano Cetola <stephano.cetola@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 10 Jul 2017 14:04:46 -0700
Message-Id: <20170710210446.45687-1-stephano.cetola@linux.intel.com>
X-Mailer: git-send-email 2.13.2
Subject: [yocto-autobuilder][PATCH] add force bash option on build and preamble
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
X-List-Received-Date: Mon, 10 Jul 2017 21:05:35 -0000

Certain distros (Ubuntu) use a less desirable shell for /bin/sh
(dash). In some edge cases, if we source oe-init-build-env from
outside the OEROOT folder, the script will fail (as stated in the
oe-init-build-env script). By adding a variable to force bash as the
shell, we can call "bash -c" to ensure that a compatible shell is
used.

Currently, refkit is the only build that suffers from this edge case.

Signed-off-by: Stephano Cetola <stephano.cetola@linux.intel.com>
---
 buildset-config.controller/nightly-refkit.conf                    | 3 ++-
 lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py | 3 +++
 lib/python2.7/site-packages/autobuilder/buildsteps/RunPreamble.py | 3 +++
 3 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/buildset-config.controller/nightly-refkit.conf b/buildset-config.controller/nightly-refkit.conf
index 1d2487da6..cbc8508d7 100644
--- a/buildset-config.controller/nightly-refkit.conf
+++ b/buildset-config.controller/nightly-refkit.conf
@@ -11,7 +11,7 @@ repos: [{'poky':
              'submodules': True}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {'submodules': True}},
-        {'RunPreamble': {'altcmd': 'refkit/oe-init-build-env'}},
+        {'RunPreamble': {'forcebash': True, 'altcmd': 'refkit/oe-init-build-env'}},
         {'GetDistroVersion' : {'distro': 'refkit'}},
         {'CreateAutoConf': {'machine': 'intel-corei7-64', 'packages': 'ipk',
                             'distro': 'refkit', 'buildhistory' : False,
@@ -44,6 +44,7 @@ steps: [{'SetDest':{}},
         {'ScrapeTargets': {'source': 'refkit/meta-refkit/conf/distro/include/refkit-ci.inc',
                            'targetsvar': 'REFKIT_CI_BUILD_TARGETS'}},
         {'BuildImages': {'images': '#SCRAPEDTARGETS',
+                         'forcebash': True,
                          'oeinit': 'refkit/oe-init-build-env',
                          'overrideenv': ['BITBAKEDIR=#YPDIR/bitbake', 'OEROOT=#YPDIR/meta']}},
         {'ScrapeTargets': {'source': 'refkit/meta-refkit/conf/distro/include/refkit-ci.inc',
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
index 60ce07ff7..0406fd2e9 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
@@ -23,6 +23,7 @@ class BuildImages(BitbakeShellCommand):
     haltOnFailure = False
     flunkOnFailure = True
     name = "BuildImages"
+    forcebash = False
     def __init__(self, factory, argdict=None, **kwargs):
         self.layerversion_yoctobsp=0
         self.machine=""
@@ -163,6 +164,8 @@ class BuildImages(BitbakeShellCommand):
                 if self.minnowExists is None or self.minnowExists == "True":
                     self.command = env + ". ./" + self.oeinit + "; bitbake " + bitbakeflags + self.images
                     self.description = ["Building " + str(self.images)]
+        if self.forcebash:
+            self.command = ['bash', '-c', self.command]
         ShellCommand.start(self)
 
     def describe(self, done=False):
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunPreamble.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunPreamble.py
index e9de3c76c..23c4ace2b 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/RunPreamble.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunPreamble.py
@@ -16,6 +16,7 @@ class RunPreamble(ShellCommand):
     haltOnFailure = False
     flunkOnFailure = True
     name = "RunPreamble"
+    forcebash = False
 
     def __init__(self, factory, argdict=None, **kwargs):
         self.factory = factory
@@ -27,4 +28,6 @@ class RunPreamble(ShellCommand):
             self.command = ". ./oe-init-build-env"
         else:
             self.command = ". ./" + self.altcmd
+        if self.forcebash:
+            self.command = ['bash', '-c', self.command]
         ShellCommand.__init__(self, **kwargs)
-- 
2.13.2


