Return-Path: <stefanx.stanacar@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E450EE0148D
	for <yocto@yoctoproject.org>; Wed,  8 May 2013 09:02:05 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 08 May 2013 09:01:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,635,1363158000"; d="scan'208";a="299461790"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by azsmga001.ch.intel.com with ESMTP; 08 May 2013 09:01:41 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.149])
	by linux.intel.com (Postfix) with ESMTP id BA1AC6A4083;
	Wed,  8 May 2013 09:01:31 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: elizabeth.flanagan@intel.com,
	 yocto@yoctoproject.org
Date: Wed,  8 May 2013 19:01:46 +0300
Message-Id: <c40f77afaee64188c521a6355750833eb76f7db0.1368028857.git.stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <cover.1368028857.git.stefanx.stanacar@intel.com>
References: <cover.1368028857.git.stefanx.stanacar@intel.com>
In-Reply-To: <cover.1368028857.git.stefanx.stanacar@intel.com>
References: <cover.1368028857.git.stefanx.stanacar@intel.com>
Subject: [yocto-autobuilder][PATCH 1/4] buildsets: add some more builds
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
X-List-Received-Date: Wed, 08 May 2013 16:02:06 -0000

Let's put to good use the new packages option, by adding
some ipk builds to multilib target. Also let's enable sanity
tests for more images.

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 buildset-config/nightly-multilib.conf  | 9 ++++++++-
 buildset-config/nightly-qa-extras.conf | 3 ++-
 buildset-config/nightly-x32.conf       | 4 ++--
 3 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/buildset-config/nightly-multilib.conf b/buildset-config/nightly-multilib.conf
index f9ae8b7..79d0011 100644
--- a/buildset-config/nightly-multilib.conf
+++ b/buildset-config/nightly-multilib.conf
@@ -15,10 +15,17 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'x86_64', 'multilib': True, 'distro': 'poky'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'lib32-core-image-minimal'}},
+        {'RunSanityTests': {'images': 'lib32-core-image-minimal', 'scene' : 'sanity:boot'}},
+        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'x86_64', 'multilib': True, 'distro': 'poky', 'packages' : 'ipk'}},
+        {'BuildImages': {'images': 'lib32-core-image-minimal'}},
+        {'RunSanityTests': {'images': 'lib32-core-image-minimal', 'scene' : 'sanity:boot'}},
         {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'x86_64', 'multilib': 'lib32', 'distro': 'poky', 'atextappend' : '\nIMAGE_INSTALL_append = " lib32-connman-gnome"\n'}},
         {'BuildImages': {'images': 'core-image-sato'}},
+        {'RunSanityTests': {'images': 'core-image-sato'}},
+        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'x86_64', 'multilib': 'lib32', 'distro': 'poky', 'packages' : 'ipk', 'atextappend' : '\nIMAGE_INSTALL_append = " lib32-connman-gnome"\n'}},
+        {'BuildImages': {'images': 'core-image-sato'}},
+        {'RunSanityTests': {'images': 'core-image-sato'}},
         {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'i686', 'multilib': 'lib64', 'distro': 'poky'}},
         {'BuildImages': {'images': 'lib64-core-image-sato lib64-core-image-sato-sdk lib64-core-image-lsb-sdk'}},
         {'PublishLayerTarballs':{}},
         {'PublishArtifacts': {'artifacts': ['qemux86-64']}}]
-
diff --git a/buildset-config/nightly-qa-extras.conf b/buildset-config/nightly-qa-extras.conf
index 4098f53..c3af24c 100644
--- a/buildset-config/nightly-qa-extras.conf
+++ b/buildset-config/nightly-qa-extras.conf
@@ -13,4 +13,5 @@ steps: [{'SetDest':{}},
         {'BuildImages': {'images': 'core-image-sato'}},
         {'RunSanityTests': {'images': 'core-image-sato'}},
         {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'atextappend' : '\nEXTRA_IMAGE_FEATURES = "debug-tweaks read-only-rootfs"\n'}},
-        {'BuildImages': {'images': 'core-image-sato'}}]
+        {'BuildImages': {'images': 'core-image-sato'}},
+        {'RunSanityTests': {'images': 'core-image-sato', 'scene' : 'sanity:boot sanity:ssh sanity:dmesg'}}]
diff --git a/buildset-config/nightly-x32.conf b/buildset-config/nightly-x32.conf
index b0b5b4f..636b1c3 100644
--- a/buildset-config/nightly-x32.conf
+++ b/buildset-config/nightly-x32.conf
@@ -15,5 +15,5 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'x86_64', 'x32': True, 'distro': 'poky'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'PublishLayerTarballs':{}},
-        {'BuildImages': {'images': 'core-image-minimal core-image-sato'}}]
-
+        {'BuildImages': {'images': 'core-image-minimal core-image-sato'}},
+        {'RunSanityTests': {'images': 'core-image-minimal core-image-sato'}}]
-- 
1.8.1.4


