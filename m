Return-Path: <javier@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A3F4E00ABC; Thu, 30 Jul 2015 01:41:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	TVD_PH_BODY_ACCOUNTS_PRE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [54.187.51.154 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 TVD_PH_BODY_ACCOUNTS_PRE The body matches phrases such as
	"accounts
	*      suspended", "account credited", "account verification"
Received: from lists.s-osg.org (lists.s-osg.org [54.187.51.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6ABAAE00AA9
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 01:41:21 -0700 (PDT)
Received: from localhost.localdomain (119.3.11.37.dynamic.jazztel.es
	[37.11.3.119])
	by lists.s-osg.org (Postfix) with ESMTPSA id 9FB8A462EB;
	Thu, 30 Jul 2015 01:36:06 -0700 (PDT)
From: Javier Martinez Canillas <javier@osg.samsung.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 30 Jul 2015 10:34:06 +0200
Message-Id: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
X-Mailer: git-send-email 2.4.3
X-Mailman-Approved-At: Sun, 02 Aug 2015 23:22:39 -0700
Cc: yocto@yoctoproject.org, Derek Foreman <derekf@osg.samsung.com>,
	Javier Martinez Canillas <javier@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Subject: [meta-raspberrypi][PATCH 0/5] Add support for 4.1 kernel with vc4 DRM/KMS driver
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

Hello Andrei,

This series adds support for Eric Anholt's v4.1 kernel, that has support
for the vc4 DRM/KMS driver. Which is the new open source graphics driver
stack for the Raspberry Pi to be used instead of the userland driver.

We are using it in the Tizen port to RPI2 [0] and are trying to push all
the patches back to the tizen-distro and meta-raspberrypi OE layers so
I'm posting these patches to get your feedback.

The v4.1 kernel is under heavy development so is a work-in-progress and
should not be used in production. That's why a default preference of -1
is set and the kernel only is enabled if the "vc4-gfx" feature is added
to the DISTRO_FEATURES variable.

But even when it's still a development kernel, having the recipe in the
meta-raspberrypi will allow people to test it. The patches are for:

Patch 1/5 makes optional to add the kgdboc kernel command line parameter

Patch 2/5 allows to set the mask_gpu_interrupt0 option in config.txt

Patch 3/5 changes the partition layout to add more space for boot files

Patch 4/5 adds a recipe for the 4.1 and some patches to make it stable

Patch 5/5 switchs the default providers according to the gfx stack used

One problem I found is that the latest RPI kernels changed the path for
the DT overlays after commit 739c586c8757 ("BCM270X_DT: Move the overlays
into a subdirectory, adding the README") [1] so the kernel fails to build
with the default KERNEL_DEVICETREE. I tried to change get_dts() function
logic to take this into account but found that it would had been a more
intrusive change and KERNEL_DEVICETREE will have to be changed anyways
once the recipes for the other kernels are updated to the latest HEAD so
for now I just define the following on local.conf to make it build:

KERNEL_DEVICETREE = " \
    bcm2708-rpi-b.dtb \
    bcm2708-rpi-b-plus.dtb \
    bcm2709-rpi-2-b.dtb \
    \
    overlays/hifiberry-amp-overlay.dtb \
    overlays/hifiberry-dac-overlay.dtb \
    overlays/hifiberry-dacplus-overlay.dtb \
    overlays/hifiberry-digi-overlay.dtb \
    overlays/iqaudio-dac-overlay.dtb \
    overlays/iqaudio-dacplus-overlay.dtb \
    overlays/lirc-rpi-overlay.dtb \
    overlays/pps-gpio-overlay.dtb \
    overlays/w1-gpio-overlay.dtb \
    overlays/w1-gpio-pullup-overlay.dtb \
    "

[0]: http://blogs.s-osg.org/tizen-rpi2-now-supporting-3d-acceleration/
[1]: https://github.com/raspberrypi/linux/commit/739c586c8757

Best regards,
---
Javier Martinez Canillas
Open Source Group
Samsung Research America


Derek Foreman (4):
  rpi-config: Allow to mask GPU irqs
  sdcard_image-rpi.bbclass: Allocate more space for boot partition
  linux-raspberrypi: Add a 4.1 linux kernel with vc4 support
  rpi-default-providers: Switch providers according to used gfx stack

Mauro Carvalho Chehab (1):
  linux-raspberrypi.inc: Make kgdboc kernel param optional

 README                                             |  38 +++++--
 classes/sdcard_image-rpi.bbclass                   |   6 +-
 conf/machine/include/rpi-default-providers.inc     |   8 +-
 conf/machine/include/rpi-default-versions.inc      |   2 +-
 recipes-bsp/bootfiles/rpi-config_git.bb            |   6 ++
 recipes-kernel/linux/linux-raspberrypi.inc         |   5 +-
 ..._defconfig-Enable-config-options-for-vc4-.patch |  48 +++++++++
 ...-ARM-dts-Fix-i2c-for-bcm2709-RPI2-B-board.patch |  85 +++++++++++++++
 .../0003-drm-vc4-Use-the-fbdev_cma-helpers.patch   | 115 +++++++++++++++++++++
 .../0004-drm-vc4-Allow-vblank-to-be-disabled.patch |  26 +++++
 .../0005-drm-vc4-Disable-KMS-operations.patch      |  95 +++++++++++++++++
 recipes-kernel/linux/linux-raspberrypi_4.1.bb      |  16 +++
 12 files changed, 433 insertions(+), 17 deletions(-)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi/0001-ARM-bcm2709_defconfig-Enable-config-options-for-vc4-.patch
 create mode 100644 recipes-kernel/linux/linux-raspberrypi/0002-ARM-dts-Fix-i2c-for-bcm2709-RPI2-B-board.patch
 create mode 100644 recipes-kernel/linux/linux-raspberrypi/0003-drm-vc4-Use-the-fbdev_cma-helpers.patch
 create mode 100644 recipes-kernel/linux/linux-raspberrypi/0004-drm-vc4-Allow-vblank-to-be-disabled.patch
 create mode 100644 recipes-kernel/linux/linux-raspberrypi/0005-drm-vc4-Disable-KMS-operations.patch
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_4.1.bb

-- 
2.4.3


