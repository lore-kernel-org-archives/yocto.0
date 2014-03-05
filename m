Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F517E00AA7
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 10:27:10 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 05 Mar 2014 10:27:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,593,1389772800"; d="scan'208";a="467200401"
Received: from qana.jf.intel.com ([10.7.201.148])
	by orsmga001.jf.intel.com with ESMTP; 05 Mar 2014 10:26:49 -0800
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id 110375F803F2; Wed,  5 Mar 2014 10:23:29 -0800 (PST)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Mar 2014 10:22:52 -0800
Message-Id: <a16903b4ce1b1abfddc1473eb11cad46fa1927cd.1394042358.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 01/27] buildsets: add a new buildset to run builds on target
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
X-List-Received-Date: Wed, 05 Mar 2014 18:27:10 -0000

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


