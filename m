Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id E64744C80655
	for <yocto@yoctoproject.org>; Sun, 10 Jul 2011 11:26:05 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 10 Jul 2011 09:26:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,509,1304319600"; d="scan'208";a="24117703"
Received: from unknown (HELO localhost) ([10.255.13.195])
	by orsmga002.jf.intel.com with ESMTP; 10 Jul 2011 09:26:04 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Sun, 10 Jul 2011 11:26:04 -0500
Message-Id: <8b824f53292e21ccb9de938b2c115adf0a9b1aa0.1310314387.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1310314386.git.tom.zanussi@intel.com>
References: <cover.1310314386.git.tom.zanussi@intel.com>
Subject: [PATCH 1/3][KERNEL] meta: add eg20t feature
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
X-List-Received-Date: Sun, 10 Jul 2011 16:26:06 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Option group for Intel Platform Controller Hub EG20T (Topcliff).

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/features/eg20t/eg20t.cfg |   39 ++++++++++++++++++++++++
 meta/cfg/kernel-cache/features/eg20t/eg20t.scc |    1 +
 2 files changed, 40 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/eg20t/eg20t.cfg
 create mode 100644 meta/cfg/kernel-cache/features/eg20t/eg20t.scc

diff --git a/meta/cfg/kernel-cache/features/eg20t/eg20t.cfg b/meta/cfg/kernel-cache/features/eg20t/eg20t.cfg
new file mode 100644
index 0000000..225581c
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/eg20t/eg20t.cfg
@@ -0,0 +1,39 @@
+# Hardware support for the Platform Controller Hub EG20T
+
+CONFIG_PCH_DMA=y
+CONFIG_PCH_UART_DMA=y
+CONFIG_SERIAL_8250_PCI=y
+CONFIG_SERIAL_8250_PCH=y
+CONFIG_SERIAL_8250_PCH_DMA=y
+
+CONFIG_SERIAL_PCH_UART=y
+CONFIG_SERIAL_CORE=y
+
+CONFIG_SPI=y
+CONFIG_SPI_BITBANG=y
+CONFIG_SPI_GPIO=y
+CONFIG_SPI_TOPCLIFF_PCH=y
+ 
+CONFIG_MISC_DEVICES=y
+CONFIG_PCH_PHUB=y
+
+CONFIG_NETDEVICES=y
+CONFIG_NETDEV_1000=y
+CONFIG_PCH_GBE=y
+
+CONFIG_PCH_USBDEV=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_EG20T=y
+CONFIG_USB_GADGET_DUALSPEED=y
+CONFIG_USB_GADGET_SELECTED=y
+
+CONFIG_I2C_EG20T=y
+
+CONFIG_GPIOLIB=y
+CONFIG_GPIO_PCH=y
+
+CONFIG_PCH_IEEE1588=y
+
+CONFIG_CAN=y
+CONFIG_CAN_DEV=y
+CONFIG_PCH_CAN=y
diff --git a/meta/cfg/kernel-cache/features/eg20t/eg20t.scc b/meta/cfg/kernel-cache/features/eg20t/eg20t.scc
new file mode 100644
index 0000000..d690469
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/eg20t/eg20t.scc
@@ -0,0 +1 @@
+kconf hardware eg20t.cfg
-- 
1.7.0.4


