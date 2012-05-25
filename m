Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5407CE01412
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 14:50:44 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 25 May 2012 14:50:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="147944702"
Received: from unknown (HELO localhost) ([10.255.12.14])
	by azsmga001.ch.intel.com with ESMTP; 25 May 2012 14:50:43 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 25 May 2012 16:50:45 -0500
Message-Id: <e929ac6571c32ceb1eb11c6116a696d1576f555d.1337981721.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337981719.git.tom.zanussi@intel.com>
References: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337981719.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1337981713.git.tom.zanussi@intel.com>
References: <cover.1337981713.git.tom.zanussi@intel.com>
Subject: [PATCH 20/22] meta-chiefriver: use the mei kernel feature
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
X-List-Received-Date: Fri, 25 May 2012 21:50:44 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add AMT/mei support as a kernel feature here instead of in the
linux-yocto metadata - mei support is currently a feature in staging,
and not everyone might want a tainted kernel.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta-chiefriver/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-chiefriver/recipes-kernel/linux/linux-yocto_3.2.bbappend
index 0b707be..083ddfb 100644
--- a/meta-chiefriver/recipes-kernel/linux/linux-yocto_3.2.bbappend
+++ b/meta-chiefriver/recipes-kernel/linux/linux-yocto_3.2.bbappend
@@ -4,5 +4,7 @@ COMPATIBLE_MACHINE_chiefriver = "chiefriver"
 KMACHINE_chiefriver  = "chiefriver"
 KBRANCH_chiefriver  = "standard/default/common-pc-64/chiefriver"
 
+KERNEL_FEATURES_append_chiefriver = " features/amt/mei"
+
 SRCREV_machine_pn-linux-yocto_chiefriver ?= "dbe820c277dfa6cbc249d410e8b083286ec484b7"
 SRCREV_meta_pn-linux-yocto_chiefriver ?= "353d43d340e87996b4be4c5f6ddb4447e050b65c"
-- 
1.7.0.4


