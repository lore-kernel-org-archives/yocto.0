Return-Path: <abhisit.sangjan@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50B15C41535
	for <webhook@archiver.kernel.org>; Tue, 19 Dec 2023 11:53:59 +0000 (UTC)
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com [209.85.160.194])
 by mx.groups.io with SMTP id smtpd.web11.10261.1702986836210812057
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Dec 2023 03:53:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=F/OhKXIE;
 spf=pass (domain: gmail.com, ip: 209.85.160.194, mailfrom: abhisit.sangjan@gmail.com)
Received: by mail-qt1-f194.google.com with SMTP id d75a77b69052e-425baafa3c3so38044531cf.0
        for <yocto@lists.yoctoproject.org>; Tue, 19 Dec 2023 03:53:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702986835; x=1703591635; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DJM7BFxbtgMTcEpMtA2+PYcwoDwPXHx6/Xjnx19LGTM=;
        b=F/OhKXIEDSFIx7n1IqaLsVDFQFy2ObvgyVbgiTVoesAhh7Zpe6iR7bTLqC00J6l3sF
         EGQID1lvWGeAiCcJyqw+ZuzeFImmKrIqRbMUCpy+la/jUIke7TDkR5LKLfJtYddCRhMA
         cfUVaWGI7JJ1Jin5KfYexiGEc1CHOsUPk7pdD7lHmF7cHsfLDGShUvKtcU48EP3tX7Uk
         JebOJxZrLNGVhbGZThpk+/gOEgUaqJIRpjWEC3+ybS41fYUxwxHJ5DCsvC1/aZ4NuB3p
         auotgwX27ewysJ8P5BSGTIQfHeXBw6/E+zjvg+s28L3hDnpLvHet/QWrtVUXkGJuAHAt
         kWFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702986835; x=1703591635;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DJM7BFxbtgMTcEpMtA2+PYcwoDwPXHx6/Xjnx19LGTM=;
        b=vlxN1R5E32LT4JecyqrHrcgTETEn+7XhD1MQRJr6eukMrx+gNqdsjyBHWVw/DUJ464
         w16D8/Pk1t4vWm5q8VaY9LfrloCOsDw19P/AFPiGkFUgVA+FYUSMSGKwizsWD+FqJDgC
         CWOxgbWGLzoxX/dncu8XbbTeWgbQVvXaqi7AlP+Vek7Kjgf/qqbm9tIfDTEuAeEJpkTm
         ESUTbBlx0iaNmVnVgFFTSEQiJgH8BPi/HVg2r/+Xhb55S7Y5pP5JhNgNs2aDZx+FVK8m
         r0Rw5Ev6TLmJRlCxFHZhp+CSds9B82yAIbOF95gOp9SXG3zE+UQlMKN5j1G8T4rjxtDa
         3Ylw==
X-Gm-Message-State: AOJu0YzCw2Fp8gGgSaXReAx5NK6nh23+CumeRKYpHU9BZSDlWFSLKwQA
	Dri9hyoujGfmK3bFB3LQM53khIrWYuJOcJiLFQk=
X-Google-Smtp-Source: AGHT+IG2DRD4p7eRRVQEd9MvYeUE1kFTycAvetMovHgjzSJPUHT6edSQzMNEOfzm2NAnBSE7BC6nclzvkzOvrt2VIC0=
X-Received: by 2002:ac8:5913:0:b0:425:4043:762e with SMTP id
 19-20020ac85913000000b004254043762emr25535328qty.86.1702986835089; Tue, 19
 Dec 2023 03:53:55 -0800 (PST)
MIME-Version: 1.0
References: <20231215153051.6848-1-abhisit.sangjan@gmail.com> <20231218233639.GA9815@localhost>
In-Reply-To: <20231218233639.GA9815@localhost>
From: Abhisit Sangjan <abhisit.sangjan@gmail.com>
Date: Tue, 19 Dec 2023 18:53:43 +0700
Message-ID: <CAFRgqKFm0cP2mWZtM_FqQa5SU-yrspVVkKXNSp_BLYKrY=vvMg@mail.gmail.com>
Subject: Re: [meta-rockchip] [PATCH] orange-pi-5-plus: Support Xunlong Orange
 Pi 5 Plus single-board computer
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000005cdd71060cdb856f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Dec 2023 11:53:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61981

--0000000000005cdd71060cdb856f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Trevor,

