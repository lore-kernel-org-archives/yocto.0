Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C75FE00B9D; Fri, 30 Jun 2017 07:45:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.180 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f180.google.com (mail-yb0-f180.google.com
	[209.85.213.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9701E00B28
	for <yocto@yoctoproject.org>; Fri, 30 Jun 2017 07:44:59 -0700 (PDT)
Received: by mail-yb0-f180.google.com with SMTP id 84so38909257ybe.0
	for <yocto@yoctoproject.org>; Fri, 30 Jun 2017 07:44:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=2O9V1jEjLFFnx0WMktwNtUHYZZ421NAw04rRzGJicj4=;
	b=ao4LDcEXfW03PMkX0XtOIp9aqh0jumIesiwZ0WlagxUgr7lHZLM4JrIMRtHoHvdEN4
	nJfVISACOBG3qoQStWJw7uzk67RhCBrOk3QzIGu83wT3NAjKPWMtqj6KzFhQ80/MQ1hL
	i2dYSgTOsMmsBz4BmqlEntpT17uEmao50Kh9KH2AA4HBUBqOuqTcTaZR7VFaP91g0moH
	mjef5VztMtSeBnZy5yURqmzN4hYha5Oi1VC65fqO5DhQwZZgtysPccxmQY+RJnodFKkT
	JHcSWrtQmYybrZm+YcoNGJvClGHDWQlEcqIBIH2rsTQwtQDKMdwvhpJ16x6aTxfL0v/g
	w7nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=2O9V1jEjLFFnx0WMktwNtUHYZZ421NAw04rRzGJicj4=;
	b=efSvdLY7x6E479DdXcldTdQ/9keTddMEI+U9dHSfWlCCyb+7s6YJZ5DByinnbRhvB7
	HhwkWAxRQ7/D1iKsL713KItWcE27oBM3fmRVV6bIx9hcvI2nV0JLXDYEQYZ50FgIzDR8
	1oYyaQSTWqnRySOzHj3izyhadXfIF8TNSp47oRXooX8TVudLz7gWN6y33QvTK3V3uWCM
	Gwpy+5XJdzAAxe244pRRqlmQ2faq3yVQXxvo9n8/i3jxnWhve3jQ1vAfS5iokn7HkGxy
	euq1cFNgMS2kr2j2RLU71WzRbpkIHILFbCMXrA8cXTAPKm6jl3YUkmDUWSqzVVug00WC
	//bQ==
X-Gm-Message-State: AKS2vOwdfuU37eMMYBvDk7FgN0ptqgN+xXTwOxJyzHwI5YKB8mw2l8dv
	QKDupq7SuJudr9uUmFndt+ocFa6qXw==
X-Received: by 10.37.172.67 with SMTP id r3mr17383484ybd.150.1498833898878;
	Fri, 30 Jun 2017 07:44:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.13.249.67 with HTTP; Fri, 30 Jun 2017 07:44:58 -0700 (PDT)
In-Reply-To: <OF1A8E1972.E4938C02-ONC125814F.004586D9-C125814F.004AAEF5@esa-grimma.de>
References: <OF1A8E1972.E4938C02-ONC125814F.004586D9-C125814F.004AAEF5@esa-grimma.de>
From: Andrea Galbusera <gizero@gmail.com>
Date: Fri, 30 Jun 2017 16:44:58 +0200
Message-ID: <CAC+thW2LnJhABap-We4UXmpMVBeRDA7xx9g14HbCq6d-MV3O4w@mail.gmail.com>
To: S.Jaritz@esa-grimma.de
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] How to add a own dts file and patch the dts makefile
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
X-List-Received-Date: Fri, 30 Jun 2017 14:45:03 -0000
Content-Type: multipart/alternative; boundary="f403045eb6b61ebf7305532e768f"

--f403045eb6b61ebf7305532e768f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Jun 30, 2017 at 3:35 PM, <S.Jaritz@esa-grimma.de> wrote:

> Hej
>
> It's friday and I have some time to play a bit around. I like to build a
> simple test-adapter using a RPi. I want to connect some of the 40GPIO pin=
s
> with a custom mainboard. For that I like to define the pin behaviour by a=
n
> own dts file.
>
> I created my own dts file (testboard.dts) + a simple patch for
> "arch/arm/boot/dts/Makefile" to add the file.
>
> For adding them into the build-process I am append the kernel build
> (linux-raspberrypi%.bbappend).
>
> Now I have problems bringing them together, because the name of the
> git/source links changes (git -> linux-raspberrypi2-standard-build/source
> ). Maybe some one has an idea?
>
> I put the listings of the files below:
>
> ########## linux-raspberrypi%.bbappend ##########
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>
> SRC_URI +=3D "file://testboard.dts;subdir=3Dlinux-raspberrypi2-standard-
> build/source/arch/arm/boot/dts \
>         file://0001-add-testboard-to-makefile.patch \
>         "
>

Why aren't you just crafting a patch that does both things? I mean adding
the .dts and changing Makefile in the same patch.


> PACKAGE_ARCH =3D "raspberrypi2"
>
> KERNEL_DEVICETREE +=3D "testboard.dtb"
> #############################################
>
> ########## 0001-add-testboard-to-makefile.patch ##########
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
>
> @@ -1,4 +1,8 @@
>  ifeq ($(CONFIG_OF),y)
> +
> +# my own dts files
> +dtb-$(CONFIG_ARCH_BCM2835) +=3D \
> +        testboard.dts
>
>  dtb-$(CONFIG_ARCH_BCM2835) +=3D \
>          bcm2708-rpi-b.dtb \
> #############################################
>
> ########## testboard.dts ##########
> /dts-v1/;
> #include "bcm2836.dtsi"
> #include "bcm2835-rpi.dtsi"
> #include "bcm283x-rpi-smsc9514.dtsi"
> #include "bcm283x-rpi-usb-host.dtsi"
>
> / {
>         compatible =3D "raspberrypi,2-model-b", "brcm,bcm2836";
>         model =3D "RPi test";
>
>         memory {
>                 reg =3D <0 0x40000000>;
>         };
>
>         leds {
>                 act {
>                         gpios =3D <&gpio 47 0>;
>                 };
>
>                 pwr {
>                         label =3D "PWR";
>                         gpios =3D <&gpio 35 0>;
>                         default-state =3D "keep";
>                         linux,default-trigger =3D "default-on";
>                 };
>         };
>
> };
>
> &gpio {
>         pinctrl-0 =3D <&gpioout &alt0 &i2s_alt0>;
>
>         /* I2S interface */
>         i2s_alt0: i2s_alt0 {
>                 brcm,pins =3D <18 19 20 21>;
>                 brcm,function =3D <BCM2835_FSEL_ALT0>;
>                 status =3D "disabled";
>         };
>
>         cord0: cord0 {
>                 brcm,pins =3D <5 6 25>;
>                 brcm,function =3D <BCM2835_FSEL_ALT2>;
>                 status =3D "okay";
>         };
>
> };
>
> &hdmi {
>         hpd-gpios =3D <&gpio 46 GPIO_ACTIVE_LOW>;
>         status =3D "disabled";
> };
> #############################################
>
> For that I put a question on stackoverflow:
> https://stackoverflow.com/questions/44702426/how-to-
> setup-an-own-device-tree-for-a-raspberrypi-in-yocto
>
> Regards form Germany!
>
> Stefan
>
> ------------------------------------------------------------
> ESA Elektroschaltanlagen Grimma GmbH
> Broner Ring 30
> 04668 Grimma
> Telefon: +49 3437 9211 181 <+49%203437%209211181>
> Telefax: +49 3437 9211 26 <+49%203437%20921126>
> E-Mail: s.jaritz@esa-grimma.de
> Internet: www.esa-grimma.de
>
>
> Gesch=C3=A4ftsf=C3=BChrer:
> Dipl.-Ing. J=C3=B6rg Gaitzsch
> J=C3=B6rg Reinker
>
> Sitz der Gesellschaft: Grimma
> Ust.-ID: DE 141784437
> Amtsgericht: Leipzig, HRB 5159
> Steuernummer: 238/108/00755
>
>
> Diese E-Mail enth=C3=A4lt vertrauliche und/oder rechtlich gesch=C3=BCtzte
> Informationen.
> Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=C3=BCmli=
ch
> erhalten
> haben, informieren Sie bitte sofort den Absender und l=C3=B6schen Sie die=
se
> Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser
> Mail
> ist nicht gestattet.
>
> This e-mail may contain confidential and/or privileged information. If yo=
u
> are
> not the intended recipient (or have received this e-mail in error) please
> notify the sender immediately and destroy this e-mail. Any unauthorized
> copying, disclosure or distribution of the material in this e-mail is
> strictly
> forbidden.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--f403045eb6b61ebf7305532e768f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div class=3D"gmail_extra"><br><div class=3D"gmail_quot=
e">On Fri, Jun 30, 2017 at 3:35 PM,  <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:S.Jaritz@esa-grimma.de" target=3D"_blank">S.Jaritz@esa-grimma.de</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><font size=3D"2" face=3D"sa=
ns-serif">Hej</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">It&#39;s friday and I have some ti=
me to
play a bit around. I like to build a simple test-adapter using a RPi. I
want to connect some of the 40GPIO pins with a custom mainboard. For that
I like to define the pin behaviour by an own dts file.</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">I created my own dts file (testboa=
rd.dts)
+ a simple patch for &quot;arch/arm/boot/dts/Makefile&quot; to add the
file.</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">For adding them into the build-pro=
cess
I am append the kernel build (linux-raspberrypi%.bbappend).</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">Now I have problems bringing them =
together,
because the name of the git/source links changes (git -&gt; </font><font si=
ze=3D"2" color=3D"blue" face=3D"sans-serif">linux-raspberrypi2-standard-<wb=
r>build/source</font><font size=3D"2" face=3D"sans-serif">
). Maybe some one has an idea?</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">I put the listings of the files be=
low:</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">########## linux-raspberrypi%.bbap=
pend
##########</font>
<br><font size=3D"2" face=3D"sans-serif">FILESEXTRAPATHS_prepend :=3D &quot=
;${THISDIR}/${PN}:&quot;</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">SRC_URI +=3D &quot;</font><a><font=
 size=3D"2" color=3D"blue" face=3D"sans-serif">file://</font><font size=3D"=
