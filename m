Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC259E01417
	for <yocto@yoctoproject.org>; Wed,  2 May 2012 20:35:33 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 02 May 2012 20:35:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="138257404"
Received: from unknown (HELO localhost) ([10.255.12.135])
	by azsmga001.ch.intel.com with ESMTP; 02 May 2012 20:35:32 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Wed,  2 May 2012 22:35:23 -0500
Message-Id: <18fc9d1a0aea02645bb871395f79dd6c1cabeea6.1336015630.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <5c329be00981f6c931bd192bf5af741fb7da4a81.1336015630.git.tom.zanussi@intel.com>
References: <5c329be00981f6c931bd192bf5af741fb7da4a81.1336015630.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336015630.git.tom.zanussi@intel.com>
References: <cover.1336015630.git.tom.zanussi@intel.com>
Subject: [PATCH 4/5][KERNEL] meta/crownbay: use ehci-hcd feature
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
X-List-Received-Date: Thu, 03 May 2012 03:35:34 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Use the ehci-hcd feature and remove the associated config settings
from crownbay.cfg

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg |    4 ----
 meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc |    2 ++
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
index b101419..7a8b7ba 100644
--- a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
+++ b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
@@ -10,13 +10,9 @@ CONFIG_ATA_SFF=y
 CONFIG_PCI=y
 CONFIG_MMC=y
 CONFIG_MMC_SDHCI=y
-CONFIG_USB_SUPPORT=y
-CONFIG_USB=y
-CONFIG_USB_ARCH_HAS_EHCI=y
 CONFIG_R8169=y
 CONFIG_PATA_SCH=y
 CONFIG_MMC_SDHCI_PCI=y
-CONFIG_USB_EHCI_HCD=y
 CONFIG_PCIEPORTBUS=y
 CONFIG_NET=y
 CONFIG_USB_UHCI_HCD=y
diff --git a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
index 0ff6ac6..968c648 100644
--- a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
+++ b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
@@ -16,3 +16,5 @@ include features/logbuf/size-normal.scc
 
 include features/latencytop/latencytop.scc
 include features/profiling/profiling.scc
+
+include features/usb/ehci-hcd/ehci-hcd.scc
-- 
1.7.0.4


