Return-Path: <stefanx.stanacar@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81635E0087B
	for <yocto@yoctoproject.org>; Thu, 20 Feb 2014 11:19:24 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 20 Feb 2014 11:15:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,514,1389772800"; d="scan'208";a="486763532"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga002.jf.intel.com with ESMTP; 20 Feb 2014 11:19:19 -0800
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.156])
	by linux.intel.com (Postfix) with ESMTP id 3C4B96A4083;
	Thu, 20 Feb 2014 11:19:09 -0800 (PST)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: yocto@yoctoproject.org,
	elizabeth.flanagan@intel.com
Date: Thu, 20 Feb 2014 21:19:15 +0200
Message-Id: <1392923956-1166-1-git-send-email-stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.5.3
Subject: [yocto-autobuilder][PATCH] buildsets: add a new buildset to run builds on target
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
X-List-Received-Date: Thu, 20 Feb 2014 19:19:25 -0000

Builds core-image-sato-sdk for each qemu arch and
runs tests building sudoku/cvs/iptables.
These do take a while, so they shouldn't be added to nightly!

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 .../nightly-qa-targetbuilds.conf                   | 26 ++++++++++++++++++++++
 1 file changed, 26 insertions(+)
 create mode 100644 buildset-config.master/nightly-qa-targetbuilds.conf

diff --git a/buildset-config.master/nightly-qa-targetbuilds.conf b/buildset-config.master/nightly-qa-targetbuilds.conf
new file mode 100644
index 0000000..a95db78
--- /dev/null
+++ b/buildset-config.master/nightly-qa-targetbuilds.conf
@@ -0,0 +1,26 @@
+[nightly-qa-targetbuilds]
+builders: 'builder1'
+repos: [{'poky':
+            {'repourl':'git://git.yoctoproject.org/poky',
+             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
+             'branch':'master'}}]
+steps: [{'SetDest':{}},
+        {'CheckOutLayers': {}},
+        {'RunPreamble': {}},
+        {'GetDistroVersion' : {'distro': 'poky'}},
+        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'x86_64', 'distro': 'poky'}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
+        {'BuildImages': {'images': 'core-image-sato-sdk'}},
+        {'RunSanityTests': {'images': 'core-image-sato-sdk', 'suites' : 'ping ssh buildsudoku buildcvs buildiptables'}},
+        {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'x86_64', 'distro': 'poky'}},
+        {'BuildImages': {'images': 'core-image-sato-sdk'}},
+        {'RunSanityTests': {'images': 'core-image-sato-sdk', 'suites' : 'ping ssh buildsudoku buildcvs buildiptables'}},
+        {'CreateAutoConf': {'machine': 'qemuarm', 'SDKMACHINE' : 'x86_64', 'distro': 'poky'}},
+        {'BuildImages': {'images': 'core-image-sato-sdk'}},
+        {'RunSanityTests': {'images': 'core-image-sato-sdk', 'suites' : 'ping ssh buildsudoku buildcvs buildiptables'}},
+        {'CreateAutoConf': {'machine': 'qemuppc', 'SDKMACHINE' : 'x86_64', 'distro': 'poky'}},
+        {'BuildImages': {'images': 'core-image-sato-sdk'}},
+        {'RunSanityTests': {'images': 'core-image-sato-sdk', 'suites' : 'ping ssh buildsudoku buildcvs buildiptables'}},
+        {'CreateAutoConf': {'machine': 'qemumips', 'SDKMACHINE' : 'x86_64', 'distro': 'poky'}},
+        {'BuildImages': {'images': 'core-image-sato-sdk'}},
+        {'RunSanityTests': {'images': 'core-image-sato-sdk', 'suites' : 'ping ssh buildsudoku buildcvs buildiptables'}}]
-- 
1.8.5.3


