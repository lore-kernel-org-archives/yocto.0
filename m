Return-Path: <richard@rpsys.net>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00B73E013C9
	for <yocto@yoctoproject.org>; Sun, 21 Apr 2013 07:24:17 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r3LEP18U015646; Sun, 21 Apr 2013 15:25:01 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id hr8Rzdw7gD-C; Sun, 21 Apr 2013 15:25:00 +0100 (BST)
Received: from ted (bebox.config [93.97.175.187] (may be forged))
	(authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r3LEOwa5015633
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Sun, 21 Apr 2013 15:24:59 +0100
Received: from richard by ted with local (Exim 4.80)
	(envelope-from <richard@dan.rpsys.net>)
	id 1UTvBR-0003KH-F7; Sun, 21 Apr 2013 15:24:01 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@yoctoproject.org
Date: Sun, 21 Apr 2013 15:23:59 +0100
Message-Id: <1366554239-12749-1-git-send-email-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH] linux-raspberrypi: Fix i2c issues
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
X-List-Received-Date: Sun, 21 Apr 2013 14:24:18 -0000

I was having intermittent i2c issues on the device until I applied this kernel patch
which I found online.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../sl030raspberrypii2ckernel.patch                |   32 ++++++++++++++++++++
 recipes-kernel/linux/linux-raspberrypi_3.2.27.bb   |    1 +
 recipes-kernel/linux/linux-raspberrypi_3.6.11.bb   |    1 +
 3 files changed, 34 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi/sl030raspberrypii2ckernel.patch

diff --git a/recipes-kernel/linux/linux-raspberrypi/sl030raspberrypii2ckernel.patch b/recipes-kernel/linux/linux-raspberrypi/sl030raspberrypii2ckernel.patch
new file mode 100644
index 0000000..8534ecb
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi/sl030raspberrypii2ckernel.patch
@@ -0,0 +1,32 @@
+Fix i2c timing errors.
+
+When Transmitting: Make SDA valid quarter of a cycle after the falling edge of SCL.
+When Receiving: Sample SDA Quarter of a cycle after the rising edge of SCL.
+
+Upstream-Status: Pending
+
+RP 2013/04/21
+
+Index: git/drivers/i2c/busses/i2c-bcm2708.c
+===================================================================
+--- git.orig/drivers/i2c/busses/i2c-bcm2708.c	2013-01-06 17:15:00.754954587 +0000
++++ git/drivers/i2c/busses/i2c-bcm2708.c	2013-01-06 17:50:09.794905741 +0000
+@@ -150,6 +150,7 @@
+ 	unsigned long bus_hz;
+ 	u32 cdiv;
+ 	u32 c = BSC_C_I2CEN | BSC_C_INTD | BSC_C_ST | BSC_C_CLEAR_1;
++	u32 cdel;
+ 
+ 	bus_hz = clk_get_rate(bi->clk);
+ 	cdiv = bus_hz / baudrate;
+@@ -163,6 +164,10 @@
+ 	bcm2708_wr(bi, BSC_A, bi->msg->addr);
+ 	bcm2708_wr(bi, BSC_DLEN, bi->msg->len);
+ 	bcm2708_wr(bi, BSC_C, c);
++
++	cdel = (cdiv / 4) & 0xffff;
++	cdel = cdel << 16 | cdel;
++	bcm2708_wr(bi, BSC_DEL, cdel);
+ }
+ 
+ static irqreturn_t bcm2708_i2c_interrupt(int irq, void *dev_id)
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.2.27.bb b/recipes-kernel/linux/linux-raspberrypi_3.2.27.bb
index c7a12e6..a68186b 100644
--- a/recipes-kernel/linux/linux-raspberrypi_3.2.27.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_3.2.27.bb
@@ -8,6 +8,7 @@ PV_append = "+git${SRCREV}"
 
 SRCREV = "10182a3bc434b27740f81c2b836a1af943060241"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27 \
+	   file://sl030raspberrypii2ckernel.patch \
           "
 S = "${WORKDIR}/git"
 
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb b/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
index caee7f2..07b0ae8 100644
--- a/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
@@ -8,6 +8,7 @@ PV_append = "+git${SRCREV}"
 
 SRCREV = "31a951046155b27361127d9cf85a1f58719fe9b3"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.6.y \
+           file://sl030raspberrypii2ckernel.patch \
           "
 S = "${WORKDIR}/git"
 
-- 
1.7.10.4


