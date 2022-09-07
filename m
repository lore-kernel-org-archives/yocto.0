Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F19DC6FA82
	for <webhook@archiver.kernel.org>; Wed,  7 Sep 2022 21:40:15 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 by mx.groups.io with SMTP id smtpd.web09.1497.1662586811796046529
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Sep 2022 14:40:12 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gherzan.com header.s=fm3
 header.b=cnUDzAGE;
 spf=pass (domain: gherzan.com, ip: 66.111.4.28, mailfrom: andrei@gherzan.com)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 200095C0195;
	Wed,  7 Sep 2022 17:40:11 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Wed, 07 Sep 2022 17:40:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:message-id:mime-version:reply-to:sender:subject:subject:to:to;
	 s=fm3; t=1662586811; x=1662673211; bh=y5MYsvg9ecCp/AsPIz7iToa0V
	X8bHJVHwbwfF0ZHaTw=; b=cnUDzAGE2h+6ugQ0NYpYBT4WFs6rONq8Eh/wcm3wq
	zNu5pMxQ2c+lVnmySrYlTrdUtZQ2hoYj4xV0owa3yvQhuCaVFiT2Hq0U57BvNEUs
	lY0OKRiYqFf/NO2wMwViOdRRHHFfIGykQOrVQzeahVwf+qhJOovRwnhyzMU17Mqe
	57ZTAZVlZX0Ck9HNM8RTpsVToQ3UGN+nFiRdMXmmKUo0paJTYtl7tC55Iu5c3Js2
	1HkjDQbdOlRl6kq2R0vy9PE3/n5p3zwVjsY0O30f1yykcuxezttRemgpxRpj6uCU
	vbyLrEUREv6K8uDPbUMNo478tV7BWx2Z9D06aDbSWy77g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1662586811; x=1662673211; bh=y5MYsvg9ecCp/AsPIz7iToa0VX8bHJVHwbw
	fF0ZHaTw=; b=zqlo+2JQHhccH4Mqsf2v6eZrqZlQoaAKqZPez99RAFGyi6aJW0e
	uOJ9EomlQGPgpblsqxtPCTlQeMq1+e2GQ8MeoD3T98Dz4PSDoRGNsU4lYNUr1eN5
	78EMk7yyG5gYSzkv4KiPyKSiIQ1M8ODti8R/fuLLlqyQF3HVQccPFshqwZqkYyiH
	BR66FWyG0OOrfBt7Af2WVf6EcdSkorbMrZND4qPQjvkHOGdhmI3fU6UGaTxpKDdD
	qMkoMy2W9Ti6CmMbUkB2wyLUWF0o8w4ldpKJWYrvyhVPlY/TYLPJ4U3l6fn2tbsR
	/0h+Nd3tdlskcuDMfYY2CCSl/aasLwaAoTQ==
X-ME-Sender: <xms:ug8ZY9Hk_NnSxMNQajQHDQSHORx6NvOYgI3b3gaPxsyu0fqw3Sh14g>
    <xme:ug8ZYyVP43xGQf1qoI-CfhP9vtL6oSODH9LBxS-zUo4kXvLFvSXZEm7x9q0tWOvQy
    _5bwdvJC_K1wqzccc4>
X-ME-Received: 
 <xmr:ug8ZY_JIYGlKMlS3S9tLsJQdCSAK9q7vOIHHPsrC4mvdZU5IidAuzVe5BprNYTCsIKZsvRpmDVw0bZXbRK8AqPjiqK43dPY1hNfRitlTbka4qKbi3xSPqih9>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvfedrfedtuddgtddvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertd
    ertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihesghhh
    vghriigrnhdrtghomheqnecuggftrfgrthhtvghrnhepieejlefhveevleffveegfeetle
    ejtedvgeejtddthefhhfdtiefhveegffeggeeknecuvehluhhsthgvrhfuihiivgeptden
    ucfrrghrrghmpehmrghilhhfrhhomheprghnughrvghisehghhgvrhiirghnrdgtohhm
X-ME-Proxy: <xmx:ug8ZYzHng7_fsOFauGB86kCHNOvwqlkoKAsroO58j8-XZC_OcR14GA>
    <xmx:ug8ZYzU6T-jGl-TPAJ8gnpKfh9yHz9HGyqZUqj1dzC4Vm48Dkgc7YA>
    <xmx:ug8ZY-MCyjeMUl1KsVaQBXWQwDSgMiWwnIsJVJiArR_9pqYCkuae_g>
    <xmx:uw8ZY6dHBJHhtKFrjmLOEF8DDgVflUb_afzCTfQxrC5kkDflgi-gSQ>
