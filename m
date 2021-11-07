Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E47DCC433F5
	for <webhook@archiver.kernel.org>; Sun,  7 Nov 2021 21:16:53 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com
 [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.web08.36552.1636319813061898210
 for <yocto@lists.yoctoproject.org>;
 Sun, 07 Nov 2021 13:16:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=m5aNIgm9;
 spf=pass (domain: gmail.com, ip: 209.85.214.177,
 mailfrom: martin.jansa@gmail.com)
Received: by mail-pl1-f177.google.com with SMTP id k4so14487548plx.8
        for <yocto@lists.yoctoproject.org>;
 Sun, 07 Nov 2021 13:16:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MZFmUpMkDCDmNRl0bnL0+idVnBY/bDYbWpGPSCEeOUo=;
        b=m5aNIgm920h5ld9OkJxNhDCKyGorNd0poHIOOW1aHdZpNhsy6GmvPYwVsZVvU+Owze
         zU0OqfFejWLjuJuoqnFaicaGAe4rqDQ8UpQo5fzocePj86g3EVntO6Sri2Rv+s3eN8n7
         8sb2HkqzEumjDTXem5rE6TH1R4g+9aR7udVNOhJOYJXd/YRKymsPNhg4IMBEsoGluaCf
         7FSbNBvg1TuL1yiumw3V0C2wOAccJX7D8p8IaDKXV3yYuKEgm19nVdY/yw4CTZE/Fo+P
         UkqGTs1f418+o0I6BRNgMIhslsrUo8Kn4atTckgNAhrnvch3A6HQS4nhghZ36/nDYDTi
         PB/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MZFmUpMkDCDmNRl0bnL0+idVnBY/bDYbWpGPSCEeOUo=;
        b=mmlmt5zVRwjQSeV0orOUeBql1fI5nEoPzpltAxUX4yCi2HT2z8ljsVrMUsdDzmz1CT
         WzxZgtXxgUaxXT4I7lySu3w6l99LrCa1bQuI6I+rJW2qSB6skAeC2pIvz0woZxtAxX8H
         hgQLrpnr1EEwrHzsTjPe5T5ftgctQkIXqFzvyb5NV/uAVzn24LnacRoiYimJNQblOOry
         ouKPtPLaE2wy7X5HsGaWCwVqQ4oEYSVcHKNbMVSlXO9TmUvToxZahn5spMdEC0ZZaite
         BriS05+faXmlaglaru/h45Elvm8RNUA4xRLc8dZ6yS/R2p9aQLAwz7O1SyKqqY5rNQyr
         0BLA==
X-Gm-Message-State: AOAM5328oaiKGl42fUevxR91gDBpGrOVRXyL2KcfOibG6MFr6a3tFTru
	DOvQFtoM64o7n4RhI+3OTJ2rx883YDybO866LY0=
X-Google-Smtp-Source: 
 ABdhPJxh1I/SRijWH6lTy+z4ZexfvK3czjWyoMumAvnNykyUTc40f6LRTUtKE3VaOoGB2QORIAKViEHMzaJWE40PqN0=
X-Received: by 2002:a17:90b:128f:: with SMTP id
 fw15mr46881471pjb.183.1636319812344;
 Sun, 07 Nov 2021 13:16:52 -0800 (PST)
MIME-Version: 1.0
References: <20211107201356.32243-1-ticotimo@gmail.com>
In-Reply-To: <20211107201356.32243-1-ticotimo@gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Sun, 7 Nov 2021 22:16:41 +0100
Message-ID: 
 <CA+chaQcM==gPPgvWdkxESaZ2gdP7zb8k_p73PCBQQUZsJJyU_w@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi][PATCH] Use protocol=https for all
 github SRC_URIs
To: Tim Orling <ticotimo@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000275eca05d0396516"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 07 Nov 2021 21:16:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55267

--000000000000275eca05d0396516
Content-Type: text/plain; charset="UTF-8"

see https://github.com/agherzan/meta-raspberrypi/pull/935

On Sun, Nov 7, 2021 at 9:14 PM Tim Orling <ticotimo@gmail.com> wrote:

