Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9EADC6FA82
	for <webhook@archiver.kernel.org>; Tue, 13 Sep 2022 21:22:38 +0000 (UTC)
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 by mx.groups.io with SMTP id smtpd.web12.766.1663104148314517830
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Sep 2022 14:22:28 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gherzan.com header.s=fm3
 header.b=MyFHiwrK;
 spf=pass (domain: gherzan.com, ip: 64.147.123.19,
 mailfrom: andrei@gherzan.com)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 89ADF3200946;
	Tue, 13 Sep 2022 17:22:27 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Tue, 13 Sep 2022 17:22:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm3; t=1663104147; x=1663190547; bh=0j
	BdMYJKJ/7J8nu/EuhroqMeJj+WOVL2JgnjRb1cYNQ=; b=MyFHiwrKvvIBbkM+Ds
	ZlbJsiEnowrf5MN1r2J4mzv76JKmqBdTXw1CGTQBtViNH2eIgWhpl4/5RRrkZE4U
	JZQyv7BHHAgkn4pW5qKLWk8w+5sBCyMnD0vCBOYDoVOnABtkVKG6kTgc99il0u4i
	gbEQnno/CzpEADh3zrgUWshB0tO6QHbbne/IogSEV4qTD1FGsXqyWXvhMhFJJyKc
	sjtHyhjSRtK56oeuhSRdOOqTgZzzMityFMuMAU36B0WAQIK0/iU7TIAaUzVPBBzf
	W8QsrWNZkpJqxs4E3PWzYCzyKKfmI9vAxTs4eK6Qg6Jl65mliFEeIQlbVpN/pdzZ
	nUZQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; t=1663104147; x=1663190547; bh=0jBdMYJKJ/7J8
	nu/EuhroqMeJj+WOVL2JgnjRb1cYNQ=; b=s0LG43Vg1WRCjzNWjtZJr1WU4kfC0
	AuPuJrKN91XJdb2+uvSE7GnkGNm+UGfzdC6UETuohNApHWae7sUG+PQiwN5uIpqk
	L3QtCnek1XB3DsMouBfotQBC21OdCgEWnTXZ1XyuStx93BUHHlMkYuG1R0NQxpum
	rm53Khy5iGoZLuzUBPx2XeHSXk8jGj2fjHNAdrrwZYEJ+ZFB7wqROdeOZj6Mr7+v
	zch6qD4G9UQgFWDUHWpoGGhQ06Ed443mTp18KJp14YlWK8w5OKTkivdQjIiNSs+i
	sFKLMY+N05iMjYVtcy4Djxf4XxKjYsVtVPA/Fj4oagSikeASHRvifG50w==
X-ME-Sender: <xms:kvQgY6HtbltYOVuTeh8oNg_at8J9_aJyOGgjPhZ_Dc7wyrcbb598uw>
    <xme:kvQgY7XvG45fCmDFGY_1dzpBCd-OX8FKmzaq2JfOnAz5tWeQ4rR4cEVS00f9Apc_e
    9Rtk0QUrB2-2PG13n4>
X-ME-Received: 
 <xmr:kvQgY0IGfoMpV-w9gEvy29s0UuTBawo84LUN6MPUXfqX8v93BBT_JVeIYOSwOWR4ISxhgr0_HO9y6SjqHvd4jtd3TDC5HfK0rIlZzJ3O-hwjZVv7YumDhMkZ>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvfedrfedugedgudeigecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestd
    ekredtredttdenucfhrhhomheptehnughrvghiucfihhgvrhiirghnuceorghnughrvghi
    sehghhgvrhiirghnrdgtohhmqeenucggtffrrghtthgvrhhnpeejhfevhfeggfffjeegle
    ekjeelieffjefggfekgefgfffgffeifeefgeehhfdtffenucevlhhushhtvghrufhiiigv
    pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvihesghhhvghriigrnhdrtg
    homh
X-ME-Proxy: <xmx:k_QgY0FiA3z9AGEovG56Mt6MpeLU67MDZCVfpIHJq8IaAZ-tPd1qyw>
    <xmx:k_QgYwUA5wVRpsPH7_SHaQ9tKUolhpvfc1P3Q0M7qCnx02i95jnznQ>
    <xmx:k_QgY3Mc4uhI8aOShSx2HtVRu7utA4VzGKD9jycVNKwWzOd_t3SqLA>
    <xmx:k_QgY7cUMsQ0g1StbaAb8E_8dXJGKIhC42-qJEeXebQGGBhIxCdxeQ>
