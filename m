Return-Path: <stefanx.stanacar@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1602E014DD
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2013 15:29:15 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 24 Apr 2013 15:29:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,546,1363158000"; d="scan'208";a="291448086"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by azsmga001.ch.intel.com with ESMTP; 24 Apr 2013 15:29:14 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.149])
	by linux.intel.com (Postfix) with ESMTP id 0BD062C8001;
	Wed, 24 Apr 2013 15:29:04 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: elizabeth.flanagan@intel.com,
	 yocto@yoctoproject.org
Date: Thu, 25 Apr 2013 01:29:11 +0300
Message-Id: <bb4457c9cd9c6bd8c5a1f1a2b9b12e88cbb82656.1366841959.git.stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <cover.1366841959.git.stefanx.stanacar@intel.com>
References: <cover.1366841959.git.stefanx.stanacar@intel.com>
In-Reply-To: <cover.1366841959.git.stefanx.stanacar@intel.com>
References: <cover.1366841959.git.stefanx.stanacar@intel.com>
Subject: [yocto-autobuilder][PATCH 1/6] nightly-qa-extras.conf: add new buildset config
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
X-List-Received-Date: Wed, 24 Apr 2013 22:29:15 -0000

This buildset is for extra images which don't really fit in other buildsets.
For now it includes builds for two images: one with btrfs and diffrent root
home dir and a sato image with read-only rootfs.

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 buildset-config/nightly-qa-extras.conf | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)
 create mode 100644 buildset-config/nightly-qa-extras.conf

diff --git a/buildset-config/nightly-qa-extras.conf b/buildset-config/nightly-qa-extras.conf
new file mode 100644
index 0000000..4098f53
--- /dev/null
+++ b/buildset-config/nightly-qa-extras.conf
@@ -0,0 +1,16 @@
+[nightly-qa-extras]
+builders: 'builder1'
+repos: [{'poky':
+            {'repourl':'git://git.yoctoproject.org/poky',
+             'bbpriority':'1',
+             'branch':'master'}}]
+steps: [{'SetDest':{}},
+        {'CheckOutLayers': {}},
+        {'RunPreamble': {}},
+        {'GetDistroVersion' : {'distro': 'poky'}},
+        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'atextappend' : '\nROOT_HOME = "/root"\nIMAGE_FSTYPES = "btrfs"\nKERNEL_FEATURES_append = " cfg/fs/btrfs"\n'}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
+        {'BuildImages': {'images': 'core-image-sato'}},
+        {'RunSanityTests': {'images': 'core-image-sato'}},
+        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'atextappend' : '\nEXTRA_IMAGE_FEATURES = "debug-tweaks read-only-rootfs"\n'}},
+        {'BuildImages': {'images': 'core-image-sato'}}]
-- 
1.8.1.4


