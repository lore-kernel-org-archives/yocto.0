Return-Path: <stefanx.stanacar@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FCC3E0150A
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2013 15:29:36 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 24 Apr 2013 15:29:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,546,1363158000"; d="scan'208";a="300958371"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga001.jf.intel.com with ESMTP; 24 Apr 2013 15:29:23 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.149])
	by linux.intel.com (Postfix) with ESMTP id D9B772C8003;
	Wed, 24 Apr 2013 15:29:07 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: elizabeth.flanagan@intel.com,
	 yocto@yoctoproject.org
Date: Thu, 25 Apr 2013 01:29:13 +0300
Message-Id: <4c5ffdb1124a6069b49e6dd13da7c9339c93c89e.1366841959.git.stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <cover.1366841959.git.stefanx.stanacar@intel.com>
References: <cover.1366841959.git.stefanx.stanacar@intel.com>
In-Reply-To: <cover.1366841959.git.stefanx.stanacar@intel.com>
References: <cover.1366841959.git.stefanx.stanacar@intel.com>
Subject: [yocto-autobuilder][PATCH 3/6] buildset-config/nightly-qa-systemd.conf: add a new target for systemd images
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

Build systemd images in different configurations: systemd only,
systemd+sysvinit and sysvinit+systemd (the order means which is the primary init system).

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 buildset-config/nightly-qa-systemd.conf | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)
 create mode 100644 buildset-config/nightly-qa-systemd.conf

diff --git a/buildset-config/nightly-qa-systemd.conf b/buildset-config/nightly-qa-systemd.conf
new file mode 100644
index 0000000..e35e6b1
--- /dev/null
+++ b/buildset-config/nightly-qa-systemd.conf
@@ -0,0 +1,20 @@
+[nightly-qa-systemd]
+builders: 'builder1'
+repos: [{'poky':
+            {'repourl':'git://git.yoctoproject.org/poky',
+             'bbpriority':'1',
+             'branch':'master'}}]
+steps: [{'SetDest':{}},
+        {'CheckOutLayers': {}},
+        {'RunPreamble': {}},
+        {'GetDistroVersion' : {'distro': 'poky'}},
+        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'initmgr' : 'systemd sysvinit'}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
+        {'BuildImages': {'images': 'core-image-sato'}},
+        {'RunSanityTests': {'images': 'core-image-sato'}},
+        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'initmgr' : 'sysvinit systemd'}},
+        {'BuildImages': {'images': 'core-image-sato'}},
+        {'RunSanityTests': {'images': 'core-image-sato'}},
+        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'initmgr' : 'systemd'}},
+        {'BuildImages': {'images': 'core-image-sato'}},
+        {'RunSanityTests': {'images': 'core-image-sato'}}]
-- 
1.8.1.4


