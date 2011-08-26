Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93C51E0123E
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2011 21:00:00 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 25 Aug 2011 21:00:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,283,1312182000"; d="scan'208";a="11228909"
Received: from unknown (HELO localhost) ([10.255.13.254])
	by AZSMGA002.ch.intel.com with ESMTP; 25 Aug 2011 20:59:59 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 25 Aug 2011 22:59:06 -0500
Message-Id: <3f002cdb9a6bc991fead405ed45338c42b93108d.1314330614.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <d5130815aff9d230c44ed0be60ca06bb1cb4225a.1314330614.git.tom.zanussi@intel.com>
References: <d5130815aff9d230c44ed0be60ca06bb1cb4225a.1314330614.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1314330614.git.tom.zanussi@intel.com>
References: <cover.1314330614.git.tom.zanussi@intel.com>
Subject: [PATCH 08/10] meta-intel: update meta-crownbay kernel SRCREVs
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
X-List-Received-Date: Fri, 26 Aug 2011 04:00:00 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
index c9aef72..9f63b7d 100644
--- a/meta-crownbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -8,8 +8,8 @@ COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
 KMACHINE_crownbay-noemgd  = "yocto/standard/crownbay"
 KERNEL_FEATURES_append_crownbay-noemgd += " cfg/smp.scc"
 
-SRCREV_machine_pn-linux-yocto_crownbay ?= "9a259cf4f6d404db2820642df755a295bbfb7fe7"
-SRCREV_meta_pn-linux-yocto_crownbay ?= "fe8eac15e144a35a716cd32c9d2b296ecd5202ac"
+SRCREV_machine_pn-linux-yocto_crownbay ?= "6b4b9acde5fb0ff66ae58fa98274bfe631501499"
+SRCREV_meta_pn-linux-yocto_crownbay ?= "5b535279e61197cb194bb2dfceb8b7a04128387c"
 
-SRCREV_machine_pn-linux-yocto_crownbay-noemgd ?= "9a259cf4f6d404db2820642df755a295bbfb7fe7"
-SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?= "fe8eac15e144a35a716cd32c9d2b296ecd5202ac"
+SRCREV_machine_pn-linux-yocto_crownbay-noemgd ?= "6b4b9acde5fb0ff66ae58fa98274bfe631501499"
+SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?= "5b535279e61197cb194bb2dfceb8b7a04128387c"
-- 
1.7.0.4


