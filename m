Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81A23E009F3; Fri,  8 May 2015 14:49:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.224 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bin-vsp-out-04.atm.binero.net (vsp-authed01.binero.net
	[195.74.38.224])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77758E009CA
	for <yocto@yoctoproject.org>; Fri,  8 May 2015 14:49:17 -0700 (PDT)
X-Halon-ID: 12282a7c-f5cc-11e4-a7da-005056917c0c
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.lan (unknown [81.229.90.163])
	by bin-vsp-out-04.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Fri,  8 May 2015 23:49:15 +0200 (CEST)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Fri,  8 May 2015 23:49:05 +0200
Message-Id: <f77554f3a424b1e0a9a43cede5ba642a45cf4255.1431121258.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1431121258.git.petter@technux.se>
References: <cover.1431121258.git.petter@technux.se>
In-Reply-To: <cover.1431121258.git.petter@technux.se>
References: <cover.1431121258.git.petter@technux.se>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 5/5] linux-raspberrypi: Update 3.12 branch to latest
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
X-List-Received-Date: Fri, 08 May 2015 21:49:24 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Update linux-raspberrypi_3.12 to latest revision.

Remove sl030raspberrypii2ckernel.patch since it will not apply anymore
and its content seems to be obsolite after
'558d0bf Fix grabbing lock from atomic context in i2c driver' was
merged to 3.12.

[Support #60]

Signed-off-by: Petter Mabäcker <petter@technux.se>
---
 .../sl030raspberrypii2ckernel.patch                | 32 ----------------------
 recipes-kernel/linux/linux-raspberrypi_3.12.bb     |  3 +-
 2 files changed, 1 insertion(+), 34 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi/sl030raspberrypii2ckernel.patch

diff --git a/recipes-kernel/linux/linux-raspberrypi/sl030raspberrypii2ckernel.patch b/recipes-kernel/linux/linux-raspberrypi/sl030raspberrypii2ckernel.patch
deleted file mode 100644
index 8534ecb..0000000
--- a/recipes-kernel/linux/linux-raspberrypi/sl030raspberrypii2ckernel.patch
+++ /dev/null
@@ -1,32 +0,0 @@
-Fix i2c timing errors.
-
-When Transmitting: Make SDA valid quarter of a cycle after the falling edge of SCL.
-When Receiving: Sample SDA Quarter of a cycle after the rising edge of SCL.
-
-Upstream-Status: Pending
-
-RP 2013/04/21
-
-Index: git/drivers/i2c/busses/i2c-bcm2708.c
-===================================================================
---- git.orig/drivers/i2c/busses/i2c-bcm2708.c	2013-01-06 17:15:00.754954587 +0000
-+++ git/drivers/i2c/busses/i2c-bcm2708.c	2013-01-06 17:50:09.794905741 +0000
-@@ -150,6 +150,7 @@
- 	unsigned long bus_hz;
- 	u32 cdiv;
- 	u32 c = BSC_C_I2CEN | BSC_C_INTD | BSC_C_ST | BSC_C_CLEAR_1;
-+	u32 cdel;
- 
- 	bus_hz = clk_get_rate(bi->clk);
- 	cdiv = bus_hz / baudrate;
-@@ -163,6 +164,10 @@
- 	bcm2708_wr(bi, BSC_A, bi->msg->addr);
- 	bcm2708_wr(bi, BSC_DLEN, bi->msg->len);
- 	bcm2708_wr(bi, BSC_C, c);
-+
-+	cdel = (cdiv / 4) & 0xffff;
-+	cdel = cdel << 16 | cdel;
-+	bcm2708_wr(bi, BSC_DEL, cdel);
- }
- 
- static irqreturn_t bcm2708_i2c_interrupt(int irq, void *dev_id)
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.bb b/recipes-kernel/linux/linux-raspberrypi_3.12.bb
index 2952778..71fba49 100644
--- a/recipes-kernel/linux/linux-raspberrypi_3.12.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_3.12.bb
@@ -1,8 +1,7 @@
 LINUX_VERSION ?= "3.12.36"
 
-SRCREV = "90fa5df724d147564149c7b79cb1ffc571a345ec"
+SRCREV = "ee9b8c7d46f2b1787b1e64604acafc70f70191cf"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y \
-           file://sl030raspberrypii2ckernel.patch \
           "
 
 require linux-raspberrypi.inc
-- 
1.9.1


