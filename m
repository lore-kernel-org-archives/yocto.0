Return-Path: <schonm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01D35C8303C
	for <webhook@archiver.kernel.org>; Mon,  7 Jul 2025 10:45:19 +0000 (UTC)
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
 by mx.groups.io with SMTP id smtpd.web10.57029.1751885118294531679
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Jul 2025 03:45:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YclP1ihV;
 spf=pass (domain: gmail.com, ip: 209.85.161.44, mailfrom: schonm@gmail.com)
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-611e455116aso2276026eaf.1
        for <yocto@lists.yoctoproject.org>; Mon, 07 Jul 2025 03:45:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751885117; x=1752489917; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZV7a79Fj7E3dxHMUXAuMzI7WzGpHOhQsMWJgodp5XZQ=;
        b=YclP1ihVY+cv5llB1VWQcWAMC7CWRe0ftEcf91su1MKZ5AmSK//S3oc3+1pm3QaKwV
         F1q4oERu6jJKs8anv5pfrrW6yTsopwjewlTNeDIGrlRFHWqrVPZTrA3kYi5G9mYd/P32
         uASHdH+vIg9fW0sqUeaWcOgdUL6p7sDvLjZ1muGpNTP3xwLcp2brYFJoStJZLDhQxj6R
         til++RXGfWhLlT0fjOyKPTQoqEjyxQc8ma6F1v4LDmXjmGvejBHgnokQzS/30I8gCe/G
         GiSwVqG71oIXNetV5UAAt7gOIAG4T18f8V8gWqNjsPbFPfVkbA/OBflc7vd0H2lhsFVE
         pY+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751885117; x=1752489917;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZV7a79Fj7E3dxHMUXAuMzI7WzGpHOhQsMWJgodp5XZQ=;
        b=ckQkPQuM0vSP9CbbNUJOcnto2CVHLhhH4kw6EU0GoeJAOuZP6KSlNciMDRubevYeb6
         dfnxKGLMAOz9dyuo3sKEuRSIPil1dFPQ2D7zWFEAoQHYb3y32t1LJQoYyjO/mcEPOmLk
         e2kl7ClHfkMBZaSyfJmbysUFm4aLiEeINAxr6+qDDYh3BRNSKEQDxTSEKNDxhC6RW3op
         9cIUZ2brx0T45fLwRVwBkvHG6nPul3fAerTvlLif4QEoT6/aQdc4x2eBwxT4Xz00p/zr
         L/6FQGJuy3k7ql8AWqbABpIvGCNuqoq8xe5bTizgbfMB/moJsEtoM/OQfvteDOObE10G
         D9uA==
X-Gm-Message-State: AOJu0YxgUBQMS5AAdIGgLD83c1WK5M4v//q78h5kAoGhghjvkijfD5PG
	hSkMu8YaU5w0wBNT0uyCsdSk2CbDkZAlPJD6UQN8b8BJ5I91Es/lj5SJcBL24Xnoi9c9+C6fCkk
	Ts3Mlm/jFksbq7GMPB3waiDK4eHrSkBs=
X-Gm-Gg: ASbGncv87T/8ojJ3tPOLENYtf+eq3EVdpEoFfy8eR3dJORTNngiTvNZ6ywIX70MSrGL
	GxTBHA6zUW5vmLsOVuVU5xZQwYKComDYEasIbwTNIL63Llt+7QDWfC2I3fRDUAqtMHeIIaMOEW9
	xZgBvyXl3xUqILZ6QpRIfblEWmrLI9LwqCFIV6byZeAg==
X-Google-Smtp-Source: AGHT+IGybiTbv/4cTVJlhF+Cl4sXT/2eNWPQb4ZIWanx6gf3u9xa33mlFuQQHpBIWH9e09HZtm9ynjDGXkSXyhd+7qw=
X-Received: by 2002:a05:6820:201b:b0:611:b24d:c27b with SMTP id
 006d021491bc7-61392bdb6a7mr7599100eaf.7.1751885116886; Mon, 07 Jul 2025
 03:45:16 -0700 (PDT)
