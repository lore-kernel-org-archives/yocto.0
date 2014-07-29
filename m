Return-Path: <david.andrey@netmodule.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF5B0E00563; Tue, 29 Jul 2014 08:55:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1225 seconds by postgrey-1.32 at yocto-www;
	Tue, 29 Jul 2014 08:55:18 PDT
Received: from wolf.netmodule.com (wolf.netmodule.com [194.29.26.243])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79ABDE003FA
	for <yocto@yoctoproject.org>; Tue, 29 Jul 2014 08:55:18 -0700 (PDT)
Received: from 194-29-26-246.static.cablecom.ch ([194.29.26.246]
	helo=LOIRE.netmodule.intranet)
	by wolf.netmodule.com with esmtp id 1XC9Qe-00004w-T6;
	Tue, 29 Jul 2014 17:35:04 +0200
From: David Andrey <david.andrey@netmodule.com>
To: yocto@yoctoproject.org
Date: Tue, 29 Jul 2014 17:34:12 +0200
Message-Id: <1406648052-8887-3-git-send-email-david.andrey@netmodule.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1406648052-8887-1-git-send-email-david.andrey@netmodule.com>
References: <1406648052-8887-1-git-send-email-david.andrey@netmodule.com>
Subject: [[meta-xilinx-community][PATCH] 3/3] microzed: kernel config: force emacps net driver
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 29 Jul 2014 15:55:30 -0000

Avoid the kernel loading the Cadence MAC driver by
disabling it in the kernel configuration. Remains the
Xilinx emacps driver, the one we need.

Signed-off-by: David Andrey <david.andrey@netmodule.com>
---
 .../microzed/microzed-disable-net-cadence.cfg      |   23 ++++++++++++++++++++
 conf/machine/microzed-zynq7.conf                   |    1 +
 2 files changed, 24 insertions(+)
 create mode 100644 conf/machine/boards/microzed/microzed-disable-net-cadence.cfg

diff --git a/conf/machine/boards/microzed/microzed-disable-net-cadence.cfg b/conf/machine/boards/microzed/microzed-disable-net-cadence.cfg
new file mode 100644
index 0000000..19201a1
--- /dev/null
+++ b/conf/machine/boards/microzed/microzed-disable-net-cadence.cfg
@@ -0,0 +1,23 @@
+CONFIG_ETHERNET=y
+# CONFIG_NET_CADENCE is not set
+# CONFIG_NET_VENDOR_BROADCOM is not set
+# CONFIG_NET_CALXEDA_XGMAC is not set
+# CONFIG_NET_VENDOR_CIRRUS is not set
+# CONFIG_DM9000 is not set
+# CONFIG_DNET is not set
+# CONFIG_NET_VENDOR_FARADAY is not set
+# CONFIG_NET_VENDOR_INTEL is not set
+# CONFIG_NET_VENDOR_MARVELL is not set
+# CONFIG_NET_VENDOR_MICREL is not set
+# CONFIG_NET_VENDOR_NATSEMI is not set
+# CONFIG_ETHOC is not set
+# CONFIG_NET_VENDOR_SEEQ is not set
+# CONFIG_NET_VENDOR_SMSC is not set
+# CONFIG_NET_VENDOR_STMICRO is not set
+# CONFIG_NET_VENDOR_WIZNET is not set
+CONFIG_NET_VENDOR_XILINX=y
+CONFIG_XILINX_EMACLITE=y
+CONFIG_XILINX_AXI_EMAC=y
+CONFIG_XILINX_PS_EMAC=y
+# CONFIG_XILINX_PS_EMAC_HWTSTAMP is not set
+CONFIG_PHYLIB=y
diff --git a/conf/machine/microzed-zynq7.conf b/conf/machine/microzed-zynq7.conf
index cb89a23..b58e190 100644
--- a/conf/machine/microzed-zynq7.conf
+++ b/conf/machine/microzed-zynq7.conf
@@ -22,4 +22,5 @@ MACHINE_DEVICETREE := " \
 
 MACHINE_KCONFIG := " \
 		microzed/microzed-blk-dev-ram.cfg \
+		microzed/microzed-disable-net-cadence.cfg \
 		"
-- 
1.7.10.4


