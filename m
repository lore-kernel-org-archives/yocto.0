Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84DBCE013C8
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2011 16:25:50 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 26 Oct 2011 16:25:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,412,1315206000"; d="scan'208";a="30495926"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.157])
	by AZSMGA002.ch.intel.com with ESMTP; 26 Oct 2011 16:25:50 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org
Date: Wed, 26 Oct 2011 16:25:30 -0700
Message-Id: <47f32fe03f3c90064b1fb312070ece3d22fa012e.1319666230.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <54e92a5053f2c19bd9705066004a68fb6e40234d.1319666230.git.kishore.k.bodke@intel.com>
References: <54e92a5053f2c19bd9705066004a68fb6e40234d.1319666230.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1319666230.git.kishore.k.bodke@intel.com>
References: <cover.1319666230.git.kishore.k.bodke@intel.com>
Subject: [PATCH 6/7] Romley BSP tested against master branch and with new xorg changes.
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
X-List-Received-Date: Wed, 26 Oct 2011 23:25:50 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

---
 .../linux/linux-yocto_2.6.37.bbappend              |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-romley/recipes-kernel/linux/linux-yocto_2.6.37.bbappend b/meta-romley/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
index e48f8b0..4e0af5a 100644
--- a/meta-romley/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
+++ b/meta-romley/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
@@ -1,6 +1,6 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
-COMPATIBLE_MACHINE_sugarbay = "romley"
+COMPATIBLE_MACHINE_romley = "romley"
 KMACHINE_romley  = "yocto/standard/common-pc-64/romley"
 
 SRCREV_machine_pn-linux-yocto_romley ?= "7f495be2ccaa209bf505b8a8899cea64cfd968bb"
-- 
1.7.5.4


