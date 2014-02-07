Return-Path: <stefanx.stanacar@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4953E006B7
	for <yocto@yoctoproject.org>; Fri,  7 Feb 2014 03:01:31 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 07 Feb 2014 03:01:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,799,1384329600"; d="scan'208";a="471299814"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga001.fm.intel.com with ESMTP; 07 Feb 2014 03:01:30 -0800
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.156])
	by linux.intel.com (Postfix) with ESMTP id EEE626A4007;
	Fri,  7 Feb 2014 03:01:22 -0800 (PST)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: yocto@yoctoproject.org,
	elizabeth.flanagan@intel.com
Date: Fri,  7 Feb 2014 13:01:23 +0200
Message-Id: <1391770883-14353-2-git-send-email-stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.5.3
Subject: [yocto-autobuilder][PATCH] Add buildstep and buildset for oe-selftest script
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
X-List-Received-Date: Fri, 07 Feb 2014 11:01:35 -0000

This will run the oe-selftest script which has been
available in master for a while. The scripts run a series
of bitbake tests and takes care of it's own config.
Because some of the tests mess up with sstate we
want to use the default sstate dir, so a nosstate option
was added to CreateAutoConf.

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 buildset-config.master/nightly-oe-selftest.conf    | 15 +++++++++++++
 .../autobuilder/buildsteps/CreateAutoConf.py       |  7 ++++--
 .../autobuilder/buildsteps/RunOeSelftest.py        | 26 ++++++++++++++++++++++
 3 files changed, 46 insertions(+), 2 deletions(-)
 create mode 100644 buildset-config.master/nightly-oe-selftest.conf
 create mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py

diff --git a/buildset-config.master/nightly-oe-selftest.conf b/buildset-config.master/nightly-oe-selftest.conf
new file mode 100644
index 0000000..42bccde
--- /dev/null
+++ b/buildset-config.master/nightly-oe-selftest.conf
@@ -0,0 +1,15 @@
+[nightly-oe-selftest]
+builders: 'builder1'
+repos: [{'poky':
+            {'repourl':'git://git.yoctoproject.org/poky',
+             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
+             'branch':'master'}}]
+steps: [{'SetDest':{}},
+        {'CheckOutLayers': {}},
+        {'RunPreamble': {}},
+        {'GetDistroVersion' : {'distro': 'poky'}},
+        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'x86_64', 'distro': 'poky', 'nosstate': True, 'packages': 'rpm'}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
+        {'BuildImages': {'images': 'core-image-minimal'}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'layerdirs': ['meta-selftest']}},
+        {'RunOeSelftest': {}}]
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
index 116ee14..bec221a 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
@@ -38,6 +38,7 @@ class CreateAutoConf(ShellCommand):
         self.factory = factory
         self.buildappsrcrev = "${AUTOREV}"
         self.initmgr=None
+        self.nosstate=False
         self.kwargs = kwargs
         for k, v in argdict.iteritems():
             if type(v) is bool:
@@ -100,9 +101,11 @@ class CreateAutoConf(ShellCommand):
                 elif self.multilib == "lib64":
                     fout = fout + 'MULTILIBS = "multilib:lib64" \n'
                     fout = fout + 'DEFAULTTUNE_virtclass-multilib-lib64 = "x86-64" \n'
-                fout = fout + 'SSTATE_DIR ?= "' + os.environ.get("SSTATE_DIR") + '/multilib" \n'
+                if not self.nosstate:
+                    fout = fout + 'SSTATE_DIR ?= "' + os.environ.get("SSTATE_DIR") + '/multilib" \n'
             else:
-                fout = fout + 'SSTATE_DIR ?= "' + os.environ.get("SSTATE_DIR") + '/" \n'
+                if not self.nosstate:
+                    fout = fout + 'SSTATE_DIR ?= "' + os.environ.get("SSTATE_DIR") + '/" \n'
             if self.gplv3 == "False":
                     fout = fout + 'INCOMPATIBLE_LICENSE = "GPLv3" \n'
             if self.x32 == "True":
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py
new file mode 100644
index 0000000..0efddd7
--- /dev/null
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py
@@ -0,0 +1,26 @@
+'''
+__author__ = "Stefan Stanacar"
+__copyright__ = "Copyright 2014 Intel Corporation"
+__credits__ = ["Stefan Stanacar"]
+__license__ = "GPL"
+__version__ = "2.0"
+__maintainer__ = "Stefan Stanacar"
+__email__ = "stefanx.stanacar@intel.com"
+'''
+
+
+from buildbot.steps.shell import ShellCommand
+
+class RunOeSelftest(ShellCommand):
+    haltOnFailure = False
+    flunkOnFailure = True
+    name = "Running oe-selftest"
+    def __init__(self, factory, argdict=None, **kwargs):
+        self.factory = factory
+        for k, v in argdict.iteritems():
+                setattr(self, k, v)
+        self.description = "Running oe-selftest"
+        self.timeout = 100000
+        kwargs['timeout']=self.timeout
+        self.command = "if [ -d meta-selftest ]; then . ./oe-init-build-env; oe-selftest; else echo 'Skipping step - no meta-selftest layer here'; fi"
+        ShellCommand.__init__(self, **kwargs)
-- 
1.8.5.3


