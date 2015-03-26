Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 370CCE00832; Thu, 26 Mar 2015 11:15:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3ACBE0056E
	for <yocto@yoctoproject.org>; Thu, 26 Mar 2015 11:15:29 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 26 Mar 2015 11:15:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,473,1422950400"; d="scan'208";a="546849225"
Received: from tmglnx.jf.intel.com ([10.7.200.136])
	by orsmga003.jf.intel.com with ESMTP; 26 Mar 2015 11:15:08 -0700
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 26 Mar 2015 12:14:44 -0700
Message-Id: <1427397284-13526-1-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 1.9.3
Subject: [PATCH] nightly-<arch>*.conf: Add GetBitbakeVersion build step
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
X-List-Received-Date: Thu, 26 Mar 2015 18:15:31 -0000

[YOCTO #7519]

Add the GetBitbakeVersion build step to nightly-<arch>*.conf buildsets
in buildset_config.controller to enable toaster on autobuilder.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 buildset-config.controller/nightly-arm-lsb.conf     | 2 ++
 buildset-config.controller/nightly-arm.conf         | 2 ++
 buildset-config.controller/nightly-arm64.conf       | 1 +
 buildset-config.controller/nightly-fsl-arm-lsb.conf | 3 +++
 buildset-config.controller/nightly-fsl-arm.conf     | 3 +++
 buildset-config.controller/nightly-fsl-ppc-lsb.conf | 1 +
 buildset-config.controller/nightly-fsl-ppc.conf     | 1 +
 buildset-config.controller/nightly-mips-lsb.conf    | 2 ++
 buildset-config.controller/nightly-mips.conf        | 2 ++
 buildset-config.controller/nightly-ppc-lsb.conf     | 2 ++
 buildset-config.controller/nightly-ppc.conf         | 2 ++
 buildset-config.controller/nightly-x86-64-lsb.conf  | 2 ++
 buildset-config.controller/nightly-x86-64.conf      | 2 ++
 buildset-config.controller/nightly-x86-lsb.conf     | 2 ++
 buildset-config.controller/nightly-x86.conf         | 2 ++
 15 files changed, 29 insertions(+)

diff --git a/buildset-config.controller/nightly-arm-lsb.conf b/buildset-config.controller/nightly-arm-lsb.conf
index 261a1e3..1101803 100644
--- a/buildset-config.controller/nightly-arm-lsb.conf
+++ b/buildset-config.controller/nightly-arm-lsb.conf
@@ -15,8 +15,10 @@ steps: [{'SetDest':{}},
                             'distro': 'poky-lsb', 'buildhistory' : True}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'SyncPersistDB' : {'distro' : 'poky-lsb'}},
+        {'GetBitbakeVersion': {}},
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk core-image-lsb-qt3'}},
         {'CreateAutoConf': {'machine': 'beagleboard', 'SDKMACHINE' : 'i686', 'distro': 'poky-lsb'}},
+        {'GetBitbakeVersion': {}},
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-sdk'}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky-lsb'}},
         {'PublishLayerTarballs':{}},