This patch is obsoleted, I have sent a new patch topic name 103260955
<https://lists.yoctoproject.org/g/yocto/topic/103260955?p=3D%2C%2C%2C20%2C0=
%2C0%2C0%3A%3Arecentpostdate%2C%2C%2C20%2C2%2C0%2C0%2Cprevid%253D1702986449=
899164660%2Cnextid%253D1702898248851399777&previd=3D1702986449899164660&nex=
tid=3D1702898248851399777&allview=3D1>
.

Have to merge when the u-boot version is 2024.01-rc5 or newer and the Linux
Kernel version is 6.7 or newer. Thanks, Abhisit.

On Tue, 19 Dec 2023 at 06:36, Trevor Woerner <twoerner@gmail.com> wrote:

> On Fri 2023-12-15 @ 10:30:51 PM, Abhisit Sangjan wrote:
> > Orange Pi 5 Plus is RK3588 based SBC featuring:
> > - 2x 2.5G ethernet ports =E2=80=93 onboard NIC hooked to PCIe 2.0 inter=
face
> > - 2x USB 2.0 host ports
> > - 2x USB 3.0 host ports (exposed over USB 3.0 hub)
> > - Type-C port featuring USB 2.0/3.0 and Alt-DP mode
> > - PCIe 2.0/USB 2.0/I2S/I2C/UART on E.KEY socket
> > - RTC
> > - ES8388 on-board sound codec =E2=80=93 jack in/out, onboard mic, speak=
er
> amplifier
> > - SPI NOR flash
> > - RGB LED (R is always on)
> > - IR receiver
> > - PCIe 3.0 on the bottom for NVMe, etc.
> > - 40pin GPIO header (with gpio, I2C, SPI, PWM, UART)
> > - Power, recovery and Mask ROM buttons
> > - 2x HDMI out, 1x HDMI in
> > - Slots/connectors for eMMC, uSD card, fan, MIPI CSI/DSI
> > - 4 GB, 8 GB, 16 GB and 32 GB of RAM
> >
> > Signed-off-by: Abhisit Sangjan <abhisit.sangjan@gmail.com>
> > ---
> >  README                                        |  3 ++-
> >  conf/machine/include/rk3588.inc               |  4 +---
> >  conf/machine/orange-pi-5-plus.conf            | 14 ++++++++++++++
> >  recipes-bsp/rkbin/rockchip-rkbin_git.bb       | 10 ++++++++++
> >  recipes-bsp/u-boot/u-boot%.bbappend           |  5 +++++
> >  recipes-bsp/u-boot/u-boot_2024.01.bb          |  5 +++++
> >  recipes-kernel/linux/linux-yocto-dev.bbappend |  5 +++++
> >  7 files changed, 42 insertions(+), 4 deletions(-)
> >  create mode 100644 conf/machine/orange-pi-5-plus.conf
> >  create mode 100644 recipes-bsp/u-boot/u-boot_2024.01.bb
> >
> > diff --git a/README b/README
> > index e5beaa0..4d1a83e 100644
> > --- a/README
> > +++ b/README
> > @@ -31,6 +31,7 @@ Status of supported boards:
> >               firefly-rk3288
> >               nanopi-r4s
> >               rock-5b
> > +             orange-pi-5-plus
> >               nanopi-r2s
> >               nanopi-m4b
> >               rock-pi-s
>
> The list is "sorted" from earliest inclusion in meta-rockchip to latest.
> Therefore the most recent addition should be added at the bottom of the
> list.
>
> > @@ -57,7 +58,7 @@ Notes:
> >       initializer from rkbin, simply set:
> >
> >               RKBIN_RK3308_LATEST =3D "1"
> > -
> > +
>
> Remove spurious edits.
>
> >       in the configuration (e.g. conf/local.conf).
> >
> >  Maintenance:
> > diff --git a/conf/machine/include/rk3588.inc
> b/conf/machine/include/rk3588.inc
> > index 34f0627..46ac2ba 100644
> > --- a/conf/machine/include/rk3588.inc
> > +++ b/conf/machine/include/rk3588.inc
> > @@ -1,6 +1,4 @@
> >  MACHINEOVERRIDES =3D. "rk3588:"
> >
> > -# the rk3588s is a "stripped-down" version of the rk3588
> > -# in the kernel's device-tree the rk3588 builds on top of the rk3588s
> > -# so anything that is valid for the rk3588s is valid for the rk3588
> > +# The rk3588 is a "full" version of the rk3588 series
> >  require conf/machine/include/rk3588s.inc
>
> You don't understand how we're using rk3588 and rk3588s in meta-rockchip.
> From
> meta-rockchip's point of view their the same so instead of having two
> identical include files, we simply reference one from the other. The
> comment
> was placed there on purpose to point this out to the user.
>
> > diff --git a/conf/machine/orange-pi-5-plus.conf
> b/conf/machine/orange-pi-5-plus.conf
> > new file mode 100644
> > index 0000000..a222c84
> > --- /dev/null
> > +++ b/conf/machine/orange-pi-5-plus.conf
> > @@ -0,0 +1,14 @@
> > +#@TYPE: Machine
> > +#@NAME: Xunlong Orange Pi 5 Plus
> > +#@DESCRIPTION: It is the 5th generation of single-board computer
> designed by Kunlong.
> > +#
> http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/details=
/Orange-Pi-5-plus-32GB.html
> > +
> > +require conf/machine/include/rk3588.inc
> > +
> > +PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto-dev"
> > +KERNEL_DEVICETREE =3D "rockchip/rk3588-orangepi-5-plus.dtb"
> > +MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
> > +
> > +UBOOT_MACHINE =3D "orangepi-5-plus-rk3588_defconfig"
> > +
> > +PREFERRED_VERSION_u-boot:orange-pi-5-plus =3D "2024.01"
>
> I would rather not introduce a new recipe just to remove it in a couple
> weeks.
> If orange-pi-5-plus needs u-boot 2024.1 then we can wait a couple weeks t=
o
> add
> it once oe-core's u-boot moves.
>
> > diff --git a/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> > index f1609c7..5573ad2 100644
> > --- a/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> > +++ b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> > @@ -14,6 +14,7 @@ S =3D "${WORKDIR}/git"
> >
> >  COMPATIBLE_MACHINE =3D "^$"
> >  COMPATIBLE_MACHINE:rk3308 =3D "rk3308"
> > +COMPATIBLE_MACHINE:rk3588 =3D "rk3588"
> >  COMPATIBLE_MACHINE:rk3588s =3D "rk3588s"
> >
> >  PACKAGE_ARCH =3D "${MACHINE_ARCH}"
> > @@ -35,6 +36,15 @@ do_deploy:rk3308() {
> >       install -m 644 ${S}/bin/rk33/rk3308_ddr_589MHz_uart?_m0_v*.bin
> ${DEPLOYDIR}/ddr-rk3308.bin
> >  }
> >
> > +do_deploy:rk3588() {
> > +     # Prebuilt TF-A
> > +     install -m 644 ${S}/bin/rk35/rk3588_bl31_v*.elf
> ${DEPLOYDIR}/bl31-rk3588.elf
> > +     # Prebuilt OPTEE-OS
> > +     install -m 644 ${S}/bin/rk35/rk3588_bl32_v*.bin
> ${DEPLOYDIR}/tee-rk3588.bin
> > +     # Prebuilt U-Boot TPL (DDR init)
> > +     install -m 644
> ${S}/bin/rk35/rk3588_ddr_lp4_2112MHz_lp5_2736MHz_v*.bin
> ${DEPLOYDIR}/ddr-rk3588.bin
> > +}
> > +
>
> Again, all of this is already handled so this is redundant.
>
> >  do_deploy:rk3588s() {
> >       # Prebuilt TF-A
> >       install -m 644 ${S}/bin/rk35/rk3588_bl31_v*.elf
> ${DEPLOYDIR}/bl31-rk3588.elf
> > diff --git a/recipes-bsp/u-boot/u-boot%.bbappend
> b/recipes-bsp/u-boot/u-boot%.bbappend
> > index d902c9a..afd3344 100644
> > --- a/recipes-bsp/u-boot/u-boot%.bbappend
> > +++ b/recipes-bsp/u-boot/u-boot%.bbappend
> > @@ -7,6 +7,10 @@ EXTRA_OEMAKE:append:px30 =3D "
> BL31=3D${DEPLOY_DIR_IMAGE}/bl31-px30.elf"
> >  EXTRA_OEMAKE:append:rk3308 =3D " BL31=3D${DEPLOY_DIR_IMAGE}/bl31-rk330=
8.elf"
> >  EXTRA_OEMAKE:append:rk3328 =3D " BL31=3D${DEPLOY_DIR_IMAGE}/bl31-rk332=
8.elf"
> >  EXTRA_OEMAKE:append:rk3399 =3D " BL31=3D${DEPLOY_DIR_IMAGE}/bl31-rk339=
9.elf"
> > +EXTRA_OEMAKE:append:rk3588 =3D " \
> > +     BL31=3D${DEPLOY_DIR_IMAGE}/bl31-rk3588.elf \
> > +     ROCKCHIP_TPL=3D${DEPLOY_DIR_IMAGE}/ddr-rk3588.bin \
> > +     "
> >  EXTRA_OEMAKE:append:rk3588s =3D " \
> >       BL31=3D${DEPLOY_DIR_IMAGE}/bl31-rk3588.elf \
> >       ROCKCHIP_TPL=3D${DEPLOY_DIR_IMAGE}/ddr-rk3588.bin \
> > @@ -17,6 +21,7 @@ INIT_FIRMWARE_DEPENDS:px30 =3D "
> trusted-firmware-a:do_deploy"
> >  INIT_FIRMWARE_DEPENDS:rk3308 =3D "
> ${@bb.utils.contains('RKBIN_RK3308_LATEST', '1', 'rockchip-rkbin',
> 'rk3308-rkbin', d)}:do_deploy"
> >  INIT_FIRMWARE_DEPENDS:rk3328 =3D " trusted-firmware-a:do_deploy"
> >  INIT_FIRMWARE_DEPENDS:rk3399 =3D " trusted-firmware-a:do_deploy"
> > +INIT_FIRMWARE_DEPENDS:rk3588 =3D " rockchip-rkbin:do_deploy"
> >  INIT_FIRMWARE_DEPENDS:rk3588s =3D " rockchip-rkbin:do_deploy"
> >  do_compile[depends] .=3D "${INIT_FIRMWARE_DEPENDS}"
> >
> > diff --git a/recipes-bsp/u-boot/u-boot_2024.01.bb b/recipes-bsp/u-boot/
> u-boot_2024.01.bb
> > new file mode 100644
> > index 0000000..cfa3a87
> > --- /dev/null
> > +++ b/recipes-bsp/u-boot/u-boot_2024.01.bb
> > @@ -0,0 +1,5 @@
> > +require recipes-bsp/u-boot/u-boot-common.inc
> > +require recipes-bsp/u-boot/u-boot.inc
> > +
> > +SRCREV:orange-pi-5-plus =3D "b51cf8bb09b67958fef9424f7c9fa202a4948c12"
> > +SRC_URI:orange-pi-5-plus =3D "git://
> source.denx.de/u-boot/u-boot.git;protocol=3Dhttps;branch=3Dmaster"
> > diff --git a/recipes-kernel/linux/linux-yocto-dev.bbappend
> b/recipes-kernel/linux/linux-yocto-dev.bbappend
> > index 419ebc1..bed6ed2 100644
> > --- a/recipes-kernel/linux/linux-yocto-dev.bbappend
> > +++ b/recipes-kernel/linux/linux-yocto-dev.bbappend
> > @@ -1,3 +1,8 @@
> >  FILESEXTRAPATHS:prepend :=3D "${THISDIR}/${PN}:"
> >  COMPATIBLE_MACHINE:rock-5b =3D "rock-5b"
> >  SRC_URI:append:rock-5b =3D "
> file://rockchip-kmeta;type=3Dkmeta;name=3Drockchip-kmeta;destsuffix=3Droc=
kchip-kmeta"
> > +
> > +KBRANCH:orange-pi-5-plus =3D "v6.7/standard/base"
> > +LINUX_VERSION:orange-pi-5-plus =3D "6.7"
> > +COMPATIBLE_MACHINE:orange-pi-5-plus =3D "orange-pi-5-plus"
> > +SRC_URI:append:orange-pi-5-plus =3D "
> file://rockchip-kmeta;type=3Dkmeta;name=3Drockchip-kmeta;destsuffix=3Droc=
kchip-kmeta"
> > --
> > 2.43.0
> >
>

--0000000000005cdd71060cdb856f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div id=3D"gmail-:ss" class=3D"gmail-Am gmail-aiL gmail-aO=
9 gmail-Al editable gmail-LW-avf gmail-tS-tW gmail-tS-tY" aria-label=3D"Mes=
sage Body" role=3D"textbox" aria-multiline=3D"true" tabindex=3D"1" style=3D=
"direction:ltr;min-height:85px" aria-controls=3D":v9" aria-expanded=3D"fals=
e">Hi Trevor,<br><br>This patch is obsoleted, I have sent <a href=3D"https:=
//lists.yoctoproject.org/g/yocto/topic/103260955?p=3D%2C%2C%2C20%2C0%2C0%2C=
0%3A%3Arecentpostdate%2C%2C%2C20%2C2%2C0%2C0%2Cprevid%253D17029864498991646=
60%2Cnextid%253D1702898248851399777&amp;previd=3D1702986449899164660&amp;ne=
xtid=3D1702898248851399777&amp;allview=3D1">a new patch topic name=C2=A0103=
260955</a>.<br><br><div>Have to merge when=C2=A0<span style=3D"color:rgb(51=
,51,51);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;f=
ont-size:14px">the u-boot version is 2024.01-rc5 or newer and the Linux Ker=
nel version is 6.7 or newer.

