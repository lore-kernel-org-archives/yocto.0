Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8D55ECAAD8
	for <webhook@archiver.kernel.org>; Tue, 13 Sep 2022 21:22:38 +0000 (UTC)
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 by mx.groups.io with SMTP id smtpd.web09.788.1663104157513547212
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Sep 2022 14:22:37 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gherzan.com header.s=fm3
 header.b=K0NZovsS;
 spf=pass (domain: gherzan.com, ip: 64.147.123.19,
 mailfrom: andrei@gherzan.com)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id BFDA53200956;
	Tue, 13 Sep 2022 17:22:36 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Tue, 13 Sep 2022 17:22:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm3; t=1663104156; x=1663190556; bh=jh
	cKgElRNs6CknqgJGzMBfcViJv/CqI4wWdC0DffD3c=; b=K0NZovsSIUE+3ljHr+
	ZlOAsTgj0gG7Iw16b1UvjfpUuQBFF+bEmYV3y4/jMC6RL97OW4puiO8fGhVNJz8F
	q8F6/MDpVjpbEInkZIWj8qFJFIBVSp5l+IHXP5c6Hj3iapecRTuLx17J8OcdVapX
	dIb9ZEoBqq7EGG3YzJTlQPW9VQEGvk383avYxHAcJxnR6CfycIgcVOUQWScRNaGi
	ySn07hlYyigpf59cEUGDXH7fQyLXn5u5MnCDj+PLAzBgqktueP2ESvcU9a2kVlfs
	Rysvozc/oMAyZVXAX2n5xVBGTLpcOApuXttri2IYFdLtfbXVJA7SzKrfs4Hft1PK
	txSg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; t=1663104156; x=1663190556; bh=jhcKgElRNs6Ck
	nqgJGzMBfcViJv/CqI4wWdC0DffD3c=; b=WF3VgVZ8EONVeRFfeRl9kB4p2JXUU
	SERIs5fCLdSqnv4fgclzC8PAqhGaOP26GG6Qt8f43fU+BehXutLhmAIIw+8L1qMV
	59H9nhf9U3pWQYGlY6ddT390w1IDLdFzP0aSccRjsChhZ2LaGO79jCDk+sR9abGW
	FK47YHkpbqNzEsj2PyDuixkIp59bS2P2ZbX/K6yJHFsw3i6YAxkZBUbuprLfu8Se
	71fTwTjjZlcnksryNi/uywba290yOvc3FLShwDcAnBDEQrc2iAnu7cbWT9AZWjnR
	2tL5dvV6W0MAPWqZldRnvj987ClDl2hBY9Ql9buc+44qxMeEx3ssaHE1g==
X-ME-Sender: <xms:nPQgYybEAjxq4w2t4AuGcAJGdyc55KD0XvBdjr9S7mQH1PE7_6baZg>
    <xme:nPQgY1bEZRjWQ5xqILUOAFTAlBkfEhJhTdO17r4FXCSIeUpVE6YpnP9mJ2Fxg3opl
    OCQjjVYhumaOQ-yUwY>
X-ME-Received: 
 <xmr:nPQgY880YlxY75ULoNwOZkCTK4YFuSl2aGhBs4jOqsHFueM7JzAATrIcIl1dDzLJqogsfl5kXF1kjs0OBo2-wNBjKH8orwYtGyiYfrc0cFHm7uRMRb4PhUiE>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvfedrfedugedgudeifecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestd
    ekredtredttdenucfhrhhomheptehnughrvghiucfihhgvrhiirghnuceorghnughrvghi
    sehghhgvrhiirghnrdgtohhmqeenucggtffrrghtthgvrhhnpeejhfevhfeggfffjeegle
    ekjeelieffjefggfekgefgfffgffeifeefgeehhfdtffenucevlhhushhtvghrufhiiigv
    pedunecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvihesghhhvghriigrnhdrtg
    homh
X-ME-Proxy: <xmx:nPQgY0ri-Qa4vCSN_3hfVtUNRynv-FFfDt32yDr_7IuX-gO4tPQqkg>
    <xmx:nPQgY9qZL35VAEW7GoCumRG70MhFCf2_C0GJQOCToL9upn_-PHHJYg>
    <xmx:nPQgYyT6XOAEIBQlbKK6tgGBd6TC88tAdwsryFLOjqgmUjavI9Jofw>
    <xmx:nPQgY-Asy99Ipt8UnU_tDp4SdT7Zz1wKCGRI0OwFjBfbfz1KiJWIhg>
Feedback-ID: i68994715:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 13 Sep 2022 17:22:35 -0400 (EDT)
From: Andrei Gherzan <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: andrei@gherzan.com,
	Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-raspberrypi][PATCH v2 6/7] Add support for a ARMv8 machine
 supporting multiple Raspberry Pi boards
