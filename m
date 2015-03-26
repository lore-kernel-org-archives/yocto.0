Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40992E00961; Wed, 25 Mar 2015 19:27:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 145F5E0095F
	for <yocto@yoctoproject.org>; Wed, 25 Mar 2015 19:27:25 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 25 Mar 2015 19:27:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,468,1422950400"; d="scan'208";a="670727934"
Received: from tmglnx.jf.intel.com ([10.7.200.136])
	by orsmga001.jf.intel.com with ESMTP; 25 Mar 2015 19:27:24 -0700
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 25 Mar 2015 20:27:01 -0700
Message-Id: <1427340421-27587-1-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 1.9.3
Subject: [PATCH] nightly-meta-intel-world.conf: Do meta-intel world builds
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
X-List-Received-Date: Thu, 26 Mar 2015 02:27:29 -0000

[YOCTO #6385]

Do world builds for meta-intel-world for a couple of BSPs. This patch
adds the new nightly-meta-intel-world buildset to fix bug #6385. Also
added it to the nightly-meta-intel.conf and yoctoAB.conf.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 .../nightly-meta-intel-world.conf                  | 28 ++++++++++++++++++++++
 buildset-config.meta-intel/nightly-meta-intel.conf |  2 +-
 buildset-config.meta-intel/yoctoAB.conf            |  7 +++---
 3 files changed, 33 insertions(+), 4 deletions(-)
 create mode 100644 buildset-config.meta-intel/nightly-meta-intel-world.conf

diff --git a/buildset-config.meta-intel/nightly-meta-intel-world.conf b/buildset-config.meta-intel/nightly-meta-intel-world.conf
new file mode 100644
index 0000000..13f71d1
--- /dev/null
+++ b/buildset-config.meta-intel/nightly-meta-intel-world.conf
@@ -0,0 +1,28 @@
+[nightly-meta-intel-world]
+builders: 'example-worker'
+repos: [{'poky':
+            {'repourl':'git://git.yoctoproject.org/poky',
+             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
+             'branch':'master'}},
+        {'meta-qt3':
+            {'repourl':'git://git.yoctoproject.org/meta-qt3',
+             'branch':'master'}},
+        {'meta-intel':
+            {'repourl':'git://git.yoctoproject.org/meta-intel',
+             'layerversion':{'intel':'meta-intel'},
+             'branch':'master'}}]
+steps: [{'SetDest':{}},
+        {'CheckOutLayers': {}},
+        {'RunPreamble': {}},
+        {'CheckBSPExists': {}},
+        {'GetDistroVersion' : {'distro': 'poky'}},
+        {'CreateAutoConf': {'machine': 'intel-core2-32', 'SDKMACHINE' : 'x86_64', 'distro': 'poky'}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'bsplayer': True, 'bspprovider': 'intel'}},
+        {'GetBitbakeVersion':{}},
+        {'BuildImages': {'images': 'world'}},
+        {'CreateAutoConf': {'machine': 'intel-corei7-64', 'SDKMACHINE' : 'x86_64', 'distro': 'poky'}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'bsplayer': True, 'bspprovider': 'intel'}},
+        {'GetBitbakeVersion':{}},
+        {'BuildImages': {'images': 'world'}},
+        {'SendErrorReport': {}},
+        {'UploadToasterEventlog': {}}}]
diff --git a/buildset-config.meta-intel/nightly-meta-intel.conf b/buildset-config.meta-intel/nightly-meta-intel.conf
index 89fe67d..d989f3d 100644
--- a/buildset-config.meta-intel/nightly-meta-intel.conf
+++ b/buildset-config.meta-intel/nightly-meta-intel.conf
@@ -53,7 +53,7 @@ steps: [{'SetDest':{}},
                              'jasperforest':{}, 'jasperforest-lsb':{},
                              'romley':{}, 'romley-lsb':{},
                              'sugarbay':{}, 'sugarbay-lsb':{},
-                             'nuc':{}, 'nuc-lsb':{}}, 'schedulerNames_nowait' : {}}},
+                             'nuc':{}, 'nuc-lsb':{}, 'nightly-meta-intel-world':{}}, 'schedulerNames_nowait' : {}}},
         {'CreateIntelBSPPackage': {'machine': 'intel-core2-32'}}, 
         {'CreateIntelBSPPackage': {'machine': 'intel-corei7-64'}}, 
         {'CreateIntelBSPPackage': {'machine': 'crownbay'}},
diff --git a/buildset-config.meta-intel/yoctoAB.conf b/buildset-config.meta-intel/yoctoAB.conf
index 90e7abf..5bf6248 100644
--- a/buildset-config.meta-intel/yoctoAB.conf
+++ b/buildset-config.meta-intel/yoctoAB.conf
@@ -1,7 +1,8 @@
 [BuildSets]
-order: ['nightly-meta-intel', 'intel-corei7-64', 'intel-corei7-64-lsb',
-        'intel-corei7-64-rt', 'intel-corei7-64-lsb-rt', 'intel-core2-32',
-        'intel-core2-32-lsb', 'intel-core2-32-rt', 'intel-core2-32-lsb-rt',
+order: ['nightly-meta-intel', 'nightly-meta-intel-world', 
+        'intel-corei7-64', 'intel-corei7-64-lsb', 'intel-corei7-64-rt', 
+        'intel-corei7-64-lsb-rt', 'intel-core2-32', 'intel-core2-32-lsb', 
+        'intel-core2-32-rt', 'intel-core2-32-lsb-rt',
         'crownbay', 'crownbay-lsb', 'crownbay-noemgd', 'crownbay-noemgd-lsb',
         'emenlow', 'emenlow-lsb', 'emenlow-noemgd', 'emenlow-noemgd-lsb',
         'fri2', 'fri2-lsb', 'fri2-noemgd', 'fri2-noemgd-lsb',
-- 
1.9.3


