Return-Path: <stefanx.stanacar@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69E4AE00722
	for <yocto@yoctoproject.org>; Wed, 10 Jul 2013 10:52:44 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 10 Jul 2013 10:52:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,1037,1363158000"; d="scan'208";a="367947971"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga002.jf.intel.com with ESMTP; 10 Jul 2013 10:52:44 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.73])
	by linux.intel.com (Postfix) with ESMTP id 1CF666A4093;
	Wed, 10 Jul 2013 10:52:42 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: yocto@yoctoproject.org,
	elizabeth.flanagan@intel.com
Date: Wed, 10 Jul 2013 20:32:37 +0300
Message-Id: <e15d6185251e4c6f163577c7263239936d76e5b3.1373474163.git.stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <cover.1373474163.git.stefanx.stanacar@intel.com>
References: <cover.1373474163.git.stefanx.stanacar@intel.com>
In-Reply-To: <cover.1373474163.git.stefanx.stanacar@intel.com>
References: <cover.1373474163.git.stefanx.stanacar@intel.com>
Subject: [yocto-autobuilder][PATCH 3/3] buildsets: run sanity tests for core-image-sato-sdk images
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
X-List-Received-Date: Wed, 10 Jul 2013 17:52:47 -0000

We build sato-sdk images in these nightly targets
(and now we have a gcc test in the new testimage class),
so for a few more minutes added we should test these images too.

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 buildset-config/nightly-arm.conf    | 2 +-
 buildset-config/nightly-mips.conf   | 2 +-
 buildset-config/nightly-ppc.conf    | 2 +-
 buildset-config/nightly-x86-64.conf | 2 +-
 buildset-config/nightly-x86.conf    | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/buildset-config/nightly-arm.conf b/buildset-config/nightly-arm.conf
index 90e5332..1168596 100644
--- a/buildset-config/nightly-arm.conf
+++ b/buildset-config/nightly-arm.conf
@@ -16,7 +16,7 @@ steps: [{'SetDest':{}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'SyncPersistDB' : {'distro' : 'poky'}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
-        {'RunSanityTests': {'images': 'core-image-minimal core-image-sato'}},
+        {'RunSanityTests': {'images': 'core-image-minimal core-image-sato core-image-sato-sdk'}},
         {'CreateAutoConf': {'machine': 'beagleboard', 'SDKMACHINE' : 'i686', 'distro': 'poky'}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
         {'CreateAutoConf': {'machine': 'qemuarm', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'buildhistory' : False}},
diff --git a/buildset-config/nightly-mips.conf b/buildset-config/nightly-mips.conf
index c5c24d3..14c2c7c 100644
--- a/buildset-config/nightly-mips.conf
+++ b/buildset-config/nightly-mips.conf
@@ -16,7 +16,7 @@ steps: [{'SetDest':{}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'SyncPersistDB' : {'distro' : 'poky'}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
-        {'RunSanityTests': {'images': 'core-image-minimal core-image-sato'}},
+        {'RunSanityTests': {'images': 'core-image-minimal core-image-sato core-image-sato-sdk'}},
         {'CreateAutoConf': {'machine': 'routerstationpro', 'SDKMACHINE' : 'i686', 'distro': 'poky'}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
         {'CreateAutoConf': {'machine': 'qemumips', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'buildhistory' : False}},
diff --git a/buildset-config/nightly-ppc.conf b/buildset-config/nightly-ppc.conf
index c446b30..3b2dd73 100644
--- a/buildset-config/nightly-ppc.conf
+++ b/buildset-config/nightly-ppc.conf
@@ -16,7 +16,7 @@ steps: [{'SetDest':{}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'SyncPersistDB' : {'distro' : 'poky'}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
-        {'RunSanityTests': {'images': 'core-image-minimal core-image-sato'}},
+        {'RunSanityTests': {'images': 'core-image-minimal core-image-sato core-image-sato-sdk'}},
         {'CreateAutoConf': {'machine': 'mpc8315e-rdb', 'SDKMACHINE' : 'i686', 'distro': 'poky'}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
         {'CreateAutoConf': {'machine': 'qemuppc', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'buildhistory' : False}},
diff --git a/buildset-config/nightly-x86-64.conf b/buildset-config/nightly-x86-64.conf
index ab25610..92868f4 100644
--- a/buildset-config/nightly-x86-64.conf
+++ b/buildset-config/nightly-x86-64.conf
@@ -16,7 +16,7 @@ steps: [{'SetDest':{}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'SyncPersistDB' : {'distro' : 'poky'}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
-        {'RunSanityTests': {'images': 'core-image-minimal core-image-sato'}},
+        {'RunSanityTests': {'images': 'core-image-minimal core-image-sato core-image-sato-sdk'}},
         {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'buildhistory' : False}},
         {'BuildImages': {'images': 'meta-toolchain-gmae'}},
         {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'x86-64', 'distro': 'poky', 'buildhistory' : False}},
diff --git a/buildset-config/nightly-x86.conf b/buildset-config/nightly-x86.conf
index 6920cad..f83e995 100644
--- a/buildset-config/nightly-x86.conf
+++ b/buildset-config/nightly-x86.conf
@@ -16,7 +16,7 @@ steps: [{'SetDest':{}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'SyncPersistDB' : {'distro' : 'poky'}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
-        {'RunSanityTests': {'images': 'core-image-minimal core-image-sato'}},
+        {'RunSanityTests': {'images': 'core-image-minimal core-image-sato core-image-sato-sdk'}},
         {'CreateAutoConf': {'machine': 'atom-pc', 'SDKMACHINE' : 'i686', 'distro': 'poky'}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
         {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'buildhistory' : False}},
-- 
1.8.1.4


