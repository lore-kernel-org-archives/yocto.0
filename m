Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59632E00AAA
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 10:27:10 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 05 Mar 2014 10:27:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,593,1389772800"; d="scan'208";a="467200399"
Received: from qana.jf.intel.com ([10.7.201.148])
	by orsmga001.jf.intel.com with ESMTP; 05 Mar 2014 10:26:49 -0800
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id 361C85F8262E; Wed,  5 Mar 2014 10:23:30 -0800 (PST)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Mar 2014 10:22:53 -0800
Message-Id: <15976a006a53a4090a613bd356f3806888cef459.1394042358.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 02/27] Add buildstep and buildset for oe-selftest script
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
X-List-Received-Date: Wed, 05 Mar 2014 18:27:10 -0000

From: Stefan Stanacar <stefanx.stanacar@intel.com>

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
1.8.1.2


