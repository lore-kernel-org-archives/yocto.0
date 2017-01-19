Return-Path: <jacobchen110@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E33EBE0050B; Thu, 19 Jan 2017 02:10:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.68 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DA93E004D8
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 02:10:05 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id 204so3841937pge.2
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 02:10:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=+LvSQDMRv44gT3N2HjkgpFcbmtyCzTi/kFOooCFHnhQ=;
	b=dsNnaiXIUZ7OaSV68pESfH4lVh5UeFJmCR/+JZBudQnNXT0FO+xg0smPc7jS5wQORF
	qthlaPsSX32nC24ymM+dVNkb9a9kbgUkqKj2xSVX3HrEDAQImulkicYy83CrNfO1CbYW
	BcVxBUht356JHVFDTLw9GiZyRQc+87DL6xfwdSZgmALELY1TrqfwmPA5O9i1//NO2ylG
	e2CCqeeNjRtpODTQ4iNztT7FUzgAHzSfMeIIaz1BDbTaUpCsHPbqgIVgHpSjtJTooz4X
	MBYrFsyu1Tuvodth7wN4ymYZpfQq+WOaPuAnVnHexrsgZSbiPNfIngXB+9Q0s7MueWcv
	2uAg==
X-Gm-Message-State: AIkVDXLqQ/DRv83NBFhXjM6vUTYMTSVNGcAq0Xhnn/c+0a5asRXX6nEnhEpy/4y4BxtFgA==
X-Received: by 10.98.35.207 with SMTP id q76mr9007859pfj.112.1484820604974;
	Thu, 19 Jan 2017 02:10:04 -0800 (PST)
Received: from localhost.localdomain ([103.29.142.67])
	by smtp.gmail.com with ESMTPSA id
	w125sm7440387pfb.8.2017.01.19.02.10.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 19 Jan 2017 02:10:03 -0800 (PST)
From: Jacob Chen <jacob-chen@iotwrt.com>
To: yocto@yoctoproject.org
Date: Thu, 19 Jan 2017 18:09:27 +0800
Message-Id: <1484820572-11891-3-git-send-email-jacob-chen@iotwrt.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1484820572-11891-1-git-send-email-jacob-chen@iotwrt.com>
References: <1484820572-11891-1-git-send-email-jacob-chen@iotwrt.com>
Cc: Jacob Chen <jacob-chen@iotwrt.com>, eddie.cai@rock-chips.com,
	Jacob Chen <jacob-chen@rock-chips.com>
Subject: [PATCH 2/7] machine: Add machine file for the rk3288 linux Boards
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 19 Jan 2017 10:10:07 -0000

Evb-rk3288 is the offical evaluate board, add it to help myself develop.

Fennec-rk3288 and Tinker-rk3288 is rk3288 based SBCs.
    .
Tinker Boards:
http://www.cnx-software.com/2017/01/05/asus-tinker-board-is-a-raspberry-pi-3-alternative-based-on-rockchip-rk3288-processor/

Signed-off-by: Jacob Chen <jacob-chen@rock-chips.com>
---
 conf/machine/evb-rk3288.conf      | 12 ++++++++++++
 conf/machine/fennec-rk3288.conf   | 12 ++++++++++++
 conf/machine/include/rk-linux.inc | 20 ++++++++++++++++++++
 conf/machine/tinker-rk3288.conf   | 13 +++++++++++++
 4 files changed, 57 insertions(+)
 create mode 100644 conf/machine/evb-rk3288.conf
 create mode 100644 conf/machine/fennec-rk3288.conf
 create mode 100644 conf/machine/include/rk-linux.inc
 create mode 100644 conf/machine/tinker-rk3288.conf

diff --git a/conf/machine/evb-rk3288.conf b/conf/machine/evb-rk3288.conf
new file mode 100644
index 0000000..88a5f78
--- /dev/null
+++ b/conf/machine/evb-rk3288.conf
@@ -0,0 +1,12 @@
+# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+#@TYPE: Machine
+#@NAME: EVB 3288
+
+include conf/machine/include/rk3288.inc
+include conf/machine/include/rk-linux.inc
+
+KERNEL_DEVICETREE = "rk3288-evb-act8846.dtb"
+
+UBOOT_MACHINE = "evb-rk3288_defconfig"
diff --git a/conf/machine/fennec-rk3288.conf b/conf/machine/fennec-rk3288.conf
new file mode 100644
index 0000000..a85045f
--- /dev/null
+++ b/conf/machine/fennec-rk3288.conf
@@ -0,0 +1,12 @@
+# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+#@TYPE: Machine
+#@NAME: FENNEC RK3288
+
+include conf/machine/include/rk3288.inc
+include conf/machine/include/rk-linux.inc
+
+KERNEL_DEVICETREE = "rk3288-fennec.dtb"
+
+UBOOT_MACHINE = "fennec-rk3288_defconfig"
diff --git a/conf/machine/include/rk-linux.inc b/conf/machine/include/rk-linux.inc
new file mode 100644
index 0000000..6abaa0d
--- /dev/null
+++ b/conf/machine/include/rk-linux.inc
@@ -0,0 +1,20 @@
+# Rockchip BSP default settings
+
+PREFERRED_PROVIDER_virtual/egl = "mali-userspace"
+PREFERRED_PROVIDER_virtual/libgles1 = "mali-userspace"
+PREFERRED_PROVIDER_virtual/libgles2 = "mali-userspace"
+PREFERRED_PROVIDER_virtual/libopencl = "mali-userspace"
+
+# Workaround: libmali.so provided by rk having no SONAME field in it
+# so add it to fix rdepends problems
+ASSUME_SHLIBS += "libEGL.so:mali-userspace"
+ASSUME_SHLIBS += "libGLESv1_CM.so:mali-userspace"
+ASSUME_SHLIBS += "libGLESv2.so:mali-userspace"
+ASSUME_SHLIBS += "libOpenCL.so:mali-userspace"
+ASSUME_SHLIBS += "libgbm.so:mali-userspace"
+ASSUME_SHLIBS += "libwayland-egl.so:mali-userspace"
+
+PREFERRED_PROVIDER_virtual/kernel = "linux-rockchip"
+PREFERRED_PROVIDER_virtual/bootloader = "u-boot-rockchip"
+
+IMAGE_CLASSES += "rockchip-next-image"
diff --git a/conf/machine/tinker-rk3288.conf b/conf/machine/tinker-rk3288.conf
new file mode 100644
index 0000000..0464133
--- /dev/null
+++ b/conf/machine/tinker-rk3288.conf
@@ -0,0 +1,13 @@
+# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+#@TYPE: Machine
+#@NAME: Tinker RK3288
+#@DESCRIPTION: ASUS Tinker Board is a Raspberry Pi 3 Alternative based on Rockchip RK3288 Processor.
+
+include conf/machine/include/rk3288.inc
+include conf/machine/include/rk-linux.inc
+
+KERNEL_DEVICETREE = "rk3288-miniarm.dtb"
+
+UBOOT_MACHINE = "miniarm-rk3288_defconfig"
-- 
2.7.4


