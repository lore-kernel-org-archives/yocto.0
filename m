Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8272AE01239
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2011 20:59:47 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 25 Aug 2011 20:59:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,283,1312182000"; d="scan'208";a="42604936"
Received: from unknown (HELO localhost) ([10.255.13.254])
	by azsmga001.ch.intel.com with ESMTP; 25 Aug 2011 20:59:46 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 25 Aug 2011 22:59:04 -0500
Message-Id: <061f3187e8cbec70d5970928b6e8252cb0958f4a.1314330614.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <d5130815aff9d230c44ed0be60ca06bb1cb4225a.1314330614.git.tom.zanussi@intel.com>
References: <d5130815aff9d230c44ed0be60ca06bb1cb4225a.1314330614.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1314330614.git.tom.zanussi@intel.com>
References: <cover.1314330614.git.tom.zanussi@intel.com>
Subject: [PATCH 06/10] meta-intel: move emgd-driver-bin_1.8 to common
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
X-List-Received-Date: Fri, 26 Aug 2011 03:59:47 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

emgd-driver-bin will be shared by multiple BSPs, crownbay and fri2 to
start with, so move them into /common.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../xorg-xserver/emgd-driver-bin-1.8/.gitignore    |    0
 .../xorg-xserver/emgd-driver-bin_1.8.bb            |    0
 .../linux/linux-yocto-rt_3.0.bbappend              |   10 ----------
 3 files changed, 0 insertions(+), 10 deletions(-)
 rename {meta-crownbay => common}/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8/.gitignore (100%)
 rename {meta-crownbay => common}/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb (100%)
 delete mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend

diff --git a/meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8/.gitignore b/common/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8/.gitignore
similarity index 100%
rename from meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8/.gitignore
rename to common/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8/.gitignore
diff --git a/meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb b/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb
similarity index 100%
rename from meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb
rename to common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb
diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
deleted file mode 100644
index aaf5614..0000000
--- a/meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ /dev/null
@@ -1,10 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
-KMACHINE_crownbay-noemgd = "crownbay"
-
-KERNEL_FEATURES_append_crownbay-noemgd += " cfg/smp.scc"
-
-# Update the following to use a different BSP branch or meta SRCREV
-#KBRANCH_crownbay-noemgd = "yocto/standard/preempt-rt/base"
-#SRCREV_machine_pn-linux-yocto-rt_crownbay-noemgd ?= XXXX
-#SRCREV_meta_pn-linux-yocto-rt_crownbay-noemgd ?= XXXX
-- 
1.7.0.4


