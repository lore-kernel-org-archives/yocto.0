Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04342E01423
	for <yocto@yoctoproject.org>; Sun, 10 Jun 2012 20:42:42 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 10 Jun 2012 20:42:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="178198842"
Received: from unknown (HELO localhost) ([10.255.12.138])
	by fmsmga002.fm.intel.com with ESMTP; 10 Jun 2012 20:42:42 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	dvhart@linux.intel.com
Date: Sun, 10 Jun 2012 22:42:23 -0500
Message-Id: <7707756e3ac1c9a4ed016e2431f084f6d36b643e.1339385977.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <970e0c0dd1b0701a305da31d3969231bca563de1.1339385977.git.tom.zanussi@intel.com>
References: <970e0c0dd1b0701a305da31d3969231bca563de1.1339385977.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1339385977.git.tom.zanussi@intel.com>
References: <cover.1339385977.git.tom.zanussi@intel.com>
Subject: [PATCH 2/6] meta-crownbay: remove linux-yocto-2.6.37 .bbappend
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
X-List-Received-Date: Mon, 11 Jun 2012 03:42:43 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

linux-yocto-2.6.37.bb was removed from oe-core, so remove the
corresponding .bbappend from meta-crownbay.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../linux/linux-yocto_2.6.37.bbappend              |   15 ---------------
 1 files changed, 0 insertions(+), 15 deletions(-)
 delete mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_2.6.37.bbappend

diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto_2.6.37.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
deleted file mode 100644
index 743129b..0000000
--- a/meta-crownbay/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
+++ /dev/null
@@ -1,15 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-COMPATIBLE_MACHINE_crownbay = "crownbay"
-KMACHINE_crownbay  = "yocto/standard/crownbay"
-KERNEL_FEATURES_append_crownbay += " cfg/smp.scc"
-
-COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
-KMACHINE_crownbay-noemgd  = "yocto/standard/crownbay"
-KERNEL_FEATURES_append_crownbay-noemgd += " cfg/smp.scc"
-
-SRCREV_machine_pn-linux-yocto_crownbay ?= "372c0ab135978bd8ca3a77c88816a25c5ed8f303"
-SRCREV_meta_pn-linux-yocto_crownbay ?= "d5d3c6480d61f83503ccef7fbcd765f7aca8b71b"
-
-SRCREV_machine_pn-linux-yocto_crownbay-noemgd ?= "372c0ab135978bd8ca3a77c88816a25c5ed8f303"
-SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?= "d5d3c6480d61f83503ccef7fbcd765f7aca8b71b"
-- 
1.7.0.4