diff --git a/buildset-config.controller/nightly-arm.conf b/buildset-config.controller/nightly-arm.conf
index d705bbc..0ff654c 100644
--- a/buildset-config.controller/nightly-arm.conf
+++ b/buildset-config.controller/nightly-arm.conf
@@ -14,9 +14,11 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'qemuarm', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'buildhistory' : True}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'SyncPersistDB' : {'distro' : 'poky'}},
+        {'GetBitbakeVersion': {}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
         {'RunSanityTests': {'images': 'core-image-minimal core-image-sato core-image-sato-sdk'}},
         {'CreateAutoConf': {'machine': 'beagleboard', 'SDKMACHINE' : 'i686', 'distro': 'poky'}},
+        {'GetBitbakeVersion': {}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
         {'CreateAutoConf': {'machine': 'qemuarm', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'buildhistory' : False}},
         {'BuildToolchainImages': {}},
diff --git a/buildset-config.controller/nightly-arm64.conf b/buildset-config.controller/nightly-arm64.conf
index 9595b3b..0b15ec8 100644
--- a/buildset-config.controller/nightly-arm64.conf
+++ b/buildset-config.controller/nightly-arm64.conf
@@ -14,6 +14,7 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'qemuarm64', 'SDKMACHINE' :'i686', 'distro': 'poky', 'buildhistory' : True}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'SyncPersistDB' : {'distro' : 'poky'}},
+        {'GetBitbakeVersion': {}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
         {'RunSanityTests': {'images': 'core-image-minimal core-image-sato core-image-sato-sdk'}},
         {'CreateAutoConf': {'machine': 'qemuarm64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'buildhistory' : False}},
diff --git a/buildset-config.controller/nightly-fsl-arm-lsb.conf b/buildset-config.controller/nightly-fsl-arm-lsb.conf
index cccb7a1..5820cbb 100644
--- a/buildset-config.controller/nightly-fsl-arm-lsb.conf
+++ b/buildset-config.controller/nightly-fsl-arm-lsb.conf
@@ -19,16 +19,19 @@ steps: [{'SetDest':{}},
                             'atextprepend': 'ACCEPT_FSL_EULA = "1"\n',
                             'devkernel' : False}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'bsplayer' : True, 'bspprovider' : 'fsl-arm'}},
+        {'GetBitbakeVersion': {}},
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk core-image-lsb-qt3'}},
         {'CreateAutoConf': {'machine': 'imx6qsabresd', 'SDKMACHINE' : 'x86_64',
                             'distro': 'poky-lsb', 'buildhistory' : False,
                             'atextprepend': 'ACCEPT_FSL_EULA = "1"\n',
                             'devkernel' : False}},
+        {'GetBitbakeVersion': {}},
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk core-image-lsb-qt3'}},
         {'CreateAutoConf': {'machine': 'imx28evk', 'SDKMACHINE' : 'x86_64',
                             'distro': 'poky-lsb', 'buildhistory' : False,
                             'atextprepend': 'ACCEPT_FSL_EULA = "1"\n',
                             'devkernel' : False}},
+        {'GetBitbakeVersion': {}},
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk core-image-lsb-qt3'}},
         {'PublishLayerTarballs':{}},
         {'SendErrorReport': {}},
diff --git a/buildset-config.controller/nightly-fsl-arm.conf b/buildset-config.controller/nightly-fsl-arm.conf
index a133f3c..bb28583 100644
--- a/buildset-config.controller/nightly-fsl-arm.conf
+++ b/buildset-config.controller/nightly-fsl-arm.conf
@@ -19,6 +19,7 @@ steps: [{'SetDest':{}},
                             'atextprepend': 'ACCEPT_FSL_EULA = "1"\n',
                             'devkernel' : False}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'bsplayer' : True, 'bspprovider' : 'fsl-arm'}},
+        {'GetBitbakeVersion': {}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
         {'CreateAutoConf': {'machine': 'imx53qsb', 'SDKMACHINE' : 'i686',
                             'distro': 'poky', 'buildhistory' : False,
@@ -34,11 +35,13 @@ steps: [{'SetDest':{}},
                             'distro': 'poky', 'buildhistory' : False,
                             'atextprepend': 'ACCEPT_FSL_EULA = "1"\n',
                             'devkernel' : False}},
+        {'GetBitbakeVersion': {}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
         {'CreateAutoConf': {'machine': 'imx28evk', 'SDKMACHINE' : 'x86_64',
                             'distro': 'poky', 'buildhistory' : False,
                             'atextprepend': 'ACCEPT_FSL_EULA = "1"\n',
                             'devkernel' : False}},
+        {'GetBitbakeVersion': {}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
         {'PublishLayerTarballs':{}},
         {'SendErrorReport': {}},
diff --git a/buildset-config.controller/nightly-fsl-ppc-lsb.conf b/buildset-config.controller/nightly-fsl-ppc-lsb.conf
index 65cdc22..e9fccc1 100644
--- a/buildset-config.controller/nightly-fsl-ppc-lsb.conf
+++ b/buildset-config.controller/nightly-fsl-ppc-lsb.conf
@@ -19,6 +19,7 @@ steps: [{'SetDest':{}},
                             'atextprepend': 'ACCEPT_FSL_EULA = "1"\n',
                             'devkernel' : False}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'bsplayer' : True, 'bspprovider' : 'fsl-ppc'}},
+        {'GetBitbakeVersion': {}},        
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk core-image-lsb-qt3'}},
         {'PublishLayerTarballs':{}},
         {'SendErrorReport': {}},
diff --git a/buildset-config.controller/nightly-fsl-ppc.conf b/buildset-config.controller/nightly-fsl-ppc.conf
index c10913c..f506d0e 100644
--- a/buildset-config.controller/nightly-fsl-ppc.conf
+++ b/buildset-config.controller/nightly-fsl-ppc.conf
@@ -19,6 +19,7 @@ steps: [{'SetDest':{}},
                             'atextprepend': 'ACCEPT_FSL_EULA = "1"\n',
                             'devkernel' : False}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'bsplayer' : True, 'bspprovider' : 'fsl-ppc'}},
