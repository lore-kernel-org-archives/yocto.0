Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E21EE009BA; Tue, 20 Oct 2015 17:57:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2D62E00957
	for <yocto@yoctoproject.org>; Tue, 20 Oct 2015 17:57:24 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP; 20 Oct 2015 17:57:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,709,1437462000"; d="scan'208";a="831312833"
Received: from tmglnx.jf.intel.com ([10.7.200.52])
	by orsmga002.jf.intel.com with ESMTP; 20 Oct 2015 17:57:24 -0700
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 20 Oct 2015 17:53:19 -0700
Message-Id: <1445388799-26564-1-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 2.4.3
Subject: [PATCH] buildset-config.staging/nightly-no-x11.conf
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
X-List-Received-Date: Wed, 21 Oct 2015 00:57:26 -0000

[YOCTO #6854]

This patchset relocates nigtly-no-x11.conf to buildset-config.staging
while work in in progress. It also removes nightly-no-x11 from the
yoctoAB.conf file in buildset-config.controller dir. This effecitively
removed the currently non-functioning no-x11 build from nightly build
for now.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 buildset-config.controller/nightly-no-x11.conf | 19 -------------------
 buildset-config.controller/yoctoAB.conf        | 10 +++++-----
 buildset-config.staging/nightly-no-x11.conf    | 19 +++++++++++++++++++
 3 files changed, 24 insertions(+), 24 deletions(-)
 delete mode 100644 buildset-config.controller/nightly-no-x11.conf
 create mode 100644 buildset-config.staging/nightly-no-x11.conf

diff --git a/buildset-config.controller/nightly-no-x11.conf b/buildset-config.controller/nightly-no-x11.conf
deleted file mode 100644
index 4881154..0000000
--- a/buildset-config.controller/nightly-no-x11.conf
+++ /dev/null
@@ -1,19 +0,0 @@
-[nightly-no-x11]
-builders: 'example-worker'
-repos: [{'poky':
-            {'repourl':'git://git.yoctoproject.org/poky',
-             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
-             'branch':'master'}}]
-steps: [{'SetDest':{}},
-        {'CheckOutLayers': {}},
-        {'RunPreamble': {}},
-        {'GetDistroVersion' : {'distro': 'poky'}},
-        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686',
-                            'distro': 'poky', 'buildhistory' : False,
-                            'atextappend' : '\nDISTRO_FEATURES_remove = "x11"\n'}},
-        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
-        {'SyncPersistDB' : {'distro' : 'poky'}},
-        {'GetBitbakeVersion': {}},
-        {'BuildImages': {'images': 'world'}},
-        {'SendErrorReport': {}},
-        {'UploadToasterEventlog': {}}]
diff --git a/buildset-config.controller/yoctoAB.conf b/buildset-config.controller/yoctoAB.conf
index 0f9ba0c..5f39d6f 100644
--- a/buildset-config.controller/yoctoAB.conf
+++ b/buildset-config.controller/yoctoAB.conf
@@ -3,9 +3,9 @@ order: ['nightly', 'eclipse-plugin-mars',
         'eclipse-plugin-kepler', 'eclipse-plugin-luna',
         'nightly-arm', 'nightly-arm64', 'nightly-arm-lsb', 
         'nightly-mips', 'nightly-mips64', 'nightly-mips-lsb', 
-        'nightly-ppc', 'nightly-ppc-lsb', 'nightly-no-x11',
-        'nightly-x86-64', 'nightly-x86-64-lsb', 'nightly-x86',
-        'nightly-x86-lsb', 'nightly-x32', 'nightly-multilib',
-        'nightly-world', 'nightly-world-lsb', 'nightly-non-gpl3', 
-        'nightly-oecore', 'nightly-intel-gpl', 'nightly-wic', 'poky-tiny',
+        'nightly-ppc', 'nightly-ppc-lsb', 'nightly-x86-64', 
+        'nightly-x86-64-lsb', 'nightly-x86', 'nightly-x86-lsb', 
+        'nightly-x32', 'nightly-multilib', 'nightly-world', 
+        'nightly-world-lsb', 'nightly-non-gpl3', 'nightly-oecore', 
+        'nightly-intel-gpl', 'nightly-wic', 'poky-tiny',
         'build-appliance', 'nightly-qa-extras', 'nightly-qa-systemd']
diff --git a/buildset-config.staging/nightly-no-x11.conf b/buildset-config.staging/nightly-no-x11.conf
new file mode 100644
index 0000000..4881154
--- /dev/null
+++ b/buildset-config.staging/nightly-no-x11.conf
@@ -0,0 +1,19 @@
+[nightly-no-x11]
+builders: 'example-worker'
+repos: [{'poky':
+            {'repourl':'git://git.yoctoproject.org/poky',
+             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
+             'branch':'master'}}]
+steps: [{'SetDest':{}},
+        {'CheckOutLayers': {}},
+        {'RunPreamble': {}},
+        {'GetDistroVersion' : {'distro': 'poky'}},
+        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686',
+                            'distro': 'poky', 'buildhistory' : False,
+                            'atextappend' : '\nDISTRO_FEATURES_remove = "x11"\n'}},
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
+        {'SyncPersistDB' : {'distro' : 'poky'}},
+        {'GetBitbakeVersion': {}},
+        {'BuildImages': {'images': 'world'}},
+        {'SendErrorReport': {}},
+        {'UploadToasterEventlog': {}}]
-- 
2.4.3


