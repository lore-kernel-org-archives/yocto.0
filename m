Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD2E3E00D13; Tue,  1 Mar 2016 21:35:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.229 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from bin-vsp-out-03.atm.binero.net (bin-mail-out-06.binero.net
	[195.74.38.229])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4957FE00D0E
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 21:35:09 -0800 (PST)
X-Halon-ID: 83adc619-e038-11e5-9245-0050569116f7
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-03.atm.binero.net (Halon Mail Gateway) with ESMTPA;
	Wed,  2 Mar 2016 06:35:03 +0100 (CET)
MIME-Version: 1.0
Date: Wed, 02 Mar 2016 06:35:09 +0100
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: Andrei Gherzan <andrei@gherzan.ro>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <20160301235003.GF21641@resin.home>
References: <1456667173-28743-1-git-send-email-petter@technux.se>
	<1456667173-28743-7-git-send-email-petter@technux.se>
	<20160301235003.GF21641@resin.home>
Message-ID: <5a0f87a63ea46cf3efd131a7f27cd6e4@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v3 6/6] pitft: Add PiTFT22 support
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: petter@technux.se
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 02 Mar 2016 05:35:13 -0000
Content-Type: multipart/alternative;
	boundary="=_579f0ec99c248a2c40b68c751bf2d2d2"

--=_579f0ec99c248a2c40b68c751bf2d2d2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

2016-03-02 00:50 skrev Andrei Gherzan: 

