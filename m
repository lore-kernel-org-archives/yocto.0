Return-Path: <ross.burton@intel.com>
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 375ADE014E2
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 03:09:49 -0700 (PDT)
Received: by mail-wi0-f170.google.com with SMTP id ey16so414660wid.3
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 03:09:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=aBN2I30wKBuwGMVsXmVYhpi0SUrLmg108JVvWcmwqnI=;
	b=Uhs1UdMxPqz/Td6Y9sVIEk7LNYBlGpgFR5mJhYEC+bwlKq0mbF/aWw96aSRneLiQAY
	vIWPp7+lNvjFuxuhxnE0YNoEcimc/HzyJWRIbGl6V7c2uXgOsUwA3IRcnDBI9mjYM6Nm
	Kyt4rLv34+3uT2J7hkhrlm7O+JOwABsGWqXbgxehLyOp8irjsok9gWWBtTHowmhIpPP1
	6JF7FDyc48lJIo6Pfzp0PSmBz+Q1v6hEPvhqQso5GNpaa6BLH40YwSzZ/anbsDGqa63q
	rQbCq9w7FdHzDuHGyq2LXLMQzVu6aYnaWDKuSYZ3T6pjdsNSU9+8VRo30WcsSPOv52bz
	ojaA==
X-Received: by 10.180.36.36 with SMTP id n4mr15345761wij.0.1372327788520;
	Thu, 27 Jun 2013 03:09:48 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id p1sm16267182wix.9.2013.06.27.03.09.46
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 27 Jun 2013 03:09:47 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: elizabeth.flanagan@intel.com
Date: Thu, 27 Jun 2013 11:06:14 +0100
Message-Id: <1372327574-32009-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
X-Gm-Message-State: ALoCoQnaIGE/mIUFNeDfdjUeLkaSiv0D1p692opdaHkEtCBXlICLeaStKpfxecl3IKeU0fB7ieBt
Cc: yocto@yoctoproject.org
Subject: [PATCH] buildset-config: build core-image-sato SDK
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
X-List-Received-Date: Thu, 27 Jun 2013 10:09:51 -0000

The meta-toolchain* recipes are deprecated, so when building meta-toolchain-gmae
also build the SDK for core-image-sato.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 buildset-config/nightly-arm.conf     |    2 ++
 buildset-config/nightly-fsl-arm.conf |    2 ++
 buildset-config/nightly-fsl-ppc.conf |    2 ++
 buildset-config/nightly-mips.conf    |    2 ++
 buildset-config/nightly-oecore.conf  |    2 ++
 buildset-config/nightly-ppc.conf     |    2 ++
 buildset-config/nightly-x86-64.conf  |    2 ++
 buildset-config/nightly-x86.conf     |    2 ++
 8 files changed, 16 insertions(+)

diff --git a/buildset-config/nightly-arm.conf b/buildset-config/nightly-arm.conf
index 90e5332..827b5fb 100644
--- a/buildset-config/nightly-arm.conf
+++ b/buildset-config/nightly-arm.conf
@@ -21,8 +21,10 @@ steps: [{'SetDest':{}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
         {'CreateAutoConf': {'machine': 'qemuarm', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'buildhistory' : False}},
         {'BuildImages': {'images': 'meta-toolchain-gmae'}},
+        {'BuildImages': {'images': 'core-image-sato -c populate_sdk'}},
         {'CreateAutoConf': {'machine': 'qemuarm', 'SDKMACHINE' : 'x86-64', 'distro': 'poky', 'buildhistory' : False}},
         {'BuildImages': {'images': 'meta-toolchain-gmae'}},
+        {'BuildImages': {'images': 'core-image-sato -c populate_sdk'}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}},
         {'PublishLayerTarballs':{}},
         {'PublishArtifacts': {'artifacts': ['qemuarm', 'beagleboard', 'ipk', 'rpm', 'deb', 'toolchain']}}]
