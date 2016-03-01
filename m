Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12103E00CC9; Tue,  1 Mar 2016 15:48:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09CFDE00CB5
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 15:48:09 -0800 (PST)
Received: by mail-wm0-f45.google.com with SMTP id p65so55654919wmp.0
	for <yocto@yoctoproject.org>; Tue, 01 Mar 2016 15:48:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=EZemtt8C9dLWs7viClomCm1qzbJGsE6MCgXQdmiZ7aA=;
	b=nuXUHlvgD40qQ6NWOfF7maVSOw8rgmm1awWgxtxhRZliu/MgZAO2azZ7iOKhQMHwwR
	LTtg+sb5CMvsGvdwfdT5eoD/Tp0FwQK5tPu+pkk1/cZThTsBvo0pZRsrBG/zHkNVlz04
	nLsk7SmYDxCMYmTNTi1tlSrowQiyyJnp5ag55wx094pX81OaGaDYhZKuvmFlRzya7Bul
	KRSE21qpKO/Aju7cDnyCJiX7euSGRFws6lp5qMouNYfp0nhJX/awSmqKX1sbLtVv5bsu
	ww+FqWtNnhszSJtcWZknF6y3+gff29iYAZqBafI1EafU/iJVtRqRcJCBDgTmcvnRImaD
	/bzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=EZemtt8C9dLWs7viClomCm1qzbJGsE6MCgXQdmiZ7aA=;
	b=fvFmu/mnfrpX9/MKJgKHAmIgNpqKaF6WsCGnFDPqArvJGinILycfftFaRITT80e/57
	h2eOPryNTRvTPudWPjFxS8Wiy0SL2AtIoEFhSg45lQI4XJanMjsODHsV6u4MfxOXbDZO
	z1U6fhWOJQTz8YQ/kIOQAgW6tmq2Ail8khWEzmKtUBd5++tjjKDmwOBuOzubQWi7H1Gb
	ztN5I6JJNbv7BRLAvvmTmvIrY4JQbSlAfWbS4iDa5onj4bQJQb06LbnlrP9ZoC8ByVfi
	CZomsqDr+z9RiwD3BhLH/F9TQpxYT5EGJ66quHKuDi3G/ce6pFarjoM5I7Jv4vH+pfOY
	8rLg==
X-Gm-Message-State: AD7BkJKQdJ4Mgzf9HqMctRLc3ix8ExaiYDP3QK9595+/NjtWXlFP9mYHgAI771r2OlKPpg==
X-Received: by 10.194.63.242 with SMTP id j18mr27105325wjs.114.1456876089005; 
	Tue, 01 Mar 2016 15:48:09 -0800 (PST)
Received: from resin.localdomain
	(dslb-084-056-032-062.084.056.pools.vodafone-ip.de. [84.56.32.62])
	by smtp.gmail.com with ESMTPSA id b1sm33050640wjy.0.2016.03.01.15.48.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 01 Mar 2016 15:48:08 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed,  2 Mar 2016 00:47:59 +0100
Message-Id: <1456876079-9288-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.7.0
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH v4 1/1] pitft: Add PiTFT22 support
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
X-List-Received-Date: Tue, 01 Mar 2016 23:48:16 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Petter Mabäcker <petter@technux.se>

- Add support to build overlays for PiTFT22 in the kernel.
- Setup a basic configuration for the driver

The PiTFT22 support is optional and can be enabled by adding below in
local.conf:

MACHINE_FEATURES += "pitft pitft22"

This patch also includes restructuring of kernel patches per kernel version
specific directories.