> On Sun, Feb 28, 2016 at
02:46:13PM +0100, Petter Mabäcker wrote:
> 
>> - Add support to build
overlays for PiTFT22 in the kernel. - Setup a basic configuration for
the driver The PiTFT22 support is optional and can be enabled by adding
below in local.conf: MACHINE_FEATURES += "pitft pitft22" [Support #70]
Signed-off-by: Petter Mabäcker <petter@technux.se> --- README | 9 ++
conf/machine/include/rpi-base.inc | 1 +
recipes-bsp/bootfiles/rpi-config_git.bb | 7 ++
...dts-add-overlay-for-pitft22-in-linux-3.18.patch | 110
+++++++++++++++++++++ .../0001-dts-add-overlay-for-pitft22.patch | 110
+++++++++++++++++++++ recipes-kernel/linux/linux-raspberrypi_3.18.bb | 5
+- recipes-kernel/linux/linux-raspberrypi_4.1.bb | 4 +- 7 files changed,
243 insertions(+), 3 deletions(-) create mode 100644
recipes-kernel/linux/linux-raspberrypi/0001-dts-add-overlay-for-pitft22-in-linux-3.18.patch
create mode 100644
recipes-kernel/linux/linux-raspberrypi/0001-dts-add-overlay-for-pitft22.patch
diff --git a/README b/README index 6a6c398..4114ccc 100644 --- a/README
+++ b/README @@ -170,6 +170,15 @@ MACHINE_FEATURES += "pitft" NOTE: To
get this working the overlay for the PiTFT model must be build, added
and specified as well (dtoverlay=<driver> in config.txt) +Below is a
list of currently supported PiTFT models in meta-raspberrypi, +the
modelname should be added as a MACHINE_FEATURES in local.conf like
below: + + - MACHINE_FEATURES += "pitft <modelname>" + +List of
currently supported models +----------------------------------- +pitft22
+ 2.L. Images =========== * rpi-hwup-image diff --git
a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index c8f6cd6..27f09ad 100644 --- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc @@ -31,6 +31,7 @@
KERNEL_DEVICETREE ?= " overlays/iqaudio-dac-overlay.dtb
overlays/iqaudio-dacplus-overlay.dtb overlays/lirc-rpi-overlay.dtb +
overlays/pitft22-overlay.dtb overlays/pps-gpio-overlay.dtb
overlays/w1-gpio-overlay.dtb overlays/w1-gpio-pullup-overlay.dtb diff
--git a/recipes-bsp/bootfiles/rpi-config_git.bb
b/recipes-bsp/bootfiles/rpi-config_git.bb index 236a359..631ff42 100644
--- a/recipes-bsp/bootfiles/rpi-config_git.bb +++
b/recipes-bsp/bootfiles/rpi-config_git.bb @@ -16,6 +16,7 @@ S =
"${WORKDIR}/git" PR = "r4"
PITFT="${@bb.utils.contains("MACHINE_FEATURES", "pitft", "1", "0", d)}"
+PITFT22="${@bb.utils.contains("MACHINE_FEATURES", "pitft22", "1", "0",
d)}" inherit deploy @@ -80,6 +81,12 @@ do_deploy() { echo
"dtparam=i2c1=on" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt echo
"dtparam=i2c_arm=on" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt fi + +
# PiTFT22 display support + if [ "${PITFT22}" = "1" ]; then + echo "#
Enable PITFT22 display" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt +
echo "dtoverlay=pitft22,rotate=270,speed=32000000,txbuflen=32768"
>>${DEPLOYDIR}/bcm2835-bootfiles/config.txt + fi } addtask deploy before
do_package after do_install diff --git
a/recipes-kernel/linux/linux-raspberrypi/0001-dts-add-overlay-for-pitft22-in-linux-3.18.patch
b/recipes-kernel/linux/linux-raspberrypi/0001-dts-add-overlay-for-pitft22-in-linux-3.18.patch
new file mode 100644 index 0000000..fa73599 --- /dev/null +++
b/recipes-kernel/linux/linux-raspberrypi/0001-dts-add-overlay-for-pitft22-in-linux-3.18.patch
@@ -0,0 +1,110 @@ +From 2f44861e2a2d651a9aa62a75343a032fee33e93b Mon
Sep 17 00:00:00 2001 +From: =?UTF-8?q?Petter=20Mab=C3=A4cker?=
<petter@technux.se> +Date: Fri, 8 Jan 2016 09:02:44 +0100 +Subject:
[PATCH] dts: add overlay for pitft22 in linux 3.18 +MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8 +Content-Transfer-Encoding:
8bit + +Upstream-Status: Pending + +Add the pitft22 overlay from
adafruit Adafruit-Pi-Kernel-o-Matic repo:
+https://github.com/adafruit/Adafruit-Pi-Kernel-o-Matic [1] +
+Signed-off-by: Petter Mabäcker <petter@technux.se> +--- +
arch/arm/boot/dts/overlays/Makefile | 1 + +
arch/arm/boot/dts/overlays/pitft22-overlay.dts | 69
++++++++++++++++++++++++++ + 2 files changed, 70 insertions(+) + create
mode 100755 arch/arm/boot/dts/overlays/pitft22-overlay.dts + +diff --git
a/arch/arm/boot/dts/overlays/Makefile
b/arch/arm/boot/dts/overlays/Makefile +index c766616..1eaaf81 100644
+--- a/arch/arm/boot/dts/overlays/Makefile ++++
b/arch/arm/boot/dts/overlays/Makefile +@@ -27,6 +27,7 @@
dtb-$(RPI_DT_OVERLAYS) += mcp2515-can0-overlay.dtb +
dtb-$(RPI_DT_OVERLAYS) += mmc-overlay.dtb + dtb-$(RPI_DT_OVERLAYS) +=
mz61581-overlay.dtb + dtb-$(RPI_DT_OVERLAYS) += piscreen-overlay.dtb
++dtb-$(RPI_DT_OVERLAYS) += pitft22-overlay.dtb + dtb-$(RPI_DT_OVERLAYS)
+= pitft28-resistive-overlay.dtb + dtb-$(RPI_DT_OVERLAYS) +=
pps-gpio-overlay.dtb + dtb-$(RPI_DT_OVERLAYS) += rpi-dac-overlay.dtb
+diff --git a/arch/arm/boot/dts/overlays/pitft22-overlay.dts
b/arch/arm/boot/dts/overlays/pitft22-overlay.dts +new file mode 100755
+index 0000000..894ba22 +--- /dev/null ++++
b/arch/arm/boot/dts/overlays/pitft22-overlay.dts +@@ -0,0 +1,69 @@ ++/*
++ * Device Tree overlay for pitft by Adafruit ++ * ++ */ ++ ++/dts-v1/;
++/plugin/; ++ ++/ { ++ compatible = "brcm,bcm2835", "brcm,bcm2708",
"brcm,bcm2709"; ++ ++ fragment@0 { ++ target = <&spi0>; ++ __overlay__ {
++ status = "okay"; ++ ++ spidev@0{ ++ status = "disabled"; ++ }; ++ ++
spidev@1{ ++ status = "disabled"; ++ }; ++ }; ++ }; ++ ++ fragment@1 {
++ target = <&gpio>; ++ __overlay__ { ++ pitft_pins: pitft_pins { ++
brcm,pins = <25>; ++ brcm,function = <1>; /* out */ ++ brcm,pull = <0>;
/* none */ ++ }; ++ }; ++ }; ++ ++ fragment@2 { ++ target = <&spi0>; ++
__overlay__ { ++ /* needed to avoid dtc warning */ ++ #address-cells =
<1>; ++ #size-cells = <0>; ++ ++ pitft: pitft@0{ ++ compatible =
"ilitek,ili9340"; ++ reg = <0>; ++ pinctrl-names = "default"; ++
pinctrl-0 = <&pitft_pins>; ++ ++ spi-max-frequency = <32000000>; ++
rotate = <90>; ++ fps = <25>; ++ bgr; ++ buswidth = <8>; ++ dc-gpios =
<&gpio 25 0>; ++ debug = <0>; ++ }; ++ ++ }; ++ }; ++ ++ __overrides__ {
++ speed = <&pitft>,"spi-max-frequency:0"; ++ rotate =
<&pitft>,"rotate:0"; ++ fps = <&pitft>,"fps:0"; ++ debug =
<&pitft>,"debug:0"; ++ }; ++}; +-- +1.9.1 + diff --git
a/recipes-kernel/linux/linux-raspberrypi/0001-dts-add-overlay-for-pitft22.patch
b/recipes-kernel/linux/linux-raspberrypi/0001-dts-add-overlay-for-pitft22.patch
new file mode 100644 index 0000000..e6e0a84 --- /dev/null +++
b/recipes-kernel/linux/linux-raspberrypi/0001-dts-add-overlay-for-pitft22.patch
@@ -0,0 +1,110 @@ +From a28bd410022b32a64e208f04b45add6326990332 Mon
Sep 17 00:00:00 2001 +From: =?UTF-8?q?Petter=20Mab=C3=A4cker?=
<petter@technux.se> +Date: Fri, 8 Jan 2016 09:02:44 +0100 +Subject:
[PATCH] dts: add overlay for pitft22 +MIME-Version: 1.0 +Content-Type:
text/plain; charset=UTF-8 +Content-Transfer-Encoding: 8bit +
+Upstream-Status: Pending + +Add the pitft22 overlay from adafruit
Adafruit-Pi-Kernel-o-Matic repo:
+https://github.com/adafruit/Adafruit-Pi-Kernel-o-Matic [1] +
+Signed-off-by: Petter Mabäcker <petter@technux.se> +--- +
arch/arm/boot/dts/overlays/Makefile | 1 + +
arch/arm/boot/dts/overlays/pitft22-overlay.dts | 69
++++++++++++++++++++++++++ + 2 files changed, 70 insertions(+) + create
mode 100755 arch/arm/boot/dts/overlays/pitft22-overlay.dts + +diff --git
a/arch/arm/boot/dts/overlays/Makefile
b/arch/arm/boot/dts/overlays/Makefile +index 1a60e9c..a2535a2 100644
+--- a/arch/arm/boot/dts/overlays/Makefile ++++
b/arch/arm/boot/dts/overlays/Makefile +@@ -37,6 +37,7 @@
dtb-$(RPI_DT_OVERLAYS) += mmc-overlay.dtb + dtb-$(RPI_DT_OVERLAYS) +=
mz61581-overlay.dtb + dtb-$(RPI_DT_OVERLAYS) += piscreen-overlay.dtb +
dtb-$(RPI_DT_OVERLAYS) += piscreen2r-overlay.dtb
++dtb-$(RPI_DT_OVERLAYS) += pitft22-overlay.dtb + dtb-$(RPI_DT_OVERLAYS)
+= pitft28-capacitive-overlay.dtb + dtb-$(RPI_DT_OVERLAYS) +=
pitft28-resistive-overlay.dtb + dtb-$(RPI_DT_OVERLAYS) +=
pps-gpio-overlay.dtb +diff --git
a/arch/arm/boot/dts/overlays/pitft22-overlay.dts
b/arch/arm/boot/dts/overlays/pitft22-overlay.dts +new file mode 100755
+index 0000000..894ba22 +--- /dev/null ++++
b/arch/arm/boot/dts/overlays/pitft22-overlay.dts +@@ -0,0 +1,69 @@ ++/*
++ * Device Tree overlay for pitft by Adafruit ++ * ++ */ ++ ++/dts-v1/;
++/plugin/; ++ ++/ { ++ compatible = "brcm,bcm2835", "brcm,bcm2708",
"brcm,bcm2709"; ++ ++ fragment@0 { ++ target = <&spi0>; ++ __overlay__ {
++ status = "okay"; ++ ++ spidev@0{ ++ status = "disabled"; ++ }; ++ ++
spidev@1{ ++ status = "disabled"; ++ }; ++ }; ++ }; ++ ++ fragment@1 {
++ target = <&gpio>; ++ __overlay__ { ++ pitft_pins: pitft_pins { ++
brcm,pins = <25>; ++ brcm,function = <1>; /* out */ ++ brcm,pull = <0>;
/* none */ ++ }; ++ }; ++ }; ++ ++ fragment@2 { ++ target = <&spi0>; ++
__overlay__ { ++ /* needed to avoid dtc warning */ ++ #address-cells =
<1>; ++ #size-cells = <0>; ++ ++ pitft: pitft@0{ ++ compatible =
"ilitek,ili9340"; ++ reg = <0>; ++ pinctrl-names = "default"; ++
pinctrl-0 = <&pitft_pins>; ++ ++ spi-max-frequency = <32000000>; ++
rotate = <90>; ++ fps = <25>; ++ bgr; ++ buswidth = <8>; ++ dc-gpios =
<&gpio 25 0>; ++ debug = <0>; ++ }; ++ ++ }; ++ }; ++ ++ __overrides__ {
++ speed = <&pitft>,"spi-max-frequency:0"; ++ rotate =
<&pitft>,"rotate:0"; ++ fps = <&pitft>,"fps:0"; ++ debug =
<&pitft>,"debug:0"; ++ }; ++}; +-- +1.9.1 + diff --git
a/recipes-kernel/linux/linux-raspberrypi_3.18.bb
b/recipes-kernel/linux/linux-raspberrypi_3.18.bb index a1fe6b4..9234f70
100644 --- a/recipes-kernel/linux/linux-raspberrypi_3.18.bb +++
b/recipes-kernel/linux/linux-raspberrypi_3.18.bb @@ -1,8 +1,9 @@
LINUX_VERSION ?= "3.18.16" SRCREV =
"1bb18c8f721ef674a447f3622273f2e2de7a205c" -SRC_URI =
"git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y"
- +SRC_URI =
"git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y +
file://0001-dts-add-overlay-for-pitft22-in-linux-3.18.patch [2] + "
require linux-raspberrypi.inc # Create missing out of tree 'overlays'
directory prior to install step diff --git
a/recipes-kernel/linux/linux-raspberrypi_4.1.bb
b/recipes-kernel/linux/linux-raspberrypi_4.1.bb index 3a3cf40..b657c85
100644 --- a/recipes-kernel/linux/linux-raspberrypi_4.1.bb +++
b/recipes-kernel/linux/linux-raspberrypi_4.1.bb @@ -1,6 +1,8 @@
LINUX_VERSION ?= "4.1.10" SRCREV =
"b74df9228c27f55361c065bc5dbfba88861cc771" -SRC_URI =
"git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.1.y"
+SRC_URI =
"git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.1.y +
file://0001-dts-add-overlay-for-pitft22.patch [3] + " require
linux-raspberrypi.inc
> 
> Cheers Peter!
> 
> Based on this patch I
pushed a v4:
> - resolve conflicts
> - use patches specific for a
certain kernel version in separate directories -
> easier to visualize
>

