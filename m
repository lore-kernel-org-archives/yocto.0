Return-Path: <abhisit.sangjan@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D43CC41535
	for <webhook@archiver.kernel.org>; Tue, 19 Dec 2023 12:02:49 +0000 (UTC)
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com [209.85.210.196])
 by mx.groups.io with SMTP id smtpd.web10.10361.1702987363097813704
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Dec 2023 04:02:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Pd7XISrA;
 spf=pass (domain: gmail.com, ip: 209.85.210.196, mailfrom: abhisit.sangjan@gmail.com)
Received: by mail-pf1-f196.google.com with SMTP id d2e1a72fcca58-6d741fb7c8eso2116831b3a.2
        for <yocto@lists.yoctoproject.org>; Tue, 19 Dec 2023 04:02:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702987362; x=1703592162; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=S/swr0WfqxcMigpit0ctRxb6q0AiYxDAuqYsxrfIC5s=;
        b=Pd7XISrAivGt/aZJGrgC2D8xLiE5cl64XS3xzIWTNLWOrg0jMnZSOpvwBs7pSx4yiq
         uXWZ34M5jH7OMZTR+eXG4TWhmlLfnfnf3vVV2rUVgnBQ7MUIzzeHvfSeyvGCRpUVDOQw
         23Eh1/hJTYs3rU6ygoBTHbLEmSUKth8T54QDWu5r4HNWL+IBBHF0I8iUkupabPvHOw/E
         JpynE2aUoxF++/CEMC9HZVVjAKaXXnxoGTDXmEuCReIBYJ7MXoW5b8VFJKHn6PhPUR+X
         OoZjt7+G7GNLcg0en/uDjtTqCu1j2A3QSd+HFypf7V5KxlaNYzFLAbj30j+DmKkmp2an
         oH7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702987362; x=1703592162;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S/swr0WfqxcMigpit0ctRxb6q0AiYxDAuqYsxrfIC5s=;
        b=LxkHOwMqSb1lsHZk+M8/Dxymd10tfZ3CHt4cJmhg3af3+vGjQwIFJXMVa+2jf7Bfnw
         zRkcxZR9CAK2g7GS7IhmNAXoJTxmI3XMZPQ8H1yNugzcKVzgsF7/YYUicJrylgQ+xwAt
         DqcopMWiwk7a4f6vHwlb8TvY3Tfg9nm+A0UlRydqquPtE6fZcfccqT/5UReWZmFeIkNj
         /LmgP4akHF1F0P9M2z0HXKSl3FRT9/Nxojkww097PE46r4QrmGtbLksfwxqO/uL3vucA
         O9jrhQmOtHr50hnE62k/MkRjmXH/3HYIeQmixK69c9pX/vlMYhzLVvX9e34jM7jHYxDt
         RkoA==
X-Gm-Message-State: AOJu0YwLADRo0wPPB9wRrf1nefefjthhcX1D2V1PvjJrVxEPps5H0iWD
	glfL3WWS38D48gso6aAZ9sccgAsI7lqzriKH
X-Google-Smtp-Source: AGHT+IHteyVG+9XTLj+clV8ORiKAf8jH6aXUQRZQdPnNtvfjTQ9ndNLt55wcuuNhcM+HqN2tKlkusA==
X-Received: by 2002:aa7:85d9:0:b0:6d6:32b3:b794 with SMTP id z25-20020aa785d9000000b006d632b3b794mr3814250pfn.69.1702987362132;
        Tue, 19 Dec 2023 04:02:42 -0800 (PST)
Received: from t1700.tail47137.ts.net ([2405:9800:b950:b516::2b8])
        by smtp.gmail.com with ESMTPSA id k11-20020a63ff0b000000b005b7dd356f75sm3720092pgi.32.2023.12.19.04.02.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 04:02:41 -0800 (PST)
From: Abhisit Sangjan <abhisit.sangjan@gmail.com>
X-Google-Original-From: Abhisit Sangjan <abhisit.dev@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Abhisit Sangjan <abhisit.sangjan@gmail.com>
Subject: [meta-rockchip] [PATCH v2 1/1] orangepi-5-plus: Support Orange Pi 5 Plus single-board computer
Date: Tue, 19 Dec 2023 19:02:26 +0700
Message-ID: <20231219120226.5682-1-abhisit.dev@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Dec 2023 12:02:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61982

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

