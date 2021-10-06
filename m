Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CBCDC433F5
	for <webhook@archiver.kernel.org>; Wed,  6 Oct 2021 18:52:23 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com
 [209.85.219.45])
 by mx.groups.io with SMTP id smtpd.web09.458.1633546342625180269
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Oct 2021 11:52:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=nXCrFdOV;
 spf=pass (domain: gmail.com, ip: 209.85.219.45, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f45.google.com with SMTP id o13so2582306qvm.4
        for <yocto@lists.yoctoproject.org>;
 Wed, 06 Oct 2021 11:52:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9nRg2lgp8lUhMn6h5cioLIQvs2+PZFe9n4cUCNge0nc=;
        b=nXCrFdOVicR5dBK2Zc5oLALVEZOkneG+1ZDAkZt5LQC5hSp16O6jUz6sEf695lpiFO
         EDD7vvOMXuKjWWcXdSLKFFcMwiMGaTjOI54Dt2IlvweJwfpA7t3q51uxv39SGmEtGidx
         S3I9byHCFPOGEsRxpcF2gaTln0VDoNb2W0D7Niw/lL8iHghrONjhzoooG6Tx7sk2f9gh
         sYxd4uIppvIhAD6Lt8md18xal9kK+T0NqtxaYXQaDeqVhiyO7lzhVlKwE4qwW8R6dNmR
         vCYL6qi3on9EIBeza1n8N3G/86C/ViABoOeDNkbOtkQMXNYOsFFVQU+IQFQMjlWWTl4e
         LD7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9nRg2lgp8lUhMn6h5cioLIQvs2+PZFe9n4cUCNge0nc=;
        b=bWKbxIMf6dlu4CbEqk8X+bYdUOR/y8IcptdHbfhWEyjYVi7NGheMAscDwoPx+jhPo5
         gQW6HWSYYwdMoF/Kf0pbwRADAmX+UystL4jlIzYDni0RP92+DA1TLCQeUae2dXJzACSM
         q7UAhmIyya87Mjt7msTx/akMUZzlTmRvJnvkKZBQrWG3CO1nK2VTIYhrk0Lyl/Z8mM03
         p9xU4WOU+ppcDPFoIIKwduFGCIFvMbAk2vQ0wKBB2jg/OAvQ4aw1CgPB+Dq7+gFXMd5Z
         KqLK+3xZ5BG5ixQTJEgXSiE21VQiU3u8gXHjjRkZMLKyZS3ZKU90eULxpL5XR5WymVyz
         BjRA==
X-Gm-Message-State: AOAM5336x8iRz3HKqqoTSZ6qHpPZWdO5LureEVS/sRPSzqC5oPPo0nOO
	UdFDvqcvXDV6uHfArn3g67xXBtsVYqg=
X-Google-Smtp-Source: 
 ABdhPJyddx7DMjAMdN773IGP8yuJjZjU3Kta7SqEvB5vHXV/fa9RGE06NkqyT4L7IQTLOw8/RGhEyQ==
X-Received: by 2002:a05:6214:cce:: with SMTP id
 14mr7334054qvx.49.1633546341405;
        Wed, 06 Oct 2021 11:52:21 -0700 (PDT)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca.
 [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 i144sm123795qke.9.2021.10.06.11.52.20
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Oct 2021 11:52:21 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] nanopi-m4: enable booting from uSD
Date: Wed,  6 Oct 2021 14:52:12 -0400
Message-Id: <20211006185212.40179-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.30.0.rc0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Oct 2021 18:52:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54982

Enable the vcc3v0_sd regulator on boot so that the device can boot from the
uSD card (when using certain uSD cards).

Upstream-Status: Submitted [http://lists.infradead.org/pipermail/linux-arm-kernel/2021-October/688254.html]

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 ....dtsi-enable-sdmmc-regulator-on-boot.patch | 47 +++++++++++++++++++
 recipes-kernel/linux/linux-yocto%.bbappend    |  1 +
 2 files changed, 48 insertions(+)
 create mode 100644 recipes-kernel/linux/files/0001-rk3399-nanopi4.dtsi-enable-sdmmc-regulator-on-boot.patch

diff --git a/recipes-kernel/linux/files/0001-rk3399-nanopi4.dtsi-enable-sdmmc-regulator-on-boot.patch b/recipes-kernel/linux/files/0001-rk3399-nanopi4.dtsi-enable-sdmmc-regulator-on-boot.patch
new file mode 100644
index 0000000..c871c5a
--- /dev/null
+++ b/recipes-kernel/linux/files/0001-rk3399-nanopi4.dtsi-enable-sdmmc-regulator-on-boot.patch
@@ -0,0 +1,47 @@
+From 33e3f2f8b22c226977b6461581ae113c3f77f5fd Mon Sep 17 00:00:00 2001
+From: Trevor Woerner <twoerner@gmail.com>
+Date: Wed, 6 Oct 2021 11:41:23 -0400
+Subject: [PATCH] rk3399-nanopi4.dtsi: enable sdmmc regulator on boot
+
+When trying to boot a nanopi-m4 board with an SDHC-class uSD card, the boot
+comes to a full stop shortly after initializing the mmc subsystem. The boot
+can be cajoled into continuing if, after waiting a minute or so, the uSD
+card is ejected and re-inserted. Waiting a minute or so before ejecting and
+re-inserting the uSD card is crucial since the boot will not continue if
+the card is ejected/re-inserted too soon after the boot has stopped.
+
+The nanopi-m4 has a uSD card and an optional eMMC module, either of which
+can be used for booting. In my case I don't have the optional eMMC module,
+therefore I'm booting from the uSD card. When booting from the uSD card,
+its regulator needs to be enabled at boot.
+
+Curiously, this should have been an issue from day one, but it only started
+to become a problem after commit 98e48cd9283d ("regulator: core: resolve
+supply for boot-on/always-on regulators") was merged. Additionally, by
+coincidence, I happened to be using an SDHC-class card in my device, and
+saw the failure. However, if I use an SDXC-class uSD card the problem does
+not occur.
+
+Much thanks to Mark Brown and Javier Martinez Canillas for their assistance
+on irc!
+
+Signed-off-by: Trevor Woerner <twoerner@gmail.com>
+---
+ arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+index 8c0ff6c96e03..5cf02e2ef9b3 100644
+--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
++++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+@@ -71,6 +71,7 @@ vcc3v0_sd: vcc3v0-sd {
+ 		pinctrl-names = "default";
+ 		pinctrl-0 = <&sdmmc0_pwr_h>;
+ 		regulator-always-on;
++		regulator-boot-on;
+ 		regulator-min-microvolt = <3000000>;
+ 		regulator-max-microvolt = <3000000>;
+ 		regulator-name = "vcc3v0_sd";
+-- 
+2.30.0.rc0
+
diff --git a/recipes-kernel/linux/linux-yocto%.bbappend b/recipes-kernel/linux/linux-yocto%.bbappend
index 470dc09..61d5116 100644
--- a/recipes-kernel/linux/linux-yocto%.bbappend
+++ b/recipes-kernel/linux/linux-yocto%.bbappend
@@ -12,3 +12,4 @@ COMPATIBLE_MACHINE:rock64 = "rock64"
 COMPATIBLE_MACHINE:rock-pi-e = "rock-pi-e"
 
 FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
+SRC_URI:append:nanopi-m4 = " file://0001-rk3399-nanopi4.dtsi-enable-sdmmc-regulator-on-boot.patch"
-- 
2.30.0.rc0