[Support #70]

Signed-off-by: Petter Mabäcker <petter@technux.se>
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 README                                             |   7 +
 conf/machine/include/rpi-base.inc                  |   1 +
 recipes-bsp/bootfiles/rpi-config_git.bb            |   7 +
 .../0001-ASoC-Add-BCM2708-fixes.patch              | 263 +++++++++++++++++++++
 ...ng-lock-from-atomic-context-in-i2c-driver.patch | 235 ++++++++++++++++++
 .../0001-dts-add-overlay-for-pitft22.patch         | 110 +++++++++
 .../0001-dts-add-overlay-for-pitft22.patch         | 110 +++++++++
 .../0001-ASoC-Add-BCM2708-fixes.patch              | 263 ---------------------
 ...ng-lock-from-atomic-context-in-i2c-driver.patch | 235 ------------------
 recipes-kernel/linux/linux-raspberrypi_3.14.bb     |   2 +
 recipes-kernel/linux/linux-raspberrypi_3.18.bb     |   7 +-
 recipes-kernel/linux/linux-raspberrypi_4.1.bb      |   6 +-
 12 files changed, 745 insertions(+), 501 deletions(-)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-3.14/0001-ASoC-Add-BCM2708-fixes.patch
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-3.14/0002-Fix-grabbing-lock-from-atomic-context-in-i2c-driver.patch
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-3.18/0001-dts-add-overlay-for-pitft22.patch
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.1/0001-dts-add-overlay-for-pitft22.patch
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi/0001-ASoC-Add-BCM2708-fixes.patch
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi/0002-Fix-grabbing-lock-from-atomic-context-in-i2c-driver.patch

diff --git a/README b/README
index 129f5e2..536926b 100644
--- a/README
+++ b/README
@@ -226,6 +226,13 @@ MACHINE_FEATURES += "pitft"
 NOTE: To get this working the overlay for the PiTFT model must be build,
       added and specified as well (dtoverlay=<driver> in config.txt)
 
+Below is a list of currently supported PiTFT models in meta-raspberrypi,
+the modelname should be added as a MACHINE_FEATURES in local.conf like below:
+    - MACHINE_FEATURES += "pitft <modelname>"
+
+List of currently supported models:
+    - pitft22
+
 
 4. Extra apps
 =============
diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index c8f6cd6..27f09ad 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -31,6 +31,7 @@ KERNEL_DEVICETREE ?= " \
     overlays/iqaudio-dac-overlay.dtb \
     overlays/iqaudio-dacplus-overlay.dtb \
     overlays/lirc-rpi-overlay.dtb \
+    overlays/pitft22-overlay.dtb \
     overlays/pps-gpio-overlay.dtb \
     overlays/w1-gpio-overlay.dtb \
     overlays/w1-gpio-pullup-overlay.dtb \
diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
index bfe00d1..4d41723 100644
--- a/recipes-bsp/bootfiles/rpi-config_git.bb
+++ b/recipes-bsp/bootfiles/rpi-config_git.bb
@@ -16,6 +16,7 @@ S = "${WORKDIR}/git"
 PR = "r4"
 
 PITFT="${@bb.utils.contains("MACHINE_FEATURES", "pitft", "1", "0", d)}"
+PITFT22="${@bb.utils.contains("MACHINE_FEATURES", "pitft22", "1", "0", d)}"
 
 inherit deploy
 
@@ -83,6 +84,12 @@ do_deploy() {
         echo "dtparam=i2c1=on" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
         echo "dtparam=i2c_arm=on" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
     fi
+
+    # PiTFT22 display support
+    if [ "${PITFT22}" = "1" ]; then
+        echo "# Enable PITFT22 display" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+        echo "dtoverlay=pitft22,rotate=270,speed=32000000,txbuflen=32768" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    fi
 }
 
 addtask deploy before do_package after do_install
diff --git a/recipes-kernel/linux/linux-raspberrypi-3.14/0001-ASoC-Add-BCM2708-fixes.patch b/recipes-kernel/linux/linux-raspberrypi-3.14/0001-ASoC-Add-BCM2708-fixes.patch
new file mode 100644
index 0000000..26c71b8
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi-3.14/0001-ASoC-Add-BCM2708-fixes.patch
@@ -0,0 +1,263 @@
+From e73a69601c65103b0e032e6093af0f00a1e1af3a Mon Sep 17 00:00:00 2001
+From: Florian Meier <florian.meier@koalo.de>
+Date: Fri, 22 Nov 2013 14:33:38 +0100
+Subject: [PATCH 1/2] ASoC: Add BCM2708 fixes
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+(cherry-pick remaining parts of
+730cb8a1216f9da3d097072cd9bb06e0db348172)
+
+bcm2708-i2s: Update bclk_ratio to more correct values
+
+Move GPIO setup to hw_params.
+
+This is used to stop the I2S driver from breaking
+the GPIO setup for other uses of the PCM interface
+
+Configure GPIOs for I2S based on revision/card settings
+
+With RPi model B+, assignment of the I2S GPIO pins has changed.
+This patch uses the board revision to auto-detect the GPIOs used
+for I2S. It also allows sound card drivers to set the GPIOs that
+should be used. This is especially important with the Compute
+Module.
+
+bcm2708-i2s: Avoid leak from iomap when accessing gpio
+
+bcm2708: Eliminate i2s debugfs directory error
+
+Qualify the two regmap ranges uses by bcm2708-i2s ('-i2s' and '-clk')
+to avoid the name clash when registering debugfs entries.
+
+Upstream-Status: Pending
+
+Signed-off-by: Petter Mabäcker <petter@technux.se>
+
+Conflicts:
+	sound/soc/bcm/Kconfig
+	sound/soc/bcm/Makefile
+	sound/soc/bcm/bcm2708-i2s.c
+---
+ sound/soc/bcm/bcm2708-i2s.c | 82 ++++++++++++++++++++++++++++++++++++---------
+ sound/soc/bcm/bcm2708-i2s.h | 35 +++++++++++++++++++
+ 2 files changed, 102 insertions(+), 15 deletions(-)
+ create mode 100644 sound/soc/bcm/bcm2708-i2s.h
+
+diff --git a/sound/soc/bcm/bcm2708-i2s.c b/sound/soc/bcm/bcm2708-i2s.c
+index 9976571..3fcb740 100644
+--- a/sound/soc/bcm/bcm2708-i2s.c
++++ b/sound/soc/bcm/bcm2708-i2s.c
+@@ -31,6 +31,8 @@
+  * General Public License for more details.
+  */
+ 
++#include "bcm2708-i2s.h"
++
+ #include <linux/init.h>
+ #include <linux/module.h>
+ #include <linux/device.h>
+@@ -38,6 +40,7 @@
+ #include <linux/delay.h>
+ #include <linux/io.h>
+ #include <linux/clk.h>
++#include <mach/gpio.h>
+ 
+ #include <sound/core.h>
+ #include <sound/pcm.h>
+@@ -46,6 +49,8 @@
+ #include <sound/soc.h>
+ #include <sound/dmaengine_pcm.h>
+ 
++#include <asm/system_info.h>
++
+ /* Clock registers */
+ #define BCM2708_CLK_PCMCTL_REG  0x00
+ #define BCM2708_CLK_PCMDIV_REG  0x04
+@@ -163,6 +168,9 @@ static const unsigned int bcm2708_clk_freq[BCM2708_CLK_SRC_HDMI+1] = {
+ #define BCM2708_DMA_DREQ_PCM_TX		2
+ #define BCM2708_DMA_DREQ_PCM_RX		3
+ 
++/* I2S pin configuration */
++static int bcm2708_i2s_gpio=BCM2708_I2S_GPIO_AUTO;
++
+ /* General device struct */
+ struct bcm2708_i2s_dev {
+ 	struct device				*dev;
+@@ -174,6 +182,12 @@ struct bcm2708_i2s_dev {
+ 	struct regmap *clk_regmap;
+ };
+ 
++void bcm2708_i2s_set_gpio(int gpio) {
++	bcm2708_i2s_gpio=gpio;
++}
++EXPORT_SYMBOL(bcm2708_i2s_set_gpio);
++
++
+ static void bcm2708_i2s_start_clock(struct bcm2708_i2s_dev *dev)
+ {
+ 	/* Start the clock if in master mode */
+@@ -306,6 +320,25 @@ static int bcm2708_i2s_set_dai_bclk_ratio(struct snd_soc_dai *dai,
+ }
+ 
+ 
++static int bcm2708_i2s_set_function(unsigned offset, int function)
++{
++	#define GPIOFSEL(x)  (0x00+(x)*4)
++	void __iomem *gpio = __io_address(GPIO_BASE);
++	unsigned alt = function <= 3 ? function + 4: function == 4 ? 3 : 2;
++	unsigned gpiodir;
++	unsigned gpio_bank = offset / 10;
++	unsigned gpio_field_offset = (offset - 10 * gpio_bank) * 3;
++
++	if (offset >= BCM2708_NR_GPIOS)
++		return -EINVAL;
++
++	gpiodir = readl(gpio + GPIOFSEL(gpio_bank));
++	gpiodir &= ~(7 << gpio_field_offset);
++	gpiodir |= alt << gpio_field_offset;
++	writel(gpiodir, gpio + GPIOFSEL(gpio_bank));
++	return 0;
++}
++
+ static void bcm2708_i2s_setup_gpio(void)
+ {
+ 	/*
+@@ -314,20 +347,37 @@ static void bcm2708_i2s_setup_gpio(void)
+ 	 * TODO Better way would be to handle
+ 	 * this in the device tree!
+ 	 */
+-#define INP_GPIO(g) *(gpio+((g)/10)) &= ~(7<<(((g)%10)*3))
+-#define SET_GPIO_ALT(g,a) *(gpio+(((g)/10))) |= (((a)<=3?(a)+4:(a)==4?3:2)<<(((g)%10)*3))
++	int pin,pinconfig,startpin,alt;
++
++	/* SPI is on different GPIOs on different boards */
++        /* for Raspberry Pi B+, this is pin GPIO18-21, for original on 28-31 */
++	if (bcm2708_i2s_gpio==BCM2708_I2S_GPIO_AUTO) {	
++		if ((system_rev & 0xffffff) >= 0x10) {
++			/* Model B+ */
++			pinconfig=BCM2708_I2S_GPIO_PIN18;
++		} else {
++			/* original */
++			pinconfig=BCM2708_I2S_GPIO_PIN28;
++		}
++	} else {
++		pinconfig=bcm2708_i2s_gpio;
++	}
+ 
+-	unsigned int *gpio;
+-	int pin;
+-	gpio = ioremap(GPIO_BASE, SZ_16K);
++	if (pinconfig==BCM2708_I2S_GPIO_PIN18) {
++		startpin=18;
++		alt=BCM2708_I2S_GPIO_PIN18_ALT;
++	} else if (pinconfig==BCM2708_I2S_GPIO_PIN28) {
++		startpin=28;
++		alt=BCM2708_I2S_GPIO_PIN28_ALT;
++	} else {
++		printk(KERN_INFO "Can't configure I2S GPIOs, unknown pin mode for I2S: %i\n",pinconfig);
++		return;
++	}	
+ 
+-	/* SPI is on GPIO 7..11 */
+-	for (pin = 28; pin <= 31; pin++) {
+-		INP_GPIO(pin);		/* set mode to GPIO input first */
+-		SET_GPIO_ALT(pin, 2);	/* set mode to ALT 0 */
++	/* configure I2S pins to correct ALT mode */
++	for (pin = startpin; pin <= startpin+3; pin++) {
++		bcm2708_i2s_set_function(pin, alt);
+ 	}
+-#undef INP_GPIO
+-#undef SET_GPIO_ALT
+ }
+ 
+ static int bcm2708_i2s_hw_params(struct snd_pcm_substream *substream,
+@@ -372,15 +422,15 @@ static int bcm2708_i2s_hw_params(struct snd_pcm_substream *substream,
+ 	switch (params_format(params)) {
+ 	case SNDRV_PCM_FORMAT_S16_LE:
+ 		data_length = 16;
+-		bclk_ratio = 40;
++		bclk_ratio = 50;
+ 		break;
+ 	case SNDRV_PCM_FORMAT_S24_LE:
+ 		data_length = 24;
+-		bclk_ratio = 40;
++		bclk_ratio = 50;
+ 		break;
+ 	case SNDRV_PCM_FORMAT_S32_LE:
+ 		data_length = 32;
+-		bclk_ratio = 80;
++		bclk_ratio = 100;
+ 		break;
+ 	default:
+ 		return -EINVAL;
+@@ -746,7 +796,7 @@ static struct snd_soc_dai_driver bcm2708_i2s_dai = {
+ 		.channels_max = 2,
+ 		.rates =	SNDRV_PCM_RATE_8000_192000,
+ 		.formats =	SNDRV_PCM_FMTBIT_S16_LE
+-				// | SNDRV_PCM_FMTBIT_S24_LE : disable for now, it causes white noise with xbmc
++				| SNDRV_PCM_FMTBIT_S24_LE
+ 				| SNDRV_PCM_FMTBIT_S32_LE
+ 		},
+ 	.capture = {
+@@ -803,6 +853,7 @@ static const struct regmap_config bcm2708_regmap_config[] = {
+ 		.precious_reg = bcm2708_i2s_precious_reg,
+ 		.volatile_reg = bcm2708_i2s_volatile_reg,
+ 		.cache_type = REGCACHE_RBTREE,
++		.name = "i2s",
+ 	},
+ 	{
+ 		.reg_bits = 32,
+@@ -811,6 +862,7 @@ static const struct regmap_config bcm2708_regmap_config[] = {
+ 		.max_register = BCM2708_CLK_PCMDIV_REG,
+ 		.volatile_reg = bcm2708_clk_volatile_reg,
+ 		.cache_type = REGCACHE_RBTREE,
++		.name = "clk",
+ 	},
+ };
+ 
+diff --git a/sound/soc/bcm/bcm2708-i2s.h b/sound/soc/bcm/bcm2708-i2s.h
+new file mode 100644
+index 0000000..94fed6a
+--- /dev/null
++++ b/sound/soc/bcm/bcm2708-i2s.h
+@@ -0,0 +1,35 @@
++/*
++ * I2S configuration for sound cards. 
++ *
++ * Copyright (c) 2014 Daniel Matuschek <daniel@hifiberry.com>
++ *
++ * This program is free software; you can redistribute it and/or modify
++ * it under the terms of the GNU General Public License as published by
++ * the Free Software Foundation; either version 2 of the License, or
++ * (at your option) any later version.
++ *
++ * This program is distributed in the hope that it will be useful,
++ * but WITHOUT ANY WARRANTY; without even the implied warranty of
++ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
++ * GNU General Public License for more details.
++ *
++ * You should have received a copy of the GNU General Public License
++ * along with this program; if not, write to the Free Software
++ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
++ */
++
++#ifndef BCM2708_I2S_H
++#define BCM2708_I2S_H
++
++/* I2S pin assignment */
++#define BCM2708_I2S_GPIO_AUTO	0
++#define BCM2708_I2S_GPIO_PIN18	1
++#define BCM2708_I2S_GPIO_PIN28	2
++
++/* Alt mode to enable I2S */
++#define BCM2708_I2S_GPIO_PIN18_ALT	0
++#define BCM2708_I2S_GPIO_PIN28_ALT	2
++
++extern void bcm2708_i2s_set_gpio(int gpio);
++
++#endif
+-- 
+1.9.1
+
diff --git a/recipes-kernel/linux/linux-raspberrypi-3.14/0002-Fix-grabbing-lock-from-atomic-context-in-i2c-driver.patch b/recipes-kernel/linux/linux-raspberrypi-3.14/0002-Fix-grabbing-lock-from-atomic-context-in-i2c-driver.patch
new file mode 100644
index 0000000..907ed7b
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi-3.14/0002-Fix-grabbing-lock-from-atomic-context-in-i2c-driver.patch
@@ -0,0 +1,235 @@
+From 2c84355bf200f4d19d7078dee2c63011ad715395 Mon Sep 17 00:00:00 2001
+From: jeanleflambeur <catalin.vasile@gmail.com>
+Date: Sun, 1 Feb 2015 12:35:38 +0100
+Subject: [PATCH 2/2] Fix grabbing lock from atomic context in i2c driver
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+(cherry-pick from 558d0bfc8fe80ccdccee7f03e881a80965ec987c)
+
+2 main changes:
+- check for timeouts in the bcm2708_bsc_setup function as indicated by this comment:
+      /* poll for transfer start bit (should only take 1-20 polls) */
+  This implies that the setup function can now fail so account for this everywhere it's called
+- Removed the clk_get_rate call from inside the setup function as it locks a mutex and that's not ok since we call it from under a spin lock.
+
+removed dead code and update comment
+
+fixed typo in comment
+
+Upstream-Status: Pending
+
+Signed-off-by: Petter Mabäcker <petter@technux.se>
+
+Conflicts:
+	drivers/i2c/busses/i2c-bcm2708.c
+---
+ drivers/i2c/busses/i2c-bcm2708.c | 88 +++++++++++++++++++++++++++++-----------
+ 1 file changed, 65 insertions(+), 23 deletions(-)
+
+diff --git a/drivers/i2c/busses/i2c-bcm2708.c b/drivers/i2c/busses/i2c-bcm2708.c
+index 05531db..886672c 100644
+--- a/drivers/i2c/busses/i2c-bcm2708.c
++++ b/drivers/i2c/busses/i2c-bcm2708.c
+@@ -67,6 +67,7 @@
+ #define BSC_S_TA		0x00000001
+ 
+ #define I2C_TIMEOUT_MS	150
++#define I2C_WAIT_LOOP_COUNT 40
+ 
+ #define DRV_NAME	"bcm2708_i2c"
+ 
+@@ -85,6 +86,7 @@ struct bcm2708_i2c {
+ 	void __iomem *base;
+ 	int irq;
+ 	struct clk *clk;
++	u32 cdiv;
+ 
+ 	struct completion done;
+ 
+@@ -108,10 +110,10 @@ static void bcm2708_i2c_init_pinmode(int id)
+ 	int pin;
+ 	u32 *gpio = ioremap(0x20200000, SZ_16K);
+ 
+-        BUG_ON(id != 0 && id != 1);
++	BUG_ON(id != 0 && id != 1);
+ 	/* BSC0 is on GPIO 0 & 1, BSC1 is on GPIO 2 & 3 */
+ 	for (pin = id*2+0; pin <= id*2+1; pin++) {
+-printk("bcm2708_i2c_init_pinmode(%d,%d)\n", id, pin);
++		printk("bcm2708_i2c_init_pinmode(%d,%d)\n", id, pin);
+ 		INP_GPIO(pin);		/* set mode to GPIO input first */
+ 		SET_GPIO_ALT(pin, 0);	/* set mode to ALT 0 */
+ 	}
+@@ -150,16 +152,16 @@ static inline void bcm2708_bsc_fifo_fill(struct bcm2708_i2c *bi)
+ 		bcm2708_wr(bi, BSC_FIFO, bi->msg->buf[bi->pos++]);
+ }
+ 
+-static inline void bcm2708_bsc_setup(struct bcm2708_i2c *bi)
++static inline int bcm2708_bsc_setup(struct bcm2708_i2c *bi)
+ {
+-	unsigned long bus_hz;
+ 	u32 cdiv, s;
+ 	u32 c = BSC_C_I2CEN | BSC_C_INTD | BSC_C_ST | BSC_C_CLEAR_1;
++	int wait_loops = I2C_WAIT_LOOP_COUNT;
+ 
+-	bus_hz = clk_get_rate(bi->clk);
+-	cdiv = bus_hz / baudrate;
+-	if (cdiv > 0xffff)
+-		cdiv = 0xffff;
++	/* Can't call clk_get_rate as it locks a mutex and here we are spinlocked.
++	 * Use the value that we cached in the probe.
++	 */
++	cdiv = bi->cdiv;
+ 
+ 	if (bi->msg->flags & I2C_M_RD)
+ 		c |= BSC_C_INTR | BSC_C_READ;
+@@ -176,17 +178,25 @@ static inline void bcm2708_bsc_setup(struct bcm2708_i2c *bi)
+ 		   - Both messages to same slave address
+ 		   - Write message can fit inside FIFO (16 bytes or less) */
+ 		if ( (bi->nmsgs > 1) &&
+-		    !(bi->msg[0].flags & I2C_M_RD) && (bi->msg[1].flags & I2C_M_RD) &&
+-		     (bi->msg[0].addr == bi->msg[1].addr) && (bi->msg[0].len <= 16)) {
++			!(bi->msg[0].flags & I2C_M_RD) && (bi->msg[1].flags & I2C_M_RD) &&
++			 (bi->msg[0].addr == bi->msg[1].addr) && (bi->msg[0].len <= 16)) {
+ 			/* Fill FIFO with entire write message (16 byte FIFO) */
+-			while (bi->pos < bi->msg->len)
++			while (bi->pos < bi->msg->len) {
+ 				bcm2708_wr(bi, BSC_FIFO, bi->msg->buf[bi->pos++]);
++			}
+ 			/* Start write transfer (no interrupts, don't clear FIFO) */
+ 			bcm2708_wr(bi, BSC_C, BSC_C_I2CEN | BSC_C_ST);
++
+ 			/* poll for transfer start bit (should only take 1-20 polls) */
+ 			do {
+ 				s = bcm2708_rd(bi, BSC_S);
+-			} while (!(s & (BSC_S_TA | BSC_S_ERR | BSC_S_CLKT | BSC_S_DONE)));
++			} while (!(s & (BSC_S_TA | BSC_S_ERR | BSC_S_CLKT | BSC_S_DONE)) && --wait_loops >= 0);
++
++			/* did we time out or some error occured? */
++			if (wait_loops < 0 || (s & (BSC_S_ERR | BSC_S_CLKT))) {
++				return -1;
++			}
++
+ 			/* Send next read message before the write transfer finishes. */
+ 			bi->nmsgs--;
+ 			bi->msg++;
+@@ -196,6 +206,8 @@ static inline void bcm2708_bsc_setup(struct bcm2708_i2c *bi)
+ 		}
+ 	}
+ 	bcm2708_wr(bi, BSC_C, c);
++
++	return 0;
+ }
+ 
+ static irqreturn_t bcm2708_i2c_interrupt(int irq, void *dev_id)
+@@ -203,13 +215,15 @@ static irqreturn_t bcm2708_i2c_interrupt(int irq, void *dev_id)
+ 	struct bcm2708_i2c *bi = dev_id;
+ 	bool handled = true;
+ 	u32 s;
++	int ret;
+ 
+ 	spin_lock(&bi->lock);
+ 
+ 	/* we may see camera interrupts on the "other" I2C channel
+-           Just return if we've not sent anything */
+-        if (!bi->nmsgs || !bi->msg )
++		   Just return if we've not sent anything */
++	if (!bi->nmsgs || !bi->msg) {
+ 		goto early_exit;
++	}
+ 
+ 	s = bcm2708_rd(bi, BSC_S);
+ 
+@@ -217,13 +231,16 @@ static irqreturn_t bcm2708_i2c_interrupt(int irq, void *dev_id)
+ 		bcm2708_bsc_reset(bi);
+ 		bi->error = true;
+ 
++		bi->msg = 0; /* to inform the that all work is done */
++		bi->nmsgs = 0;
+ 		/* wake up our bh */
+ 		complete(&bi->done);
+ 	} else if (s & BSC_S_DONE) {
+ 		bi->nmsgs--;
+ 
+-		if (bi->msg->flags & I2C_M_RD)
++		if (bi->msg->flags & I2C_M_RD) {
+ 			bcm2708_bsc_fifo_drain(bi);
++		}
+ 
+ 		bcm2708_bsc_reset(bi);
+ 
+@@ -231,8 +248,19 @@ static irqreturn_t bcm2708_i2c_interrupt(int irq, void *dev_id)
+ 			/* advance to next message */
+ 			bi->msg++;
+ 			bi->pos = 0;
+-			bcm2708_bsc_setup(bi);
++			ret = bcm2708_bsc_setup(bi);
++			if (ret < 0) {
++				bcm2708_bsc_reset(bi);
++				bi->error = true;
++				bi->msg = 0; /* to inform the that all work is done */
++				bi->nmsgs = 0;
++				/* wake up our bh */
++				complete(&bi->done);
++				goto early_exit;
++			}
+ 		} else {
++			bi->msg = 0; /* to inform the that all work is done */
++			bi->nmsgs = 0;
+ 			/* wake up our bh */
+ 			complete(&bi->done);
+ 		}
+@@ -265,21 +293,34 @@ static int bcm2708_i2c_master_xfer(struct i2c_adapter *adap,
+ 	bi->nmsgs = num;
+ 	bi->error = false;
+ 
++	ret = bcm2708_bsc_setup(bi);
+ 	spin_unlock_irqrestore(&bi->lock, flags);
+ 
+ 	bcm2708_bsc_setup(bi);
+ 
+-	ret = wait_for_completion_timeout(&bi->done,
+-			msecs_to_jiffies(I2C_TIMEOUT_MS));
++	/* check the result of the setup */
++	if (ret < 0)
++	{
++		dev_err(&adap->dev, "transfer setup timed out\n");
++		goto error_timeout;
++	}
++
++	ret = wait_for_completion_timeout(&bi->done, msecs_to_jiffies(I2C_TIMEOUT_MS));
+ 	if (ret == 0) {
+ 		dev_err(&adap->dev, "transfer timed out\n");
+-		spin_lock_irqsave(&bi->lock, flags);
+-		bcm2708_bsc_reset(bi);
+-		spin_unlock_irqrestore(&bi->lock, flags);
+-		return -ETIMEDOUT;
++		goto error_timeout;
+ 	}
+ 
+-	return bi->error ? -EIO : num;
++	ret = bi->error ? -EIO : num;
++	return ret;
++
++error_timeout:
++	spin_lock_irqsave(&bi->lock, flags);
++	bcm2708_bsc_reset(bi);
++	bi->msg = 0; /* to inform the interrupt handler that there's nothing else to be done */
++	bi->nmsgs = 0;
++	spin_unlock_irqrestore(&bi->lock, flags);
++	return -ETIMEDOUT;
+ }
+ 
+ static u32 bcm2708_i2c_functionality(struct i2c_adapter *adap)
+@@ -382,6 +423,7 @@ static int bcm2708_i2c_probe(struct platform_device *pdev)
+ 		cdiv = 0xffff;
+ 		baudrate = bus_hz / cdiv;
+ 	}
++	bi->cdiv = cdiv;
+ 
+ 	dev_info(&pdev->dev, "BSC%d Controller at 0x%08lx (irq %d) (baudrate %d)\n",
+ 		pdev->id, (unsigned long)regs->start, irq, baudrate);
+-- 
+1.9.1
+
diff --git a/recipes-kernel/linux/linux-raspberrypi-3.18/0001-dts-add-overlay-for-pitft22.patch b/recipes-kernel/linux/linux-raspberrypi-3.18/0001-dts-add-overlay-for-pitft22.patch
new file mode 100644
index 0000000..fa73599
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi-3.18/0001-dts-add-overlay-for-pitft22.patch
@@ -0,0 +1,110 @@
+From 2f44861e2a2d651a9aa62a75343a032fee33e93b Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
+Date: Fri, 8 Jan 2016 09:02:44 +0100
+Subject: [PATCH] dts: add overlay for pitft22 in linux 3.18
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+Upstream-Status: Pending
+
+Add the pitft22 overlay from adafruit Adafruit-Pi-Kernel-o-Matic repo:
+https://github.com/adafruit/Adafruit-Pi-Kernel-o-Matic
+
+Signed-off-by: Petter Mabäcker <petter@technux.se>
+---
+ arch/arm/boot/dts/overlays/Makefile            |  1 +
+ arch/arm/boot/dts/overlays/pitft22-overlay.dts | 69 ++++++++++++++++++++++++++
+ 2 files changed, 70 insertions(+)
+ create mode 100755 arch/arm/boot/dts/overlays/pitft22-overlay.dts
+
+diff --git a/arch/arm/boot/dts/overlays/Makefile b/arch/arm/boot/dts/overlays/Makefile
+index c766616..1eaaf81 100644
+--- a/arch/arm/boot/dts/overlays/Makefile
++++ b/arch/arm/boot/dts/overlays/Makefile
+@@ -27,6 +27,7 @@ dtb-$(RPI_DT_OVERLAYS) += mcp2515-can0-overlay.dtb
+ dtb-$(RPI_DT_OVERLAYS) += mmc-overlay.dtb
+ dtb-$(RPI_DT_OVERLAYS) += mz61581-overlay.dtb
+ dtb-$(RPI_DT_OVERLAYS) += piscreen-overlay.dtb
++dtb-$(RPI_DT_OVERLAYS) += pitft22-overlay.dtb
+ dtb-$(RPI_DT_OVERLAYS) += pitft28-resistive-overlay.dtb
+ dtb-$(RPI_DT_OVERLAYS) += pps-gpio-overlay.dtb
+ dtb-$(RPI_DT_OVERLAYS) += rpi-dac-overlay.dtb
+diff --git a/arch/arm/boot/dts/overlays/pitft22-overlay.dts b/arch/arm/boot/dts/overlays/pitft22-overlay.dts
+new file mode 100755
+index 0000000..894ba22
+--- /dev/null
++++ b/arch/arm/boot/dts/overlays/pitft22-overlay.dts
+@@ -0,0 +1,69 @@
++/*
++ * Device Tree overlay for pitft by Adafruit
++ *
++ */
++
++/dts-v1/;
++/plugin/;
++
++/ {
++        compatible = "brcm,bcm2835", "brcm,bcm2708", "brcm,bcm2709";
++
++        fragment@0 {
++                target = <&spi0>;
++                __overlay__ {
++                        status = "okay";
++
++                        spidev@0{
++                                status = "disabled";
++                        };
++
++                        spidev@1{
++                                status = "disabled";
++                        };
++                };
++        };
++
++        fragment@1 {
++                target = <&gpio>;
++                __overlay__ {
++                        pitft_pins: pitft_pins {
++                                brcm,pins = <25>;
++                                brcm,function = <1>; /* out */
++                                brcm,pull = <0>; /* none */
++                        };
++                };
++        };
++
++        fragment@2 {
++                target = <&spi0>;
++                __overlay__ {
++                        /* needed to avoid dtc warning */
++                        #address-cells = <1>;
++                        #size-cells = <0>;
++
++                        pitft: pitft@0{
++                                compatible = "ilitek,ili9340";
++                                reg = <0>;
++                                pinctrl-names = "default";
++                                pinctrl-0 = <&pitft_pins>;
++
++                                spi-max-frequency = <32000000>;
++                                rotate = <90>;
++                                fps = <25>;
++                                bgr;
++                                buswidth = <8>;
++                                dc-gpios = <&gpio 25 0>;
++                                debug = <0>;
++                        };
++
++                };
++        };
++
++        __overrides__ {
++                speed =   <&pitft>,"spi-max-frequency:0";
++                rotate =  <&pitft>,"rotate:0";
++                fps =     <&pitft>,"fps:0";
++                debug =   <&pitft>,"debug:0";
++        };
++};
+-- 
+1.9.1
+
diff --git a/recipes-kernel/linux/linux-raspberrypi-4.1/0001-dts-add-overlay-for-pitft22.patch b/recipes-kernel/linux/linux-raspberrypi-4.1/0001-dts-add-overlay-for-pitft22.patch
new file mode 100644
index 0000000..e6e0a84
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi-4.1/0001-dts-add-overlay-for-pitft22.patch
@@ -0,0 +1,110 @@
+From a28bd410022b32a64e208f04b45add6326990332 Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
+Date: Fri, 8 Jan 2016 09:02:44 +0100
+Subject: [PATCH] dts: add overlay for pitft22
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+Upstream-Status: Pending
+
+Add the pitft22 overlay from adafruit Adafruit-Pi-Kernel-o-Matic repo:
+https://github.com/adafruit/Adafruit-Pi-Kernel-o-Matic
+
+Signed-off-by: Petter Mabäcker <petter@technux.se>
+---
+ arch/arm/boot/dts/overlays/Makefile            |  1 +
+ arch/arm/boot/dts/overlays/pitft22-overlay.dts | 69 ++++++++++++++++++++++++++
+ 2 files changed, 70 insertions(+)
+ create mode 100755 arch/arm/boot/dts/overlays/pitft22-overlay.dts
+
+diff --git a/arch/arm/boot/dts/overlays/Makefile b/arch/arm/boot/dts/overlays/Makefile
+index 1a60e9c..a2535a2 100644
+--- a/arch/arm/boot/dts/overlays/Makefile
++++ b/arch/arm/boot/dts/overlays/Makefile
+@@ -37,6 +37,7 @@ dtb-$(RPI_DT_OVERLAYS) += mmc-overlay.dtb
+ dtb-$(RPI_DT_OVERLAYS) += mz61581-overlay.dtb
+ dtb-$(RPI_DT_OVERLAYS) += piscreen-overlay.dtb
+ dtb-$(RPI_DT_OVERLAYS) += piscreen2r-overlay.dtb
++dtb-$(RPI_DT_OVERLAYS) += pitft22-overlay.dtb
+ dtb-$(RPI_DT_OVERLAYS) += pitft28-capacitive-overlay.dtb
+ dtb-$(RPI_DT_OVERLAYS) += pitft28-resistive-overlay.dtb
+ dtb-$(RPI_DT_OVERLAYS) += pps-gpio-overlay.dtb
+diff --git a/arch/arm/boot/dts/overlays/pitft22-overlay.dts b/arch/arm/boot/dts/overlays/pitft22-overlay.dts
+new file mode 100755
+index 0000000..894ba22
+--- /dev/null
++++ b/arch/arm/boot/dts/overlays/pitft22-overlay.dts
+@@ -0,0 +1,69 @@
++/*
++ * Device Tree overlay for pitft by Adafruit
++ *
++ */
++
++/dts-v1/;
++/plugin/;
++
++/ {
++        compatible = "brcm,bcm2835", "brcm,bcm2708", "brcm,bcm2709";
++
++        fragment@0 {
++                target = <&spi0>;
++                __overlay__ {
++                        status = "okay";
++
++                        spidev@0{
++                                status = "disabled";
++                        };
++
++                        spidev@1{
++                                status = "disabled";
++                        };
++                };
++        };
++
++        fragment@1 {
++                target = <&gpio>;
++                __overlay__ {
++                        pitft_pins: pitft_pins {
++                                brcm,pins = <25>;
++                                brcm,function = <1>; /* out */
++                                brcm,pull = <0>; /* none */
++                        };
++                };
++        };
++
++        fragment@2 {
++                target = <&spi0>;
++                __overlay__ {
++                        /* needed to avoid dtc warning */
++                        #address-cells = <1>;
++                        #size-cells = <0>;
++
++                        pitft: pitft@0{
++                                compatible = "ilitek,ili9340";
++                                reg = <0>;
++                                pinctrl-names = "default";
++                                pinctrl-0 = <&pitft_pins>;
++
++                                spi-max-frequency = <32000000>;
++                                rotate = <90>;
++                                fps = <25>;
++                                bgr;
++                                buswidth = <8>;
++                                dc-gpios = <&gpio 25 0>;
++                                debug = <0>;
++                        };
++
++                };
++        };
++
++        __overrides__ {
++                speed =   <&pitft>,"spi-max-frequency:0";
++                rotate =  <&pitft>,"rotate:0";
++                fps =     <&pitft>,"fps:0";
++                debug =   <&pitft>,"debug:0";
++        };
++};
+-- 
+1.9.1
+
diff --git a/recipes-kernel/linux/linux-raspberrypi/0001-ASoC-Add-BCM2708-fixes.patch b/recipes-kernel/linux/linux-raspberrypi/0001-ASoC-Add-BCM2708-fixes.patch
deleted file mode 100644
index 26c71b8..0000000
--- a/recipes-kernel/linux/linux-raspberrypi/0001-ASoC-Add-BCM2708-fixes.patch
+++ /dev/null
@@ -1,263 +0,0 @@
-From e73a69601c65103b0e032e6093af0f00a1e1af3a Mon Sep 17 00:00:00 2001
-From: Florian Meier <florian.meier@koalo.de>
-Date: Fri, 22 Nov 2013 14:33:38 +0100
-Subject: [PATCH 1/2] ASoC: Add BCM2708 fixes
-MIME-Version: 1.0
-Content-Type: text/plain; charset=UTF-8
-Content-Transfer-Encoding: 8bit
-
-(cherry-pick remaining parts of
-730cb8a1216f9da3d097072cd9bb06e0db348172)
-
-bcm2708-i2s: Update bclk_ratio to more correct values
-
-Move GPIO setup to hw_params.
-
-This is used to stop the I2S driver from breaking
-the GPIO setup for other uses of the PCM interface
-
-Configure GPIOs for I2S based on revision/card settings
-
-With RPi model B+, assignment of the I2S GPIO pins has changed.
-This patch uses the board revision to auto-detect the GPIOs used
-for I2S. It also allows sound card drivers to set the GPIOs that
-should be used. This is especially important with the Compute
-Module.
-
-bcm2708-i2s: Avoid leak from iomap when accessing gpio
-
-bcm2708: Eliminate i2s debugfs directory error
-
-Qualify the two regmap ranges uses by bcm2708-i2s ('-i2s' and '-clk')
-to avoid the name clash when registering debugfs entries.
-
-Upstream-Status: Pending
-
-Signed-off-by: Petter Mabäcker <petter@technux.se>
-
-Conflicts:
-	sound/soc/bcm/Kconfig
-	sound/soc/bcm/Makefile
-	sound/soc/bcm/bcm2708-i2s.c
----
- sound/soc/bcm/bcm2708-i2s.c | 82 ++++++++++++++++++++++++++++++++++++---------
- sound/soc/bcm/bcm2708-i2s.h | 35 +++++++++++++++++++
- 2 files changed, 102 insertions(+), 15 deletions(-)
- create mode 100644 sound/soc/bcm/bcm2708-i2s.h
-
-diff --git a/sound/soc/bcm/bcm2708-i2s.c b/sound/soc/bcm/bcm2708-i2s.c
-index 9976571..3fcb740 100644
---- a/sound/soc/bcm/bcm2708-i2s.c
-+++ b/sound/soc/bcm/bcm2708-i2s.c
-@@ -31,6 +31,8 @@
-  * General Public License for more details.
-  */
- 
-+#include "bcm2708-i2s.h"
-+
- #include <linux/init.h>
- #include <linux/module.h>
- #include <linux/device.h>
-@@ -38,6 +40,7 @@
- #include <linux/delay.h>
- #include <linux/io.h>
- #include <linux/clk.h>
-+#include <mach/gpio.h>
- 
- #include <sound/core.h>
- #include <sound/pcm.h>
-@@ -46,6 +49,8 @@
- #include <sound/soc.h>
- #include <sound/dmaengine_pcm.h>
- 
-+#include <asm/system_info.h>
-+
- /* Clock registers */
- #define BCM2708_CLK_PCMCTL_REG  0x00
- #define BCM2708_CLK_PCMDIV_REG  0x04
-@@ -163,6 +168,9 @@ static const unsigned int bcm2708_clk_freq[BCM2708_CLK_SRC_HDMI+1] = {
- #define BCM2708_DMA_DREQ_PCM_TX		2
- #define BCM2708_DMA_DREQ_PCM_RX		3
- 
-+/* I2S pin configuration */
-+static int bcm2708_i2s_gpio=BCM2708_I2S_GPIO_AUTO;
-+
- /* General device struct */
- struct bcm2708_i2s_dev {
- 	struct device				*dev;
-@@ -174,6 +182,12 @@ struct bcm2708_i2s_dev {
- 	struct regmap *clk_regmap;
- };
- 
-+void bcm2708_i2s_set_gpio(int gpio) {
-+	bcm2708_i2s_gpio=gpio;
-+}
-+EXPORT_SYMBOL(bcm2708_i2s_set_gpio);
-+
-+
- static void bcm2708_i2s_start_clock(struct bcm2708_i2s_dev *dev)
- {
- 	/* Start the clock if in master mode */
-@@ -306,6 +320,25 @@ static int bcm2708_i2s_set_dai_bclk_ratio(struct snd_soc_dai *dai,
- }
- 
- 
-+static int bcm2708_i2s_set_function(unsigned offset, int function)
-+{
-+	#define GPIOFSEL(x)  (0x00+(x)*4)
-+	void __iomem *gpio = __io_address(GPIO_BASE);
-+	unsigned alt = function <= 3 ? function + 4: function == 4 ? 3 : 2;
-+	unsigned gpiodir;
-+	unsigned gpio_bank = offset / 10;
-+	unsigned gpio_field_offset = (offset - 10 * gpio_bank) * 3;
-+
-+	if (offset >= BCM2708_NR_GPIOS)
-+		return -EINVAL;
-+
-+	gpiodir = readl(gpio + GPIOFSEL(gpio_bank));
-+	gpiodir &= ~(7 << gpio_field_offset);
-+	gpiodir |= alt << gpio_field_offset;
-+	writel(gpiodir, gpio + GPIOFSEL(gpio_bank));
-+	return 0;
-+}
-+
- static void bcm2708_i2s_setup_gpio(void)
- {
- 	/*
-@@ -314,20 +347,37 @@ static void bcm2708_i2s_setup_gpio(void)
- 	 * TODO Better way would be to handle
- 	 * this in the device tree!
- 	 */
--#define INP_GPIO(g) *(gpio+((g)/10)) &= ~(7<<(((g)%10)*3))
--#define SET_GPIO_ALT(g,a) *(gpio+(((g)/10))) |= (((a)<=3?(a)+4:(a)==4?3:2)<<(((g)%10)*3))
-+	int pin,pinconfig,startpin,alt;
-+
-+	/* SPI is on different GPIOs on different boards */
-+        /* for Raspberry Pi B+, this is pin GPIO18-21, for original on 28-31 */
-+	if (bcm2708_i2s_gpio==BCM2708_I2S_GPIO_AUTO) {	
-+		if ((system_rev & 0xffffff) >= 0x10) {
-+			/* Model B+ */
-+			pinconfig=BCM2708_I2S_GPIO_PIN18;
-+		} else {
-+			/* original */
-+			pinconfig=BCM2708_I2S_GPIO_PIN28;
-+		}
-+	} else {
-+		pinconfig=bcm2708_i2s_gpio;
-+	}
- 
--	unsigned int *gpio;
--	int pin;
--	gpio = ioremap(GPIO_BASE, SZ_16K);
-+	if (pinconfig==BCM2708_I2S_GPIO_PIN18) {
-+		startpin=18;
-+		alt=BCM2708_I2S_GPIO_PIN18_ALT;
-+	} else if (pinconfig==BCM2708_I2S_GPIO_PIN28) {
-+		startpin=28;
-+		alt=BCM2708_I2S_GPIO_PIN28_ALT;
-+	} else {
-+		printk(KERN_INFO "Can't configure I2S GPIOs, unknown pin mode for I2S: %i\n",pinconfig);
-+		return;
-+	}	
- 
--	/* SPI is on GPIO 7..11 */
--	for (pin = 28; pin <= 31; pin++) {
--		INP_GPIO(pin);		/* set mode to GPIO input first */
--		SET_GPIO_ALT(pin, 2);	/* set mode to ALT 0 */
-+	/* configure I2S pins to correct ALT mode */
-+	for (pin = startpin; pin <= startpin+3; pin++) {
-+		bcm2708_i2s_set_function(pin, alt);
- 	}
--#undef INP_GPIO
--#undef SET_GPIO_ALT
- }
- 
- static int bcm2708_i2s_hw_params(struct snd_pcm_substream *substream,
-@@ -372,15 +422,15 @@ static int bcm2708_i2s_hw_params(struct snd_pcm_substream *substream,
- 	switch (params_format(params)) {
- 	case SNDRV_PCM_FORMAT_S16_LE:
- 		data_length = 16;
--		bclk_ratio = 40;
-+		bclk_ratio = 50;
- 		break;
- 	case SNDRV_PCM_FORMAT_S24_LE:
- 		data_length = 24;
--		bclk_ratio = 40;
-+		bclk_ratio = 50;
- 		break;
- 	case SNDRV_PCM_FORMAT_S32_LE:
- 		data_length = 32;
--		bclk_ratio = 80;
-+		bclk_ratio = 100;
- 		break;
- 	default:
- 		return -EINVAL;
-@@ -746,7 +796,7 @@ static struct snd_soc_dai_driver bcm2708_i2s_dai = {
- 		.channels_max = 2,
- 		.rates =	SNDRV_PCM_RATE_8000_192000,
- 		.formats =	SNDRV_PCM_FMTBIT_S16_LE
--				// | SNDRV_PCM_FMTBIT_S24_LE : disable for now, it causes white noise with xbmc
-+				| SNDRV_PCM_FMTBIT_S24_LE
- 				| SNDRV_PCM_FMTBIT_S32_LE
- 		},
- 	.capture = {
-@@ -803,6 +853,7 @@ static const struct regmap_config bcm2708_regmap_config[] = {
- 		.precious_reg = bcm2708_i2s_precious_reg,
- 		.volatile_reg = bcm2708_i2s_volatile_reg,
- 		.cache_type = REGCACHE_RBTREE,
-+		.name = "i2s",
- 	},
- 	{
- 		.reg_bits = 32,
-@@ -811,6 +862,7 @@ static const struct regmap_config bcm2708_regmap_config[] = {
- 		.max_register = BCM2708_CLK_PCMDIV_REG,
- 		.volatile_reg = bcm2708_clk_volatile_reg,
- 		.cache_type = REGCACHE_RBTREE,
-+		.name = "clk",
- 	},
- };
- 
-diff --git a/sound/soc/bcm/bcm2708-i2s.h b/sound/soc/bcm/bcm2708-i2s.h
-new file mode 100644
-index 0000000..94fed6a
---- /dev/null
-+++ b/sound/soc/bcm/bcm2708-i2s.h
-@@ -0,0 +1,35 @@
-+/*
-+ * I2S configuration for sound cards. 
-+ *
-+ * Copyright (c) 2014 Daniel Matuschek <daniel@hifiberry.com>
-+ *
-+ * This program is free software; you can redistribute it and/or modify
-+ * it under the terms of the GNU General Public License as published by
-+ * the Free Software Foundation; either version 2 of the License, or
-+ * (at your option) any later version.
-+ *
-+ * This program is distributed in the hope that it will be useful,
-+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
-+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
-+ * GNU General Public License for more details.
-+ *
-+ * You should have received a copy of the GNU General Public License
-+ * along with this program; if not, write to the Free Software
-+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
-+ */
-+
-+#ifndef BCM2708_I2S_H
-+#define BCM2708_I2S_H
-+
-+/* I2S pin assignment */
-+#define BCM2708_I2S_GPIO_AUTO	0
-+#define BCM2708_I2S_GPIO_PIN18	1
-+#define BCM2708_I2S_GPIO_PIN28	2
-+
-+/* Alt mode to enable I2S */
-+#define BCM2708_I2S_GPIO_PIN18_ALT	0
-+#define BCM2708_I2S_GPIO_PIN28_ALT	2
-+
-+extern void bcm2708_i2s_set_gpio(int gpio);
-+
-+#endif
--- 
-1.9.1
-
diff --git a/recipes-kernel/linux/linux-raspberrypi/0002-Fix-grabbing-lock-from-atomic-context-in-i2c-driver.patch b/recipes-kernel/linux/linux-raspberrypi/0002-Fix-grabbing-lock-from-atomic-context-in-i2c-driver.patch
deleted file mode 100644
index 907ed7b..0000000
--- a/recipes-kernel/linux/linux-raspberrypi/0002-Fix-grabbing-lock-from-atomic-context-in-i2c-driver.patch
+++ /dev/null
@@ -1,235 +0,0 @@
-From 2c84355bf200f4d19d7078dee2c63011ad715395 Mon Sep 17 00:00:00 2001
-From: jeanleflambeur <catalin.vasile@gmail.com>
-Date: Sun, 1 Feb 2015 12:35:38 +0100
-Subject: [PATCH 2/2] Fix grabbing lock from atomic context in i2c driver
-MIME-Version: 1.0
-Content-Type: text/plain; charset=UTF-8
-Content-Transfer-Encoding: 8bit
-
-(cherry-pick from 558d0bfc8fe80ccdccee7f03e881a80965ec987c)
-
-2 main changes:
-- check for timeouts in the bcm2708_bsc_setup function as indicated by this comment:
-      /* poll for transfer start bit (should only take 1-20 polls) */
-  This implies that the setup function can now fail so account for this everywhere it's called
-- Removed the clk_get_rate call from inside the setup function as it locks a mutex and that's not ok since we call it from under a spin lock.
-
-removed dead code and update comment
-
-fixed typo in comment
-
-Upstream-Status: Pending
-
-Signed-off-by: Petter Mabäcker <petter@technux.se>
-
-Conflicts:
-	drivers/i2c/busses/i2c-bcm2708.c
----
- drivers/i2c/busses/i2c-bcm2708.c | 88 +++++++++++++++++++++++++++++-----------
- 1 file changed, 65 insertions(+), 23 deletions(-)
-
-diff --git a/drivers/i2c/busses/i2c-bcm2708.c b/drivers/i2c/busses/i2c-bcm2708.c
-index 05531db..886672c 100644
---- a/drivers/i2c/busses/i2c-bcm2708.c
-+++ b/drivers/i2c/busses/i2c-bcm2708.c
-@@ -67,6 +67,7 @@
- #define BSC_S_TA		0x00000001
- 
- #define I2C_TIMEOUT_MS	150
-+#define I2C_WAIT_LOOP_COUNT 40
- 
- #define DRV_NAME	"bcm2708_i2c"
- 
-@@ -85,6 +86,7 @@ struct bcm2708_i2c {
- 	void __iomem *base;
- 	int irq;
- 	struct clk *clk;
-+	u32 cdiv;
- 
- 	struct completion done;
- 
-@@ -108,10 +110,10 @@ static void bcm2708_i2c_init_pinmode(int id)
- 	int pin;
- 	u32 *gpio = ioremap(0x20200000, SZ_16K);
- 
--        BUG_ON(id != 0 && id != 1);
-+	BUG_ON(id != 0 && id != 1);
- 	/* BSC0 is on GPIO 0 & 1, BSC1 is on GPIO 2 & 3 */
- 	for (pin = id*2+0; pin <= id*2+1; pin++) {
--printk("bcm2708_i2c_init_pinmode(%d,%d)\n", id, pin);
-+		printk("bcm2708_i2c_init_pinmode(%d,%d)\n", id, pin);
- 		INP_GPIO(pin);		/* set mode to GPIO input first */
- 		SET_GPIO_ALT(pin, 0);	/* set mode to ALT 0 */
- 	}
-@@ -150,16 +152,16 @@ static inline void bcm2708_bsc_fifo_fill(struct bcm2708_i2c *bi)
- 		bcm2708_wr(bi, BSC_FIFO, bi->msg->buf[bi->pos++]);
- }
- 
--static inline void bcm2708_bsc_setup(struct bcm2708_i2c *bi)
-+static inline int bcm2708_bsc_setup(struct bcm2708_i2c *bi)
- {
--	unsigned long bus_hz;
- 	u32 cdiv, s;
- 	u32 c = BSC_C_I2CEN | BSC_C_INTD | BSC_C_ST | BSC_C_CLEAR_1;
-+	int wait_loops = I2C_WAIT_LOOP_COUNT;
- 
--	bus_hz = clk_get_rate(bi->clk);
--	cdiv = bus_hz / baudrate;
--	if (cdiv > 0xffff)
--		cdiv = 0xffff;
-+	/* Can't call clk_get_rate as it locks a mutex and here we are spinlocked.
-+	 * Use the value that we cached in the probe.
-+	 */
-+	cdiv = bi->cdiv;
- 
- 	if (bi->msg->flags & I2C_M_RD)
- 		c |= BSC_C_INTR | BSC_C_READ;
-@@ -176,17 +178,25 @@ static inline void bcm2708_bsc_setup(struct bcm2708_i2c *bi)
- 		   - Both messages to same slave address
- 		   - Write message can fit inside FIFO (16 bytes or less) */
- 		if ( (bi->nmsgs > 1) &&
--		    !(bi->msg[0].flags & I2C_M_RD) && (bi->msg[1].flags & I2C_M_RD) &&
--		     (bi->msg[0].addr == bi->msg[1].addr) && (bi->msg[0].len <= 16)) {
-+			!(bi->msg[0].flags & I2C_M_RD) && (bi->msg[1].flags & I2C_M_RD) &&
-+			 (bi->msg[0].addr == bi->msg[1].addr) && (bi->msg[0].len <= 16)) {
- 			/* Fill FIFO with entire write message (16 byte FIFO) */
--			while (bi->pos < bi->msg->len)
-+			while (bi->pos < bi->msg->len) {
- 				bcm2708_wr(bi, BSC_FIFO, bi->msg->buf[bi->pos++]);
-+			}
- 			/* Start write transfer (no interrupts, don't clear FIFO) */
- 			bcm2708_wr(bi, BSC_C, BSC_C_I2CEN | BSC_C_ST);
-+
- 			/* poll for transfer start bit (should only take 1-20 polls) */
- 			do {
- 				s = bcm2708_rd(bi, BSC_S);
--			} while (!(s & (BSC_S_TA | BSC_S_ERR | BSC_S_CLKT | BSC_S_DONE)));
-+			} while (!(s & (BSC_S_TA | BSC_S_ERR | BSC_S_CLKT | BSC_S_DONE)) && --wait_loops >= 0);
-+
-+			/* did we time out or some error occured? */
-+			if (wait_loops < 0 || (s & (BSC_S_ERR | BSC_S_CLKT))) {
-+				return -1;
-+			}
-+
- 			/* Send next read message before the write transfer finishes. */
- 			bi->nmsgs--;
- 			bi->msg++;
-@@ -196,6 +206,8 @@ static inline void bcm2708_bsc_setup(struct bcm2708_i2c *bi)
- 		}
- 	}
- 	bcm2708_wr(bi, BSC_C, c);
-+
-+	return 0;
- }
- 
- static irqreturn_t bcm2708_i2c_interrupt(int irq, void *dev_id)
-@@ -203,13 +215,15 @@ static irqreturn_t bcm2708_i2c_interrupt(int irq, void *dev_id)
- 	struct bcm2708_i2c *bi = dev_id;
- 	bool handled = true;
- 	u32 s;
-+	int ret;
- 
- 	spin_lock(&bi->lock);
- 
- 	/* we may see camera interrupts on the "other" I2C channel
--           Just return if we've not sent anything */
--        if (!bi->nmsgs || !bi->msg )
-+		   Just return if we've not sent anything */
-+	if (!bi->nmsgs || !bi->msg) {
- 		goto early_exit;
-+	}
- 
- 	s = bcm2708_rd(bi, BSC_S);
- 
-@@ -217,13 +231,16 @@ static irqreturn_t bcm2708_i2c_interrupt(int irq, void *dev_id)
- 		bcm2708_bsc_reset(bi);
- 		bi->error = true;
- 
-+		bi->msg = 0; /* to inform the that all work is done */
-+		bi->nmsgs = 0;
- 		/* wake up our bh */
- 		complete(&bi->done);
- 	} else if (s & BSC_S_DONE) {
- 		bi->nmsgs--;
- 
--		if (bi->msg->flags & I2C_M_RD)
-+		if (bi->msg->flags & I2C_M_RD) {
- 			bcm2708_bsc_fifo_drain(bi);
-+		}
- 
- 		bcm2708_bsc_reset(bi);
- 
-@@ -231,8 +248,19 @@ static irqreturn_t bcm2708_i2c_interrupt(int irq, void *dev_id)
- 			/* advance to next message */
- 			bi->msg++;
- 			bi->pos = 0;
--			bcm2708_bsc_setup(bi);
-+			ret = bcm2708_bsc_setup(bi);
-+			if (ret < 0) {
-+				bcm2708_bsc_reset(bi);
-+				bi->error = true;
-+				bi->msg = 0; /* to inform the that all work is done */
-+				bi->nmsgs = 0;
-+				/* wake up our bh */
-+				complete(&bi->done);
-+				goto early_exit;
-+			}
- 		} else {
-+			bi->msg = 0; /* to inform the that all work is done */
-+			bi->nmsgs = 0;
- 			/* wake up our bh */
- 			complete(&bi->done);
- 		}
-@@ -265,21 +293,34 @@ static int bcm2708_i2c_master_xfer(struct i2c_adapter *adap,
- 	bi->nmsgs = num;
- 	bi->error = false;
- 
-+	ret = bcm2708_bsc_setup(bi);
- 	spin_unlock_irqrestore(&bi->lock, flags);
- 
- 	bcm2708_bsc_setup(bi);
- 
--	ret = wait_for_completion_timeout(&bi->done,
--			msecs_to_jiffies(I2C_TIMEOUT_MS));
-+	/* check the result of the setup */
-+	if (ret < 0)
-+	{
-+		dev_err(&adap->dev, "transfer setup timed out\n");
-+		goto error_timeout;
-+	}
-+
-+	ret = wait_for_completion_timeout(&bi->done, msecs_to_jiffies(I2C_TIMEOUT_MS));
- 	if (ret == 0) {
- 		dev_err(&adap->dev, "transfer timed out\n");
--		spin_lock_irqsave(&bi->lock, flags);
--		bcm2708_bsc_reset(bi);
--		spin_unlock_irqrestore(&bi->lock, flags);
--		return -ETIMEDOUT;
-+		goto error_timeout;
- 	}
- 
--	return bi->error ? -EIO : num;
-+	ret = bi->error ? -EIO : num;
-+	return ret;
-+
-+error_timeout:
-+	spin_lock_irqsave(&bi->lock, flags);
-+	bcm2708_bsc_reset(bi);
-+	bi->msg = 0; /* to inform the interrupt handler that there's nothing else to be done */
-+	bi->nmsgs = 0;
-+	spin_unlock_irqrestore(&bi->lock, flags);
-+	return -ETIMEDOUT;
- }
- 
- static u32 bcm2708_i2c_functionality(struct i2c_adapter *adap)
-@@ -382,6 +423,7 @@ static int bcm2708_i2c_probe(struct platform_device *pdev)
- 		cdiv = 0xffff;
- 		baudrate = bus_hz / cdiv;
- 	}
-+	bi->cdiv = cdiv;
- 
- 	dev_info(&pdev->dev, "BSC%d Controller at 0x%08lx (irq %d) (baudrate %d)\n",
- 		pdev->id, (unsigned long)regs->start, irq, baudrate);
--- 
-1.9.1
-
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.14.bb b/recipes-kernel/linux/linux-raspberrypi_3.14.bb
index 2edba32..f6e6291 100644
--- a/recipes-kernel/linux/linux-raspberrypi_3.14.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_3.14.bb
@@ -1,3 +1,5 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
+
 LINUX_VERSION ?= "3.14.28"
 
 SRCREV = "e294028d7733a30f3befacc41d473c251096a515"
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.18.bb b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
index a1fe6b4..1110b71 100644
--- a/recipes-kernel/linux/linux-raspberrypi_3.18.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
@@ -1,8 +1,11 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
+
 LINUX_VERSION ?= "3.18.16"
 
 SRCREV = "1bb18c8f721ef674a447f3622273f2e2de7a205c"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y"
-
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y \
+           file://0001-dts-add-overlay-for-pitft22.patch \
+          "
 require linux-raspberrypi.inc
 
 # Create missing out of tree 'overlays' directory prior to install step
diff --git a/recipes-kernel/linux/linux-raspberrypi_4.1.bb b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
index d5bfa45..e26019e 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.1.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
@@ -1,6 +1,10 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
+
 LINUX_VERSION ?= "4.1.17"
 
 SRCREV = "cb2f10196a9b718a2d94bb4ac0887c2ea14988ae"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.1.y"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.1.y \
+           file://0001-dts-add-overlay-for-pitft22.patch \
+          "
 
 require linux-raspberrypi.inc
-- 
2.7.0


