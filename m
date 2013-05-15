Return-Path: <stefanx.stanacar@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FECEE013A3
	for <yocto@yoctoproject.org>; Wed, 15 May 2013 03:32:33 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 15 May 2013 03:32:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,677,1363158000"; d="scan'208";a="313921810"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga001.jf.intel.com with ESMTP; 15 May 2013 03:32:32 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.149])
	by linux.intel.com (Postfix) with ESMTP id D27FA6A4083;
	Wed, 15 May 2013 03:32:21 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: yocto@yoctoproject.org,
	elizabeth.flanagan@intel.com
Date: Wed, 15 May 2013 13:32:42 +0300
Message-Id: <1368613962-22807-1-git-send-email-stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
Subject: [yocto-autobuilder][PATCH] nightly-qa-extras: fix image config options
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
X-List-Received-Date: Wed, 15 May 2013 10:32:33 -0000

Use IMAGE_FEATURES_append instead of EXTRA_IMAGE_FEATURES
because it gets overwritten by local.conf.
Remove the dmesg sanity as it requires copying a file which
won't work on a r/o image.

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 buildset-config/nightly-qa-extras.conf | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/buildset-config/nightly-qa-extras.conf b/buildset-config/nightly-qa-extras.conf
index c3af24c..1846764 100644
--- a/buildset-config/nightly-qa-extras.conf
+++ b/buildset-config/nightly-qa-extras.conf
@@ -12,6 +12,6 @@ steps: [{'SetDest':{}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'core-image-sato'}},
         {'RunSanityTests': {'images': 'core-image-sato'}},
-        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'atextappend' : '\nEXTRA_IMAGE_FEATURES = "debug-tweaks read-only-rootfs"\n'}},
+        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'atextappend' : '\nIMAGE_FEATURES_append = " read-only-rootfs"\n'}},
         {'BuildImages': {'images': 'core-image-sato'}},
-        {'RunSanityTests': {'images': 'core-image-sato', 'scene' : 'sanity:boot sanity:ssh sanity:dmesg'}}]
+        {'RunSanityTests': {'images': 'core-image-sato', 'scene' : 'sanity:boot sanity:ssh'}}]
-- 
1.8.1.4


