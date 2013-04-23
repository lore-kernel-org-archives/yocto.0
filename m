Return-Path: <stefanx.stanacar@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03D82E014F3
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2013 11:52:11 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 23 Apr 2013 11:50:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,536,1363158000"; d="scan'208";a="323168175"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga002.jf.intel.com with ESMTP; 23 Apr 2013 11:52:09 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.149])
	by linux.intel.com (Postfix) with ESMTP id D8BAD2C8001;
	Tue, 23 Apr 2013 11:52:00 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: elizabeth.flanagan@intel.com,
	 yocto@yoctoproject.org
Date: Tue, 23 Apr 2013 21:52:02 +0300
Message-Id: <f115de659e4266e23468935fe6a40addff926470.1366742537.git.stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <cover.1366742537.git.stefanx.stanacar@intel.com>
References: <cover.1366742537.git.stefanx.stanacar@intel.com>
In-Reply-To: <cover.1366742537.git.stefanx.stanacar@intel.com>
References: <cover.1366742537.git.stefanx.stanacar@intel.com>
Subject: [yocto-autobuilder][RFC 2/6] CreateAutoConf.py: add initmgr option
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
X-List-Received-Date: Tue, 23 Apr 2013 18:52:12 -0000

Add an option to set the init manager used. This is used
for building images with systemd.
The order is important as it decides the primary one.

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 .../site-packages/autobuilder/buildsteps/CreateAutoConf.py  | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
index 3a4b9f9..4af9860 100644
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
@@ -119,6 +120,18 @@ class CreateAutoConf(ShellCommand):
                 else:
                     adtrepo_url=os.environ.get("ADTREPO_URL")
                     fout=fout+'ADTREPO = "' + adtrepo_url + '/' + self.getProperty("distroversion") + '"\n'
+            if self.getProperty("branch_poky") != "danny" and self.initmgr:
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