Feedback-ID: i68994715:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 7 Sep 2022 17:40:10 -0400 (EDT)
From: Andrei Gherzan <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: andrei@gherzan.com,
	Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-raspberrypi][PATCH 1/4] machine: Define firmware packages from
 separate variables
Date: Wed,  7 Sep 2022 23:39:56 +0200
Message-Id: <20220907213959.1115886-1-andrei@gherzan.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Sep 2022 21:40:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58002

From: Andrei Gherzan <andrei.gherzan@huawei.com>

This approach allows someone to easily append firmware packages for
another target than the current set one. For now, we only define the
ones for Raspberry Pi 3 and Raspberry Pi 4 as they will be reused for
in multiconfig builds for generating images that support both of these
targets.

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 conf/machine/include/rpi-base.inc | 17 +++++++++++++++++
 conf/machine/raspberrypi3.conf    |  9 ++-------
 conf/machine/raspberrypi4.conf    | 11 +++--------
 3 files changed, 22 insertions(+), 15 deletions(-)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index a2edf06..6998460 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -150,3 +150,20 @@ do_image_wic[recrdeps] = "do_build"
 # The kernel image is installed into the FAT32 boot partition and does not need
 # to also be installed into the rootfs.
 RDEPENDS:${KERNEL_PACKAGE_NAME}-base = ""
+
+RASPBERRYPI_3_FIRMWARE_PACKAGES += "\
+    linux-firmware-rpidistro-bcm43430 \
+    linux-firmware-rpidistro-bcm43455 \
+    bluez-firmware-rpidistro-bcm43430a1-hcd \
+    bluez-firmware-rpidistro-bcm4345c0-hcd \
+"
+RASPBERRYPI_4_FIRMWARE_PACKAGES += "\
+    linux-firmware-rpidistro-bcm43455 \
+    bluez-firmware-rpidistro-bcm4345c0-hcd \
+    linux-firmware-rpidistro-bcm43456 \
+    bluez-firmware-rpidistro-bcm4345c5-hcd \
+"
+
+RASPBERRYPI_3_KERNEL ?= "kernel7.img"
+# 'l' stands for LPAE
+RASPBERRYPI_4_KERNEL ?= "kernel7l.img"
diff --git a/conf/machine/raspberrypi3.conf b/conf/machine/raspberrypi3.conf
index 1212498..46961b8 100644
--- a/conf/machine/raspberrypi3.conf
+++ b/conf/machine/raspberrypi3.conf
@@ -6,14 +6,9 @@ DEFAULTTUNE ?= "cortexa7thf-neon-vfpv4"
 require conf/machine/include/arm/armv7a/tune-cortexa7.inc
 include conf/machine/include/rpi-base.inc
 
-MACHINE_EXTRA_RRECOMMENDS += "\
-    linux-firmware-rpidistro-bcm43430 \
-    linux-firmware-rpidistro-bcm43455 \
-    bluez-firmware-rpidistro-bcm43430a1-hcd \
-    bluez-firmware-rpidistro-bcm4345c0-hcd \
-"
+MACHINE_EXTRA_RRECOMMENDS += "${RASPBERRYPI_3_FIRMWARE_PACKAGES}"
 
-SDIMG_KERNELIMAGE ?= "kernel7.img"
+SDIMG_KERNELIMAGE ?= "${RASPBERRYPI_3_KERNEL}"
 UBOOT_MACHINE = "rpi_3_32b_config"
 SERIAL_CONSOLES ?= "115200;ttyS0"
 
diff --git a/conf/machine/raspberrypi4.conf b/conf/machine/raspberrypi4.conf
index 86c57ed..56d0905 100644
--- a/conf/machine/raspberrypi4.conf
+++ b/conf/machine/raspberrypi4.conf
@@ -7,15 +7,10 @@ require conf/machine/include/arm/armv7a/tune-cortexa7.inc
 include conf/machine/include/rpi-base.inc
 
 MACHINE_FEATURES += "pci"
-MACHINE_EXTRA_RRECOMMENDS += "\
-    linux-firmware-rpidistro-bcm43455 \
-    bluez-firmware-rpidistro-bcm4345c0-hcd \
-    linux-firmware-rpidistro-bcm43456 \
-    bluez-firmware-rpidistro-bcm4345c5-hcd \
-"
 
-# 'l' stands for LPAE
-SDIMG_KERNELIMAGE ?= "kernel7l.img"
+MACHINE_EXTRA_RRECOMMENDS += "${RASPBERRYPI_4_FIRMWARE_PACKAGES}"
+
+SDIMG_KERNELIMAGE ?= "${RASPBERRYPI_4_KERNEL}"
 UBOOT_MACHINE = "rpi_4_32b_config"
 SERIAL_CONSOLES ?= "115200;ttyS0"
 
-- 
2.25.1