diff --git a/buildset-config/nightly-fsl-arm.conf b/buildset-config/nightly-fsl-arm.conf
index c5b4caf..b5750bd 100644
--- a/buildset-config/nightly-fsl-arm.conf
+++ b/buildset-config/nightly-fsl-arm.conf
@@ -21,8 +21,10 @@ steps: [{'SetDest':{}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
         {'CreateAutoConf': {'machine': 'imx53qsb', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'buildhistory' : False, 'atextprepend': 'ACCEPT_FSL_EULA = "1"\n'}},
         {'BuildImages': {'images': 'meta-toolchain-gmae'}},
+        {'BuildImages': {'images': 'core-image-sato -c populate_sdk'}},
         {'CreateAutoConf': {'machine': 'imx53qsb', 'SDKMACHINE' : 'x86-64', 'distro': 'poky', 'buildhistory' : False, 'atextprepend': 'ACCEPT_FSL_EULA = "1"\n'}},
         {'BuildImages': {'images': 'meta-toolchain-gmae'}},
+        {'BuildImages': {'images': 'core-image-sato -c populate_sdk'}},
         {'CreateAutoConf': {'machine': 'imx6qsabresd', 'SDKMACHINE' : 'x86-64', 'distro': 'poky', 'buildhistory' : False, 'atextprepend': 'ACCEPT_FSL_EULA = "1"\n'}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
         {'CreateAutoConf': {'machine': 'imx28evk', 'SDKMACHINE' : 'x86-64', 'distro': 'poky', 'buildhistory' : False, 'atextprepend': 'ACCEPT_FSL_EULA = "1"\n'}},
diff --git a/buildset-config/nightly-fsl-ppc.conf b/buildset-config/nightly-fsl-ppc.conf
index 579ba47..5153580 100644
--- a/buildset-config/nightly-fsl-ppc.conf
+++ b/buildset-config/nightly-fsl-ppc.conf
@@ -21,8 +21,10 @@ steps: [{'SetDest':{}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
         {'CreateAutoConf': {'machine': 'p1022ds', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'buildhistory' : False, 'atextprepend': 'ACCEPT_FSL_EULA = "1"\n'}},
         {'BuildImages': {'images': 'meta-toolchain-gmae'}},
+        {'BuildImages': {'images': 'core-image-sato -c populate_sdk'}},
         {'CreateAutoConf': {'machine': 'p1022ds', 'SDKMACHINE' : 'x86-64', 'distro': 'poky', 'buildhistory' : False, 'atextprepend': 'ACCEPT_FSL_EULA = "1"\n'}},
         {'BuildImages': {'images': 'meta-toolchain-gmae'}},
+        {'BuildImages': {'images': 'core-image-sato -c populate_sdk'}},
         {'PublishLayerTarballs':{}},
         {'PublishArtifacts': {'artifacts': ['p1022ds', 'ipk', 'rpm', 'deb', 'toolchain']}}]
 
diff --git a/buildset-config/nightly-mips.conf b/buildset-config/nightly-mips.conf
index c5c24d3..a3d1fe8 100644
--- a/buildset-config/nightly-mips.conf
+++ b/buildset-config/nightly-mips.conf
@@ -21,8 +21,10 @@ steps: [{'SetDest':{}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
         {'CreateAutoConf': {'machine': 'qemumips', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'buildhistory' : False}},
         {'BuildImages': {'images': 'meta-toolchain-gmae'}},
+        {'BuildImages': {'images': 'core-image-sato -c populate_sdk'}},
         {'CreateAutoConf': {'machine': 'qemumips', 'SDKMACHINE' : 'x86-64', 'distro': 'poky', 'buildhistory' : False}},
         {'BuildImages': {'images': 'meta-toolchain-gmae'}},
+        {'BuildImages': {'images': 'core-image-sato -c populate_sdk'}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}},
         {'PublishLayerTarballs':{}},
         {'PublishArtifacts': {'artifacts': ['qemumips', 'routerstationpro', 'ipk', 'rpm', 'deb', 'toolchain']}}]
diff --git a/buildset-config/nightly-oecore.conf b/buildset-config/nightly-oecore.conf
index 4f15f81..f21483d 100644
--- a/buildset-config/nightly-oecore.conf
+++ b/buildset-config/nightly-oecore.conf
@@ -22,7 +22,9 @@ steps: [{'SetDest':{}},
         {'RunSanityTests': {'images': 'core-image-sato'}},
         {'CreateAutoConf': {'machine': 'qemuarm', 'SDKMACHINE' : 'i686', 'distro': 'oecore', 'buildhistory' : False}},
         {'BuildImages': {'images': 'meta-toolchain-gmae'}},
+        {'BuildImages': {'images': 'core-image-sato -c populate_sdk'}},
         {'CreateAutoConf': {'machine': 'qemuarm', 'SDKMACHINE' : 'x86-64', 'distro': 'oecore', 'buildhistory' : False}},
         {'BuildImages': {'images': 'meta-toolchain-gmae'}}
+        {'BuildImages': {'images': 'core-image-sato -c populate_sdk'}},
         ]
 
diff --git a/buildset-config/nightly-ppc.conf b/buildset-config/nightly-ppc.conf
index c446b30..06413bf 100644
--- a/buildset-config/nightly-ppc.conf
+++ b/buildset-config/nightly-ppc.conf
@@ -21,8 +21,10 @@ steps: [{'SetDest':{}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
         {'CreateAutoConf': {'machine': 'qemuppc', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'buildhistory' : False}},
         {'BuildImages': {'images': 'meta-toolchain-gmae'}},
+        {'BuildImages': {'images': 'core-image-sato -c populate_sdk'}},
         {'CreateAutoConf': {'machine': 'qemuppc', 'SDKMACHINE' : 'x86-64', 'distro': 'poky', 'buildhistory' : False}},
         {'BuildImages': {'images': 'meta-toolchain-gmae'}},
+        {'BuildImages': {'images': 'core-image-sato -c populate_sdk'}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}},
         {'PublishLayerTarballs':{}},
         {'PublishArtifacts': {'artifacts': ['qemuppc', 'mpc8315e-rdb', 'ipk', 'rpm', 'deb', 'toolchain']}}]
diff --git a/buildset-config/nightly-x86-64.conf b/buildset-config/nightly-x86-64.conf
index ab25610..196a24c 100644
--- a/buildset-config/nightly-x86-64.conf
+++ b/buildset-config/nightly-x86-64.conf
@@ -19,8 +19,10 @@ steps: [{'SetDest':{}},
         {'RunSanityTests': {'images': 'core-image-minimal core-image-sato'}},
         {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'buildhistory' : False}},
         {'BuildImages': {'images': 'meta-toolchain-gmae'}},
+        {'BuildImages': {'images': 'core-image-sato -c populate_sdk'}},
         {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'x86-64', 'distro': 'poky', 'buildhistory' : False}},
         {'BuildImages': {'images': 'meta-toolchain-gmae'}},
+        {'BuildImages': {'images': 'core-image-sato -c populate_sdk'}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}},
         {'PublishLayerTarballs':{}},
         {'PublishArtifacts': {'artifacts': ['qemux86-64', 'ipk', 'rpm', 'deb', 'toolchain']}}]
diff --git a/buildset-config/nightly-x86.conf b/buildset-config/nightly-x86.conf
index 6920cad..75efd39 100644
--- a/buildset-config/nightly-x86.conf
+++ b/buildset-config/nightly-x86.conf
@@ -21,8 +21,10 @@ steps: [{'SetDest':{}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
         {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'buildhistory' : False}},
         {'BuildImages': {'images': 'meta-toolchain-gmae'}},
+        {'BuildImages': {'images': 'core-image-sato -c populate_sdk'}},
         {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'x86-64', 'distro': 'poky', 'buildhistory' : False}},
         {'BuildImages': {'images': 'meta-toolchain-gmae'}},
+        {'BuildImages': {'images': 'core-image-sato -c populate_sdk'}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}},
         {'PublishLayerTarballs':{}},
         {'PublishArtifacts': {'artifacts': ['qemux86', 'atom-pc', 'ipk', 'rpm', 'deb', 'toolchain']}}]
-- 
1.7.10.4


