Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66511E00736
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2011 18:01:33 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 30 Nov 2011 18:01:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,275,1320652800"; d="scan'208";a="42734413"
Received: from unknown (HELO localhost) ([10.255.12.29])
	by AZSMGA002.ch.intel.com with ESMTP; 30 Nov 2011 18:01:31 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Wed, 30 Nov 2011 20:01:24 -0600
Message-Id: <8e4ffa8dc57e0d539b140784270d003451974b4b.1322704583.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <8ae139fe7a08de13a8b0fd572c3a6efabf3afba2.1322704583.git.tom.zanussi@intel.com>
References: <8ae139fe7a08de13a8b0fd572c3a6efabf3afba2.1322704583.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1322704583.git.tom.zanussi@intel.com>
References: <cover.1322704583.git.tom.zanussi@intel.com>
Subject: [PATCH 5/6] meta-jasperforest: remove 2.6.34 .bbappend
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
X-List-Received-Date: Thu, 01 Dec 2011 02:01:33 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The linux-2.6.34 recipe was removed, so the .append needs to be
removed as well.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../linux/linux-yocto_2.6.34.bbappend              |    4 ----
 1 files changed, 0 insertions(+), 4 deletions(-)
 delete mode 100644 meta-jasperforest/recipes-kernel/linux/linux-yocto_2.6.34.bbappend

diff --git a/meta-jasperforest/recipes-kernel/linux/linux-yocto_2.6.34.bbappend b/meta-jasperforest/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
deleted file mode 100644
index 0a89413..0000000
--- a/meta-jasperforest/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
+++ /dev/null
@@ -1,4 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-COMPATIBLE_MACHINE_jasperforest = "jasperforest"
-KMACHINE_jasperforest  = "jasperforest"
-- 
1.7.0.4