+        {'GetBitbakeVersion': {}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
         {'BuildToolchainImages': {}},
         {'CreateAutoConf': {'machine': 'p1022ds', 'SDKMACHINE' : 'x86_64',
diff --git a/buildset-config.controller/nightly-mips-lsb.conf b/buildset-config.controller/nightly-mips-lsb.conf
index d1c5362..a59fdaa 100644
--- a/buildset-config.controller/nightly-mips-lsb.conf
+++ b/buildset-config.controller/nightly-mips-lsb.conf
@@ -15,9 +15,11 @@ steps: [{'SetDest':{}},
          'distro': 'poky-lsb', 'buildhistory' : True}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'SyncPersistDB' : {'distro' : 'poky-lsb'}},
+        {'GetBitbakeVersion': {}},
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk core-image-lsb-qt3'}},
         {'CreateAutoConf': {'machine': 'routerstationpro',
                             'SDKMACHINE' : 'i686', 'distro': 'poky-lsb'}},
+        {'GetBitbakeVersion': {}},
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-sdk'}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky-lsb'}},
         {'PublishLayerTarballs':{}},
diff --git a/buildset-config.controller/nightly-mips.conf b/buildset-config.controller/nightly-mips.conf
index 998e0d5..f32754d 100644
--- a/buildset-config.controller/nightly-mips.conf
+++ b/buildset-config.controller/nightly-mips.conf
@@ -15,10 +15,12 @@ steps: [{'SetDest':{}},
                             'distro': 'poky', 'buildhistory' : True}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'SyncPersistDB' : {'distro' : 'poky'}},
+        {'GetBitbakeVersion': {}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
         {'RunSanityTests': {'images': 'core-image-minimal core-image-sato core-image-sato-sdk'}},
         {'CreateAutoConf': {'machine': 'routerstationpro', 'SDKMACHINE' : 'i686',
                             'distro': 'poky'}},
+        {'GetBitbakeVersion': {}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
         {'CreateAutoConf': {'machine': 'qemumips', 'SDKMACHINE' : 'i686',
                             'distro': 'poky', 'buildhistory' : False}},
diff --git a/buildset-config.controller/nightly-ppc-lsb.conf b/buildset-config.controller/nightly-ppc-lsb.conf
index a736fea..092cc62 100644
--- a/buildset-config.controller/nightly-ppc-lsb.conf
+++ b/buildset-config.controller/nightly-ppc-lsb.conf
@@ -15,9 +15,11 @@ steps: [{'SetDest':{}},
                             'distro': 'poky-lsb', 'buildhistory' : True}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'SyncPersistDB' : {'distro' : 'poky-lsb'}},
+        {'GetBitbakeVersion': {}},
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk core-image-lsb-qt3'}},
         {'CreateAutoConf': {'machine': 'mpc8315e-rdb', 'SDKMACHINE' : 'i686',
                             'distro': 'poky-lsb', 'buildhistory' : False}},
+        {'GetBitbakeVersion': {}},
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-sdk'}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky-lsb'}},
         {'PublishLayerTarballs':{}},
diff --git a/buildset-config.controller/nightly-ppc.conf b/buildset-config.controller/nightly-ppc.conf
index d07165e..f09c239 100644
--- a/buildset-config.controller/nightly-ppc.conf
+++ b/buildset-config.controller/nightly-ppc.conf
@@ -15,9 +15,11 @@ steps: [{'SetDest':{}},
                             'distro': 'poky', 'buildhistory' : True}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'SyncPersistDB' : {'distro' : 'poky'}},
