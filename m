Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C49A0C6FA8B
	for <webhook@archiver.kernel.org>; Sat, 10 Sep 2022 23:05:58 +0000 (UTC)
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com
 [64.147.123.21])
 by mx.groups.io with SMTP id smtpd.web08.4894.1662851151474106742
 for <yocto@lists.yoctoproject.org>;
 Sat, 10 Sep 2022 16:05:51 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gherzan.com header.s=fm3
 header.b=HQFi/tBW;
 spf=pass (domain: gherzan.com, ip: 64.147.123.21,
 mailfrom: andrei@gherzan.com)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id B425D32006F5;
	Sat, 10 Sep 2022 19:05:50 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Sat, 10 Sep 2022 19:05:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm3; t=1662851150; x=1662937550; bh=Ds
	vubmPAoLSOvAdeUJD9Khl8/Uzz26NPjqWHC8OZGXI=; b=HQFi/tBWVHcniwnVee
	78JqzueOqhn4/cx02Ov/635vllBZkb5CjNHH+VYa+bsd+cJdzEFt6+ZlpI/NiRFd
	3gD7/dTSzySs8lpVyh1trQlbuqYb1rw04EmFqqoMeiy9uBAJBrO+WxuxaY8Fp+31
	4CaIeHFr80H6q4+Ppc52cllKVitPv0ZS9Q4eDpSiuJq3DovH1tfD0G3BBbKXcTEu
	woLPBzFeKGKfI66cLmUqjDehCgSJQ6w8F3ZOS35pOiY3YwrQkOrDS/dAzj1BwPMa
	7ONPlfgG5RdEHAq1WZTq07vrJlDhJeKRb8cYcilW/Z6SwD6HTTI0rbFWGSgYdcWy
	r9IA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; t=1662851150; x=1662937550; bh=DsvubmPAoLSOv
	AdeUJD9Khl8/Uzz26NPjqWHC8OZGXI=; b=xGhN1w6r3Z1R2FYZUiYNKvVMwMEBj
	88AqZVrNeBaV/bPO8yNN3rLoAk4PcxhpqmS6MBU9eRnCwd7U3M8rne1ecmeBgZCG
	yewOY3myRWiTPGBPmcqFHxKrvLhz6qtZNBUe8uMbZScKIjTvaTa5WVqpqSdhYX3J
	3nF1T42OCDqD7xXayLODyJNbzAHqwSyD3Afb/39p7vYj0JtUWGVIVAC+PQQQYt+/
	bZClkuRWgQgjzhbjUEHYViGKqzcAcYWhHlRkhFNsZ/hM7Y+3wQzjoCuv7RJC/K6v
	TqvffsYO4f12jz9Zx5xEZY6Io9NxZj09AZVj9ggOA9IwujbstxHhKTQ3g==
X-ME-Sender: <xms:ThgdY-WO2vDYssKiYZsJCwHr6HHgYn2-tRMAGH5H9TWvmqCY9W1G_w>
    <xme:ThgdY6mxgoJaa0459ZeUu9oifiFvZAP3r9of20NG0NL4ri-X-2T7hmuQsfpY-zC9l
    3tdw130kn8_9bFf22s>
X-ME-Received: 
 <xmr:ThgdYybTb0o_LJpD8bfhTB3nJodcZwOaXyZabuzJI2EVal51oznBq4tsfVVxGmXY8wXv9Ulm03yMtMV1XRliXGQAcE7v1IHd8GWFSFScriN861nBKQjpfKEb>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvfedrfedtkedgudelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
    ertdertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihes
    ghhhvghriigrnhdrtghomheqnecuggftrfgrthhtvghrnhepjefhvefhgefgffejgeelke
    ejleeiffejgffgkeeggfffgfffieeffeeghefhtdffnecuvehluhhsthgvrhfuihiivgep
    tdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvghisehghhgvrhiirghnrdgtoh
    hm
X-ME-Proxy: <xmx:ThgdY1V3PAmJMzc7usWph0kKYqvDzBogZa-Ksr2vjV6XGJk4laSXvA>
    <xmx:ThgdY4nxlDYa2et28gw0QDMt-iDO9JQSMoqfCNBR-zRbU4im4h7PTw>
    <xmx:ThgdY6eJngdZm0xIJXhqHXiDXdHjh6q892eVZ8i7b3Ll8QniyTAITw>
    <xmx:ThgdY0s4ieT612jJFCUpFn59_7BiPM7YMvwyOZJW6lz5LA7TB0LZVQ>
Feedback-ID: i68994715:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 10 Sep 2022 19:05:49 -0400 (EDT)
From: Andrei Gherzan <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: andrei@gherzan.com,
	Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-raspberrypi][PATCH 3/5] rpi-base.inc: Split IMAGE_BOOT_FILES
 for kernel image
Date: Sun, 11 Sep 2022 01:05:29 +0200
Message-Id: <20220910230531.4084156-4-andrei@gherzan.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220910230531.4084156-1-andrei@gherzan.com>
References: <20220910230531.4084156-1-andrei@gherzan.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 10 Sep 2022 23:05:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58015

From: Andrei Gherzan <andrei.gherzan@huawei.com>

The kernel image deployment is now defined in IMAGE_BOOT_FILES as a
separate variable: RPI_EXTRA_IMAGE_BOOT_FILES. This allows a custom
kernel image deployment by redefining this variable when needed.

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 conf/machine/include/rpi-base.inc | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index beb1f08..313c7d9 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -134,12 +134,15 @@ def make_dtb_boot_files(d):
 
     return ' '.join([transform(dtb) for dtb in alldtbs.split(' ') if dtb])
 
+RPI_EXTRA_IMAGE_BOOT_FILES ?= " \
+	${@bb.utils.contains('RPI_USE_U_BOOT', '1', \
+		'${KERNEL_IMAGETYPE} u-boot.bin;${SDIMG_KERNELIMAGE} boot.scr', \
+		'${KERNEL_IMAGETYPE};${SDIMG_KERNELIMAGE}', d)} \
+	"
 
 IMAGE_BOOT_FILES ?= "${BOOTFILES_DIR_NAME}/* \
                  ${@make_dtb_boot_files(d)} \
-                 ${@bb.utils.contains('RPI_USE_U_BOOT', '1', \
-                    '${KERNEL_IMAGETYPE} u-boot.bin;${SDIMG_KERNELIMAGE} boot.scr', \
-                    '${KERNEL_IMAGETYPE};${SDIMG_KERNELIMAGE}', d)} \
+                 ${RPI_EXTRA_IMAGE_BOOT_FILES} \
                  "
 do_image_wic[depends] += " \
     rpi-bootfiles:do_deploy \
-- 
2.25.1


