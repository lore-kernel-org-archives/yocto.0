Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91A52E00A90; Tue, 11 Aug 2015 00:58:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.227 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from bin-vsp-out-05.atm.binero.net (vsp-unauthed02.binero.net
	[195.74.38.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD4A3E00A80
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 00:58:17 -0700 (PDT)
X-Halon-ID: c397b933-3ffe-11e5-8dab-005056916f53
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-05.atm.binero.net (Halon Mail Gateway) with ESMTPA;
	Tue, 11 Aug 2015 09:58:34 +0200 (CEST)
MIME-Version: 1.0
Date: Tue, 11 Aug 2015 09:58:13 +0200
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: Alex J Lennon <ajlennon@gmail.com>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <1439204904-8305-1-git-send-email-ajlennon@dynamicdevices.co.uk>
References: <1439204904-8305-1-git-send-email-ajlennon@dynamicdevices.co.uk>
Message-ID: <fc34ba0543c946b98d8d736ff5e66421@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/2] linux-raspberrypi: Update kernel to 3.18.16
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
X-List-Received-Date: Tue, 11 Aug 2015 07:58:22 -0000
Content-Type: multipart/alternative;
	boundary="=_d6ed5d47f716ffaa02dcf14fe901b602"

--=_d6ed5d47f716ffaa02dcf14fe901b602
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=UTF-8

 

2015-08-10 13:08 skrev Alex J Lennon: 

> This requires some changes
to KERNEL_DEVICETREE as the dtb
> layout has changed to support
overlays. This change also
> makes us ready to support kernel 4.x
series
> 
> Signed-off-by: Alex J Lennon
<ajlennon@dynamicdevices.co.uk>
> ---
>
conf/machine/include/rpi-base.inc | 22 ++++++++++------------
>
recipes-kernel/linux/linux-raspberrypi_3.18.bb | 9 +++++++--
> 2 files
changed, 17 insertions(+), 14 deletions(-)
> 
> diff --git
a/conf/machine/include/rpi-base.inc
b/conf/machine/include/rpi-base.inc
> index 1dda207..8caa5ba 100644
>
--- a/conf/machine/include/rpi-base.inc
> +++
b/conf/machine/include/rpi-base.inc
> @@ -23,18 +23,16 @@
KERNEL_DEVICETREE ?= " 
> bcm2708-rpi-b-plus.dtb 
> bcm2709-rpi-2-b.dtb

> 
> - ds1307-rtc-overlay.dtb 
> - hifiberry-amp-overlay.dtb 
> -
hifiberry-dac-overlay.dtb 
> - hifiberry-dacplus-overlay.dtb 
> -
hifiberry-digi-overlay.dtb 
> - iqaudio-dac-overlay.dtb 
> -
iqaudio-dacplus-overlay.dtb 
> - lirc-rpi-overlay.dtb 
> -
pcf8523-rtc-overlay.dtb 
> - pps-gpio-overlay.dtb 
> -
w1-gpio-overlay.dtb 
> - w1-gpio-pullup-overlay.dtb 
> +
overlays/hifiberry-amp-overlay.dtb 
> +
overlays/hifiberry-dac-overlay.dtb 
> +
overlays/hifiberry-dacplus-overlay.dtb 
> +
overlays/hifiberry-digi-overlay.dtb 
> +
overlays/iqaudio-dac-overlay.dtb 
> +
overlays/iqaudio-dacplus-overlay.dtb 
> + overlays/lirc-rpi-overlay.dtb

> + overlays/pps-gpio-overlay.dtb 
> + overlays/w1-gpio-overlay.dtb 
>
+ overlays/w1-gpio-pullup-overlay.dtb 
> "
> KERNEL_IMAGETYPE ?=
"Image"
> 
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.18.bb
b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
> index
6d8b155..18c2020 100644
> ---
a/recipes-kernel/linux/linux-raspberrypi_3.18.bb
> +++
b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
> @@ -1,6 +1,11 @@
>
-LINUX_VERSION ?= "3.18.11"
> +LINUX_VERSION ?= "3.18.16"
> 
> -SRCREV =
"d64fa8121fca9883d6fb14ca06d2abf66496195e"
> +SRCREV =
"1bb18c8f721ef674a447f3622273f2e2de7a205c"
> SRC_URI =
"git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y"
>

> require linux-raspberrypi.inc
> +
> +# Create missing out of tree
'overlays' directory prior to install step
> +do_compile_append() {
> +
mkdir -p ${B}/arch/arm/boot/dts/overlays
> +}
> -- 
> 1.9.1

Hi Alex,


At least I get problems during compile step with above change (I'm
building for rpi2). So are your sure '${B}/arch/arm/boot/dts/overlays'
isn't needed during compile? I tried with changing above from append to
prepand instead and then it worked fine for me (when building 3.18
kernel). 

(from log.do_compile, complete log can be found at:
http://www.technux.se/logs/log.do_compile.4398.fail ) 

 KSYM
.tmp_kallsyms1.o
 KSYM .tmp_kallsyms2.o
 LD vmlinux
 SORTEX vmlinux

SYSMAP System.map
 OBJCOPY arch/arm/boot/Image
 Kernel:
arch/arm/boot/Image is ready
NOTE: make -j 4 bcm2708-rpi-b.dtb
 DTC
arch/arm/boot/dts/bcm2708-rpi-b.dtb
NOTE: make -j 4
bcm2708-rpi-b-plus.dtb
 DTC
arch/arm/boot/dts/bcm2708-rpi-b-plus.dtb
NOTE: make -j 4
bcm2709-rpi-2-b.dtb
 DTC arch/arm/boot/dts/bcm2709-rpi-2-b.dtb
NOTE:
make -j 4 overlays/hifiberry-amp-overlay.dtb
 DTC
arch/arm/boot/dts/overlays/hifiberry-amp-overlay.dtb
cc1: fatal error:
opening output file
arch/arm/boot/dts/overlays/.hifiberry-amp-overlay.dtb.dts.tmp: No such
file or directory
compilation terminated.
make[3]: ***
[arch/arm/boot/dts/overlays/hifiberry-amp-overlay.dtb] Error 1
make[2]:
*** [overlays/hifiberry-amp-overlay.dtb] Error 2
make[1]: *** [sub-make]
Error 2
make: *** [__sub-make] Error 2
ERROR: oe_runmake failed
ERROR:
Function failed: do_compile (log file is located at
/home/epetmab/programming/yocto/alex_test_sstate/tmp/work/raspberrypi2-poky-linux-gnueabi/linux-raspberrypi/3.18.16+git1bb18c8f721ef674a447f3622273f2e2de7a205c-r0/temp/log.do_compile.4398)

BR,
Petter 

--=_d6ed5d47f716ffaa02dcf14fe901b602
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>2015-08-10 13:08 skrev Alex J Lennon:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<pre>This requires some changes to KERNEL_DEVICETREE as the dtb
layout has changed to support overlays. This change also
makes us ready to support kernel 4.x series

Signed-off-by: Alex J Lennon &lt;<a href=3D"mailto:ajlennon@dynamicdevices=
=2Eco.uk">ajlennon@dynamicdevices.co.uk</a>&gt;
---
 conf/machine/include/rpi-base.inc              | 22 ++++++++++------------
 recipes-kernel/linux/linux-raspberrypi_3.18.bb |  9 +++++++--
 2 files changed, 17 insertions(+), 14 deletions(-)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-b=
ase.inc
index 1dda207..8caa5ba 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -23,18 +23,16 @@ KERNEL_DEVICETREE ?=3D " \
     bcm2708-rpi-b-plus.dtb \
     bcm2709-rpi-2-b.dtb \
     \
-    ds1307-rtc-overlay.dtb \
-    hifiberry-amp-overlay.dtb \
-    hifiberry-dac-overlay.dtb \
-    hifiberry-dacplus-overlay.dtb \
-    hifiberry-digi-overlay.dtb \
-    iqaudio-dac-overlay.dtb \
-    iqaudio-dacplus-overlay.dtb \
-    lirc-rpi-overlay.dtb \
-    pcf8523-rtc-overlay.dtb \
-    pps-gpio-overlay.dtb \
-    w1-gpio-overlay.dtb \
-    w1-gpio-pullup-overlay.dtb \
+    overlays/hifiberry-amp-overlay.dtb \
+    overlays/hifiberry-dac-overlay.dtb \
+    overlays/hifiberry-dacplus-overlay.dtb \
+    overlays/hifiberry-digi-overlay.dtb \
+    overlays/iqaudio-dac-overlay.dtb \
+    overlays/iqaudio-dacplus-overlay.dtb \
+    overlays/lirc-rpi-overlay.dtb \
+    overlays/pps-gpio-overlay.dtb \
+    overlays/w1-gpio-overlay.dtb \
+    overlays/w1-gpio-pullup-overlay.dtb \
     "
 KERNEL_IMAGETYPE ?=3D "Image"
=20
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.18.bb b/recipes-kerne=
l/linux/linux-raspberrypi_3.18.bb
index 6d8b155..18c2020 100644
--- a/recipes-kernel/linux/linux-raspberrypi_3.18.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
@@ -1,6 +1,11 @@
-LINUX_VERSION ?=3D "3.18.11"
+LINUX_VERSION ?=3D "3.18.16"
=20
-SRCREV =3D "d64fa8121fca9883d6fb14ca06d2abf66496195e"
+SRCREV =3D "1bb18c8f721ef674a447f3622273f2e2de7a205c"
 SRC_URI =3D "git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=
=3Drpi-3.18.y"
=20
 require linux-raspberrypi.inc
+
+# Create missing out of tree 'overlays' directory prior to install step
+do_compile_append() {
+  mkdir -p ${B}/arch/arm/boot/dts/overlays
+}
<span class=3D"sig">--=20
1.9.1
<br /><br /></span></pre>
</blockquote>
<p>Hi Alex,</p>
<p>At least I get problems during compile step with above change (I'm build=
ing for rpi2). So are your sure '${B}/arch/arm/boot/dts/overlays' isn't nee=
ded during compile? I tried with changing above from append to prepand inst=
ead and then it worked fine for me (when building 3.18 kernel).</p>
<p>(from log.do_compile, complete log can be found at: http://www.technux=
=2Ese/logs/log.do_compile.4398.fail )</p>
<pre>  KSYM    .tmp_kallsyms1.o
  KSYM    .tmp_kallsyms2.o
  LD      vmlinux
  SORTEX  vmlinux
  SYSMAP  System.map
  OBJCOPY arch/arm/boot/Image
  Kernel: arch/arm/boot/Image is ready
NOTE: make -j 4 bcm2708-rpi-b.dtb
  DTC     arch/arm/boot/dts/bcm2708-rpi-b.dtb
NOTE: make -j 4 bcm2708-rpi-b-plus.dtb
  DTC     arch/arm/boot/dts/bcm2708-rpi-b-plus.dtb
NOTE: make -j 4 bcm2709-rpi-2-b.dtb
  DTC     arch/arm/boot/dts/bcm2709-rpi-2-b.dtb
NOTE: make -j 4 overlays/hifiberry-amp-overlay.dtb
  DTC     arch/arm/boot/dts/overlays/hifiberry-amp-overlay.dtb
cc1: fatal error: opening output file arch/arm/boot/dts/overlays/.hifiberry=
-amp-overlay.dtb.dts.tmp: No such file or directory
compilation terminated.
make[3]: *** [arch/arm/boot/dts/overlays/hifiberry-amp-overlay.dtb] Error 1
make[2]: *** [overlays/hifiberry-amp-overlay.dtb] Error 2
make[1]: *** [sub-make] Error 2
make: *** [__sub-make] Error 2
ERROR: oe_runmake failed
ERROR: Function failed: do_compile (log file is located at /home/epetmab/pr=
ogramming/yocto/alex_test_sstate/tmp/work/raspberrypi2-poky-linux-gnueabi/l=
inux-raspberrypi/3.18.16+git1bb18c8f721ef674a447f3622273f2e2de7a205c-r0/tem=
p/log.do_compile.4398)
<br />
</pre>
<p>BR, Petter</p>
</body></html>

--=_d6ed5d47f716ffaa02dcf14fe901b602--
