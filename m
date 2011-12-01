Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3696E00738
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2011 18:01:35 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 30 Nov 2011 18:01:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="81561876"
Received: from unknown (HELO localhost) ([10.255.12.29])
	by orsmga001.jf.intel.com with ESMTP; 30 Nov 2011 18:01:34 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Wed, 30 Nov 2011 20:01:25 -0600
Message-Id: <ebf7d8aaabaa2270afa9936b7a70e7df9640a194.1322704583.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <8ae139fe7a08de13a8b0fd572c3a6efabf3afba2.1322704583.git.tom.zanussi@intel.com>
References: <8ae139fe7a08de13a8b0fd572c3a6efabf3afba2.1322704583.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1322704583.git.tom.zanussi@intel.com>
References: <cover.1322704583.git.tom.zanussi@intel.com>
Subject: [PATCH 6/6] meta-n450: remove 2.6.34 .bbappend
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
X-List-Received-Date: Thu, 01 Dec 2011 02:01:35 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The linux-2.6.34 recipe was removed, so the .append needs to be
removed as well.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../linux/linux-yocto_2.6.34.bbappend              |   10 ----------
 1 files changed, 0 insertions(+), 10 deletions(-)
 delete mode 100644 meta-n450/recipes-kernel/linux/linux-yocto_2.6.34.bbappend

diff --git a/meta-n450/recipes-kernel/linux/linux-yocto_2.6.34.bbappend b/meta-n450/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
deleted file mode 100644
index 18d4999..0000000
--- a/meta-n450/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
+++ /dev/null
@@ -1,10 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-KMACHINE_n450 = "atom-pc"
-COMPATIBLE_MACHINE_n450 = "n450"
-
-# The n450 is a single core hypterthreaded CPU
-KERNEL_FEATURES_append_n450 += " cfg/smp.scc"
-
-# We use the atom-pc machine SRCREV and the default meta SRCREV
-#SRCREV_machine_pn-linux-yocto-stable_n450 = ""
-#SRCREV_meta_pn-linux-yocto-stable_n450 ?= ""
-- 
1.7.0.4


