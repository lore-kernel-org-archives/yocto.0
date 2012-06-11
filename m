Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CB38E013D4
	for <yocto@yoctoproject.org>; Sun, 10 Jun 2012 20:42:45 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 10 Jun 2012 20:42:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="110513017"
Received: from unknown (HELO localhost) ([10.255.12.138])
	by AZSMGA002.ch.intel.com with ESMTP; 10 Jun 2012 20:42:45 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	dvhart@linux.intel.com
Date: Sun, 10 Jun 2012 22:42:24 -0500
Message-Id: <eae83667fa6af406713dd725e4739b96378b7590.1339385977.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <970e0c0dd1b0701a305da31d3969231bca563de1.1339385977.git.tom.zanussi@intel.com>
References: <970e0c0dd1b0701a305da31d3969231bca563de1.1339385977.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1339385977.git.tom.zanussi@intel.com>
References: <cover.1339385977.git.tom.zanussi@intel.com>
Subject: [PATCH 3/6] meta-emenlow: remove linux-yocto-2.6.37 .bbappend
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
X-List-Received-Date: Mon, 11 Jun 2012 03:42:46 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

linux-yocto-2.6.37.bb was removed from oe-core, so remove the
corresponding .bbappend from meta-emenlow.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../linux/linux-yocto_2.6.37.bbappend              |    6 ------
 1 files changed, 0 insertions(+), 6 deletions(-)
 delete mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto_2.6.37.bbappend

diff --git a/meta-emenlow/recipes-kernel/linux/linux-yocto_2.6.37.bbappend b/meta-emenlow/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
deleted file mode 100644
index ab6616e..0000000
--- a/meta-emenlow/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
+++ /dev/null
@@ -1,6 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-COMPATIBLE_MACHINE_emenlow = "emenlow"
-KMACHINE_emenlow  = "yocto/standard/emenlow"
-
-SRCREV_machine_pn-linux-yocto_emenlow = "1afee6bc0496b7d528d97d7bc1585f3af7311abb"
-SRCREV_meta_pn-linux-yocto_emenlow ?= "aeea99683c7283f1f3320bf2ee7085ee252d4e7e"
-- 
1.7.0.4


