Return-Path: <stefanx.stanacar@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9ADBBE0137D
	for <yocto@yoctoproject.org>; Mon, 13 May 2013 03:13:09 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 13 May 2013 03:13:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,660,1363158000"; d="scan'208";a="333168647"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga001.fm.intel.com with ESMTP; 13 May 2013 03:13:08 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.149])
	by linux.intel.com (Postfix) with ESMTP id 9EC066A4083;
	Mon, 13 May 2013 03:12:57 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: yocto@yoctoproject.org,
	elizabeth.flanagan@intel.com
Date: Mon, 13 May 2013 13:13:13 +0300
Message-Id: <1368439993-30447-1-git-send-email-stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
Subject: [yocto-autobuilder][PATCH] buildsteps, nightly: run bitbake-selftest
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
X-List-Received-Date: Mon, 13 May 2013 10:13:09 -0000

Added a new buildstep which calls bitbake-selftest.

[YOCTO #4433]

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 buildset-config/nightly.conf                       |  1 +
 .../autobuilder/buildsteps/RunBitbakeSelftest.py   | 28 ++++++++++++++++++++++
 2 files changed, 29 insertions(+)
 create mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps/RunBitbakeSelftest.py

diff --git a/buildset-config/nightly.conf b/buildset-config/nightly.conf
index ffbc271..80173a5 100644
--- a/buildset-config/nightly.conf
+++ b/buildset-config/nightly.conf
@@ -51,6 +51,7 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'x86_64', 
                             'distro': 'poky'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
+        {'RunBitbakeSelftest': {}},
         {'BuildImages': {'images': 'universe -c fetch'}},
         {'TriggerBuilds': {'schedulerNames':
                              {'build-appliance': {'waitForFinish': 'False'},
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunBitbakeSelftest.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunBitbakeSelftest.py
new file mode 100644
index 0000000..7d1874f
--- /dev/null
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunBitbakeSelftest.py
@@ -0,0 +1,28 @@
+'''
+Created on May 13, 2013
+
+__author__ = "Stefan Stanacar"
+__copyright__ = "Copyright 2013, Intel Corp."
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
+class RunBitbakeSelftest(ShellCommand):
+    haltOnFailure = False
+    flunkOnFailure = True
+    name = "Running bitbake-selftest"
+    def __init__(self, factory, argdict=None, **kwargs):
+        self.factory = factory
+        for k, v in argdict.iteritems():
+                setattr(self, k, v)
+        self.description = "Running bitbake-selftest"
+        self.timeout = 100000
+        kwargs['timeout']=self.timeout
+        self.command = ". ./oe-init-build-env; bitbake-selftest"
+        ShellCommand.__init__(self, **kwargs)
-- 
1.8.1.4


