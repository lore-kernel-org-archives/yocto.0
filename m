Return-Path: <stefanx.stanacar@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11A33E00C56
	for <yocto@yoctoproject.org>; Tue,  1 Apr 2014 03:46:45 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 01 Apr 2014 03:46:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,771,1389772800"; d="scan'208";a="512261296"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga002.jf.intel.com with ESMTP; 01 Apr 2014 03:46:43 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.160])
	by linux.intel.com (Postfix) with ESMTP id 0F7D46A4083;
	Tue,  1 Apr 2014 03:46:27 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  1 Apr 2014 13:47:02 +0300
Message-Id: <1396349224-14532-1-git-send-email-stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.9.0
Subject: [yocto-autobuilder][PATCH] CreateAutoConf: strict checking for multilib
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
X-List-Received-Date: Tue, 01 Apr 2014 10:46:48 -0000

So we don't create multilib configs unless True or lib32 or lib64,
and doesn't add the inherit multilib.conf for False.

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
index ec69355..59a88c4 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
@@ -95,12 +95,13 @@ class CreateAutoConf(ShellCommand):
             if self.pvr == "True":
                 fout = fout + 'LICENSE_FLAGS_WHITELIST += "license_cdv-pvr-driver" \n'
                 fout = fout + 'PVR_LICENSE = "yes" \n'
-            if self.multilib:
-                fout = fout + 'require conf/multilib.conf \n'
+            if self.multilib and self.multilib != "False":
                 if self.multilib == "True" or self.multilib == "lib32":
+                    fout = fout + 'require conf/multilib.conf \n'
                     fout = fout + 'MULTILIBS = "multilib:lib32" \n'
                     fout = fout + 'DEFAULTTUNE_virtclass-multilib-lib32 = "x86" \n'
                 elif self.multilib == "lib64":
+                    fout = fout + 'require conf/multilib.conf \n'
                     fout = fout + 'MULTILIBS = "multilib:lib64" \n'
                     fout = fout + 'DEFAULTTUNE_virtclass-multilib-lib64 = "x86-64" \n'
                 if not self.nosstate:
-- 
1.9.0


