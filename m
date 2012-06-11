Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D0CFE01453
	for <yocto@yoctoproject.org>; Sun, 10 Jun 2012 20:42:52 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 10 Jun 2012 20:42:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="155971368"
Received: from unknown (HELO localhost) ([10.255.12.138])
	by orsmga002.jf.intel.com with ESMTP; 10 Jun 2012 20:42:51 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	dvhart@linux.intel.com
Date: Sun, 10 Jun 2012 22:42:26 -0500
Message-Id: <7aa45d756dd6912ef7329a5aca12c99ec440810f.1339385977.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <970e0c0dd1b0701a305da31d3969231bca563de1.1339385977.git.tom.zanussi@intel.com>
References: <970e0c0dd1b0701a305da31d3969231bca563de1.1339385977.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1339385977.git.tom.zanussi@intel.com>
References: <cover.1339385977.git.tom.zanussi@intel.com>
Subject: [PATCH 5/6] meta-jasperforest: remove linux-yocto-2.6.37 .bbappend
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
X-List-Received-Date: Mon, 11 Jun 2012 03:42:52 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

linux-yocto-2.6.37.bb was removed from oe-core, so remove the
corresponding .bbappend from meta-jasperforest.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../linux/linux-yocto_2.6.37.bbappend              |    8 --------
 1 files changed, 0 insertions(+), 8 deletions(-)
 delete mode 100644 meta-jasperforest/recipes-kernel/linux/linux-yocto_2.6.37.bbappend

diff --git a/meta-jasperforest/recipes-kernel/linux/linux-yocto_2.6.37.bbappend b/meta-jasperforest/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
deleted file mode 100644
index 42af365..0000000
--- a/meta-jasperforest/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
+++ /dev/null
@@ -1,8 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-COMPATIBLE_MACHINE_jasperforest = "jasperforest"
-
-KMACHINE_jasperforest  = "yocto/standard/common-pc-64/jasperforest"
-
-SRCREV_machine_pn-linux-yocto_jasperforest ?= "8cc4724f41f9082e48e5a846a29f6f6356c16b61"
-SRCREV_meta_pn-linux-yocto_jasperforest ?= "d5d3c6480d61f83503ccef7fbcd765f7aca8b71b"
-- 
1.7.0.4


