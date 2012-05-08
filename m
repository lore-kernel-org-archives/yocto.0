Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E91D6E013EC
	for <yocto@yoctoproject.org>; Tue,  8 May 2012 14:39:01 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 May 2012 14:39:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="150717300"
Received: from unknown (HELO localhost) ([10.255.12.248])
	by fmsmga001.fm.intel.com with ESMTP; 08 May 2012 14:39:00 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue,  8 May 2012 16:39:04 -0500
Message-Id: <d1f334823a4ae92e6304acf74d3f9d1d56f5518a.1336510378.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1336510378.git.tom.zanussi@intel.com>
References: <cover.1336510378.git.tom.zanussi@intel.com>
Subject: [PATCH 1/3] meta-crownbay: remove smp options from recipe-space
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
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    2 --
 1 files changed, 0 insertions(+), 2 deletions(-)

diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
index a3075b4..b1c41dd 100644
--- a/meta-crownbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
+++ b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
@@ -3,12 +3,10 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 COMPATIBLE_MACHINE_crownbay = "crownbay"
 KMACHINE_crownbay  = "crownbay"
 KBRANCH_crownbay  = "standard/default/crownbay"
-KERNEL_FEATURES_append_crownbay += " cfg/smp.scc"
 
 COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
 KMACHINE_crownbay-noemgd  = "crownbay"
 KBRANCH_crownbay-noemgd  = "standard/default/crownbay"
-KERNEL_FEATURES_append_crownbay-noemgd += " cfg/smp.scc"
 
 SRCREV_machine_pn-linux-yocto_crownbay ?= "211fc7f4d10ec2b82b424286aabbaff9254b7cbd"
 SRCREV_meta_pn-linux-yocto_crownbay ?= "514847185c78c07f52e02750fbe0a03ca3a31d8f"
-- 
1.7.0.4


