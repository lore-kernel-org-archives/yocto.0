Return-Path: <stefanx.stanacar@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A223E01494
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 00:49:35 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 05 Apr 2013 00:49:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,413,1363158000"; d="scan'208";a="281163166"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by azsmga001.ch.intel.com with ESMTP; 05 Apr 2013 00:49:34 -0700
Received: from localhost.localdomain (unknown [10.237.112.141])
	by linux.intel.com (Postfix) with ESMTP id 1226A2C8001
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 00:49:26 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: yocto@yoctoproject.org
Date: Fri,  5 Apr 2013 10:49:21 +0300
Message-Id: <22d828e0d50c0024c0e3553313424b1286d4caca.1365147946.git.stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <cover.1365147946.git.stefanx.stanacar@intel.com>
References: <cover.1365147946.git.stefanx.stanacar@intel.com>
In-Reply-To: <cover.1365147946.git.stefanx.stanacar@intel.com>
References: <cover.1365147946.git.stefanx.stanacar@intel.com>
Subject: [yocto-autobuilder][PATCH v2 1/2] nightly-qa-extras.conf: add new buildset config
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
X-List-Received-Date: Fri, 05 Apr 2013 07:49:35 -0000

This buildset is for extra images which don't really fit in other buildsets.
For now it includes builds for basic image with btrfs and changed root
home dir, a sato image with read-only rootfs and sato with systemd.

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 buildset-config/nightly-qa-extras.conf | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)
 create mode 100644 buildset-config/nightly-qa-extras.conf

diff --git a/buildset-config/nightly-qa-extras.conf b/buildset-config/nightly-qa-extras.conf
new file mode 100644
index 0000000..7debcdd
--- /dev/null
+++ b/buildset-config/nightly-qa-extras.conf
@@ -0,0 +1,18 @@
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
+        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'atextappend' : '\nROOT_HOME = "/root"\nIMAGE_FSTYPES_forcevariable = "btrfs"\nKERNEL_FEATURES_append = " cfg/fs/btrfs"\n'}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
+        {'BuildImages': {'images': 'core-image-minimal'}},
+        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'atextappend' : '\nDISTRO_FEATURES_append = " systemd"\nVIRTUAL-RUNTIME_init-manager = "systemd"\n'}},
+        {'BuildImages': {'images': 'core-image-sato'}},
+        {'RunSanityTests': {'images': 'core-image-sato'}},
+        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'atextappend' : '\nEXTRA_IMAGE_FEATURES = "debug-tweaks read-only-rootfs"\n'}},
+        {'BuildImages': {'images': 'core-image-sato'}}]
-- 
1.8.1.4