> GitHub has already started "brownouts" for git protocol,
> which will cause random fetcher failures in builds.
>
> Signed-off-by: Tim Orling <ticotimo@gmail.com>
> ---
>  recipes-bsp/bootfiles/rpi-config_git.bb                       | 2 +-
>  recipes-connectivity/pi-bluetooth/pi-bluetooth_0.1.17.bb      | 2 +-
>  recipes-devtools/pi-blaster/pi-blaster_git.bb                 | 2 +-
>  recipes-devtools/python/python3-adafruit-blinka_6.2.2.bb      | 2 +-
>  .../python/python3-adafruit-circuitpython-busdevice_5.0.5.bb  | 2 +-
>  .../python/python3-adafruit-circuitpython-motor_3.2.6.bb      | 2 +-
>  .../python/python3-adafruit-circuitpython-motorkit_1.6.1.bb   | 2 +-
>  .../python/python3-adafruit-circuitpython-pca9685_3.3.4.bb    | 2 +-
>  .../python/python3-adafruit-circuitpython-register_1.9.4.bb   | 2 +-
>  .../python/python3-adafruit-platformdetect_3.1.1.bb           | 2 +-
>  recipes-devtools/python/python3-adafruit-pureio_1.1.8.bb      | 2 +-
>  recipes-devtools/python/python3-rtimu_git.bb                  | 2 +-
>  recipes-graphics/userland/userland_git.bb                     | 2 +-
>  .../bluez-firmware-rpidistro/bluez-firmware-rpidistro_git.bb  | 2 +-
>  .../linux-firmware-rpidistro/linux-firmware-rpidistro_git.bb  | 2 +-
>  recipes-kernel/linux/linux-raspberrypi-dev.bb                 | 2 +-
>  recipes-kernel/linux/linux-raspberrypi_5.10.bb                | 2 +-
>  recipes-multimedia/omxplayer/omxplayer_git.bb                 | 4 ++--
>  18 files changed, 19 insertions(+), 19 deletions(-)
>
> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb
> b/recipes-bsp/bootfiles/rpi-config_git.bb
> index 96453ef..13a0714 100644
> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
> @@ -8,7 +8,7 @@ LIC_FILES_CHKSUM =
> "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda
>  COMPATIBLE_MACHINE = "^rpi$"
>
>  SRCREV = "648ffc470824c43eb0d16c485f4c24816b32cd6f"
> -SRC_URI = "git://
> github.com/Evilpaul/RPi-config.git;protocol=git;branch=master \
> +SRC_URI = "git://
> github.com/Evilpaul/RPi-config.git;protocol=https;branch=master \
>            "
>
>  S = "${WORKDIR}/git"
> diff --git a/recipes-connectivity/pi-bluetooth/pi-bluetooth_0.1.17.bb
> b/recipes-connectivity/pi-bluetooth/pi-bluetooth_0.1.17.bb
> index 75b581d..fdde795 100644
> --- a/recipes-connectivity/pi-bluetooth/pi-bluetooth_0.1.17.bb
> +++ b/recipes-connectivity/pi-bluetooth/pi-bluetooth_0.1.17.bb
> @@ -7,7 +7,7 @@ LIC_FILES_CHKSUM = "\
>  "
>
>  SRC_URI = "\
> -    git://github.com/RPi-Distro/pi-bluetooth \
> +    git://github.com/RPi-Distro/pi-bluetooth;protocol=https \
>      file://0001-bthelper-correct-path-for-hciconfig-under-Yocto.patch \
>  "
>  SRCREV = "fd4775bf90e037551532fc214a958074830bb80d"
> diff --git a/recipes-devtools/pi-blaster/pi-blaster_git.bb
> b/recipes-devtools/pi-blaster/pi-blaster_git.bb
> index 4aa7427..f25447c 100644
> --- a/recipes-devtools/pi-blaster/pi-blaster_git.bb
> +++ b/recipes-devtools/pi-blaster/pi-blaster_git.bb
> @@ -4,7 +4,7 @@ SECTION = "devel/libs"
>  LICENSE = "MIT"
>  LIC_FILES_CHKSUM =
> "file://README.md;beginline=268;endline=292;md5=86d10e4bcf4b4014d306dde7c1d2a80d"
>
> -SRC_URI = "git://github.com/sarfata/pi-blaster \
> +SRC_URI = "git://github.com/sarfata/pi-blaster;protocol=https \
>             file://remove-initscript-lsb-dependency.patch \
>             "
>
> diff --git a/recipes-devtools/python/python3-adafruit-blinka_6.2.2.bb
> b/recipes-devtools/python/python3-adafruit-blinka_6.2.2.bb
> index 4659ad9..d0c3e3c 100644
> --- a/recipes-devtools/python/python3-adafruit-blinka_6.2.2.bb
> +++ b/recipes-devtools/python/python3-adafruit-blinka_6.2.2.bb
> @@ -3,7 +3,7 @@ HOMEPAGE = "https://github.com/adafruit/Adafruit_Blinka"
>  LICENSE = "MIT"
>  LIC_FILES_CHKSUM = "file://LICENSE;md5=660e614bc7efb0697cc793d8a22a55c2"
>
> -SRC_URI = "git://github.com/adafruit/Adafruit_Blinka.git;branch=main"
> +SRC_URI = "git://
> github.com/adafruit/Adafruit_Blinka.git;protocol=https;branch=main"
>  SRCREV = "dc688f354fe779c9267c208b99f310af87e79272"
>
>  S = "${WORKDIR}/git"
> diff --git a/recipes-devtools/python/
> python3-adafruit-circuitpython-busdevice_5.0.5.bb
> b/recipes-devtools/python/
> python3-adafruit-circuitpython-busdevice_5.0.5.bb
> index 7cccd58..8b60bbb 100644
> --- a/recipes-devtools/python/
> python3-adafruit-circuitpython-busdevice_5.0.5.bb
> +++ b/recipes-devtools/python/
> python3-adafruit-circuitpython-busdevice_5.0.5.bb
> @@ -3,7 +3,7 @@ HOMEPAGE = "
> https://github.com/adafruit/Adafruit_CircuitPython_BusDevice"
>  LICENSE = "MIT"
>  LIC_FILES_CHKSUM = "file://LICENSE;md5=6ec69d6e9e6c85adfb7799d7f8cf044e"
>
> -SRC_URI = "git://
> github.com/adafruit/Adafruit_CircuitPython_BusDevice.git;branch=main"
> +SRC_URI = "git://
> github.com/adafruit/Adafruit_CircuitPython_BusDevice.git;protocol=https;branch=main
> "
>  SRCREV = "1bfe8005293205e2f7b2cc498ab5a946f1133b40"
>
>  S = "${WORKDIR}/git"
> diff --git a/recipes-devtools/python/
> python3-adafruit-circuitpython-motor_3.2.6.bb b/recipes-devtools/python/
> python3-adafruit-circuitpython-motor_3.2.6.bb
> index c5da4ac..73b599e 100644
> --- a/recipes-devtools/python/
> python3-adafruit-circuitpython-motor_3.2.6.bb
> +++ b/recipes-devtools/python/
> python3-adafruit-circuitpython-motor_3.2.6.bb
> @@ -3,7 +3,7 @@ HOMEPAGE = "
> https://github.com/adafruit/Adafruit_CircuitPython_Motor"
>  LICENSE = "MIT"
>  LIC_FILES_CHKSUM = "file://LICENSE;md5=b72678307cc7c10910b5ef460216af07"
>
> -SRC_URI = "git://
> github.com/adafruit/Adafruit_CircuitPython_Motor.git;branch=main"
> +SRC_URI = "git://
> github.com/adafruit/Adafruit_CircuitPython_Motor.git;protocol=https;branch=main
> "
>  SRCREV = "2251bfc0501d0acfb96c0a43f4f2b4c6a10ca14e"
>
>  S = "${WORKDIR}/git"
> diff --git a/recipes-devtools/python/
> python3-adafruit-circuitpython-motorkit_1.6.1.bb
> b/recipes-devtools/python/python3-adafruit-circuitpython-motorkit_1.6.1.bb
> index eacca3e..868d8e6 100644
> --- a/recipes-devtools/python/
> python3-adafruit-circuitpython-motorkit_1.6.1.bb
> +++ b/recipes-devtools/python/
> python3-adafruit-circuitpython-motorkit_1.6.1.bb
> @@ -3,7 +3,7 @@ HOMEPAGE = "
> https://github.com/adafruit/Adafruit_CircuitPython_MotorKit"
>  LICENSE = "MIT"
>  LIC_FILES_CHKSUM = "file://LICENSE;md5=6ad4a8854b39ad474755ef1aea813bac"
>
> -SRC_URI = "git://
> github.com/adafruit/Adafruit_CircuitPython_MotorKit.git;branch=main"
> +SRC_URI = "git://
> github.com/adafruit/Adafruit_CircuitPython_MotorKit.git;protocol=https;branch=main
> "
>  SRCREV = "8c1462b4129b21f6db156d1517abb017bb74b982"
>
>  S = "${WORKDIR}/git"
> diff --git a/recipes-devtools/python/
> python3-adafruit-circuitpython-pca9685_3.3.4.bb b/recipes-devtools/python/
> python3-adafruit-circuitpython-pca9685_3.3.4.bb
> index 23cd786..05cd781 100644
> --- a/recipes-devtools/python/
> python3-adafruit-circuitpython-pca9685_3.3.4.bb
> +++ b/recipes-devtools/python/
> python3-adafruit-circuitpython-pca9685_3.3.4.bb
> @@ -3,7 +3,7 @@ HOMEPAGE = "
> https://github.com/adafruit/Adafruit_CircuitPython_PCA9685"
>  LICENSE = "MIT"
>  LIC_FILES_CHKSUM = "file://LICENSE;md5=e7eb6b599fb0cfb06485c64cd4242f62"
>
> -SRC_URI = "git://
> github.com/adafruit/Adafruit_CircuitPython_PCA9685.git;branch=main"
> +SRC_URI = "git://
> github.com/adafruit/Adafruit_CircuitPython_PCA9685.git;protocol=https;branch=main
> "
>  SRCREV = "2780c4102f4c23fbab252aa1198b61ba7e2d1b2c"
>
>  S = "${WORKDIR}/git"
> diff --git a/recipes-devtools/python/
> python3-adafruit-circuitpython-register_1.9.4.bb
> b/recipes-devtools/python/python3-adafruit-circuitpython-register_1.9.4.bb
> index ccf5eaa..0e6fe68 100644
> --- a/recipes-devtools/python/
> python3-adafruit-circuitpython-register_1.9.4.bb
> +++ b/recipes-devtools/python/
> python3-adafruit-circuitpython-register_1.9.4.bb
> @@ -3,7 +3,7 @@ HOMEPAGE = "
> https://github.com/adafruit/Adafruit_CircuitPython_Register"
>  LICENSE = "MIT"
>  LIC_FILES_CHKSUM = "file://LICENSE;md5=6ec69d6e9e6c85adfb7799d7f8cf044e"
>
> -SRC_URI = "git://
> github.com/adafruit/Adafruit_CircuitPython_Register.git;branch=main"
> +SRC_URI = "git://
> github.com/adafruit/Adafruit_CircuitPython_Register.git;protocol=https;branch=main
> "
>
>  S = "${WORKDIR}/git"
>  SRCREV = "5fee6e0c3878110844bc51e16063eeae7d94c457"
> diff --git a/recipes-devtools/python/
> python3-adafruit-platformdetect_3.1.1.bb b/recipes-devtools/python/
> python3-adafruit-platformdetect_3.1.1.bb
> index b88affa..0478be6 100644
> --- a/recipes-devtools/python/python3-adafruit-platformdetect_3.1.1.bb
> +++ b/recipes-devtools/python/python3-adafruit-platformdetect_3.1.1.bb
> @@ -3,7 +3,7 @@ HOMEPAGE = "
> https://github.com/adafruit/Adafruit_Python_PlatformDetect"
>  LICENSE = "MIT"
>  LIC_FILES_CHKSUM = "file://LICENSE;md5=fccd531dce4b989c05173925f0bbb76c"
>
> -SRC_URI = "git://
> github.com/adafruit/Adafruit_Python_PlatformDetect.git;branch=main"
> +SRC_URI = "git://
> github.com/adafruit/Adafruit_Python_PlatformDetect.git;protocol=https;branch=main
> "
>  SRCREV = "e0fe1b012898fa824944d6805ca74be0fa027968"
>
>  S = "${WORKDIR}/git"
> diff --git a/recipes-devtools/python/python3-adafruit-pureio_1.1.8.bb
> b/recipes-devtools/python/python3-adafruit-pureio_1.1.8.bb
> index 63c7166..6472790 100644
> --- a/recipes-devtools/python/python3-adafruit-pureio_1.1.8.bb
> +++ b/recipes-devtools/python/python3-adafruit-pureio_1.1.8.bb
> @@ -3,7 +3,7 @@ HOMEPAGE = "
> https://github.com/adafruit/Adafruit_Python_PureIO"
>  LICENSE = "MIT"
>  LIC_FILES_CHKSUM = "file://LICENSE;md5=2a21fcca821a506d4c36f7bbecc0d009"
>
> -SRC_URI = "git://
> github.com/adafruit/Adafruit_Python_PureIO.git;branch=main"
> +SRC_URI = "git://
> github.com/adafruit/Adafruit_Python_PureIO.git;protocol=https;branch=main"
>  SRCREV = "f4d0973da05b8b21905ff6bab69cdb652128f342"
>
>  S = "${WORKDIR}/git"
> diff --git a/recipes-devtools/python/python3-rtimu_git.bb
> b/recipes-devtools/python/python3-rtimu_git.bb
> index 4f13a38..401a301 100644
> --- a/recipes-devtools/python/python3-rtimu_git.bb
> +++ b/recipes-devtools/python/python3-rtimu_git.bb
> @@ -5,7 +5,7 @@ SECTION = "devel/python"
>  LICENSE = "MIT"
>  LIC_FILES_CHKSUM =
> "file://../../LICENSE;md5=96cdecb41125f498958e09b72faf318e"
>
> -SRC_URI = "git://
> github.com/RPi-Distro/RTIMULib.git;protocol=http;branch=master \
> +SRC_URI = "git://
> github.com/RPi-Distro/RTIMULib.git;protocol=https;branch=master \
>
> file://0001-include-asm-ioctl.h-for-ioctl-define.patch;patchdir=../.. \
>            "
>  SRCREV = "b949681af69b45f0f7f4bb53b6770037b5b02178"
> diff --git a/recipes-graphics/userland/userland_git.bb
> b/recipes-graphics/userland/userland_git.bb
> index a2ae918..5676c31 100644
> --- a/recipes-graphics/userland/userland_git.bb
> +++ b/recipes-graphics/userland/userland_git.bb
> @@ -20,7 +20,7 @@ SRCREV = "97bc8180ad682b004ea224d1db7b8e108eda4397"
>  PV = "20210623"
>
>  SRC_URI = "\
> -    git://
> github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH}
> <http://github.com/$%7BSRCFORK%7D/userland.git;protocol=git;branch=$%7BSRCBRANCH%7D>
> \
> +    git://
> github.com/${SRCFORK}/userland.git;protocol=https;branch=${SRCBRANCH}
> <http://github.com/$%7BSRCFORK%7D/userland.git;protocol=https;branch=$%7BSRCBRANCH%7D>
> \
>      file://0001-Allow-applications-to-set-next-resource-handle.patch \
>      file://0002-wayland-Add-support-for-the-Wayland-winsys.patch \
>      file://0003-wayland-Add-Wayland-example.patch \
> diff --git a/recipes-kernel/bluez-firmware-rpidistro/
> bluez-firmware-rpidistro_git.bb b/recipes-kernel/bluez-firmware-rpidistro/
> bluez-firmware-rpidistro_git.bb
> index ef8df32..f25aab9 100644
> --- a/recipes-kernel/bluez-firmware-rpidistro/
> bluez-firmware-rpidistro_git.bb
> +++ b/recipes-kernel/bluez-firmware-rpidistro/
> bluez-firmware-rpidistro_git.bb
> @@ -23,7 +23,7 @@ LIC_FILES_CHKSUM = "\
>  # so that the license files will be copied from fetched source
>  NO_GENERIC_LICENSE[Firmware-cypress-rpidistro] =
> "LICENCE.cypress-rpidistro"
>
> -SRC_URI = "git://github.com/RPi-Distro/bluez-firmware"
> +SRC_URI = "git://github.com/RPi-Distro/bluez-firmware;protocol=https"
>  SRCREV = "e7fd166981ab4bb9a36c2d1500205a078a35714d"
>  PV = "1.2-4+rpt8"
>
> diff --git a/recipes-kernel/linux-firmware-rpidistro/
> linux-firmware-rpidistro_git.bb b/recipes-kernel/linux-firmware-rpidistro/
> linux-firmware-rpidistro_git.bb
> index 4f242d3..9e4686e 100644
> --- a/recipes-kernel/linux-firmware-rpidistro/
> linux-firmware-rpidistro_git.bb
> +++ b/recipes-kernel/linux-firmware-rpidistro/
> linux-firmware-rpidistro_git.bb
> @@ -34,7 +34,7 @@ LIC_FILES_CHKSUM = "\
>  NO_GENERIC_LICENSE[Firmware-broadcom_bcm43xx-rpidistro] =
> "LICENCE.broadcom_bcm43xx"
>  NO_GENERIC_LICENSE[WHENCE] = "WHENCE"
>
> -SRC_URI = "git://github.com/RPi-Distro/firmware-nonfree"
> +SRC_URI = "git://github.com/RPi-Distro/firmware-nonfree;protocol=https"
>
>  SRCREV = "83938f78ca2d5a0ffe0c223bb96d72ccc7b71ca5"
>  PV = "20190114-1+rpt11"
> diff --git a/recipes-kernel/linux/linux-raspberrypi-dev.bb
> b/recipes-kernel/linux/linux-raspberrypi-dev.bb
> index 0dfa451..fad65c6 100644
> --- a/recipes-kernel/linux/linux-raspberrypi-dev.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi-dev.bb
> @@ -20,7 +20,7 @@ SRCREV_meta ?=
> '${@oe.utils.conditional("PREFERRED_PROVIDER_virtual/kernel", "li
>  KMETA = "kernel-meta"
>
>  SRC_URI = " \
> -    git://
> github.com/raspberrypi/linux.git;name=machine;branch=${LINUX_RPI_BRANCH}
> <http://github.com/raspberrypi/linux.git;name=machine;branch=$%7BLINUX_RPI_BRANCH%7D>
> \
> +    git://
> github.com/raspberrypi/linux.git;protocol=https;name=machine;branch=${LINUX_RPI_BRANCH}
> <http://github.com/raspberrypi/linux.git;protocol=https;name=machine;branch=$%7BLINUX_RPI_BRANCH%7D>
> \
>      git://
> git.yoctoproject.org/yocto-kernel-cache;type=kmeta;name=meta;branch=${LINUX_RPI_KMETA_BRANCH};destsuffix=${KMETA}
> <http://git.yoctoproject.org/yocto-kernel-cache;type=kmeta;name=meta;branch=$%7BLINUX_RPI_KMETA_BRANCH%7D;destsuffix=$%7BKMETA%7D>
> \
>      file://powersave.cfg \
>      file://android-drivers.cfg \
> diff --git a/recipes-kernel/linux/linux-raspberrypi_5.10.bb
> b/recipes-kernel/linux/linux-raspberrypi_5.10.bb
> index 3eeb4b4..10b138a 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_5.10.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_5.10.bb
> @@ -8,7 +8,7 @@ SRCREV_meta = "e1979ceb171bc91ef2cb71cfcde548a101dab687"
>  KMETA = "kernel-meta"
>
>  SRC_URI = " \
> -    git://
> github.com/raspberrypi/linux.git;name=machine;branch=${LINUX_RPI_BRANCH}
> <http://github.com/raspberrypi/linux.git;name=machine;branch=$%7BLINUX_RPI_BRANCH%7D>
> \
> +    git://
> github.com/raspberrypi/linux.git;protocol=https;name=machine;branch=${LINUX_RPI_BRANCH}
> <http://github.com/raspberrypi/linux.git;protocol=https;name=machine;branch=$%7BLINUX_RPI_BRANCH%7D>
> \
>      git://
> git.yoctoproject.org/yocto-kernel-cache;type=kmeta;name=meta;branch=${LINUX_RPI_KMETA_BRANCH};destsuffix=${KMETA}
> <http://git.yoctoproject.org/yocto-kernel-cache;type=kmeta;name=meta;branch=$%7BLINUX_RPI_KMETA_BRANCH%7D;destsuffix=$%7BKMETA%7D>
> \
>      file://powersave.cfg \
>      file://android-drivers.cfg \
> diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb
> b/recipes-multimedia/omxplayer/omxplayer_git.bb
> index d294399..64233b3 100644
> --- a/recipes-multimedia/omxplayer/omxplayer_git.bb
> +++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
> @@ -22,8 +22,8 @@ SRCREV_default =
> "f543a0d0e707ab56415f17b0ca6d397394ee8b63"
>  # This SRCREV corresponds to the v4.0.3 release of ffmpeg.
>  SRCREV_ffmpeg = "fcbd117df3077bad495e99e20f01cf93737bce76"
>
> -SRC_URI = "git://
> github.com/popcornmix/omxplayer.git;protocol=git;branch=master \
> -           git://
> github.com/FFmpeg/FFmpeg;branch=release/4.0;protocol=git;depth=1;name=ffmpeg;destsuffix=git/ffmpeg
> \
> +SRC_URI = "git://
> github.com/popcornmix/omxplayer.git;protocol=https;branch=master \
> +           git://
> github.com/FFmpeg/FFmpeg;branch=release/4.0;protocol=https;depth=1;name=ffmpeg;destsuffix=git/ffmpeg
> \
>
> file://0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch \
>             file://0003-Remove-strip-step-in-Makefile.patch \
>
> file://0004-Add-FFMPEG_EXTRA_CFLAGS-and-FFMPEG_EXTRA_LDFLAGS.patch \
> --
> 2.30.2
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55266):
> https://lists.yoctoproject.org/g/yocto/message/55266
> Mute This Topic: https://lists.yoctoproject.org/mt/86890763/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> Martin.Jansa@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000275eca05d0396516
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">see=C2=A0<a href=3D"https://github.com/agherzan/meta-raspb=
errypi/pull/935">https://github.com/agherzan/meta-raspberrypi/pull/935</a><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Sun, Nov 7, 2021 at 9:14 PM Tim Orling &lt;<a href=3D"mailto:ticotimo@gma=
il.com">ticotimo@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">GitHub has already started &quot;brownouts&quot; =
for git protocol,<br>
which will cause random fetcher failures in builds.<br>
<br>
Signed-off-by: Tim Orling &lt;<a href=3D"mailto:ticotimo@gmail.com" target=
=3D"_blank">ticotimo@gmail.com</a>&gt;<br>
---<br>
=C2=A0recipes-bsp/bootfiles/<a href=3D"http://rpi-config_git.bb" rel=3D"nor=
eferrer" target=3D"_blank">rpi-config_git.bb</a>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 +-<br>
=C2=A0recipes-connectivity/pi-bluetooth/<a href=3D"http://pi-bluetooth_0.1.=
17.bb" rel=3D"noreferrer" target=3D"_blank">pi-bluetooth_0.1.17.bb</a>=C2=
=A0 =C2=A0 =C2=A0 | 2 +-<br>
=C2=A0recipes-devtools/pi-blaster/<a href=3D"http://pi-blaster_git.bb" rel=
=3D"noreferrer" target=3D"_blank">pi-blaster_git.bb</a>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 +-<br>
=C2=A0recipes-devtools/python/<a href=3D"http://python3-adafruit-blinka_6.2=
.2.bb" rel=3D"noreferrer" target=3D"_blank">python3-adafruit-blinka_6.2.2.b=
b</a>=C2=A0 =C2=A0 =C2=A0 | 2 +-<br>
=C2=A0.../python/<a href=3D"http://python3-adafruit-circuitpython-busdevice=
_5.0.5.bb" rel=3D"noreferrer" target=3D"_blank">python3-adafruit-circuitpyt=
hon-busdevice_5.0.5.bb</a>=C2=A0 | 2 +-<br>
=C2=A0.../python/<a href=3D"http://python3-adafruit-circuitpython-motor_3.2=
.6.bb" rel=3D"noreferrer" target=3D"_blank">python3-adafruit-circuitpython-=
motor_3.2.6.bb</a>=C2=A0 =C2=A0 =C2=A0 | 2 +-<br>
=C2=A0.../python/<a href=3D"http://python3-adafruit-circuitpython-motorkit_=
1.6.1.bb" rel=3D"noreferrer" target=3D"_blank">python3-adafruit-circuitpyth=
on-motorkit_1.6.1.bb</a>=C2=A0 =C2=A0| 2 +-<br>
=C2=A0.../python/<a href=3D"http://python3-adafruit-circuitpython-pca9685_3=
.3.4.bb" rel=3D"noreferrer" target=3D"_blank">python3-adafruit-circuitpytho=
n-pca9685_3.3.4.bb</a>=C2=A0 =C2=A0 | 2 +-<br>
=C2=A0.../python/<a href=3D"http://python3-adafruit-circuitpython-register_=
1.9.4.bb" rel=3D"noreferrer" target=3D"_blank">python3-adafruit-circuitpyth=
on-register_1.9.4.bb</a>=C2=A0 =C2=A0| 2 +-<br>
=C2=A0.../python/<a href=3D"http://python3-adafruit-platformdetect_3.1.1.bb=
" rel=3D"noreferrer" target=3D"_blank">python3-adafruit-platformdetect_3.1.=
1.bb</a>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 +-<br>
=C2=A0recipes-devtools/python/<a href=3D"http://python3-adafruit-pureio_1.1=
.8.bb" rel=3D"noreferrer" target=3D"_blank">python3-adafruit-pureio_1.1.8.b=
b</a>=C2=A0 =C2=A0 =C2=A0 | 2 +-<br>
=C2=A0recipes-devtools/python/<a href=3D"http://python3-rtimu_git.bb" rel=
=3D"noreferrer" target=3D"_blank">python3-rtimu_git.bb</a>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-<br>
=C2=A0recipes-graphics/userland/<a href=3D"http://userland_git.bb" rel=3D"n=
oreferrer" target=3D"_blank">userland_git.bb</a>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 +-<br>
=C2=A0.../bluez-firmware-rpidistro/<a href=3D"http://bluez-firmware-rpidist=
ro_git.bb" rel=3D"noreferrer" target=3D"_blank">bluez-firmware-rpidistro_gi=
t.bb</a>=C2=A0 | 2 +-<br>
=C2=A0.../linux-firmware-rpidistro/<a href=3D"http://linux-firmware-rpidist=
ro_git.bb" rel=3D"noreferrer" target=3D"_blank">linux-firmware-rpidistro_gi=
t.bb</a>=C2=A0 | 2 +-<br>
=C2=A0recipes-kernel/linux/<a href=3D"http://linux-raspberrypi-dev.bb" rel=
=3D"noreferrer" target=3D"_blank">linux-raspberrypi-dev.bb</a>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 +-<br>
=C2=A0recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_5.10.bb" rel=
=3D"noreferrer" target=3D"_blank">linux-raspberrypi_5.10.bb</a>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-<br>
=C2=A0recipes-multimedia/omxplayer/<a href=3D"http://omxplayer_git.bb" rel=
=3D"noreferrer" target=3D"_blank">omxplayer_git.bb</a>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 4 ++--<br>
=C2=A018 files changed, 19 insertions(+), 19 deletions(-)<br>
<br>
diff --git a/recipes-bsp/bootfiles/<a href=3D"http://rpi-config_git.bb" rel=
=3D"noreferrer" target=3D"_blank">rpi-config_git.bb</a> b/recipes-bsp/bootf=
iles/<a href=3D"http://rpi-config_git.bb" rel=3D"noreferrer" target=3D"_bla=
nk">rpi-config_git.bb</a><br>
index 96453ef..13a0714 100644<br>
--- a/recipes-bsp/bootfiles/<a href=3D"http://rpi-config_git.bb" rel=3D"nor=
eferrer" target=3D"_blank">rpi-config_git.bb</a><br>
+++ b/recipes-bsp/bootfiles/<a href=3D"http://rpi-config_git.bb" rel=3D"nor=
eferrer" target=3D"_blank">rpi-config_git.bb</a><br>
@@ -8,7 +8,7 @@ LIC_FILES_CHKSUM =3D &quot;file://${COMMON_LICENSE_DIR}/MIT=
;md5=3D0835ade698e0bcf8506ecda<br>
=C2=A0COMPATIBLE_MACHINE =3D &quot;^rpi$&quot;<br>
<br>
=C2=A0SRCREV =3D &quot;648ffc470824c43eb0d16c485f4c24816b32cd6f&quot;<br>
-SRC_URI =3D &quot;git://<a href=3D"http://github.com/Evilpaul/RPi-config.g=
it;protocol=3Dgit;branch=3Dmaster" rel=3D"noreferrer" target=3D"_blank">git=
hub.com/Evilpaul/RPi-config.git;protocol=3Dgit;branch=3Dmaster</a> \<br>
+SRC_URI =3D &quot;git://<a href=3D"http://github.com/Evilpaul/RPi-config.g=
it;protocol=3Dhttps;branch=3Dmaster" rel=3D"noreferrer" target=3D"_blank">g=
ithub.com/Evilpaul/RPi-config.git;protocol=3Dhttps;branch=3Dmaster</a> \<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
<br>
=C2=A0S =3D &quot;${WORKDIR}/git&quot;<br>
diff --git a/recipes-connectivity/pi-bluetooth/<a href=3D"http://pi-bluetoo=
th_0.1.17.bb" rel=3D"noreferrer" target=3D"_blank">pi-bluetooth_0.1.17.bb</=
a> b/recipes-connectivity/pi-bluetooth/<a href=3D"http://pi-bluetooth_0.1.1=
7.bb" rel=3D"noreferrer" target=3D"_blank">pi-bluetooth_0.1.17.bb</a><br>
index 75b581d..fdde795 100644<br>
--- a/recipes-connectivity/pi-bluetooth/<a href=3D"http://pi-bluetooth_0.1.=
17.bb" rel=3D"noreferrer" target=3D"_blank">pi-bluetooth_0.1.17.bb</a><br>
+++ b/recipes-connectivity/pi-bluetooth/<a href=3D"http://pi-bluetooth_0.1.=
17.bb" rel=3D"noreferrer" target=3D"_blank">pi-bluetooth_0.1.17.bb</a><br>
@@ -7,7 +7,7 @@ LIC_FILES_CHKSUM =3D &quot;\<br>
=C2=A0&quot;<br>
<br>
=C2=A0SRC_URI =3D &quot;\<br>
-=C2=A0 =C2=A0 git://<a href=3D"http://github.com/RPi-Distro/pi-bluetooth" =
rel=3D"noreferrer" target=3D"_blank">github.com/RPi-Distro/pi-bluetooth</a>=
 \<br>
