Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B629AC6FA82
	for <webhook@archiver.kernel.org>; Sat, 10 Sep 2022 23:05:58 +0000 (UTC)
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com
 [64.147.123.21])
 by mx.groups.io with SMTP id smtpd.web11.4836.1662851153531125440
 for <yocto@lists.yoctoproject.org>;
 Sat, 10 Sep 2022 16:05:53 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gherzan.com header.s=fm3
 header.b=V7nZoM+V;
 spf=pass (domain: gherzan.com, ip: 64.147.123.21,
 mailfrom: andrei@gherzan.com)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 7AD8F320046E;
	Sat, 10 Sep 2022 19:05:52 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Sat, 10 Sep 2022 19:05:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm3; t=1662851151; x=1662937551; bh=/+
	qNz9eI1tpIewHhIhsTnq+vj9jM9GtfV1eEP91O6hk=; b=V7nZoM+VPQDqqAMI9u
	wbOkDNBo4dUekiP8pawoG2o53UiJtK4/ict8jMG4wyABCG+m33kMta1qk04djHbD
	f3ZTEB9nzgu7p64eWSdQYGKyJPt6N7TJu7ZLA9Hqkod3W9gYnBjruD7nIaIczDDS
	bHtvDCfmMMJeb0sArPteLhZtcqDReguk5+UuoUBtHl2oX/CeBzz8BN2yJHcaBnwB
	AW3rKCZEN5fTrUvFbkz44CpVZ6f+7FvqKnSGjS+yxEvh1ToRmo9uNFgxZHdl1xN3
	ZzYYWl9rx4QlrrnjDnbh5IdLehFxyG0q9wVoyX94oboqZyR5ULhoNDtTHhMaDAa6
	BAnQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; t=1662851151; x=1662937551; bh=/+qNz9eI1tpIe
	wHhIhsTnq+vj9jM9GtfV1eEP91O6hk=; b=ZiAtYtvEHsGsYAYifEJXsB/ivmewN
	cyi/2ocknnuo5Ni+z9UqxM0gAZWLT7FOLfxuh8sHEFi+qbvYAFuCXwnOzoi0dki+
	SJyDv9dptmQwQRLd0ideZgq5lkLvYKLPig73gHAZVKdBtkx8cI0fW+pr24eXOI7m
	MuVOUZPikrCxechCMIoWfrXJ3sBWaZe0DCtpSWrz2TghB45Sl81jCcUSQ1BYUp3e
	atTUiYVhDqoo2gNl+uCL7F6WXWwOwTZnFp1m+IP+ammSSrKvnOg6GYtzm6xPG4yz
	/NzyXWuuiZMdzmMo55RtwSOyAYJNkAnIfcPXJyAhIvzH00qzWq+NRrTog==
X-ME-Sender: <xms:TxgdY3AV4l89U75tIp6b2ytWI_l0remqme2gJRbRf10JwOylEJUg0w>
    <xme:TxgdY9jcux3GnFIOBZcvSeRzAJwkLKJn15326JBYK8ABXMnP0_xIJeM9uirC3r_ha
    LKAoqrKhlHKpGck4Vk>
X-ME-Received: 
 <xmr:TxgdYylw508Qs6v1PzIc8lrNIFWu7zA3O9_71QItgeQIVx-WdlvdaJ4iwdSpmFfrGx8BRHZMhpp4sNNd1yUDyoG5DyBhiaOkGOK-P3eH026uUbBijc7DczH2>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvfedrfedtkedgudelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
    ertdertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihes
    ghhhvghriigrnhdrtghomheqnecuggftrfgrthhtvghrnhepjefhvefhgefgffejgeelke
    ejleeiffejgffgkeeggfffgfffieeffeeghefhtdffnecuvehluhhsthgvrhfuihiivgep
    tdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvghisehghhgvrhiirghnrdgtoh
    hm
X-ME-Proxy: <xmx:TxgdY5wD_ywTJkBDMaYGZNe22uLXTDpQA_ra41i2wkIAWUOSgZqkew>
    <xmx:TxgdY8R15h33EYVvN_J3aAXFAHemIfmAnNgjm22pI_42FZsN5cwFHQ>
    <xmx:TxgdY8bYhNI_GWAqbX2pXIlZ6nZDNUJSvAn6OHPoW_t-7Q5qfKK3Bg>
    <xmx:TxgdY3JmALUl7xsZaOqPR84insW-yyX7lSPQrcFfv56nTx0F45RJJQ>
Feedback-ID: i68994715:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 10 Sep 2022 19:05:51 -0400 (EDT)
From: Andrei Gherzan <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: andrei@gherzan.com,
	Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-raspberrypi][PATCH 4/5] Add support for a multi kernel
 Raspberry Pi machine
Date: Sun, 11 Sep 2022 01:05:30 +0200
Message-Id: <20220910230531.4084156-5-andrei@gherzan.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220910230531.4084156-1-andrei@gherzan.com>
References: <20220910230531.4084156-1-andrei@gherzan.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 10 Sep 2022 23:05:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58016

