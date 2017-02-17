Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B430E00510; Fri, 17 Feb 2017 10:08:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.67 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f67.google.com (mail-it0-f67.google.com
	[209.85.214.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E3A5E00510
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2017 10:08:03 -0800 (PST)
Received: by mail-it0-f67.google.com with SMTP id r141so4131944ita.1
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2017 10:08:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=Y2IVi6RefY+AkZYyLxHut4emlm/r4h8Kn8J2OVvemkw=;
	b=McbldNfUzfvTqTz0l8Xgf1Dt5VqdF8Ohv3GxFqKN6GIK/6xx6BWGAJ48HYu3IkJG0b
	p+sMlF26Dc7fLvLxqVLWr6NbBRkTECEWHZL8BaMbeOC6L3TB4kmM/xvBW/mfND/pD5qs
	pop8antZSRtazxRuBOHubBUT3s6A5T4oUGMBjFiX14ARW13fWL2/WSyTm0djpR1+J0JK
	Qa8EOPH0Q9D+7Zj2XldtiCYH/n5y8YRF8bULETjKVgakNRPZxa+p9UlegqojlMUv7WMW
	MR32O6SelYyVnjPOroVmB+gLPImAz6aTIR/HhJkkIh1ZNF1izO/sBNGwq2BjYg8bVVVe
	uuEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=Y2IVi6RefY+AkZYyLxHut4emlm/r4h8Kn8J2OVvemkw=;
	b=TGeQ9YpopddlywC/CRHZ9zFSsWGhUrINoDG92kGJMhLurG92J5SluXDxsoDviDbnK8
	ANF0GrkbZa7waLsnXlWGIdZo+XZS+j9/LKtZh+sb7lwVvAW0qc0TQrzZ4dmUnLKGwb0z
	Uo59dZglkdOH4/bcq6VqqMgxC+j7/BC6RsGrqd9bQ7xwRJ3Q+9wagRBgOxZf3XhU7orE
	bfcazMBGt9nkFQ8d2VMdtyx1GWF2d7nQDo1xnryhvaY3Exg0psIazO9jLg1lchl2pIyM
	oDEVnjbX9onb9j4PlsngZzZmuY8t2puHNwrXtShjpjPY4214SZBh0qr2mo7drB67TcBX
	QFZQ==
X-Gm-Message-State: AMke39m3oEBzIk2BnGjvz1P+4sFfzAR7BTVCDUAAKq/+iDpLR+HdL+la5PWYQ/xK+t+WNw==
X-Received: by 10.36.77.149 with SMTP id l143mr5051954itb.19.1487354883218;
	Fri, 17 Feb 2017 10:08:03 -0800 (PST)
Received: from linux-uys3.suse ([45.72.225.54])
	by smtp.gmail.com with ESMTPSA id 202sm866258ith.7.2017.02.17.10.08.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 17 Feb 2017 10:08:02 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 17 Feb 2017 13:07:47 -0500
Message-Id: <20170217180748.28796-3-twoerner@gmail.com>
X-Mailer: git-send-email 2.11.0.258.ge05806d
In-Reply-To: <20170217180748.28796-1-twoerner@gmail.com>
References: <20170217180748.28796-1-twoerner@gmail.com>
Cc: Jacob Chen <jacob-chen@iotwrt.com>
Subject: [meta-rockchip][PATCH 2/3] u-boot-rockchip: add
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
X-List-Received-Date: Fri, 17 Feb 2017 18:08:05 -0000

From: Jacob Chen <jacob-chen@iotwrt.com>

Rockchip next-dev U-boot is the next generation of rockchip u-boot, will also
be an upstream tracking branch At present, this branch is just a rebased
upstream u-boot.

Reviewed-by: Trevor Woerner <twoerner@gmail.com>
Signed-off-by: Jacob Chen <jacob-chen@iotwrt.com>
---
 conf/machine/firefly-rk3288.conf           |  1 +
 conf/machine/include/rk3288.inc            |  8 +++++++-
 recipes-bsp/u-boot/u-boot-rockchip_next.bb | 18 ++++++++++++++++++
 3 files changed, 26 insertions(+), 1 deletion(-)
 create mode 100644 recipes-bsp/u-boot/u-boot-rockchip_next.bb

diff --git a/conf/machine/firefly-rk3288.conf b/conf/machine/firefly-rk3288.conf
index 8fa005d..58d752b 100644
--- a/conf/machine/firefly-rk3288.conf
+++ b/conf/machine/firefly-rk3288.conf
@@ -8,3 +8,4 @@
 
 include conf/machine/include/rk3288.inc
 KERNEL_DEVICETREE = "rk3288-firefly.dtb"
+UBOOT_MACHINE = "firefly-rk3288_defconfig"
diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
index 86fc567..f067ad5 100644
--- a/conf/machine/include/rk3288.inc
+++ b/conf/machine/include/rk3288.inc
@@ -1,9 +1,15 @@
 # Copyright (C) 2015 Romain Perier
 # Released under the MIT license (see COPYING.MIT for the terms)
 
+SOC_FAMILY = "rk3288"
+
 require conf/machine/include/tune-cortexa17.inc
+require conf/machine/include/soc-family.inc
 
 PREFERRED_PROVIDER_virtual/kernel = "linux"
-SERIAL_CONSOLES = "115200;ttyS2"
 KERNEL_IMAGETYPE = "zImage"
 KBUILD_DEFCONFIG = "multi_v7_defconfig"
+
+PREFERRED_PROVIDER_virtual/bootloader = "u-boot-rockchip"
+SERIAL_CONSOLES = "115200;ttyS2"
+SPL_BINARY = "u-boot-spl-dtb.bin"
diff --git a/recipes-bsp/u-boot/u-boot-rockchip_next.bb b/recipes-bsp/u-boot/u-boot-rockchip_next.bb
new file mode 100644
index 0000000..845f9da
--- /dev/null
+++ b/recipes-bsp/u-boot/u-boot-rockchip_next.bb
@@ -0,0 +1,18 @@
+# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+require recipes-bsp/u-boot/u-boot.inc
+
+DESCRIPTION = "Rockchip next-dev U-Boot"
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://Licenses/README;md5=a2c678cfd4a4d97135585cad908541c6"
+COMPATIBLE_MACHINE = "(rk3288)"
+
+SRC_URI = "git://github.com/rockchip-linux/u-boot.git;branch=release;"
+SRCREV = "${AUTOREV}"
+S = "${WORKDIR}/git"
+
+do_deploy_prepend () {
+	# copy to default search path
+	cp ${B}/spl/${SPL_BINARY} ${B}/
+}
-- 
2.11.0.258.ge05806d


