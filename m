Return-Path: <stephen@radxa.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18187C41535
	for <webhook@archiver.kernel.org>; Tue, 19 Dec 2023 11:24:19 +0000 (UTC)
Received: from smtpbguseast2.qq.com (smtpbguseast2.qq.com [54.204.34.130])
 by mx.groups.io with SMTP id smtpd.web10.9869.1702985049951175328
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Dec 2023 03:24:11 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: radxa.com, ip: 54.204.34.130, mailfrom: stephen@radxa.com)
X-QQ-mid: bizesmtp82t1702985039tfvgrcu2
Received: from mrs-avril.vamrs.com ( [120.236.37.126])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 19 Dec 2023 19:23:53 +0800 (CST)
X-QQ-SSF: 01100000000000Q0R000000A0000000
X-QQ-FEAT: STiaxnIrALhCPdn83HFnhyLOp3t59CoahIgI51lq7qEUnaWlHItmwdzbDzBM9
	VVoyZsDa0Kf4T3rskeivwCmhGWehz1SEiqEflOfDP4wwL0dCcxsyC0jL7Ejbb8rC/dG5AHG
	8rUT2BV+p36avAUun1sRvo98i1nPbtxVkL7K0Q5kBUZzOIF0p6Mm+IkpaTq7EtqFh/sXj87
	tmx2CKYU698lIvErUlWRe1OeiJ29qyWt9CbJT0jVA+7rgXzrRlfgr1+Y1wa6Mwm9K7dlGr7
	GNJRLti62UamIJ+X9MDZe8Qznyz30io7JvUApbrS+FCyfIphHUgN0F7AlsGRGt/KoHIhtHt
	eRjKYv6Xq2bXdrcaUiV/BmcwdHFSluFWDdd1nwVwPdkvyAAMmCJU7Gll2VxVMLPTI2zDOzM
	V5tVkqJ/1V7q9RZRYnohvQ==
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 861876672216077750
From: Stephen Chen <stephen@radxa.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Stephen Chen <stephen@radxa.com>
Subject: [meta-rockchip] [PATCH] use MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS to add kernel-modules
Date: Tue, 19 Dec 2023 19:23:52 +0800
Message-Id: <20231219112352.2531373-1-stephen@radxa.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz5a-0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Dec 2023 11:24:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61979

This will add all built kernel modules to the image.

Signed-off-by: Stephen Chen <stephen@radxa.com>

diff --git a/conf/machine/include/rock-pi-4.inc b/conf/machine/include/rock-pi-4.inc
index 0a86846..fd9a9eb 100644
--- a/conf/machine/include/rock-pi-4.inc
+++ b/conf/machine/include/rock-pi-4.inc
@@ -3,4 +3,4 @@ MACHINEOVERRIDES =. "rock-pi-4:"
 
 require conf/machine/include/rk3399.inc
 
-MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
+MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "kernel-modules"
diff --git a/conf/machine/nanopi-m4b.conf b/conf/machine/nanopi-m4b.conf
index 35cd8f6..01d5c59 100644
--- a/conf/machine/nanopi-m4b.conf
+++ b/conf/machine/nanopi-m4b.conf
@@ -5,7 +5,7 @@
 
 require conf/machine/include/rk3399.inc
 
-MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
+MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "kernel-modules"
 
 KERNEL_DEVICETREE = "rockchip/rk3399-nanopi-m4b.dtb"
 UBOOT_MACHINE = "nanopi-m4b-rk3399_defconfig"
diff --git a/conf/machine/nanopi-r2s.conf b/conf/machine/nanopi-r2s.conf
index 4472c21..4ed3160 100644
--- a/conf/machine/nanopi-r2s.conf
+++ b/conf/machine/nanopi-r2s.conf
@@ -6,6 +6,6 @@
 require conf/machine/include/rk3328.inc
 
 KERNEL_DEVICETREE = "rockchip/rk3328-nanopi-r2s.dtb"
-MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
+MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "kernel-modules"
 
 UBOOT_MACHINE = "nanopi-r2s-rk3328_defconfig"
diff --git a/conf/machine/nanopi-r4s.conf b/conf/machine/nanopi-r4s.conf
index 21be440..1a63a96 100644
--- a/conf/machine/nanopi-r4s.conf
+++ b/conf/machine/nanopi-r4s.conf
@@ -5,7 +5,7 @@
 
 require conf/machine/include/rk3399.inc
 
-MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
+MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "kernel-modules"
 
 KERNEL_DEVICETREE = "rockchip/rk3399-nanopi-r4s.dtb"
 UBOOT_MACHINE = "nanopi-r4s-rk3399_defconfig"
diff --git a/conf/machine/rock-5a.conf b/conf/machine/rock-5a.conf
index 5ace4da..53b56b1 100644
--- a/conf/machine/rock-5a.conf
+++ b/conf/machine/rock-5a.conf
@@ -7,6 +7,6 @@ require conf/machine/include/rk3588s.inc
 
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-dev"
 KERNEL_DEVICETREE = "rockchip/rk3588s-rock-5a.dtb"
-MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
+MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "kernel-modules"
 
 UBOOT_MACHINE = "rock5a-rk3588s_defconfig"
diff --git a/conf/machine/rock-5b.conf b/conf/machine/rock-5b.conf
index d137108..dc5fabc 100644
--- a/conf/machine/rock-5b.conf
+++ b/conf/machine/rock-5b.conf
@@ -7,6 +7,6 @@ require conf/machine/include/rk3588.inc
 
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-dev"
 KERNEL_DEVICETREE = "rockchip/rk3588-rock-5b.dtb"
-MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
+MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "kernel-modules"
 
 UBOOT_MACHINE = "rock5b-rk3588_defconfig"
diff --git a/conf/machine/rock-pi-e.conf b/conf/machine/rock-pi-e.conf
index 517956c..3f83675 100644
--- a/conf/machine/rock-pi-e.conf
+++ b/conf/machine/rock-pi-e.conf
@@ -6,6 +6,6 @@
 require conf/machine/include/rk3328.inc
 
 KERNEL_DEVICETREE = "rockchip/rk3328-rock-pi-e.dtb"
-MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
+MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "kernel-modules"
 
 UBOOT_MACHINE = "rock-pi-e-rk3328_defconfig"
diff --git a/conf/machine/rock-pi-s.conf b/conf/machine/rock-pi-s.conf
index 79ea73c..590e972 100644
--- a/conf/machine/rock-pi-s.conf
+++ b/conf/machine/rock-pi-s.conf
@@ -6,6 +6,6 @@
 require conf/machine/include/rk3308.inc
 
 KERNEL_DEVICETREE = "rockchip/rk3308-rock-pi-s.dtb"
-MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
+MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "kernel-modules"
 
 UBOOT_MACHINE = "rock-pi-s-rk3308_defconfig"
-- 
2.25.1


