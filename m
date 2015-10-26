Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 286EFE00B9E; Sun, 25 Oct 2015 23:46:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 456B2E00B94
	for <yocto@yoctoproject.org>; Sun, 25 Oct 2015 23:46:26 -0700 (PDT)
Received: by padhk11 with SMTP id hk11so179232809pad.1
	for <yocto@yoctoproject.org>; Sun, 25 Oct 2015 23:46:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=iNawRv8ab5WXRqQE1SoZhV3pJHNZAss97nz/rrovNC8=;
	b=tlgMSzL9eRdEQgyGQKvfgu9rRS+3cQ1zqOYx7tazbO5FjTmduwum5GFQqf3bwvEl9C
	o8LhS9RTLQKPCA1+mmBFzU0g4SidvTRM+LLCtjWB/stlk8j40Jux1MqAyeQKTn5zshBE
	bj+7jlmmN9lOAsYsiZjbA2T/6nk31kI6pfI7rgz4q5R3bJ2zqNPhhSThDAU2wOoQfcXF
	sS1/EN5XeZuzkKPSsNeFgR+aVGZ35x9lG3T+oKKlGhWuIyf7Q6wS2RQ6zv6NDnnBRl6B
	fYaQ5z2PMugDDr/Fed3Atq1TEySB1+e698sm3QtXlBLqqkPIZrkcz7u5KLZAFvjc3RYM
	P8jg==
X-Received: by 10.68.94.69 with SMTP id da5mr20691318pbb.63.1445841985729;
	Sun, 25 Oct 2015 23:46:25 -0700 (PDT)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	pk2sm31850171pbb.21.2015.10.25.23.46.24
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 25 Oct 2015 23:46:25 -0700 (PDT)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 26 Oct 2015 17:46:27 +1100
Message-Id: <1445841987-2917-3-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.6.1
In-Reply-To: <1445841987-2917-1-git-send-email-net147@gmail.com>
References: <1445841987-2917-1-git-send-email-net147@gmail.com>
Subject: [meta-raspberrypi][PATCH 3/3] u-boot: add v2015.10 for Raspberry Pi 2 support
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
X-List-Received-Date: Mon, 26 Oct 2015 06:46:30 -0000

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 conf/machine/include/rpi-default-providers.inc |  3 ++-
 recipes-bsp/u-boot/files/boot.cmd              |  3 +++
 recipes-bsp/u-boot/u-boot_2015.10.bb           | 28 ++++++++++++++++++++++++++
 3 files changed, 33 insertions(+), 1 deletion(-)
 create mode 100644 recipes-bsp/u-boot/files/boot.cmd
 create mode 100644 recipes-bsp/u-boot/u-boot_2015.10.bb

diff --git a/conf/machine/include/rpi-default-providers.inc b/conf/machine/include/rpi-default-providers.inc
index cabbd43..7d433a0 100644
--- a/conf/machine/include/rpi-default-providers.inc
+++ b/conf/machine/include/rpi-default-providers.inc
@@ -1,7 +1,8 @@
 # RaspberryPi BSP default providers
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-raspberrypi"
-PREFERRED_PROVIDER_u-boot ?= "u-boot-rpi"
+PREFERRED_PROVIDER_u-boot_raspberrypi ?= "u-boot-rpi"
+PREFERRED_PROVIDER_u-boot_raspberrypi2 ?= "u-boot"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 PREFERRED_PROVIDER_virtual/egl ?= "userland"
 PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"
diff --git a/recipes-bsp/u-boot/files/boot.cmd b/recipes-bsp/u-boot/files/boot.cmd
new file mode 100644
index 0000000..3f7e3b6
--- /dev/null
+++ b/recipes-bsp/u-boot/files/boot.cmd
@@ -0,0 +1,3 @@
+fdt addr ${fdt_addr_r} && fdt get value bootargs /chosen bootargs
+fatload mmc 0:1 ${kernel_addr_r} uImage
+bootm ${kernel_addr_r} - ${fdt_addr_r}
diff --git a/recipes-bsp/u-boot/u-boot_2015.10.bb b/recipes-bsp/u-boot/u-boot_2015.10.bb
new file mode 100644
index 0000000..02fb39a
--- /dev/null
+++ b/recipes-bsp/u-boot/u-boot_2015.10.bb
@@ -0,0 +1,28 @@
+require recipes-bsp/u-boot/u-boot.inc
+
+DEPENDS += "dtc-native rpi-mkimage-native"
+
+SRC_URI += "file://boot.cmd"
+
+# This revision corresponds to the tag "v2015.10"
+# We use the revision in order to avoid having to fetch it from the
+# repo during parse
+SRCREV = "5ec0003b19cbdf06ccd6941237cbc0d1c3468e2d"
+
+PV = "v2015.10+git${SRCPV}"
+
+COMPATIBLE_MACHINE = "raspberrypi2"
+
+do_compile_append() {
+    ${S}/tools/mkimage -A arm -O linux -T script -C none -n boot.scr -d ${WORKDIR}/boot.cmd ${WORKDIR}/${UBOOT_ENV_BINARY}
+}
+
+do_deploy_append() {
+    # Add RPi bootloader trailer to U-Boot image to enable Device Tree support
+    ${STAGING_DIR_NATIVE}/usr/lib/rpi-mkimage/mkknlimg --dtok ${DEPLOYDIR}/${UBOOT_IMAGE} ${DEPLOYDIR}/${UBOOT_IMAGE}
+}
+
+UBOOT_ENV = "boot"
+UBOOT_ENV_SUFFIX = "scr"
+UBOOT_IMAGE = "u-boot.img"
+UBOOT_MACHINE_raspberrypi2 = "rpi_2_defconfig"
-- 
2.6.1


