Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0249ECAAD3
	for <webhook@archiver.kernel.org>; Sat, 10 Sep 2022 23:05:48 +0000 (UTC)
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com
 [64.147.123.21])
 by mx.groups.io with SMTP id smtpd.web08.4892.1662851146236332594
 for <yocto@lists.yoctoproject.org>;
 Sat, 10 Sep 2022 16:05:46 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gherzan.com header.s=fm3
 header.b=hXfgTAgC;
 spf=pass (domain: gherzan.com, ip: 64.147.123.21,
 mailfrom: andrei@gherzan.com)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 37B4E3200754;
	Sat, 10 Sep 2022 19:05:45 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Sat, 10 Sep 2022 19:05:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:message-id:mime-version:reply-to:sender:subject:subject:to:to;
	 s=fm3; t=1662851144; x=1662937544; bh=JtqLA95AUNpoVc1P+BR2baLb8
	uT0FoGfr6jw2PO4yNQ=; b=hXfgTAgCrZB+UlXKVk1AKCd+wZ7DcAjAJFLdqb4aK
	4HNakQ3AZg0GDoYRkjYs0BrZ4fd5rj2Qezwl4AlSJ+UNZHuCFqO21v1wcNRYfPpc
	SQ6ZHJ5yVmIUJiA7BI+iH+kDDc1YSX/BtEnf2Uro7Q+8nbnsrt5PPVWhI15Rwr8O
	JCjxGy3wCW+uVvUcxQ7ZGverLKUx5m4IB8seC3strea1EKqi6aNvtBoc7qZ6IX+i
	QOvb5D7hwl86lb+Hu8QIB9nNmhcJ2Oqzo1NZB9Fxuupqk6tL0AZ28dYfZEPJ03y7
	QPgPQp84Vraf5dYfLNJmnnFmR1PtCMEDmolGGexyNFwpg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1662851144; x=1662937544; bh=JtqLA95AUNpoVc1P+BR2baLb8uT0FoGfr6j
	w2PO4yNQ=; b=Ex4wVAhXwHbwX4gQBsVt0CIHw6bEvmtuYCXjzNcVrIEBSV+mGUt
	7RKoDDUxdM397L30FI2KdKsZwYdoDiyJFZNrFSXQro4pAsZo7JxPQtP+QQyxovsc
	geJ50Y3DDHxWCnfZFm/4GhQY4g/KidThVd2vN4pOu/KKpewhOg8vQTLVPGPm31Q/
	K4ACcwizBI4c/jBSWwgD70TZk4j1EsnYJpwyg9gQPgqEfq2G1jmyGdtGIP94rJlQ
	/zufb4U2gG6we3DrjJ7fFV+RHu0If3W9lkyT1fnC+v41nv2tZk1est//PRDqQmEM
	wrrQDU0cCxcUNDHdmBoKC+TzGrserLGptvg==
X-ME-Sender: <xms:SBgdY1KwunPtCbMK0YYp-argoeDUSEBvvbHW8RQiTZ4Ye0ynqL9Cag>
    <xme:SBgdYxLbdPDTc43dIw16szkrnj918Zuq70yPt0Ik0qzbZldglu0JAzEY27T5FkNRD
    pXOq-glkWovsFL0RbI>
X-ME-Received: 
 <xmr:SBgdY9vKi-aVl-eDkEVNZHOr9mhseLZP_gPGS1S3QmDOZCWF11L-s6Mz_29Mt6_H_icZ16jB_orHas1hn4c-UxpoTKS9Id1tQCScYy_trfgPvKllvoPV-xOc>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvfedrfedtkedgudelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertd
    ertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihesghhh
    vghriigrnhdrtghomheqnecuggftrfgrthhtvghrnhephefguefftdduieetvdehieetfe
    efleffheffudefveetieevhfejfeeludeuteeinecuffhomhgrihhnpehophgvnhgvmhgs
    vgguuggvugdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrih
    hlfhhrohhmpegrnhgurhgvihesghhhvghriigrnhdrtghomh
