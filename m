Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0725E01435
	for <yocto@yoctoproject.org>; Sat, 12 May 2012 12:42:45 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 12 May 2012 12:42:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="165425722"
Received: from unknown (HELO localhost) ([10.255.12.76])
	by fmsmga002.fm.intel.com with ESMTP; 12 May 2012 12:42:45 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Sat, 12 May 2012 14:42:03 -0500
Message-Id: <f38fe81691f6174383b827f8571f905cedccae52.1336851382.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <594ba05ab96a837575960ba514ae153eeef899b7.1336851382.git.tom.zanussi@intel.com>
References: <594ba05ab96a837575960ba514ae153eeef899b7.1336851382.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336851382.git.tom.zanussi@intel.com>
References: <cover.1336851382.git.tom.zanussi@intel.com>
Subject: [PATCH 18/22] meta/jasperforest: remove redundant features and options
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
X-List-Received-Date: Sat, 12 May 2012 19:42:45 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Remove features and options already inherited from common-pc-64.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../bsp/jasperforest/jasperforest-preempt-rt.scc   |    3 ---
 .../bsp/jasperforest/jasperforest-standard.scc     |    3 ---
 .../kernel-cache/bsp/jasperforest/jasperforest.cfg |    1 -
 3 files changed, 0 insertions(+), 7 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest-preempt-rt.scc
index b3a6370..7e4568e 100644
--- a/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest-preempt-rt.scc
+++ b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest-preempt-rt.scc
@@ -9,7 +9,4 @@ include bsp/common-pc-64/common-pc-64.scc
 include jasperforest.scc
 
 # default policy for preempt-rt kernels
-include cfg/usb-mass-storage.scc
 include features/logbuf/size-normal.scc
-include features/latencytop/latencytop.scc
-include features/profiling/profiling.scc
diff --git a/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest-standard.scc b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest-standard.scc
index ec7a10a..8dfc40d 100644
--- a/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest-standard.scc
+++ b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest-standard.scc
@@ -8,7 +8,4 @@ branch jasperforest
 include jasperforest.scc
 
 # default policy for standard kernels
-include cfg/usb-mass-storage.scc
 include features/logbuf/size-normal.scc
-include features/latencytop/latencytop.scc
-include features/profiling/profiling.scc
diff --git a/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.cfg b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.cfg
index e2310a5..fc2b7cc 100644
--- a/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.cfg
+++ b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.cfg
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


