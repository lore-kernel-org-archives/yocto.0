Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30188E008F2; Mon,  2 Jan 2017 05:45:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BEC7E00890
	for <yocto@yoctoproject.org>; Mon,  2 Jan 2017 05:45:17 -0800 (PST)
Received: by mail-wm0-f46.google.com with SMTP id a197so365898029wmd.0
	for <yocto@yoctoproject.org>; Mon, 02 Jan 2017 05:45:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=IvEtmmTbkEKxkYyCxlMj58zDtMa157qSRc9WZbxRJVc=;
	b=eX1VtD2l47MeppPH2jhVFrDeDGMrR2FwfCExJ4Ilp9377KJFmK7KLs5su2X6nXQNtk
	YC78wWSsnQxMN2lDvU8L7jlyG0vcrnI8tzmumuYV1L10C/+Ufd9p6zioP9fnrZqeO+QT
	UWpXqlA+S4bR1VPMwQiCvYLkIjw0w/U4xjqQ1pGL2qAtzObeeX7ReAKbCXA15I5StTFY
	XgsbjmjqPqw0MwMvrDRPR6XCeQ4HWmH0PUgytucmNFENKvrW+nR8sPAIW+htIrwEbrZs
	HOCXZcRIdgaJCkV7YWTarIPKjy65LAcC8dct5WApmW3b5S+LRVkmvjeroHzHz1v7J1AQ
	qaMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=IvEtmmTbkEKxkYyCxlMj58zDtMa157qSRc9WZbxRJVc=;
	b=maJpTdkzBCbnFFGsK5ZZgGgQshWCf57ueE/jPfXqIiSfCKINH3I2JP68B1xcShPKqJ
	+1aDF+JndllXKqYCAXFu4Q9n+mY2WhO2ZwEG2mxF1iug2/VcSRp2upx8+xGnHfAMDl6K
	CKjlg2a419bdFigANBIT2U3PkMV+Zo7NRzgjuxAs581EhXakohTPMPfe7E8ZQnBp/Bsr
	G9r3/KqdO6/Gba1zttSQcMG/Z6RyDLpRZdj039lD7ATHSLKXg9ZPrArDiY0FrjI+6xM0
	3u3fxkl7mPnnsr9j7deOtPXn3pURWM5YEMVKEJ1VrOkNXhFPdK/NwpT/ZD5JUkqUK7J4
	Ofmg==
X-Gm-Message-State: AIkVDXIo7HnZYpIkgpazNQ9kaL6zbmaJ/E6+OFVw3sm88m6Pdy5dgm5RTltBkTEegbFNZQ==
X-Received: by 10.28.41.70 with SMTP id p67mr49789847wmp.4.1483364716740;
	Mon, 02 Jan 2017 05:45:16 -0800 (PST)
Received: from piotr-ideapad.elnet (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114]) by smtp.gmail.com with ESMTPSA id
	z6sm87807298wjt.24.2017.01.02.05.45.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 02 Jan 2017 05:45:16 -0800 (PST)
From: Piotr Lewicki <piotr.lewicki@elfin.de>
To: yocto@yoctoproject.org
Date: Mon,  2 Jan 2017 14:45:03 +0100
Message-Id: <1483364703-31220-2-git-send-email-piotr.lewicki@elfin.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1483364703-31220-1-git-send-email-piotr.lewicki@elfin.de>
References: <1483364703-31220-1-git-send-email-piotr.lewicki@elfin.de>
Subject: [meta-raspberrypi][PATCH 1/1] linux-raspberrypi: support configuration fragments / in-tree defconfig
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
X-List-Received-Date: Mon, 02 Jan 2017 13:45:19 -0000

From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>

Resending a patch by Alex J Lennon
(https://lists.yoctoproject.org/pipermail/yocto/2015-October/027034.html).

Signed-off-by: Piotr Lewicki <piotr.lewicki@elfin.de>
---
 recipes-kernel/linux/linux-raspberrypi.inc       | 12 ++++--------
 recipes-kernel/linux/linux-raspberrypi/defconfig |  1 -
 recipes-kernel/linux/linux-rpi.inc               |  6 +++---
 3 files changed, 7 insertions(+), 12 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi/defconfig

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index 98229d9..ba2cf06 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -6,10 +6,6 @@ SECTION = "kernel"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
 
-SRC_URI += " \
-        file://defconfig \
-        "
-
 COMPATIBLE_MACHINE = "raspberrypi"
 
 PE = "1"
@@ -18,6 +14,10 @@ PV = "${LINUX_VERSION}+git${SRCPV}"
 # NOTE: For now we pull in the default config from the RPi kernel GIT tree.
 KERNEL_DEFCONFIG_raspberrypi ?= "bcmrpi_defconfig"
 KERNEL_DEFCONFIG_raspberrypi2 ?= "bcm2709_defconfig"
+KMACHINE ?= "${MACHINE}"
+KCONFIG_MODE = "--alldefconfig"
+KBUILD_DEFCONFIG_raspberrypi ?= "bcmrpi_defconfig"
+KBUILD_DEFCONFIG_raspberrypi2 ?= "bcm2709_defconfig"
 
 # CMDLINE for raspberrypi
 CMDLINE = "dwc_otg.lpm_enable=0 console=serial0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
@@ -37,10 +37,6 @@ python __anonymous () {
     d.setVar("KERNEL_DEVICETREE", kerneldt)
 }
 
-do_kernel_configme_prepend() {
-    install -m 0644 ${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} ${WORKDIR}/defconfig || die "No default configuration for ${MACHINE} / ${KERNEL_DEFCONFIG} available."
-}
-
 do_install_prepend() {
     install -d ${D}/lib/firmware
 }
diff --git a/recipes-kernel/linux/linux-raspberrypi/defconfig b/recipes-kernel/linux/linux-raspberrypi/defconfig
deleted file mode 100644
index ecbf32c..0000000
--- a/recipes-kernel/linux/linux-raspberrypi/defconfig
+++ /dev/null
@@ -1 +0,0 @@
-# Dummy file to get through do_kernel_configme.
diff --git a/recipes-kernel/linux/linux-rpi.inc b/recipes-kernel/linux/linux-rpi.inc
index 53383b0..ba47e31 100644
--- a/recipes-kernel/linux/linux-rpi.inc
+++ b/recipes-kernel/linux/linux-rpi.inc
@@ -35,8 +35,7 @@ kernel_configure_variable() {
 }
 
 do_configure_prepend() {
-    # Clean .config
-    echo "" > ${B}/.config
+    mv -f ${B}/.config ${B}/.config.patched
     CONF_SED_SCRIPT=""
 
     # oabi / eabi support
@@ -123,7 +122,8 @@ do_configure_prepend() {
 
     # Keep this the last line
     # Remove all modified configs and add the rest to .config
-    sed -e "${CONF_SED_SCRIPT}" < '${WORKDIR}/defconfig' >> '${B}/.config'
+    sed -e "${CONF_SED_SCRIPT}" < '${B}/.config.patched' >> '${B}/.config'
+    rm -f ${B}/.config.patched
 
     yes '' | oe_runmake oldconfig
 }
-- 
2.7.4


