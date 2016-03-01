Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91B0CE00D00; Tue,  1 Mar 2016 15:50:52 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D45BE00CC8
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 15:50:09 -0800 (PST)
Received: by mail-wm0-f45.google.com with SMTP id l68so61218237wml.0
	for <yocto@yoctoproject.org>; Tue, 01 Mar 2016 15:50:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=v4y4Cpxf6cl3o2/+fknZ7NF1YyPrbUgNN0BqEWzvruA=;
	b=a7N6h95f5jVpIwkv/tCDAAZKpSdwBWyMFPov+iuN+sHhWxd+cMMuoWgqa0nu66yzmq
	yUhUuv8VEb9YDOvz6oEh4ZuCoPYMnEW0RswQMXN9xtSd75VrGRpgwoH/vkWO1KDALz3P
	NYrxlW1zvP1FswXbsDGndazzyQH3K39CziZuH8nBR64N/938Ie2BiQEqY/trqJiZohwX
	fwRM4U0GiR/oKP4v58Nt/k71hScXiWQXbP+KpqvgracITCVzFBGhrAmEyi13a5qHbOCO
	1pMJnQfc2BSvQves2t2KAkA2gU52JWKw7wUbWGJB5OmebZyq+l3WQ1YvBgTnROcq++mi
	Lpww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=v4y4Cpxf6cl3o2/+fknZ7NF1YyPrbUgNN0BqEWzvruA=;
	b=dudrdADFmHAGMkPitnM+ZF73/0seZZdt/QZcy++RnTMa4Jhmlb3QJn7gPynhjtCYIq
	yRDPOqWp/fzIaF4goIlRd9eJGmuZ5tqqVVmBpcdpK+MfLSaPEXNVyljEy62Js9fyZno+
	X/xvbnhug5ROsg9vbLAnV6hGD+2MuvaZpOseL6/CSXSKG3DIMSa+EsldjqGMbuOTSbbT
	1be7d0wmDT5HUOjr3ElXCL4w4/CwPimQIRY4JorMFEqpRDZK8tWVYQSP/mfuwlY4rUXd
	EoGM29aOpjhSGi9ix3zZs7+OLc6AvcXhVZ5+zDvCjorEBbdLuJr5OLQvhDhN9aPMOeOA
	xSGQ==
X-Gm-Message-State: AD7BkJLS1plsNEFrfkmjV75KDRJO1pkqzvqav/3MGWKJyW5dDMOYsVARmy2O2j7hGfCAgA==
X-Received: by 10.28.51.9 with SMTP id z9mr1336155wmz.59.1456876208661;
	Tue, 01 Mar 2016 15:50:08 -0800 (PST)
Received: from resin.home (dslb-084-056-032-062.084.056.pools.vodafone-ip.de.
	[84.56.32.62]) by smtp.gmail.com with ESMTPSA id
	g126sm1386955wmf.16.2016.03.01.15.50.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 01 Mar 2016 15:50:07 -0800 (PST)
Date: Wed, 2 Mar 2016 00:50:03 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Petter =?iso-8859-1?Q?Mab=E4cker?= <petter@technux.se>
Message-ID: <20160301235003.GF21641@resin.home>
References: <1456667173-28743-1-git-send-email-petter@technux.se>
	<1456667173-28743-7-git-send-email-petter@technux.se>
