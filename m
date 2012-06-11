Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70E73E0144E
	for <yocto@yoctoproject.org>; Sun, 10 Jun 2012 20:42:59 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 10 Jun 2012 20:42:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="178198908"
Received: from unknown (HELO localhost) ([10.255.12.138])
	by fmsmga002.fm.intel.com with ESMTP; 10 Jun 2012 20:42:58 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	dvhart@linux.intel.com
Date: Sun, 10 Jun 2012 22:42:27 -0500
Message-Id: <a84e19b6de964a550804da7ab4bf55e08dc1c7a5.1339385977.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <970e0c0dd1b0701a305da31d3969231bca563de1.1339385977.git.tom.zanussi@intel.com>
References: <970e0c0dd1b0701a305da31d3969231bca563de1.1339385977.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1339385977.git.tom.zanussi@intel.com>
References: <cover.1339385977.git.tom.zanussi@intel.com>
Subject: [PATCH 6/6] meta-n450: remove linux-yocto-2.6.37 .bbappend
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
X-List-Received-Date: Mon, 11 Jun 2012 03:42:59 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

linux-yocto-2.6.37.bb was removed from oe-core, so remove the
corresponding .bbappend from meta-n450.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../linux/linux-yocto_2.6.37.bbappend              |   10 ----------
 1 files changed, 0 insertions(+), 10 deletions(-)
 delete mode 100644 meta-n450/recipes-kernel/linux/linux-yocto_2.6.37.bbappend

diff --git a/meta-n450/recipes-kernel/linux/linux-yocto_2.6.37.bbappend b/meta-n450/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
deleted file mode 100644
index d52a90a..0000000
--- a/meta-n450/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
+++ /dev/null
@@ -1,10 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-KMACHINE_n450 = "yocto/standard/common-pc/atom-pc"
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


