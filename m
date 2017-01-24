Return-Path: <mirza.krak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC7D7E00B7A; Tue, 24 Jan 2017 11:30:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mirza.krak[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.66 listed in dnsbl.sorbs.net]
Received: from mail-lf0-f66.google.com (mail-lf0-f66.google.com
	[209.85.215.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71F5AE007CE
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2017 11:30:53 -0800 (PST)
Received: by mail-lf0-f66.google.com with SMTP id h65so18438222lfi.3
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2017 11:30:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=P8rqP9O6N5Nfjca0ytMdz6Lm1z811cbBahNz2MKYcwU=;
	b=ZKy2G8ut0EYvfzucGcHuQw2W/6S9fO76Uw3LFthwA3lScZYnBKlAqbVC5HtMwJrqIl
	ssgdDNMy+wiTS1skXNaIv9j+NsKbGMmhMNQyu1tm2hD8SmX4NLltjg5wX2UcUGtK7GMe
	K7+M1uykrR2wTmeo149mvvVKjZscV9gU0WGAusmQnHlzJCN2Jpe48Pk5wnN2oC9XzE+y
	vBFkUZlspIUcj06itr8rmHALl15yFBWQ2tLktxP+NJlKvLv0BxKxLLjI7Syu8AVtJsqd
	Y1PRyfeU0rw//WUBEo5i9GVTj6Xv9LwUq7D7UKDzmSuf/kyReaF2rIYugdrB6PydOp2x
	23uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=P8rqP9O6N5Nfjca0ytMdz6Lm1z811cbBahNz2MKYcwU=;
	b=tqqprl9lsprxOkmDSNyiBh/wPVHZAMr5AqH1+GTyD6KBJKuuJdfcde90NkRtzqbSxu
	2QyXIZCr8OJJEf89B0F3IC5rhjDAk1W/8atwVm8UCrSnMh53ClOdo/OaPIO4OkpIBfze
	RrR5AwBzJZc3pQ/Ykq/LXEv30eaKbZyzPLbTxNJ2M9NzQE9syZY99wq+s/1cjz2Mylz9
	edpnvPg32sSq8iyxBQyYmk0MtvrCenBy9u+G780JZljZWxPVvJPXqN8vQyWlMysXy03M
	5vMnx6bJJFHhYZlXihKyueIP6fIQROsQ2wd4JV0qXaXFOLuEEaUQ1E/1mST1BrnkpDLe
	FPBg==
X-Gm-Message-State: AIkVDXJbk5wxudwlqlpL2gshbvA/zZNg+DMGUleMTt2yVxcgjuRKlcDOJF3lIRDQaMFIqQ==
X-Received: by 10.25.32.149 with SMTP id g143mr11671471lfg.7.1485286251954;
	Tue, 24 Jan 2017 11:30:51 -0800 (PST)
Received: from debian.lan (78-71-171-99-no154.tbcn.telia.com. [78.71.171.99])
	by smtp.gmail.com with ESMTPSA id
	h23sm7758888lji.34.2017.01.24.11.30.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 24 Jan 2017 11:30:51 -0800 (PST)
From: Mirza Krak <mirza.krak@gmail.com>
X-Google-Original-From: Mirza Krak < mirza.krak@gmail.com >
To: yocto@yoctoproject.org
Date: Tue, 24 Jan 2017 19:32:04 +0100
Message-Id: <1485282724-16153-1-git-send-email-mirza.krak@gmail.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH] u-boot: drop backported patches
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
X-List-Received-Date: Tue, 24 Jan 2017 19:30:56 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Mirza Krak <mirza.krak@gmail.com>

U-boot has been updated to 2017.01 in poky/oe-core which contains these
patches.

Signed-off-by: Mirza Krak <mirza.krak@gmail.com>
---
 ...0001-arm-add-save_boot_params-for-ARM1176.patch |  56 --------
 ...through-of-the-firmware-provided-FDT-blob.patch | 156 ---------------------
 recipes-bsp/u-boot/u-boot_%.bbappend               |   5 -
 3 files changed, 217 deletions(-)
 delete mode 100644 recipes-bsp/u-boot/files/0001-arm-add-save_boot_params-for-ARM1176.patch
 delete mode 100644 recipes-bsp/u-boot/files/0002-rpi-passthrough-of-the-firmware-provided-FDT-blob.patch

diff --git a/recipes-bsp/u-boot/files/0001-arm-add-save_boot_params-for-ARM1176.patch b/recipes-bsp/u-boot/files/0001-arm-add-save_boot_params-for-ARM1176.patch
deleted file mode 100644
index a5ebff5..0000000
--- a/recipes-bsp/u-boot/files/0001-arm-add-save_boot_params-for-ARM1176.patch
+++ /dev/null
@@ -1,56 +0,0 @@
-From 3e10fcde3f3c24a488866dd33fa3f5d46ff3d7a3 Mon Sep 17 00:00:00 2001
-From: =?UTF-8?q?C=C3=A9dric=20Schieli?= <cschieli@gmail.com>
-Date: Fri, 11 Nov 2016 11:59:06 +0100
-Subject: [PATCH] arm: add save_boot_params for ARM1176
-MIME-Version: 1.0
-Content-Type: text/plain; charset=UTF-8
-Content-Transfer-Encoding: 8bit
-
-Implement a hook to allow boards to save boot-time CPU state for later
-use. When U-Boot is chain-loaded by another bootloader, CPU registers may
-contain useful information such as system configuration information. This
-feature mirrors the equivalent ARMv7 feature.
-
-Signed-off-by: Cédric Schieli <cschieli@gmail.com>
-Acked-by: Stephen Warren <swarren@nvidia.com>
-Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
-Upstream-status: Backport
----
- arch/arm/cpu/arm1176/start.S | 10 ++++++++++
- 1 file changed, 10 insertions(+)
-
-diff --git a/arch/arm/cpu/arm1176/start.S b/arch/arm/cpu/arm1176/start.S
-index a602d4e..7c00201 100644
---- a/arch/arm/cpu/arm1176/start.S
-+++ b/arch/arm/cpu/arm1176/start.S
-@@ -16,6 +16,7 @@
- 
- #include <asm-offsets.h>
- #include <config.h>
-+#include <linux/linkage.h>
- 
- #ifndef CONFIG_SYS_PHY_UBOOT_BASE
- #define CONFIG_SYS_PHY_UBOOT_BASE	CONFIG_SYS_UBOOT_BASE
-@@ -37,6 +38,11 @@
- 	.globl reset
- 
- reset:
-+	/* Allow the board to save important registers */
-+	b	save_boot_params
-+.globl	save_boot_params_ret
-+save_boot_params_ret:
-+
- 	/*
- 	 * set the cpu to SVC32 mode
- 	 */
-@@ -110,3 +116,7 @@ mmu_disable_phys:
- c_runtime_cpu_setup:
- 
- 	mov	pc, lr
-+
-+WEAK(save_boot_params)
-+	b	save_boot_params_ret	/* back to my caller */
-+ENDPROC(save_boot_params)
--- 
-2.1.4
-
diff --git a/recipes-bsp/u-boot/files/0002-rpi-passthrough-of-the-firmware-provided-FDT-blob.patch b/recipes-bsp/u-boot/files/0002-rpi-passthrough-of-the-firmware-provided-FDT-blob.patch
deleted file mode 100644
index 323b7ab..0000000
--- a/recipes-bsp/u-boot/files/0002-rpi-passthrough-of-the-firmware-provided-FDT-blob.patch
+++ /dev/null
@@ -1,156 +0,0 @@
-From ade243a211d62327e9ebadce27bbbff7981e37f0 Mon Sep 17 00:00:00 2001
-From: =?UTF-8?q?C=C3=A9dric=20Schieli?= <cschieli@gmail.com>
-Date: Fri, 11 Nov 2016 11:59:07 +0100
-Subject: [PATCH] rpi: passthrough of the firmware provided FDT blob
-MIME-Version: 1.0
-Content-Type: text/plain; charset=UTF-8
-Content-Transfer-Encoding: 8bit
-
-Raspberry firmware used to pass a FDT blob at a fixed address (0x100),
-but this is not true anymore. The address now depends on both the
-memory size and the blob size [1].
-
-If one wants to passthrough this FDT blob to the kernel, the most
-reliable way is to save its address from the r2/x0 register in the
-U-Boot entry point and expose it in a environment variable for
-further processing.
-
-This patch just does this:
-- save the provided address in the global variable fw_dtb_pointer
-- expose it in ${fdt_addr} if it points to a a valid FDT blob
-
-There are many different ways to use it. One can, for example, use
-the following script which will extract from the tree the command
-line built by the firmware, then hand over the blob to a previously
-loaded kernel:
-
-fdt addr ${fdt_addr}
-fdt get value bootargs /chosen bootargs
-bootz ${kernel_addr_r} - ${fdt_addr}
-
-Alternatively, users relying on sysboot/pxe can simply omit any FDT
-statement in their extlinux.conf file, U-Boot will automagically pick
-${fdt_addr} and pass it to the kernel.
-
-[1] https://www.raspberrypi.org/forums//viewtopic.php?f=107&t=134018
-
-Upstream-Status: Backport
-
-Signed-off-by: Cédric Schieli <cschieli@gmail.com>
-Acked-by: Stephen Warren <swarren@nvidia.com>
-Signed-off-by: Jonathan Liu <net147@gmail.com>
----
- board/raspberrypi/rpi/Makefile        |  1 +
- board/raspberrypi/rpi/lowlevel_init.S | 36 +++++++++++++++++++++++++++++++++++
- board/raspberrypi/rpi/rpi.c           | 29 ++++++++++++++++++++++++++++
- 3 files changed, 66 insertions(+)
- create mode 100644 board/raspberrypi/rpi/lowlevel_init.S
-
-diff --git a/board/raspberrypi/rpi/Makefile b/board/raspberrypi/rpi/Makefile
-index 4ce2c98..dcb25ac 100644
---- a/board/raspberrypi/rpi/Makefile
-+++ b/board/raspberrypi/rpi/Makefile
-@@ -5,3 +5,4 @@
- #
- 
- obj-y	:= rpi.o
-+obj-y	+= lowlevel_init.o
-diff --git a/board/raspberrypi/rpi/lowlevel_init.S b/board/raspberrypi/rpi/lowlevel_init.S
-new file mode 100644
-index 0000000..cdbd8e1
---- /dev/null
-+++ b/board/raspberrypi/rpi/lowlevel_init.S
-@@ -0,0 +1,36 @@
-+/*
-+ * (C) Copyright 2016
-+ * Cédric Schieli <cschieli@gmail.com>
-+ *
-+ * SPDX-License-Identifier:	GPL-2.0+
-+ */
-+
-+#include <config.h>
-+
-+.align 8
-+.global fw_dtb_pointer
-+fw_dtb_pointer:
-+#ifdef CONFIG_ARM64
-+	.dword 0x0
-+#else
-+	.word 0x0
-+#endif
-+
-+/*
-+ * Routine: save_boot_params (called after reset from start.S)
-+ * Description: save ATAG/FDT address provided by the firmware at boot time
-+ */
-+
-+.global save_boot_params
-+save_boot_params:
-+
-+	/* The firmware provided ATAG/FDT address can be found in r2/x0 */
-+#ifdef CONFIG_ARM64
-+	adr	x8, fw_dtb_pointer
-+	str	x0, [x8]
-+#else
-+	str	r2, fw_dtb_pointer
-+#endif
-+
-+	/* Returns */
-+	b	save_boot_params_ret
-diff --git a/board/raspberrypi/rpi/rpi.c b/board/raspberrypi/rpi/rpi.c
-index 6245b36..ffd6d31 100644
---- a/board/raspberrypi/rpi/rpi.c
-+++ b/board/raspberrypi/rpi/rpi.c
-@@ -25,6 +25,9 @@
- 
- DECLARE_GLOBAL_DATA_PTR;
- 
-+/* From lowlevel_init.S */
-+extern unsigned long fw_dtb_pointer;
-+
- static const struct bcm2835_gpio_platdata gpio_platdata = {
- 	.base = BCM2835_GPIO_BASE,
- };
-@@ -285,6 +288,31 @@ static void set_fdtfile(void)
- 	setenv("fdtfile", fdtfile);
- }
- 
-+/*
-+ * If the firmware provided a valid FDT at boot time, let's expose it in
-+ * ${fdt_addr} so it may be passed unmodified to the kernel.
-+ */
-+static void set_fdt_addr(void)
-+{
-+	if (getenv("fdt_addr"))
-+		return;
-+
-+	if (fdt_magic(fw_dtb_pointer) != FDT_MAGIC)
-+		return;
-+
-+	setenv_hex("fdt_addr", fw_dtb_pointer);
-+}
-+
-+/*
-+ * Prevent relocation from stomping on a firmware provided FDT blob.
-+ */
-+unsigned long board_get_usable_ram_top(unsigned long total_size)
-+{
-+	if ((gd->ram_top - fw_dtb_pointer) > SZ_64M)
-+		return gd->ram_top;
-+	return fw_dtb_pointer & ~0xffff;
-+}
-+
- static void set_usbethaddr(void)
- {
- 	ALLOC_CACHE_ALIGN_BUFFER(struct msg_get_mac_address, msg, 1);
-@@ -356,6 +384,7 @@ static void set_serial_number(void)
- 
- int misc_init_r(void)
- {
-+	set_fdt_addr();
- 	set_fdtfile();
- 	set_usbethaddr();
- #ifdef CONFIG_ENV_VARS_UBOOT_RUNTIME_CONFIG
--- 
-2.10.2
-
diff --git a/recipes-bsp/u-boot/u-boot_%.bbappend b/recipes-bsp/u-boot/u-boot_%.bbappend
index 0edc8dc..3781666 100644
--- a/recipes-bsp/u-boot/u-boot_%.bbappend
+++ b/recipes-bsp/u-boot/u-boot_%.bbappend
@@ -1,6 +1 @@
-FILESEXTRAPATHS_prepend_rpi := "${THISDIR}/files:"
 RDEPENDS_${PN}_append_rpi = " rpi-u-boot-scr"
-SRC_URI_append_rpi = " \
-    file://0001-arm-add-save_boot_params-for-ARM1176.patch \
-    file://0002-rpi-passthrough-of-the-firmware-provided-FDT-blob.patch \
-    "
-- 
2.1.4


