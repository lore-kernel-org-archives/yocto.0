Return-Path: <javier@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D27EE00AE9; Thu, 30 Jul 2015 01:41:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [54.187.51.154 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from lists.s-osg.org (lists.s-osg.org [54.187.51.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B5F4E00AAA
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 01:41:21 -0700 (PDT)
Received: from localhost.localdomain (119.3.11.37.dynamic.jazztel.es
	[37.11.3.119])
	by lists.s-osg.org (Postfix) with ESMTPSA id 9B7524632B;
	Thu, 30 Jul 2015 01:36:13 -0700 (PDT)
From: Javier Martinez Canillas <javier@osg.samsung.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 30 Jul 2015 10:34:10 +0200
Message-Id: <1438245251-20437-5-git-send-email-javier@osg.samsung.com>
X-Mailer: git-send-email 2.4.3
In-Reply-To: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
X-Mailman-Approved-At: Sun, 02 Aug 2015 23:22:39 -0700
Cc: yocto@yoctoproject.org, Derek Foreman <derekf@osg.samsung.com>,
	Javier Martinez Canillas <javier@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Subject: [meta-raspberrypi][PATCH 4/5] linux-raspberrypi: Add a 4.1 linux kernel with vc4 support
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
X-List-Received-Date: Thu, 30 Jul 2015 08:41:26 -0000

From: Derek Foreman <derekf@osg.samsung.com>

This adds Eric Anholt's WIP kernel with dri/kms/3d support for the GPU on
the rpi2. Adding a recipe that tracks this kernel, will make it easier to
test this setup.

This recipe should only used for testing purposes for now, so it will not
be set as the default.

The kernel will be choosen though if the "vc4-gfx" feature has been added
to the the DISTRO_FEATURES variable.

Signed-off-by: Derek Foreman <derekf@osg.samsung.com>
[javier: Extended commit message and set default preference to -1]
Signed-off-by: Javier Martinez Canillas <javier@osg.samsung.com>

---

 README                                             |   9 ++
 ..._defconfig-Enable-config-options-for-vc4-.patch |  48 +++++++++
 ...-ARM-dts-Fix-i2c-for-bcm2709-RPI2-B-board.patch |  85 +++++++++++++++
 .../0003-drm-vc4-Use-the-fbdev_cma-helpers.patch   | 115 +++++++++++++++++++++
 .../0004-drm-vc4-Allow-vblank-to-be-disabled.patch |  26 +++++
 .../0005-drm-vc4-Disable-KMS-operations.patch      |  95 +++++++++++++++++
 recipes-kernel/linux/linux-raspberrypi_4.1.bb      |  16 +++
 7 files changed, 394 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi/0001-ARM-bcm2709_defconfig-Enable-config-options-for-vc4-.patch
 create mode 100644 recipes-kernel/linux/linux-raspberrypi/0002-ARM-dts-Fix-i2c-for-bcm2709-RPI2-B-board.patch
 create mode 100644 recipes-kernel/linux/linux-raspberrypi/0003-drm-vc4-Use-the-fbdev_cma-helpers.patch
 create mode 100644 recipes-kernel/linux/linux-raspberrypi/0004-drm-vc4-Allow-vblank-to-be-disabled.patch
 create mode 100644 recipes-kernel/linux/linux-raspberrypi/0005-drm-vc4-Disable-KMS-operations.patch
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_4.1.bb

diff --git a/README b/README
index 678c0eb4a4e3..20788d6f48cb 100644
--- a/README
+++ b/README
@@ -25,6 +25,7 @@ Contents:
     2.K. Boot to U-Boot
     2.L. Image with Initramfs
     2.M. Device tree support
+    2.O. Graphics stack
 3. Extra apps
     3.A. omxplayer
 4. Source code and mirrors
@@ -195,6 +196,14 @@ kernels.
 NOTE: KERNEL_DEVICETREE is default enabled for kernel >= 3.18 and always disabled for
       older kernel versions.
 
+2.O. Graphic stacks
+===================
+The Raspberry Pi boards can use one of two graphics stacks: The userland
+user-space driver or the vc4 DRM/KMS kernel driver. By default userland
+is used since the vc4 is still experimental. But this can be changed by
+setting the following in the local.conf
+DISTRO_FEATURES_append = " vc4-gfx"
+
 3. Extra apps
 =============
 
diff --git a/recipes-kernel/linux/linux-raspberrypi/0001-ARM-bcm2709_defconfig-Enable-config-options-for-vc4-.patch b/recipes-kernel/linux/linux-raspberrypi/0001-ARM-bcm2709_defconfig-Enable-config-options-for-vc4-.patch
new file mode 100644
index 000000000000..1ea62489e077
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi/0001-ARM-bcm2709_defconfig-Enable-config-options-for-vc4-.patch
@@ -0,0 +1,48 @@
+From 5908700d3cb88114002aa66f920e91961ebe91e4 Mon Sep 17 00:00:00 2001
+From: Derek Foreman <derekf@osg.samsung.com>
+Date: Fri, 24 Jul 2015 01:58:31 +0200
+Subject: [PATCH 1/5] ARM: bcm2709_defconfig: Enable config options for vc4
+ support
+
+Add the needed Kconfig symbols to build Eric Anholt's WIP kernel
+4.1 Linux kernel with vc4 dri/kms/3d support. Also increase CMA
+size from 5 MiB to 256 MiB as that is needed by the driver.
+
+Signed-off-by: Derek Foreman <derekf@osg.samsung.com>
+---
+ arch/arm/configs/bcm2709_defconfig | 5 ++++-
+ 1 file changed, 4 insertions(+), 1 deletion(-)
+
+diff --git a/arch/arm/configs/bcm2709_defconfig b/arch/arm/configs/bcm2709_defconfig
+index a3067bfb610f..7891bb17df57 100644
+--- a/arch/arm/configs/bcm2709_defconfig
++++ b/arch/arm/configs/bcm2709_defconfig
+@@ -39,6 +39,7 @@ CONFIG_MAC_PARTITION=y
+ CONFIG_CFQ_GROUP_IOSCHED=y
+ CONFIG_ARCH_BCM2709=y
+ CONFIG_BCM2709_DT=y
++# CONFIG_VDSO is not set
+ # CONFIG_CACHE_L2X0 is not set
+ CONFIG_SMP=y
+ CONFIG_HAVE_ARM_ARCH_TIMER=y
+@@ -388,7 +389,7 @@ CONFIG_NFC_PN533=m
+ CONFIG_DEVTMPFS=y
+ CONFIG_DEVTMPFS_MOUNT=y
+ CONFIG_DMA_CMA=y
+-CONFIG_CMA_SIZE_MBYTES=5
++CONFIG_CMA_SIZE_MBYTES=256
+ CONFIG_BLK_DEV_LOOP=y
+ CONFIG_BLK_DEV_CRYPTOLOOP=m
+ CONFIG_BLK_DEV_DRBD=m
+@@ -771,6 +772,8 @@ CONFIG_VIDEO_TW9906=m
+ CONFIG_VIDEO_OV7640=m
+ CONFIG_VIDEO_MT9V011=m
+ CONFIG_FB=y
++CONFIG_DRM=y
++CONFIG_DRM_VC4=y
+ CONFIG_FB_BCM2708=y
+ CONFIG_FB_SSD1307=m
+ # CONFIG_BACKLIGHT_GENERIC is not set
+-- 
+2.4.3
+
diff --git a/recipes-kernel/linux/linux-raspberrypi/0002-ARM-dts-Fix-i2c-for-bcm2709-RPI2-B-board.patch b/recipes-kernel/linux/linux-raspberrypi/0002-ARM-dts-Fix-i2c-for-bcm2709-RPI2-B-board.patch
new file mode 100644
index 000000000000..acc09760e820
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi/0002-ARM-dts-Fix-i2c-for-bcm2709-RPI2-B-board.patch
@@ -0,0 +1,85 @@
+From 8882728be24f35f81da4558c84fb18658e23fcc9 Mon Sep 17 00:00:00 2001
+From: Derek Foreman <derekf@osg.samsung.com>
+Date: Wed, 27 May 2015 13:20:21 -0500
+Subject: [PATCH 2/5] ARM: dts: Fix i2c for bcm2709 RPI2 B board
+
+Fix up device tree and i2c setup for rpi2
+
+Signed-off-by: Derek Foreman <derekf@osg.samsung.com
+---
+ arch/arm/boot/dts/bcm2708_common.dtsi | 2 +-
+ arch/arm/boot/dts/bcm2709-rpi-2-b.dts | 6 ++++++
+ drivers/i2c/busses/i2c-bcm2708.c      | 6 +++++-
+ 3 files changed, 12 insertions(+), 2 deletions(-)
+
+diff --git a/arch/arm/boot/dts/bcm2708_common.dtsi b/arch/arm/boot/dts/bcm2708_common.dtsi
+index ccf01a568cb6..15277d2765bb 100644
+--- a/arch/arm/boot/dts/bcm2708_common.dtsi
++++ b/arch/arm/boot/dts/bcm2708_common.dtsi
+@@ -155,7 +155,7 @@
+ 		};
+ 
+ 		i2c2: i2c@7e805000 {
+-			compatible = "brcm,bcm2835-i2c";
++			compatible = "brcm,bcm2708-i2c";
+ 			reg = <0x7e805000 0x1000>;
+ 			interrupts = <2 21>;
+ 			clocks = <&clk_i2c>;
+diff --git a/arch/arm/boot/dts/bcm2709-rpi-2-b.dts b/arch/arm/boot/dts/bcm2709-rpi-2-b.dts
+index 8aaaf1fb7143..712ca455cc46 100644
+--- a/arch/arm/boot/dts/bcm2709-rpi-2-b.dts
++++ b/arch/arm/boot/dts/bcm2709-rpi-2-b.dts
+@@ -11,6 +11,7 @@
+ 		spi0 = &spi0;
+ 		i2c0 = &i2c0;
+ 		i2c1 = &i2c1;
++		i2c2 = &i2c2;
+ 		i2s  = &i2s;
+ 		gpio = &gpio;
+ 		intc = &intc;
+@@ -94,6 +95,11 @@
+ 	clock-frequency = <100000>;
+ };
+ 
++&i2c2 {
++	pinctrl-names = "default";
++	clock-frequency = <100000>;
++};
++
+ &i2s {
+ 	#sound-dai-cells = <0>;
+ 	pinctrl-names = "default";
+diff --git a/drivers/i2c/busses/i2c-bcm2708.c b/drivers/i2c/busses/i2c-bcm2708.c
+index 8773203b34eb..2054ff44e744 100644
+--- a/drivers/i2c/busses/i2c-bcm2708.c
++++ b/drivers/i2c/busses/i2c-bcm2708.c
+@@ -109,6 +109,7 @@ static void bcm2708_i2c_init_pinmode(int id)
+ #define SET_GPIO_ALT(g,a) *(gpio+(((g)/10))) |= (((a)<=3?(a)+4:(a)==4?3:2)<<(((g)%10)*3))
+ 
+ 	int pin;
++
+ 	u32 *gpio = ioremap(GPIO_BASE, SZ_16K);
+ 
+ 	BUG_ON(id != 0 && id != 1);
+@@ -382,7 +383,7 @@ static int bcm2708_i2c_probe(struct platform_device *pdev)
+ 		goto out_clk_put;
+ 	}
+ 
+-	if (!pdev->dev.of_node)
++	if (pdev->id < 2)
+ 		bcm2708_i2c_init_pinmode(pdev->id);
+ 
+ 	bi = kzalloc(sizeof(*bi), GFP_KERNEL);
+@@ -407,6 +408,9 @@ static int bcm2708_i2c_probe(struct platform_device *pdev)
+ 	case 1:
+ 		adap->class = I2C_CLASS_DDC;
+ 		break;
++	case 2:
++		adap->class = I2C_CLASS_DDC;
++		break;
+ 	default:
+ 		dev_err(&pdev->dev, "can only bind to BSC 0 or 1\n");
+ 		err = -ENXIO;
+-- 
+2.4.3
+
diff --git a/recipes-kernel/linux/linux-raspberrypi/0003-drm-vc4-Use-the-fbdev_cma-helpers.patch b/recipes-kernel/linux/linux-raspberrypi/0003-drm-vc4-Use-the-fbdev_cma-helpers.patch
new file mode 100644
index 000000000000..bc50992dcdbe
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi/0003-drm-vc4-Use-the-fbdev_cma-helpers.patch
@@ -0,0 +1,115 @@
+From e877e76e5d723eb14bce9c58af40b962eced02bf Mon Sep 17 00:00:00 2001
+From: Derek Foreman <derekf@osg.samsung.com>
+Date: Thu, 2 Jul 2015 11:19:54 -0500
+Subject: [PATCH 3/5] drm/vc4: Use the fbdev_cma helpers
+
+Keep the fbdev_cma pointer around so we can use it on hotplog and close
+to ensure the frame buffer console is in a useful state.
+
+Signed-off-by: Derek Foreman <derekf@osg.samsung.com>
+---
+ drivers/gpu/drm/vc4/vc4_drv.c | 15 +++++++++++++++
+ drivers/gpu/drm/vc4/vc4_drv.h |  2 ++
+ drivers/gpu/drm/vc4/vc4_kms.c | 18 +++++++++++++++---
+ 3 files changed, 32 insertions(+), 3 deletions(-)
+
+diff --git a/drivers/gpu/drm/vc4/vc4_drv.c b/drivers/gpu/drm/vc4/vc4_drv.c
+index 5c023ba4f6ad..04f1f738ebc2 100644
+--- a/drivers/gpu/drm/vc4/vc4_drv.c
++++ b/drivers/gpu/drm/vc4/vc4_drv.c
+@@ -13,6 +13,7 @@
+ #include <linux/module.h>
+ #include <linux/of_platform.h>
+ #include <linux/platform_device.h>
++#include <drm/drm_fb_cma_helper.h>
+ 
+ #include "uapi/drm/vc4_drm.h"
+ #include "vc4_drv.h"
+@@ -78,6 +79,11 @@ vc4_drm_load(struct drm_device *dev, unsigned long flags)
+ 
+ static int vc4_drm_unload(struct drm_device *dev)
+ {
++	struct vc4_dev *vc4 = to_vc4_dev(dev);
++
++	if (vc4->fbdev)
++		drm_fbdev_cma_fini(vc4->fbdev);
++
+ 	drm_mode_config_cleanup(dev);
+ 
+ 	component_unbind_all(dev->dev, dev);
+@@ -93,6 +99,14 @@ static void vc4_drm_preclose(struct drm_device *dev, struct drm_file *file)
+ 		vc4_cancel_page_flip(crtc, file);
+ }
+ 
++static void vc4_lastclose(struct drm_device *dev)
++{
++	struct vc4_dev *vc4 = to_vc4_dev(dev);
++
++	if (vc4->fbdev)
++		drm_fbdev_cma_restore_mode(vc4->fbdev);
++}
++
+ static const struct file_operations vc4_drm_fops = {
+ 	.owner = THIS_MODULE,
+ 	.open = drm_open,
+@@ -123,6 +137,7 @@ static struct drm_driver vc4_drm_driver = {
+ 			    DRIVER_PRIME),
+ 	.load = vc4_drm_load,
+ 	.unload = vc4_drm_unload,
++	.lastclose = vc4_lastclose,
+ 	.set_busid = drm_platform_set_busid,
+ 	.preclose = vc4_drm_preclose,
+ 
+diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
+index 13b475785ca0..d460bb3e6b64 100644
+--- a/drivers/gpu/drm/vc4/vc4_drv.h
++++ b/drivers/gpu/drm/vc4/vc4_drv.h
+@@ -81,6 +81,8 @@ struct vc4_dev {
+ 	} hangcheck;
+ 
+ 	struct semaphore async_modeset;
++
++	struct drm_fbdev_cma *fbdev;
+ };
+ 
+ static inline struct vc4_dev *
+diff --git a/drivers/gpu/drm/vc4/vc4_kms.c b/drivers/gpu/drm/vc4/vc4_kms.c
+index acfd1b23ab4a..cb18d8f0e387 100644
+--- a/drivers/gpu/drm/vc4/vc4_kms.c
++++ b/drivers/gpu/drm/vc4/vc4_kms.c
+@@ -155,7 +155,17 @@ static int vc4_atomic_commit(struct drm_device *dev,
+ 	return 0;
+ }
+ 
++static void vc4_output_poll_changed(struct drm_device *dev)
++{
++	struct vc4_dev *vc4 = to_vc4_dev(dev);
++
++	if (vc4->fbdev)
++		drm_fbdev_cma_hotplug_event(vc4->fbdev);
++}
++
++
+ static const struct drm_mode_config_funcs vc4_mode_funcs = {
++	.output_poll_changed = vc4_output_poll_changed,
+ 	.atomic_check = drm_atomic_helper_check,
+ 	.atomic_commit = vc4_atomic_commit,
+ 	.fb_create = drm_fb_cma_create,
+@@ -214,9 +224,11 @@ vc4_kms_load(struct drm_device *dev)
+ 
+ 	drm_mode_config_reset(dev);
+ 
+-	drm_fbdev_cma_init(dev, 32,
+-			   dev->mode_config.num_crtc,
+-			   dev->mode_config.num_connector);
++	vc4->fbdev = drm_fbdev_cma_init(dev, 32,
++					dev->mode_config.num_crtc,
++					dev->mode_config.num_connector);
++	if (IS_ERR(vc4->fbdev))
++		vc4->fbdev = NULL;
+ 
+ 	drm_kms_helper_poll_init(dev);
+ 
+-- 
+2.4.3
+
diff --git a/recipes-kernel/linux/linux-raspberrypi/0004-drm-vc4-Allow-vblank-to-be-disabled.patch b/recipes-kernel/linux/linux-raspberrypi/0004-drm-vc4-Allow-vblank-to-be-disabled.patch
new file mode 100644
index 000000000000..0293ed713c3e
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi/0004-drm-vc4-Allow-vblank-to-be-disabled.patch
@@ -0,0 +1,26 @@
+From 4388ed0f2d66399a6ad3133b91bd438cdb25e37b Mon Sep 17 00:00:00 2001
+From: Derek Foreman <derekf@osg.samsung.com>
+Date: Thu, 2 Jul 2015 11:20:21 -0500
+Subject: [PATCH 4/5] drm/vc4: Allow vblank to be disabled
+
+Signed-off-by: Derek Foreman <derekf@osg.samsung.com>
+---
+ drivers/gpu/drm/vc4/vc4_kms.c | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/drivers/gpu/drm/vc4/vc4_kms.c b/drivers/gpu/drm/vc4/vc4_kms.c
+index cb18d8f0e387..1473df9ef4a1 100644
+--- a/drivers/gpu/drm/vc4/vc4_kms.c
++++ b/drivers/gpu/drm/vc4/vc4_kms.c
+@@ -218,6 +218,8 @@ vc4_kms_load(struct drm_device *dev)
+ 	dev->mode_config.funcs = &vc4_mode_funcs;
+ 	dev->mode_config.preferred_depth = 24;
+ 
++	dev->vblank_disable_allowed = true;
++
+ 	ret = vc4_init_modeset_objects(dev);
+ 	if (ret)
+ 		goto fail;
+-- 
+2.4.3
+
diff --git a/recipes-kernel/linux/linux-raspberrypi/0005-drm-vc4-Disable-KMS-operations.patch b/recipes-kernel/linux/linux-raspberrypi/0005-drm-vc4-Disable-KMS-operations.patch
new file mode 100644
index 000000000000..eff5058aeda7
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi/0005-drm-vc4-Disable-KMS-operations.patch
@@ -0,0 +1,95 @@
+From 844a32b8444a38b6378c98ad4a4b8b8c3522c020 Mon Sep 17 00:00:00 2001
+From: Derek Foreman <derekf@osg.samsung.com>
+Date: Fri, 24 Jul 2015 03:29:15 +0200
+Subject: [PATCH 5/5] drm/vc4: Disable KMS operations
+
+The vc4 driver KMS implementation still has some issues so
+for now skip most of the codepaths to avoid system hangs.
+
+Signed-off-by: Derek Foreman <derekf@osg.samsung.com>
+---
+ drivers/gpu/drm/drm_atomic_helper.c | 2 +-
+ drivers/gpu/drm/vc4/vc4_crtc.c      | 2 +-
+ drivers/gpu/drm/vc4/vc4_hdmi.c      | 6 ++++--
+ drivers/gpu/drm/vc4/vc4_kms.c       | 1 +
+ 4 files changed, 7 insertions(+), 4 deletions(-)
+
+diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
+index 1d2ca52530d5..ba7f355bcced 100644
+--- a/drivers/gpu/drm/drm_atomic_helper.c
++++ b/drivers/gpu/drm/drm_atomic_helper.c
+@@ -1876,7 +1876,7 @@ void drm_atomic_helper_connector_dpms(struct drm_connector *connector,
+ 	struct drm_connector *tmp_connector;
+ 	int ret;
+ 	bool active = false;
+-
++return;
+ 	if (mode != DRM_MODE_DPMS_ON)
+ 		mode = DRM_MODE_DPMS_OFF;
+ 
+diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
+index f9960ac34fd7..1b85355baef0 100644
+--- a/drivers/gpu/drm/vc4/vc4_crtc.c
++++ b/drivers/gpu/drm/vc4/vc4_crtc.c
+@@ -91,7 +91,7 @@ static void vc4_crtc_mode_set_nofb(struct drm_crtc *crtc)
+ 		       ((mode->flags & DRM_MODE_FLAG_INTERLACE) ? 1 : 0));
+ 	u32 format = PV_CONTROL_FORMAT_24;
+ 	bool debug_dump_regs = false;
+-
++return;
+ 	if (debug_dump_regs) {
+ 		DRM_INFO("CRTC %d regs before:\n", drm_crtc_index(crtc));
+ 		vc4_crtc_dump_regs(vc4_crtc);
+diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
+index 8c41fdc4ef2e..2a212b08e108 100644
+--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
++++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
+@@ -273,7 +273,7 @@ vc4_set_pixel_clock(struct vc4_dev *vc4, u32 clock)
+ {
+ 	u32 packet[2];
+ 	int ret;
+-
++return;
+ 	packet[0] = 8; /* Pixel clock. */
+ 	packet[1] = clock;
+ 
+@@ -295,6 +295,7 @@ static void vc4_hdmi_encoder_mode_set(struct drm_encoder *encoder,
+ 	bool debug_dump_regs = false;
+ 	bool hsync_pos = !(mode->flags & DRM_MODE_FLAG_NHSYNC);
+ 	bool vsync_pos = !(mode->flags & DRM_MODE_FLAG_NVSYNC);
++return;
+ 	u32 vactive = (mode->vdisplay >>
+ 		       ((mode->flags & DRM_MODE_FLAG_INTERLACE) ? 1 : 0));
+ 	u32 verta = (VC4_SET_FIELD(mode->vsync_end - mode->vsync_start,
+@@ -405,7 +406,7 @@ static void vc4_hdmi_encoder_disable(struct drm_encoder *encoder)
+ {
+ 	struct drm_device *dev = encoder->dev;
+ 	struct vc4_dev *vc4 = to_vc4_dev(dev);
+-
++return;
+ 	HDMI_WRITE(VC4_HDMI_TX_PHY_RESET_CTL, 0xf << 16);
+ }
+ 
+@@ -413,6 +414,7 @@ static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
+ {
+ 	struct drm_device *dev = encoder->dev;
+ 	struct vc4_dev *vc4 = to_vc4_dev(dev);
++return;
+ 
+ 	HDMI_WRITE(VC4_HDMI_TX_PHY_RESET_CTL, 0);
+ }
+diff --git a/drivers/gpu/drm/vc4/vc4_kms.c b/drivers/gpu/drm/vc4/vc4_kms.c
+index 1473df9ef4a1..5ddc5d9beaae 100644
+--- a/drivers/gpu/drm/vc4/vc4_kms.c
++++ b/drivers/gpu/drm/vc4/vc4_kms.c
+@@ -144,6 +144,7 @@ static int vc4_atomic_commit(struct drm_device *dev,
+ 	 * current layout.
+ 	 */
+ 
++	async=0;
+ 	if (async) {
+ 		vc4_queue_seqno_cb(dev, &c->cb, wait_seqno,
+ 				   vc4_atomic_complete_commit_seqno_cb);
+-- 
+2.4.3
+
diff --git a/recipes-kernel/linux/linux-raspberrypi_4.1.bb b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
new file mode 100644
index 000000000000..a8e1863ddf2c
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
@@ -0,0 +1,16 @@
+LINUX_VERSION ?= "4.1.0"
+
+# Don't make this the default kernel, right now it is only for testing purposes
+DEFAULT_PREFERENCE = "-1"
+
+SRCREV = "07009cab090ade3dd180e8a55d590b1a00072eed"
+SRC_URI = "git://github.com/anholt/linux.git;protocol=git;branch=vc4-kms-v3d-rpi2"
+
+# Add patches needed for the vc4 driver but only if enabled as distro feature since are experimental
+SRC_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'vc4-gfx', 'file://0001-ARM-bcm2709_defconfig-Enable-config-options-for-vc4-.patch', '', d)}"
+SRC_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'vc4-gfx', 'file://0002-ARM-dts-Fix-i2c-for-bcm2709-RPI2-B-board.patch', '', d)}"
+SRC_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'vc4-gfx', 'file://0003-drm-vc4-Use-the-fbdev_cma-helpers.patch', '', d)}"
+SRC_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'vc4-gfx', 'file://0004-drm-vc4-Allow-vblank-to-be-disabled.patch', '', d)}"
+SRC_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'vc4-gfx', 'file://0005-drm-vc4-Disable-KMS-operations.patch', '', d)}"
+
+require linux-raspberrypi.inc
-- 
2.4.3


