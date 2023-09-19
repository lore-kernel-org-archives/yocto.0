Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5398ECD5BB8
	for <webhook@archiver.kernel.org>; Tue, 19 Sep 2023 13:01:34 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
 by mx.groups.io with SMTP id smtpd.web11.7887.1695128485242414081
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Sep 2023 06:01:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MFg3BOEd;
 spf=pass (domain: gmail.com, ip: 209.85.219.53, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-6561fc267dbso30407576d6.2
        for <yocto@lists.yoctoproject.org>; Tue, 19 Sep 2023 06:01:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695128484; x=1695733284; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=njaed2328FZYbfzHhcAKPk+XUO9w/RGwCBljEjB+0yk=;
        b=MFg3BOEd1raev34D5bARq31mkKwIgG+SqXRyEZcdvT86dVfiSfNSAjeug13+5KI/ys
         2WV6Cp4tfNaYDuqZU+KW7cu2uA4Zo6JlhkjJFhXifC7TcwgeJdBiGnGxm9eFqrMSlMh5
         BVIll4ckO+OUGM5m9XHUIsHO0XYKzbu3MWE2L5Ja3qcP4yV3sWjimaEDbSc8QfI1HpwM
         Ii0Fx3dGD3YjGr10B91BbcAQ/hG2N8ovTufHRxCDroSL3L25AjxO86JueyAfcRk1vvD8
         9EQPuqXMS2IjnqRT1VBG8MWH4CiCc/ojLdIwoZeNBpVVgRlJSoU3bb/Wh6deW3toYWM4
         yg4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695128484; x=1695733284;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=njaed2328FZYbfzHhcAKPk+XUO9w/RGwCBljEjB+0yk=;
        b=ca5vkr5TRchCb9GG6NhD1hXGvLEkUkAi6TrdBbeEp976GcezBYTpxTWjK1g1l7GNCo
         sFzN78I+SkgluSVHPoyqovjzinnxv/ZEsK8r5q0AfZHBB0vzK+kZsp3jx483ajviS9ev
         GPCd6yV+WeQcLLBeW3IfPNZS4iGFoEWzm7y8CPvnBRDbL7GieesiRjr1QJKMOCRzPrHr
         7rAPEY/DqRuDypA73d3r7LfkJPXSeaGlzSEfLaZgRkhKbzpdv/qxaMThFAUgfEvfwa7Z
         pgWtx7hY/o3gvy6UHdWCa9PPvnF+378veSoqJ1t4oMmIVs4wFzYT/8OhSxnYpqEI9MX5
         L/yA==
X-Gm-Message-State: AOJu0Yw+A3yXtKFeQ4IH7LlO9qY3OyI5C+baQqF/s6zwuOyhkFUKHOyR
	Tc6mKK8gkdsldxEP0PGZxZWcf/BkvNOo6A==
X-Google-Smtp-Source: AGHT+IHs4T6m2M+E8MrmefGaWzOEY9c1sY7GEl50RwWu+MlD4zGMscD2yqNJ0AugR6qkJC+5jLpH0Q==
X-Received: by 2002:a0c:e54e:0:b0:647:1a66:181a with SMTP id n14-20020a0ce54e000000b006471a66181amr11531582qvm.50.1695128483653;
        Tue, 19 Sep 2023 06:01:23 -0700 (PDT)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id b18-20020a0cf052000000b0064f3f53bc9csm3204814qvl.94.2023.09.19.06.01.22
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Sep 2023 06:01:22 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH v2] nanopi-r4s: add
Date: Tue, 19 Sep 2023 09:01:15 -0400
Message-ID: <20230919130115.17484-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.41.0.327.gaa9166bcc0ba
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Sep 2023 13:01:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61041

Add a MACHINE definition for the FriendlyElec NanoPi R4S
https://www.friendlyelec.com/index.php?route=product/product&product_id=284

Include a device-tree patch to enable the 2nd PCIe ethernet.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
v2:
- rebase on top of master
- s/r2s/r4s/g
- include DT patch to enable PCIe ethernet
---
 README                                        |  1 +
 conf/machine/nanopi-r4s.conf                  | 13 ++++++
 .../linux/linux-yocto/nanopi-r4s.scc          |  6 +++
 ...anopi-r4s.dts-enable-second-ethernet.patch | 41 +++++++++++++++++++
 recipes-kernel/linux/linux-yocto_%.bbappend   |  2 +
 5 files changed, 63 insertions(+)
 create mode 100644 conf/machine/nanopi-r4s.conf
 create mode 100644 recipes-kernel/linux/linux-yocto/nanopi-r4s.scc
 create mode 100644 recipes-kernel/linux/linux-yocto/rockchip-kmeta/bsp/rockchip/0001-rk3399-nanopi-r4s.dts-enable-second-ethernet.patch

diff --git a/README b/README
index d66ed7e79bd2..286dafbe1020 100644
--- a/README
+++ b/README
@@ -29,6 +29,7 @@ Status of supported boards:
 		tinker-board-s
 		vyasa-rk3288
 		firefly-rk3288
