Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB4FDC6FA8D
	for <webhook@archiver.kernel.org>; Sat, 10 Sep 2022 23:05:58 +0000 (UTC)
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com
 [64.147.123.21])
 by mx.groups.io with SMTP id smtpd.web12.4916.1662851149714878817
 for <yocto@lists.yoctoproject.org>;
 Sat, 10 Sep 2022 16:05:49 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gherzan.com header.s=fm3
 header.b=ZdGN8qQp;
 spf=pass (domain: gherzan.com, ip: 64.147.123.21,
 mailfrom: andrei@gherzan.com)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 233113200786;
	Sat, 10 Sep 2022 19:05:47 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Sat, 10 Sep 2022 19:05:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm3; t=1662851146; x=1662937546; bh=0j
	BdMYJKJ/7J8nu/EuhroqMeJj+WOVL2JgnjRb1cYNQ=; b=ZdGN8qQpaB4xmpx7KY
	/Qp9p9VJJjpkJW7TZ2YSDX5GCLZg72+th7ievH/Hz9+iOqYDETknST+MrrIPL8DH
	lpoYktpHX9DrM5soE1zprRcJQuX5cmq14bGuNs3sONK7SF0C7sxyx/jbPDtIrAz7
	fID0cGFJTvFw5PMglDuLXMkdSKn6mznRBTm6FSyUDzW0tCJdfgmYRQMUfhUBbW+n
	AveaGe6kmVxI1QGxifpf1kP8gsi7mqFDUXHMGB0Plmk0smhpaxOuAOcwa3uimmW/
	ltUIZK8YVtekloXXPCNWu111gO27KH7jENjuytvMTr4UTVEd3rxnWNzlfRj5Q/T9
	Il4Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; t=1662851146; x=1662937546; bh=0jBdMYJKJ/7J8
	nu/EuhroqMeJj+WOVL2JgnjRb1cYNQ=; b=jXNlw/iJ19PxXzSIwlk1Lc41FQofF
	h4t5nyCnZfVsawTX8XwmImEHQqffkj6FV9vtuL/cIY5YblFuYfDtPdo9p4+GMS7a
	su0t7rM+iLlYZCU0mGBScmVC5nY9ZKIJAuiPDHcOpNzINMHmZXSKPR92sHrvqPrK
	K68IT+U3ql3MS/QbW+fOslD8SK59j7fyu3eFD825YbdB6i35UYm6fsIYmlDx6SFq
	DMKIbSRd81zZWnkQyy3+MhwTbGHutJDATnoqLKf+81j34D9ov8U/zyE90BLfp/if
	9MXEeCqqmvM4p2N0JdRy5lICKRLNAMTLSAhHhmGJgED0BiE0e1VkHGOmg==
X-ME-Sender: <xms:ShgdY7BFpu7IjJhF6KBHKw6RLStGOiUE0_WAqnRYYpPgJk9O1ooutQ>
    <xme:ShgdYxjonSUR1tbe-O6hDNrtPfihBkY3PiIXbQECPsxcIEzPar38ho-QrSgUjcmI-
    5bxurEp393L75MeH_Q>
X-ME-Received: 
 <xmr:ShgdY2m6QaCYZMdKH4HI1Dr1qGT6bPUCPQzvyziCRKvcJyc_typd2ev8hY6LwQtCgexxiNlDu29yfDKwWs6crylhGpAvI5QAIzocSa-maPmVGZhriPnpRBlZ>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvfedrfedtkedgudelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
    ertdertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihes
    ghhhvghriigrnhdrtghomheqnecuggftrfgrthhtvghrnhepjefhvefhgefgffejgeelke
    ejleeiffejgffgkeeggfffgfffieeffeeghefhtdffnecuvehluhhsthgvrhfuihiivgep
    tdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvghisehghhgvrhiirghnrdgtoh
    hm
X-ME-Proxy: <xmx:ShgdY9wgJnW_QNlYqaziOcCZUJYNk3uIIPzvFW8z2nTIv2YIqmLVUA>
    <xmx:ShgdYwRq1XEKQeQYVgIY-ZyTCx3f3bmdDrNcGUXN5sYUsClsBYfiFw>
    <xmx:ShgdYwZYtOlB72FK8Sc2Rs6MMfp1ejhFS4vvyG6_zaP_vyYSEP_AyQ>
    <xmx:ShgdY7LrdUebgjCB7bR51Y9r3kyzqm5MLMFPO5jFDxkoEnOkQn7vvA>
Feedback-ID: i68994715:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 10 Sep 2022 19:05:45 -0400 (EDT)
From: Andrei Gherzan <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: andrei@gherzan.com,
	Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-raspberrypi][PATCH 1/5] sdcard_image-rpi.bbclass: Move
 SDIMG_KERNELIMAGE definitions to their machines
Date: Sun, 11 Sep 2022 01:05:27 +0200
Message-Id: <20220910230531.4084156-2-andrei@gherzan.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220910230531.4084156-1-andrei@gherzan.com>
References: <20220910230531.4084156-1-andrei@gherzan.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 10 Sep 2022 23:05:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58014

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


