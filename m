Return-Path: <stefanx.stanacar@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DE8FE014DB
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2013 10:23:49 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 04 Apr 2013 10:23:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,410,1363158000"; d="scan'208";a="313706106"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga001.fm.intel.com with ESMTP; 04 Apr 2013 10:23:49 -0700
Received: from localhost.localdomain (unknown [10.237.112.141])
	by linux.intel.com (Postfix) with ESMTP id 12B142C8001
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2013 10:23:41 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  4 Apr 2013 20:23:28 +0300
Message-Id: <6264649ea36dc42b9e9cf6558591ef06199c825d.1365095192.git.stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <cover.1365095192.git.stefanx.stanacar@intel.com>
References: <cover.1365095192.git.stefanx.stanacar@intel.com>
In-Reply-To: <cover.1365095192.git.stefanx.stanacar@intel.com>
References: <cover.1365095192.git.stefanx.stanacar@intel.com>
Subject: [yocto-autobuilder][PATCH 1/2] QA1-nightly-extra.conf: add new buildset config
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
X-List-Received-Date: Thu, 04 Apr 2013 17:23:49 -0000

This buildset is for extra images which don't really fit in other buildsets.
For now it includes builds for basic image with btrfs and changed root
home dir, a sato image with read-only rootfs and sato with systemd.

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 buildset-config/QA1-nightly-extra.conf | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)
 create mode 100644 buildset-config/QA1-nightly-extra.conf

diff --git a/buildset-config/QA1-nightly-extra.conf b/buildset-config/QA1-nightly-extra.conf
new file mode 100644
index 0000000..dfe2062
--- /dev/null
+++ b/buildset-config/QA1-nightly-extra.conf
@@ -0,0 +1,18 @@
+[QA1-nightly-extra]
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


