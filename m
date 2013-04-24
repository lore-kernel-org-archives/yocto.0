Return-Path: <stefanx.stanacar@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93448E0150E
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2013 15:29:36 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 24 Apr 2013 15:29:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,546,1363158000"; d="scan'208";a="300958372"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga001.jf.intel.com with ESMTP; 24 Apr 2013 15:29:23 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.149])
	by linux.intel.com (Postfix) with ESMTP id 6E7BE2C8001;
	Wed, 24 Apr 2013 15:29:06 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: elizabeth.flanagan@intel.com,
	 yocto@yoctoproject.org
Date: Thu, 25 Apr 2013 01:29:12 +0300
Message-Id: <40bd230b04fd680e7c8d86278604dd4494196595.1366841959.git.stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <cover.1366841959.git.stefanx.stanacar@intel.com>
References: <cover.1366841959.git.stefanx.stanacar@intel.com>
In-Reply-To: <cover.1366841959.git.stefanx.stanacar@intel.com>
References: <cover.1366841959.git.stefanx.stanacar@intel.com>
Subject: [yocto-autobuilder][PATCH 2/6] CreateAutoConf.py: add initmgr option
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
X-List-Received-Date: Wed, 24 Apr 2013 22:29:36 -0000

Add an option to set the init manager used. This is used
for building images with systemd. The order used is important
as it decides the primary init system.

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 .../autobuilder/buildsteps/CreateAutoConf.py              | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
index 3a4b9f9..fd73a3d 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
@@ -36,6 +36,7 @@ class CreateAutoConf(ShellCommand):
         self.adtdev=False
         self.factory = factory
         self.buildappsrcrev = "${AUTOREV}"
+        self.initmgr=None
         self.kwargs = kwargs
         for k, v in argdict.iteritems():
             if type(v) is bool:
@@ -112,13 +113,25 @@ class CreateAutoConf(ShellCommand):
                 fout = fout + 'BUILDHISTORY_COMMIT = "1"\n'
                 fout = fout + 'BUILDHISTORY_DIR = "' + os.environ.get('BUILD_HISTORY_DIR') + '/' + self.getProperty("buildername") + '/poky-buildhistory"\n'
                 fout = fout + 'BUILDHISTORY_PUSH_REPO = "' + os.environ.get('BUILD_HISTORY_REPO') + ' ' + self.getProperty("buildername") + ':' + self.getProperty("buildername") + '"\n'
-            if self.getProperty("branch_poky") != "danny" and self.getProperty("distroversion"):
+            if "danny" not in self.getProperty("branch_poky") and self.getProperty("distroversion"):
                 if self.adtdev == "True":
                     adtrepo_url=os.environ.get("ADTREPO_DEV_URL")
                     fout=fout+'ADTREPO = "' + adtrepo_url + '/' + self.getProperty("distroversion") + '-' + self.getProperty("got_revision_poky") + '-' + self.getProperty("branch_poky") + '"\n'
                 else:
                     adtrepo_url=os.environ.get("ADTREPO_URL")
                     fout=fout+'ADTREPO = "' + adtrepo_url + '/' + self.getProperty("distroversion") + '"\n'
+            if self.initmgr and "danny" not in self.getProperty("branch_poky"):
+                # we don't neet to test sysvinit only, because that's the default
+                if self.initmgr == "systemd":
+                    fout = fout + 'DISTRO_FEATURES_append = " systemd"\n'
+                    fout = fout + 'VIRTUAL-RUNTIME_init_manager = "systemd"\n'
+                    fout = fout + 'DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"\n'
+                if self.initmgr == "systemd sysvinit":
+                    fout = fout + 'DISTRO_FEATURES_append = " systemd"\n'
+                    fout = fout + 'VIRTUAL-RUNTIME_init_manager = "systemd"\n'
+                if self.initmgr == "sysvinit systemd":
+                    fout = fout + 'DISTRO_FEATURES_append = " systemd"\n'
+                    fout = fout + 'VIRTUAL-RUNTIME_init_manager = "sysvinit"\n'
         if self.atextappend:
             fout = fout + self.atextappend
 
-- 
1.8.1.4


