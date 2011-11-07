Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C95DE0136C
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2011 07:54:02 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 07 Nov 2011 07:54:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,470,1315206000"; d="scan'208";a="87070408"
Received: from unknown (HELO localhost) ([10.255.15.253])
	by fmsmga002.fm.intel.com with ESMTP; 07 Nov 2011 07:54:01 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon,  7 Nov 2011 09:54:32 -0600
Message-Id: <bbcfefcd48d305cfe35748202b30a2de8b2ef386.1320680881.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1320680881.git.tom.zanussi@intel.com>
References: <cover.1320680881.git.tom.zanussi@intel.com>
Subject: [PATCH 1/2] meta-sugarbay: use corei7 tune file
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
X-List-Received-Date: Mon, 07 Nov 2011 15:54:02 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Have sugarbay make use of the new corei7-specific tune file.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-sugarbay/conf/machine/sugarbay.conf |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta-sugarbay/conf/machine/sugarbay.conf b/meta-sugarbay/conf/machine/sugarbay.conf
index 3ea9ca3..3185d78 100644
--- a/meta-sugarbay/conf/machine/sugarbay.conf
+++ b/meta-sugarbay/conf/machine/sugarbay.conf
@@ -4,7 +4,8 @@
 #@DESCRIPTION: Machine configuration for Sugar Bay systems
 # i.e. Sandy Bridge + Cougar Point
 
-require conf/machine/include/tune-x86_64.inc
+DEFAULTTUNE ?= "corei7-avx"
+require conf/machine/include/tune-corei7.inc
 
 MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
                     acpi serial usbgadget"
-- 
1.7.0.4