+		nanopi-r4s
 	builds:
 		marsboard-rk3066
 		radxarock
diff --git a/conf/machine/nanopi-r4s.conf b/conf/machine/nanopi-r4s.conf
new file mode 100644
index 000000000000..160f8b906d63
--- /dev/null
+++ b/conf/machine/nanopi-r4s.conf
@@ -0,0 +1,13 @@
+#@TYPE: Machine
+#@NAME: NanoPi R4S
+#@DESCRIPTION: NanoPi R4S is a high-end FriendlyElec mini-router based on the RK3399 SoC
+#https://www.friendlyelec.com/index.php?route=product/product&product_id=284
+
+MACHINEOVERRIDES =. "nanopi-r4s:"
+
+require conf/machine/include/rk3399.inc
+
+MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
+
+KERNEL_DEVICETREE = "rockchip/rk3399-nanopi-r4s.dtb"
+UBOOT_MACHINE = "nanopi-r4s-rk3399_defconfig"
diff --git a/recipes-kernel/linux/linux-yocto/nanopi-r4s.scc b/recipes-kernel/linux/linux-yocto/nanopi-r4s.scc
new file mode 100644
index 000000000000..266b77c63fe5
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto/nanopi-r4s.scc
@@ -0,0 +1,6 @@
+define KFEATURE_DESCRIPTION "tweaks for the nanopi-r4s"
+define KMACHINE nanopi-r4s
+define KTYPE standard
+define KARCH arm64
+
+include bsp/rockchip/0001-rk3399-nanopi-r4s.dts-enable-second-ethernet.patch
diff --git a/recipes-kernel/linux/linux-yocto/rockchip-kmeta/bsp/rockchip/0001-rk3399-nanopi-r4s.dts-enable-second-ethernet.patch b/recipes-kernel/linux/linux-yocto/rockchip-kmeta/bsp/rockchip/0001-rk3399-nanopi-r4s.dts-enable-second-ethernet.patch
new file mode 100644
index 000000000000..e1f2b92665dd
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto/rockchip-kmeta/bsp/rockchip/0001-rk3399-nanopi-r4s.dts-enable-second-ethernet.patch
@@ -0,0 +1,41 @@
+From 4c867907b68b417da0711cabdde30a969e368596 Mon Sep 17 00:00:00 2001
+From: Trevor Woerner <twoerner@gmail.com>
+Date: Sun, 17 Sep 2023 17:30:43 -0400
+Subject: [PATCH] rk3399-nanopi-r4s.dts: enable second ethernet
+
+# lspci
+00:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3399 PCI Express Root Port
+01:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8111/8168/8411 PCI Express Gigabit Ether)
+
+Link: https://github.com/armbian/build/pull/2415
+Upstream-Status: Submitted [by someone else]
+Signed-off-by: Trevor Woerner <twoerner@gmail.com>
+---
+ arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts | 11 +++++++++++
+ 1 file changed, 11 insertions(+)
+
+diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
+index fe5b52610010..771615722358 100644
+--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
++++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
+@@ -76,6 +76,17 @@ &pcie0 {
+ 	max-link-speed = <1>;
+ 	num-lanes = <1>;
+ 	vpcie3v3-supply = <&vcc3v3_sys>;
++
++	pcie@0 {
++		reg = <0x00000000 0 0 0 0>;
++		#address-cells = <3>;
++		#size-cells = <2>;
++
++		r8169: pcie@0,0 {
++			reg = <0x000000 0 0 0 0>;
++			local-mac-address = [ 00 00 00 00 00 00 ];
++		};
++	};
+ };
+ 
+ &pinctrl {
+-- 
+2.41.0.327.gaa9166bcc0ba
+
diff --git a/recipes-kernel/linux/linux-yocto_%.bbappend b/recipes-kernel/linux/linux-yocto_%.bbappend
index d0d24f1b074f..53833f1cc3f4 100644
--- a/recipes-kernel/linux/linux-yocto_%.bbappend
+++ b/recipes-kernel/linux/linux-yocto_%.bbappend
@@ -12,5 +12,7 @@ COMPATIBLE_MACHINE:nanopi-m4 = "nanopi-m4"
 COMPATIBLE_MACHINE:nanopi-m4-2gb = "nanopi-m4-2gb"
 COMPATIBLE_MACHINE:rock64 = "rock64"
 COMPATIBLE_MACHINE:rock-pi-e = "rock-pi-e"
+COMPATIBLE_MACHINE:nanopi-r4s = "nanopi-r4s"
 
 SRC_URI:append = " file://rockchip-kmeta;type=kmeta;name=rockchip-kmeta;destsuffix=rockchip-kmeta"
+SRC_URI:append:nanopi-r4s = " file://nanopi-r4s.scc"
-- 
2.41.0.327.gaa9166bcc0ba