2" face=3D"sans-serif">testboard</font><font size=3D"2" color=3D"blue" face=
=3D"sans-serif">.dts;subdir=3D<wbr>linux-raspberrypi2-standard-<wbr>build/s=
ource/arch/arm/boot/dts</font></a><font size=3D"2" face=3D"sans-serif">
\</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 </font=
><a><font size=3D"2" color=3D"blue" face=3D"sans-serif">file://0001-add-</f=
ont><font size=3D"2" face=3D"sans-serif">testboard</font><font size=3D"2" c=
olor=3D"blue" face=3D"sans-serif">-to-<wbr>makefile.patch</font></a><font s=
ize=3D"2" face=3D"sans-serif">
\</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;=
</font>
<br></blockquote><div><br></div><div>Why aren&#39;t you just crafting a pat=
ch that does both things? I mean adding the .dts and changing Makefile in t=
he same patch.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><font s=
ize=3D"2" face=3D"sans-serif">PACKAGE_ARCH =3D &quot;raspberrypi2&quot;</fo=
nt>
<br>
<br><font size=3D"2" face=3D"sans-serif">KERNEL_DEVICETREE +=3D &quot;testb=
oard.dtb&quot;</font>
<br><font size=3D"2" face=3D"sans-serif">##############################<wbr=
>###############</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">########## </font><font size=3D"2"=
 color=3D"blue" face=3D"sans-serif">0001-add-</font><font size=3D"2" face=
