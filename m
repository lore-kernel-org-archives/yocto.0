Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20CD3E00C69; Wed, 26 Jul 2017 17:41:08 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45B66E00C60
	for <yocto@yoctoproject.org>; Wed, 26 Jul 2017 17:41:04 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Jul 2017 17:41:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,417,1496127600"; d="scan'208";a="112398089"
Received: from tgraydonws.ostc.intel.com ([10.54.69.46])
	by orsmga004.jf.intel.com with ESMTP; 26 Jul 2017 17:41:02 -0700
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 26 Jul 2017 17:41:02 -0700
Message-Id: <1501116062-26439-1-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 2.7.0
Cc: joshua.g.lock@intel.com
Subject: [yocto-autobuilder][PATCH] /buildset-config.meta-intel
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
X-List-Received-Date: Thu, 27 Jul 2017 00:41:08 -0000

Delete jasperforest, sugarbay, and nuc buildsets. These are deprecated. We
no longer release/support these.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 buildset-config.meta-intel/jasperforest-lsb.conf | 58 ------------------------
 buildset-config.meta-intel/jasperforest.conf     | 51 ---------------------
 buildset-config.meta-intel/nuc-lsb.conf          | 58 ------------------------
 buildset-config.meta-intel/nuc.conf              | 52 ---------------------
 buildset-config.meta-intel/sugarbay-lsb.conf     | 58 ------------------------
 buildset-config.meta-intel/sugarbay.conf         | 52 ---------------------
 6 files changed, 329 deletions(-)
 delete mode 100644 buildset-config.meta-intel/jasperforest-lsb.conf
 delete mode 100644 buildset-config.meta-intel/jasperforest.conf
 delete mode 100644 buildset-config.meta-intel/nuc-lsb.conf
 delete mode 100644 buildset-config.meta-intel/nuc.conf
 delete mode 100644 buildset-config.meta-intel/sugarbay-lsb.conf
 delete mode 100644 buildset-config.meta-intel/sugarbay.conf

