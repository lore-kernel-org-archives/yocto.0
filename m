Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCEB5E00D55; Mon,  7 Sep 2015 00:54:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D9D7E00AFD
	for <yocto@yoctoproject.org>; Mon,  7 Sep 2015 00:54:07 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga103.fm.intel.com with ESMTP; 07 Sep 2015 00:53:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,484,1437462000"; d="scan'208";a="763922658"
Received: from tmglnx.jf.intel.com ([10.7.200.136])
	by orsmga001.jf.intel.com with ESMTP; 07 Sep 2015 00:53:49 -0700
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Mon,  7 Sep 2015 00:50:33 -0700
Message-Id: <1441612233-21508-1-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 1.9.3
Subject: [PATCH] buildset-config.iot-devkit/*
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
X-List-Received-Date: Mon, 07 Sep 2015 07:54:10 -0000

[YOCTO: #7703]

Added buildset-config.iot-devkit/*. This buildset uses the following repos/branches:

poky: dizzy
meta-intel-iot-devkit: master
meta-intel-iot-middleware: dizzy
meta-intel-quark: dizzy
meta-intel-galileo: dizzy
meta-openembedded: dizzy

And builds the following images:

iot-devkit-image
iot-devkit-prof-image
iot-devkit-prof-dev-image

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 buildset-config.iot-devkit/iot-devkit.conf | 33 ++++++++++++++++++++++++++++++
 buildset-config.iot-devkit/yoctoAB.conf    |  2 ++
 2 files changed, 35 insertions(+)
 create mode 100644 buildset-config.iot-devkit/iot-devkit.conf
 create mode 100644 buildset-config.iot-devkit/yoctoAB.conf

diff --git a/buildset-config.iot-devkit/iot-devkit.conf b/buildset-config.iot-devkit/iot-devkit.conf
new file mode 100644
index 0000000..c34d1fd
--- /dev/null
+++ b/buildset-config.iot-devkit/iot-devkit.conf
@@ -0,0 +1,33 @@
+[iot-devkit]
+builders: 'example-worker'
+repos: [{'poky':
+            {'repourl':'git://git.yoctoproject.org/poky',
+             'layerversion':{'core':'meta', 'yocto':'meta-yocto', 'yoctobsp':'meta-yocto-bsp'},
+             'branch':'dizzy'}},
+        {'meta-intel-iot-devkit':
+            {'repourl':'git://git.yoctoproject.org/meta-intel-iot-devkit',
+             'branch':'master'}},
+        {'meta-intel-iot-middleware':
+            {'repourl':'git://git.yoctoproject.org/meta-intel-iot-middleware',
+             'branch':'dizzy'}},
+        {'meta-intel-quark':
+            {'repourl':'git://git.yoctoproject.org/meta-intel-quark',
+             'branch':'dizzy'}},
+        {'meta-intel-galileo':
+            {'repourl':'git://git.yoctoproject.org/meta-intel-galileo',
+             'branch':'dizzy'}},
+        {'meta-openembedded':
+            {'repourl':'git://git.openembedded.org/meta-openembedded',
+             'branch':'dizzy'}}]
+steps: [{'SetDest':{}},
+        {'CheckOutLayers': {}},
+        {'RunPreamble': {}},
+        {'GetDistroVersion' : {'distro': 'poky'}},
+        {'CreateAutoConf': {'machine': 'quark', 'SDKMACHINE' : 'x86_64', 'distro': 'iot-devkit-multilibc'}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'layerdirs': ['meta-yocto', 'meta-intel-iot-devkit', 
+          'meta-intel-iot-middleware', 'meta-intel-quark', 'meta-intel-galileo', 'meta-openembedded/meta-oe',
+          'meta-openembedded/meta-filesystems']}},
+        {'BuildImages': {'images': 'iot-devkit-image iot-devkit-prof-image iot-devkit-prof-dev-image'}},
+        {'PublishLayerTarballs':{}},
+        {'SendErrorReport': {}},
+        {'PublishArtifacts': {'artifacts': ['quark', 'ipk', 'md5sums']}}]
diff --git a/buildset-config.iot-devkit/yoctoAB.conf b/buildset-config.iot-devkit/yoctoAB.conf
new file mode 100644
index 0000000..0c0cf33
--- /dev/null
+++ b/buildset-config.iot-devkit/yoctoAB.conf
@@ -0,0 +1,2 @@
+[BuildSets]
+order: ['iot-devkit']
-- 
1.9.3


