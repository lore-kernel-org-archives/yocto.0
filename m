Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5266C6FA8E
	for <webhook@archiver.kernel.org>; Tue, 13 Sep 2022 21:22:38 +0000 (UTC)
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 by mx.groups.io with SMTP id smtpd.web10.754.1663104152256976496
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Sep 2022 14:22:32 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gherzan.com header.s=fm3
 header.b=RcZ5wCOy;
 spf=pass (domain: gherzan.com, ip: 64.147.123.19,
 mailfrom: andrei@gherzan.com)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 81E8E3200645;
	Tue, 13 Sep 2022 17:22:31 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Tue, 13 Sep 2022 17:22:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm3; t=1663104151; x=1663190551; bh=Ds
	vubmPAoLSOvAdeUJD9Khl8/Uzz26NPjqWHC8OZGXI=; b=RcZ5wCOylSW6V/gjDi
	Ohln6x9bhvHXRktvS8TBQodpLHFinpnQqCKBKKMu503FWfmUUq7Jx65FRC+wSiSw
	Eh8vMOZ0YOs0jAmZw/TLDsa3VST7un3maCVofi5XdKApe6WeXaK/aoF2PGcJ28eb
	YM2FjrvuSmXG5sZtD/SyijZyEUWgHeUVuWmRnEvSGDhIup/1Yh+ZNJx+0OMEW5W2
	fwb7Vi55eqGbH7HzCPoc1IunFa5h/mkPC5/yGxGIdcKrgBLhe9ohc+DIP6FWNZ9x
	s9bekHzy619SHISMvEVTb1pbatYen+Xq3maqnpKRvDVoo4BcX8J6unJ/sdRRJ3Ae
	kfcw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; t=1663104151; x=1663190551; bh=DsvubmPAoLSOv
	AdeUJD9Khl8/Uzz26NPjqWHC8OZGXI=; b=vAQr+LByOnw4Y4nag4mV/TPgPTgEQ
	Ha7Yrhx6A9rjYEi4kDZr8PG8xMRs6/rDz2RR3GzUDP78YVCvvHk1cxn3j0OJpi/6
	7eIBYYTtWkAWhJi7FqK+ka34RZ+LDBUyNV4D9Leig43GuZwEklNZe0QjtIrJjNxq
	qHJcj4qI4NHA9lWsZUlNMx/FMbnTeu3enWe+VpQfbIHqLZUBiBi50HVBM7anJxCT
	kuMRCfHtnr0SQzj67ENHFH0+5e5Kj//o6EQ40dtEBY4ZcYuF8TkD0JgPfjbkLSwm
	dOnbxDte08Lqm2cOaMWnDw49FjNXRX+uezrb7mpXoP9T+TQ62cB5HWuTg==
X-ME-Sender: <xms:lvQgY5WCnqjo51sjIunWL5vFd7pgnsqXkWqK3l_cmECbeKMgrjZ7_g>
    <xme:lvQgY5mTIRRCMrJFaMP2Zq7cZzl2aZOO9eABfOfqPM48BNklJhg5QCBmytCI56n6H
    vrxI5S1BwI-lH_oOM8>
X-ME-Received: 
 <xmr:lvQgY1amU3OLnZnA73me2dv5TkDJeZFYwTieImjR05opKpcrq0gRy0xZb8vFdZPCsd8okSOC5YnlDMttCG1fRiRACGjCPy2EfsKyQUASmeuWAojW0eC_b8d5>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvfedrfedugedgudeifecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestd
    ekredtredttdenucfhrhhomheptehnughrvghiucfihhgvrhiirghnuceorghnughrvghi
    sehghhgvrhiirghnrdgtohhmqeenucggtffrrghtthgvrhhnpeejhfevhfeggfffjeegle
    ekjeelieffjefggfekgefgfffgffeifeefgeehhfdtffenucevlhhushhtvghrufhiiigv
    pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvihesghhhvghriigrnhdrtg
    homh
X-ME-Proxy: <xmx:lvQgY8WCOnLHMHAsjN1ChcLsatSiR9DaT1nYNLfWpd9letSsYRMBSg>
    <xmx:lvQgYzlwRtSO8lZVX6eZs_1dGnnqWuKZNvHpnlt5_Mi6D_PrGM-NGA>
    <xmx:lvQgY5eaQw7Cuz58eHvbvACylh5SFJIULXQTf__h0RWs7Y8lFts1nw>
    <xmx:l_QgY7tBk22XWFJhf8Wr2xN3Xjy-cU07GXtbo66oZ-g1hkJlpGd6ng>
Feedback-ID: i68994715:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 13 Sep 2022 17:22:29 -0400 (EDT)
From: Andrei Gherzan <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: andrei@gherzan.com,
	Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-raspberrypi][PATCH v2 3/7] rpi-base.inc: Split IMAGE_BOOT_FILES
 for kernel image
Date: Tue, 13 Sep 2022 23:22:00 +0200
Message-Id: <20220913212204.3210494-4-andrei@gherzan.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220913212204.3210494-1-andrei@gherzan.com>
References: <20220913212204.3210494-1-andrei@gherzan.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Sep 2022 21:22:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58032

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