Thanks,
Abhisit.</span></div></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Tue, 19 Dec 2023 at 06:36, Trevor Woerner &lt=
;<a href=3D"mailto:twoerner@gmail.com">twoerner@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">On Fri 2023-12-15 =
@ 10:30:51 PM, Abhisit Sangjan wrote:<br>
&gt; Orange Pi 5 Plus is RK3588 based SBC featuring:<br>
&gt; - 2x 2.5G ethernet ports =E2=80=93 onboard NIC hooked to PCIe 2.0 inte=
rface<br>
&gt; - 2x USB 2.0 host ports<br>
&gt; - 2x USB 3.0 host ports (exposed over USB 3.0 hub)<br>
&gt; - Type-C port featuring USB 2.0/3.0 and Alt-DP mode<br>
&gt; - PCIe 2.0/USB 2.0/I2S/I2C/UART on E.KEY socket<br>
&gt; - RTC<br>
&gt; - ES8388 on-board sound codec =E2=80=93 jack in/out, onboard mic, spea=
ker amplifier<br>
&gt; - SPI NOR flash<br>
&gt; - RGB LED (R is always on)<br>
&gt; - IR receiver<br>
&gt; - PCIe 3.0 on the bottom for NVMe, etc.<br>
&gt; - 40pin GPIO header (with gpio, I2C, SPI, PWM, UART)<br>
&gt; - Power, recovery and Mask ROM buttons<br>
&gt; - 2x HDMI out, 1x HDMI in<br>
&gt; - Slots/connectors for eMMC, uSD card, fan, MIPI CSI/DSI<br>
&gt; - 4 GB, 8 GB, 16 GB and 32 GB of RAM<br>
&gt; <br>
&gt; Signed-off-by: Abhisit Sangjan &lt;<a href=3D"mailto:abhisit.sangjan@g=
mail.com" target=3D"_blank">abhisit.sangjan@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 README=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 |=C2=A0 3 ++-<br>
&gt;=C2=A0 conf/machine/include/rk3588.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 4 +---<br>
&gt;=C2=A0 conf/machine/orange-pi-5-plus.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 | 14 ++++++++++++++<br>
&gt;=C2=A0 recipes-bsp/rkbin/<a href=3D"http://rockchip-rkbin_git.bb" rel=
=3D"noreferrer" target=3D"_blank">rockchip-rkbin_git.bb</a>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0| 10 ++++++++++<br>
&gt;=C2=A0 recipes-bsp/u-boot/u-boot%.bbappend=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0|=C2=A0 5 +++++<br>
&gt;=C2=A0 recipes-bsp/u-boot/<a href=3D"http://u-boot_2024.01.bb" rel=3D"n=
oreferrer" target=3D"_blank">u-boot_2024.01.bb</a>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 |=C2=A0 5 +++++<br>
&gt;=C2=A0 recipes-kernel/linux/linux-yocto-dev.bbappend |=C2=A0 5 +++++<br=
>
&gt;=C2=A0 7 files changed, 42 insertions(+), 4 deletions(-)<br>
&gt;=C2=A0 create mode 100644 conf/machine/orange-pi-5-plus.conf<br>
&gt;=C2=A0 create mode 100644 recipes-bsp/u-boot/<a href=3D"http://u-boot_2=
024.01.bb" rel=3D"noreferrer" target=3D"_blank">u-boot_2024.01.bb</a><br>
&gt; <br>
&gt; diff --git a/README b/README<br>
&gt; index e5beaa0..4d1a83e 100644<br>
&gt; --- a/README<br>
&gt; +++ b/README<br>
&gt; @@ -31,6 +31,7 @@ Status of supported boards:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0firefly-rk3288<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0nanopi-r4s<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rock-5b<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0orange-pi-5-plus<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0nanopi-r2s<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0nanopi-m4b<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rock-pi-s<br>
<br>
The list is &quot;sorted&quot; from earliest inclusion in meta-rockchip to =
latest.<br>
Therefore the most recent addition should be added at the bottom of the lis=
t.<br>
<br>
&gt; @@ -57,7 +58,7 @@ Notes:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0initializer from rkbin, simply set:<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0RKBIN_RK3308_LAT=
EST =3D &quot;1&quot;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0<br>
&gt; +<br>
<br>
Remove spurious edits.<br>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0in the configuration (e.g. conf/local.conf).=
<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 Maintenance:<br>
&gt; diff --git a/conf/machine/include/rk3588.inc b/conf/machine/include/rk=
3588.inc<br>
&gt; index 34f0627..46ac2ba 100644<br>
&gt; --- a/conf/machine/include/rk3588.inc<br>
&gt; +++ b/conf/machine/include/rk3588.inc<br>
&gt; @@ -1,6 +1,4 @@<br>
&gt;=C2=A0 MACHINEOVERRIDES =3D. &quot;rk3588:&quot;<br>
&gt;=C2=A0 <br>
&gt; -# the rk3588s is a &quot;stripped-down&quot; version of the rk3588<br=
>
&gt; -# in the kernel&#39;s device-tree the rk3588 builds on top of the rk3=
588s<br>
&gt; -# so anything that is valid for the rk3588s is valid for the rk3588<b=
r>
&gt; +# The rk3588 is a &quot;full&quot; version of the rk3588 series<br>
&gt;=C2=A0 require conf/machine/include/rk3588s.inc<br>
<br>
You don&#39;t understand how we&#39;re using rk3588 and rk3588s in meta-roc=
kchip. From<br>
meta-rockchip&#39;s point of view their the same so instead of having two<b=
r>
identical include files, we simply reference one from the other. The commen=
t<br>
was placed there on purpose to point this out to the user.<br>
<br>
&gt; diff --git a/conf/machine/orange-pi-5-plus.conf b/conf/machine/orange-=
pi-5-plus.conf<br>
&gt; new file mode 100644<br>
&gt; index 0000000..a222c84<br>
&gt; --- /dev/null<br>
&gt; +++ b/conf/machine/orange-pi-5-plus.conf<br>
&gt; @@ -0,0 +1,14 @@<br>
&gt; +#@TYPE: Machine<br>
&gt; +#@NAME: Xunlong Orange Pi 5 Plus<br>
&gt; +#@DESCRIPTION: It is the 5th generation of single-board computer desi=
gned by Kunlong.<br>
&gt; +#<a href=3D"http://www.orangepi.org/html/hardWare/computerAndMicrocon=
trollers/details/Orange-Pi-5-plus-32GB.html" rel=3D"noreferrer" target=3D"_=
blank">http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/de=
tails/Orange-Pi-5-plus-32GB.html</a><br>
&gt; +<br>
&gt; +require conf/machine/include/rk3588.inc<br>
&gt; +<br>
&gt; +PREFERRED_PROVIDER_virtual/kernel =3D &quot;linux-yocto-dev&quot;<br>
&gt; +KERNEL_DEVICETREE =3D &quot;rockchip/rk3588-orangepi-5-plus.dtb&quot;=
<br>
&gt; +MACHINE_EXTRA_RRECOMMENDS +=3D &quot;kernel-modules&quot;<br>
&gt; +<br>
&gt; +UBOOT_MACHINE =3D &quot;orangepi-5-plus-rk3588_defconfig&quot;<br>
&gt; +<br>
&gt; +PREFERRED_VERSION_u-boot:orange-pi-5-plus =3D &quot;2024.01&quot;<br>
<br>
I would rather not introduce a new recipe just to remove it in a couple wee=
ks.<br>
If orange-pi-5-plus needs u-boot 2024.1 then we can wait a couple weeks to =
add<br>
it once oe-core&#39;s u-boot moves.<br>
<br>
&gt; diff --git a/recipes-bsp/rkbin/<a href=3D"http://rockchip-rkbin_git.bb=
" rel=3D"noreferrer" target=3D"_blank">rockchip-rkbin_git.bb</a> b/recipes-=
bsp/rkbin/<a href=3D"http://rockchip-rkbin_git.bb" rel=3D"noreferrer" targe=
t=3D"_blank">rockchip-rkbin_git.bb</a><br>
&gt; index f1609c7..5573ad2 100644<br>
&gt; --- a/recipes-bsp/rkbin/<a href=3D"http://rockchip-rkbin_git.bb" rel=
=3D"noreferrer" target=3D"_blank">rockchip-rkbin_git.bb</a><br>
&gt; +++ b/recipes-bsp/rkbin/<a href=3D"http://rockchip-rkbin_git.bb" rel=
=3D"noreferrer" target=3D"_blank">rockchip-rkbin_git.bb</a><br>
&gt; @@ -14,6 +14,7 @@ S =3D &quot;${WORKDIR}/git&quot;<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 COMPATIBLE_MACHINE =3D &quot;^$&quot;<br>
&gt;=C2=A0 COMPATIBLE_MACHINE:rk3308 =3D &quot;rk3308&quot;<br>
&gt; +COMPATIBLE_MACHINE:rk3588 =3D &quot;rk3588&quot;<br>
&gt;=C2=A0 COMPATIBLE_MACHINE:rk3588s =3D &quot;rk3588s&quot;<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 PACKAGE_ARCH =3D &quot;${MACHINE_ARCH}&quot;<br>
&gt; @@ -35,6 +36,15 @@ do_deploy:rk3308() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0install -m 644 ${S}/bin/rk33/rk3308_ddr_589M=
Hz_uart?_m0_v*.bin ${DEPLOYDIR}/ddr-rk3308.bin<br>
&gt;=C2=A0 }<br>
&gt;=C2=A0 <br>
&gt; +do_deploy:rk3588() {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0# Prebuilt TF-A<br>
&gt; +=C2=A0 =C2=A0 =C2=A0install -m 644 ${S}/bin/rk35/rk3588_bl31_v*.elf $=
{DEPLOYDIR}/bl31-rk3588.elf<br>
&gt; +=C2=A0 =C2=A0 =C2=A0# Prebuilt OPTEE-OS<br>
&gt; +=C2=A0 =C2=A0 =C2=A0install -m 644 ${S}/bin/rk35/rk3588_bl32_v*.bin $=
{DEPLOYDIR}/tee-rk3588.bin<br>
&gt; +=C2=A0 =C2=A0 =C2=A0# Prebuilt U-Boot TPL (DDR init)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0install -m 644 ${S}/bin/rk35/rk3588_ddr_lp4_2112M=
Hz_lp5_2736MHz_v*.bin ${DEPLOYDIR}/ddr-rk3588.bin<br>
&gt; +}<br>
&gt; +<br>
<br>
Again, all of this is already handled so this is redundant.<br>
<br>
&gt;=C2=A0 do_deploy:rk3588s() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0# Prebuilt TF-A<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0install -m 644 ${S}/bin/rk35/rk3588_bl31_v*.=
elf ${DEPLOYDIR}/bl31-rk3588.elf<br>
&gt; diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/=
u-boot%.bbappend<br>
&gt; index d902c9a..afd3344 100644<br>
&gt; --- a/recipes-bsp/u-boot/u-boot%.bbappend<br>
&gt; +++ b/recipes-bsp/u-boot/u-boot%.bbappend<br>
&gt; @@ -7,6 +7,10 @@ EXTRA_OEMAKE:append:px30 =3D &quot; BL31=3D${DEPLOY_D=
IR_IMAGE}/bl31-px30.elf&quot;<br>
&gt;=C2=A0 EXTRA_OEMAKE:append:rk3308 =3D &quot; BL31=3D${DEPLOY_DIR_IMAGE}=
/bl31-rk3308.elf&quot;<br>
&gt;=C2=A0 EXTRA_OEMAKE:append:rk3328 =3D &quot; BL31=3D${DEPLOY_DIR_IMAGE}=
/bl31-rk3328.elf&quot;<br>
&gt;=C2=A0 EXTRA_OEMAKE:append:rk3399 =3D &quot; BL31=3D${DEPLOY_DIR_IMAGE}=
/bl31-rk3399.elf&quot;<br>
&gt; +EXTRA_OEMAKE:append:rk3588 =3D &quot; \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0BL31=3D${DEPLOY_DIR_IMAGE}/bl31-rk3588.elf \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0ROCKCHIP_TPL=3D${DEPLOY_DIR_IMAGE}/ddr-rk3588.bin=
 \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0&quot;<br>
