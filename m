Return-Path: <stefanx.stanacar@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D50EE01494
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2013 12:55:06 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 02 Apr 2013 12:55:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,394,1363158000"; d="scan'208";a="279813716"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by azsmga001.ch.intel.com with ESMTP; 02 Apr 2013 12:55:05 -0700
Received: from localhost.localdomain (unknown [10.237.112.141])
	by linux.intel.com (Postfix) with ESMTP id 62D762C8001
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2013 12:54:58 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  2 Apr 2013 22:54:54 +0300
Message-Id: <fb54809a805342b7011430b80d371c4790eb59f0.1364932393.git.stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <cover.1364932393.git.stefanx.stanacar@intel.com>
References: <cover.1364932393.git.stefanx.stanacar@intel.com>
In-Reply-To: <cover.1364932393.git.stefanx.stanacar@intel.com>
References: <cover.1364932393.git.stefanx.stanacar@intel.com>
Subject: [yocto-autobuilder][PATCH 1/1] CreateAutoConf.py: add support for lib64 multilib
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
X-List-Received-Date: Tue, 02 Apr 2013 19:55:06 -0000

Add a check for 'multilib' : 'lib64' and keep the default as lib32,
so if a buildset has 'multilib': True (or 'multilib' : 'lib32') nothing changes.

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 .../site-packages/autobuilder/buildsteps/CreateAutoConf.py     | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
index ac90fd0..dbf7d14 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
@@ -81,10 +81,14 @@ class CreateAutoConf(ShellCommand):
             if self.pvr == "True":
                 fout = fout + 'LICENSE_FLAGS_WHITELIST += "license_cdv-pvr-driver" \n'
                 fout = fout + 'PVR_LICENSE = "yes" \n'
-            if self.multilib == "True":
+            if self.multilib:
                 fout = fout + 'require conf/multilib.conf \n'
-                fout = fout + 'MULTILIBS = "multilib:lib32" \n'
-                fout = fout + 'DEFAULTTUNE_virtclass-multilib-lib32 = "x86" \n'
+                if self.multilib == "True" or self.multilib == "lib32":
+                    fout = fout + 'MULTILIBS = "multilib:lib32" \n'
+                    fout = fout + 'DEFAULTTUNE_virtclass-multilib-lib32 = "x86" \n'
+                elif self.multilib == "lib64":
+                    fout = fout + 'MULTILIBS = "multilib:lib64" \n'
+                    fout = fout + 'DEFAULTTUNE_virtclass-multilib-lib64 = "x86-64" \n'
                 fout = fout + 'SSTATE_DIR ?= "' + os.environ.get("SSTATE_PUBLISH_DIR") + '/multilib" \n'
             else:
                 fout = fout + 'SSTATE_DIR ?= "' + os.environ.get("SSTATE_PUBLISH_DIR") + '/" \n'
-- 
1.8.1.4