+=C2=A0 =C2=A0 git://<a href=3D"http://github.com/RPi-Distro/pi-bluetooth;p=
rotocol=3Dhttps" rel=3D"noreferrer" target=3D"_blank">github.com/RPi-Distro=
/pi-bluetooth;protocol=3Dhttps</a> \<br>
=C2=A0 =C2=A0 =C2=A0file://0001-bthelper-correct-path-for-hciconfig-under-Y=
octo.patch \<br>
=C2=A0&quot;<br>
=C2=A0SRCREV =3D &quot;fd4775bf90e037551532fc214a958074830bb80d&quot;<br>
diff --git a/recipes-devtools/pi-blaster/<a href=3D"http://pi-blaster_git.b=
b" rel=3D"noreferrer" target=3D"_blank">pi-blaster_git.bb</a> b/recipes-dev=
tools/pi-blaster/<a href=3D"http://pi-blaster_git.bb" rel=3D"noreferrer" ta=
rget=3D"_blank">pi-blaster_git.bb</a><br>
index 4aa7427..f25447c 100644<br>
--- a/recipes-devtools/pi-blaster/<a href=3D"http://pi-blaster_git.bb" rel=
=3D"noreferrer" target=3D"_blank">pi-blaster_git.bb</a><br>
+++ b/recipes-devtools/pi-blaster/<a href=3D"http://pi-blaster_git.bb" rel=
=3D"noreferrer" target=3D"_blank">pi-blaster_git.bb</a><br>
@@ -4,7 +4,7 @@ SECTION =3D &quot;devel/libs&quot;<br>
=C2=A0LICENSE =3D &quot;MIT&quot;<br>
=C2=A0LIC_FILES_CHKSUM =3D &quot;file://README.md;beginline=3D268;endline=
=3D292;md5=3D86d10e4bcf4b4014d306dde7c1d2a80d&quot;<br>
<br>
-SRC_URI =3D &quot;git://<a href=3D"http://github.com/sarfata/pi-blaster" r=
el=3D"noreferrer" target=3D"_blank">github.com/sarfata/pi-blaster</a> \<br>
+SRC_URI =3D &quot;git://<a href=3D"http://github.com/sarfata/pi-blaster;pr=
otocol=3Dhttps" rel=3D"noreferrer" target=3D"_blank">github.com/sarfata/pi-=
blaster;protocol=3Dhttps</a> \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://remove-initscript-lsb-depe=
ndency.patch \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<br>
<br>
diff --git a/recipes-devtools/python/<a href=3D"http://python3-adafruit-bli=
nka_6.2.2.bb" rel=3D"noreferrer" target=3D"_blank">python3-adafruit-blinka_=
6.2.2.bb</a> b/recipes-devtools/python/<a href=3D"http://python3-adafruit-b=
linka_6.2.2.bb" rel=3D"noreferrer" target=3D"_blank">python3-adafruit-blink=
a_6.2.2.bb</a><br>
index 4659ad9..d0c3e3c 100644<br>
--- a/recipes-devtools/python/<a href=3D"http://python3-adafruit-blinka_6.2=
.2.bb" rel=3D"noreferrer" target=3D"_blank">python3-adafruit-blinka_6.2.2.b=
b</a><br>
+++ b/recipes-devtools/python/<a href=3D"http://python3-adafruit-blinka_6.2=
.2.bb" rel=3D"noreferrer" target=3D"_blank">python3-adafruit-blinka_6.2.2.b=
b</a><br>
@@ -3,7 +3,7 @@ HOMEPAGE =3D &quot;<a href=3D"https://github.com/adafruit/A=
dafruit_Blinka" rel=3D"noreferrer" target=3D"_blank">https://github.com/ada=
fruit/Adafruit_Blinka</a>&quot;<br>
=C2=A0LICENSE =3D &quot;MIT&quot;<br>
=C2=A0LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D660e614bc7efb0697cc79=
3d8a22a55c2&quot;<br>
<br>
-SRC_URI =3D &quot;git://<a href=3D"http://github.com/adafruit/Adafruit_Bli=
nka.git;branch=3Dmain" rel=3D"noreferrer" target=3D"_blank">github.com/adaf=
ruit/Adafruit_Blinka.git;branch=3Dmain</a>&quot;<br>
+SRC_URI =3D &quot;git://<a href=3D"http://github.com/adafruit/Adafruit_Bli=
nka.git;protocol=3Dhttps;branch=3Dmain" rel=3D"noreferrer" target=3D"_blank=
">github.com/adafruit/Adafruit_Blinka.git;protocol=3Dhttps;branch=3Dmain</a=
>&quot;<br>
=C2=A0SRCREV =3D &quot;dc688f354fe779c9267c208b99f310af87e79272&quot;<br>
<br>
=C2=A0S =3D &quot;${WORKDIR}/git&quot;<br>
diff --git a/recipes-devtools/python/<a href=3D"http://python3-adafruit-cir=
cuitpython-busdevice_5.0.5.bb" rel=3D"noreferrer" target=3D"_blank">python3=
-adafruit-circuitpython-busdevice_5.0.5.bb</a> b/recipes-devtools/python/<a=
 href=3D"http://python3-adafruit-circuitpython-busdevice_5.0.5.bb" rel=3D"n=
