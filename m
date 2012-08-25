Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0839E002AB
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 21:37:33 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 24 Aug 2012 21:37:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,309,1344236400"; d="scan'208";a="211122783"
Received: from unknown (HELO localhost) ([10.255.12.244])
	by fmsmga001.fm.intel.com with ESMTP; 24 Aug 2012 21:37:31 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 24 Aug 2012 23:36:47 -0500
Message-Id: <c2e8586309796e7a86dc8d461418586b51c31d0d.1345868069.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <a4c4b0f81b4facca97c9183e7df3664030464e92.1345868069.git.tom.zanussi@intel.com>
References: <a4c4b0f81b4facca97c9183e7df3664030464e92.1345868069.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1345868069.git.tom.zanussi@intel.com>
References: <cover.1345868069.git.tom.zanussi@intel.com>
Subject: [PATCH 4/4] crownbay: fix KBRANCH
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
X-List-Received-Date: Sat, 25 Aug 2012 04:37:33 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

KBRANCH_crownbay is set to standard/default/crownbay, which isn't even
a 3.4 branch.

Set it to standard/crownbay, which is.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend
index 4f9dd70..a384ca0 100644
--- a/meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend
+++ b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -2,7 +2,7 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 COMPATIBLE_MACHINE_crownbay = "crownbay"
 KMACHINE_crownbay  = "crownbay"
-KBRANCH_crownbay  = "standard/default/crownbay"
+KBRANCH_crownbay  = "standard/crownbay"
 
 COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
 KMACHINE_crownbay-noemgd  = "crownbay"
-- 
1.7.11.4


