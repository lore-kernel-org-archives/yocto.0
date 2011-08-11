Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37E6AE006AB
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2011 01:24:04 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 11 Aug 2011 01:24:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,355,1309762800"; d="scan'208";a="38082115"
Received: from unknown (HELO localhost) ([10.255.14.201])
	by fmsmga002.fm.intel.com with ESMTP; 11 Aug 2011 01:24:00 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Thu, 11 Aug 2011 01:23:47 -0700
Message-Id: <b807fa43efd1f6a781ca8cb48a92bf9851e76a3c.1313050084.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6
In-Reply-To: <cover.1313050084.git.dvhart@linux.intel.com>
References: <cover.1313050084.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1313050084.git.dvhart@linux.intel.com>
References: <cover.1313050084.git.dvhart@linux.intel.com>
Subject: [PATCH 16/17] routerstationpro: add remove-superfluous-endif patch to scc
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
X-List-Received-Date: Thu, 11 Aug 2011 08:24:04 -0000

This patch corresponds to the one I am sending for the
standard/routerstationpro branch.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../remove-superfluous-endif-in-gpio-Kconfig.patch |   36 ++++++++++++++++++++
 .../bsp/routerstationpro/routerstationpro.scc      |    1 +
 2 files changed, 37 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/bsp/routerstationpro/remove-superfluous-endif-in-gpio-Kconfig.patch

diff --git a/meta/cfg/kernel-cache/bsp/routerstationpro/remove-superfluous-endif-in-gpio-Kconfig.patch b/meta/cfg/kernel-cache/bsp/routerstationpro/remove-superfluous-endif-in-gpio-Kconfig.patch
new file mode 100644
index 0000000..32b4c33
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/routerstationpro/remove-superfluous-endif-in-gpio-Kconfig.patch
@@ -0,0 +1,36 @@
+From 7c42fcf48b060cae1f8e4c54e4936bd3c6294110 Mon Sep 17 00:00:00 2001
+Message-Id: <7c42fcf48b060cae1f8e4c54e4936bd3c6294110.1313039692.git.dvhart@linux.intel.com>
+From: Darren Hart <dvhart@linux.intel.com>
+Date: Wed, 10 Aug 2011 22:05:17 -0700
+Subject: [PATCH] routerstationpro: remove superfluous endif in gpio Kconfig
+
+The following patch introduced a superfluous endif at the end
+of drivers/gpio/Kconfig, resulting in configuration failures.
+
+commit d3bce96fa662b68f4de2146894c026a9da561df7
+Author: Zumeng Chen <zumeng.chen@windriver.com>
+Date:   Wed Sep 29 09:58:56 2010 +0800
+
+    Add gpio support for nxp_74hc153
+
+Remove the extra endif.
+
+Signed-off-by: Darren Hart <dvhart@linux.intel.com>
+CC: Zumeng Chen <zumeng.chen@windriver.com>
+---
+ drivers/gpio/Kconfig |    2 --
+ 1 files changed, 0 insertions(+), 2 deletions(-)
+
+diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
+index 29591e2..df5c97c 100644
+--- a/drivers/gpio/Kconfig
++++ b/drivers/gpio/Kconfig
+@@ -463,5 +463,3 @@ config GPIO_NXP_74HC153
+ 	help
+ 	  Platform driver for NXP 74HC153 Dual 4-input Multiplexer. This
+ 	  provides a GPIO interface supporting inputs.
+-
+-endif
+-- 
+1.7.6
+
diff --git a/meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro.scc b/meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro.scc
index ce4b227..1bfa1ee 100644
--- a/meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro.scc
+++ b/meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro.scc
@@ -6,6 +6,7 @@ include cfg/vfat.scc
 patch Add-arch-suport-for-ar71xx.patch
 patch Add-include-file-support-ar71xx.patch
 patch Add-gpio-support-for-nxp_74hc153.patch
+patch remove-superfluous-endif-in-gpio-Kconfig.patch
 patch Add-pci-supoprt-for-ar7xxx.patch
 patch Add-leds-support-for-ar71xx.patch
 patch Add-mtd-support-ar71xx.patch
-- 
1.7.6