MIME-Version: 1.0
References: <20250706213926.1813828-2-schonm@gmail.com> <20250706213926.1813828-4-schonm@gmail.com>
 <6A1170A0-B8F2-413E-8FDA-7D045A2DC6A3@arm.com>
In-Reply-To: <6A1170A0-B8F2-413E-8FDA-7D045A2DC6A3@arm.com>
From: "J. S." <schonm@gmail.com>
Date: Mon, 7 Jul 2025 06:45:06 -0400
X-Gm-Features: Ac12FXwLynCe32ddsQzW7mUdJqeDCbPk1OgmgZtftDntVBRHgjALKQS6BcTcLIs
Message-ID: <CABTo8gBaAcr5s5-9EGCMrhVXBRqTgefi59ZCzDHBx4SndpJi=w@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi][PATCH 2/3] Changes to S as requried by oe-core
To: Ross Burton <Ross.Burton@arm.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Jul 2025 10:45:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65621

Ross,

Apologies if I sent it to the wrong list.  I followed the
documentation link at the bottom of
https://github.com/agherzan/meta-raspberrypi?tab=3Dreadme-ov-file that
took me to https://meta-raspberrypi.readthedocs.io/en/latest/contributing.h=
tml

That seemed to suggest that patches should be sent to
yocto@lists.yoctoproject.org

I will repost my patches to yocto-patches.

Thanks,
Jason Schonberg