> What do you think?
> 
> --
> Andrei Gherzan

Hi Andrei, 

I think it
makes sense. Please go ahead with these changes. 

BR Petter 

Petter
Mabäcker

Technux <petter@technux.se>
www.technux.se



Links:
------
[1]
https://github.com/adafruit/Adafruit-Pi-Kernel-o-Matic
[2]
file://0001-dts-add-overlay-for-pitft22-in-linux-3.18.patch
[3]
file://0001-dts-add-overlay-for-pitft22.patch

--=_579f0ec99c248a2c40b68c751bf2d2d2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>2016-03-02 00:50 skrev Andrei Gherzan:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<pre>On Sun, Feb 28, 2016 at 02:46:13PM +0100, Petter Mab&auml;cker wrote:<=
/pre>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">- Add support to build overlays for P=
iTFT22 in the kernel. - Setup a basic configuration for the driver The PiTF=
T22 support is optional and can be enabled by adding below in local.conf: M=
ACHINE_FEATURES +=3D "pitft pitft22" [Support #70] Signed-off-by: Petter Ma=
b&auml;cker &lt;<a href=3D"mailto:petter@technux.se">petter@technux.se</a>&=
gt; --- README | 9 ++ conf/machine/include/rpi-base.inc | 1 + recipes-bsp/b=
ootfiles/rpi-config_git.bb | 7 ++ ...dts-add-overlay-for-pitft22-in-linux-3=
=2E18.patch | 110 +++++++++++++++++++++ .../0001-dts-add-overlay-for-pitft2=
2.patch | 110 +++++++++++++++++++++ recipes-kernel/linux/linux-raspberrypi_=
3.18.bb | 5 +- recipes-kernel/linux/linux-raspberrypi_4.1.bb | 4 +- 7 files=
 changed, 243 insertions(+), 3 deletions(-) create mode 100644 recipes-kern=
el/linux/linux-raspberrypi/0001-dts-add-overlay-for-pitft22-in-linux-3.18=
=2Epatch create mode 100644 recipes-kernel/linux/linux-raspberrypi/0001-dts=
-add-overlay-for-pitft22.patch diff --git a/README b/README index 6a6c398=
=2E.4114ccc 100644 --- a/README +++ b/README @@ -170,6 +170,15 @@ MACHINE_F=
EATURES +=3D "pitft" NOTE: To get this working the overlay for the PiTFT mo=
del must be build, added and specified as well (dtoverlay=3D&lt;driver&gt; =
in config.txt) +Below is a list of currently supported PiTFT models in meta=
-raspberrypi, +the modelname should be added as a MACHINE_FEATURES in local=
=2Econf like below: + + - MACHINE_FEATURES +=3D "pitft &lt;modelname&gt;" +=
 +List of currently supported models +----------------------------------- +=
pitft22 + 2.L. Images =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D * rpi-hwup-image di=
ff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-bas=
e.inc index c8f6cd6..27f09ad 100644 --- a/conf/machine/include/rpi-base.inc=
 +++ b/conf/machine/include/rpi-base.inc @@ -31,6 +31,7 @@ KERNEL_DEVICETRE=
E ?=3D " \ overlays/iqaudio-dac-overlay.dtb \ overlays/iqaudio-dacplus-over=
lay.dtb \ overlays/lirc-rpi-overlay.dtb \ + overlays/pitft22-overlay.dtb \ =
overlays/pps-gpio-overlay.dtb \ overlays/w1-gpio-overlay.dtb \ overlays/w1-=
gpio-pullup-overlay.dtb \ diff --git a/recipes-bsp/bootfiles/rpi-config_git=
=2Ebb b/recipes-bsp/bootfiles/rpi-config_git.bb index 236a359..631ff42 1006=
44 --- a/recipes-bsp/bootfiles/rpi-config_git.bb +++ b/recipes-bsp/bootfile=
s/rpi-config_git.bb @@ -16,6 +16,7 @@ S =3D "${WORKDIR}/git" PR =3D "r4" PI=
TFT=3D"<a href=3D"mailto:${@bb.utils.contains">${@bb.utils.contains</a>("MA=
CHINE_FEATURES", "pitft", "1", "0", d)}" +PITFT22=3D"<a href=3D"mailto:${@b=
b.utils.contains">${@bb.utils.contains</a>("MACHINE_FEATURES", "pitft22", "=
1", "0", d)}" inherit deploy @@ -80,6 +81,12 @@ do_deploy() { echo "dtparam=
=3Di2c1=3Don" &gt;&gt;${DEPLOYDIR}/bcm2835-bootfiles/config.txt echo "dtpar=
am=3Di2c_arm=3Don" &gt;&gt;${DEPLOYDIR}/bcm2835-bootfiles/config.txt fi + +=
 # PiTFT22 display support + if [ "${PITFT22}" =3D "1" ]; then + echo "# En=
able PITFT22 display" &gt;&gt;${DEPLOYDIR}/bcm2835-bootfiles/config.txt + e=
cho "dtoverlay=3Dpitft22,rotate=3D270,speed=3D32000000,txbuflen=3D32768" &g=
t;&gt;${DEPLOYDIR}/bcm2835-bootfiles/config.txt + fi } addtask deploy befor=
e do_package after do_install diff --git a/recipes-kernel/linux/linux-raspb=
errypi/0001-dts-add-overlay-for-pitft22-in-linux-3.18.patch b/recipes-kerne=
l/linux/linux-raspberrypi/0001-dts-add-overlay-for-pitft22-in-linux-3.18.pa=
tch new file mode 100644 index 0000000..fa73599 --- /dev/null +++ b/recipes=
-kernel/linux/linux-raspberrypi/0001-dts-add-overlay-for-pitft22-in-linux-3=
=2E18.patch @@ -0,0 +1,110 @@ +From 2f44861e2a2d651a9aa62a75343a032fee33e93=
b Mon Sep 17 00:00:00 2001 +From: =3D?UTF-8?q?Petter=3D20Mab=3DC3=3DA4cker?=
=3D &lt;<a href=3D"mailto:petter@technux.se">petter@technux.se</a>&gt; +Dat=
e: Fri, 8 Jan 2016 09:02:44 +0100 +Subject: [PATCH] dts: add overlay for pi=
tft22 in linux 3.18 +MIME-Version: 1.0 +Content-Type: text/plain; charset=
=3DUTF-8 +Content-Transfer-Encoding: 8bit + +Upstream-Status: Pending + +Ad=
d the pitft22 overlay from adafruit Adafruit-Pi-Kernel-o-Matic repo: +<a hr=
ef=3D"https://github.com/adafruit/Adafruit-Pi-Kernel-o-Matic">https://githu=
b.com/adafruit/Adafruit-Pi-Kernel-o-Matic</a> + +Signed-off-by: Petter Mab&=
auml;cker &lt;<a href=3D"mailto:petter@technux.se">petter@technux.se</a>&gt=
; +--- + arch/arm/boot/dts/overlays/Makefile | 1 + + arch/arm/boot/dts/over=
lays/pitft22-overlay.dts | 69 ++++++++++++++++++++++++++ + 2 files changed,=
 70 insertions(+) + create mode 100755 arch/arm/boot/dts/overlays/pitft22-o=
verlay.dts + +diff --git a/arch/arm/boot/dts/overlays/Makefile b/arch/arm/b=
oot/dts/overlays/Makefile +index c766616..1eaaf81 100644 +--- a/arch/arm/bo=
ot/dts/overlays/Makefile ++++ b/arch/arm/boot/dts/overlays/Makefile +@@ -27=
,6 +27,7 @@ dtb-$(RPI_DT_OVERLAYS) +=3D mcp2515-can0-overlay.dtb + dtb-$(RP=
I_DT_OVERLAYS) +=3D mmc-overlay.dtb + dtb-$(RPI_DT_OVERLAYS) +=3D mz61581-o=
verlay.dtb + dtb-$(RPI_DT_OVERLAYS) +=3D piscreen-overlay.dtb ++dtb-$(RPI_D=
T_OVERLAYS) +=3D pitft22-overlay.dtb + dtb-$(RPI_DT_OVERLAYS) +=3D pitft28-=
resistive-overlay.dtb + dtb-$(RPI_DT_OVERLAYS) +=3D pps-gpio-overlay.dtb + =
dtb-$(RPI_DT_OVERLAYS) +=3D rpi-dac-overlay.dtb +diff --git a/arch/arm/boot=
/dts/overlays/pitft22-overlay.dts b/arch/arm/boot/dts/overlays/pitft22-over=
lay.dts +new file mode 100755 +index 0000000..894ba22 +--- /dev/null ++++ b=
/arch/arm/boot/dts/overlays/pitft22-overlay.dts +@@ -0,0 +1,69 @@ ++/* ++ *=
 Device Tree overlay for pitft by Adafruit ++ * ++ */ ++ ++/dts-v1/; ++/plu=
gin/; ++ ++/ { ++ compatible =3D "brcm,bcm2835", "brcm,bcm2708", "brcm,bcm2=
709"; ++ ++ fragment@0 { ++ target =3D &lt;&amp;spi0&gt;; ++ __overlay__ { =
++ status =3D "okay"; ++ ++ spidev@0{ ++ status =3D "disabled"; ++ }; ++ ++=
 spidev@1{ ++ status =3D "disabled"; ++ }; ++ }; ++ }; ++ ++ fragment@1 { +=
+ target =3D &lt;&amp;gpio&gt;; ++ __overlay__ { ++ pitft_pins: pitft_pins =
{ ++ brcm,pins =3D &lt;25&gt;; ++ brcm,function =3D &lt;1&gt;; /* out */ ++=
 brcm,pull =3D &lt;0&gt;; /* none */ ++ }; ++ }; ++ }; ++ ++ fragment@2 { +=
+ target =3D &lt;&amp;spi0&gt;; ++ __overlay__ { ++ /* needed to avoid dtc =
warning */ ++ #address-cells =3D &lt;1&gt;; ++ #size-cells =3D &lt;0&gt;; +=
+ ++ pitft: pitft@0{ ++ compatible =3D "ilitek,ili9340"; ++ reg =3D &lt;0&g=
t;; ++ pinctrl-names =3D "default"; ++ pinctrl-0 =3D &lt;&amp;pitft_pins&gt=
;; ++ ++ spi-max-frequency =3D &lt;32000000&gt;; ++ rotate =3D &lt;90&gt;; =
++ fps =3D &lt;25&gt;; ++ bgr; ++ buswidth =3D &lt;8&gt;; ++ dc-gpios =3D &=
lt;&amp;gpio 25 0&gt;; ++ debug =3D &lt;0&gt;; ++ }; ++ ++ }; ++ }; ++ ++ _=
_overrides__ { ++ speed =3D &lt;&amp;pitft&gt;,"spi-max-frequency:0"; ++ ro=
tate =3D &lt;&amp;pitft&gt;,"rotate:0"; ++ fps =3D &lt;&amp;pitft&gt;,"fps:=
0"; ++ debug =3D &lt;&amp;pitft&gt;,"debug:0"; ++ }; ++}; +-- +1.9.1 + diff=
 --git a/recipes-kernel/linux/linux-raspberrypi/0001-dts-add-overlay-for-pi=
tft22.patch b/recipes-kernel/linux/linux-raspberrypi/0001-dts-add-overlay-f=
or-pitft22.patch new file mode 100644 index 0000000..e6e0a84 --- /dev/null =
+++ b/recipes-kernel/linux/linux-raspberrypi/0001-dts-add-overlay-for-pitft=
22.patch @@ -0,0 +1,110 @@ +From a28bd410022b32a64e208f04b45add6326990332 M=
on Sep 17 00:00:00 2001 +From: =3D?UTF-8?q?Petter=3D20Mab=3DC3=3DA4cker?=3D=
 &lt;<a href=3D"mailto:petter@technux.se">petter@technux.se</a>&gt; +Date: =
Fri, 8 Jan 2016 09:02:44 +0100 +Subject: [PATCH] dts: add overlay for pitft=
22 +MIME-Version: 1.0 +Content-Type: text/plain; charset=3DUTF-8 +Content-T=
ransfer-Encoding: 8bit + +Upstream-Status: Pending + +Add the pitft22 overl=
ay from adafruit Adafruit-Pi-Kernel-o-Matic repo: +<a href=3D"https://githu=
b.com/adafruit/Adafruit-Pi-Kernel-o-Matic">https://github.com/adafruit/Adaf=
ruit-Pi-Kernel-o-Matic</a> + +Signed-off-by: Petter Mab&auml;cker &lt;<a hr=
ef=3D"mailto:petter@technux.se">petter@technux.se</a>&gt; +--- + arch/arm/b=
oot/dts/overlays/Makefile | 1 + + arch/arm/boot/dts/overlays/pitft22-overla=
y.dts | 69 ++++++++++++++++++++++++++ + 2 files changed, 70 insertions(+) +=
 create mode 100755 arch/arm/boot/dts/overlays/pitft22-overlay.dts + +diff =
--git a/arch/arm/boot/dts/overlays/Makefile b/arch/arm/boot/dts/overlays/Ma=
kefile +index 1a60e9c..a2535a2 100644 +--- a/arch/arm/boot/dts/overlays/Mak=
efile ++++ b/arch/arm/boot/dts/overlays/Makefile +@@ -37,6 +37,7 @@ dtb-$(R=
PI_DT_OVERLAYS) +=3D mmc-overlay.dtb + dtb-$(RPI_DT_OVERLAYS) +=3D mz61581-=
overlay.dtb + dtb-$(RPI_DT_OVERLAYS) +=3D piscreen-overlay.dtb + dtb-$(RPI_=
DT_OVERLAYS) +=3D piscreen2r-overlay.dtb ++dtb-$(RPI_DT_OVERLAYS) +=3D pitf=
t22-overlay.dtb + dtb-$(RPI_DT_OVERLAYS) +=3D pitft28-capacitive-overlay.dt=
b + dtb-$(RPI_DT_OVERLAYS) +=3D pitft28-resistive-overlay.dtb + dtb-$(RPI_D=
T_OVERLAYS) +=3D pps-gpio-overlay.dtb +diff --git a/arch/arm/boot/dts/overl=
ays/pitft22-overlay.dts b/arch/arm/boot/dts/overlays/pitft22-overlay.dts +n=
ew file mode 100755 +index 0000000..894ba22 +--- /dev/null ++++ b/arch/arm/=
boot/dts/overlays/pitft22-overlay.dts +@@ -0,0 +1,69 @@ ++/* ++ * Device Tr=
ee overlay for pitft by Adafruit ++ * ++ */ ++ ++/dts-v1/; ++/plugin/; ++ +=
+/ { ++ compatible =3D "brcm,bcm2835", "brcm,bcm2708", "brcm,bcm2709"; ++ +=
+ fragment@0 { ++ target =3D &lt;&amp;spi0&gt;; ++ __overlay__ { ++ status =
=3D "okay"; ++ ++ spidev@0{ ++ status =3D "disabled"; ++ }; ++ ++ spidev@1{=
 ++ status =3D "disabled"; ++ }; ++ }; ++ }; ++ ++ fragment@1 { ++ target =
=3D &lt;&amp;gpio&gt;; ++ __overlay__ { ++ pitft_pins: pitft_pins { ++ brcm=
,pins =3D &lt;25&gt;; ++ brcm,function =3D &lt;1&gt;; /* out */ ++ brcm,pul=
l =3D &lt;0&gt;; /* none */ ++ }; ++ }; ++ }; ++ ++ fragment@2 { ++ target =
=3D &lt;&amp;spi0&gt;; ++ __overlay__ { ++ /* needed to avoid dtc warning *=
/ ++ #address-cells =3D &lt;1&gt;; ++ #size-cells =3D &lt;0&gt;; ++ ++ pitf=
t: pitft@0{ ++ compatible =3D "ilitek,ili9340"; ++ reg =3D &lt;0&gt;; ++ pi=
nctrl-names =3D "default"; ++ pinctrl-0 =3D &lt;&amp;pitft_pins&gt;; ++ ++ =
spi-max-frequency =3D &lt;32000000&gt;; ++ rotate =3D &lt;90&gt;; ++ fps =
=3D &lt;25&gt;; ++ bgr; ++ buswidth =3D &lt;8&gt;; ++ dc-gpios =3D &lt;&amp=
;gpio 25 0&gt;; ++ debug =3D &lt;0&gt;; ++ }; ++ ++ }; ++ }; ++ ++ __overri=
des__ { ++ speed =3D &lt;&amp;pitft&gt;,"spi-max-frequency:0"; ++ rotate =
=3D &lt;&amp;pitft&gt;,"rotate:0"; ++ fps =3D &lt;&amp;pitft&gt;,"fps:0"; +=
+ debug =3D &lt;&amp;pitft&gt;,"debug:0"; ++ }; ++}; +-- +1.9.1 + diff --gi=
t a/recipes-kernel/linux/linux-raspberrypi_3.18.bb b/recipes-kernel/linux/l=
inux-raspberrypi_3.18.bb index a1fe6b4..9234f70 100644 --- a/recipes-kernel=
/linux/linux-raspberrypi_3.18.bb +++ b/recipes-kernel/linux/linux-raspberry=
pi_3.18.bb @@ -1,8 +1,9 @@ LINUX_VERSION ?=3D "3.18.16" SRCREV =3D "1bb18c8=
f721ef674a447f3622273f2e2de7a205c" -SRC_URI =3D "git://github.com/raspberry=
pi/linux.git;protocol=3Dgit;branch=3Drpi-3.18.y" - +SRC_URI =3D "git://gith=
ub.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-3.18.y \ + <a href=
=3D"file://0001-dts-add-overlay-for-pitft22-in-linux-3.18.patch">file://000=
1-dts-add-overlay-for-pitft22-in-linux-3.18.patch</a> \ + " require linux-r=
aspberrypi.inc # Create missing out of tree 'overlays' directory prior to i=
nstall step diff --git a/recipes-kernel/linux/linux-raspberrypi_4.1.bb b/re=
cipes-kernel/linux/linux-raspberrypi_4.1.bb index 3a3cf40..b657c85 100644 -=
-- a/recipes-kernel/linux/linux-raspberrypi_4.1.bb +++ b/recipes-kernel/lin=
ux/linux-raspberrypi_4.1.bb @@ -1,6 +1,8 @@ LINUX_VERSION ?=3D "4.1.10" SRC=
REV =3D "b74df9228c27f55361c065bc5dbfba88861cc771" -SRC_URI =3D "git://gith=
ub.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-4.1.y" +SRC_URI =
=3D "git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-4=
=2E1.y \ + <a href=3D"file://0001-dts-add-overlay-for-pitft22.patch">file:/=
/0001-dts-add-overlay-for-pitft22.patch</a> \ + " require linux-raspberrypi=
=2Einc</blockquote>
<pre>Cheers Peter!

Based on this patch I pushed a v4:
- resolve conflicts
- use patches specific for a certain kernel version in separate directories=
 -
  easier to visualize

What do you think?

--
Andrei Gherzan
</pre>
</blockquote>
<p>Hi Andrei,</p>
<p>I think it makes sense. Please go ahead with these changes.</p>
<p>BR Petter</p>
<div>
<pre>Petter Mab&auml;cker

Technux &lt;petter@technux.se&gt;
www.technux.se</pre>
</div>
</body></html>

--=_579f0ec99c248a2c40b68c751bf2d2d2--
