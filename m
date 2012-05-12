Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 192B7E01426
	for <yocto@yoctoproject.org>; Sat, 12 May 2012 12:42:20 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 12 May 2012 12:42:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="143172711"
Received: from unknown (HELO localhost) ([10.255.12.76])
	by orsmga002.jf.intel.com with ESMTP; 12 May 2012 12:42:19 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Sat, 12 May 2012 14:41:48 -0500
Message-Id: <1f5a10bb9d68537d36b6ebcd8393c1e18f58a998.1336851382.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <594ba05ab96a837575960ba514ae153eeef899b7.1336851382.git.tom.zanussi@intel.com>
References: <594ba05ab96a837575960ba514ae153eeef899b7.1336851382.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336851382.git.tom.zanussi@intel.com>
References: <cover.1336851382.git.tom.zanussi@intel.com>
Subject: [PATCH 03/22] meta/common-pc-64: use usb features
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
X-List-Received-Date: Sat, 12 May 2012 19:42:20 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Use the available ehci and uhci usb features and remove the associated
config settings from the top-level common-pc feature.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../kernel-cache/bsp/common-pc-64/common-pc-64.cfg |    3 ---
 .../kernel-cache/bsp/common-pc-64/common-pc-64.scc |    2 ++
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.cfg b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.cfg
index 3b2621e..8d35931 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.cfg
+++ b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.cfg
@@ -59,9 +59,6 @@ CONFIG_SERIAL_8250_CONSOLE=y
 CONFIG_SERIAL_8250_PCI=y
 CONFIG_SERIAL_8250_PNP=y
 
-CONFIG_USB=y
-CONFIG_USB_EHCI_HCD=y
-CONFIG_USB_UHCI_HCD=y
 CONFIG_USB_STORAGE=y
 # For /proc/bus/usb and lsusb.
 CONFIG_USB_DEVICEFS=y
diff --git a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc
index b27e793..d0327c5 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc
+++ b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc
@@ -4,6 +4,8 @@ kconf hardware common-pc-64-graphics.cfg
 include cfg/boot-live.scc
 
 include features/hpet/hpet.scc
+include features/usb/ehci-hcd.scc
+include features/usb/uhci-hcd.scc
 include features/intel-e1xxxx/intel-e100.scc
 include features/intel-e1xxxx/intel-e1xxxx.scc
 
-- 
1.7.0.4