On Mon, Jul 7, 2025 at 5:16=E2=80=AFAM Ross Burton <Ross.Burton@arm.com> wr=
ote:
>
> As per the README, these patches should go to yocto-patches@lists.yoctopr=
oject.org.
>
> Ross
>
> > On 6 Jul 2025, at 22:29, J. S. via lists.yoctoproject.org <schonm=3Dgma=
il.com@lists.yoctoproject.org> wrote:
> >
> > S dropped from git recipes.
> >
> > WORKDIR replaced with UNPACKDIR as suggested by oe-core commit 0ad5fb34=
31b5f5875326d929442124a8fabe0642
> >
> > I.E.
> >
> > sed -i "/^S =3D \"\${WORKDIR}\/git\"/d" `find . -name *.bb -o -name *.i=
nc -o -name *.bbclass`
> >
> > followed by this:
> >
> > sed -i "s/^S =3D \"\${WORKDIR}\//S =3D \"\${UNPACKDIR}\//g" `find . -na=
me *.bb -o -name *.inc -o -name *.bbclass`
> >
> > Signed-off-by: Jason Schonberg <schonm@gmail.com>
> > ---
> > .../recipes-multimedia/libcamera-apps/libcamera-apps_git.bb     | 1 -
> > .../recipes-multimedia/rpidistro-vlc/rpidistro-vlc_3.0.17.bb    | 1 -
> > .../recipes-devtools/python/python3-adafruit-blinka_6.2.2.bb    | 1 -
> > .../python/python3-adafruit-circuitpython-busdevice_5.0.5.bb    | 1 -
> > .../python/python3-adafruit-circuitpython-motor_3.2.6.bb        | 1 -
> > .../python/python3-adafruit-circuitpython-motorkit_1.6.1.bb     | 1 -
> > .../python/python3-adafruit-circuitpython-pca9685_3.3.4.bb      | 1 -
> > recipes-bsp/bootfiles/rpi-config_git.bb                         | 1 -
> > recipes-bsp/rpi-eeprom/rpi-eeprom_git.bb                        | 1 -
> > recipes-bsp/rpi-u-boot-scr/rpi-u-boot-scr.bb                    | 2 +-
> > recipes-connectivity/pi-bluetooth/pi-bluetooth_0.1.17.bb        | 1 -
> > recipes-core/udev/udev-rules-rpi.bb                             | 1 -
> > recipes-devtools/pi-blaster/pi-blaster_git.bb                   | 1 -
> > .../python/python3-adafruit-circuitpython-register_1.9.10.bb    | 1 -
> > .../python/python3-adafruit-platformdetect_3.27.0.bb            | 1 -
> > recipes-devtools/python/python3-adafruit-pureio_1.1.9.bb        | 1 -
> > recipes-devtools/python/python3-rtimu_7.2.1.bb                  | 2 +-
> > recipes-devtools/python/rpio_0.10.1.bb                          | 1 -
> > recipes-devtools/raspi-gpio/raspi-gpio_git.bb                   | 1 -
> > recipes-devtools/raspi-utils/raspi-utils_git.bb                 | 1 -
> > recipes-graphics/raspidmx/raspidmx_git.bb                       | 1 -
> > recipes-graphics/userland/userland_git.bb                       | 1 -
> > .../bluez-firmware-rpidistro/bluez-firmware-rpidistro_git.bb    | 1 -
> > .../linux-firmware-rpidistro/linux-firmware-rpidistro_git.bb    | 1 -
> > recipes-multimedia/omxplayer/omxplayer_git.bb                   | 1 -
> > recipes-multimedia/python3-picamera/python3-picamera_git.bb     | 1 -
> > recipes-multimedia/rpidistro-ffmpeg/rpidistro-ffmpeg_5.1.4.bb   | 1 -
> > 27 files changed, 2 insertions(+), 27 deletions(-)
> >
> > diff --git a/dynamic-layers/multimedia-layer/recipes-multimedia/libcame=
ra-apps/libcamera-apps_git.bb b/dynamic-layers/multimedia-layer/recipes-mul=
timedia/libcamera-apps/libcamera-apps_git.bb
> > index dc07145..343004f 100644
> > --- a/dynamic-layers/multimedia-layer/recipes-multimedia/libcamera-apps=
/libcamera-apps_git.bb
> > +++ b/dynamic-layers/multimedia-layer/recipes-multimedia/libcamera-apps=
/libcamera-apps_git.bb
> > @@ -15,7 +15,6 @@ SRC_URI =3D "\
> > PV =3D "1.4.2+git${SRCPV}"
> > SRCREV =3D "9ae39f85ae6bee9761c36b9b5b80d675bc1fa369"
> >
> > -S =3D "${WORKDIR}/git"
> >
> > DEPENDS =3D "libcamera libexif jpeg tiff libpng boost"
> >
> > diff --git a/dynamic-layers/multimedia-layer/recipes-multimedia/rpidist=
ro-vlc/rpidistro-vlc_3.0.17.bb b/dynamic-layers/multimedia-layer/recipes-mu=
ltimedia/rpidistro-vlc/rpidistro-vlc_3.0.17.bb
> > index 2007201..8f61c2a 100644
> > --- a/dynamic-layers/multimedia-layer/recipes-multimedia/rpidistro-vlc/=
rpidistro-vlc_3.0.17.bb
> > +++ b/dynamic-layers/multimedia-layer/recipes-multimedia/rpidistro-vlc/=
rpidistro-vlc_3.0.17.bb
> > @@ -32,7 +32,6 @@ SRC_URI =3D "\
> >
> > SRCREV =3D "b276eb0d7bc3213363e97dbb681ef7c927be6c73"
> >
> > -S =3D "${WORKDIR}/git"
> >
> > PROVIDES =3D "vlc"
> > RPROVIDES:${PN} =3D "${PROVIDES}"
> > diff --git a/dynamic-layers/openembedded-layer/recipes-devtools/python/=
python3-adafruit-blinka_6.2.2.bb b/dynamic-layers/openembedded-layer/recipe=
s-devtools/python/python3-adafruit-blinka_6.2.2.bb
> > index 9e1e357..cf9c1af 100644
> > --- a/dynamic-layers/openembedded-layer/recipes-devtools/python/python3=
-adafruit-blinka_6.2.2.bb
> > +++ b/dynamic-layers/openembedded-layer/recipes-devtools/python/python3=
-adafruit-blinka_6.2.2.bb
> > @@ -6,7 +6,6 @@ LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D660e614bc7ef=
b0697cc793d8a22a55c2"
> > SRC_URI =3D "git://github.com/adafruit/Adafruit_Blinka.git;branch=3Dmai=
n;protocol=3Dhttps"
> > SRCREV =3D "dc688f354fe779c9267c208b99f310af87e79272"
> >
> > -S =3D "${WORKDIR}/git"
> >
> > inherit setuptools3
> >
> > diff --git a/dynamic-layers/openembedded-layer/recipes-devtools/python/=
python3-adafruit-circuitpython-busdevice_5.0.5.bb b/dynamic-layers/openembe=
dded-layer/recipes-devtools/python/python3-adafruit-circuitpython-busdevice=
_5.0.5.bb
> > index 93491d4..52db8b1 100644
> > --- a/dynamic-layers/openembedded-layer/recipes-devtools/python/python3=
-adafruit-circuitpython-busdevice_5.0.5.bb
> > +++ b/dynamic-layers/openembedded-layer/recipes-devtools/python/python3=
-adafruit-circuitpython-busdevice_5.0.5.bb
> > @@ -6,7 +6,6 @@ LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D6ec69d6e9e6c=
85adfb7799d7f8cf044e"
> > SRC_URI =3D "git://github.com/adafruit/Adafruit_CircuitPython_BusDevice=
.git;branch=3Dmain;protocol=3Dhttps"
> > SRCREV =3D "1bfe8005293205e2f7b2cc498ab5a946f1133b40"
> >
> > -S =3D "${WORKDIR}/git"
> >
> > inherit setuptools3
> >
> > diff --git a/dynamic-layers/openembedded-layer/recipes-devtools/python/=
python3-adafruit-circuitpython-motor_3.2.6.bb b/dynamic-layers/openembedded=
-layer/recipes-devtools/python/python3-adafruit-circuitpython-motor_3.2.6.b=
b
> > index 3233c8f..c568504 100644
> > --- a/dynamic-layers/openembedded-layer/recipes-devtools/python/python3=
-adafruit-circuitpython-motor_3.2.6.bb
> > +++ b/dynamic-layers/openembedded-layer/recipes-devtools/python/python3=
-adafruit-circuitpython-motor_3.2.6.bb
> > @@ -6,7 +6,6 @@ LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3Db72678307cc7=
c10910b5ef460216af07"
> > SRC_URI =3D "git://github.com/adafruit/Adafruit_CircuitPython_Motor.git=
;branch=3Dmain;protocol=3Dhttps"
> > SRCREV =3D "2251bfc0501d0acfb96c0a43f4f2b4c6a10ca14e"
> >
> > -S =3D "${WORKDIR}/git"
> >
> > inherit setuptools3
> >
> > diff --git a/dynamic-layers/openembedded-layer/recipes-devtools/python/=
python3-adafruit-circuitpython-motorkit_1.6.1.bb b/dynamic-layers/openembed=
ded-layer/recipes-devtools/python/python3-adafruit-circuitpython-motorkit_1=
.6.1.bb
> > index 39fe76a..4de6462 100644
> > --- a/dynamic-layers/openembedded-layer/recipes-devtools/python/python3=
-adafruit-circuitpython-motorkit_1.6.1.bb
> > +++ b/dynamic-layers/openembedded-layer/recipes-devtools/python/python3=
-adafruit-circuitpython-motorkit_1.6.1.bb
> > @@ -6,7 +6,6 @@ LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D6ad4a8854b39=
ad474755ef1aea813bac"
> > SRC_URI =3D "git://github.com/adafruit/Adafruit_CircuitPython_MotorKit.=
git;branch=3Dmain;protocol=3Dhttps"
> > SRCREV =3D "8c1462b4129b21f6db156d1517abb017bb74b982"
> >
> > -S =3D "${WORKDIR}/git"
> >
> > inherit setuptools3
> >
> > diff --git a/dynamic-layers/openembedded-layer/recipes-devtools/python/=
python3-adafruit-circuitpython-pca9685_3.3.4.bb b/dynamic-layers/openembedd=
ed-layer/recipes-devtools/python/python3-adafruit-circuitpython-pca9685_3.3=
.4.bb
> > index f7f0ff1..1da4c3f 100644
> > --- a/dynamic-layers/openembedded-layer/recipes-devtools/python/python3=
-adafruit-circuitpython-pca9685_3.3.4.bb
> > +++ b/dynamic-layers/openembedded-layer/recipes-devtools/python/python3=
-adafruit-circuitpython-pca9685_3.3.4.bb
> > @@ -6,7 +6,6 @@ LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3De7eb6b599fb0=
cfb06485c64cd4242f62"
> > SRC_URI =3D "git://github.com/adafruit/Adafruit_CircuitPython_PCA9685.g=
it;branch=3Dmain;protocol=3Dhttps"
> > SRCREV =3D "2780c4102f4c23fbab252aa1198b61ba7e2d1b2c"
> >
> > -S =3D "${WORKDIR}/git"
> >
> > inherit setuptools3
> >
> > diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/boot=
files/rpi-config_git.bb
> > index 0140f30..d39621c 100644
> > --- a/recipes-bsp/bootfiles/rpi-config_git.bb
> > +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
> > @@ -12,7 +12,6 @@ SRC_URI =3D "git://github.com/Evilpaul/RPi-config.git=
;protocol=3Dhttps;branch=3Dmaster
> >            file://0001-config.txt-reintroduce-start_x.patch \
> >           "
> >
> > -S =3D "${WORKDIR}/git"
> >
> > PR =3D "r5"
> >
> > diff --git a/recipes-bsp/rpi-eeprom/rpi-eeprom_git.bb b/recipes-bsp/rpi=
-eeprom/rpi-eeprom_git.bb
> > index f3ca5e3..ef8c2af 100644
> > --- a/recipes-bsp/rpi-eeprom/rpi-eeprom_git.bb
> > +++ b/recipes-bsp/rpi-eeprom/rpi-eeprom_git.bb
> > @@ -11,7 +11,6 @@ SRC_URI =3D " \
> > SRCREV =3D "1bd0a1052b2e74d7af04de18d30b5edb12d8a423"
> > PV =3D "v2025.03.10-2712"
> >
> > -S =3D "${WORKDIR}/git"
> >
> > RDEPENDS:${PN} +=3D " \
> >     coreutils \
> > diff --git a/recipes-bsp/rpi-u-boot-scr/rpi-u-boot-scr.bb b/recipes-bsp=
/rpi-u-boot-scr/rpi-u-boot-scr.bb
> > index d035d6e..81b5d08 100644
> > --- a/recipes-bsp/rpi-u-boot-scr/rpi-u-boot-scr.bb
> > +++ b/recipes-bsp/rpi-u-boot-scr/rpi-u-boot-scr.bb
> > @@ -21,7 +21,7 @@ do_compile() {
> >
> > inherit kernel-arch deploy nopackages
> >
> > -S =3D "${WORKDIR}/sources"
> > +S =3D "${UNPACKDIR}/sources"
> > UNPACKDIR =3D "${S}"
> >
> > do_deploy() {
> > diff --git a/recipes-connectivity/pi-bluetooth/pi-bluetooth_0.1.17.bb b=
/recipes-connectivity/pi-bluetooth/pi-bluetooth_0.1.17.bb
> > index 1c3daff..3f25f15 100644
> > --- a/recipes-connectivity/pi-bluetooth/pi-bluetooth_0.1.17.bb
> > +++ b/recipes-connectivity/pi-bluetooth/pi-bluetooth_0.1.17.bb
> > @@ -12,7 +12,6 @@ SRC_URI =3D "\
> > "
> > SRCREV =3D "fd4775bf90e037551532fc214a958074830bb80d"
> >
> > -S =3D "${WORKDIR}/git"
> >
> > inherit ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd', '=
update-rc.d', d)}
> > # hciuart.service replaces what was brcm43438.service
> > diff --git a/recipes-core/udev/udev-rules-rpi.bb b/recipes-core/udev/ud=
ev-rules-rpi.bb
> > index 3ca34f4..d898deb 100644
> > --- a/recipes-core/udev/udev-rules-rpi.bb
> > +++ b/recipes-core/udev/udev-rules-rpi.bb
> > @@ -8,7 +8,6 @@ SRC_URI =3D " \
> > "
> > SRCREV =3D "5ce3ef2b7f377c23fea440ca9df0e30f3f8447cf"
> >
> > -S =3D "${WORKDIR}/git"
> >
> > INHIBIT_DEFAULT_DEPS =3D "1"
> >
> > diff --git a/recipes-devtools/pi-blaster/pi-blaster_git.bb b/recipes-de=
vtools/pi-blaster/pi-blaster_git.bb
> > index d02fa92..644a4c7 100644
> > --- a/recipes-devtools/pi-blaster/pi-blaster_git.bb
> > +++ b/recipes-devtools/pi-blaster/pi-blaster_git.bb
> > @@ -8,7 +8,6 @@ SRC_URI =3D "git://github.com/sarfata/pi-blaster;branch=
=3Dmaster;protocol=3Dhttps \
> >            file://remove-initscript-lsb-dependency.patch \
> >            "
> >
> > -S =3D "${WORKDIR}/git"
> >
> > SRCREV =3D "fbba9a7dcef0f352a11f8a2a5f6cbc15b62c0829"
> >
> > diff --git a/recipes-devtools/python/python3-adafruit-circuitpython-reg=
ister_1.9.10.bb b/recipes-devtools/python/python3-adafruit-circuitpython-re=
gister_1.9.10.bb
> > index 8ff3073..b009131 100644
> > --- a/recipes-devtools/python/python3-adafruit-circuitpython-register_1=
.9.10.bb
> > +++ b/recipes-devtools/python/python3-adafruit-circuitpython-register_1=
.9.10.bb
> > @@ -5,7 +5,6 @@ LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D6ec69d6e9e6c=
85adfb7799d7f8cf044e"
> >
> > SRC_URI =3D "git://github.com/adafruit/Adafruit_CircuitPython_Register.=
git;branch=3Dmain;protocol=3Dhttps"
> > SRCREV =3D "d1e8ac7ad9dcd65ab83749db3e5c96ffee80ebb7"
> > -S =3D "${WORKDIR}/git"
> >
> > DEPENDS +=3D "python3-setuptools-scm-native"
> >
> > diff --git a/recipes-devtools/python/python3-adafruit-platformdetect_3.=
27.0.bb b/recipes-devtools/python/python3-adafruit-platformdetect_3.27.0.bb
> > index 45dc49d..32eb491 100644
> > --- a/recipes-devtools/python/python3-adafruit-platformdetect_3.27.0.bb
> > +++ b/recipes-devtools/python/python3-adafruit-platformdetect_3.27.0.bb
> > @@ -5,7 +5,6 @@ LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3Dfccd531dce4b=
989c05173925f0bbb76c"
> >
> > SRC_URI =3D "git://github.com/adafruit/Adafruit_Python_PlatformDetect.g=
it;branch=3Dmain;protocol=3Dhttps"
> > SRCREV =3D "e1460098eeca5ea573f92814691bb378e15530d9"
> > -S =3D "${WORKDIR}/git"
> >
> > inherit setuptools3
> >
> > diff --git a/recipes-devtools/python/python3-adafruit-pureio_1.1.9.bb b=
/recipes-devtools/python/python3-adafruit-pureio_1.1.9.bb
> > index cdbe4b4..8f8d433 100644
> > --- a/recipes-devtools/python/python3-adafruit-pureio_1.1.9.bb
> > +++ b/recipes-devtools/python/python3-adafruit-pureio_1.1.9.bb
> > @@ -6,7 +6,6 @@ LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D2a21fcca821a=
506d4c36f7bbecc0d009"
> > SRC_URI =3D "git://github.com/adafruit/Adafruit_Python_PureIO.git;branc=
h=3Dmain;protocol=3Dhttps"
> > SRCREV =3D "383b615ce9ff5bbefdf77652799f380016fda353"
> >
> > -S =3D "${WORKDIR}/git"
> >
> > inherit setuptools3
> >
> > diff --git a/recipes-devtools/python/python3-rtimu_7.2.1.bb b/recipes-d=
evtools/python/python3-rtimu_7.2.1.bb
> > index 1afbb5f..3fb603b 100644
> > --- a/recipes-devtools/python/python3-rtimu_7.2.1.bb
> > +++ b/recipes-devtools/python/python3-rtimu_7.2.1.bb
> > @@ -11,5 +11,5 @@ SRC_URI =3D "git://github.com/RPi-Distro/RTIMULib.git=
;protocol=3Dhttp;branch=3Dmaster;
> >           "
> > SRCREV =3D "b949681af69b45f0f7f4bb53b6770037b5b02178"
> >
> > -S =3D "${WORKDIR}/git/Linux/python"
> > +S =3D "${UNPACKDIR}/git/Linux/python"
> > inherit setuptools3
> > diff --git a/recipes-devtools/python/rpio_0.10.1.bb b/recipes-devtools/=
python/rpio_0.10.1.bb
> > index 176646d..8a7b8c1 100644
> > --- a/recipes-devtools/python/rpio_0.10.1.bb
> > +++ b/recipes-devtools/python/rpio_0.10.1.bb
> > @@ -9,7 +9,6 @@ SRC_URI =3D "\
> >     git://github.com/metachris/RPIO.git;protocol=3Dhttps;branch=3Dmaste=
r \
> >     "
> > SRCREV =3D "be1942a69b2592ddacd9dc833d2668a19aafd8d2"
> > -S =3D "${WORKDIR}/git"
> >
> > inherit setuptools3
> >
> > diff --git a/recipes-devtools/raspi-gpio/raspi-gpio_git.bb b/recipes-de=
vtools/raspi-gpio/raspi-gpio_git.bb
> > index 8ea4be1..c9d4051 100644
> > --- a/recipes-devtools/raspi-gpio/raspi-gpio_git.bb
> > +++ b/recipes-devtools/raspi-gpio/raspi-gpio_git.bb
> > @@ -12,5 +12,4 @@ SRCREV =3D "22b44e4765b4b78dc5b22394fff484e353d5914d"
> > SRC_URI =3D "git://github.com/RPi-Distro/raspi-gpio.git;protocol=3Dhttp=
s;branch=3Dmaster \
> >           "
> >
> > -S =3D "${WORKDIR}/git"
> >
> > diff --git a/recipes-devtools/raspi-utils/raspi-utils_git.bb b/recipes-=
devtools/raspi-utils/raspi-utils_git.bb
> > index 77ff2c3..7c71eb1 100644
> > --- a/recipes-devtools/raspi-utils/raspi-utils_git.bb
> > +++ b/recipes-devtools/raspi-utils/raspi-utils_git.bb
> > @@ -15,7 +15,6 @@ SRC_URI =3D "git://github.com/raspberrypi/utils;proto=
col=3Dhttps;branch=3Dmaster"
> >
> > SRCREV =3D "b9c63214c535d7df2b0fa6743b7b3e508363c25a"
> >
> > -S =3D "${WORKDIR}/git"
> >
> > FILES:${PN}:append =3D " \
> >     ${datadir}/bash-completion/completions/pinctrl \
> > diff --git a/recipes-graphics/raspidmx/raspidmx_git.bb b/recipes-graphi=
cs/raspidmx/raspidmx_git.bb
> > index 4729e8c..7c2e50c 100644
> > --- a/recipes-graphics/raspidmx/raspidmx_git.bb
> > +++ b/recipes-graphics/raspidmx/raspidmx_git.bb
> > @@ -20,7 +20,6 @@ SRC_URI =3D "git://github.com/AndrewFromMelbourne/ras=
pidmx;protocol=3Dhttps;branch=3Dm
> > PV =3D "0.0+git${SRCPV}"
> > SRCREV =3D "e2ee6faa0d01a5ece06bcc74a47f37d7e6837310"
> >
> > -S =3D "${WORKDIR}/git"
> >
> > inherit pkgconfig
> >
> > diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphi=
cs/userland/userland_git.bb
> > index bd50bf8..270a99b 100644
> > --- a/recipes-graphics/userland/userland_git.bb
> > +++ b/recipes-graphics/userland/userland_git.bb
> > @@ -51,7 +51,6 @@ SRC_URI =3D "\
> >
> > SRC_URI:remove:toolchain-clang =3D "file://0021-cmake-Disable-format-ov=
erflow-warning-as-error.patch"
> >
> > -S =3D "${WORKDIR}/git"
> >
> > inherit cmake pkgconfig
> >
> > diff --git a/recipes-kernel/bluez-firmware-rpidistro/bluez-firmware-rpi=
distro_git.bb b/recipes-kernel/bluez-firmware-rpidistro/bluez-firmware-rpid=
istro_git.bb
> > index bd5ed62..b562fa6 100644
> > --- a/recipes-kernel/bluez-firmware-rpidistro/bluez-firmware-rpidistro_=
git.bb
> > +++ b/recipes-kernel/bluez-firmware-rpidistro/bluez-firmware-rpidistro_=
git.bb
> > @@ -29,7 +29,6 @@ SRC_URI =3D " \
> > SRCREV =3D "78d6a07730e2d20c035899521ab67726dc028e1c"
> > PV =3D "1.2-9+rpt3"
> >
> > -S =3D "${WORKDIR}/git"
> >
> > inherit allarch
> >
> > diff --git a/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpi=
distro_git.bb b/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpid=
istro_git.bb
> > index f22ec54..cfad4bd 100644
> > --- a/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpidistro_=
git.bb
> > +++ b/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpidistro_=
git.bb
> > @@ -20,7 +20,6 @@ SRC_URI =3D "git://github.com/RPi-Distro/firmware-non=
free;branch=3Dbookworm;protocol
> > "
> > SRCREV =3D "4b356e134e8333d073bd3802d767a825adec3807"
> > PV =3D "20230625-2+rpt3"
> > -S =3D "${WORKDIR}/git"
> >
> > inherit allarch
> >
> > diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-mu=
ltimedia/omxplayer/omxplayer_git.bb
> > index b7eaf40..85a2610 100644
> > --- a/recipes-multimedia/omxplayer/omxplayer_git.bb
> > +++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
> > @@ -40,7 +40,6 @@ SRC_URI =3D "git://github.com/popcornmix/omxplayer.gi=
t;protocol=3Dhttps;branch=3Dmaste
> >
> > SRC_URI:append =3D "${@bb.utils.contains("MACHINE_FEATURES", "vc4graphi=
cs", " file://0001-Fix-build-with-vc4-driver.patch ", "", d)}"
> >
> > -S =3D "${WORKDIR}/git"
> >
> > COMPATIBLE_MACHINE =3D "^rpi$"
> > COMPATIBLE_HOST:aarch64 =3D "null"
> > diff --git a/recipes-multimedia/python3-picamera/python3-picamera_git.b=
b b/recipes-multimedia/python3-picamera/python3-picamera_git.bb
> > index f14941b..4d0b18a 100644
> > --- a/recipes-multimedia/python3-picamera/python3-picamera_git.bb
> > +++ b/recipes-multimedia/python3-picamera/python3-picamera_git.bb
> > @@ -14,7 +14,6 @@ RDEPENDS:${PN} =3D "python3-numbers   \
> > SRC_URI =3D "git://git@github.com/waveform80/picamera.git;protocol=3Dss=
h;branch=3Dmaster"
> > SRCREV =3D "7e4f1d379d698c44501fb84b886fadf3fc164b70"
> >
> > -S =3D "${WORKDIR}/git"
> >
> > inherit setuptools3
> >
> > diff --git a/recipes-multimedia/rpidistro-ffmpeg/rpidistro-ffmpeg_5.1.4=
.bb b/recipes-multimedia/rpidistro-ffmpeg/rpidistro-ffmpeg_5.1.4.bb
> > index e8f640b..4a07f50 100644
> > --- a/recipes-multimedia/rpidistro-ffmpeg/rpidistro-ffmpeg_5.1.4.bb
> > +++ b/recipes-multimedia/rpidistro-ffmpeg/rpidistro-ffmpeg_5.1.4.bb
> > @@ -50,7 +50,6 @@ SRC_URI =3D "\
> >
> > SRCREV =3D "1c363463c432c5ed492c7b759abb6e015b93b6b5"
> >
> > -S =3D "${WORKDIR}/git"
> >
> > # libraries to build in addition to avutil
> > PACKAGECONFIG[avdevice] =3D "--enable-avdevice,--disable-avdevice"
> > --
> > 2.43.0
> >
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#65612): https://lists.yoctoproject.org/g/yocto/mess=
age/65612
> > Mute This Topic: https://lists.yoctoproject.org/mt/114018237/6875888
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [ross.burton@=
arm.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>