MIME-Version: 1.0
In-Reply-To: <1456667173-28743-7-git-send-email-petter@technux.se>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v3 6/6] pitft: Add PiTFT22 support
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
X-List-Received-Date: Tue, 01 Mar 2016 23:50:52 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Sun, Feb 28, 2016 at 02:46:13PM +0100, Petter Mabäcker wrote:
> - Add support to build overlays for PiTFT22 in the kernel.
> - Setup a basic configuration for the driver
>
> The PiTFT22 support is optional and can be enabled by adding below in
> local.conf:
>
> MACHINE_FEATURES += "pitft pitft22"
>
> [Support #70]
>
> Signed-off-by: Petter Mabäcker <petter@technux.se>
> ---
>  README                                             |   9 ++
>  conf/machine/include/rpi-base.inc                  |   1 +
>  recipes-bsp/bootfiles/rpi-config_git.bb            |   7 ++
>  ...dts-add-overlay-for-pitft22-in-linux-3.18.patch | 110 +++++++++++++++++++++
>  .../0001-dts-add-overlay-for-pitft22.patch         | 110 +++++++++++++++++++++
>  recipes-kernel/linux/linux-raspberrypi_3.18.bb     |   5 +-
>  recipes-kernel/linux/linux-raspberrypi_4.1.bb      |   4 +-
>  7 files changed, 243 insertions(+), 3 deletions(-)
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi/0001-dts-add-overlay-for-pitft22-in-linux-3.18.patch
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi/0001-dts-add-overlay-for-pitft22.patch
>
> diff --git a/README b/README
> index 6a6c398..4114ccc 100644
> --- a/README
> +++ b/README
> @@ -170,6 +170,15 @@ MACHINE_FEATURES += "pitft"
>  NOTE: To get this working the overlay for the PiTFT model must be build,
>        added and specified as well (dtoverlay=<driver> in config.txt)
>
> +Below is a list of currently supported PiTFT models in meta-raspberrypi,
> +the modelname should be added as a MACHINE_FEATURES in local.conf like below:
> +
> +   - MACHINE_FEATURES += "pitft <modelname>"
> +
> +List of currently supported models
> +-----------------------------------
> +pitft22
> +
>  2.L. Images
>  ===========
>  * rpi-hwup-image
> diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
> index c8f6cd6..27f09ad 100644
> --- a/conf/machine/include/rpi-base.inc
> +++ b/conf/machine/include/rpi-base.inc
> @@ -31,6 +31,7 @@ KERNEL_DEVICETREE ?= " \
>      overlays/iqaudio-dac-overlay.dtb \
>      overlays/iqaudio-dacplus-overlay.dtb \
>      overlays/lirc-rpi-overlay.dtb \
> +    overlays/pitft22-overlay.dtb \
>      overlays/pps-gpio-overlay.dtb \
>      overlays/w1-gpio-overlay.dtb \
>      overlays/w1-gpio-pullup-overlay.dtb \
> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
> index 236a359..631ff42 100644
> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
> @@ -16,6 +16,7 @@ S = "${WORKDIR}/git"
>  PR = "r4"
>
>  PITFT="${@bb.utils.contains("MACHINE_FEATURES", "pitft", "1", "0", d)}"
> +PITFT22="${@bb.utils.contains("MACHINE_FEATURES", "pitft22", "1", "0", d)}"
>
>  inherit deploy
>
> @@ -80,6 +81,12 @@ do_deploy() {
>          echo "dtparam=i2c1=on" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>          echo "dtparam=i2c_arm=on" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>      fi
> +
> +    # PiTFT22 display support
> +    if [ "${PITFT22}" = "1" ]; then
> +        echo "# Enable PITFT22 display" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> +        echo "dtoverlay=pitft22,rotate=270,speed=32000000,txbuflen=32768" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> +    fi
>  }
>
>  addtask deploy before do_package after do_install
> diff --git a/recipes-kernel/linux/linux-raspberrypi/0001-dts-add-overlay-for-pitft22-in-linux-3.18.patch b/recipes-kernel/linux/linux-raspberrypi/0001-dts-add-overlay-for-pitft22-in-linux-3.18.patch
> new file mode 100644
> index 0000000..fa73599
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-raspberrypi/0001-dts-add-overlay-for-pitft22-in-linux-3.18.patch
> @@ -0,0 +1,110 @@
> +From 2f44861e2a2d651a9aa62a75343a032fee33e93b Mon Sep 17 00:00:00 2001
> +From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
> +Date: Fri, 8 Jan 2016 09:02:44 +0100
> +Subject: [PATCH] dts: add overlay for pitft22 in linux 3.18
> +MIME-Version: 1.0
> +Content-Type: text/plain; charset=UTF-8
> +Content-Transfer-Encoding: 8bit
> +
> +Upstream-Status: Pending
> +
> +Add the pitft22 overlay from adafruit Adafruit-Pi-Kernel-o-Matic repo:
> +https://github.com/adafruit/Adafruit-Pi-Kernel-o-Matic
> +
> +Signed-off-by: Petter Mabäcker <petter@technux.se>
> +---
> + arch/arm/boot/dts/overlays/Makefile            |  1 +
> + arch/arm/boot/dts/overlays/pitft22-overlay.dts | 69 ++++++++++++++++++++++++++
> + 2 files changed, 70 insertions(+)
> + create mode 100755 arch/arm/boot/dts/overlays/pitft22-overlay.dts
> +
> +diff --git a/arch/arm/boot/dts/overlays/Makefile b/arch/arm/boot/dts/overlays/Makefile
> +index c766616..1eaaf81 100644
> +--- a/arch/arm/boot/dts/overlays/Makefile
> ++++ b/arch/arm/boot/dts/overlays/Makefile
> +@@ -27,6 +27,7 @@ dtb-$(RPI_DT_OVERLAYS) += mcp2515-can0-overlay.dtb
> + dtb-$(RPI_DT_OVERLAYS) += mmc-overlay.dtb
> + dtb-$(RPI_DT_OVERLAYS) += mz61581-overlay.dtb
> + dtb-$(RPI_DT_OVERLAYS) += piscreen-overlay.dtb
> ++dtb-$(RPI_DT_OVERLAYS) += pitft22-overlay.dtb
> + dtb-$(RPI_DT_OVERLAYS) += pitft28-resistive-overlay.dtb
> + dtb-$(RPI_DT_OVERLAYS) += pps-gpio-overlay.dtb
> + dtb-$(RPI_DT_OVERLAYS) += rpi-dac-overlay.dtb
> +diff --git a/arch/arm/boot/dts/overlays/pitft22-overlay.dts b/arch/arm/boot/dts/overlays/pitft22-overlay.dts
> +new file mode 100755
> +index 0000000..894ba22
> +--- /dev/null
> ++++ b/arch/arm/boot/dts/overlays/pitft22-overlay.dts
> +@@ -0,0 +1,69 @@
> ++/*
> ++ * Device Tree overlay for pitft by Adafruit
> ++ *
> ++ */
> ++
> ++/dts-v1/;
> ++/plugin/;
> ++
> ++/ {
> ++        compatible = "brcm,bcm2835", "brcm,bcm2708", "brcm,bcm2709";
> ++
> ++        fragment@0 {
> ++                target = <&spi0>;
> ++                __overlay__ {
> ++                        status = "okay";
> ++
> ++                        spidev@0{
> ++                                status = "disabled";
> ++                        };
> ++
> ++                        spidev@1{
> ++                                status = "disabled";
> ++                        };
> ++                };
> ++        };
> ++
> ++        fragment@1 {
> ++                target = <&gpio>;
> ++                __overlay__ {
> ++                        pitft_pins: pitft_pins {
> ++                                brcm,pins = <25>;
> ++                                brcm,function = <1>; /* out */
> ++                                brcm,pull = <0>; /* none */
> ++                        };
> ++                };
> ++        };
> ++
> ++        fragment@2 {
> ++                target = <&spi0>;
> ++                __overlay__ {
> ++                        /* needed to avoid dtc warning */
> ++                        #address-cells = <1>;
> ++                        #size-cells = <0>;
> ++
> ++                        pitft: pitft@0{
> ++                                compatible = "ilitek,ili9340";
> ++                                reg = <0>;
> ++                                pinctrl-names = "default";
> ++                                pinctrl-0 = <&pitft_pins>;
> ++
> ++                                spi-max-frequency = <32000000>;
> ++                                rotate = <90>;
> ++                                fps = <25>;
> ++                                bgr;
> ++                                buswidth = <8>;
> ++                                dc-gpios = <&gpio 25 0>;
> ++                                debug = <0>;
> ++                        };
> ++
> ++                };
> ++        };
> ++
> ++        __overrides__ {
> ++                speed =   <&pitft>,"spi-max-frequency:0";
> ++                rotate =  <&pitft>,"rotate:0";
> ++                fps =     <&pitft>,"fps:0";
> ++                debug =   <&pitft>,"debug:0";
> ++        };
> ++};
> +--
> +1.9.1
> +
> diff --git a/recipes-kernel/linux/linux-raspberrypi/0001-dts-add-overlay-for-pitft22.patch b/recipes-kernel/linux/linux-raspberrypi/0001-dts-add-overlay-for-pitft22.patch
> new file mode 100644
> index 0000000..e6e0a84
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-raspberrypi/0001-dts-add-overlay-for-pitft22.patch
> @@ -0,0 +1,110 @@
> +From a28bd410022b32a64e208f04b45add6326990332 Mon Sep 17 00:00:00 2001
> +From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
> +Date: Fri, 8 Jan 2016 09:02:44 +0100
> +Subject: [PATCH] dts: add overlay for pitft22
> +MIME-Version: 1.0
> +Content-Type: text/plain; charset=UTF-8
> +Content-Transfer-Encoding: 8bit
> +
> +Upstream-Status: Pending
> +
> +Add the pitft22 overlay from adafruit Adafruit-Pi-Kernel-o-Matic repo:
> +https://github.com/adafruit/Adafruit-Pi-Kernel-o-Matic
> +
> +Signed-off-by: Petter Mabäcker <petter@technux.se>
> +---
> + arch/arm/boot/dts/overlays/Makefile            |  1 +
> + arch/arm/boot/dts/overlays/pitft22-overlay.dts | 69 ++++++++++++++++++++++++++
> + 2 files changed, 70 insertions(+)
> + create mode 100755 arch/arm/boot/dts/overlays/pitft22-overlay.dts
> +
> +diff --git a/arch/arm/boot/dts/overlays/Makefile b/arch/arm/boot/dts/overlays/Makefile
> +index 1a60e9c..a2535a2 100644
> +--- a/arch/arm/boot/dts/overlays/Makefile
> ++++ b/arch/arm/boot/dts/overlays/Makefile
> +@@ -37,6 +37,7 @@ dtb-$(RPI_DT_OVERLAYS) += mmc-overlay.dtb
> + dtb-$(RPI_DT_OVERLAYS) += mz61581-overlay.dtb
> + dtb-$(RPI_DT_OVERLAYS) += piscreen-overlay.dtb
> + dtb-$(RPI_DT_OVERLAYS) += piscreen2r-overlay.dtb
> ++dtb-$(RPI_DT_OVERLAYS) += pitft22-overlay.dtb
> + dtb-$(RPI_DT_OVERLAYS) += pitft28-capacitive-overlay.dtb
> + dtb-$(RPI_DT_OVERLAYS) += pitft28-resistive-overlay.dtb
> + dtb-$(RPI_DT_OVERLAYS) += pps-gpio-overlay.dtb
> +diff --git a/arch/arm/boot/dts/overlays/pitft22-overlay.dts b/arch/arm/boot/dts/overlays/pitft22-overlay.dts
> +new file mode 100755
> +index 0000000..894ba22
> +--- /dev/null
> ++++ b/arch/arm/boot/dts/overlays/pitft22-overlay.dts
> +@@ -0,0 +1,69 @@
> ++/*
> ++ * Device Tree overlay for pitft by Adafruit
> ++ *
> ++ */
> ++
> ++/dts-v1/;
> ++/plugin/;
> ++
> ++/ {
> ++        compatible = "brcm,bcm2835", "brcm,bcm2708", "brcm,bcm2709";
> ++
> ++        fragment@0 {
> ++                target = <&spi0>;
> ++                __overlay__ {
> ++                        status = "okay";
> ++
> ++                        spidev@0{
> ++                                status = "disabled";
> ++                        };
> ++
> ++                        spidev@1{
> ++                                status = "disabled";
> ++                        };
> ++                };
> ++        };
> ++
> ++        fragment@1 {
> ++                target = <&gpio>;
> ++                __overlay__ {
> ++                        pitft_pins: pitft_pins {
> ++                                brcm,pins = <25>;
> ++                                brcm,function = <1>; /* out */
> ++                                brcm,pull = <0>; /* none */
> ++                        };
> ++                };
> ++        };
> ++
> ++        fragment@2 {
> ++                target = <&spi0>;
> ++                __overlay__ {
> ++                        /* needed to avoid dtc warning */
> ++                        #address-cells = <1>;
> ++                        #size-cells = <0>;
> ++
> ++                        pitft: pitft@0{
> ++                                compatible = "ilitek,ili9340";
> ++                                reg = <0>;
> ++                                pinctrl-names = "default";
> ++                                pinctrl-0 = <&pitft_pins>;
> ++
> ++                                spi-max-frequency = <32000000>;
> ++                                rotate = <90>;
> ++                                fps = <25>;
> ++                                bgr;
> ++                                buswidth = <8>;
> ++                                dc-gpios = <&gpio 25 0>;
> ++                                debug = <0>;
> ++                        };
> ++
> ++                };
> ++        };
> ++
> ++        __overrides__ {
> ++                speed =   <&pitft>,"spi-max-frequency:0";
> ++                rotate =  <&pitft>,"rotate:0";
> ++                fps =     <&pitft>,"fps:0";
> ++                debug =   <&pitft>,"debug:0";
> ++        };
> ++};
> +--
> +1.9.1
> +
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.18.bb b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
> index a1fe6b4..9234f70 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_3.18.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
> @@ -1,8 +1,9 @@
>  LINUX_VERSION ?= "3.18.16"
>
>  SRCREV = "1bb18c8f721ef674a447f3622273f2e2de7a205c"
> -SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y"
> -
> +SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y \
> +           file://0001-dts-add-overlay-for-pitft22-in-linux-3.18.patch \
> +          "
>  require linux-raspberrypi.inc
>
>  # Create missing out of tree 'overlays' directory prior to install step
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.1.bb b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
> index 3a3cf40..b657c85 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.1.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
> @@ -1,6 +1,8 @@
>  LINUX_VERSION ?= "4.1.10"
>
>  SRCREV = "b74df9228c27f55361c065bc5dbfba88861cc771"
> -SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.1.y"
> +SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.1.y \
> +           file://0001-dts-add-overlay-for-pitft22.patch \
> +          "
>
>  require linux-raspberrypi.inc

Cheers Peter!

Based on this patch I pushed a v4:
- resolve conflicts
- use patches specific for a certain kernel version in separate directories -
  easier to visualize

What do you think?

--
Andrei Gherzan