+        {'GetBitbakeVersion': {}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
         {'RunSanityTests': {'images': 'core-image-minimal core-image-sato core-image-sato-sdk'}},
         {'CreateAutoConf': {'machine': 'mpc8315e-rdb', 'SDKMACHINE' : 'i686', 'distro': 'poky'}},
+        {'GetBitbakeVersion': {}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
         {'CreateAutoConf': {'machine': 'qemuppc', 'SDKMACHINE' : 'i686',
                             'distro': 'poky', 'buildhistory' : False}},
diff --git a/buildset-config.controller/nightly-x86-64-lsb.conf b/buildset-config.controller/nightly-x86-64-lsb.conf
index 07a23d8..2d1c63f 100644
--- a/buildset-config.controller/nightly-x86-64-lsb.conf
+++ b/buildset-config.controller/nightly-x86-64-lsb.conf
@@ -15,9 +15,11 @@ steps: [{'SetDest':{}},
                             'distro': 'poky-lsb', 'buildhistory' : True}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'SyncPersistDB' : {'distro' : 'poky-lsb'}},
+        {'GetBitbakeVersion': {}},
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk core-image-lsb-qt3'}},
         {'CreateAutoConf': {'machine': 'genericx86-64', 'SDKMACHINE' : 'i686',
                             'distro': 'poky-lsb', 'buildhistory' : False}},
+        {'GetBitbakeVersion': {}},
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-sdk'}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky-lsb'}},
         {'PublishLayerTarballs':{}},
diff --git a/buildset-config.controller/nightly-x86-64.conf b/buildset-config.controller/nightly-x86-64.conf
index 9a81ab2..7641a7f 100644
--- a/buildset-config.controller/nightly-x86-64.conf
+++ b/buildset-config.controller/nightly-x86-64.conf
@@ -15,10 +15,12 @@ steps: [{'SetDest':{}},
                             'distro': 'poky', 'buildhistory' : True}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'SyncPersistDB' : {'distro' : 'poky'}},
+        {'GetBitbakeVersion': {}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
         {'RunSanityTests': {'images': 'core-image-minimal core-image-sato core-image-sato-sdk'}},
         {'CreateAutoConf': {'machine': 'genericx86-64', 'SDKMACHINE' : 'i686',
                             'buildhistory' : False, 'distro': 'poky'}},
+        {'GetBitbakeVersion': {}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
         {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686',
                             'distro': 'poky', 'buildhistory' : False}},
diff --git a/buildset-config.controller/nightly-x86-lsb.conf b/buildset-config.controller/nightly-x86-lsb.conf
index 654de1f..bb2af3c 100644
--- a/buildset-config.controller/nightly-x86-lsb.conf
+++ b/buildset-config.controller/nightly-x86-lsb.conf
@@ -15,9 +15,11 @@ steps: [{'SetDest':{}},
                             'buildhistory' : True, 'distro': 'poky-lsb'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'SyncPersistDB' : {'distro' : 'poky-lsb'}},
+        {'GetBitbakeVersion': {}},
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk core-image-lsb-qt3'}},
         {'CreateAutoConf': {'machine': 'genericx86', 'SDKMACHINE' : 'i686',
                             'buildhistory' : False, 'distro': 'poky-lsb'}},
+        {'GetBitbakeVersion': {}},
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-sdk'}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky-lsb'}},
         {'PublishLayerTarballs':{}},
diff --git a/buildset-config.controller/nightly-x86.conf b/buildset-config.controller/nightly-x86.conf
index b5a0b36..bccbade 100644
--- a/buildset-config.controller/nightly-x86.conf
+++ b/buildset-config.controller/nightly-x86.conf
@@ -15,10 +15,12 @@ steps: [{'SetDest':{}},
                             'distro': 'poky', 'buildhistory' : True}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'SyncPersistDB' : {'distro' : 'poky'}},
+        {'GetBitbakeVersion': {}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
         {'RunSanityTests': {'images': 'core-image-minimal core-image-sato core-image-sato-sdk'}},
         {'CreateAutoConf': {'machine': 'genericx86', 'SDKMACHINE' : 'i686',
                             'distro': 'poky', 'buildhistory' : False}},
+        {'GetBitbakeVersion': {}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
         {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'i686',
                             'distro': 'poky', 'buildhistory' : False}},
-- 
1.9.3


