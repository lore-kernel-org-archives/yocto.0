Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B85D1E00C2D; Sun, 29 May 2016 11:17:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f193.google.com (mail-lb0-f193.google.com
	[209.85.217.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B0B0E00BE0
	for <yocto@yoctoproject.org>; Sun, 29 May 2016 11:17:30 -0700 (PDT)
Received: by mail-lb0-f193.google.com with SMTP id t6so7798575lbv.1
	for <yocto@yoctoproject.org>; Sun, 29 May 2016 11:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=cZL47h2raAriSEl6iinbeV5N/RKZlsl6qQQ+xBoFoP4=;
	b=VFVs3DTfFfh5sE+5jNIKu5ksOASujXDla0uQzynsuMnmrckLYcZXEwUa8FzQHB9swF
	vSnXLFS/U9ztouJDP8XGBn2TM8jn6Jq4ppVAmrfW3HSTf5PTNrCiPWO3N0P+LPfdSSXW
	9qaged6rlpkRSNmu79ay5iTlmq+Uyg1skDWLmHO3axpHzKDHRWeZC6PFIM5EPqusNHME
	zBYp8C2rtgiqUtFBE7CP7nsPcwHZf65dFHVx0HQqfs4T3gLOJTVofRbA6mC/HDQjlu3u
	RCCCV2WgCII4Ipcp/AIIO4GDnKQq9BBLBq3rnuezFfHR2k9Z6F8xLPJdqJgSNqoQOZnP
	F7lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=cZL47h2raAriSEl6iinbeV5N/RKZlsl6qQQ+xBoFoP4=;
	b=kFpTcAWTBpon1U/xlTjPcXGx3+aJ4CtzRb6uHe9vZ8RCnjUvS/QfSpCFDwWjmEnJu2
	iMpyjR5oKxprOJe/shkrbC5mY9fQLNqVFevp+VvtP9gYqE51k6MaDmdZhzuSGcghDcO8
	nbv5EeNlCY3emGskOdni5J7JK3cObek30HM7L36M7pv9yKykafrTMAnwYYsdKbSWPiYQ
	zjLla7OthOKgIziIyIieQiMYGVYZgEtg049mCPWnRmX210WlrlCl6VbTPbvZA81i7zKc
	qQ2NFHODYZzq0CnfkkY0OoslOcqIeb8o7eMAEHEUf4gZvuQbyoiQTN1QaeZRcVZYEJq8
	LS9Q==
X-Gm-Message-State: ALyK8tLxmRw9HgHbyx5f79kb7fABR+LPWXIVycRmUqR3knmeb4+mPN/1HMuRZKUElUDNz7U00PWARbamtbJSGg==
MIME-Version: 1.0
X-Received: by 10.112.211.169 with SMTP id nd9mr5095304lbc.53.1464545849103;
	Sun, 29 May 2016 11:17:29 -0700 (PDT)
Received: by 10.25.42.132 with HTTP; Sun, 29 May 2016 11:17:29 -0700 (PDT)
Received: by 10.25.42.132 with HTTP; Sun, 29 May 2016 11:17:29 -0700 (PDT)
In-Reply-To: <1464537553-24915-6-git-send-email-paul@paulbarker.me.uk>
References: <1464537553-24915-1-git-send-email-paul@paulbarker.me.uk>
	<1464537553-24915-6-git-send-email-paul@paulbarker.me.uk>
Date: Sun, 29 May 2016 21:17:29 +0300
Message-ID: <CAMKF1sq1qEzVQMMYuc36t6DYvi3VNyH=z5WSs6vJX3TDJ4diQg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 5/6] linux-raspberrypi: Drop version 3.18
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
X-List-Received-Date: Sun, 29 May 2016 18:17:33 -0000
Content-Type: multipart/alternative; boundary=001a11c3d9fc17db4f0533ff2750

--001a11c3d9fc17db4f0533ff2750
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I think we should remove it. But lets give a chance for folks to respond if
any one is using 3.18 still
On May 29, 2016 9:07 AM, "Paul Barker" <paul@paulbarker.me.uk> wrote:

> The linux-raspberrypi v3.18 recipe does not build after commit
> 519c387e3b97ecc21ac1d7b4fc9197298f289a71 as it lacks the necessary dtb
> files.
>
> Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
> ---
>  .../0001-dts-add-overlay-for-pitft22.patch         | 110
> ---------------------
>  recipes-kernel/linux/linux-raspberrypi_3.18.bb     |  15 ---
>  2 files changed, 125 deletions(-)
>  delete mode 100644
> recipes-kernel/linux/linux-raspberrypi-3.18/0001-dts-add-overlay-for-pitf=
t22.patch
>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.18.bb
>
> diff --git
> a/recipes-kernel/linux/linux-raspberrypi-3.18/0001-dts-add-overlay-for-pi=
tft22.patch
> b/recipes-kernel/linux/linux-raspberrypi-3.18/0001-dts-add-overlay-for-pi=
tft22.patch
> deleted file mode 100644
> index fa73599..0000000
> ---
> a/recipes-kernel/linux/linux-raspberrypi-3.18/0001-dts-add-overlay-for-pi=
tft22.patch
> +++ /dev/null
> @@ -1,110 +0,0 @@
> -From 2f44861e2a2d651a9aa62a75343a032fee33e93b Mon Sep 17 00:00:00 2001
> -From: =3D?UTF-8?q?Petter=3D20Mab=3DC3=3DA4cker?=3D <petter@technux.se>
> -Date: Fri, 8 Jan 2016 09:02:44 +0100
> -Subject: [PATCH] dts: add overlay for pitft22 in linux 3.18
> -MIME-Version: 1.0
> -Content-Type: text/plain; charset=3DUTF-8
> -Content-Transfer-Encoding: 8bit
> -
> -Upstream-Status: Pending
> -
> -Add the pitft22 overlay from adafruit Adafruit-Pi-Kernel-o-Matic repo:
> -https://github.com/adafruit/Adafruit-Pi-Kernel-o-Matic
> -
> -Signed-off-by: Petter Mab=C3=A4cker <petter@technux.se>
> ----
> - arch/arm/boot/dts/overlays/Makefile            |  1 +
> - arch/arm/boot/dts/overlays/pitft22-overlay.dts | 69
> ++++++++++++++++++++++++++
> - 2 files changed, 70 insertions(+)
> - create mode 100755 arch/arm/boot/dts/overlays/pitft22-overlay.dts
> -
> -diff --git a/arch/arm/boot/dts/overlays/Makefile
> b/arch/arm/boot/dts/overlays/Makefile
> -index c766616..1eaaf81 100644
> ---- a/arch/arm/boot/dts/overlays/Makefile
> -+++ b/arch/arm/boot/dts/overlays/Makefile
> -@@ -27,6 +27,7 @@ dtb-$(RPI_DT_OVERLAYS) +=3D mcp2515-can0-overlay.dtb
> - dtb-$(RPI_DT_OVERLAYS) +=3D mmc-overlay.dtb
> - dtb-$(RPI_DT_OVERLAYS) +=3D mz61581-overlay.dtb
> - dtb-$(RPI_DT_OVERLAYS) +=3D piscreen-overlay.dtb
> -+dtb-$(RPI_DT_OVERLAYS) +=3D pitft22-overlay.dtb
> - dtb-$(RPI_DT_OVERLAYS) +=3D pitft28-resistive-overlay.dtb
> - dtb-$(RPI_DT_OVERLAYS) +=3D pps-gpio-overlay.dtb
> - dtb-$(RPI_DT_OVERLAYS) +=3D rpi-dac-overlay.dtb
> -diff --git a/arch/arm/boot/dts/overlays/pitft22-overlay.dts
> b/arch/arm/boot/dts/overlays/pitft22-overlay.dts
> -new file mode 100755
> -index 0000000..894ba22
> ---- /dev/null
> -+++ b/arch/arm/boot/dts/overlays/pitft22-overlay.dts
> -@@ -0,0 +1,69 @@
> -+/*
> -+ * Device Tree overlay for pitft by Adafruit
> -+ *
> -+ */
> -+
> -+/dts-v1/;
> -+/plugin/;
> -+
> -+/ {
> -+        compatible =3D "brcm,bcm2835", "brcm,bcm2708", "brcm,bcm2709";
> -+
> -+        fragment@0 {
> -+                target =3D <&spi0>;
> -+                __overlay__ {
> -+                        status =3D "okay";
> -+
> -+                        spidev@0{
> -+                                status =3D "disabled";
> -+                        };
> -+
> -+                        spidev@1{
> -+                                status =3D "disabled";
> -+                        };
> -+                };
> -+        };
> -+
> -+        fragment@1 {
> -+                target =3D <&gpio>;
> -+                __overlay__ {
> -+                        pitft_pins: pitft_pins {
> -+                                brcm,pins =3D <25>;
> -+                                brcm,function =3D <1>; /* out */
> -+                                brcm,pull =3D <0>; /* none */
> -+                        };
> -+                };
> -+        };
> -+
> -+        fragment@2 {
> -+                target =3D <&spi0>;
> -+                __overlay__ {
> -+                        /* needed to avoid dtc warning */
> -+                        #address-cells =3D <1>;
> -+                        #size-cells =3D <0>;
> -+
> -+                        pitft: pitft@0{
> -+                                compatible =3D "ilitek,ili9340";
> -+                                reg =3D <0>;
> -+                                pinctrl-names =3D "default";
> -+                                pinctrl-0 =3D <&pitft_pins>;
> -+
> -+                                spi-max-frequency =3D <32000000>;
> -+                                rotate =3D <90>;
> -+                                fps =3D <25>;
> -+                                bgr;
> -+                                buswidth =3D <8>;
> -+                                dc-gpios =3D <&gpio 25 0>;
> -+                                debug =3D <0>;
> -+                        };
> -+
> -+                };
> -+        };
> -+
> -+        __overrides__ {
> -+                speed =3D   <&pitft>,"spi-max-frequency:0";
> -+                rotate =3D  <&pitft>,"rotate:0";
> -+                fps =3D     <&pitft>,"fps:0";
> -+                debug =3D   <&pitft>,"debug:0";
> -+        };
> -+};
> ---
> -1.9.1
> -
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.18.bb
> b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
> deleted file mode 100644
> index b16a1d7..0000000
> --- a/recipes-kernel/linux/linux-raspberrypi_3.18.bb
> +++ /dev/null
> @@ -1,15 +0,0 @@
> -FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"
> -
> -LINUX_VERSION ?=3D "3.18.16"
> -PV =3D "${LINUX_VERSION}+git${SRCPV}"
> -
> -SRCREV =3D "1bb18c8f721ef674a447f3622273f2e2de7a205c"
> -SRC_URI =3D "git://
> github.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-3.18.y \
> -           file://0001-dts-add-overlay-for-pitft22.patch \
> -          "
> -require linux-raspberrypi.inc
> -
> -# Create missing out of tree 'overlays' directory prior to install step
> -do_compile_prepend() {
> -  mkdir -p ${B}/arch/arm/boot/dts/overlays
> -}
> --
> 2.1.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11c3d9fc17db4f0533ff2750
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">I think we should remove it. But lets give a chance for folk=
s to respond if any one is using 3.18 still</p>
<div class=3D"gmail_quote">On May 29, 2016 9:07 AM, &quot;Paul Barker&quot;=
 &lt;<a href=3D"mailto:paul@paulbarker.me.uk">paul@paulbarker.me.uk</a>&gt;=
 wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">The linux-ra=
spberrypi v3.18 recipe does not build after commit<br>
519c387e3b97ecc21ac1d7b4fc9197298f289a71 as it lacks the necessary dtb file=
s.<br>
<br>
Signed-off-by: Paul Barker &lt;<a href=3D"mailto:paul@paulbarker.me.uk">pau=
l@paulbarker.me.uk</a>&gt;<br>
---<br>
=C2=A0.../0001-dts-add-overlay-for-pitft22.patch=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0| 110 ---------------------<br>
=C2=A0recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.18.bb" rel=
=3D"noreferrer" target=3D"_blank">linux-raspberrypi_3.18.bb</a>=C2=A0 =C2=
=A0 =C2=A0|=C2=A0 15 ---<br>
=C2=A02 files changed, 125 deletions(-)<br>
=C2=A0delete mode 100644 recipes-kernel/linux/linux-raspberrypi-3.18/0001-d=
ts-add-overlay-for-pitft22.patch<br>
=C2=A0delete mode 100644 recipes-kernel/linux/<a href=3D"http://linux-raspb=
errypi_3.18.bb" rel=3D"noreferrer" target=3D"_blank">linux-raspberrypi_3.18=
.bb</a><br>
<br>
diff --git a/recipes-kernel/linux/linux-raspberrypi-3.18/0001-dts-add-overl=
ay-for-pitft22.patch b/recipes-kernel/linux/linux-raspberrypi-3.18/0001-dts=
-add-overlay-for-pitft22.patch<br>
deleted file mode 100644<br>
index fa73599..0000000<br>
--- a/recipes-kernel/linux/linux-raspberrypi-3.18/0001-dts-add-overlay-for-=
pitft22.patch<br>
+++ /dev/null<br>
@@ -1,110 +0,0 @@<br>
-From 2f44861e2a2d651a9aa62a75343a032fee33e93b Mon Sep 17 00:00:00 2001<br>
-From: =3D?UTF-8?q?Petter=3D20Mab=3DC3=3DA4cker?=3D &lt;<a href=3D"mailto:p=
etter@technux.se">petter@technux.se</a>&gt;<br>
-Date: Fri, 8 Jan 2016 09:02:44 +0100<br>
-Subject: [PATCH] dts: add overlay for pitft22 in linux 3.18<br>
-MIME-Version: 1.0<br>
-Content-Type: text/plain; charset=3DUTF-8<br>
-Content-Transfer-Encoding: 8bit<br>
-<br>
-Upstream-Status: Pending<br>
-<br>
-Add the pitft22 overlay from adafruit Adafruit-Pi-Kernel-o-Matic repo:<br>
-<a href=3D"https://github.com/adafruit/Adafruit-Pi-Kernel-o-Matic" rel=3D"=
noreferrer" target=3D"_blank">https://github.com/adafruit/Adafruit-Pi-Kerne=
l-o-Matic</a><br>
-<br>
-Signed-off-by: Petter Mab=C3=A4cker &lt;<a href=3D"mailto:petter@technux.s=
e">petter@technux.se</a>&gt;<br>
----<br>
- arch/arm/boot/dts/overlays/Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 1 +<br>
- arch/arm/boot/dts/overlays/pitft22-overlay.dts | 69 +++++++++++++++++++++=
+++++<br>
- 2 files changed, 70 insertions(+)<br>
- create mode 100755 arch/arm/boot/dts/overlays/pitft22-overlay.dts<br>
-<br>
-diff --git a/arch/arm/boot/dts/overlays/Makefile b/arch/arm/boot/dts/overl=
ays/Makefile<br>
-index c766616..1eaaf81 100644<br>
---- a/arch/arm/boot/dts/overlays/Makefile<br>
-+++ b/arch/arm/boot/dts/overlays/Makefile<br>
-@@ -27,6 +27,7 @@ dtb-$(RPI_DT_OVERLAYS) +=3D mcp2515-can0-overlay.dtb<br>
- dtb-$(RPI_DT_OVERLAYS) +=3D mmc-overlay.dtb<br>
- dtb-$(RPI_DT_OVERLAYS) +=3D mz61581-overlay.dtb<br>
- dtb-$(RPI_DT_OVERLAYS) +=3D piscreen-overlay.dtb<br>
-+dtb-$(RPI_DT_OVERLAYS) +=3D pitft22-overlay.dtb<br>
- dtb-$(RPI_DT_OVERLAYS) +=3D pitft28-resistive-overlay.dtb<br>
- dtb-$(RPI_DT_OVERLAYS) +=3D pps-gpio-overlay.dtb<br>
- dtb-$(RPI_DT_OVERLAYS) +=3D rpi-dac-overlay.dtb<br>
-diff --git a/arch/arm/boot/dts/overlays/pitft22-overlay.dts b/arch/arm/boo=
t/dts/overlays/pitft22-overlay.dts<br>
-new file mode 100755<br>
-index 0000000..894ba22<br>
---- /dev/null<br>
-+++ b/arch/arm/boot/dts/overlays/pitft22-overlay.dts<br>
-@@ -0,0 +1,69 @@<br>
-+/*<br>
-+ * Device Tree overlay for pitft by Adafruit<br>
-+ *<br>
-+ */<br>
-+<br>
-+/dts-v1/;<br>
-+/plugin/;<br>
-+<br>
-+/ {<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 compatible =3D &quot;brcm,bcm2835&quot;, &quo=
t;brcm,bcm2708&quot;, &quot;brcm,bcm2709&quot;;<br>
-+<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 fragment@0 {<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 target =3D &lt;&a=
mp;spi0&gt;;<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 __overlay__ {<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 status =3D &quot;okay&quot;;<br>
-+<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 spidev@0{<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 status =3D &quot;disabled&quot;;<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 };<br>
-+<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 spidev@1{<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 status =3D &quot;disabled&quot;;<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 };<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 };<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 };<br>
-+<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 fragment@1 {<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 target =3D &lt;&a=
mp;gpio&gt;;<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 __overlay__ {<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 pitft_pins: pitft_pins {<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 brcm,pins =3D &lt;25&gt;;<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 brcm,function =3D &lt;1&gt;; /* out =
*/<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 brcm,pull =3D &lt;0&gt;; /* none */<=
br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 };<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 };<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 };<br>
-+<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 fragment@2 {<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 target =3D &lt;&a=
mp;spi0&gt;;<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 __overlay__ {<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 /* needed to avoid dtc warning */<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 #address-cells =3D &lt;1&gt;;<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 #size-cells =3D &lt;0&gt;;<br>
-+<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 pitft: pitft@0{<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 compatible =3D &quot;ilitek,ili9340&=
quot;;<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 reg =3D &lt;0&gt;;<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pinctrl-names =3D &quot;default&quot=
;;<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pinctrl-0 =3D &lt;&amp;pitft_pins&gt=
;;<br>
-+<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 spi-max-frequency =3D &lt;32000000&g=
t;;<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rotate =3D &lt;90&gt;;<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fps =3D &lt;25&gt;;<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bgr;<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 buswidth =3D &lt;8&gt;;<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dc-gpios =3D &lt;&amp;gpio 25 0&gt;;=
<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 debug =3D &lt;0&gt;;<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 };<br>
-+<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 };<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 };<br>
-+<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 __overrides__ {<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 speed =3D=C2=A0 =
=C2=A0&lt;&amp;pitft&gt;,&quot;spi-max-frequency:0&quot;;<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rotate =3D=C2=A0 =
&lt;&amp;pitft&gt;,&quot;rotate:0&quot;;<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fps =3D=C2=A0 =C2=
=A0 =C2=A0&lt;&amp;pitft&gt;,&quot;fps:0&quot;;<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 debug =3D=C2=A0 =
=C2=A0&lt;&amp;pitft&gt;,&quot;debug:0&quot;;<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 };<br>
-+};<br>
---<br>
-1.9.1<br>
-<br>
diff --git a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.18.=
bb" rel=3D"noreferrer" target=3D"_blank">linux-raspberrypi_3.18.bb</a> b/re=
cipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.18.bb" rel=3D"nore=
ferrer" target=3D"_blank">linux-raspberrypi_3.18.bb</a><br>
deleted file mode 100644<br>
index b16a1d7..0000000<br>
--- a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.18.bb" rel=
=3D"noreferrer" target=3D"_blank">linux-raspberrypi_3.18.bb</a><br>
+++ /dev/null<br>
@@ -1,15 +0,0 @@<br>
-FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}-${PV}:&quot;<br>
-<br>
-LINUX_VERSION ?=3D &quot;3.18.16&quot;<br>
-PV =3D &quot;${LINUX_VERSION}+git${SRCPV}&quot;<br>
-<br>
-SRCREV =3D &quot;1bb18c8f721ef674a447f3622273f2e2de7a205c&quot;<br>
-SRC_URI =3D &quot;git://<a href=3D"http://github.com/raspberrypi/linux.git=
;protocol=3Dgit;branch=3Drpi-3.18.y" rel=3D"noreferrer" target=3D"_blank">g=
ithub.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-3.18.y</a> \<br=
>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0001-dts-add-overlay-for-p=
itft22.patch \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<br>
-require linux-raspberrypi.inc<br>
-<br>
-# Create missing out of tree &#39;overlays&#39; directory prior to install=
 step<br>
-do_compile_prepend() {<br>
-=C2=A0 mkdir -p ${B}/arch/arm/boot/dts/overlays<br>
-}<br>
--<br>
2.1.4<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--001a11c3d9fc17db4f0533ff2750--
