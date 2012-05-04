Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED097E00723
	for <yocto@yoctoproject.org>; Fri,  4 May 2012 11:57:05 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 04 May 2012 11:57:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="139016223"
Received: from rp614v4.sc.intel.com (HELO localhost) ([143.183.188.112])
	by azsmga001.ch.intel.com with ESMTP; 04 May 2012 11:57:05 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Fri,  4 May 2012 11:55:52 -0700
Message-Id: <d5e73c50df5a553c5c4b30be5a523438c805681e.1336157346.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1336157346.git.kishore.k.bodke@intel.com>
References: <cover.1336157346.git.kishore.k.bodke@intel.com>
Subject: [PATCH 1/1] [meta-intel] Cedartrail: Update SRCREV of yocto/pvr kernel branch
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 04 May 2012 18:57:06 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Yocto/pvr branch has been updated with new kernel patches.
So update the SRCREV for the same.

Add SRC_URI to build Cedartrail with nopvr version.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 0a4095d..68ff3ea 100644
--- a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -2,6 +2,8 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 SRC_URI = "git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;bareclone=1;branch=${KBRANCH},meta,yocto/pvr;name=machine,meta,pvr"
 
+SRC_URI_cedartrail-nopvr = "git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
+
 COMPATIBLE_MACHINE_cedartrail = "cedartrail"
 KMACHINE_cedartrail  = "yocto/standard/cedartrail"
 KERNEL_FEATURES_append_cedartrail += " cfg/smp.scc"
@@ -15,7 +17,7 @@ KERNEL_FEATURES_append_cedartrail-nopvr += " cfg/smp.scc"
 
 SRCREV_machine_pn-linux-yocto_cedartrail ?= "81fd8c307997aff37916828dc8b4ef72f5d35a94"
 SRCREV_meta_pn-linux-yocto_cedartrail ?= "a4ac64fe873f08ef718e2849b88914725dc99c1c"
-SRCREV_pvr_pn-linux-yocto_cedartrail ?= "9d0264753e869d21ec4d9a6dd5558de73d64f94d"
+SRCREV_pvr_pn-linux-yocto_cedartrail ?= "997f5644664b31ebefd6e16c451c4a3729eb378a"
 
 SRCREV_machine_pn-linux-yocto_cedartrail-nopvr ?= "81fd8c307997aff37916828dc8b4ef72f5d35a94"
 SRCREV_meta_pn-linux-yocto_cedartrail-nopvr ?= "a4ac64fe873f08ef718e2849b88914725dc99c1c"
-- 
1.7.9.5


