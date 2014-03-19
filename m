Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2426CE00B45
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 13:55:29 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 19 Mar 2014 13:55:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,688,1389772800"; d="scan'208";a="502283016"
Received: from qana.jf.intel.com ([10.7.201.148])
	by fmsmga002.fm.intel.com with ESMTP; 19 Mar 2014 13:55:05 -0700
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id A5B2C5F825B8; Wed, 19 Mar 2014 13:51:33 -0700 (PDT)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 19 Mar 2014 13:50:59 -0700
Message-Id: <af3570404737a3edbe9d64e315582f692191a8de.1395261635.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 01/22] buildsets: add a new buildset to run builds on target
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
X-List-Received-Date: Wed, 19 Mar 2014 20:55:29 -0000

From: Stefan Stanacar <stefanx.stanacar@intel.com>

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
1.8.1.2