oreferrer" target=3D"_blank">python3-adafruit-circuitpython-busdevice_5.0.5=
.bb</a><br>
index 7cccd58..8b60bbb 100644<br>
--- a/recipes-devtools/python/<a href=3D"http://python3-adafruit-circuitpyt=
hon-busdevice_5.0.5.bb" rel=3D"noreferrer" target=3D"_blank">python3-adafru=
it-circuitpython-busdevice_5.0.5.bb</a><br>
+++ b/recipes-devtools/python/<a href=3D"http://python3-adafruit-circuitpyt=
hon-busdevice_5.0.5.bb" rel=3D"noreferrer" target=3D"_blank">python3-adafru=
it-circuitpython-busdevice_5.0.5.bb</a><br>
@@ -3,7 +3,7 @@ HOMEPAGE =3D &quot;<a href=3D"https://github.com/adafruit/A=
dafruit_CircuitPython_BusDevice" rel=3D"noreferrer" target=3D"_blank">https=
://github.com/adafruit/Adafruit_CircuitPython_BusDevice</a>&quot;<br>
=C2=A0LICENSE =3D &quot;MIT&quot;<br>
=C2=A0LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D6ec69d6e9e6c85adfb779=
9d7f8cf044e&quot;<br>
<br>
-SRC_URI =3D &quot;git://<a href=3D"http://github.com/adafruit/Adafruit_Cir=
cuitPython_BusDevice.git;branch=3Dmain" rel=3D"noreferrer" target=3D"_blank=
">github.com/adafruit/Adafruit_CircuitPython_BusDevice.git;branch=3Dmain</a=
>&quot;<br>
+SRC_URI =3D &quot;git://<a href=3D"http://github.com/adafruit/Adafruit_Cir=
cuitPython_BusDevice.git;protocol=3Dhttps;branch=3Dmain" rel=3D"noreferrer"=
 target=3D"_blank">github.com/adafruit/Adafruit_CircuitPython_BusDevice.git=
