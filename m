Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0D79E006C7; Tue, 13 Sep 2016 12:29:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from blaine.gmane.org (unknown [195.159.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2ABEE00563
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2016 12:29:40 -0700 (PDT)
Received: from list by blaine.gmane.org with local (Exim 4.84_2)
	(envelope-from <gley-yocto@m.gmane.org>) id 1bjtOX-0002eB-IO
	for yocto@yoctoproject.org; Tue, 13 Sep 2016 21:29:25 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: "robert.berger@gmane" <gmane@reliableembeddedsystems.com>
Date: Tue, 13 Sep 2016 22:29:15 +0300
Message-ID: <09ebab78-b480-edb6-7691-2d60ecb1ed91@reliableembeddedsystems.com>
References: <CALRMKQqDgV5U_3=i_oQQ+2SzQTGhE3d1szfsomKH0rNp5++Uxg@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
In-Reply-To: <CALRMKQqDgV5U_3=i_oQQ+2SzQTGhE3d1szfsomKH0rNp5++Uxg@mail.gmail.com>
Subject: Re: Out-of-Tree Modules and __stack_chk_fail()
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
X-List-Received-Date: Tue, 13 Sep 2016 19:29:45 -0000
X-Groupsio-MsgNum: 31906
Content-Type: multipart/mixed; boundary="------------8F239E07E3924D41D40D6BE0"

--------------8F239E07E3924D41D40D6BE0
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 2016-09-13 21:55, Ronald Oakes wrote:
>
> Any ideas how to proceed?

1) Can you try to use it from an in-tree kernel module? (modify the 
attachment)

2) Can you grep in your kernel config for

CONFIG_CC_STACKPROTECTOR and friends?

Regards,

Robert



--------------8F239E07E3924D41D40D6BE0
Content-Type: text/x-patch;
 name="yocto-testmod.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="yocto-testmod.patch"

From 69cabc395bd097dde34664b4e1fe1c57ced39f6e Mon Sep 17 00:00:00 2001
From: genius user <genius@ReliableEmbeddedSystems.com>
Date: Thu, 27 Aug 2015 16:44:46 +0000
Subject: [PATCH] Yocto kernel module

Signed-off-by: genius user <genius@ReliableEmbeddedSystems.com>
---
 drivers/misc/Kconfig         |  5 +++++
 drivers/misc/Makefile        |  1 +
 drivers/misc/yocto-testmod.c | 38 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 44 insertions(+)
 create mode 100644 drivers/misc/yocto-testmod.c

diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
index 006242c..31e90be 100644
--- a/drivers/misc/Kconfig
+++ b/drivers/misc/Kconfig
@@ -372,6 +372,11 @@ config HMC6352
 	  This driver provides support for the Honeywell HMC6352 compass,
 	  providing configuration and heading data via sysfs.
 
+config YOCTO_TESTMOD
+       tristate "Yocto Test Driver"
+       help
+         This driver provides a silly message for testing Yocto.
+
 config DS1682
 	tristate "Dallas DS1682 Total Elapsed Time Recorder with Alarm"
 	depends on I2C
diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
index 7d5c4cd..f6c21ba 100644
--- a/drivers/misc/Makefile
+++ b/drivers/misc/Makefile
@@ -36,6 +36,7 @@ obj-$(CONFIG_DS1682)		+= ds1682.o
 obj-$(CONFIG_TI_DAC7512)	+= ti_dac7512.o
 obj-$(CONFIG_C2PORT)		+= c2port/
 obj-$(CONFIG_HMC6352)		+= hmc6352.o
+obj-$(CONFIG_YOCTO_TESTMOD)     += yocto-testmod.o
 obj-y				+= eeprom/
 obj-y				+= cb710/
 obj-$(CONFIG_SPEAR13XX_PCIE_GADGET)	+= spear13xx_pcie_gadget.o
diff --git a/drivers/misc/yocto-testmod.c b/drivers/misc/yocto-testmod.c
new file mode 100644
index 0000000..c643624
--- /dev/null
+++ b/drivers/misc/yocto-testmod.c
@@ -0,0 +1,38 @@
+/*
+ * Copyright 2013 Intel Corporation
+ * Authored-by:  Tom Zanussi <tom.zanussi@linux.intel.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License along
+ * with this program; if not, write to the Free Software Foundation, Inc.,
+ * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+ */
+
+#include <linux/module.h>
+
+static int __init yocto_testmod_init(void)
+{
+       printk("Billroy quacked here!");
+
+       return 0;
+}
+
+static void __exit yocto_testmod_exit(void)
+{
+       printk("Billroy did not quack here!");
+}
+
+module_init(yocto_testmod_init);
+module_exit(yocto_testmod_exit);
+
+MODULE_AUTHOR("Tom Zanussi <tom.zanussi@linux.intel.com");
+MODULE_DESCRIPTION("Yocto Test Driver");
+MODULE_LICENSE("GPL");
-- 
1.9.1


--------------8F239E07E3924D41D40D6BE0--
