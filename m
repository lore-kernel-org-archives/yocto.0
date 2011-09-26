Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2918AE006D0
	for <yocto@yoctoproject.org>; Sun, 25 Sep 2011 21:08:30 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 25 Sep 2011 21:08:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,441,1312182000"; d="scan'208";a="55514619"
Received: from unknown (HELO localhost) ([10.255.14.185])
	by azsmga001.ch.intel.com with ESMTP; 25 Sep 2011 21:08:28 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Sun, 25 Sep 2011 23:07:30 -0500
Message-Id: <2324b0d993331824b6d205aabb400f023fd9623a.1317009703.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1317009703.git.tom.zanussi@intel.com>
References: <cover.1317009703.git.tom.zanussi@intel.com>
Subject: [PATCH][KERNEL] eg20t: update config options
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
X-List-Received-Date: Mon, 26 Sep 2011 04:08:30 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Some of the eg20t options have been renamed or are obsolete, change
accordingly.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/features/eg20t/eg20t.cfg |    9 +--------
 1 files changed, 1 insertions(+), 8 deletions(-)

diff --git a/meta/cfg/kernel-cache/features/eg20t/eg20t.cfg b/meta/cfg/kernel-cache/features/eg20t/eg20t.cfg
index 225581c..d579e00 100644
--- a/meta/cfg/kernel-cache/features/eg20t/eg20t.cfg
+++ b/meta/cfg/kernel-cache/features/eg20t/eg20t.cfg
@@ -1,10 +1,6 @@
 # Hardware support for the Platform Controller Hub EG20T
 
 CONFIG_PCH_DMA=y
-CONFIG_PCH_UART_DMA=y
-CONFIG_SERIAL_8250_PCI=y
-CONFIG_SERIAL_8250_PCH=y
-CONFIG_SERIAL_8250_PCH_DMA=y
 
 CONFIG_SERIAL_PCH_UART=y
 CONFIG_SERIAL_CORE=y
@@ -21,19 +17,16 @@ CONFIG_NETDEVICES=y
 CONFIG_NETDEV_1000=y
 CONFIG_PCH_GBE=y
 
-CONFIG_PCH_USBDEV=y
+CONFIG_USB_EG20T=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_EG20T=y
 CONFIG_USB_GADGET_DUALSPEED=y
-CONFIG_USB_GADGET_SELECTED=y
 
 CONFIG_I2C_EG20T=y
 
 CONFIG_GPIOLIB=y
 CONFIG_GPIO_PCH=y
 
-CONFIG_PCH_IEEE1588=y
-
 CONFIG_CAN=y
 CONFIG_CAN_DEV=y
 CONFIG_PCH_CAN=y
-- 
1.7.0.4