Feedback-ID: i68994715:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 13 Sep 2022 17:22:26 -0400 (EDT)
From: Andrei Gherzan <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: andrei@gherzan.com,
	Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-raspberrypi][PATCH v2 1/7] sdcard_image-rpi.bbclass: Move
 SDIMG_KERNELIMAGE definitions to their machines
Date: Tue, 13 Sep 2022 23:21:58 +0200
Message-Id: <20220913212204.3210494-2-andrei@gherzan.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220913212204.3210494-1-andrei@gherzan.com>
References: <20220913212204.3210494-1-andrei@gherzan.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Sep 2022 21:22:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58030

From: Andrei Gherzan <andrei.gherzan@huawei.com>

This unifies the configuration of SDIMG_KERNELIMAGE across machines.

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 classes/sdcard_image-rpi.bbclass  | 5 -----
 conf/machine/raspberrypi.conf     | 4 ++--
 conf/machine/raspberrypi2.conf    | 2 +-
 conf/machine/raspberrypi3-64.conf | 7 +++----
 4 files changed, 6 insertions(+), 12 deletions(-)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index a7b9ac8..178e4ef 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -25,11 +25,6 @@ inherit image_types
 # This image depends on the rootfs image
 IMAGE_TYPEDEP:rpi-sdimg = "${SDIMG_ROOTFS_TYPE}"
 
-# Kernel image name
-SDIMG_KERNELIMAGE:raspberrypi  ?= "kernel.img"
-SDIMG_KERNELIMAGE:raspberrypi2 ?= "kernel7.img"
-SDIMG_KERNELIMAGE:raspberrypi3-64 ?= "kernel8.img"
-
 # Boot partition volume id
 # Shorten raspberrypi to just rpi to keep it under 11 characters
 # now enforced by mkfs.vfat from dosfstools-4.2
diff --git a/conf/machine/raspberrypi.conf b/conf/machine/raspberrypi.conf
index b23687b..05263d7 100644
--- a/conf/machine/raspberrypi.conf
+++ b/conf/machine/raspberrypi.conf
@@ -7,8 +7,8 @@ DEFAULTTUNE ?= "arm1176jzfshf"
 require conf/machine/include/tune-arm1176jzf-s.inc
 include conf/machine/include/rpi-base.inc
 
-SERIAL_CONSOLES ?= "115200;ttyAMA0"
-
+SDIMG_KERNELIMAGE  ?= "kernel.img"
 UBOOT_MACHINE = "rpi_config"
+SERIAL_CONSOLES ?= "115200;ttyAMA0"
 
 ARMSTUB ?= "armstub.bin"
diff --git a/conf/machine/raspberrypi2.conf b/conf/machine/raspberrypi2.conf
index 403d15e..8cb859e 100644
--- a/conf/machine/raspberrypi2.conf
+++ b/conf/machine/raspberrypi2.conf
@@ -7,8 +7,8 @@ DEFAULTTUNE ?= "cortexa7thf-neon-vfpv4"
 require conf/machine/include/arm/armv7a/tune-cortexa7.inc
 include conf/machine/include/rpi-base.inc
 
+SDIMG_KERNELIMAGE ?= "kernel7.img"
 SERIAL_CONSOLES ?= "115200;ttyAMA0"
-
 UBOOT_MACHINE = "rpi_2_config"
 
 ARMSTUB ?= "armstub7.bin"
diff --git a/conf/machine/raspberrypi3-64.conf b/conf/machine/raspberrypi3-64.conf
index 95475f3..573b079 100644
--- a/conf/machine/raspberrypi3-64.conf
+++ b/conf/machine/raspberrypi3-64.conf
@@ -21,16 +21,15 @@ RPI_KERNEL_DEVICETREE = " \
     broadcom/bcm2710-rpi-cm3.dtb \
     "
 
-SERIAL_CONSOLES ?= "115200;ttyS0"
-
-UBOOT_MACHINE = "rpi_arm64_config"
-
+SDIMG_KERNELIMAGE ?= "kernel8.img"
 # When u-boot is enabled we need to use the "Image" format and the "booti"
 # command to load the kernel
 KERNEL_IMAGETYPE_UBOOT ?= "Image"
 # "zImage" not supported on arm64 and ".gz" images not supported by bootloader yet
 KERNEL_IMAGETYPE_DIRECT ?= "Image"
 KERNEL_BOOTCMD ?= "booti"
+UBOOT_MACHINE = "rpi_arm64_config"
+SERIAL_CONSOLES ?= "115200;ttyS0"
 
 VC4DTBO ?= "vc4-fkms-v3d"
 ARMSTUB ?= "armstub8.bin"
-- 
2.25.1