&gt;=C2=A0 EXTRA_OEMAKE:append:rk3588s =3D &quot; \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0BL31=3D${DEPLOY_DIR_IMAGE}/bl31-rk3588.elf \=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ROCKCHIP_TPL=3D${DEPLOY_DIR_IMAGE}/ddr-rk358=
8.bin \<br>
&gt; @@ -17,6 +21,7 @@ INIT_FIRMWARE_DEPENDS:px30 =3D &quot; trusted-firmwa=
re-a:do_deploy&quot;<br>
&gt;=C2=A0 INIT_FIRMWARE_DEPENDS:rk3308 =3D &quot; ${@bb.utils.contains(&#3=
9;RKBIN_RK3308_LATEST&#39;, &#39;1&#39;, &#39;rockchip-rkbin&#39;, &#39;rk3=
308-rkbin&#39;, d)}:do_deploy&quot;<br>
&gt;=C2=A0 INIT_FIRMWARE_DEPENDS:rk3328 =3D &quot; trusted-firmware-a:do_de=
ploy&quot;<br>
&gt;=C2=A0 INIT_FIRMWARE_DEPENDS:rk3399 =3D &quot; trusted-firmware-a:do_de=
ploy&quot;<br>
&gt; +INIT_FIRMWARE_DEPENDS:rk3588 =3D &quot; rockchip-rkbin:do_deploy&quot=
;<br>
&gt;=C2=A0 INIT_FIRMWARE_DEPENDS:rk3588s =3D &quot; rockchip-rkbin:do_deplo=
y&quot;<br>
&gt;=C2=A0 do_compile[depends] .=3D &quot;${INIT_FIRMWARE_DEPENDS}&quot;<br=
>
&gt;=C2=A0 <br>
&gt; diff --git a/recipes-bsp/u-boot/<a href=3D"http://u-boot_2024.01.bb" r=
el=3D"noreferrer" target=3D"_blank">u-boot_2024.01.bb</a> b/recipes-bsp/u-b=
oot/<a href=3D"http://u-boot_2024.01.bb" rel=3D"noreferrer" target=3D"_blan=
k">u-boot_2024.01.bb</a><br>
&gt; new file mode 100644<br>
&gt; index 0000000..cfa3a87<br>
&gt; --- /dev/null<br>
&gt; +++ b/recipes-bsp/u-boot/<a href=3D"http://u-boot_2024.01.bb" rel=3D"n=
oreferrer" target=3D"_blank">u-boot_2024.01.bb</a><br>
&gt; @@ -0,0 +1,5 @@<br>
&gt; +require recipes-bsp/u-boot/u-boot-common.inc<br>
&gt; +require recipes-bsp/u-boot/u-boot.inc<br>
&gt; +<br>
&gt; +SRCREV:orange-pi-5-plus =3D &quot;b51cf8bb09b67958fef9424f7c9fa202a49=
48c12&quot;<br>
&gt; +SRC_URI:orange-pi-5-plus =3D &quot;git://<a href=3D"http://source.den=
x.de/u-boot/u-boot.git;protocol=3Dhttps;branch=3Dmaster" rel=3D"noreferrer"=
 target=3D"_blank">source.denx.de/u-boot/u-boot.git;protocol=3Dhttps;branch=
=3Dmaster</a>&quot;<br>
&gt; diff --git a/recipes-kernel/linux/linux-yocto-dev.bbappend b/recipes-k=
ernel/linux/linux-yocto-dev.bbappend<br>
&gt; index 419ebc1..bed6ed2 100644<br>
&gt; --- a/recipes-kernel/linux/linux-yocto-dev.bbappend<br>
&gt; +++ b/recipes-kernel/linux/linux-yocto-dev.bbappend<br>
&gt; @@ -1,3 +1,8 @@<br>
&gt;=C2=A0 FILESEXTRAPATHS:prepend :=3D &quot;${THISDIR}/${PN}:&quot;<br>
&gt;=C2=A0 COMPATIBLE_MACHINE:rock-5b =3D &quot;rock-5b&quot;<br>
&gt;=C2=A0 SRC_URI:append:rock-5b =3D &quot; file://rockchip-kmeta;type=3Dk=
meta;name=3Drockchip-kmeta;destsuffix=3Drockchip-kmeta&quot;<br>
&gt; +<br>
&gt; +KBRANCH:orange-pi-5-plus =3D &quot;v6.7/standard/base&quot;<br>
&gt; +LINUX_VERSION:orange-pi-5-plus =3D &quot;6.7&quot;<br>
&gt; +COMPATIBLE_MACHINE:orange-pi-5-plus =3D &quot;orange-pi-5-plus&quot;<=
br>
&gt; +SRC_URI:append:orange-pi-5-plus =3D &quot; file://rockchip-kmeta;type=
=3Dkmeta;name=3Drockchip-kmeta;destsuffix=3Drockchip-kmeta&quot;<br>
&gt; -- <br>
&gt; 2.43.0<br>
&gt; <br>
</blockquote></div>

--0000000000005cdd71060cdb856f--