From: Andrei Gherzan <andrei.gherzan@huawei.com>

The new raspberrypi-armv7.conf aims at supporting all the armv7
Raspberry Pi boards.

This initial support was tested on:
* Raspberry Pi 4 Model B
* Raspberry Pi 3 Model B
* Raspberry Pi 0 2 WiFi

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 conf/machine/include/rpi-default-versions.inc |  1 +
 conf/machine/raspberrypi-armv7.conf           | 39 +++++++++++++++++++
 docs/layer-contents.md                        | 16 ++++++++
 recipes-kernel/linux/linux-raspberrypi-v7.inc | 13 +++++++
 .../linux/linux-raspberrypi-v7_5.10.bb        |  6 +++
 .../linux/linux-raspberrypi-v7_5.15.bb        |  6 +++
 recipes-kernel/linux/linux-raspberrypi.inc    |  1 +
 .../linux/linux-raspberrypi_5.15.bb           | 12 ++++++
 8 files changed, 94 insertions(+)
 create mode 100644 conf/machine/raspberrypi-armv7.conf
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-v7.inc
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-v7_5.10.bb
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-v7_5.15.bb

diff --git a/conf/machine/include/rpi-default-versions.inc b/conf/machine/include/rpi-default-versions.inc
index 8ff2839..a29fd5e 100644
--- a/conf/machine/include/rpi-default-versions.inc
+++ b/conf/machine/include/rpi-default-versions.inc
@@ -1,3 +1,4 @@
 # RaspberryPi BSP default versions
 
 PREFERRED_VERSION_linux-raspberrypi ??= "5.15.%"
+PREFERRED_VERSION_linux-raspberrypi-v7 ??= "${PREFERRED_VERSION_linux-raspberrypi}"
diff --git a/conf/machine/raspberrypi-armv7.conf b/conf/machine/raspberrypi-armv7.conf
new file mode 100644
index 0000000..cb2e5a2
--- /dev/null
+++ b/conf/machine/raspberrypi-armv7.conf
@@ -0,0 +1,39 @@
+# SPDX-FileCopyrightText: Andrei Gherzan <andrei.gherzan@huawei.com>
+#
+# SPDX-License-Identifier: MIT
+
+#@TYPE: Machine
+#@NAME: RaspberryPi Development Boards (32bit)
+#@DESCRIPTION: Machine configuration for the RaspberryPi boards in 32 bit mode
+
+DEFAULTTUNE ?= "cortexa7thf-neon-vfpv4"
+require conf/machine/include/arm/armv7a/tune-cortexa7.inc
+include conf/machine/include/rpi-base.inc
+
+# This machine includes by default the kernel for v7l. We hook in support for
+# v7.
+RASPBERRYPI_v7_KERNEL = "linux-raspberrypi-v7"
+RASPBERRYPI_v7_KERNEL_PACKAGE_NAME = "kernel-v7"
+RASPBERRYPI_v7_KERNEL_FILE ?= "kernel7.img"
+# We don't need a lot for v7l because it is the default provider,
+# virtual/kernel.
+RASPBERRYPI_v7l_KERNEL_FILE ?= "kernel7l.img"
+
+MACHINE_FEATURES += "pci"
+MACHINE_EXTRA_RRECOMMENDS += "\
+    linux-firmware-rpidistro-bcm43430 \
+    linux-firmware-rpidistro-bcm43436 \
+    linux-firmware-rpidistro-bcm43436s \
+    linux-firmware-rpidistro-bcm43455 \
+    linux-firmware-rpidistro-bcm43456 \
+    bluez-firmware-rpidistro-bcm43430a1-hcd \
+    bluez-firmware-rpidistro-bcm43430b0-hcd \
+    bluez-firmware-rpidistro-bcm4345c0-hcd \
+    bluez-firmware-rpidistro-bcm4345c5-hcd \
+"
+
+# FIXME: This machine doesn't support u-boot (yet)
+RPI_EXTRA_IMAGE_BOOT_FILES = " \
+	${KERNEL_IMAGETYPE};${RASPBERRYPI_v7l_KERNEL_FILE} \
+	${RASPBERRYPI_v7_KERNEL_PACKAGE_NAME}/${KERNEL_IMAGETYPE};${RASPBERRYPI_v7_KERNEL_FILE} \
+"
diff --git a/docs/layer-contents.md b/docs/layer-contents.md
index d12cb88..aa28a23 100644
--- a/docs/layer-contents.md
+++ b/docs/layer-contents.md
@@ -16,6 +16,22 @@
 
 Note: The raspberrypi3 machines include support for Raspberry Pi 3B+.
 
+## Multi-board Machines
+
+This layer generally provides support for machines that are targetting a single
+Raspberry Pi board (or a very few subsets of them). This is so that the build
+infrastructure can tune and tweak the configuration with the flexibility to
+optimise for both runtime performance and disk storage.
+
+For usecases where compatibility of more boards is required, the layer provides
+machines that are tagetting a wider support of Raspberry Pi boards.
+
+### raspberrypi-armv7
+
+This machine targets support for all the ARMv7-based Raspberry Pi boards. It
+will pull in the firmware and deploy the kernel image and kernel modules for
+all the relevant boards.
+
 ## Images
 
 * rpi-test-image
