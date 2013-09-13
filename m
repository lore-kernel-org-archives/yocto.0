Return-Path: <stefanx.stanacar@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F9FFE01565
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2013 04:35:58 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 13 Sep 2013 04:35:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,897,1371106800"; d="scan'208";a="359991985"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by azsmga001.ch.intel.com with ESMTP; 13 Sep 2013 04:35:54 -0700
Received: from thunderbird.rb.intel.com (thunderbird.rb.intel.com
	[10.237.105.57])
	by linux.intel.com (Postfix) with ESMTP id 0E0546A4092;
	Fri, 13 Sep 2013 04:35:50 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: elizabeth.flanagan@intel.com,
	yocto@yoctoproject.org
Date: Fri, 13 Sep 2013 14:34:51 +0300
Message-Id: <1379072091-28016-1-git-send-email-stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
Subject: [yocto-autobuilder][PATCH] buildset-config/nightly-qa-extras: make it simpler and usable
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
X-List-Received-Date: Fri, 13 Sep 2013 11:35:59 -0000

This target was missing from the nightly target for some reason.
Also, it wasn't up to date with latest changes. I've simplified it a bit,
so it has only two builds of core-image-minimal with features that are known to work.
And these being core-image-minimal the sanity tests are just boot+ping.

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 buildset-config/nightly-qa-extras.conf | 12 ++++++------
 buildset-config/nightly.conf           |  2 +-
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/buildset-config/nightly-qa-extras.conf b/buildset-config/nightly-qa-extras.conf
index 8fddbc6..3239fda 100644
--- a/buildset-config/nightly-qa-extras.conf
+++ b/buildset-config/nightly-qa-extras.conf
@@ -8,10 +8,10 @@ steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
         {'RunPreamble': {}},
         {'GetDistroVersion' : {'distro': 'poky'}},
-        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'atextappend' : '\nROOT_HOME = "/root"\nIMAGE_FSTYPES = "btrfs"\nKERNEL_FEATURES_append = " cfg/fs/btrfs"\n'}},
-        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
-        {'BuildImages': {'images': 'core-image-sato'}},
-        {'RunSanityTests': {'images': 'core-image-sato', 'timeout' : 2400}},
         {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'atextappend' : '\nIMAGE_FEATURES_append = " read-only-rootfs"\n'}},
-        {'BuildImages': {'images': 'core-image-sato'}},
-        {'RunSanityTests': {'images': 'core-image-sato', 'scene' : 'sanity:boot sanity:ssh'}}]
+        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
+        {'BuildImages': {'images': 'core-image-minimal'}},
+        {'RunSanityTests': {'images': 'core-image-minimal'}},
+        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'atextappend' : '\nROOT_HOME = "/root"\n'}},
+        {'BuildImages': {'images': 'core-image-minimal'}},
+        {'RunSanityTests': {'images': 'core-image-minimal'}}]
diff --git a/buildset-config/nightly.conf b/buildset-config/nightly.conf
index 0c6615a..5641772 100644
--- a/buildset-config/nightly.conf
+++ b/buildset-config/nightly.conf
@@ -71,7 +71,7 @@ steps: [{'SetDest':{}},
                               'nightly-x86-64': {}, 'nightly-x86-64-lsb': {},
                               'nightly-x86': {}, 'nightly-x86-lsb': {},
                               'poky-tiny': {}, 'buildtools': {},
-                              'nightly-qa-systemd': {}}}},
+                              'nightly-qa-systemd': {}, 'nightly-qa-extras': {}}}},
         {'PrepPkgIndex' : {}},
         {'BuildImages': {'images': 'package-index'}},
         {'CreateAutoConf': {'machine': 'atom-pc', 'SDKMACHINE' : 'x86_64', 
-- 
1.8.1.4


