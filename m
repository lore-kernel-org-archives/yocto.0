Return-Path: <abhisit.sangjan@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 39AF4C41535
	for <webhook@archiver.kernel.org>; Tue, 19 Dec 2023 11:47:39 +0000 (UTC)
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
 by mx.groups.io with SMTP id smtpd.web10.10139.1702986449824702098
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Dec 2023 03:47:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=SALiorOB;
 spf=pass (domain: gmail.com, ip: 209.85.214.196, mailfrom: abhisit.sangjan@gmail.com)
Received: by mail-pl1-f196.google.com with SMTP id d9443c01a7336-1d3dee5f534so3241815ad.1
        for <yocto@lists.yoctoproject.org>; Tue, 19 Dec 2023 03:47:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702986449; x=1703591249; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=S/swr0WfqxcMigpit0ctRxb6q0AiYxDAuqYsxrfIC5s=;
        b=SALiorOBKvKrTv0X54n89wLVYUoBoWISThVd45ZtqoUJ36T4v/QxJRqZTyru36bTUk
         uWvoABsjcr+tSFUeuFQ6GpSz0ADiKGs+zaSQIKkNW7MHk07HJDpjlmpzNt8jL0BTTYbK
         mVvp/ed+mYAfwLTv2glgGzOBrAzpxOAlSLhPj8x6NsGLTohaNW0zyCGpopsM+CBDlFwe
         xoPLC9yTxxwhJoOirquSqivz8UfIYewktIjnnwXooK6KTaRQL3vomm/NddSvjLuLEPUp
         M2sg7JSD8MihGhsHkgz4+dgPCnQfISBqMcNr1VqpiifruRyBfVuqu20mIlHFQNmQW6ZN
         uS4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702986449; x=1703591249;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S/swr0WfqxcMigpit0ctRxb6q0AiYxDAuqYsxrfIC5s=;
        b=PURRuMzwYG/WmIF34nYks2kCyEXn72SOHEHZc44vYrhKvfw/4YWq/AiVYYmheuq4dx
         wtiYDiiCK74xgACmRG48FvrnenBr4RW74/Xui8HZHVsgbYZNmXkXHcbm0l5XQ5pSP7JC
         nthNo1rpyJYNWGxHeU26DBLpqXNb++qb5HWZ90vK0L3oaLslu2N7dNA84Od544za1AtS
         pS8ObI9JD0Is89rZjljo4PCbFTkynXG+WJTkiMvBz2vbCeZrMhEL+v8bPCeXuCdpsWqX
         H8kEVGPYiU3rZHYBItPuBKJIl+X51MIrIeVHAw+SfBiwuYxEFDfPzBxB2wHJXeGXLzPD
         PFtw==
X-Gm-Message-State: AOJu0YxZ/d/TXIC2GaC7XLev7fFtqyYYGTSInfqSygyEfechpXkYQaN6
	Zv1GxIRv2ojO5MRk115zpUBnD1JedDOasiBq
X-Google-Smtp-Source: AGHT+IEq9rq2dVkkelTtirj08MFgFPboJ5diMrdehy/GZt/EYL4YjZ9pZoVQb1rfQlGhyZ7e7/2veQ==
X-Received: by 2002:a17:902:c942:b0:1d3:c604:538f with SMTP id i2-20020a170902c94200b001d3c604538fmr1184650pla.3.1702986448890;
        Tue, 19 Dec 2023 03:47:28 -0800 (PST)
Received: from t1700.tail47137.ts.net ([2405:9800:b950:b516::2b8])
        by smtp.gmail.com with ESMTPSA id k9-20020a170902c40900b001d0cd9e4248sm20782569plk.196.2023.12.19.03.47.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 03:47:28 -0800 (PST)
From: Abhisit Sangjan <abhisit.sangjan@gmail.com>
X-Google-Original-From: Abhisit Sangjan <abhisit.dev@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Abhisit Sangjan <abhisit.sangjan@gmail.com>
Subject: [PATCH] orangepi-5-plus: Support Orange Pi 5 Plus single-board computer
Date: Tue, 19 Dec 2023 18:47:13 +0700
Message-ID: <20231219114713.3883-1-abhisit.dev@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Dec 2023 11:47:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61980

From: Abhisit Sangjan <abhisit.sangjan@gmail.com>