diff --git a/recipes-kernel/linux/linux-raspberrypi-v7.inc b/recipes-kernel/linux/linux-raspberrypi-v7.inc
new file mode 100644
index 0000000..77debc4
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi-v7.inc
@@ -0,0 +1,13 @@
+# SPDX-FileCopyrightText: Andrei Gherzan <andrei.gherzan@huawei.com>
+#
+# SPDX-License-Identifier: MIT
+
+KBUILD_DEFCONFIG:raspberrypi-armv7 = "bcm2709_defconfig"
+KERNEL_PACKAGE_NAME = "${RASPBERRYPI_v7_KERNEL_PACKAGE_NAME}"
+PROVIDES:remove = "virtual/kernel"
+
+KERNEL_IMAGETYPE_DIRECT ?= "zImage"
+
+COMPATIBLE_MACHINE = "^raspberrypi-armv7$"
+
+KERNEL_DEVICETREE = ""
diff --git a/recipes-kernel/linux/linux-raspberrypi-v7_5.10.bb b/recipes-kernel/linux/linux-raspberrypi-v7_5.10.bb
new file mode 100644
index 0000000..d594b61
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi-v7_5.10.bb
@@ -0,0 +1,6 @@
+# SPDX-FileCopyrightText: Andrei Gherzan <andrei.gherzan@huawei.com>
+#
+# SPDX-License-Identifier: MIT
+
+require linux-raspberrypi-v7.inc
+require linux-raspberrypi_5.10.bb
diff --git a/recipes-kernel/linux/linux-raspberrypi-v7_5.15.bb b/recipes-kernel/linux/linux-raspberrypi-v7_5.15.bb
new file mode 100644
index 0000000..7883985
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi-v7_5.15.bb
@@ -0,0 +1,6 @@
+# SPDX-FileCopyrightText: Andrei Gherzan <andrei.gherzan@huawei.com>
+#
+# SPDX-License-Identifier: MIT
+
+require linux-raspberrypi-v7.inc
+require linux-raspberrypi_5.15.bb
diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index 6362a73..2a651bd 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -26,6 +26,7 @@ KBUILD_DEFCONFIG:raspberrypi3 ?= "bcm2709_defconfig"
 KBUILD_DEFCONFIG:raspberrypi3-64 ?= "bcmrpi3_defconfig"
 KBUILD_DEFCONFIG:raspberrypi4 ?= "bcm2711_defconfig"
 KBUILD_DEFCONFIG:raspberrypi4-64 ?= "bcm2711_defconfig"
+KBUILD_DEFCONFIG:raspberrypi-armv7 ?= "bcm2711_defconfig"
 
 LINUX_VERSION_EXTENSION ?= ""
 
diff --git a/recipes-kernel/linux/linux-raspberrypi_5.15.bb b/recipes-kernel/linux/linux-raspberrypi_5.15.bb
index db93537..468737c 100644
--- a/recipes-kernel/linux/linux-raspberrypi_5.15.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_5.15.bb
@@ -17,3 +17,15 @@ SRC_URI = " \
 require linux-raspberrypi.inc
 
 KERNEL_DTC_FLAGS += "-@ -H epapr"
+
+RDEPENDS:${KERNEL_PACKAGE_NAME}:raspberrypi-armv7:append = " ${RASPBERRYPI_v7_KERNEL_PACKAGE_NAME}"
+RDEPENDS:${KERNEL_PACKAGE_NAME}-base:raspberrypi-armv7:append = " ${RASPBERRYPI_v7_KERNEL_PACKAGE_NAME}-base"
+RDEPENDS:${KERNEL_PACKAGE_NAME}-image:raspberrypi-armv7:append = " ${RASPBERRYPI_v7_KERNEL_PACKAGE_NAME}-image"
+RDEPENDS:${KERNEL_PACKAGE_NAME}-dev:raspberrypi-armv7:append = " ${RASPBERRYPI_v7_KERNEL_PACKAGE_NAME}-dev"
+RDEPENDS:${KERNEL_PACKAGE_NAME}-vmlinux:raspberrypi-armv7:append = " ${RASPBERRYPI_v7_KERNEL_PACKAGE_NAME}-vmlinux"
+RDEPENDS:${KERNEL_PACKAGE_NAME}-modules:raspberrypi-armv7:append = " ${RASPBERRYPI_v7_KERNEL_PACKAGE_NAME}-modules"
+RDEPENDS:${KERNEL_PACKAGE_NAME}-dbg:raspberrypi-armv7:append = " ${RASPBERRYPI_v7_KERNEL_PACKAGE_NAME}-dbg"
+
+DEPLOYDEP = ""
+DEPLOYDEP:raspberrypi-armv7 = "${RASPBERRYPI_v7_KERNEL}:do_deploy"
+do_deploy[depends] += "${DEPLOYDEP}"
-- 
2.25.1


