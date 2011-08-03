Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6A91A4C800A9
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2011 15:57:29 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 03 Aug 2011 13:57:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,312,1309762800"; d="scan'208";a="34046577"
Received: from unknown (HELO localhost) ([10.255.14.150])
	by orsmga002.jf.intel.com with ESMTP; 03 Aug 2011 13:57:22 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed,  3 Aug 2011 15:57:10 -0500
Message-Id: <51b341942aa30c252cb38eb2206b3d17d9dc7f57.1312404638.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1312404638.git.tom.zanussi@intel.com>
References: <cover.1312404638.git.tom.zanussi@intel.com>
Subject: [PATCH 1/2] meta-emenlow: remove tune-related assignments from machine conf
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
X-List-Received-Date: Wed, 03 Aug 2011 20:57:29 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

These are all now handled or obsoleted by tune-atom.inc, so remove
them here.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-emenlow/conf/machine/emenlow.conf |    4 ----
 1 files changed, 0 insertions(+), 4 deletions(-)

diff --git a/meta-emenlow/conf/machine/emenlow.conf b/meta-emenlow/conf/machine/emenlow.conf
index b0b7d5e..dfe20cb 100644
--- a/meta-emenlow/conf/machine/emenlow.conf
+++ b/meta-emenlow/conf/machine/emenlow.conf
@@ -4,12 +4,8 @@
 #@DESCRIPTION: Machine configuration for eMenlow based systems, like the
 # Webs-2120 box.
 
-TARGET_ARCH = "i586"
-
 include conf/machine/include/tune-atom.inc
 
-BASE_PACKAGE_ARCH="core2"
-
 MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
                     acpi serial usbgadget"
 
-- 
1.7.0.4


