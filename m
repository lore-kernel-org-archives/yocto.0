Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E39BEC54EE9
	for <webhook@archiver.kernel.org>; Tue, 13 Sep 2022 21:22:28 +0000 (UTC)
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 by mx.groups.io with SMTP id smtpd.web11.779.1663104146859183503
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Sep 2022 14:22:27 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gherzan.com header.s=fm3
 header.b=BaAyXcn5;
 spf=pass (domain: gherzan.com, ip: 64.147.123.19,
 mailfrom: andrei@gherzan.com)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id C98C63200754;
	Tue, 13 Sep 2022 17:22:25 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Tue, 13 Sep 2022 17:22:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:message-id:mime-version:reply-to:sender:subject:subject:to:to;
	 s=fm3; t=1663104145; x=1663190545; bh=hT0bvn6u55o/mz0vcCflQTeou
	xL01eCbQRXWi8hZ0Jg=; b=BaAyXcn5aWnfyKpFk5HXzFuojw94HREpVgvDhI5Pu
	3DQ0P4dVP+AFgcWEomvfTk8/kQ6Qpu74EnHeqAUFhDbhS89efS3sNXNXi1kTCFSm
	fY2yh7NqjblOTPWs5UxF3iuYHVyq67vC05ZXJ2dCyx9bn8t3uDMguI8aQ92FXiee
	jq+YcSBct6c2VCNnTbtHk3eiUvGjySQwANxErxpCsPjyjiZO6dI4FlcFBu3sLZ/i
	WyXjtrgX5GfSXtA4fq3NpMUWb3D7p4QbTiMfHRX+iFqFMK1gL5ktu3dgPF6bIOxB
	2YgUp7s+ynElxW3CTwpzgXJ/IDxgcYCH752pala/mivZQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1663104145; x=1663190545; bh=hT0bvn6u55o/mz0vcCflQTeouxL01eCbQRX
	Wi8hZ0Jg=; b=zPD4Szj4NtmHQ5AMitx1ZNqKqABO2oSs5aP+z0v04UW63vNHKN6
	+8WUEgjfFpWxBAcd3xHHtkGEmi8Zu2bytb05Ixh+1GV4dqK1i5eJ5GB+k8psH/GD
	UdPmDFEYR9fu/d59m8sOZfzhqhYgbzdzshkxAE4kzUQlAUSnUtY4QedERrw57yCa
	zpjqHyJ0nSJoQ4hz5TleNLTPIzuMWKtdzuv0wwOASaTlEo384Z88HjBekWScBASD
	994jqrFhFh+CXh69xYyotRk3Hu5xIynVM40khTw44LqsxEF2s918DjvIuyCy9Pa2
	gY5RWDMVTCgacFjWKXjP3RG/g4tbeGmhOLw==
X-ME-Sender: <xms:kPQgY_qdwFLT_ATeveRv-_yaE_JWQLdzijGD4wv29DBBqcy-fEzx-w>
    <xme:kPQgY5r7XwAhke9j3PKaD9L3g1M9rItIaIAkYxGrshkOBFqIYDq73fBO7GHuYIw8c
    o3UV8Au48iRaIYOf4o>
X-ME-Received: 
 <xmr:kPQgY8PUQtoMSP2s6S1etUb-GEA5GBicfW6xjz9Dk5Fx0UB6z7fUM5O2Fh1cuizxgEvxC4zbHKz6J4ili2uDMSIwVhCktGPGBT0QQc1XHSrHSUyIagdUdHbJ>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvfedrfedugedgudeigecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgggfestdekre
    dtredttdenucfhrhhomheptehnughrvghiucfihhgvrhiirghnuceorghnughrvghisehg
    hhgvrhiirghnrdgtohhmqeenucggtffrrghtthgvrhhnpeehgfeuffdtudeitedvheeite
    effeelffehffdufeevteeivefhjeefleduueetieenucffohhmrghinhepohhpvghnvghm
    sggvugguvggurdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
    hilhhfrhhomheprghnughrvghisehghhgvrhiirghnrdgtohhm
X-ME-Proxy: <xmx:kfQgYy41Q3wQyMUZuSauixcIE4QzRsqNoBro7HFrQx2d28SWE_0kow>
    <xmx:kfQgY-68EHEn5LMq3BpY_IJvcjw8ziC6OXvPnq7ua5to-W8F_XzMCQ>
    <xmx:kfQgY6jhLD6uheRTn_9OnT7qhD33a63TLNkB5dV2Ot4ySD3QnTEoGw>
    <xmx:kfQgY0R4rh_eOLg7du6lyZ_V9rkLG6jPefiaiTlE6VmxzYW0p8vvxw>
Feedback-ID: i68994715:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 13 Sep 2022 17:22:24 -0400 (EDT)
From: Andrei Gherzan <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: andrei@gherzan.com,
	Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-raspberrypi][PATCH v2 0/7] Add support for multi kernel
 Raspberry Pi machines
Date: Tue, 13 Sep 2022 23:21:57 +0200
Message-Id: <20220913212204.3210494-1-andrei@gherzan.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Sep 2022 21:22:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58029

From: Andrei Gherzan <andrei.gherzan@huawei.com>

PATCH v2:

* the patches (depmod fixes) below were merged in oe-core/master (FYI)
* added support for a similar (but simpler) armv8 machine - with CI

PATCH v1:

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

Andrei Gherzan (7):
  sdcard_image-rpi.bbclass: Move SDIMG_KERNELIMAGE definitions to their
    machines
  raspberrypi0-2w.conf: Include the RPi 0-2w dtb for all 32-bit machines
  rpi-base.inc: Split IMAGE_BOOT_FILES for kernel image
  Add support for a ARMv7 machine supporting multiple Raspberry Pi
    boards
  ci: Add raspberrypi-armv7 to the build matrix
  Add support for a ARMv8 machine supporting multiple Raspberry Pi
    boards
  ci: Add raspberrypi-armv8 to the build matrix

 .github/workflows/yocto-builds.yml            |  2 +
 classes/sdcard_image-rpi.bbclass              |  5 ---
 conf/machine/include/rpi-base.inc             | 10 +++--
 conf/machine/include/rpi-default-versions.inc |  1 +
 conf/machine/raspberrypi-armv7.conf           | 39 +++++++++++++++++
 conf/machine/raspberrypi-armv8.conf           | 43 +++++++++++++++++++
 conf/machine/raspberrypi.conf                 |  4 +-
 conf/machine/raspberrypi0-2w.conf             |  4 --
 conf/machine/raspberrypi2.conf                |  2 +-
 conf/machine/raspberrypi3-64.conf             |  7 ++-
 docs/layer-contents.md                        | 22 ++++++++++
 recipes-kernel/linux/linux-raspberrypi-v7.inc | 13 ++++++
 .../linux/linux-raspberrypi-v7_5.10.bb        |  6 +++
 .../linux/linux-raspberrypi-v7_5.15.bb        |  6 +++
 recipes-kernel/linux/linux-raspberrypi.inc    |  2 +
 .../linux/linux-raspberrypi_5.15.bb           | 12 ++++++
 16 files changed, 159 insertions(+), 19 deletions(-)
 create mode 100644 conf/machine/raspberrypi-armv7.conf
 create mode 100644 conf/machine/raspberrypi-armv8.conf
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-v7.inc
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-v7_5.10.bb
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-v7_5.15.bb

-- 
2.25.1