Being merged when the u-boot version is 2024.01-rc5 or newer and the Linux Kernel version is 6.7 or newer

Orange Pi 5 Plus is RK3588 based SBC featuring:
- 2x 2.5G ethernet ports – onboard NIC hooked to PCIe 2.0 interface
- 2x USB 2.0 host ports
- 2x USB 3.0 host ports (exposed over USB 3.0 hub)
- Type-C port featuring USB 2.0/3.0 and Alt-DP mode
- PCIe 2.0/USB 2.0/I2S/I2C/UART on E.KEY socket
- RTC
- ES8388 on-board sound codec – jack in/out, onboard mic, speaker amplifier
- SPI NOR flash
- RGB LED (R is always on)
- IR receiver
- PCIe 3.0 on the bottom for NVMe, etc.
- 40pin GPIO header (with gpio, I2C, SPI, PWM, UART)
- Power, recovery and Mask ROM buttons
- 2x HDMI out, 1x HDMI in
- Slots/connectors for eMMC, uSD card, fan, MIPI CSI/DSI
- 4 GB, 8 GB, 16 GB and 32 GB of RAM

Signed-off-by: Abhisit Sangjan <abhisit.sangjan@gmail.com>
---
 README                                        |  1 +
 conf/machine/orangepi-5-plus.conf             | 12 ++++++++++++
 recipes-bsp/rkbin/rockchip-rkbin_git.bb       |  2 +-
 recipes-kernel/linux/linux-yocto-dev.bbappend |  3 +++
 4 files changed, 17 insertions(+), 1 deletion(-)
 create mode 100644 conf/machine/orangepi-5-plus.conf

diff --git a/README b/README
index e5beaa0..c006cd9 100644
--- a/README
+++ b/README
@@ -34,6 +34,7 @@ Status of supported boards:
 		nanopi-r2s
 		nanopi-m4b
 		rock-pi-s
+		orangepi-5-plus
 	builds:
 		marsboard-rk3066
 		radxarock
diff --git a/conf/machine/orangepi-5-plus.conf b/conf/machine/orangepi-5-plus.conf
new file mode 100644
index 0000000..5e814e6
--- /dev/null
+++ b/conf/machine/orangepi-5-plus.conf
@@ -0,0 +1,12 @@
+#@TYPE: Machine
+#@NAME: Orange Pi 5 Plus
+#@DESCRIPTION: It is the 5th generation of single-board computer designed by Kunlong Co.,Limited.
+#http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/details/Orange-Pi-5-plus-32GB.html
+
+require conf/machine/include/rk3588.inc
+
+PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-dev"
+KERNEL_DEVICETREE = "rockchip/rk3588-orangepi-5-plus.dtb"
+MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
+
+UBOOT_MACHINE = "orangepi-5-plus-rk3588_defconfig"
diff --git a/recipes-bsp/rkbin/rockchip-rkbin_git.bb b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
index f1609c7..b6642ce 100644
--- a/recipes-bsp/rkbin/rockchip-rkbin_git.bb
+++ b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
@@ -14,7 +14,7 @@ S = "${WORKDIR}/git"

 COMPATIBLE_MACHINE = "^$"
 COMPATIBLE_MACHINE:rk3308 = "rk3308"
-COMPATIBLE_MACHINE:rk3588s = "rk3588s"
+COMPATIBLE_MACHINE:rk3588s = "rk3588s|rk3588"

 PACKAGE_ARCH = "${MACHINE_ARCH}"

diff --git a/recipes-kernel/linux/linux-yocto-dev.bbappend b/recipes-kernel/linux/linux-yocto-dev.bbappend
index 419ebc1..d98a107 100644
--- a/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ b/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -1,3 +1,6 @@
 FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
 COMPATIBLE_MACHINE:rock-5b = "rock-5b"
 SRC_URI:append:rock-5b = " file://rockchip-kmeta;type=kmeta;name=rockchip-kmeta;destsuffix=rockchip-kmeta"
+
+COMPATIBLE_MACHINE:orangepi-5-plus = "orangepi-5-plus"
+SRC_URI:append:orangepi-5-plus = " file://rockchip-kmeta;type=kmeta;name=rockchip-kmeta;destsuffix=rockchip-kmeta"
--
2.43.0

