Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B32BE00DCC; Sun, 28 Feb 2016 05:46:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.228 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bin-vsp-out-04.atm.binero.net (bin-mail-out-05.binero.net
	[195.74.38.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44F30E00CE8
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 05:46:23 -0800 (PST)
X-Halon-ID: a62f2680-de21-11e5-8752-005056917c0c
Authorized-sender: petter@technux.se
Received: from localhost.localdomain (unknown [85.195.55.167])
	by bin-vsp-out-04.atm.binero.net (Halon Mail Gateway) with ESMTPSA;
	Sun, 28 Feb 2016 14:46:20 +0100 (CET)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Sun, 28 Feb 2016 14:46:13 +0100
Message-Id: <1456667173-28743-7-git-send-email-petter@technux.se>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1456667173-28743-1-git-send-email-petter@technux.se>
References: <1456667173-28743-1-git-send-email-petter@technux.se>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH v3 6/6] pitft: Add PiTFT22 support
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
X-List-Received-Date: Sun, 28 Feb 2016 13:46:31 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

- Add support to build overlays for PiTFT22 in the kernel.
- Setup a basic configuration for the driver

The PiTFT22 support is optional and can be enabled by adding below in
local.conf:

MACHINE_FEATURES += "pitft pitft22"

[Support #70]

Signed-off-by: Petter Mabäcker <petter@technux.se>
---
 README                                             |   9 ++
 conf/machine/include/rpi-base.inc                  |   1 +
 recipes-bsp/bootfiles/rpi-config_git.bb            |   7 ++
 ...dts-add-overlay-for-pitft22-in-linux-3.18.patch | 110 +++++++++++++++++++++
 .../0001-dts-add-overlay-for-pitft22.patch         | 110 +++++++++++++++++++++
 recipes-kernel/linux/linux-raspberrypi_3.18.bb     |   5 +-
 recipes-kernel/linux/linux-raspberrypi_4.1.bb      |   4 +-
 7 files changed, 243 insertions(+), 3 deletions(-)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi/0001-dts-add-overlay-for-pitft22-in-linux-3.18.patch
 create mode 100644 recipes-kernel/linux/linux-raspberrypi/0001-dts-add-overlay-for-pitft22.patch

diff --git a/README b/README
index 6a6c398..4114ccc 100644
--- a/README
+++ b/README
@@ -170,6 +170,15 @@ MACHINE_FEATURES += "pitft"
 NOTE: To get this working the overlay for the PiTFT model must be build,
       added and specified as well (dtoverlay=<driver> in config.txt)
 
+Below is a list of currently supported PiTFT models in meta-raspberrypi,
+the modelname should be added as a MACHINE_FEATURES in local.conf like below:
+
+   - MACHINE_FEATURES += "pitft <modelname>"
+
+List of currently supported models
+-----------------------------------
+pitft22
+
 2.L. Images
 ===========
 * rpi-hwup-image
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
index 236a359..631ff42 100644
--- a/recipes-bsp/bootfiles/rpi-config_git.bb
+++ b/recipes-bsp/bootfiles/rpi-config_git.bb
@@ -16,6 +16,7 @@ S = "${WORKDIR}/git"
 PR = "r4"
 
 PITFT="${@bb.utils.contains("MACHINE_FEATURES", "pitft", "1", "0", d)}"
+PITFT22="${@bb.utils.contains("MACHINE_FEATURES", "pitft22", "1", "0", d)}"
 
 inherit deploy
 
@@ -80,6 +81,12 @@ do_deploy() {
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
diff --git a/recipes-kernel/linux/linux-raspberrypi/0001-dts-add-overlay-for-pitft22-in-linux-3.18.patch b/recipes-kernel/linux/linux-raspberrypi/0001-dts-add-overlay-for-pitft22-in-linux-3.18.patch
new file mode 100644
index 0000000..fa73599
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi/0001-dts-add-overlay-for-pitft22-in-linux-3.18.patch
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
diff --git a/recipes-kernel/linux/linux-raspberrypi/0001-dts-add-overlay-for-pitft22.patch b/recipes-kernel/linux/linux-raspberrypi/0001-dts-add-overlay-for-pitft22.patch
new file mode 100644
index 0000000..e6e0a84
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi/0001-dts-add-overlay-for-pitft22.patch
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
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.18.bb b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
index a1fe6b4..9234f70 100644
--- a/recipes-kernel/linux/linux-raspberrypi_3.18.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
@@ -1,8 +1,9 @@
 LINUX_VERSION ?= "3.18.16"
 
 SRCREV = "1bb18c8f721ef674a447f3622273f2e2de7a205c"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y"
-
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y \
+           file://0001-dts-add-overlay-for-pitft22-in-linux-3.18.patch \
+          "
 require linux-raspberrypi.inc
 
 # Create missing out of tree 'overlays' directory prior to install step
diff --git a/recipes-kernel/linux/linux-raspberrypi_4.1.bb b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
index 3a3cf40..b657c85 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.1.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
@@ -1,6 +1,8 @@
 LINUX_VERSION ?= "4.1.10"
 
 SRCREV = "b74df9228c27f55361c065bc5dbfba88861cc771"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.1.y"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.1.y \
+           file://0001-dts-add-overlay-for-pitft22.patch \
+          "
 
 require linux-raspberrypi.inc
-- 
1.9.1


