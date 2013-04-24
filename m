Return-Path: <stefanx.stanacar@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6D75E014F3
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2013 15:29:21 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 24 Apr 2013 15:29:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,546,1363158000"; d="scan'208";a="291448215"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by azsmga001.ch.intel.com with ESMTP; 24 Apr 2013 15:29:21 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.149])
	by linux.intel.com (Postfix) with ESMTP id 182432C8002;
	Wed, 24 Apr 2013 15:29:11 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: elizabeth.flanagan@intel.com,
	 yocto@yoctoproject.org
Date: Thu, 25 Apr 2013 01:29:16 +0300
Message-Id: <76f62b7f7d11977baca93266fbdd8635465bf02b.1366841959.git.stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <cover.1366841959.git.stefanx.stanacar@intel.com>
References: <cover.1366841959.git.stefanx.stanacar@intel.com>
In-Reply-To: <cover.1366841959.git.stefanx.stanacar@intel.com>
References: <cover.1366841959.git.stefanx.stanacar@intel.com>
Subject: [yocto-autobuilder][PATCH 6/6] CreateAutoConf.py: add option for package types
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
X-List-Received-Date: Wed, 24 Apr 2013 22:29:21 -0000

Using this option we'll be able to select only certain packages
to be built and because the order is important we determine the
image type too. E.g 'packages' : 'deb rpm' will build deb and rpm
packages but the image will use deb as package manager.

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 .../site-packages/autobuilder/buildsteps/CreateAutoConf.py         | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
index fd73a3d..8fbef3e 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
@@ -22,6 +22,7 @@ class CreateAutoConf(ShellCommand):
         self.machine=""
         self.buildapp=""
         self.distro="poky"
+        self.packages=None
         self.buildhistory=False
         self.gplv3=True
         self.multilib=False
@@ -59,7 +60,11 @@ class CreateAutoConf(ShellCommand):
         else:
             if self.distro != "oecore":
                 fout = fout + 'DISTRO = "' + self.distro + '"\n'
-            fout = fout + 'PACKAGE_CLASSES = "package_rpm package_deb package_ipk"\n'
+            if self.packages:
+                self.classes = [ "package_%s" % p for p in self.packages.split() ]
+                fout = fout + 'PACKAGE_CLASSES = "' + " ".join(self.classes) + '"\n'
+            else:
+                fout = fout + 'PACKAGE_CLASSES = "package_rpm package_deb package_ipk"\n'
             fout = fout + 'BB_NUMBER_THREADS = "' + os.environ.get('BB_NUMBER_THREADS') + '"\n'
             fout = fout + 'PARALLEL_MAKE = "-j ' + os.environ.get('PARALLEL_MAKE') + '"\n'
             fout = fout + 'SDKMACHINE ?= "' + self.SDKMACHINE + '"\n'
-- 
1.8.1.4


