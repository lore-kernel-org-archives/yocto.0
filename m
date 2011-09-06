Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6635E011D3
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2011 10:35:01 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 06 Sep 2011 10:35:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="45558549"
Received: from unknown (HELO localhost) ([10.255.14.186])
	by orsmga002.jf.intel.com with ESMTP; 06 Sep 2011 10:35:01 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  6 Sep 2011 10:34:58 -0700
Message-Id: <993552dd9e3bbfadcd3239f3b3bbfe2a3666451e.1315330406.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6
In-Reply-To: <cover.1315330406.git.dvhart@linux.intel.com>
References: <cover.1315330406.git.dvhart@linux.intel.com>
Subject: [PATCH 1/2] n450: update linux-yocto SRCREV to 3.0.4
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
X-List-Received-Date: Tue, 06 Sep 2011 17:35:02 -0000

Update n450 to use the 3.0.4 commit from the atom-pc branch.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-n450/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-n450/recipes-kernel/linux/linux-yocto_3.0.bbappend
index c1b69aa..5fd298e 100644
--- a/meta-n450/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-n450/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -5,5 +5,5 @@ KMACHINE_n450  = "yocto/standard/common-pc/atom-pc"
 # The n450 is a single core hypterthreaded CPU
 KERNEL_FEATURES_append_n450 += " cfg/smp.scc"
 
-SRCREV_machine_pn-linux-yocto_n450 = "c54453332efbd86c2ea3caa64e908b39cfac1e76"
+SRCREV_machine_pn-linux-yocto_n450 = "1e18e44adbe79b846e382370eb29bc4b8cd5a1a0"
 #SRCREV_meta_pn-linux-yocto_n450 ?= XXXX
-- 
1.7.6


