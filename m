Return-Path: <stefanx.stanacar@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C0F2E00C56
	for <yocto@yoctoproject.org>; Tue,  1 Apr 2014 03:46:46 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 01 Apr 2014 03:46:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,771,1389772800"; d="scan'208";a="504240181"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga001.fm.intel.com with ESMTP; 01 Apr 2014 03:46:46 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.160])
	by linux.intel.com (Postfix) with ESMTP id 809F86A4083;
	Tue,  1 Apr 2014 03:46:30 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  1 Apr 2014 13:47:04 +0300
Message-Id: <1396349224-14532-3-git-send-email-stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.9.0
Subject: [yocto-autobuilder][PATCH] nightly-multilib: don't build lsb image
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
X-List-Received-Date: Tue, 01 Apr 2014 10:46:47 -0000

We shouldn't build an lsb image here as this isn't a
poky-lsb build.
There is a pending patch on oe-core that will break this
build if we don't remove it and it doesn't buys us too much test
coverage anyway.

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 buildset-config.master/nightly-multilib.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/buildset-config.master/nightly-multilib.conf b/buildset-config.master/nightly-multilib.conf
index b5dfec3..49e6ea7 100644
--- a/buildset-config.master/nightly-multilib.conf
+++ b/buildset-config.master/nightly-multilib.conf
@@ -25,4 +25,4 @@ steps: [{'SetDest':{}},
         {'BuildImages': {'images': 'core-image-sato'}},
         {'RunSanityTests': {'images': 'core-image-sato', 'suites' : 'ping ssh connman xorg multilib dmesg auto'}},
         {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'i686', 'multilib': 'lib64', 'distro': 'poky'}},
-        {'BuildImages': {'images': 'lib64-core-image-sato lib64-core-image-sato-sdk lib64-core-image-lsb-sdk'}}]
+        {'BuildImages': {'images': 'lib64-core-image-sato lib64-core-image-sato-sdk'}}]
-- 
1.9.0


