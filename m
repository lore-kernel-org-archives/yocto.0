Return-Path: <stephen@radxa.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71FF8C47258
	for <webhook@archiver.kernel.org>; Sat, 20 Jan 2024 09:31:05 +0000 (UTC)
Received: from smtpbguseast1.qq.com (smtpbguseast1.qq.com [54.204.34.129])
 by mx.groups.io with SMTP id smtpd.web10.18876.1705743059703660781
 for <yocto@lists.yoctoproject.org>;
 Sat, 20 Jan 2024 01:31:01 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: radxa.com, ip: 54.204.34.129, mailfrom: stephen@radxa.com)
X-QQ-mid: bizesmtp90t1705743044tc3aim33
X-QQ-Originating-IP: uceOoqt4+ct45PdVSmw2i3T/yX0GXtv8U7twIsnbT64=
Received: from mrs-avril.vamrs.com ( [120.236.37.126])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sat, 20 Jan 2024 17:30:39 +0800 (CST)
X-QQ-SSF: 01100000000000Q0R000000A0000000
X-QQ-FEAT: +ynUkgUhZJmP6GIH9v27vWDyTB3hOLEWw3c0rSxU3e1ChTIPMNnHXZ+zOMM5i
	Ph5ShPsDfQ8UM5VYCnNEpuDp5L7SvL1ZG5yUyibx6iWikO7TcTI8b52y91kN99NyOPq1n++
	oTv4a/qw0WKaZ0Mji0sNkJK03WOZspPsKjVp6URuLYeL/cxHdhClxOWRcx1s5OjuwZyBjA+
	FdhllGKYtq8t+rMdu9RxJXnJDHF9DFCek4vobFelhT+lDTcbLY9jVcmp2V66dBfrQK0Kn1o
	mylLHpXy67Wm94wimn6nEuvXQRreBQ+k69BPMGw/I07AGadhmx6F8GWfwGWI/qRJ0UbI55a
	bPfZINZgYxkB/lva4pRuOHcbEErGKIpvOTGIL4ko3yI8D+q42gN2IZEbgxrBtNnxJWerGcJ
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 4522377722207750439
From: Stephen Chen <stephen@radxa.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Stephen Chen <stephen@radxa.com>
Subject: [meta-rockchip] [PATCH v2] rock-4c-plus: add
Date: Sat, 20 Jan 2024 17:30:38 +0800
Message-Id: <20240120093038.654638-1-stephen@radxa.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 20 Jan 2024 09:31:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62202

ROCK 4C Plus is a Rockchip RK3399-T based SBC from Radxa.

Specs:
- RaspberryPi 4 form factor
- 64bit LPDDR4
- eMMC
- Micro SD
- SPI Nor Flash
- Two Micro-HDMI (HDMI 4K and HDMI 2K)
- 4-lane MIPI DSI
- MIPI CSI
- GbE LAN with Power over Ethernet (PoE) support
- Wi-Fi 5 and BT5.0 wireless module
- 3.5mm headphone jack
- Four USB ports (two USB2.0 and two USB3.0)
- RTC
- LEDs
- Power button
- Pwm fan
- 40-pin color expansion header

Signed-off-by: Stephen Chen <stephen@radxa.com>
---
 README                                      |  1 +
 conf/machine/rock-4c-plus.conf              | 10 ++++++++++
 recipes-kernel/linux/linux-yocto_%.bbappend |  1 +
 3 files changed, 12 insertions(+)
 create mode 100644 conf/machine/rock-4c-plus.conf

diff --git a/README b/README
index 80ba592..c3b514f 100644
--- a/README
+++ b/README
@@ -37,6 +37,7 @@ Status of supported boards:
 		rock-5a
 		roc-rk3328-cc
 		roc-rk3308-cc
+		rock-4c-plus
 	builds:
 		marsboard-rk3066
 		radxarock
diff --git a/conf/machine/rock-4c-plus.conf b/conf/machine/rock-4c-plus.conf
new file mode 100644
index 0000000..fec4167
--- /dev/null
+++ b/conf/machine/rock-4c-plus.conf
@@ -0,0 +1,10 @@
+#@TYPE: Machine
+#@NAME: ROCK 4C Plus
+#@DESCRIPTION: ROCK 4C Plus based on Rockchip RK3399-T Processor is designed by Radxa.
+#https://wiki.radxa.com/Rock4/4cplus
+#https://docs.radxa.com/en/rock4/rock4c+
+
+require conf/machine/include/rock-pi-4.inc
+
+KERNEL_DEVICETREE = "rockchip/rk3399-rock-4c-plus.dtb"
+UBOOT_MACHINE = "rock-4c-plus-rk3399_defconfig"
diff --git a/recipes-kernel/linux/linux-yocto_%.bbappend b/recipes-kernel/linux/linux-yocto_%.bbappend
index a922330..f5e81f1 100644
--- a/recipes-kernel/linux/linux-yocto_%.bbappend
+++ b/recipes-kernel/linux/linux-yocto_%.bbappend
@@ -18,6 +18,7 @@ COMPATIBLE_MACHINE:nanopi-m4b = "nanopi-m4b"
 COMPATIBLE_MACHINE:rock-pi-s = "rock-pi-s"
 COMPATIBLE_MACHINE:roc-rk3328-cc = "roc-rk3328-cc"
 COMPATIBLE_MACHINE:roc-rk3308-cc = "roc-rk3308-cc"
+COMPATIBLE_MACHINE:rock-4c-plus = "rock-4c-plus"
 
 SRC_URI:append = " file://rockchip-kmeta;type=kmeta;name=rockchip-kmeta;destsuffix=rockchip-kmeta"
 SRC_URI:append:nanopi-r4s = " file://nanopi-r4s.scc"
-- 
2.34.1


