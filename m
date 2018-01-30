Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1D7BE00E27; Tue, 30 Jan 2018 05:31:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C371E00DE1
	for <yocto@lists.yoctoproject.org>;
	Tue, 30 Jan 2018 05:31:03 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id j21so3675127wmh.1
	for <yocto@lists.yoctoproject.org>;
	Tue, 30 Jan 2018 05:31:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=Lu2NEFUWvTv2IxbrUPWODycVAt4WemH2CaK/iJfGz8k=;
	b=X2m3cNMwMqM1duDmBRKctykvLcvEEhSTfSe/K9yn9cSe1iWgkGe0Z6A78e0D8++Gdt
	Q3IsP821t4O4uRFpWn4Y/VjsUnDaYRH5gsGTDV7pliatVa1pRcJiLET6WNUjrZRnXM+F
	10OXTtZHGf3NlYUCO6Aqm4UVRO2wM8Eb3yGAuTLSLBJGNiSmDzvXS5/3SjMs5snip8M6
	ne8jbwgTHNeko66Ft4M1tnfrsqSyY7rhMLzKR/PGSGrQwbaodU0MRgRntBdOqpGyzBsx
	XjuLhnWPSYHjmdpIGqXkMSfDFf/x4GhtqY9+u/0Jw9g/VQDqtybWHESUurPVwErpvZG7
	bEWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=Lu2NEFUWvTv2IxbrUPWODycVAt4WemH2CaK/iJfGz8k=;
	b=jRgpJa2RD3Vp/kxIGcVRh7AdOSvuqonwKBzaLWAJvnzL8TYBNqixVf1y8RSlhJ7d2v
	Q9ELR8WdcOLmNXqzQdRA4tt5tStT7W6SIWkbzZkvKTvDX3yF6EGhYCaXrxatyAO8r4Ao
	n1efqsdwZDoDra46mz+z9anW92vFLzwJ0wWiPVkcyUePPmijhkacRUiTSaaOJF5TtXdE
	KtHxNtRhfhbHBtyJ9NQNrdZVy971OIJkUgOX6O94ad/AfDQaD5whfyTxQyRdBcao+cIO
	IM/cvGHdGgS17SAZXxhyrM+vQXSqPRcFsRJT6lJuioacQpE7nNf5sv0LzDdA5NK5jr7G
	QeoA==
X-Gm-Message-State: AKwxytdBB67HJoJSxMXq3s6xmky+bB3M/oOqD1Auqn23iqax+vR1p3Pa
	CIzX3dbZ6c7bkzXr0aloHCjRIA==
X-Google-Smtp-Source: AH8x225Wsu3UIKVuIojnGWDHHfB2z2Cm7u1/p8dZ4irbMz00ghktEmohznJ69P3AG6ruFdg4THIsGQ==
X-Received: by 10.28.170.71 with SMTP id t68mr20029001wme.31.1517319062365;
	Tue, 30 Jan 2018 05:31:02 -0800 (PST)
Received: from localhost ([217.30.68.212]) by smtp.gmail.com with ESMTPSA id
	62sm12308387wrg.57.2018.01.30.05.31.01
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 30 Jan 2018 05:31:01 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Date: Tue, 30 Jan 2018 13:31:00 +0000
Message-Id: <20180130133100.1288-1-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.15.1
Subject: [meta-raspberrypi][PATCH] recipes: use oe.utils.conditional instead of deprecated base_conditional
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
X-List-Received-Date: Tue, 30 Jan 2018 13:31:05 -0000

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi.inc | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index df3a3d7..a1c4e52 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -22,10 +22,10 @@ KBUILD_DEFCONFIG_raspberrypi3-64 ?= "bcmrpi3_defconfig"
 CMDLINE ?= "dwc_otg.lpm_enable=0 console=serial0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
 
 # Add the kernel debugger over console kernel command line option if enabled
-CMDLINE_append = ' ${@base_conditional("ENABLE_KGDB", "1", "kgdboc=serial0,115200", "", d)}'
+CMDLINE_append = ' ${@oe.utils.conditional("ENABLE_KGDB", "1", "kgdboc=serial0,115200", "", d)}'
 
 # Disable rpi logo on boot
-CMDLINE_append += ' ${@base_conditional("DISABLE_RPI_BOOT_LOGO", "1", "logo.nologo", "", d)}'
+CMDLINE_append += ' ${@oe.utils.conditional("DISABLE_RPI_BOOT_LOGO", "1", "logo.nologo", "", d)}'
 
 # You can define CMDLINE_DEBUG as "debug" in your local.conf or distro.conf
 # to enable kernel debugging.
@@ -124,7 +124,7 @@ do_configure_prepend() {
         kernel_configure_variable ROOT_NFS y
         kernel_configure_variable CMDLINE "\"${CMDLINE_NFSROOT_USB}\""
     fi
-    if [ "${@base_conditional('INITRAMFS_IMAGE_BUNDLE', '1', 'True', 'False', d)}" ]; then
+    if [ "${@oe.utils.conditional('INITRAMFS_IMAGE_BUNDLE', '1', 'True', 'False', d)}" ]; then
         kernel_configure_variable BLK_DEV_INITRD y
         kernel_configure_variable INITRAMFS_SOURCE ""
         kernel_configure_variable RD_GZIP y
-- 
2.15.1