;protocol=3Dhttps;branch=3Dmain</a>&quot;<br>
=C2=A0SRCREV =3D &quot;1bfe8005293205e2f7b2cc498ab5a946f1133b40&quot;<br>
<br>
=C2=A0S =3D &quot;${WORKDIR}/git&quot;<br>
diff --git a/recipes-devtools/python/<a href=3D"http://python3-adafruit-cir=
cuitpython-motor_3.2.6.bb" rel=3D"noreferrer" target=3D"_blank">python3-ada=
fruit-circuitpython-motor_3.2.6.bb</a> b/recipes-devtools/python/<a href=3D=
"http://python3-adafruit-circuitpython-motor_3.2.6.bb" rel=3D"noreferrer" t=
arget=3D"_blank">python3-adafruit-circuitpython-motor_3.2.6.bb</a><br>
index c5da4ac..73b599e 100644<br>
--- a/recipes-devtools/python/<a href=3D"http://python3-adafruit-circuitpyt=
hon-motor_3.2.6.bb" rel=3D"noreferrer" target=3D"_blank">python3-adafruit-c=
ircuitpython-motor_3.2.6.bb</a><br>
+++ b/recipes-devtools/python/<a href=3D"http://python3-adafruit-circuitpyt=
hon-motor_3.2.6.bb" rel=3D"noreferrer" target=3D"_blank">python3-adafruit-c=
ircuitpython-motor_3.2.6.bb</a><br>
@@ -3,7 +3,7 @@ HOMEPAGE =3D &quot;<a href=3D"https://github.com/adafruit/A=
dafruit_CircuitPython_Motor" rel=3D"noreferrer" target=3D"_blank">https://g=
ithub.com/adafruit/Adafruit_CircuitPython_Motor</a>&quot;<br>
=C2=A0LICENSE =3D &quot;MIT&quot;<br>
=C2=A0LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3Db72678307cc7c10910b5e=
f460216af07&quot;<br>
<br>
-SRC_URI =3D &quot;git://<a href=3D"http://github.com/adafruit/Adafruit_Cir=
cuitPython_Motor.git;branch=3Dmain" rel=3D"noreferrer" target=3D"_blank">gi=
thub.com/adafruit/Adafruit_CircuitPython_Motor.git;branch=3Dmain</a>&quot;<=
br>
+SRC_URI =3D &quot;git://<a href=3D"http://github.com/adafruit/Adafruit_Cir=
cuitPython_Motor.git;protocol=3Dhttps;branch=3Dmain" rel=3D"noreferrer" tar=
get=3D"_blank">github.com/adafruit/Adafruit_CircuitPython_Motor.git;protoco=
l=3Dhttps;branch=3Dmain</a>&quot;<br>
=C2=A0SRCREV =3D &quot;2251bfc0501d0acfb96c0a43f4f2b4c6a10ca14e&quot;<br>
<br>
=C2=A0S =3D &quot;${WORKDIR}/git&quot;<br>
diff --git a/recipes-devtools/python/<a href=3D"http://python3-adafruit-cir=
cuitpython-motorkit_1.6.1.bb" rel=3D"noreferrer" target=3D"_blank">python3-=
adafruit-circuitpython-motorkit_1.6.1.bb</a> b/recipes-devtools/python/<a h=
ref=3D"http://python3-adafruit-circuitpython-motorkit_1.6.1.bb" rel=3D"nore=
ferrer" target=3D"_blank">python3-adafruit-circuitpython-motorkit_1.6.1.bb<=
/a><br>
index eacca3e..868d8e6 100644<br>
--- a/recipes-devtools/python/<a href=3D"http://python3-adafruit-circuitpyt=
hon-motorkit_1.6.1.bb" rel=3D"noreferrer" target=3D"_blank">python3-adafrui=
t-circuitpython-motorkit_1.6.1.bb</a><br>
+++ b/recipes-devtools/python/<a href=3D"http://python3-adafruit-circuitpyt=
hon-motorkit_1.6.1.bb" rel=3D"noreferrer" target=3D"_blank">python3-adafrui=
t-circuitpython-motorkit_1.6.1.bb</a><br>
@@ -3,7 +3,7 @@ HOMEPAGE =3D &quot;<a href=3D"https://github.com/adafruit/A=
dafruit_CircuitPython_MotorKit" rel=3D"noreferrer" target=3D"_blank">https:=
//github.com/adafruit/Adafruit_CircuitPython_MotorKit</a>&quot;<br>
=C2=A0LICENSE =3D &quot;MIT&quot;<br>
=C2=A0LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D6ad4a8854b39ad474755e=
f1aea813bac&quot;<br>
<br>
-SRC_URI =3D &quot;git://<a href=3D"http://github.com/adafruit/Adafruit_Cir=
cuitPython_MotorKit.git;branch=3Dmain" rel=3D"noreferrer" target=3D"_blank"=
>github.com/adafruit/Adafruit_CircuitPython_MotorKit.git;branch=3Dmain</a>&=
quot;<br>
+SRC_URI =3D &quot;git://<a href=3D"http://github.com/adafruit/Adafruit_Cir=
cuitPython_MotorKit.git;protocol=3Dhttps;branch=3Dmain" rel=3D"noreferrer" =
target=3D"_blank">github.com/adafruit/Adafruit_CircuitPython_MotorKit.git;p=
rotocol=3Dhttps;branch=3Dmain</a>&quot;<br>
=C2=A0SRCREV =3D &quot;8c1462b4129b21f6db156d1517abb017bb74b982&quot;<br>
<br>
=C2=A0S =3D &quot;${WORKDIR}/git&quot;<br>
diff --git a/recipes-devtools/python/<a href=3D"http://python3-adafruit-cir=
cuitpython-pca9685_3.3.4.bb" rel=3D"noreferrer" target=3D"_blank">python3-a=
dafruit-circuitpython-pca9685_3.3.4.bb</a> b/recipes-devtools/python/<a hre=
f=3D"http://python3-adafruit-circuitpython-pca9685_3.3.4.bb" rel=3D"norefer=
rer" target=3D"_blank">python3-adafruit-circuitpython-pca9685_3.3.4.bb</a><=
br>
index 23cd786..05cd781 100644<br>
--- a/recipes-devtools/python/<a href=3D"http://python3-adafruit-circuitpyt=
hon-pca9685_3.3.4.bb" rel=3D"noreferrer" target=3D"_blank">python3-adafruit=
-circuitpython-pca9685_3.3.4.bb</a><br>
+++ b/recipes-devtools/python/<a href=3D"http://python3-adafruit-circuitpyt=
hon-pca9685_3.3.4.bb" rel=3D"noreferrer" target=3D"_blank">python3-adafruit=
-circuitpython-pca9685_3.3.4.bb</a><br>
@@ -3,7 +3,7 @@ HOMEPAGE =3D &quot;<a href=3D"https://github.com/adafruit/A=
dafruit_CircuitPython_PCA9685" rel=3D"noreferrer" target=3D"_blank">https:/=
/github.com/adafruit/Adafruit_CircuitPython_PCA9685</a>&quot;<br>
=C2=A0LICENSE =3D &quot;MIT&quot;<br>
=C2=A0LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3De7eb6b599fb0cfb06485c=
64cd4242f62&quot;<br>
<br>
-SRC_URI =3D &quot;git://<a href=3D"http://github.com/adafruit/Adafruit_Cir=
cuitPython_PCA9685.git;branch=3Dmain" rel=3D"noreferrer" target=3D"_blank">=
github.com/adafruit/Adafruit_CircuitPython_PCA9685.git;branch=3Dmain</a>&qu=
ot;<br>
+SRC_URI =3D &quot;git://<a href=3D"http://github.com/adafruit/Adafruit_Cir=
cuitPython_PCA9685.git;protocol=3Dhttps;branch=3Dmain" rel=3D"noreferrer" t=
arget=3D"_blank">github.com/adafruit/Adafruit_CircuitPython_PCA9685.git;pro=
tocol=3Dhttps;branch=3Dmain</a>&quot;<br>
=C2=A0SRCREV =3D &quot;2780c4102f4c23fbab252aa1198b61ba7e2d1b2c&quot;<br>
<br>
=C2=A0S =3D &quot;${WORKDIR}/git&quot;<br>
diff --git a/recipes-devtools/python/<a href=3D"http://python3-adafruit-cir=
cuitpython-register_1.9.4.bb" rel=3D"noreferrer" target=3D"_blank">python3-=
adafruit-circuitpython-register_1.9.4.bb</a> b/recipes-devtools/python/<a h=
ref=3D"http://python3-adafruit-circuitpython-register_1.9.4.bb" rel=3D"nore=
ferrer" target=3D"_blank">python3-adafruit-circuitpython-register_1.9.4.bb<=
/a><br>
index ccf5eaa..0e6fe68 100644<br>
--- a/recipes-devtools/python/<a href=3D"http://python3-adafruit-circuitpyt=
hon-register_1.9.4.bb" rel=3D"noreferrer" target=3D"_blank">python3-adafrui=
t-circuitpython-register_1.9.4.bb</a><br>
+++ b/recipes-devtools/python/<a href=3D"http://python3-adafruit-circuitpyt=
hon-register_1.9.4.bb" rel=3D"noreferrer" target=3D"_blank">python3-adafrui=
t-circuitpython-register_1.9.4.bb</a><br>
@@ -3,7 +3,7 @@ HOMEPAGE =3D &quot;<a href=3D"https://github.com/adafruit/A=
dafruit_CircuitPython_Register" rel=3D"noreferrer" target=3D"_blank">https:=
//github.com/adafruit/Adafruit_CircuitPython_Register</a>&quot;<br>
=C2=A0LICENSE =3D &quot;MIT&quot;<br>
=C2=A0LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D6ec69d6e9e6c85adfb779=
9d7f8cf044e&quot;<br>
<br>
-SRC_URI =3D &quot;git://<a href=3D"http://github.com/adafruit/Adafruit_Cir=
cuitPython_Register.git;branch=3Dmain" rel=3D"noreferrer" target=3D"_blank"=
>github.com/adafruit/Adafruit_CircuitPython_Register.git;branch=3Dmain</a>&=
quot;<br>
+SRC_URI =3D &quot;git://<a href=3D"http://github.com/adafruit/Adafruit_Cir=
cuitPython_Register.git;protocol=3Dhttps;branch=3Dmain" rel=3D"noreferrer" =
target=3D"_blank">github.com/adafruit/Adafruit_CircuitPython_Register.git;p=
rotocol=3Dhttps;branch=3Dmain</a>&quot;<br>
<br>
=C2=A0S =3D &quot;${WORKDIR}/git&quot;<br>
=C2=A0SRCREV =3D &quot;5fee6e0c3878110844bc51e16063eeae7d94c457&quot;<br>
diff --git a/recipes-devtools/python/<a href=3D"http://python3-adafruit-pla=
tformdetect_3.1.1.bb" rel=3D"noreferrer" target=3D"_blank">python3-adafruit=
-platformdetect_3.1.1.bb</a> b/recipes-devtools/python/<a href=3D"http://py=
thon3-adafruit-platformdetect_3.1.1.bb" rel=3D"noreferrer" target=3D"_blank=
">python3-adafruit-platformdetect_3.1.1.bb</a><br>
index b88affa..0478be6 100644<br>
--- a/recipes-devtools/python/<a href=3D"http://python3-adafruit-platformde=
tect_3.1.1.bb" rel=3D"noreferrer" target=3D"_blank">python3-adafruit-platfo=
rmdetect_3.1.1.bb</a><br>
+++ b/recipes-devtools/python/<a href=3D"http://python3-adafruit-platformde=
tect_3.1.1.bb" rel=3D"noreferrer" target=3D"_blank">python3-adafruit-platfo=
rmdetect_3.1.1.bb</a><br>
@@ -3,7 +3,7 @@ HOMEPAGE =3D &quot;<a href=3D"https://github.com/adafruit/A=
dafruit_Python_PlatformDetect" rel=3D"noreferrer" target=3D"_blank">https:/=
/github.com/adafruit/Adafruit_Python_PlatformDetect</a>&quot;<br>
=C2=A0LICENSE =3D &quot;MIT&quot;<br>
=C2=A0LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3Dfccd531dce4b989c05173=
925f0bbb76c&quot;<br>
<br>
-SRC_URI =3D &quot;git://<a href=3D"http://github.com/adafruit/Adafruit_Pyt=
hon_PlatformDetect.git;branch=3Dmain" rel=3D"noreferrer" target=3D"_blank">=
github.com/adafruit/Adafruit_Python_PlatformDetect.git;branch=3Dmain</a>&qu=
ot;<br>
+SRC_URI =3D &quot;git://<a href=3D"http://github.com/adafruit/Adafruit_Pyt=
hon_PlatformDetect.git;protocol=3Dhttps;branch=3Dmain" rel=3D"noreferrer" t=
arget=3D"_blank">github.com/adafruit/Adafruit_Python_PlatformDetect.git;pro=
tocol=3Dhttps;branch=3Dmain</a>&quot;<br>
=C2=A0SRCREV =3D &quot;e0fe1b012898fa824944d6805ca74be0fa027968&quot;<br>
<br>
=C2=A0S =3D &quot;${WORKDIR}/git&quot;<br>
diff --git a/recipes-devtools/python/<a href=3D"http://python3-adafruit-pur=
eio_1.1.8.bb" rel=3D"noreferrer" target=3D"_blank">python3-adafruit-pureio_=
1.1.8.bb</a> b/recipes-devtools/python/<a href=3D"http://python3-adafruit-p=
ureio_1.1.8.bb" rel=3D"noreferrer" target=3D"_blank">python3-adafruit-purei=
o_1.1.8.bb</a><br>
index 63c7166..6472790 100644<br>
--- a/recipes-devtools/python/<a href=3D"http://python3-adafruit-pureio_1.1=
.8.bb" rel=3D"noreferrer" target=3D"_blank">python3-adafruit-pureio_1.1.8.b=
b</a><br>
+++ b/recipes-devtools/python/<a href=3D"http://python3-adafruit-pureio_1.1=
.8.bb" rel=3D"noreferrer" target=3D"_blank">python3-adafruit-pureio_1.1.8.b=
b</a><br>
@@ -3,7 +3,7 @@ HOMEPAGE =3D &quot;<a href=3D"https://github.com/adafruit/A=
dafruit_Python_PureIO" rel=3D"noreferrer" target=3D"_blank">https://github.=
com/adafruit/Adafruit_Python_PureIO</a>&quot;<br>
=C2=A0LICENSE =3D &quot;MIT&quot;<br>
=C2=A0LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D2a21fcca821a506d4c36f=
7bbecc0d009&quot;<br>
<br>
-SRC_URI =3D &quot;git://<a href=3D"http://github.com/adafruit/Adafruit_Pyt=
hon_PureIO.git;branch=3Dmain" rel=3D"noreferrer" target=3D"_blank">github.c=
om/adafruit/Adafruit_Python_PureIO.git;branch=3Dmain</a>&quot;<br>
+SRC_URI =3D &quot;git://<a href=3D"http://github.com/adafruit/Adafruit_Pyt=
hon_PureIO.git;protocol=3Dhttps;branch=3Dmain" rel=3D"noreferrer" target=3D=
"_blank">github.com/adafruit/Adafruit_Python_PureIO.git;protocol=3Dhttps;br=
anch=3Dmain</a>&quot;<br>
=C2=A0SRCREV =3D &quot;f4d0973da05b8b21905ff6bab69cdb652128f342&quot;<br>
<br>
=C2=A0S =3D &quot;${WORKDIR}/git&quot;<br>
diff --git a/recipes-devtools/python/<a href=3D"http://python3-rtimu_git.bb=
" rel=3D"noreferrer" target=3D"_blank">python3-rtimu_git.bb</a> b/recipes-d=
evtools/python/<a href=3D"http://python3-rtimu_git.bb" rel=3D"noreferrer" t=
arget=3D"_blank">python3-rtimu_git.bb</a><br>
index 4f13a38..401a301 100644<br>
--- a/recipes-devtools/python/<a href=3D"http://python3-rtimu_git.bb" rel=
=3D"noreferrer" target=3D"_blank">python3-rtimu_git.bb</a><br>
+++ b/recipes-devtools/python/<a href=3D"http://python3-rtimu_git.bb" rel=
=3D"noreferrer" target=3D"_blank">python3-rtimu_git.bb</a><br>
@@ -5,7 +5,7 @@ SECTION =3D &quot;devel/python&quot;<br>
=C2=A0LICENSE =3D &quot;MIT&quot;<br>
=C2=A0LIC_FILES_CHKSUM =3D &quot;file://../../LICENSE;md5=3D96cdecb41125f49=
8958e09b72faf318e&quot;<br>
<br>
-SRC_URI =3D &quot;git://<a href=3D"http://github.com/RPi-Distro/RTIMULib.g=
it;protocol=3Dhttp;branch=3Dmaster" rel=3D"noreferrer" target=3D"_blank">gi=
thub.com/RPi-Distro/RTIMULib.git;protocol=3Dhttp;branch=3Dmaster</a> \<br>
+SRC_URI =3D &quot;git://<a href=3D"http://github.com/RPi-Distro/RTIMULib.g=
it;protocol=3Dhttps;branch=3Dmaster" rel=3D"noreferrer" target=3D"_blank">g=
ithub.com/RPi-Distro/RTIMULib.git;protocol=3Dhttps;branch=3Dmaster</a> \<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0001-include-asm-ioctl.h-f=
or-ioctl-define.patch;patchdir=3D../.. \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
=C2=A0SRCREV =3D &quot;b949681af69b45f0f7f4bb53b6770037b5b02178&quot;<br>
diff --git a/recipes-graphics/userland/<a href=3D"http://userland_git.bb" r=
el=3D"noreferrer" target=3D"_blank">userland_git.bb</a> b/recipes-graphics/=
userland/<a href=3D"http://userland_git.bb" rel=3D"noreferrer" target=3D"_b=
lank">userland_git.bb</a><br>
index a2ae918..5676c31 100644<br>
--- a/recipes-graphics/userland/<a href=3D"http://userland_git.bb" rel=3D"n=
oreferrer" target=3D"_blank">userland_git.bb</a><br>
+++ b/recipes-graphics/userland/<a href=3D"http://userland_git.bb" rel=3D"n=
oreferrer" target=3D"_blank">userland_git.bb</a><br>
@@ -20,7 +20,7 @@ SRCREV =3D &quot;97bc8180ad682b004ea224d1db7b8e108eda4397=
&quot;<br>
=C2=A0PV =3D &quot;20210623&quot;<br>
<br>
=C2=A0SRC_URI =3D &quot;\<br>
-=C2=A0 =C2=A0 git://<a href=3D"http://github.com/$%7BSRCFORK%7D/userland.g=
it;protocol=3Dgit;branch=3D$%7BSRCBRANCH%7D" rel=3D"noreferrer" target=3D"_=
blank">github.com/${SRCFORK}/userland.git;protocol=3Dgit;branch=3D${SRCBRAN=
CH}</a> \<br>
+=C2=A0 =C2=A0 git://<a href=3D"http://github.com/$%7BSRCFORK%7D/userland.g=
it;protocol=3Dhttps;branch=3D$%7BSRCBRANCH%7D" rel=3D"noreferrer" target=3D=
"_blank">github.com/${SRCFORK}/userland.git;protocol=3Dhttps;branch=3D${SRC=
BRANCH}</a> \<br>
=C2=A0 =C2=A0 =C2=A0file://0001-Allow-applications-to-set-next-resource-han=
dle.patch \<br>
=C2=A0 =C2=A0 =C2=A0file://0002-wayland-Add-support-for-the-Wayland-winsys.=
patch \<br>
=C2=A0 =C2=A0 =C2=A0file://0003-wayland-Add-Wayland-example.patch \<br>
diff --git a/recipes-kernel/bluez-firmware-rpidistro/<a href=3D"http://blue=
z-firmware-rpidistro_git.bb" rel=3D"noreferrer" target=3D"_blank">bluez-fir=
mware-rpidistro_git.bb</a> b/recipes-kernel/bluez-firmware-rpidistro/<a hre=
f=3D"http://bluez-firmware-rpidistro_git.bb" rel=3D"noreferrer" target=3D"_=
blank">bluez-firmware-rpidistro_git.bb</a><br>
index ef8df32..f25aab9 100644<br>
--- a/recipes-kernel/bluez-firmware-rpidistro/<a href=3D"http://bluez-firmw=
are-rpidistro_git.bb" rel=3D"noreferrer" target=3D"_blank">bluez-firmware-r=
pidistro_git.bb</a><br>
+++ b/recipes-kernel/bluez-firmware-rpidistro/<a href=3D"http://bluez-firmw=
are-rpidistro_git.bb" rel=3D"noreferrer" target=3D"_blank">bluez-firmware-r=
pidistro_git.bb</a><br>
@@ -23,7 +23,7 @@ LIC_FILES_CHKSUM =3D &quot;\<br>
=C2=A0# so that the license files will be copied from fetched source<br>
=C2=A0NO_GENERIC_LICENSE[Firmware-cypress-rpidistro] =3D &quot;LICENCE.cypr=
ess-rpidistro&quot;<br>
<br>
-SRC_URI =3D &quot;git://<a href=3D"http://github.com/RPi-Distro/bluez-firm=
ware" rel=3D"noreferrer" target=3D"_blank">github.com/RPi-Distro/bluez-firm=
ware</a>&quot;<br>
+SRC_URI =3D &quot;git://<a href=3D"http://github.com/RPi-Distro/bluez-firm=
ware;protocol=3Dhttps" rel=3D"noreferrer" target=3D"_blank">github.com/RPi-=
Distro/bluez-firmware;protocol=3Dhttps</a>&quot;<br>
=C2=A0SRCREV =3D &quot;e7fd166981ab4bb9a36c2d1500205a078a35714d&quot;<br>
=C2=A0PV =3D &quot;1.2-4+rpt8&quot;<br>
<br>
diff --git a/recipes-kernel/linux-firmware-rpidistro/<a href=3D"http://linu=
x-firmware-rpidistro_git.bb" rel=3D"noreferrer" target=3D"_blank">linux-fir=
mware-rpidistro_git.bb</a> b/recipes-kernel/linux-firmware-rpidistro/<a hre=
f=3D"http://linux-firmware-rpidistro_git.bb" rel=3D"noreferrer" target=3D"_=
blank">linux-firmware-rpidistro_git.bb</a><br>
index 4f242d3..9e4686e 100644<br>
--- a/recipes-kernel/linux-firmware-rpidistro/<a href=3D"http://linux-firmw=
are-rpidistro_git.bb" rel=3D"noreferrer" target=3D"_blank">linux-firmware-r=
pidistro_git.bb</a><br>
+++ b/recipes-kernel/linux-firmware-rpidistro/<a href=3D"http://linux-firmw=
are-rpidistro_git.bb" rel=3D"noreferrer" target=3D"_blank">linux-firmware-r=
pidistro_git.bb</a><br>
@@ -34,7 +34,7 @@ LIC_FILES_CHKSUM =3D &quot;\<br>
=C2=A0NO_GENERIC_LICENSE[Firmware-broadcom_bcm43xx-rpidistro] =3D &quot;LIC=
ENCE.broadcom_bcm43xx&quot;<br>
=C2=A0NO_GENERIC_LICENSE[WHENCE] =3D &quot;WHENCE&quot;<br>
<br>
-SRC_URI =3D &quot;git://<a href=3D"http://github.com/RPi-Distro/firmware-n=
onfree" rel=3D"noreferrer" target=3D"_blank">github.com/RPi-Distro/firmware=
-nonfree</a>&quot;<br>
+SRC_URI =3D &quot;git://<a href=3D"http://github.com/RPi-Distro/firmware-n=
onfree;protocol=3Dhttps" rel=3D"noreferrer" target=3D"_blank">github.com/RP=
i-Distro/firmware-nonfree;protocol=3Dhttps</a>&quot;<br>
<br>
=C2=A0SRCREV =3D &quot;83938f78ca2d5a0ffe0c223bb96d72ccc7b71ca5&quot;<br>
=C2=A0PV =3D &quot;20190114-1+rpt11&quot;<br>
diff --git a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi-dev.b=
b" rel=3D"noreferrer" target=3D"_blank">linux-raspberrypi-dev.bb</a> b/reci=
pes-kernel/linux/<a href=3D"http://linux-raspberrypi-dev.bb" rel=3D"norefer=
rer" target=3D"_blank">linux-raspberrypi-dev.bb</a><br>
index 0dfa451..fad65c6 100644<br>
--- a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi-dev.bb" rel=
=3D"noreferrer" target=3D"_blank">linux-raspberrypi-dev.bb</a><br>
+++ b/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi-dev.bb" rel=
=3D"noreferrer" target=3D"_blank">linux-raspberrypi-dev.bb</a><br>
@@ -20,7 +20,7 @@ SRCREV_meta ?=3D &#39;${@oe.utils.conditional(&quot;PREFE=
RRED_PROVIDER_virtual/kernel&quot;, &quot;li<br>
=C2=A0KMETA =3D &quot;kernel-meta&quot;<br>
<br>
=C2=A0SRC_URI =3D &quot; \<br>
-=C2=A0 =C2=A0 git://<a href=3D"http://github.com/raspberrypi/linux.git;nam=
e=3Dmachine;branch=3D$%7BLINUX_RPI_BRANCH%7D" rel=3D"noreferrer" target=3D"=
_blank">github.com/raspberrypi/linux.git;name=3Dmachine;branch=3D${LINUX_RP=
I_BRANCH}</a> \<br>
+=C2=A0 =C2=A0 git://<a href=3D"http://github.com/raspberrypi/linux.git;pro=
tocol=3Dhttps;name=3Dmachine;branch=3D$%7BLINUX_RPI_BRANCH%7D" rel=3D"noref=
errer" target=3D"_blank">github.com/raspberrypi/linux.git;protocol=3Dhttps;=
name=3Dmachine;branch=3D${LINUX_RPI_BRANCH}</a> \<br>
=C2=A0 =C2=A0 =C2=A0git://<a href=3D"http://git.yoctoproject.org/yocto-kern=
el-cache;type=3Dkmeta;name=3Dmeta;branch=3D$%7BLINUX_RPI_KMETA_BRANCH%7D;de=
stsuffix=3D$%7BKMETA%7D" rel=3D"noreferrer" target=3D"_blank">git.yoctoproj=
ect.org/yocto-kernel-cache;type=3Dkmeta;name=3Dmeta;branch=3D${LINUX_RPI_KM=
ETA_BRANCH};destsuffix=3D${KMETA}</a> \<br>
=C2=A0 =C2=A0 =C2=A0file://powersave.cfg \<br>
=C2=A0 =C2=A0 =C2=A0file://android-drivers.cfg \<br>
diff --git a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_5.10.=
bb" rel=3D"noreferrer" target=3D"_blank">linux-raspberrypi_5.10.bb</a> b/re=
cipes-kernel/linux/<a href=3D"http://linux-raspberrypi_5.10.bb" rel=3D"nore=
ferrer" target=3D"_blank">linux-raspberrypi_5.10.bb</a><br>
index 3eeb4b4..10b138a 100644<br>
--- a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_5.10.bb" rel=
=3D"noreferrer" target=3D"_blank">linux-raspberrypi_5.10.bb</a><br>
+++ b/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_5.10.bb" rel=
=3D"noreferrer" target=3D"_blank">linux-raspberrypi_5.10.bb</a><br>
@@ -8,7 +8,7 @@ SRCREV_meta =3D &quot;e1979ceb171bc91ef2cb71cfcde548a101dab=
687&quot;<br>
=C2=A0KMETA =3D &quot;kernel-meta&quot;<br>
<br>
=C2=A0SRC_URI =3D &quot; \<br>
-=C2=A0 =C2=A0 git://<a href=3D"http://github.com/raspberrypi/linux.git;nam=
e=3Dmachine;branch=3D$%7BLINUX_RPI_BRANCH%7D" rel=3D"noreferrer" target=3D"=
_blank">github.com/raspberrypi/linux.git;name=3Dmachine;branch=3D${LINUX_RP=
I_BRANCH}</a> \<br>
+=C2=A0 =C2=A0 git://<a href=3D"http://github.com/raspberrypi/linux.git;pro=
tocol=3Dhttps;name=3Dmachine;branch=3D$%7BLINUX_RPI_BRANCH%7D" rel=3D"noref=
errer" target=3D"_blank">github.com/raspberrypi/linux.git;protocol=3Dhttps;=
name=3Dmachine;branch=3D${LINUX_RPI_BRANCH}</a> \<br>
=C2=A0 =C2=A0 =C2=A0git://<a href=3D"http://git.yoctoproject.org/yocto-kern=
el-cache;type=3Dkmeta;name=3Dmeta;branch=3D$%7BLINUX_RPI_KMETA_BRANCH%7D;de=
stsuffix=3D$%7BKMETA%7D" rel=3D"noreferrer" target=3D"_blank">git.yoctoproj=
ect.org/yocto-kernel-cache;type=3Dkmeta;name=3Dmeta;branch=3D${LINUX_RPI_KM=
ETA_BRANCH};destsuffix=3D${KMETA}</a> \<br>
=C2=A0 =C2=A0 =C2=A0file://powersave.cfg \<br>
=C2=A0 =C2=A0 =C2=A0file://android-drivers.cfg \<br>
diff --git a/recipes-multimedia/omxplayer/<a href=3D"http://omxplayer_git.b=
b" rel=3D"noreferrer" target=3D"_blank">omxplayer_git.bb</a> b/recipes-mult=
imedia/omxplayer/<a href=3D"http://omxplayer_git.bb" rel=3D"noreferrer" tar=
get=3D"_blank">omxplayer_git.bb</a><br>
index d294399..64233b3 100644<br>
--- a/recipes-multimedia/omxplayer/<a href=3D"http://omxplayer_git.bb" rel=
=3D"noreferrer" target=3D"_blank">omxplayer_git.bb</a><br>
+++ b/recipes-multimedia/omxplayer/<a href=3D"http://omxplayer_git.bb" rel=
=3D"noreferrer" target=3D"_blank">omxplayer_git.bb</a><br>
@@ -22,8 +22,8 @@ SRCREV_default =3D &quot;f543a0d0e707ab56415f17b0ca6d3973=
94ee8b63&quot;<br>
=C2=A0# This SRCREV corresponds to the v4.0.3 release of ffmpeg.<br>
=C2=A0SRCREV_ffmpeg =3D &quot;fcbd117df3077bad495e99e20f01cf93737bce76&quot=
;<br>
<br>
-SRC_URI =3D &quot;git://<a href=3D"http://github.com/popcornmix/omxplayer.=
git;protocol=3Dgit;branch=3Dmaster" rel=3D"noreferrer" target=3D"_blank">gi=
thub.com/popcornmix/omxplayer.git;protocol=3Dgit;branch=3Dmaster</a> \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0git://<a href=3D"http://github.co=
m/FFmpeg/FFmpeg;branch=3Drelease/4.0;protocol=3Dgit;depth=3D1;name=3Dffmpeg=
;destsuffix=3Dgit/ffmpeg" rel=3D"noreferrer" target=3D"_blank">github.com/F=
Fmpeg/FFmpeg;branch=3Drelease/4.0;protocol=3Dgit;depth=3D1;name=3Dffmpeg;de=
stsuffix=3Dgit/ffmpeg</a> \<br>
+SRC_URI =3D &quot;git://<a href=3D"http://github.com/popcornmix/omxplayer.=
git;protocol=3Dhttps;branch=3Dmaster" rel=3D"noreferrer" target=3D"_blank">=
github.com/popcornmix/omxplayer.git;protocol=3Dhttps;branch=3Dmaster</a> \<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0git://<a href=3D"http://github.co=
m/FFmpeg/FFmpeg;branch=3Drelease/4.0;protocol=3Dhttps;depth=3D1;name=3Dffmp=
eg;destsuffix=3Dgit/ffmpeg" rel=3D"noreferrer" target=3D"_blank">github.com=
/FFmpeg/FFmpeg;branch=3Drelease/4.0;protocol=3Dhttps;depth=3D1;name=3Dffmpe=
g;destsuffix=3Dgit/ffmpeg</a> \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0002-Libraries-and-headers=
-from-ffmpeg-are-installed-in-u.patch \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0003-Remove-strip-step-in-=
Makefile.patch \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0004-Add-FFMPEG_EXTRA_CFLA=
GS-and-FFMPEG_EXTRA_LDFLAGS.patch \<br>
-- <br>
2.30.2<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55266): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55266" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55266</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/86890763/3617=
156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/86890763/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank">Martin=
.Jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000275eca05d0396516--

