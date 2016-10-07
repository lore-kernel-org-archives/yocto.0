Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DEF88E00BF8; Thu,  6 Oct 2016 21:39:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A816E00AAB
	for <yocto@yoctoproject.org>; Thu,  6 Oct 2016 21:39:53 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id 190so2200388pfv.1
	for <yocto@yoctoproject.org>; Thu, 06 Oct 2016 21:39:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=BnpHwABinT6tIN8PNBLqyfFYkUm4bbjipvn0C4v/51E=;
	b=WPQp/0ep8a9orllgQKA7E+3+niqgHO4G2k8xfqdBIDKyZbo4jIYi0zboV25gvGqQSp
	JY3o/71CFzVl/74pNhPbSIP3qWilB8qu8fCezKXIEYbd3/XRDNZusHMq32sVXtOYYRZ1
	bZfpSqgHcy4xc0iTR864NytFBh9JQQAW1vsIfp8ib+/Tv2kNQvINBNqXOyYJQ7es33Ao
	SPSB3igTZGkjNVcLeHvqNHCfEDxsRGNUDmYgzFiOPo3wbMYJ+Ud11zkdOQiM8LjEw2Ap
	qSuaWfYtj10zYo8VfKaDnbcqOibpmkwIDq2SPKJOnr2wUPIyJ14iOxAOUebA/XUNr4TA
	v1zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=BnpHwABinT6tIN8PNBLqyfFYkUm4bbjipvn0C4v/51E=;
	b=FTbD9/eoW7SAZG2VA5new9WumTtoKkyFXsTu1cdh1gvpEJH87EVBsnMdazuQ5j/HZ9
	8xzK9KmQK5tWRSUVgjb39zte/s+FwEZtBwv7km+JEs8Hhe/Cs6OxZkW6EX/A8GO0ie+M
	IDa6sOXq1bptHTo1LNfluPos5yCa+TrpzlIAYtwbMd9S1wOwQY6d+HE0e/n7IamfUCXW
	2cSWKKOyFtw4KZAFxsAAaX3tYEIoNKEUafpRaBKcd/PPR3HyU46ThleaZrx4HSyi0eys
	3n4O81teOx3nvqvSdB12K/FMChzMJcpDyOccCH2Ep88NBmuQ6hPaWZNmNfRdW19VCO0g
	LeDA==
X-Gm-Message-State: AA6/9RkibnhtHAgnNQKHiV0uEhPUrxDYJjU7BGuB7vcDiSbYFXkeh6B6vCV3GXUZKpMnoA==
X-Received: by 10.98.5.133 with SMTP id 127mr24311725pff.40.1475815193455;
	Thu, 06 Oct 2016 21:39:53 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	y126sm9592354pfy.41.2016.10.06.21.39.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 06 Oct 2016 21:39:52 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  6 Oct 2016 21:39:46 -0700
