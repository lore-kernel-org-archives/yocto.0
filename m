Return-Path: <stephen@radxa.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C09ADC47258
	for <webhook@archiver.kernel.org>; Sat, 20 Jan 2024 10:25:55 +0000 (UTC)
Received: from smtpbg153.qq.com (smtpbg153.qq.com [13.245.218.24])
 by mx.groups.io with SMTP id smtpd.web10.19511.1705746342897113269
 for <yocto@lists.yoctoproject.org>;
 Sat, 20 Jan 2024 02:25:46 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: radxa.com, ip: 13.245.218.24, mailfrom: stephen@radxa.com)
X-QQ-mid: bizesmtp64t1705746328tus2ddy3
X-QQ-Originating-IP: 7vRkfWMumG/c5OpNriRG7YmvTJeH8hDQvd9xw+D/1f4=
Received: from mrs-avril.vamrs.com ( [120.236.37.126])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sat, 20 Jan 2024 18:25:21 +0800 (CST)
X-QQ-SSF: 01100000000000Q0R000000A0000000
X-QQ-FEAT: aBJFcW+uBGZnmQQCubXtVwdOzbo6cQNdstajDUkO3HO5vEGHQeczUcw0ip0Y0
	ewjMJ03x4EOZKhVZCKyRHx9vhv1HB0RVPO5vrils2CJDnDXk8pwfC7eMTD9v+gfVyGxAlsu
	A23lkR103QygrnpPOwDRlK31edmkPImhLqWG8luHpcGaw1H5Z9xyhI8B0ePOqn2ltwTv5ni
	csaXlAEB0XdnZUljcT8gfvDyIKvxd01bnYHg8no63+n/ept+Q2V+ybwdbMOD5g/5x2WfDIs
	bNKufSsxjfPhS08Ow1+wfegFCZRBRMHIA3YDG2cN34/L4yDb34VPq6Metq9vDjnM108wNwH
	WB0GVTjOaqNgaexGEQUovUHGtug39q7PtmPYi01xR0oQrrUuyD8uL7EWlb9oyjVrFtFzuUD
	CFIxEB1HtglkJvNdc0Gq6w==
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 660548397495029872
From: Stephen Chen <stephen@radxa.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Stephen Chen <stephen@radxa.com>
Subject: [meta-rockchip] [PATCH] machines: correct rk3066/rk3188/rk3288 kernel devicetree path
Date: Sat, 20 Jan 2024 18:25:20 +0800
Message-Id: <20240120102520.889698-1-stephen@radxa.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 20 Jan 2024 10:25:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62203

Since mainline linux v6.5-rc1, this commit 724ba6751532
("ARM: dts: Move .dts files to vendor sub-directories")
was added.

Link: https://github.com/torvalds/linux/commit/724ba6751532055db75992fc6ae21c3e322e94a7

Signed-off-by: Stephen Chen <stephen@radxa.com>
---
 conf/machine/firefly-rk3288.conf   | 2 +-
 conf/machine/marsboard-rk3066.conf | 2 +-
 conf/machine/radxarock.conf        | 2 +-
 conf/machine/rock2-square.conf     | 2 +-
 conf/machine/tinker-board-s.conf   | 2 +-
 conf/machine/tinker-board.conf     | 2 +-
 conf/machine/vyasa-rk3288.conf     | 2 +-
 7 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/conf/machine/firefly-rk3288.conf b/conf/machine/firefly-rk3288.conf
index 3270bb9..6ff1be8 100644
--- a/conf/machine/firefly-rk3288.conf
+++ b/conf/machine/firefly-rk3288.conf
@@ -9,5 +9,5 @@
 require conf/machine/include/rk3288.inc
 require conf/machine/include/rockchip-wic.inc
 
-KERNEL_DEVICETREE = "rk3288-firefly.dtb"
+KERNEL_DEVICETREE = "rockchip/rk3288-firefly.dtb"
 UBOOT_MACHINE = "firefly-rk3288_defconfig"
diff --git a/conf/machine/marsboard-rk3066.conf b/conf/machine/marsboard-rk3066.conf
index 52fd256..36945e8 100644
--- a/conf/machine/marsboard-rk3066.conf
+++ b/conf/machine/marsboard-rk3066.conf
@@ -8,4 +8,4 @@
 
 require conf/machine/include/rk3066.inc
 
-KERNEL_DEVICETREE = "rk3066a-marsboard.dtb"
+KERNEL_DEVICETREE = "rockchip/rk3066a-marsboard.dtb"
diff --git a/conf/machine/radxarock.conf b/conf/machine/radxarock.conf
index 42d8848..6ad8474 100644
--- a/conf/machine/radxarock.conf
+++ b/conf/machine/radxarock.conf
@@ -9,4 +9,4 @@
 
 require conf/machine/include/rk3188.inc
 
-KERNEL_DEVICETREE = "rk3188-radxarock.dtb"
+KERNEL_DEVICETREE = "rockchip/rk3188-radxarock.dtb"
diff --git a/conf/machine/rock2-square.conf b/conf/machine/rock2-square.conf
index 46064ee..9468b9a 100644
--- a/conf/machine/rock2-square.conf
+++ b/conf/machine/rock2-square.conf
@@ -9,7 +9,7 @@
 require conf/machine/include/rk3288.inc
 
 SPL_BINARY = "u-boot-spl-dtb.bin"
-KERNEL_DEVICETREE = "rk3288-rock2-square.dtb"
+KERNEL_DEVICETREE = "rockchip/rk3288-rock2-square.dtb"
 UBOOT_MACHINE = "rock2_defconfig"
 
 # This board doesn't support the combined idbloader, so resort to the older
diff --git a/conf/machine/tinker-board-s.conf b/conf/machine/tinker-board-s.conf
index 870b9bc..3a65613 100644
--- a/conf/machine/tinker-board-s.conf
+++ b/conf/machine/tinker-board-s.conf
@@ -7,5 +7,5 @@
 
 require conf/machine/include/tinker.inc
 
-KERNEL_DEVICETREE = "rk3288-tinker-s.dtb"
+KERNEL_DEVICETREE = "rockchip/rk3288-tinker-s.dtb"
 UBOOT_MACHINE = "tinker-s-rk3288_defconfig"
diff --git a/conf/machine/tinker-board.conf b/conf/machine/tinker-board.conf
index 8fe5f63..ef1a1c1 100644
--- a/conf/machine/tinker-board.conf
+++ b/conf/machine/tinker-board.conf
@@ -7,5 +7,5 @@
 
 require conf/machine/include/tinker.inc
 
-KERNEL_DEVICETREE = "rk3288-tinker.dtb"
+KERNEL_DEVICETREE = "rockchip/rk3288-tinker.dtb"
 UBOOT_MACHINE = "tinker-rk3288_defconfig"
diff --git a/conf/machine/vyasa-rk3288.conf b/conf/machine/vyasa-rk3288.conf
index 5b44257..52b4401 100644
--- a/conf/machine/vyasa-rk3288.conf
+++ b/conf/machine/vyasa-rk3288.conf
@@ -9,7 +9,7 @@ require conf/machine/include/rk3288.inc
 require conf/machine/include/rockchip-wic.inc
 
 KERNEL_IMAGETYPE = "uImage"
-KERNEL_DEVICETREE = "rk3288-vyasa.dtb"
+KERNEL_DEVICETREE = "rockchip/rk3288-vyasa.dtb"
 KERNEL_EXTRA_ARGS += "LOADADDR=0x02000000"
 
 UBOOT_MACHINE = "vyasa-rk3288_defconfig"
-- 
2.34.1


