Return-Path: <javier@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D7E1E00A54; Thu, 13 Aug 2015 10:08:06 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 394FDE00A3C
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 10:08:03 -0700 (PDT)
Received: from localhost.localdomain (95.111.23.95.dynamic.jazztel.es
	[95.23.111.95])
	by lists.s-osg.org (Postfix) with ESMTPSA id 6CCB946328;
	Thu, 13 Aug 2015 10:08:00 -0700 (PDT)
From: Javier Martinez Canillas <javier@osg.samsung.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 13 Aug 2015 19:07:19 +0200
Message-Id: <1439485643-31467-1-git-send-email-javier@osg.samsung.com>
X-Mailer: git-send-email 2.4.3
MIME-Version: 1.0
Cc: Derek Foreman <derekf@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>, yocto@yoctoproject.org,
	Javier Martinez Canillas <javier@osg.samsung.com>
Subject: [meta-raspberrypi][PATCH v2 0/4] Add support for 4.1 kernel with vc4 DRM/KMS driver
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
X-List-Received-Date: Thu, 13 Aug 2015 17:08:06 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hello Andrei,

This series adds support for Eric Anholt's v4.1 kernel, that has support
for the vc4 DRM/KMS driver. Which is the new open source graphics driver
stack for the Raspberry Pi to be used instead of the userland driver.

This is a second version of the series which addresses feedback provided
by Andreas Müller, Khem Raj, Petter Mabäcker and you. The first version
of the series can be found at [0]. Some of the v1 patches have already
been picked and are now in the meta-raspberrypi master branch.

The v4.1 kernel is under heavy development so is a work-in-progress and
should not be used in production. That's why it's not set as the default
virtual/kernel provider but the user can change the default providers in
case wants to use the VC4 driver.

But even when it's still a development kernel, having the recipe in the
meta-raspberrypi will allow people to test it. We have been using it in
the Tizen RPi2 port [1] for some time. The patches in the series are for:

Patch 1/4 allows to set the mask_gpu_interrupt0 option in config.txt

Patch 2/4 adds a recipe for the 4.1 and some patches to make it stable

Patch 3/4 Documents how to switch the default providers for vc4 gfx stack

Patch 4/4 Adds a section to the README that explains that two gfx stacks
are available and that the user can change the default providers.

As discussed in v1, the following has to be added in local.conf to build:

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

[0]: https://www.mail-archive.com/yocto@yoctoproject.org/msg25164.html
[1]: http://blogs.s-osg.org/tizen-rpi2-now-supporting-3d-acceleration/

Best regards,
Javier

Changes in v2:
 - Fix commit message about mask GPU irq option. Suggested by Andrei Gherzan.
- Add a linux-raspberrypi-vc4 recipe insted of a linux-raspberrypi one.
  Suggested by Petter Mabäcker, Andreas Müller and Andrei Gherzan.
- Split the readme change in a separate patch. Suggested by Andrei Gherzan.
- Don't make the vc4 patches inclusion conditional since will always be
  needed when choosing the recipe. Suggested by Andrei Gherzan.
- Don't add a feature and allow users to change the default provider manually
  aided by a comment. Suggested by Andreas Müller and Andrei Gherzan.

Derek Foreman (3):
  rpi-config: Allow to mask GPU irqs
  linux-raspberrypi: Add a 4.1 linux kernel with vc4 support
  rpi-default-providers: Document how to switch providers for vc4 gfx
    stack

Javier Martinez Canillas (1):
  README: Add a section about graphic stacks

 README                                             |  31 ++++--
 conf/machine/include/rpi-default-providers.inc     |  10 ++
 recipes-bsp/bootfiles/rpi-config_git.bb            |   6 ++
 ..._defconfig-Enable-config-options-for-vc4-.patch |  48 +++++++++
 ...-ARM-dts-Fix-i2c-for-bcm2709-RPI2-B-board.patch |  85 +++++++++++++++
 .../0003-drm-vc4-Use-the-fbdev_cma-helpers.patch   | 115 +++++++++++++++++++++
 .../0004-drm-vc4-Allow-vblank-to-be-disabled.patch |  26 +++++
 .../0005-drm-vc4-Disable-KMS-operations.patch      |  95 +++++++++++++++++
 .../linux/linux-raspberrypi-vc4/defconfig          |   1 +
 recipes-kernel/linux/linux-raspberrypi-vc4_4.1.bb  |  12 +++
 10 files changed, 421 insertions(+), 8 deletions(-)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-vc4/0001-ARM-bcm2709_defconfig-Enable-config-options-for-vc4-.patch
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-vc4/0002-ARM-dts-Fix-i2c-for-bcm2709-RPI2-B-board.patch
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-vc4/0003-drm-vc4-Use-the-fbdev_cma-helpers.patch
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-vc4/0004-drm-vc4-Allow-vblank-to-be-disabled.patch
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-vc4/0005-drm-vc4-Disable-KMS-operations.patch
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-vc4/defconfig
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-vc4_4.1.bb

-- 
2.4.3


