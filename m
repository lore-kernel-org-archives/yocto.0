Return-Path: <jacobchen110@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 131ADE00A48; Thu, 19 Jan 2017 06:05:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E09BEE00A38
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 06:05:12 -0800 (PST)
Received: by mail-pf0-f195.google.com with SMTP id 19so3426015pfo.3
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 06:05:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=+LvSQDMRv44gT3N2HjkgpFcbmtyCzTi/kFOooCFHnhQ=;
	b=KNviPnDynNJqkfVSJ4aLmjSQszw8LvvhN/HXCxqm090UYciSKJ2Csf0ihD3hKKifsj
	Tx12LRNqs4ddqSRbZ4YevlX+Yun4/ImmOcYfHbI+IoQaXaItcWhkUAiOi936f9toRc27
	xQL0hFaIzOzD7lOzUh7uHbrFq2pLYsEfhSaMT5CRjFvc85PelTdAbO9ZPLWVvBpFhflM
	qfXOx929KSy6XH8GtWaJqs4+W1eFS9z1j75O8MU9pmLafOzg7hCEWZ2EKC/iFnk4Qm7F
	fGkrxu6+UpLqPtbpsjFuuHY384b3n21+Brm6Kl9OUstiNbgZXakMwIhFRDcohvrb7/lW
	T6Mw==
X-Gm-Message-State: AIkVDXKcSPqXA4cABXsxWcMO22Gqc1Lu22IBA4iqumMGHluK/2y0iyBJ8lmec7HfcRPqkA==
X-Received: by 10.98.28.129 with SMTP id c123mr10138040pfc.92.1484834712184;
	Thu, 19 Jan 2017 06:05:12 -0800 (PST)
Received: from localhost.localdomain ([27.155.138.228])
	by smtp.gmail.com with ESMTPSA id
	u78sm9259496pfa.53.2017.01.19.06.05.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 19 Jan 2017 06:05:10 -0800 (PST)
From: Jacob Chen <jacob-chen@iotwrt.com>
To: yocto@yoctoproject.org
Date: Thu, 19 Jan 2017 22:04:42 +0800
Message-Id: <1484834687-15746-3-git-send-email-jacob-chen@iotwrt.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1484834687-15746-1-git-send-email-jacob-chen@iotwrt.com>
References: <1484834687-15746-1-git-send-email-jacob-chen@iotwrt.com>
Cc: Jacob Chen <jacob-chen@iotwrt.com>, eddie.cai@rock-chips.com,
	Jacob Chen <jacob-chen@rock-chips.com>
Subject: [meta-rockchip][PATCH 2/7] machine: Add machine file for the rk3288 linux Boards
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
X-List-Received-Date: Thu, 19 Jan 2017 14:05:15 -0000

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


