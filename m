Return-Path: <stefanx.stanacar@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A21D2E006C4
	for <yocto@yoctoproject.org>; Fri,  7 Feb 2014 03:01:29 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 07 Feb 2014 03:01:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,799,1384329600"; d="scan'208";a="339426000"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by AZSMGA002.ch.intel.com with ESMTP; 07 Feb 2014 03:01:28 -0800
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.156])
	by linux.intel.com (Postfix) with ESMTP id B1CD96A4007;
	Fri,  7 Feb 2014 03:01:20 -0800 (PST)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: yocto@yoctoproject.org,
	elizabeth.flanagan@intel.com
Date: Fri,  7 Feb 2014 13:01:22 +0200
Message-Id: <1391770883-14353-1-git-send-email-stefanx.stanacar@intel.com>
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
X-List-Received-Date: Fri, 07 Feb 2014 11:01:36 -0000

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