Message-Id: <20161007043946.10158-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.10.0
Subject: [meta-raspberrypi][PATCH] linux-raspberrypi: Add recipes and patches for 4.8 release
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
X-List-Received-Date: Fri, 07 Oct 2016 04:39:55 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../0001-fix-dtbo-rules.patch                      | 44 ++++++++++++++++++++++
 ...835-camera-fix-compilation-warning-werror.patch | 35 +++++++++++++++++
 recipes-kernel/linux/linux-raspberrypi_4.8.bb      | 10 +++++
 3 files changed, 89 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.8/0001-fix-dtbo-rules.patch
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.8/0001-media-bcm2835-camera-fix-compilation-warning-werror.patch
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_4.8.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi-4.8/0001-fix-dtbo-rules.patch b/recipes-kernel/linux/linux-raspberrypi-4.8/0001-fix-dtbo-rules.patch
new file mode 100644
index 0000000..5113e23
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi-4.8/0001-fix-dtbo-rules.patch
@@ -0,0 +1,44 @@
+From 13c8784da3dbd977f64cec740eba775b6fab11c2 Mon Sep 17 00:00:00 2001
+From: Herve Jourdain <herve.jourdain@neuf.fr>
+Date: Fri, 20 May 2016 16:02:23 +0800
+Subject: [yocto][meta-raspberrypi][PATCH v4 4/5] linux-raspberrypi_4.4.inc:
+ support for .dtbo files for dtb overlays
+
+Upstream-Status: Pending
+
+Kernel 4.4.6+ on RaspberryPi support .dtbo files for overlays, instead of .dtb.
+Patch the kernel, which has faulty rules to generate .dtbo the way yocto does
+
+Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
+---
+ .../0001-fix-dtbo-rules.patch                      | 27 ++++++++++++++++++++++
+ 1 file changed, 27 insertions(+)
+ create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch
+
+diff --git a/arch/arm/Makefile b/arch/arm/Makefile
+index a2e7cf7..673c1cb 100644
+--- a/arch/arm/Makefile
++++ b/arch/arm/Makefile
+@@ -333,6 +333,8 @@ $(INSTALL_TARGETS):
+ 
+ %.dtb: | scripts
+ 	$(Q)$(MAKE) $(build)=$(boot)/dts MACHINE=$(MACHINE) $(boot)/dts/$@
++%.dtbo: | scripts
++	$(Q)$(MAKE) $(build)=$(boot)/dts MACHINE=$(MACHINE) $(boot)/dts/$@
+ 
+ PHONY += dtbs dtbs_install
+ 
+diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
+index 3079c4f..6cc3766 100644
+--- a/scripts/Makefile.lib
++++ b/scripts/Makefile.lib
+@@ -293,7 +293,8 @@ $(obj)/%.dtb: $(src)/%.dts FORCE
+ 	$(call if_changed_dep,dtc)
+ 
+ quiet_cmd_dtco = DTCO    $@
+-cmd_dtco = $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) $< ; \
++cmd_dtco = mkdir -p $(dir ${dtc-tmp}) ; \
++	$(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) $< ; \
+ 	$(objtree)/scripts/dtc/dtc -@ -H epapr -O dtb -o $@ -b 0 \
+ 		-i $(dir $<) $(DTC_FLAGS) \
+ 		-d $(depfile).dtc.tmp $(dtc-tmp) ; \
diff --git a/recipes-kernel/linux/linux-raspberrypi-4.8/0001-media-bcm2835-camera-fix-compilation-warning-werror.patch b/recipes-kernel/linux/linux-raspberrypi-4.8/0001-media-bcm2835-camera-fix-compilation-warning-werror.patch
new file mode 100644
index 0000000..ea9778f
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi-4.8/0001-media-bcm2835-camera-fix-compilation-warning-werror.patch
@@ -0,0 +1,35 @@
+From a8151cbe5d92d7487b7994522cbc83fed04ae1f9 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Thu, 6 Oct 2016 19:42:55 -0700
+Subject: [PATCH] [media]: bcm2835-camera: fix compilation warning/werror
+
+| /a/builder/mnt/build/tmp-glibc/work-shared/raspberrypi3/kernel-source/drivers/media/platform/bcm2835/bcm2835-camera.c:656:17: error: initialization from incompatible pointer type [-Werror=incompatible-pointer-types
+]
+|   .queue_setup = queue_setup,
+|                  ^~~~~~~~~~~
+| /a/builder/mnt/build/tmp-glibc/work-shared/raspberrypi3/kernel-source/drivers/media/platform/bcm2835/bcm28
+35-camera.c:656:17: note: (near initialization for 'bm2835_mmal_video_qops.queue_setup')
+
+use struct device* instead of void*
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ drivers/media/platform/bcm2835/bcm2835-camera.c | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/drivers/media/platform/bcm2835/bcm2835-camera.c b/drivers/media/platform/bcm2835/bcm2835-camera.c
+index 70f4db2..cb5bab6 100644
+--- a/drivers/media/platform/bcm2835/bcm2835-camera.c
++++ b/drivers/media/platform/bcm2835/bcm2835-camera.c
+@@ -244,7 +244,7 @@ static struct mmal_fmt *get_format(struct v4l2_format *f)
+ 
+ static int queue_setup(struct vb2_queue *vq,
+ 		       unsigned int *nbuffers, unsigned int *nplanes,
+-		       unsigned int sizes[], void *alloc_ctxs[])
++		       unsigned int sizes[], struct device *alloc_ctxs[])
+ {
+ 	struct bm2835_mmal_dev *dev = vb2_get_drv_priv(vq);
+ 	unsigned long size;
+-- 
+2.10.0
+
diff --git a/recipes-kernel/linux/linux-raspberrypi_4.8.bb b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
new file mode 100644
index 0000000..92a69ad
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
@@ -0,0 +1,10 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
+
+LINUX_VERSION ?= "4.8.0"
+
+SRCREV = "2fb843e0e50b2330e76acea03ff63a5b2b1e411f"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.8.y \
+           file://0001-fix-dtbo-rules.patch \
+           file://0001-media-bcm2835-camera-fix-compilation-warning-werror.patch \
+"
+require linux-raspberrypi.inc
-- 
2.10.0


