Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81C1DE784B3
	for <webhook@archiver.kernel.org>; Mon,  2 Oct 2023 14:11:53 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.web11.82810.1696255912760615388
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Oct 2023 07:11:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Pi+7uquQ;
 spf=pass (domain: gmail.com, ip: 209.85.219.54, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-65b0dad1f98so77442356d6.0
        for <yocto@lists.yoctoproject.org>; Mon, 02 Oct 2023 07:11:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696255911; x=1696860711; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=eWsqjQWHN8j4ouzT47nPvJu6+tizSdE74q4apR8H+rs=;
        b=Pi+7uquQTpFZY9uyloL4mj61V7ryKtMkgIgshZX3u8qiVlMHSpVtCFOu1TenPWJy5O
         nryyXWJG2br+S6rVLswn32qeHkqZ2vxlE/go+ydnc81lAf220CyIuKTDnuIieWQHpsWd
         cwK5FO2WdlfacONfVyAz20Lo9ybcPRGnB+hirWJ/Vlmu9Rd36+nf17IyvdWb6hCcFQ6Y
         4A3nHYeIxsA50PnCM8D0kfw2znNK8RQyjrRfU8jonpkmp4LhbPXm5CALXkwvbMNZaxvE
         zE8C4FTwlWjBkZwgVogBzeeXVUCLssqYzolQBV4KcvbB9pT3pvsUK6ouqnWC5VLAHt/Q
         Co0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696255911; x=1696860711;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eWsqjQWHN8j4ouzT47nPvJu6+tizSdE74q4apR8H+rs=;
        b=YoQNgLuFAD+nQq0ghFa/Qg1DO/DwyZQYA5h/VNLe2gqdeOmxCGkpRWr73S9OpsAJYo
         VCIYX1NEgaS7t46FAkMp95mN52idyZEa1phPmC9s16Tfk3kwR389LQmL2hQKbIalXqz7
         bHJMkHp+LOnR+9BKDgijaFJAZJPLIDfbNbZaJfz5MARUpAbAf85+LqGIKG1jVgAB/pfW
         gMuPieD0KjGvgXainfoSg/Z0+HmMiG2QeYEU+IgBHroqlUriFVMSThUfY7/8xYq5axHS
         LF8PRpURWIWbHjzYFBa/SiDQo5POLnYaBxuNVc6tpIwH2XWc5VCLN3nmmtSSP7YF9GDh
         TiKw==
X-Gm-Message-State: AOJu0YxHBUK58ct3m1IAlz0E4KVGkpo2enzWphrL1tnwj5oMsuf5XBy2
	rxx359YKLe/t6W1AGhyM9Ii0x2c1+nM=
X-Google-Smtp-Source: AGHT+IEtC+Hh6aado1v9AZbnmnjmbTcOjxqQV+rSJA8DUB8BKKpydDTR+nIXupZ29G3IEoUb5CYV1Q==
X-Received: by 2002:a0c:a602:0:b0:658:3680:5185 with SMTP id s2-20020a0ca602000000b0065836805185mr11477043qva.36.1696255911028;
        Mon, 02 Oct 2023 07:11:51 -0700 (PDT)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id oj2-20020a056214440200b0065af4977ea3sm7751772qvb.24.2023.10.02.07.11.49
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 07:11:50 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] nanopi-r2s: add
Date: Mon,  2 Oct 2023 10:11:46 -0400
Message-ID: <20231002141146.9037-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.41.0.327.gaa9166bcc0ba
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 02 Oct 2023 14:11:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61191

The NanoPi R2S is a mini router with edge computing and dual GbE ports by
FriendlyElec. It is based on the Rockchip RK3328 - a quad A53 core, 64-bit SoC
running at 1.2GHz with at least 1GB of DDR4 RAM. It has one USB 2.0 host and
is powered via a USB type-C connector (5V/2A).

https://www.friendlyelec.com/index.php?route=product/product&product_id=282

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 README                                      |  1 +
 conf/machine/nanopi-r2s.conf                | 11 +++++++++++
 recipes-kernel/linux/linux-yocto_%.bbappend |  1 +
 3 files changed, 13 insertions(+)
 create mode 100644 conf/machine/nanopi-r2s.conf

diff --git a/README b/README
index e815fb47ff5f..8451b4778c37 100644
--- a/README
+++ b/README
@@ -32,6 +32,7 @@ Status of supported boards:
 		nanopi-r4s
 		rock-5b
 		rock-pi-s
+		nanopi-r2s
 	builds:
 		marsboard-rk3066
 		radxarock
diff --git a/conf/machine/nanopi-r2s.conf b/conf/machine/nanopi-r2s.conf
new file mode 100644
index 000000000000..4472c21f0217
--- /dev/null
+++ b/conf/machine/nanopi-r2s.conf
@@ -0,0 +1,11 @@
+#@TYPE: Machine
+#@NAME: NanoPi R2S
+#@DESCRIPTION: The NanoPi R2S is a mini router with edge computing and dual GbE ports by FriendlyElec
+#https://www.friendlyelec.com/index.php?route=product/product&product_id=282
+
+require conf/machine/include/rk3328.inc
+
+KERNEL_DEVICETREE = "rockchip/rk3328-nanopi-r2s.dtb"
+MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
+
+UBOOT_MACHINE = "nanopi-r2s-rk3328_defconfig"
diff --git a/recipes-kernel/linux/linux-yocto_%.bbappend b/recipes-kernel/linux/linux-yocto_%.bbappend
index 61c89f70d8dc..456182ee473d 100644
--- a/recipes-kernel/linux/linux-yocto_%.bbappend
+++ b/recipes-kernel/linux/linux-yocto_%.bbappend
@@ -14,6 +14,7 @@ COMPATIBLE_MACHINE:rock64 = "rock64"
 COMPATIBLE_MACHINE:rock-pi-e = "rock-pi-e"
 COMPATIBLE_MACHINE:nanopi-r4s = "nanopi-r4s"
 COMPATIBLE_MACHINE:rock-pi-s = "rock-pi-s"
+COMPATIBLE_MACHINE:nanopi-r2s = "nanopi-r2s"
 
 SRC_URI:append = " file://rockchip-kmeta;type=kmeta;name=rockchip-kmeta;destsuffix=rockchip-kmeta"
 SRC_URI:append:nanopi-r4s = " file://nanopi-r4s.scc"
-- 
2.41.0.327.gaa9166bcc0ba


