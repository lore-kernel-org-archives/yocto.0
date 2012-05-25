Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBF3EE0143F
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 14:50:45 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 25 May 2012 14:50:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="148569262"
Received: from unknown (HELO localhost) ([10.255.12.14])
	by orsmga002.jf.intel.com with ESMTP; 25 May 2012 14:50:45 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 25 May 2012 16:50:46 -0500
Message-Id: <bce359cdb51edb73e12d95f8687b8ca8e3f371e6.1337981721.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337981719.git.tom.zanussi@intel.com>
References: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337981719.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1337981713.git.tom.zanussi@intel.com>
References: <cover.1337981713.git.tom.zanussi@intel.com>
Subject: [PATCH 21/22] meta-sugarbay: use rc6 kernel feature
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
X-List-Received-Date: Fri, 25 May 2012 21:50:46 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

According to the Intel graphics guys and Ubuntu, it's ok to now have
rc6 enabled by default (as long as rc6p is not also enabled).

Accordingly, we'll use the rc6 feature that enables it.  If there are
problems, it can be easily disabled at build-time by removing tmp/rc6
from KERNEL_FEATURES, or can be disbled at run-time using the kernel
parameter i915_enable_rc6 = 0.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
index f1cfe21..6a47961 100644
--- a/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
+++ b/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
@@ -7,3 +7,5 @@ KBRANCH_sugarbay  = "standard/default/common-pc-64/sugarbay"
 
 SRCREV_machine_pn-linux-yocto_sugarbay ?= "0fe6d5d97c0a8d9e47716cb0da619deca07197e3"
 SRCREV_meta_pn-linux-yocto_sugarbay ?= "49f931bc294d5b6be60502bbd448cff5aa766235"
+
+KERNEL_FEATURES_append_sugarbay = " features/tmp/rc6"
-- 
1.7.0.4


