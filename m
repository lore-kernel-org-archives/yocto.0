Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 150E5E011C0
	for <yocto@yoctoproject.org>; Fri, 19 Aug 2011 15:23:31 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 19 Aug 2011 15:23:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,253,1312182000"; 
   d="scan'208";a="9097522"
Received: from unknown (HELO localhost) ([10.255.13.233])
	by AZSMGA002.ch.intel.com with ESMTP; 19 Aug 2011 15:23:29 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 19 Aug 2011 15:23:29 -0700
Message-Id: <0c8f4cdc6cf96da157b4c4bae8f4e13fca6d46e8.1313792192.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6
In-Reply-To: <cover.1313792192.git.dvhart@linux.intel.com>
References: <cover.1313792192.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 1/1] beagleboard: enable hard floating point abi
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
X-List-Received-Date: Fri, 19 Aug 2011 22:23:31 -0000

Fixes [YOCTO #1203]

Using the hard floating point abi is incompatible with some binary libaries and
3D support for the Beagleboard. As we do not provide these in poky and
meta-yocto, we can take advantage of the hard floating point abi. This can be
easily disabled by anyone building on top of meta-yocto if they need the soft
abi by overriding DEFAULT_TUNE.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Jason Kridner <jkridner@beagleboard.org>
CC: Koen Kooi <koen@dominion.thruhere.net>
---
 meta-yocto/conf/machine/beagleboard.conf |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/meta-yocto/conf/machine/beagleboard.conf b/meta-yocto/conf/machine/beagleboard.conf
index 0b3cebc..8f11732 100644
--- a/meta-yocto/conf/machine/beagleboard.conf
+++ b/meta-yocto/conf/machine/beagleboard.conf
@@ -18,6 +18,11 @@ MACHINE_EXTRA_RRECOMMENDS += "beagleboard-audio"
 # Allow for MMC booting (required by the NAND-less Beagleboard XM)
 EXTRA_IMAGEDEPENDS += "u-boot x-load"
 
+# Use the hard floating point abi. This breaks some binary libraries and
+# 3D. Since poky and meta-yocto do not provide these by default, enable the
+# hard floating point abi. Comment out the following or override it to disable
+# it.
+DEFAULTTUNE ?= "cortexa8hf-neon"
 include conf/machine/include/tune-cortexa8.inc
 
 IMAGE_FSTYPES += "tar.bz2 jffs2"
-- 
1.7.6