=3D"sans-serif">testboard</font><font size=3D"2" color=3D"blue" face=3D"san=
s-serif">-to-<wbr>makefile.patch</font><font size=3D"2" face=3D"sans-serif"=
>
##########</font>
<br><font size=3D"2" face=3D"sans-serif">--- a/arch/arm/boot/dts/Makefile</=
font>
<br><font size=3D"2" face=3D"sans-serif">+++ b/arch/arm/boot/dts/Makefile</=
font>
<br>
<br><font size=3D"2" face=3D"sans-serif">@@ -1,4 +1,8 @@</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0ifeq ($(CONFIG_OF),y)</font>
<br><font size=3D"2" face=3D"sans-serif">+</font>
<br><font size=3D"2" face=3D"sans-serif">+# my own dts files</font>
<br><font size=3D"2" face=3D"sans-serif">+dtb-$(CONFIG_ARCH_BCM2835) +=3D \=
</font>
<br><font size=3D"2" face=3D"sans-serif">+ =C2=A0 =C2=A0 =C2=A0 =C2=A0testb=
oard.dts</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0dtb-$(CONFIG_ARCH_BCM2835) +=
=3D
\</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
bcm2708-rpi-b.dtb
\</font>
<br><font size=3D"2" face=3D"sans-serif">##############################<wbr=
>###############</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">########## testboard.dts #########=
#</font>
<br><font size=3D"2" face=3D"sans-serif">/dts-v1/;</font>
<br><font size=3D"2" face=3D"sans-serif">#include &quot;bcm2836.dtsi&quot;<=
/font>
<br><font size=3D"2" face=3D"sans-serif">#include &quot;bcm2835-rpi.dtsi&qu=
ot;</font>
<br><font size=3D"2" face=3D"sans-serif">#include &quot;bcm283x-rpi-smsc951=
4.dtsi&quot;</font>
<br><font size=3D"2" face=3D"sans-serif">#include &quot;bcm283x-rpi-usb-hos=
t.dtsi&quot;</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">/ {</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 compat=
ible
=3D &quot;raspberrypi,2-model-b&quot;, &quot;brcm,bcm2836&quot;;</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 model
=3D &quot;RPi test&quot;;</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 memory
{</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
=C2=A0 =C2=A0 =C2=A0 reg =3D &lt;0 0x40000000&gt;;</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 };</fo=
nt>
<br>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 leds
{</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
=C2=A0 =C2=A0 =C2=A0 act {</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 gpios
=3D &lt;&amp;gpio 47 0&gt;;</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
=C2=A0 =C2=A0 =C2=A0 };</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
=C2=A0 =C2=A0 =C2=A0 pwr {</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 label
=3D &quot;PWR&quot;;</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 gpios
=3D &lt;&amp;gpio 35 0&gt;;</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 default-state
=3D &quot;keep&quot;;</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 linux,default-trigger
=3D &quot;default-on&quot;;</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
=C2=A0 =C2=A0 =C2=A0 };</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 };</fo=
nt>
<br>
<br><font size=3D"2" face=3D"sans-serif">};</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">&amp;gpio {</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 pinctr=
l-0
=3D &lt;&amp;gpioout &amp;alt0 &amp;i2s_alt0&gt;;</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 /*
I2S interface */</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 i2s_al=
t0:
i2s_alt0 {</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
=C2=A0 =C2=A0 =C2=A0 brcm,pins =3D &lt;18 19 20 21&gt;;</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
=C2=A0 =C2=A0 =C2=A0 brcm,function =3D &lt;BCM2835_FSEL_ALT0&gt;;</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
=C2=A0 =C2=A0 =C2=A0 status =3D &quot;disabled&quot;;</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 };</fo=
nt>
<br>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 cord0:
cord0 {</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
=C2=A0 =C2=A0 =C2=A0 brcm,pins =3D &lt;5 6 25&gt;;</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
=C2=A0 =C2=A0 =C2=A0 brcm,function =3D &lt;BCM2835_FSEL_ALT2&gt;;</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
=C2=A0 =C2=A0 =C2=A0 status =3D &quot;okay&quot;;</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 };</fo=
nt>
<br>
<br><font size=3D"2" face=3D"sans-serif">};</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">&amp;hdmi {</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 hpd-gp=
ios
=3D &lt;&amp;gpio 46 GPIO_ACTIVE_LOW&gt;;</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 status
=3D &quot;disabled&quot;;</font>
<br><font size=3D"2" face=3D"sans-serif">};</font>
<br><font size=3D"2" face=3D"sans-serif">##############################<wbr=
>###############</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">For that I put a question on stack=
overflow:<br>
</font><a href=3D"https://stackoverflow.com/questions/44702426/how-to-setup=
-an-own-device-tree-for-a-raspberrypi-in-yocto" target=3D"_blank"><font siz=
e=3D"2" color=3D"blue" face=3D"sans-serif">https://stackoverflow.com/<wbr>q=
uestions/44702426/how-to-<wbr>setup-an-own-device-tree-for-<wbr>a-raspberry=
pi-in-yocto</font></a>
<br>
<br><font size=3D"2" face=3D"sans-serif">Regards form Germany!</font>
<br><font size=3D"2" face=3D"sans-serif"><br>
Stefan<br>
<br>
------------------------------<wbr>------------------------------<br>
ESA Elektroschaltanlagen Grimma GmbH<br>
Broner Ring 30<br>
04668 Grimma<br>
Telefon: <a href=3D"tel:+49%203437%209211181" value=3D"+4934379211181" targ=
et=3D"_blank">+49 3437 9211 181</a><br>
Telefax: <a href=3D"tel:+49%203437%20921126" value=3D"+493437921126" target=
=3D"_blank">+49 3437 9211 26</a><br>
E-Mail: <a href=3D"mailto:s.jaritz@esa-grimma.de" target=3D"_blank">s.jarit=
z@esa-grimma.de</a><br>
Internet: </font><a href=3D"http://www.esa-grimma.de" target=3D"_blank"><fo=
nt size=3D"2" face=3D"sans-serif">www.esa-grimma.de</font></a><font size=3D=
"2" face=3D"sans-serif"><br>
<br>
<br>
Gesch=C3=A4ftsf=C3=BChrer:<br>
Dipl.-Ing. J=C3=B6rg Gaitzsch<br>
J=C3=B6rg Reinker<br>
<br>
Sitz der Gesellschaft: Grimma<br>
Ust.-ID: DE 141784437<br>
Amtsgericht: Leipzig, HRB 5159<br>
Steuernummer: 238/108/00755<br>
<br>
<br>
Diese E-Mail enth=C3=A4lt vertrauliche und/oder rechtlich gesch=C3=BCtzte I=
nformationen.
<br>
Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=C3=BCmlich
erhalten <br>
haben, informieren Sie bitte sofort den Absender und l=C3=B6schen Sie diese
<br>
Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser
Mail <br>
ist nicht gestattet.<br>
<br>
This e-mail may contain confidential and/or privileged information. If
you are <br>
not the intended recipient (or have received this e-mail in error) please
<br>
notify the sender immediately and destroy this e-mail. Any unauthorized
<br>
copying, disclosure or distribution of the material in this e-mail is stric=
tly
<br>
forbidden.</font><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div></div>

--f403045eb6b61ebf7305532e768f--