Date: Tue, 13 Sep 2022 23:22:03 +0200
Message-Id: <20220913212204.3210494-7-andrei@gherzan.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220913212204.3210494-1-andrei@gherzan.com>
References: <20220913212204.3210494-1-andrei@gherzan.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Sep 2022 21:22:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58035

From: Andrei Gherzan <andrei.gherzan@huawei.com>

The new raspberrypi-armv8.conf aims at supporting all the ARMv8
Raspberry Pi boards.

This initial support was tested on:
* Raspberry Pi 4 Model B
* Raspberry Pi 3 Model B
* Raspberry Pi 0 2 WiFi

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 conf/machine/raspberrypi-armv8.conf        | 43 ++++++++++++++++++++++
 docs/layer-contents.md                     |  6 +++
 recipes-kernel/linux/linux-raspberrypi.inc |  1 +
 3 files changed, 50 insertions(+)
 create mode 100644 conf/machine/raspberrypi-armv8.conf

diff --git a/conf/machine/raspberrypi-armv8.conf b/conf/machine/raspberrypi-armv8.conf
new file mode 100644
index 0000000..fb3ffa8
--- /dev/null
+++ b/conf/machine/raspberrypi-armv8.conf
@@ -0,0 +1,43 @@
+# SPDX-FileCopyrightText: Andrei Gherzan <andrei.gherzan@huawei.com>
+#
+# SPDX-License-Identifier: MIT
+
+#@TYPE: Machine
+#@NAME: RaspberryPi Development Boards (64bit)
+#@DESCRIPTION: Machine configuration for the RaspberryPi boards in 64 bit mode
+
+require conf/machine/include/arm/armv8a/tune-cortexa53.inc
+include conf/machine/include/rpi-base.inc
+
+MACHINE_FEATURES += "pci"
+MACHINE_EXTRA_RRECOMMENDS += "\
+    linux-firmware-rpidistro-bcm43430 \
+    linux-firmware-rpidistro-bcm43455 \
+    linux-firmware-rpidistro-bcm43456 \
+    linux-firmware-rpidistro-bcm43436 \
+    linux-firmware-rpidistro-bcm43436s \
+    bluez-firmware-rpidistro-bcm43430a1-hcd \
+    bluez-firmware-rpidistro-bcm43430b0-hcd \
+    bluez-firmware-rpidistro-bcm4345c0-hcd \
+    bluez-firmware-rpidistro-bcm4345c5-hcd \
+"
+
+RPI_KERNEL_DEVICETREE = " \
+    broadcom/bcm2710-rpi-3-b.dtb \
+    broadcom/bcm2710-rpi-3-b-plus.dtb \
+    broadcom/bcm2837-rpi-3-b.dtb \
+    broadcom/bcm2710-rpi-cm3.dtb \
+    broadcom/bcm2710-rpi-zero-2.dtb \
+    broadcom/bcm2711-rpi-4-b.dtb \
+    broadcom/bcm2711-rpi-400.dtb \
+    broadcom/bcm2711-rpi-cm4.dtb \
+"
+
+SDIMG_KERNELIMAGE ?= "kernel8.img"
+KERNEL_IMAGETYPE_UBOOT ?= "Image"
+KERNEL_IMAGETYPE_DIRECT ?= "Image"
+KERNEL_BOOTCMD ?= "booti"
+UBOOT_MACHINE = "rpi_arm64_config"
+SERIAL_CONSOLES ?= "115200;ttyS0"
+
+VC4DTBO ?= "vc4-fkms-v3d"
diff --git a/docs/layer-contents.md b/docs/layer-contents.md
index aa28a23..3882339 100644
--- a/docs/layer-contents.md
+++ b/docs/layer-contents.md
@@ -32,6 +32,12 @@ This machine targets support for all the ARMv7-based Raspberry Pi boards. It
 will pull in the firmware and deploy the kernel image and kernel modules for
 all the relevant boards.
 
+### raspberrypi-armv8
+
+This machine targets support for all the ARMv8-based Raspberry Pi boards. It
+will pull in the firmware and deploy the kernel image and kernel modules for
+all the relevant boards.
+
 ## Images
 
 * rpi-test-image
diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index 2a651bd..be1883c 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -27,6 +27,7 @@ KBUILD_DEFCONFIG:raspberrypi3-64 ?= "bcmrpi3_defconfig"
 KBUILD_DEFCONFIG:raspberrypi4 ?= "bcm2711_defconfig"
 KBUILD_DEFCONFIG:raspberrypi4-64 ?= "bcm2711_defconfig"
 KBUILD_DEFCONFIG:raspberrypi-armv7 ?= "bcm2711_defconfig"
+KBUILD_DEFCONFIG:raspberrypi-armv8 ?= "bcm2711_defconfig"
 
 LINUX_VERSION_EXTENSION ?= ""
 
-- 
2.25.1


