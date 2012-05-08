Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97AF5E013EC
	for <yocto@yoctoproject.org>; Tue,  8 May 2012 14:39:02 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 08 May 2012 14:39:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="140561032"
Received: from unknown (HELO localhost) ([10.255.12.248])
	by azsmga001.ch.intel.com with ESMTP; 08 May 2012 14:39:01 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue,  8 May 2012 16:39:05 -0500
Message-Id: <33e3d4cdfeeea389603953bcff8dd9557e6bc574.1336510378.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <d1f334823a4ae92e6304acf74d3f9d1d56f5518a.1336510378.git.tom.zanussi@intel.com>
References: <d1f334823a4ae92e6304acf74d3f9d1d56f5518a.1336510378.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336510378.git.tom.zanussi@intel.com>
References: <cover.1336510378.git.tom.zanussi@intel.com>
Subject: [PATCH 2/3] meta-emenlow: remove smp options from recipe-space
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
X-List-Received-Date: Tue, 08 May 2012 21:39:02 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

SMP support is now configured in the kernel branch, remove it from
recipe-space.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/meta-emenlow/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-emenlow/recipes-kernel/linux/linux-yocto_3.2.bbappend
index 2b646c6..1c02a3f 100644
--- a/meta-emenlow/recipes-kernel/linux/linux-yocto_3.2.bbappend
+++ b/meta-emenlow/recipes-kernel/linux/linux-yocto_3.2.bbappend
@@ -3,7 +3,6 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 COMPATIBLE_MACHINE_emenlow = "emenlow"
 KMACHINE_emenlow  = "emenlow"
 KBRANCH_emenlow  = "standard/default/emenlow"
-KERNEL_FEATURES_append_emenlow += " cfg/smp.scc"
 
 SRCREV_machine_pn-linux-yocto_emenlow ?= "4ee2ae2967b59300f5acd18292688d34d6387f2e"
 SRCREV_meta_pn-linux-yocto_emenlow ?= "b14a08f5c7b469a5077c10942f4e1aec171faa9d"
-- 
1.7.0.4


