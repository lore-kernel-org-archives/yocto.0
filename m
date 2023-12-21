Return-Path: <abhisit.sangjan@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 019D5C35274
	for <webhook@archiver.kernel.org>; Thu, 21 Dec 2023 04:40:57 +0000 (UTC)
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
 by mx.groups.io with SMTP id smtpd.web11.44838.1703133654933857859
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Dec 2023 20:40:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ksI7ar5Y;
 spf=pass (domain: gmail.com, ip: 209.85.166.45, mailfrom: abhisit.sangjan@gmail.com)
Received: by mail-io1-f45.google.com with SMTP id ca18e2360f4ac-7b7fdde8b56so24744639f.1
        for <yocto@lists.yoctoproject.org>; Wed, 20 Dec 2023 20:40:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703133654; x=1703738454; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=a5cL4mJHkOQvRi1S/eAbsNoXXISXBbeGcKatFT1t8SU=;
        b=ksI7ar5Y4+/XDTE86z4rQY5kILZk+NbpwGBDSchyOYl0b5L+jRlYehZ3swRBdS2gLN
         xKTWw3nUtPWalnGDk3cn2M3naWVA0eMIBUMwEA1FGK9KHyiZNYQIvrJSODWKUB2SjeOI
         Qv4Q0advpXPlfxDce3qMCBshquusQ+JYVqEZoJa58c/jEM/17XPBiK1J19ZEWPyuTD4n
         qf5lb8Qx/Q1Yh/2HpQQmmvoqpDqnXzYC9t96dbIrXs1v79jUIxQJoNPT61tXCGotYZnQ
         qr2GaiVC0nz1XM9gyVMCy9AWDY1Vy5MLcSB4FMNHuF8J2KYogM3jOQWh+dG4Bi8+g2Ov
         j4oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703133654; x=1703738454;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a5cL4mJHkOQvRi1S/eAbsNoXXISXBbeGcKatFT1t8SU=;
        b=N9XnK4t0JEq1IU7GXjDVLjhXaZPQRg1hnL5XiBYo4oss2bBzt+bOosfK2ko8MxPy0G
         OTorgBGQ4hU6KVlHV0r2SUaBn0q+hs5yHXIXuXCYGXe4q3tvEGiY64gfhwsPa6/nTFlF
         bitoGzXPMzSqwdXN7ERfGPJgnnVz0Ivhgund3bMeZwz133+EGwJBUyBM4a4+2QPw3yUQ
         KDVAKY8Qv4aAd3cW8DiFVo6cTGOX4+YERnTb9aOQitxmoUo/WQ0GsajeNyjPvgfO+EPf
         TfcbCSNRxM1FK54GeTuUnr3mH/jR3iWrhUhjYSY1hjQ0i/w9UNiic5cWOsSmfv2t6Y3D
         b/sw==
X-Gm-Message-State: AOJu0YxYxjDZDQyDoKiYv2zn9m+KHN+G2OdVfD0d/zlog3qafwTEAc0e
	YoclgiLfu2mtyQYCeMOT5zCTNjTrE1Gv2A==
X-Google-Smtp-Source: AGHT+IEFkiKdCkJg+RFgglhzYqHg6/U+Ea2V7dV5t4nzBj030mvvebH1uvBLWxstPKoXFePMtk7jlg==
X-Received: by 2002:a05:6e02:b46:b0:35f:d138:b1d6 with SMTP id f6-20020a056e020b4600b0035fd138b1d6mr1162579ilu.53.1703133653802;
        Wed, 20 Dec 2023 20:40:53 -0800 (PST)
Received: from t1700.tail47137.ts.net ([2405:9800:b950:b516::2b8])
        by smtp.gmail.com with ESMTPSA id x2-20020a170902ea8200b001d1d6f6b67dsm565783plb.147.2023.12.20.20.40.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Dec 2023 20:40:53 -0800 (PST)
From: Abhisit Sangjan <abhisit.sangjan@gmail.com>
X-Google-Original-From: Abhisit Sangjan <abhisit.dev@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Abhisit Sangjan <abhisit.sangjan@gmail.com>
Subject: [meta-rockchip] [PATCH v3 1/1] orangepi-5-plus: Support Orange Pi 5 Plus single-board computer
Date: Thu, 21 Dec 2023 11:40:48 +0700
Message-ID: <20231221044048.1959-1-abhisit.dev@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Dec 2023 04:40:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62005

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
index f1609c7..838d51c 100644
--- a/recipes-bsp/rkbin/rockchip-rkbin_git.bb
+++ b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
@@ -14,7 +14,7 @@ S = "${WORKDIR}/git"

 COMPATIBLE_MACHINE = "^$"
 COMPATIBLE_MACHINE:rk3308 = "rk3308"
-COMPATIBLE_MACHINE:rk3588s = "rk3588s"
+COMPATIBLE_MACHINE:rk3588s = "rk3588s?"

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