diff --git a/buildset-config.meta-intel/jasperforest-lsb.conf b/buildset-config.meta-intel/jasperforest-lsb.conf
deleted file mode 100644
index 5344f28..0000000
--- a/buildset-config.meta-intel/jasperforest-lsb.conf
+++ /dev/null
@@ -1,58 +0,0 @@
-[jasperforest-lsb]
-builders: 'example-worker'
-repos: [{'poky':
-            {'repourl':'git://git.yoctoproject.org/poky',
-             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
-             'branch':'master'}},
-        {'meta-qt4':
-            {'repourl':'git://git.yoctoproject.org/meta-qt4',
-             'branch':'master'}},
-        {'meta-intel':
-            {'repourl':'git://git.yoctoproject.org/meta-intel',
-             'layerversion':{'intel':'meta-intel'},
-             'branch':'master'}}]
-props: [{'kmeta':{'prop_type':'StringParameter',
-                       'size': 15,
-                       'name': 'kmeta',
-                       'default': '',
-                       'label':'<hr><h3> branch for KMETA_${MACHINE} (default is blank):</h3>'}},
-        {'srcrev_meta':{'prop_type':'StringParameter',
-                       'size': 15,
-                       'name': 'srcrev_meta',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KMETA_${MACHINE} (default is ${AUTOREV}):<br></h3>'}},
-        {'srcuri_meta':{'prop_type':'StringParameter',
-                       'size': 50,
-                       'name': 'srcuri_meta',
-                       'default': '',
-                       'label':'<hr><h3> SRC_URI_pn-linux-yocto KMETA append. (default is blank).<br> This should be constructed as *just* the git uri portion of the string. <br>(git://git.yoctoproject.org/linux-yocto-3.19.git</h3>'}},
-        {'kbranch':{'prop_type':'StringParameter',
-                       'size': 15,
-                       'name': 'kbranch',
-                       'default': '',
-                       'label':'<hr><h3> branch for KBRANCH_${MACHINE} (default is blank):</h3>'}},
-        {'srcrev_machine':{'prop_type':'StringParameter',
-                       'size': 15,
-                       'name': 'srcrev_machine',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KBRANCH. (default is ${AUTOREV}):<br></h3>'}},
-        {'srcuri_machine':{'prop_type':'StringParameter',
-                       'size': 50,
-                       'name': 'srcuri_machine',
-                       'default': '',
-                       'label':'<hr><h3> SRC_URI_pn-linux-yocto KBRANCH append. (default is blank).<br> This should be constructed as *just* the git uri portion of the string. <br>(git://git.yoctoproject.org/linux-yocto-3.19.git</h3>'}}]
-steps: [{'SetDest':{}},
-        {'CheckOutLayers': {}},
-        {'RunPreamble': {}},
-        {'CheckBSPExists': {}},
-        {'GetDistroVersion' : {'distro': 'poky'}},
-        {'CreateAutoConf': {'machine': 'jasperforest', 'SDKMACHINE' : 'x86_64', 'distro': 'poky-lsb', 'emgd': 'False', 'pvr': 'False'}},
-        {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'bsplayer': True, 'bspprovider': 'intel','layerdirs': ['meta-intel', 'meta-intel/meta-jasperforest', 'meta-intel/meta-tlk']}},
-        {'AddKernelProps': {}},
-        {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk LSB-QT-IMAGES'}},
-        {'PublishLayerTarballs':{}},
-        {'PublishArtifacts': {'artifacts': ['conf', 'jasperforest']}}]
-
diff --git a/buildset-config.meta-intel/jasperforest.conf b/buildset-config.meta-intel/jasperforest.conf
deleted file mode 100644
index 64833da..0000000
--- a/buildset-config.meta-intel/jasperforest.conf
+++ /dev/null
@@ -1,51 +0,0 @@
-[jasperforest]
-builders: 'example-worker'
-repos: [{'poky':
-            {'repourl':'git://git.yoctoproject.org/poky',
-             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
-             'branch':'master'}},
-        {'meta-intel':
-            {'repourl':'git://git.yoctoproject.org/meta-intel',
-             'layerversion':{'intel':'meta-intel'},
-             'branch':'master'}}]
-props: [{'kmeta':{'prop_type':'StringParameter',
-                       'size': 15,
-                       'name': 'kmeta',
-                       'default': '',
-                       'label':'<hr><h3> branch for KMETA_${MACHINE} (default is blank):</h3>'}},
-        {'srcrev_meta':{'prop_type':'StringParameter',
-                       'size': 15,
-                       'name': 'srcrev_meta',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KMETA_${MACHINE} (default is ${AUTOREV}):<br></h3>'}},
-        {'srcuri_meta':{'prop_type':'StringParameter',
-                       'size': 50,
-                       'name': 'srcuri_meta',
-                       'default': '',
-                       'label':'<hr><h3> SRC_URI_pn-linux-yocto KMETA append. (default is blank).<br> This should be constructed as *just* the git uri portion of the string. <br>(git://git.yoctoproject.org/linux-yocto-3.19.git</h3>'}},
-        {'kbranch':{'prop_type':'StringParameter',
-                       'size': 15,
-                       'name': 'kbranch',
-                       'default': '',
-                       'label':'<hr><h3> branch for KBRANCH_${MACHINE} (default is blank):</h3>'}},
-        {'srcrev_machine':{'prop_type':'StringParameter',
-                       'size': 15,
-                       'name': 'srcrev_machine',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KBRANCH. (default is ${AUTOREV}):<br></h3>'}},
-        {'srcuri_machine':{'prop_type':'StringParameter',
-                       'size': 50,
-                       'name': 'srcuri_machine',
-                       'default': '',
-                       'label':'<hr><h3> SRC_URI_pn-linux-yocto KBRANCH append. (default is blank).<br> This should be constructed as *just* the git uri portion of the string. <br>(git://git.yoctoproject.org/linux-yocto-3.19.git</h3>'}}]
-steps: [{'SetDest':{}},
-        {'CheckOutLayers': {}},
-        {'RunPreamble': {}},
-        {'CheckBSPExists': {}},
-        {'GetDistroVersion' : {'distro': 'poky'}},
-        {'CreateAutoConf': {'machine': 'jasperforest', 'SDKMACHINE' : 'x86_64', 'distro': 'poky', 'emgd': 'False', 'pvr': 'False'}},
-        {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'bsplayer': True, 'bspprovider': 'intel'}},
-        {'AddKernelProps': {}},
-        {'BuildImages': {'images': 'core-image-sato core-image-sato-sdk core-image-minimal core-image-sato-sdk-ptest'}},
-        {'PublishLayerTarballs':{}},
-        {'PublishArtifacts': {'artifacts': ['conf', 'jasperforest']}}]
diff --git a/buildset-config.meta-intel/nuc-lsb.conf b/buildset-config.meta-intel/nuc-lsb.conf
deleted file mode 100644
index 641191f..0000000
--- a/buildset-config.meta-intel/nuc-lsb.conf
+++ /dev/null
@@ -1,58 +0,0 @@
-[nuc-lsb]
-builders: 'example-worker'
-repos: [{'poky':
-            {'repourl':'git://git.yoctoproject.org/poky',
-             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
-             'branch':'master'}},
-        {'meta-qt4':
-            {'repourl':'git://git.yoctoproject.org/meta-qt4',
-             'branch':'master'}},
-        {'meta-intel':
-            {'repourl':'git://git.yoctoproject.org/meta-intel',
-             'layerversion':{'intel':'meta-intel'},
-             'branch':'master'}}]
-props: [{'kmeta':{'prop_type':'StringParameter',
-                       'size': 15,
-                       'name': 'kmeta',
-                       'default': '',
-                       'label':'<hr><h3> branch for KMETA_${MACHINE} (default is blank):</h3>'}},
-        {'srcrev_meta':{'prop_type':'StringParameter',
-                       'size': 15,
-                       'name': 'srcrev_meta',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KMETA_${MACHINE} (default is ${AUTOREV}):<br></h3>'}},
-        {'srcuri_meta':{'prop_type':'StringParameter',
-                       'size': 50,
-                       'name': 'srcuri_meta',
-                       'default': '',
-                       'label':'<hr><h3> SRC_URI_pn-linux-yocto KMETA append. (default is blank).<br> This should be constructed as *just* the git uri portion of the string. <br>(git://git.yoctoproject.org/linux-yocto-3.19.git</h3>'}},
-        {'kbranch':{'prop_type':'StringParameter',
-                       'size': 15,
-                       'name': 'kbranch',
-                       'default': '',
-                       'label':'<hr><h3> branch for KBRANCH_${MACHINE} (default is blank):</h3>'}},
-        {'srcrev_machine':{'prop_type':'StringParameter',
-                       'size': 15,
-                       'name': 'srcrev_machine',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KBRANCH. (default is ${AUTOREV}):<br></h3>'}},
-        {'srcuri_machine':{'prop_type':'StringParameter',
-                       'size': 50,
-                       'name': 'srcuri_machine',
-                       'default': '',
-                       'label':'<hr><h3> SRC_URI_pn-linux-yocto KBRANCH append. (default is blank).<br> This should be constructed as *just* the git uri portion of the string. <br>(git://git.yoctoproject.org/linux-yocto-3.19.git</h3>'}}]
-steps: [{'SetDest':{}},
-        {'CheckOutLayers': {}},
-        {'RunPreamble': {}},
-        {'CheckBSPExists': {}},
-        {'GetDistroVersion' : {'distro': 'poky'}},
-        {'CreateAutoConf': {'machine': 'nuc', 'SDKMACHINE' : 'x86_64', 'distro': 'poky-lsb', 'emgd': 'False', 'pvr': 'False'}},
-        {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'bsplayer': True, 'bspprovider': 'intel','layerdirs': ['meta-intel', 'meta-intel/meta-nuc', 'meta-intel/meta-tlk']}},
-        {'AddKernelProps': {}},
-        {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk LSB-QT-IMAGES'}},
-        {'PublishLayerTarballs':{}},
-        {'PublishArtifacts': {'artifacts': ['conf', 'nuc']}}]
-
diff --git a/buildset-config.meta-intel/nuc.conf b/buildset-config.meta-intel/nuc.conf
deleted file mode 100644
index 1506b56..0000000
--- a/buildset-config.meta-intel/nuc.conf
+++ /dev/null
@@ -1,52 +0,0 @@
-[nuc]
-builders: 'example-worker'
-repos: [{'poky':
-            {'repourl':'git://git.yoctoproject.org/poky',
-             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
-             'branch':'master'}},
-        {'meta-intel':
-            {'repourl':'git://git.yoctoproject.org/meta-intel',
-             'layerversion':{'intel':'meta-intel'},
-             'branch':'master'}}]
-props: [{'kmeta':{'prop_type':'StringParameter',
-                       'size': 15,
-                       'name': 'kmeta',
-                       'default': '',
-                       'label':'<hr><h3> branch for KMETA_${MACHINE} (default is blank):</h3>'}},
-        {'srcrev_meta':{'prop_type':'StringParameter',
-                       'size': 15,
-                       'name': 'srcrev_meta',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KMETA_${MACHINE} (default is ${AUTOREV}):<br></h3>'}},
-        {'srcuri_meta':{'prop_type':'StringParameter',
-                       'size': 50,
-                       'name': 'srcuri_meta',
-                       'default': '',
-                       'label':'<hr><h3> SRC_URI_pn-linux-yocto KMETA append. (default is blank).<br> This should be constructed as *just* the git uri portion of the string. <br>(git://git.yoctoproject.org/linux-yocto-3.19.git</h3>'}},
-        {'kbranch':{'prop_type':'StringParameter',
-                       'size': 15,
-                       'name': 'kbranch',
-                       'default': '',
-                       'label':'<hr><h3> branch for KBRANCH_${MACHINE} (default is blank):</h3>'}},
-        {'srcrev_machine':{'prop_type':'StringParameter',
-                       'size': 15,
-                       'name': 'srcrev_machine',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KBRANCH. (default is ${AUTOREV}):<br></h3>'}},
-        {'srcuri_machine':{'prop_type':'StringParameter',
-                       'size': 50,
-                       'name': 'srcuri_machine',
-                       'default': '',
-                       'label':'<hr><h3> SRC_URI_pn-linux-yocto KBRANCH append. (default is blank).<br> This should be constructed as *just* the git uri portion of the string. <br>(git://git.yoctoproject.org/linux-yocto-3.19.git</h3>'}}]
-steps: [{'SetDest':{}},
-        {'CheckOutLayers': {}},
-        {'RunPreamble': {}},
-        {'CheckBSPExists': {}},
-        {'GetDistroVersion' : {'distro': 'poky'}},
-        {'CreateAutoConf': {'machine': 'nuc', 'SDKMACHINE' : 'x86_64', 'distro': 'poky', 'emgd': 'False', 'pvr': 'False'}},
-        {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'bsplayer': True, 'bspprovider': 'intel'}},
-        {'AddKernelProps': {}},
-        {'BuildImages': {'images': 'core-image-sato core-image-sato-sdk core-image-minimal core-image-sato-sdk-ptest'}},
-        {'PublishLayerTarballs':{}},
-        {'PublishArtifacts': {'artifacts': ['conf', 'nuc']}}]
-
diff --git a/buildset-config.meta-intel/sugarbay-lsb.conf b/buildset-config.meta-intel/sugarbay-lsb.conf
deleted file mode 100644
index d199b7a..0000000
--- a/buildset-config.meta-intel/sugarbay-lsb.conf
+++ /dev/null
@@ -1,58 +0,0 @@
-[sugarbay-lsb]
-builders: 'example-worker'
-repos: [{'poky':
-            {'repourl':'git://git.yoctoproject.org/poky',
-             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
-             'branch':'master'}},
-        {'meta-qt3':
-            {'repourl':'git://git.yoctoproject.org/meta-qt3',
-             'branch':'master'}},
-        {'meta-qt4':
-            {'repourl':'git://git.yoctoproject.org/meta-qt4',
-             'branch':'master'}},
-        {'meta-intel':
-            {'repourl':'git://git.yoctoproject.org/meta-intel',
-             'layerversion':{'intel':'meta-intel'},
-             'branch':'master'}}]
-props: [{'kmeta':{'prop_type':'StringParameter',
-                       'size': 15,
-                       'name': 'kmeta',
-                       'default': '',
-                       'label':'<hr><h3> branch for KMETA_${MACHINE} (default is blank):</h3>'}},
-        {'srcrev_meta':{'prop_type':'StringParameter',
-                       'size': 15,
-                       'name': 'srcrev_meta',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KMETA_${MACHINE} (default is ${AUTOREV}):<br></h3>'}},
-        {'srcuri_meta':{'prop_type':'StringParameter',
-                       'size': 50,
-                       'name': 'srcuri_meta',
-                       'default': '',
-                       'label':'<hr><h3> SRC_URI_pn-linux-yocto KMETA append. (default is blank).<br> This should be constructed as *just* the git uri portion of the string. <br>(git://git.yoctoproject.org/linux-yocto-3.19.git</h3>'}},
-        {'kbranch':{'prop_type':'StringParameter',
-                       'size': 15,
-                       'name': 'kbranch',
-                       'default': '',
-                       'label':'<hr><h3> branch for KBRANCH_${MACHINE} (default is blank):</h3>'}},
-        {'srcrev_machine':{'prop_type':'StringParameter',
-                       'size': 15,
-                       'name': 'srcrev_machine',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KBRANCH. (default is ${AUTOREV}):<br></h3>'}},
-        {'srcuri_machine':{'prop_type':'StringParameter',
-                       'size': 50,
-                       'name': 'srcuri_machine',
-                       'default': '',
-                       'label':'<hr><h3> SRC_URI_pn-linux-yocto KBRANCH append. (default is blank).<br> This should be constructed as *just* the git uri portion of the string. <br>(git://git.yoctoproject.org/linux-yocto-3.19.git</h3>'}}]
-steps: [{'SetDest':{}},
-        {'CheckOutLayers': {}},
-        {'RunPreamble': {}},
-        {'CheckBSPExists': {}},
-        {'GetDistroVersion' : {'distro': 'poky'}},
-        {'CreateAutoConf': {'machine': 'sugarbay', 'SDKMACHINE' : 'x86_64', 'distro': 'poky-lsb', 'emgd': 'False', 'pvr': 'False'}},
-        {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'bsplayer': True, 'bspprovider': 'intel','layerdirs': ['meta-intel', 'meta-intel/meta-sugarbay', 'meta-intel/meta-tlk']}},
-        {'AddKernelProps': {}},
-        {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk LSB-QT-IMAGES'}},
-        {'PublishLayerTarballs':{}},
-        {'PublishArtifacts': {'artifacts': ['conf', 'sugarbay']}}]
-
diff --git a/buildset-config.meta-intel/sugarbay.conf b/buildset-config.meta-intel/sugarbay.conf
deleted file mode 100644
index 9dd3ee0..0000000
--- a/buildset-config.meta-intel/sugarbay.conf
+++ /dev/null
@@ -1,52 +0,0 @@
-[sugarbay]
-builders: 'example-worker'
-repos: [{'poky':
-            {'repourl':'git://git.yoctoproject.org/poky',
-             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
-             'branch':'master'}},
-        {'meta-intel':
-            {'repourl':'git://git.yoctoproject.org/meta-intel',
-             'layerversion':{'intel':'meta-intel'},
-             'branch':'master'}}]
-props: [{'kmeta':{'prop_type':'StringParameter',
-                       'size': 15,
-                       'name': 'kmeta',
-                       'default': '',
-                       'label':'<hr><h3> branch for KMETA_${MACHINE} (default is blank):</h3>'}},
-        {'srcrev_meta':{'prop_type':'StringParameter',
-                       'size': 15,
-                       'name': 'srcrev_meta',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KMETA_${MACHINE} (default is ${AUTOREV}):<br></h3>'}},
-        {'srcuri_meta':{'prop_type':'StringParameter',
-                       'size': 50,
-                       'name': 'srcuri_meta',
-                       'default': '',
-                       'label':'<hr><h3> SRC_URI_pn-linux-yocto KMETA append. (default is blank).<br> This should be constructed as *just* the git uri portion of the string. <br>(git://git.yoctoproject.org/linux-yocto-3.19.git</h3>'}},
-        {'kbranch':{'prop_type':'StringParameter',
-                       'size': 15,
-                       'name': 'kbranch',
-                       'default': '',
-                       'label':'<hr><h3> branch for KBRANCH_${MACHINE} (default is blank):</h3>'}},
-        {'srcrev_machine':{'prop_type':'StringParameter',
-                       'size': 15,
-                       'name': 'srcrev_machine',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KBRANCH. (default is ${AUTOREV}):<br></h3>'}},
-        {'srcuri_machine':{'prop_type':'StringParameter',
-                       'size': 50,
-                       'name': 'srcuri_machine',
-                       'default': '',
-                       'label':'<hr><h3> SRC_URI_pn-linux-yocto KBRANCH append. (default is blank).<br> This should be constructed as *just* the git uri portion of the string. <br>(git://git.yoctoproject.org/linux-yocto-3.19.git</h3>'}}]
-steps: [{'SetDest':{}},
-        {'CheckOutLayers': {}},
-        {'RunPreamble': {}},
-        {'CheckBSPExists': {}},
-        {'GetDistroVersion' : {'distro': 'poky'}},
-        {'CreateAutoConf': {'machine': 'sugarbay', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'emgd': 'False', 'pvr': 'False'}},
-        {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'bsplayer': True, 'bspprovider': 'intel'}},
-        {'AddKernelProps': {}},
-        {'BuildImages': {'images': 'core-image-sato core-image-sato-sdk core-image-minimal core-image-sato-sdk-ptest'}},
-        {'PublishLayerTarballs':{}},
-        {'PublishArtifacts': {'artifacts': ['conf', 'sugarbay']}}]
-
-- 
2.7.0


