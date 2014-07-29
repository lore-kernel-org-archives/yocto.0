Return-Path: <david.andrey@netmodule.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B4ECE00547; Tue, 29 Jul 2014 08:55:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from wolf.netmodule.com (wolf.netmodule.com [194.29.26.243])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F56BE00547
	for <yocto@yoctoproject.org>; Tue, 29 Jul 2014 08:55:28 -0700 (PDT)
Received: from 194-29-26-246.static.cablecom.ch ([194.29.26.246]
	helo=LOIRE.netmodule.intranet)
	by wolf.netmodule.com with esmtp id 1XC9QZ-00004w-AF;
	Tue, 29 Jul 2014 17:34:59 +0200
From: David Andrey <david.andrey@netmodule.com>
To: yocto@yoctoproject.org
Date: Tue, 29 Jul 2014 17:34:11 +0200
Message-Id: <1406648052-8887-2-git-send-email-david.andrey@netmodule.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1406648052-8887-1-git-send-email-david.andrey@netmodule.com>
References: <1406648052-8887-1-git-send-email-david.andrey@netmodule.com>
Subject: [[meta-xilinx-community][PATCH] 2/3] microzed: kernel config: increase ram dev size
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
X-List-Received-Date: Tue, 29 Jul 2014 15:55:33 -0000

Increase the RAM device block size to allow bigger
RamDisk FS image

Signed-off-by: David Andrey <david.andrey@netmodule.com>
---
 conf/machine/boards/microzed/microzed-blk-dev-ram.cfg |   11 +++++++++++
 conf/machine/microzed-zynq7.conf                      |    4 ++++
 2 files changed, 15 insertions(+)
 create mode 100644 conf/machine/boards/microzed/microzed-blk-dev-ram.cfg

diff --git a/conf/machine/boards/microzed/microzed-blk-dev-ram.cfg b/conf/machine/boards/microzed/microzed-blk-dev-ram.cfg
new file mode 100644
index 0000000..96ef556
--- /dev/null
+++ b/conf/machine/boards/microzed/microzed-blk-dev-ram.cfg
@@ -0,0 +1,11 @@
+CONFIG_BLK_DEV=y
+# CONFIG_BLK_DEV_COW_COMMON is not set
+CONFIG_BLK_DEV_LOOP=y
+CONFIG_BLK_DEV_LOOP_MIN_COUNT=8
+# CONFIG_BLK_DEV_CRYPTOLOOP is not set
+# CONFIG_BLK_DEV_DRBD is not set
+# CONFIG_BLK_DEV_NBD is not set
+CONFIG_BLK_DEV_RAM=y
+CONFIG_BLK_DEV_RAM_COUNT=4
+CONFIG_BLK_DEV_RAM_SIZE=32768
+# CONFIG_BLK_DEV_XIP is not set
\ No newline at end of file
diff --git a/conf/machine/microzed-zynq7.conf b/conf/machine/microzed-zynq7.conf
index b7f8934..cb89a23 100644
--- a/conf/machine/microzed-zynq7.conf
+++ b/conf/machine/microzed-zynq7.conf
@@ -19,3 +19,7 @@ MACHINE_DEVICETREE := " \
 		microzed/microzed-zynq7.dtsi \
 		microzed/microzed-zynq7-ram.dts \
 		"
+
+MACHINE_KCONFIG := " \
+		microzed/microzed-blk-dev-ram.cfg \
+		"
-- 
1.7.10.4


