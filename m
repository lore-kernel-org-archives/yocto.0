Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3F31E0136E
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2011 07:54:04 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 07 Nov 2011 07:54:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,470,1315206000"; d="scan'208";a="71405113"
Received: from unknown (HELO localhost) ([10.255.15.253])
	by azsmga001.ch.intel.com with ESMTP; 07 Nov 2011 07:54:03 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon,  7 Nov 2011 09:54:33 -0600
Message-Id: <2d3d8d5ea62ca42ae0cfbbbf31b017d2e202bd40.1320680881.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <bbcfefcd48d305cfe35748202b30a2de8b2ef386.1320680881.git.tom.zanussi@intel.com>
References: <bbcfefcd48d305cfe35748202b30a2de8b2ef386.1320680881.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1320680881.git.tom.zanussi@intel.com>
References: <cover.1320680881.git.tom.zanussi@intel.com>
Subject: [PATCH 2/2] meta-jasperforest: use corei7 tune file
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
X-List-Received-Date: Mon, 07 Nov 2011 15:54:05 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Have jasperforest make use of the new corei7-specific tune file.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-jasperforest/conf/machine/jasperforest.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-jasperforest/conf/machine/jasperforest.conf b/meta-jasperforest/conf/machine/jasperforest.conf
index 17468de..b3ba47b 100644
--- a/meta-jasperforest/conf/machine/jasperforest.conf
+++ b/meta-jasperforest/conf/machine/jasperforest.conf
@@ -4,7 +4,7 @@
 #@DESCRIPTION: Machine configuration for Jasper Forest Picket Post
 # systems i.e. Xeon C5500/C3500 + Intel 3420 chipset (Ibex Peak)
 
-require conf/machine/include/tune-x86_64.inc
+require conf/machine/include/tune-corei7.inc
 
 MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
                     acpi serial usbgadget"
-- 
1.7.0.4


