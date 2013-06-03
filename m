Return-Path: <stefanx.stanacar@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A35CE0155A
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2013 07:52:03 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 03 Jun 2013 07:51:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,793,1363158000"; d="scan'208";a="250030130"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by AZSMGA002.ch.intel.com with ESMTP; 03 Jun 2013 07:51:53 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.73])
	by linux.intel.com (Postfix) with ESMTP id A36946A4092;
	Mon,  3 Jun 2013 07:51:40 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: yocto@yoctoproject.org,
	elizabeth.flanagan@intel.com
Date: Mon,  3 Jun 2013 17:52:16 +0300
Message-Id: <1370271136-28206-1-git-send-email-stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
Subject: [yocto-autobuilder][PATCH] nightly-qa-extras: fix timeout arg
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
X-List-Received-Date: Mon, 03 Jun 2013 14:52:03 -0000

This needs to be an integer, not a string.
Fixes:
http://autobuilder.yoctoproject.org:8011/builders/nightly-qa-extras/builds/32/steps/Running%20Sanity%20Tests/logs/stdio

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 buildset-config/nightly-qa-extras.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/buildset-config/nightly-qa-extras.conf b/buildset-config/nightly-qa-extras.conf
index 1bdb0f0..23c955c 100644
--- a/buildset-config/nightly-qa-extras.conf
+++ b/buildset-config/nightly-qa-extras.conf
@@ -11,7 +11,7 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'atextappend' : '\nROOT_HOME = "/root"\nIMAGE_FSTYPES = "btrfs"\nKERNEL_FEATURES_append = " cfg/fs/btrfs"\n'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'core-image-sato'}},
-        {'RunSanityTests': {'images': 'core-image-sato', 'timeout' : '2400'}},
+        {'RunSanityTests': {'images': 'core-image-sato', 'timeout' : 2400}},
         {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'atextappend' : '\nIMAGE_FEATURES_append = " read-only-rootfs"\n'}},
         {'BuildImages': {'images': 'core-image-sato'}},
         {'RunSanityTests': {'images': 'core-image-sato', 'scene' : 'sanity:boot sanity:ssh'}}]
-- 
1.8.1.4


