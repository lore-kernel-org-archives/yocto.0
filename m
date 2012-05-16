Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 032D8E0140C
	for <yocto@yoctoproject.org>; Wed, 16 May 2012 08:51:35 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 May 2012 08:51:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="167150597"
Received: from unknown (HELO localhost) ([10.255.12.76])
	by fmsmga002.fm.intel.com with ESMTP; 16 May 2012 08:51:35 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Wed, 16 May 2012 10:50:39 -0500
Message-Id: <4110ecdf655b9013e22ba7b4572fbb94475b904b.1337182769.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <594ba05ab96a837575960ba514ae153eeef899b7.1337182769.git.tom.zanussi@intel.com>
References: <594ba05ab96a837575960ba514ae153eeef899b7.1337182769.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1337182769.git.tom.zanussi@intel.com>
References: <cover.1337182769.git.tom.zanussi@intel.com>
Subject: [PATCH 19/22][KERNEL] meta/sugarbay: remove redundant features and options
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
X-List-Received-Date: Wed, 16 May 2012 15:51:36 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Remove features and options already inherited from common-pc-64.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../bsp/sugarbay/sugarbay-preempt-rt.scc           |    3 ---
 .../bsp/sugarbay/sugarbay-standard.scc             |    3 ---
 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg    |    1 -
 3 files changed, 0 insertions(+), 7 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-preempt-rt.scc
index d9df73b..0403a60 100644
--- a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-preempt-rt.scc
+++ b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-preempt-rt.scc
@@ -9,7 +9,4 @@ include bsp/common-pc-64/common-pc-64.scc
 include sugarbay.scc
 
 # default policy for preempt-rt kernels
-include cfg/usb-mass-storage.scc
 include features/logbuf/size-normal.scc
-include features/latencytop/latencytop.scc
-include features/profiling/profiling.scc
diff --git a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-standard.scc b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-standard.scc
index 421364e..5d6eebe 100644
--- a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-standard.scc
+++ b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-standard.scc
@@ -8,7 +8,4 @@ branch sugarbay
 include sugarbay.scc
 
 # default policy for standard kernels
-include cfg/usb-mass-storage.scc
 include features/logbuf/size-normal.scc
-include features/latencytop/latencytop.scc
-include features/profiling/profiling.scc
diff --git a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg
index 1b370ba..787ee5b 100644
--- a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg
+++ b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg
@@ -13,7 +13,6 @@ CONFIG_PATA_SCH=y
 CONFIG_MMC_SDHCI_PCI=y
 CONFIG_PCIEPORTBUS=y
 CONFIG_NET=y
-CONFIG_BLK_DEV_SD=y
 CONFIG_CHR_DEV_SG=y
 CONFIG_SOUND=y
 CONFIG_SND=y
-- 
1.7.0.4