X-ME-Proxy: <xmx:SBgdY2aNjfJ_ZtUeQ3uWFJ-kHwUL-zyFiwbnzLb49u0h89C86lodrQ>
    <xmx:SBgdY8acmn3GaX5NnxMgornsnv5w378X6BLB8fJIsuIfii4DtjYYfQ>
    <xmx:SBgdY6BAHR-vqjcskLOiPewA8v9tH7K3seimnnQ05t8OgY3Xq2yTkQ>
    <xmx:SBgdY3yfJhTkHnI5IG9-R49itS9VSeiwh-qwlEeXiM5SlXEQuPczmw>
Feedback-ID: i68994715:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 10 Sep 2022 19:05:43 -0400 (EDT)
From: Andrei Gherzan <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: andrei@gherzan.com,
	Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-raspberrypi][PATCH 0/5] Add support for a multi kernel
 Raspberry Pi machine
Date: Sun, 11 Sep 2022 01:05:26 +0200
Message-Id: <20220910230531.4084156-1-andrei@gherzan.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 10 Sep 2022 23:05:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58012

From: Andrei Gherzan <andrei.gherzan@huawei.com>

The new raspberrypi-armv7.conf aims at supporting all the armv7
Raspberry Pi boards.

This initial support was tested on:

- Raspberry Pi 4 Model B
- Raspberry Pi 3 Model B
- Raspberry Pi 0 2 WiFi

Tests:

- Boot
- WiFi
- BT
- Modules load

There is a known limitation of the fact that the core doesn't handle
image depmod for multiple kernels. A set of fixes were proposed for
that:

    https://lists.openembedded.org/g/openembedded-core/message/170505
    https://lists.openembedded.org/g/openembedded-core/message/170506
    https://lists.openembedded.org/g/openembedded-core/message/170507
    https://lists.openembedded.org/g/openembedded-core/message/170508

Without these (or similar patches) patches, an additional step is
needed on any board but Raspberry Pi 4: for example running `depmod -a`
at first boot.

Andrei Gherzan (5):
  sdcard_image-rpi.bbclass: Move SDIMG_KERNELIMAGE definitions to their
    machines
  raspberrypi0-2w.conf: Include the RPi 0-2w dtb for all 32-bit machines
  rpi-base.inc: Split IMAGE_BOOT_FILES for kernel image
  Add support for a multi kernel Raspberry Pi machine
  ci: Add raspberrypi-armv7 to the build matrix

 .github/workflows/yocto-builds.yml            |  1 +
 classes/sdcard_image-rpi.bbclass              |  5 ---
 conf/machine/include/rpi-base.inc             | 10 +++--
 conf/machine/include/rpi-default-versions.inc |  1 +
 conf/machine/raspberrypi-armv7.conf           | 39 +++++++++++++++++++
 conf/machine/raspberrypi.conf                 |  4 +-
 conf/machine/raspberrypi0-2w.conf             |  4 --
 conf/machine/raspberrypi2.conf                |  2 +-
 conf/machine/raspberrypi3-64.conf             |  7 ++--
 docs/layer-contents.md                        | 16 ++++++++
 recipes-kernel/linux/linux-raspberrypi-v7.inc | 13 +++++++
 .../linux/linux-raspberrypi-v7_5.10.bb        |  6 +++
 .../linux/linux-raspberrypi-v7_5.15.bb        |  6 +++
 recipes-kernel/linux/linux-raspberrypi.inc    |  1 +
 .../linux/linux-raspberrypi_5.15.bb           | 12 ++++++
 15 files changed, 108 insertions(+), 19 deletions(-)
 create mode 100644 conf/machine/raspberrypi-armv7.conf
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-v7.inc
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-v7_5.10.bb
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-v7_5.15.bb

-- 
2.25.1


