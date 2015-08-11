Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41C13E00A9C; Tue, 11 Aug 2015 06:17:51 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E60CE00A92
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 06:17:46 -0700 (PDT)
X-Halon-ID: 64802f90-402b-11e5-8db1-005056916f53
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-05.atm.binero.net (Halon Mail Gateway) with ESMTPA
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 15:18:01 +0200 (CEST)
MIME-Version: 1.0
Date: Tue, 11 Aug 2015 15:17:43 +0200
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: <yocto@yoctoproject.org>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <1439296223-31422-1-git-send-email-ajlennon@dynamicdevices.co.uk>
References: <1439296223-31422-1-git-send-email-ajlennon@dynamicdevices.co.uk>
Message-ID: <7df18ddf29b8b8dead87d4011ab7ba14@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Subject: Re: [meta-raspberrypi][PATCH v2 1/2] linux-raspberrypi: Update kernel to 3.18.16
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
X-List-Received-Date: Tue, 11 Aug 2015 13:17:51 -0000
Content-Type: multipart/alternative;
	boundary="=_b97712d7c3b0b31af05a1274d1465cba"

--=_b97712d7c3b0b31af05a1274d1465cba
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=UTF-8

 

2015-08-11 14:30 skrev Alex J Lennon: 

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
6d8b155..a1fe6b4 100644
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
> +do_compile_prepend() {
> +
mkdir -p ${B}/arch/arm/boot/dts/overlays
> +}
> -- 
> 1.9.1

One very
minor comment, update the comment ".. prior to install step" to
something like ".. prior to compile step instead" :) Perhaps Andrei can
fix that during merge, since at least I see no need for a v3 for
this.... :) 

BR Petter 

--=_b97712d7c3b0b31af05a1274d1465cba
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>2015-08-11 14:30 skrev Alex J Lennon:</p>
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
index 6d8b155..a1fe6b4 100644
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
+do_compile_prepend() {
+  mkdir -p ${B}/arch/arm/boot/dts/overlays
+}
<span class=3D"sig">--=20
1.9.1
</span></pre>
</blockquote>
<p>One very minor comment, update the comment ".. prior to install step" to=
 something like ".. prior to compile step instead" :) Perhaps Andrei can fi=
x that during merge, since at least I see no need for a v3 for this.... :)<=
/p>
<p>BR Petter</p>
</body></html>

--=_b97712d7c3b0b31af05a1274d1465cba--
