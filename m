Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F14C9E0123F
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2011 16:31:32 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 07 Dec 2011 16:31:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="45019217"
Received: from unknown (HELO localhost) ([10.255.12.239])
	by AZSMGA002.ch.intel.com with ESMTP; 07 Dec 2011 16:31:32 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>, Tom Zanussi <tom.zanussi@intel.com>
Date: Wed,  7 Dec 2011 16:31:34 -0800
Message-Id: <3909001535859169b30298735ea64c48ceec4df6.1323303673.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
In-Reply-To: <cover.1323303673.git.dvhart@linux.intel.com>
References: <cover.1323303673.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1323303673.git.dvhart@linux.intel.com>
References: <cover.1323303673.git.dvhart@linux.intel.com>
Subject: [PATCH 6/7] fri2: Add efi-ext to KERNEL_FEATURES
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
X-List-Received-Date: Thu, 08 Dec 2011 00:31:33 -0000

The fri2 can boot via EFI or legacy PCBIOS. Add support for EFI.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 34395a7..71d6c54 100644
--- a/meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -2,11 +2,11 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 COMPATIBLE_MACHINE_fri2 = "fri2"
 KMACHINE_fri2  = "yocto/standard/fri2"
-KERNEL_FEATURES_append_fri2 += " cfg/smp.scc"
+KERNEL_FEATURES_append_fri2 += " cfg/smp.scc cfg/efi-ext.scc"
 
 COMPATIBLE_MACHINE_fri2-noemgd = "fri2-noemgd"
 KMACHINE_fri2-noemgd  = "yocto/standard/fri2"
-KERNEL_FEATURES_append_fri2-noemgd += " cfg/smp.scc"
+KERNEL_FEATURES_append_fri2-noemgd += " cfg/smp.scc cfg/efi-ext.scc"
 
 SRCREV_machine_pn-linux-yocto_fri2 ?= "20507c447f92907a6df53bc4f03655f050367ec7"
 SRCREV_meta_pn-linux-yocto_fri2 ?= "67ce7623909cef63927fd145026aaf371cf4abf1"
-- 
1.7.6.4


