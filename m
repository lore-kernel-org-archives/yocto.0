Return-Path: <lynncyrin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3427E00BE3; Mon,  9 Jun 2014 11:52:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lynncyrin[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pb0-f49.google.com (mail-pb0-f49.google.com
	[209.85.160.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41255E00B66
	for <yocto@yoctoproject.org>; Mon,  9 Jun 2014 11:51:55 -0700 (PDT)
Received: by mail-pb0-f49.google.com with SMTP id jt11so5238864pbb.36
	for <yocto@yoctoproject.org>; Mon, 09 Jun 2014 11:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id;
	bh=s1pHrhfOfWsTAGuHsjNOkx8di35k5SdwqXSfvNcWTBA=;
	b=OhnmfSZI+1XkRxrbFLjsbREM8kOT97k2Yqnx7/ntDLhrTuFZ0dfMs6Uq6R7KA8SaSD
	dK5bT7Fj3K+TR/GF2MXAjYRMSV2sJdUvMf09WA2ma2Q35APPhY0b6u7RTH+aJULbxGoE
	8QVVmaLo3Plqy50WDrcjMtjp7hGFn5grLa/QYPSAaaUwY9aI7Jpr3ZDcANWHut1N1R39
	uZ743uq49CllYv3avVLdqIYFtZeW8/q1+RqIrE0MlzrEZGLVF/XyDut2i6Dc9FbHxKuz
	ulKjU5EF0LssoJsO9jzgc1xKW+fG7GUGdiGoRoaH4JrcLjPd/Ju/3QPEpg4QCxt9aGtt
	vx7g==
X-Received: by 10.68.95.225 with SMTP id dn1mr6447556pbb.126.1402339915372;
	Mon, 09 Jun 2014 11:51:55 -0700 (PDT)
Received: from localhost.localdomain (mobile-166-137-186-015.mycingular.net.
	[166.137.186.15]) by mx.google.com with ESMTPSA id
	ir10sm65271982pbc.59.2014.06.09.11.51.54 for <yocto@yoctoproject.org>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 09 Jun 2014 11:51:54 -0700 (PDT)
Sender: Lynn Cyrin <firemagelynn@gmail.com>
From: Lynn 'Cyrin' Conway <lynncyrin@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  9 Jun 2014 11:51:50 -0700
Message-Id: <1402339912-20927-1-git-send-email-lynncyrin@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 1/3] buildset-config.master/*: change call to MD5 creation
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
X-List-Received-Date: Mon, 09 Jun 2014 18:52:05 -0000

REF: Bug ID 6354

The code for MD5 creation is being moved from MakeImageMD5s to
PublishArtifacts['md5sums']. This commit changes every file in
buildset-config.master that had a call to MakeImageMD5s.

Signed-off-by: Lynn 'Cyrin' Conway <lynncyrin@gmail.com>
---
 buildset-config.master/build-appliance.conf     |    4 ++--
 buildset-config.master/buildtools.conf          |    4 ++--
 buildset-config.master/minnow-lsb.conf          |    4 ++--
 buildset-config.master/minnow.conf              |    4 ++--
 buildset-config.master/nightly-arm-lsb.conf     |    4 ++--
 buildset-config.master/nightly-arm.conf         |    4 ++--
 buildset-config.master/nightly-fsl-arm-lsb.conf |    4 ++--
 buildset-config.master/nightly-fsl-arm.conf     |    4 ++--
 buildset-config.master/nightly-fsl-ppc-lsb.conf |    4 ++--
 buildset-config.master/nightly-fsl-ppc.conf     |    4 ++--
 buildset-config.master/nightly-mips-lsb.conf    |    4 ++--
 buildset-config.master/nightly-mips.conf        |    4 ++--
 buildset-config.master/nightly-ppc-lsb.conf     |    4 ++--
 buildset-config.master/nightly-ppc.conf         |    4 ++--
 buildset-config.master/nightly-x32.conf         |    5 +++--
 buildset-config.master/nightly-x86-64-lsb.conf  |    4 ++--
 buildset-config.master/nightly-x86-64.conf      |    4 ++--
 buildset-config.master/nightly-x86-lsb.conf     |    4 ++--
 buildset-config.master/nightly-x86.conf         |    4 ++--
 buildset-config.master/poky-tiny.conf           |    4 ++--
 20 files changed, 41 insertions(+), 40 deletions(-)

diff --git a/buildset-config.master/build-appliance.conf b/buildset-config.master/build-appliance.conf
index d681b87..f63be2c 100644
--- a/buildset-config.master/build-appliance.conf
+++ b/buildset-config.master/build-appliance.conf
@@ -17,6 +17,6 @@ steps: [{'SetDest':{}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'universe -c fetch'}},
         {'BuildImages': {'images': 'build-appliance-image'}},
-        {'PublishLayerTarballs':{}}, {'MakeImageMD5s':{}},
-        {'PublishArtifacts': {'artifacts': ['build-appliance']}}]
+        {'PublishLayerTarballs':{}},
+        {'PublishArtifacts': {'artifacts': ['build-appliance', 'md5sums']}}]
 
diff --git a/buildset-config.master/buildtools.conf b/buildset-config.master/buildtools.conf
index f71e535..673b6bc 100644
--- a/buildset-config.master/buildtools.conf
+++ b/buildset-config.master/buildtools.conf
@@ -11,5 +11,5 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'x86_64', 'distro': 'poky', 'buildapp': True}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'buildtools-tarball'}},
-        {'PublishLayerTarballs':{}}, {'MakeImageMD5s':{}},
-        {'PublishArtifacts': {'artifacts': ['buildtools-tarball']}}]
+        {'PublishLayerTarballs':{}},
+        {'PublishArtifacts': {'artifacts': ['buildtools-tarball', 'md5sums']}}]
diff --git a/buildset-config.master/minnow-lsb.conf b/buildset-config.master/minnow-lsb.conf
index d1f12aa..0293f38 100644
--- a/buildset-config.master/minnow-lsb.conf
+++ b/buildset-config.master/minnow-lsb.conf
@@ -20,6 +20,6 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'minnow', 'SDKMACHINE' : 'x86_64', 'distro': 'poky-lsb', 'emgd': 'True', 'pvr': 'False', 'atextappend': '\nNOISO="1"\nCORE_IMAGE_EXTRA_INSTALL += "dmidecode pciutils ethtool alsa-utils"\n'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'bsplayer': True, 'bspprovider': 'intel','layerdirs': ['meta-minnow', 'meta-intel', 'meta-intel/meta-tlk']}},
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk core-image-lsb-qt3'}},
-        {'PublishLayerTarballs':{}}, {'MakeImageMD5s':{}},
-        {'PublishArtifacts': {'artifacts': ['conf', 'minnow']}}]
+        {'PublishLayerTarballs':{}},
+        {'PublishArtifacts': {'artifacts': ['conf', 'minnow', 'md5sums']}}]
 
diff --git a/buildset-config.master/minnow.conf b/buildset-config.master/minnow.conf
index fcb83bd..c09a338 100644
--- a/buildset-config.master/minnow.conf
+++ b/buildset-config.master/minnow.conf
@@ -20,6 +20,6 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'minnow', 'SDKMACHINE' : 'x86_64', 'distro': 'poky', 'emgd': 'True', 'pvr': 'False', 'atextappend': '\nNOISO="1"\nCORE_IMAGE_EXTRA_INSTALL += "dmidecode pciutils ethtool alsa-utils"\n'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'bsplayer': True, 'bspprovider': 'intel','layerdirs': ['meta-minnow', 'meta-intel', 'meta-intel/meta-tlk']}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
-        {'PublishLayerTarballs':{}}, {'MakeImageMD5s':{}},
-        {'PublishArtifacts': {'artifacts': ['minnow', 'ipk', 'rpm', 'deb']}}]
+        {'PublishLayerTarballs':{}},
+        {'PublishArtifacts': {'artifacts': ['minnow', 'ipk', 'rpm', 'deb', 'md5sums']}}]
 
diff --git a/buildset-config.master/nightly-arm-lsb.conf b/buildset-config.master/nightly-arm-lsb.conf
index 26dc4f9..86c35ad 100644
--- a/buildset-config.master/nightly-arm-lsb.conf
+++ b/buildset-config.master/nightly-arm-lsb.conf
@@ -18,5 +18,5 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'beagleboard', 'SDKMACHINE' : 'i686', 'distro': 'poky-lsb'}},
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-sdk'}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky-lsb'}},
-        {'PublishLayerTarballs':{}}, {'MakeImageMD5s':{}},
-        {'PublishArtifacts': {'artifacts': ['qemuarm', 'beagleboard']}}]
+        {'PublishLayerTarballs':{}},
+        {'PublishArtifacts': {'artifacts': ['qemuarm', 'beagleboard', 'md5sums']}}]
diff --git a/buildset-config.master/nightly-arm.conf b/buildset-config.master/nightly-arm.conf
index a02b278..f7b2048 100644
--- a/buildset-config.master/nightly-arm.conf
+++ b/buildset-config.master/nightly-arm.conf
@@ -23,6 +23,6 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'qemuarm', 'SDKMACHINE' : 'x86_64', 'distro': 'poky', 'buildhistory' : False}},
         {'BuildToolchainImages': {}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}},
-        {'PublishLayerTarballs':{}}, {'MakeImageMD5s':{}},
-        {'PublishArtifacts': {'artifacts': ['qemuarm', 'beagleboard', 'ipk', 'rpm', 'deb', 'toolchain']}}]
+        {'PublishLayerTarballs':{}},
+        {'PublishArtifacts': {'artifacts': ['qemuarm', 'beagleboard', 'ipk', 'rpm', 'deb', 'toolchain', 'md5sums']}}]
 
diff --git a/buildset-config.master/nightly-fsl-arm-lsb.conf b/buildset-config.master/nightly-fsl-arm-lsb.conf
index 48eddc0..63ade84 100644
--- a/buildset-config.master/nightly-fsl-arm-lsb.conf
+++ b/buildset-config.master/nightly-fsl-arm-lsb.conf
@@ -21,6 +21,6 @@ steps: [{'SetDest':{}},
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk core-image-lsb-qt3'}},
         {'CreateAutoConf': {'machine': 'imx28evk', 'SDKMACHINE' : 'x86_64', 'distro': 'poky-lsb', 'buildhistory' : False, 'atextprepend': 'ACCEPT_FSL_EULA = "1"\n'}},
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk core-image-lsb-qt3'}},
-        {'PublishLayerTarballs':{}}, {'MakeImageMD5s':{}},
-        {'PublishArtifacts': {'artifacts': ['imx53qsb', 'imx6qsabresd', 'imx28evk']}}]
+        {'PublishLayerTarballs':{}},
+        {'PublishArtifacts': {'artifacts': ['imx53qsb', 'imx6qsabresd', 'imx28evk', 'md5sums']}}]
 
diff --git a/buildset-config.master/nightly-fsl-arm.conf b/buildset-config.master/nightly-fsl-arm.conf
index eacab5e..fb653aa 100644
--- a/buildset-config.master/nightly-fsl-arm.conf
+++ b/buildset-config.master/nightly-fsl-arm.conf
@@ -25,7 +25,7 @@ steps: [{'SetDest':{}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
         {'CreateAutoConf': {'machine': 'imx28evk', 'SDKMACHINE' : 'x86_64', 'distro': 'poky', 'buildhistory' : False, 'atextprepend': 'ACCEPT_FSL_EULA = "1"\n'}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
-        {'PublishLayerTarballs':{}}, {'MakeImageMD5s':{}},
-        {'PublishArtifacts': {'artifacts': ['imx53qsb', 'imx6qsabresd', 'imx28evk', 'ipk', 'rpm', 'deb', 'toolchain']}}]
+        {'PublishLayerTarballs':{}},
+        {'PublishArtifacts': {'artifacts': ['imx53qsb', 'imx6qsabresd', 'imx28evk', 'ipk', 'rpm', 'deb', 'toolchain', 'md5sums']}}]
 
 
diff --git a/buildset-config.master/nightly-fsl-ppc-lsb.conf b/buildset-config.master/nightly-fsl-ppc-lsb.conf
index 2e3abed..70ecd73 100644
--- a/buildset-config.master/nightly-fsl-ppc-lsb.conf
+++ b/buildset-config.master/nightly-fsl-ppc-lsb.conf
@@ -17,6 +17,6 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'p1022ds', 'SDKMACHINE' : 'i686', 'distro': 'poky-lsb', 'buildhistory' : False, 'atextprepend': 'ACCEPT_FSL_EULA = "1"\n'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'bsplayer' : True, 'bspprovider' : 'fsl-ppc'}},
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-dev core-image-lsb-sdk core-image-lsb-qt3'}},
-        {'PublishLayerTarballs':{}}, {'MakeImageMD5s':{}},
-        {'PublishArtifacts': {'artifacts': ['p1022ds']}}]
+        {'PublishLayerTarballs':{}},
+        {'PublishArtifacts': {'artifacts': ['p1022ds', 'md5sums']}}]
 
diff --git a/buildset-config.master/nightly-fsl-ppc.conf b/buildset-config.master/nightly-fsl-ppc.conf
index 613fc8e..cbb880f 100644
--- a/buildset-config.master/nightly-fsl-ppc.conf
+++ b/buildset-config.master/nightly-fsl-ppc.conf
@@ -21,6 +21,6 @@ steps: [{'SetDest':{}},
         {'BuildToolchainImages': {}},
         {'CreateAutoConf': {'machine': 'p1022ds', 'SDKMACHINE' : 'x86_64', 'distro': 'poky', 'buildhistory' : False, 'atextprepend': 'ACCEPT_FSL_EULA = "1"\n'}},
         {'BuildToolchainImages': {}},
-        {'PublishLayerTarballs':{}}, {'MakeImageMD5s':{}},
-        {'PublishArtifacts': {'artifacts': ['p1022ds', 'ipk', 'rpm', 'deb', 'toolchain']}}]
+        {'PublishLayerTarballs':{}},
+        {'PublishArtifacts': {'artifacts': ['p1022ds', 'ipk', 'rpm', 'deb', 'toolchain', 'md5sums']}}]
 
diff --git a/buildset-config.master/nightly-mips-lsb.conf b/buildset-config.master/nightly-mips-lsb.conf
index a8df44e..d967aa6 100644
--- a/buildset-config.master/nightly-mips-lsb.conf
+++ b/buildset-config.master/nightly-mips-lsb.conf
@@ -18,5 +18,5 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'routerstationpro', 'SDKMACHINE' : 'i686', 'distro': 'poky-lsb'}},
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-sdk'}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky-lsb'}},
-        {'PublishLayerTarballs':{}}, {'MakeImageMD5s':{}},
-        {'PublishArtifacts': {'artifacts': ['qemumips', 'routerstationpro']}}]
+        {'PublishLayerTarballs':{}},
+        {'PublishArtifacts': {'artifacts': ['qemumips', 'routerstationpro', 'md5sums']}}]
diff --git a/buildset-config.master/nightly-mips.conf b/buildset-config.master/nightly-mips.conf
index b8383ef..0c5d88d 100644
--- a/buildset-config.master/nightly-mips.conf
+++ b/buildset-config.master/nightly-mips.conf
@@ -23,6 +23,6 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'qemumips', 'SDKMACHINE' : 'x86_64', 'distro': 'poky', 'buildhistory' : False}},
         {'BuildToolchainImages': {}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}},
-        {'PublishLayerTarballs':{}}, {'MakeImageMD5s':{}},
-        {'PublishArtifacts': {'artifacts': ['qemumips', 'routerstationpro', 'ipk', 'rpm', 'deb', 'toolchain']}}]
+        {'PublishLayerTarballs':{}},
+        {'PublishArtifacts': {'artifacts': ['qemumips', 'routerstationpro', 'ipk', 'rpm', 'deb', 'toolchain', 'md5sums']}}]
 
diff --git a/buildset-config.master/nightly-ppc-lsb.conf b/buildset-config.master/nightly-ppc-lsb.conf
index 09f973d..2b8798b 100644
--- a/buildset-config.master/nightly-ppc-lsb.conf
+++ b/buildset-config.master/nightly-ppc-lsb.conf
@@ -18,6 +18,6 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'mpc8315e-rdb', 'SDKMACHINE' : 'i686', 'distro': 'poky-lsb'}},
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-sdk'}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky-lsb'}},
-        {'PublishLayerTarballs':{}}, {'MakeImageMD5s':{}},
-        {'PublishArtifacts': {'artifacts': ['qemuppc', 'mpc8315e-rdb']}}]
+        {'PublishLayerTarballs':{}},
+        {'PublishArtifacts': {'artifacts': ['qemuppc', 'mpc8315e-rdb', 'md5sums']}}]
 
diff --git a/buildset-config.master/nightly-ppc.conf b/buildset-config.master/nightly-ppc.conf
index 56345ca..09fbc96 100644
--- a/buildset-config.master/nightly-ppc.conf
+++ b/buildset-config.master/nightly-ppc.conf
@@ -23,6 +23,6 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'qemuppc', 'SDKMACHINE' : 'x86_64', 'distro': 'poky', 'buildhistory' : False}},
         {'BuildToolchainImages': {}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}},
-        {'PublishLayerTarballs':{}}, {'MakeImageMD5s':{}},
-        {'PublishArtifacts': {'artifacts': ['qemuppc', 'mpc8315e-rdb', 'ipk', 'rpm', 'deb', 'toolchain']}}]
+        {'PublishLayerTarballs':{}},
+        {'PublishArtifacts': {'artifacts': ['qemuppc', 'mpc8315e-rdb', 'ipk', 'rpm', 'deb', 'toolchain', 'md5sums']}}]
 
diff --git a/buildset-config.master/nightly-x32.conf b/buildset-config.master/nightly-x32.conf
index 539559a..fe55c40 100644
--- a/buildset-config.master/nightly-x32.conf
+++ b/buildset-config.master/nightly-x32.conf
@@ -13,8 +13,9 @@ steps: [{'SetDest':{}},
         {'GetDistroVersion' : {'distro': 'poky'}},
         {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'x86_64', 'x32': True, 'distro': 'poky'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
-        {'PublishLayerTarballs':{}}, {'MakeImageMD5s':{}},
+        {'PublishLayerTarballs':{}},
         {'BuildImages': {'images': 'core-image-minimal core-image-sato'}},
         {'RunSanityTests': {'images': 'core-image-minimal'}},
         {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'x86_64', 'x32': True, 'distro': 'poky'}},
-        {'RunSanityTests': {'images': 'core-image-sato', 'suitesappend' : 'x32lib'}}]
+        {'RunSanityTests': {'images': 'core-image-sato', 'suitesappend' : 'x32lib'}},
+        {'PublishArtifacts': {'artifacts': ['md5sums']}}]
diff --git a/buildset-config.master/nightly-x86-64-lsb.conf b/buildset-config.master/nightly-x86-64-lsb.conf
index 2eae806..643cc03 100644
--- a/buildset-config.master/nightly-x86-64-lsb.conf
+++ b/buildset-config.master/nightly-x86-64-lsb.conf
@@ -18,6 +18,6 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'genericx86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky-lsb'}},
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-sdk'}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky-lsb'}},
-        {'PublishLayerTarballs':{}}, {'MakeImageMD5s':{}},
-        {'PublishArtifacts': {'artifacts': ['qemux86-64', 'genericx86-64']}}]
+        {'PublishLayerTarballs':{}},
+        {'PublishArtifacts': {'artifacts': ['qemux86-64', 'genericx86-64', 'md5sums']}}]
 
diff --git a/buildset-config.master/nightly-x86-64.conf b/buildset-config.master/nightly-x86-64.conf
index dc17d41..7e02186 100644
--- a/buildset-config.master/nightly-x86-64.conf
+++ b/buildset-config.master/nightly-x86-64.conf
@@ -23,5 +23,5 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'x86_64', 'distro': 'poky', 'buildhistory' : False}},
         {'BuildToolchainImages': {}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}},
-        {'PublishLayerTarballs':{}}, {'MakeImageMD5s':{}},
-        {'PublishArtifacts': {'artifacts': ['qemux86-64', 'genericx86-64', 'ipk', 'rpm', 'deb', 'toolchain']}}]
+        {'PublishLayerTarballs':{}},
+        {'PublishArtifacts': {'artifacts': ['qemux86-64', 'genericx86-64', 'ipk', 'rpm', 'deb', 'toolchain', 'md5sums']}}]
diff --git a/buildset-config.master/nightly-x86-lsb.conf b/buildset-config.master/nightly-x86-lsb.conf
index df4bb35..29aef69 100644
--- a/buildset-config.master/nightly-x86-lsb.conf
+++ b/buildset-config.master/nightly-x86-lsb.conf
@@ -18,6 +18,6 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'genericx86', 'SDKMACHINE' : 'i686', 'distro': 'poky-lsb'}},
         {'BuildImages': {'images': 'core-image-lsb core-image-lsb-sdk'}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky-lsb'}},
-        {'PublishLayerTarballs':{}}, {'MakeImageMD5s':{}},
-        {'PublishArtifacts': {'artifacts': ['qemux86', 'genericx86']}}]
+        {'PublishLayerTarballs':{}},
+        {'PublishArtifacts': {'artifacts': ['qemux86', 'genericx86', 'md5sums']}}]
 
diff --git a/buildset-config.master/nightly-x86.conf b/buildset-config.master/nightly-x86.conf
index b808b06..4c057e4 100644
--- a/buildset-config.master/nightly-x86.conf
+++ b/buildset-config.master/nightly-x86.conf
@@ -23,5 +23,5 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'x86_64', 'distro': 'poky', 'buildhistory' : False}},
         {'BuildToolchainImages': {}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}},
-        {'PublishLayerTarballs':{}}, {'MakeImageMD5s':{}},
-        {'PublishArtifacts': {'artifacts': ['qemux86', 'genericx86', 'ipk', 'rpm', 'deb', 'toolchain']}}]
+        {'PublishLayerTarballs':{}},
+        {'PublishArtifacts': {'artifacts': ['qemux86', 'genericx86', 'ipk', 'rpm', 'deb', 'toolchain', 'md5sums']}}]
diff --git a/buildset-config.master/poky-tiny.conf b/buildset-config.master/poky-tiny.conf
index ea6b7ed..033863e 100644
--- a/buildset-config.master/poky-tiny.conf
+++ b/buildset-config.master/poky-tiny.conf
@@ -14,6 +14,6 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'i686', 'distro': 'poky-tiny'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'core-image-minimal'}},
-        {'PublishLayerTarballs':{}}, {'MakeImageMD5s':{}},
-        {'PublishArtifacts': {'artifacts': ['tiny']}}]
+        {'PublishLayerTarballs':{}},
+        {'PublishArtifacts': {'artifacts': ['tiny', 'md5sums']}}]
 
-- 
1.7.9.5


