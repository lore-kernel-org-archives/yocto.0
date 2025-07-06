Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB4BCC83F09
	for <webhook@archiver.kernel.org>; Sun,  6 Jul 2025 21:56:23 +0000 (UTC)
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
 by mx.groups.io with SMTP id smtpd.web11.46021.1751838218045724063
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Jul 2025 14:43:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PtABwuBl;
 spf=pass (domain: gmail.com, ip: 209.85.128.181, mailfrom: schonm@gmail.com)
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-70e3980757bso20326807b3.1
        for <yocto@lists.yoctoproject.org>; Sun, 06 Jul 2025 14:43:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751838217; x=1752443017; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jPdZqFlHyi/g2Vd0R5LfIGdPKEQ2apmuU0vIXAGtF5s=;
        b=PtABwuBl/xKxZ6aO3Wb73XpceQdpMgNTgGwT1wU6Zr5VH4y+lpe2nAOh9a0G61/6te
         GpBQTCPdbYhNB48DD/k4ce/bUgkhuaCSzd60KL0RmQCNbaPY6t78F6BQwdbdpz92zesH
         RpPB1a7P1C5Cx5JYuxeoQwsYGJ/9ZKtVzC21s1ziVYx2fd+luMpJ6VDHferQ/y2LHc05
         gnkW1kChabLb4VseUXImEm0DZ2SKZ7NnL7pExfSjtcwxFvX4sXg71TaC/vdEkBBhlnhq
         MM2S5L7LIvldFdDeOwj8ZBC7a78J07fIqDrcWYjjG9gvlPll0YAnUq/n2pt0oMGhpc1K
         Wd4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751838217; x=1752443017;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jPdZqFlHyi/g2Vd0R5LfIGdPKEQ2apmuU0vIXAGtF5s=;
        b=PNZkqw5A80/LqghsrjKDDcXUueUiXt9lYIxklRiK62Pl4H01WfNyoeli/rETvVMnG8
         65zEfM0nEssLoiWm0BD4831tmRwJalSC+Xu+VEx0qPiGq6vi5HiiWwgHcc7obhAoxwFv
         lIQ6xbqr+SyxAquEAGQBJClNB+kL7hNccRvYUQ/Pue1A0JZFqLPNLbVYA9kZdg+NePt7
         dvpvHCAnkrvqXMmTzMcpKJnKfBAvX2/LIi4qpkIhOdAoov0JWB5vSuzyp6GFNOyjL8F7
         mE1LZzeWgPZ/oZdxKhXQYUcDCzuqbs/EwSk8jbKQB3DZrnGv+hq5gIu8Qo6L6XB4jQbH
         UKRw==
X-Gm-Message-State: AOJu0YwF6ferEbvItfcbG+XiEcdiTIjM6Nedqdh1SLh6MRihzCdtlOM2
	DXJbHFX/EocupyRA0phAfCe1meH/jD3Vwyqj0U+BdMpbjpJ5nsZe2kQv1yC3F5gW
X-Gm-Gg: ASbGncutDlD3wlCW9EDPQlsOkixPmaSgkbBgFGaaqYCA6iDmqajcMlPiTmBaEr8346f
	YQIVqrs8rHd9a81X9iIdyBfgaRCE5Exz8jokSyc/PQzXEupYMs19FQr/etAPi2427uJ39voTqVy
	jy1l3bgzNRZ7TM/FT9IU6V9LgfPfdqcuSXERECtCOCfEWKna0SroPJa0jZU3U1/wM62i2lwlmH1
	ltU6o4YU4Y4QKHM1DI9GoqjCl8uBtAuPAV70tqVGJFBQaiZ17ppc+0xe9p6RR8x09JFNHPca5qK
	k31zEL17aHq+tS4nC3ysprO0RijE0xVBVrM3pW1TKQ7I51eI/k0ONr0onz87l6HLSLm374p/J8/
	zKF46AFKwcXVsOgnlFUGL
X-Google-Smtp-Source: AGHT+IHmzBmRnUp4ltTPvGUFEv6HbIDxM9NZLZ2rBwF131wZg5nYkWdLGieLlb7mCQUFfw/IAY0Sgw==
X-Received: by 2002:a05:690c:9988:b0:712:c5f7:1eef with SMTP id 00721157ae682-71667dc7a72mr142217767b3.3.1751838216502;
        Sun, 06 Jul 2025 14:43:36 -0700 (PDT)
Received: from localhost.localdomain (71-208-4-221.ftmy.qwest.net. [71.208.4.221])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e899c340aa3sm2237479276.21.2025.07.06.14.43.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Jul 2025 14:43:35 -0700 (PDT)
From: "J. S." <schonm@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Jason Schonberg <schonm@gmail.com>
Subject: [meta-raspberrypi][PATCH 2/3] Changes to S as requried by oe-core
Date: Sun,  6 Jul 2025 17:29:54 -0400
Message-ID: <20250706213926.1813828-4-schonm@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250706213926.1813828-2-schonm@gmail.com>
References: <20250706213926.1813828-2-schonm@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 06 Jul 2025 21:56:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65612

S dropped from git recipes.

WORKDIR replaced with UNPACKDIR as suggested by oe-core commit 0ad5fb3431b5f5875326d929442124a8fabe0642

I.E.

sed -i "/^S = \"\${WORKDIR}\/git\"/d" `find . -name *.bb -o -name *.inc -o -name *.bbclass`

followed by this:

sed -i "s/^S = \"\${WORKDIR}\//S = \"\${UNPACKDIR}\//g" `find . -name *.bb -o -name *.inc -o -name *.bbclass`

Signed-off-by: Jason Schonberg <schonm@gmail.com>
---
 .../recipes-multimedia/libcamera-apps/libcamera-apps_git.bb     | 1 -
 .../recipes-multimedia/rpidistro-vlc/rpidistro-vlc_3.0.17.bb    | 1 -
 .../recipes-devtools/python/python3-adafruit-blinka_6.2.2.bb    | 1 -
 .../python/python3-adafruit-circuitpython-busdevice_5.0.5.bb    | 1 -
 .../python/python3-adafruit-circuitpython-motor_3.2.6.bb        | 1 -
 .../python/python3-adafruit-circuitpython-motorkit_1.6.1.bb     | 1 -
 .../python/python3-adafruit-circuitpython-pca9685_3.3.4.bb      | 1 -
 recipes-bsp/bootfiles/rpi-config_git.bb                         | 1 -
 recipes-bsp/rpi-eeprom/rpi-eeprom_git.bb                        | 1 -
 recipes-bsp/rpi-u-boot-scr/rpi-u-boot-scr.bb                    | 2 +-
 recipes-connectivity/pi-bluetooth/pi-bluetooth_0.1.17.bb        | 1 -
 recipes-core/udev/udev-rules-rpi.bb                             | 1 -
 recipes-devtools/pi-blaster/pi-blaster_git.bb                   | 1 -
 .../python/python3-adafruit-circuitpython-register_1.9.10.bb    | 1 -
 .../python/python3-adafruit-platformdetect_3.27.0.bb            | 1 -
 recipes-devtools/python/python3-adafruit-pureio_1.1.9.bb        | 1 -
 recipes-devtools/python/python3-rtimu_7.2.1.bb                  | 2 +-
 recipes-devtools/python/rpio_0.10.1.bb                          | 1 -
 recipes-devtools/raspi-gpio/raspi-gpio_git.bb                   | 1 -
 recipes-devtools/raspi-utils/raspi-utils_git.bb                 | 1 -
 recipes-graphics/raspidmx/raspidmx_git.bb                       | 1 -
 recipes-graphics/userland/userland_git.bb                       | 1 -
 .../bluez-firmware-rpidistro/bluez-firmware-rpidistro_git.bb    | 1 -
 .../linux-firmware-rpidistro/linux-firmware-rpidistro_git.bb    | 1 -
 recipes-multimedia/omxplayer/omxplayer_git.bb                   | 1 -
 recipes-multimedia/python3-picamera/python3-picamera_git.bb     | 1 -
 recipes-multimedia/rpidistro-ffmpeg/rpidistro-ffmpeg_5.1.4.bb   | 1 -
 27 files changed, 2 insertions(+), 27 deletions(-)

diff --git a/dynamic-layers/multimedia-layer/recipes-multimedia/libcamera-apps/libcamera-apps_git.bb b/dynamic-layers/multimedia-layer/recipes-multimedia/libcamera-apps/libcamera-apps_git.bb
index dc07145..343004f 100644
--- a/dynamic-layers/multimedia-layer/recipes-multimedia/libcamera-apps/libcamera-apps_git.bb
+++ b/dynamic-layers/multimedia-layer/recipes-multimedia/libcamera-apps/libcamera-apps_git.bb
@@ -15,7 +15,6 @@ SRC_URI = "\
 PV = "1.4.2+git${SRCPV}"
 SRCREV = "9ae39f85ae6bee9761c36b9b5b80d675bc1fa369"
 
-S = "${WORKDIR}/git"
 
 DEPENDS = "libcamera libexif jpeg tiff libpng boost"
 
diff --git a/dynamic-layers/multimedia-layer/recipes-multimedia/rpidistro-vlc/rpidistro-vlc_3.0.17.bb b/dynamic-layers/multimedia-layer/recipes-multimedia/rpidistro-vlc/rpidistro-vlc_3.0.17.bb
index 2007201..8f61c2a 100644
--- a/dynamic-layers/multimedia-layer/recipes-multimedia/rpidistro-vlc/rpidistro-vlc_3.0.17.bb
+++ b/dynamic-layers/multimedia-layer/recipes-multimedia/rpidistro-vlc/rpidistro-vlc_3.0.17.bb
@@ -32,7 +32,6 @@ SRC_URI = "\
 
 SRCREV = "b276eb0d7bc3213363e97dbb681ef7c927be6c73"
 
-S = "${WORKDIR}/git"
 
 PROVIDES = "vlc"
 RPROVIDES:${PN} = "${PROVIDES}"
diff --git a/dynamic-layers/openembedded-layer/recipes-devtools/python/python3-adafruit-blinka_6.2.2.bb b/dynamic-layers/openembedded-layer/recipes-devtools/python/python3-adafruit-blinka_6.2.2.bb
index 9e1e357..cf9c1af 100644
--- a/dynamic-layers/openembedded-layer/recipes-devtools/python/python3-adafruit-blinka_6.2.2.bb
+++ b/dynamic-layers/openembedded-layer/recipes-devtools/python/python3-adafruit-blinka_6.2.2.bb
@@ -6,7 +6,6 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=660e614bc7efb0697cc793d8a22a55c2"
 SRC_URI = "git://github.com/adafruit/Adafruit_Blinka.git;branch=main;protocol=https"
 SRCREV = "dc688f354fe779c9267c208b99f310af87e79272"
 
-S = "${WORKDIR}/git"
 
 inherit setuptools3
 
diff --git a/dynamic-layers/openembedded-layer/recipes-devtools/python/python3-adafruit-circuitpython-busdevice_5.0.5.bb b/dynamic-layers/openembedded-layer/recipes-devtools/python/python3-adafruit-circuitpython-busdevice_5.0.5.bb
index 93491d4..52db8b1 100644
--- a/dynamic-layers/openembedded-layer/recipes-devtools/python/python3-adafruit-circuitpython-busdevice_5.0.5.bb
+++ b/dynamic-layers/openembedded-layer/recipes-devtools/python/python3-adafruit-circuitpython-busdevice_5.0.5.bb
@@ -6,7 +6,6 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=6ec69d6e9e6c85adfb7799d7f8cf044e"
 SRC_URI = "git://github.com/adafruit/Adafruit_CircuitPython_BusDevice.git;branch=main;protocol=https"
 SRCREV = "1bfe8005293205e2f7b2cc498ab5a946f1133b40"
 
-S = "${WORKDIR}/git"
 
 inherit setuptools3
 
diff --git a/dynamic-layers/openembedded-layer/recipes-devtools/python/python3-adafruit-circuitpython-motor_3.2.6.bb b/dynamic-layers/openembedded-layer/recipes-devtools/python/python3-adafruit-circuitpython-motor_3.2.6.bb
index 3233c8f..c568504 100644
--- a/dynamic-layers/openembedded-layer/recipes-devtools/python/python3-adafruit-circuitpython-motor_3.2.6.bb
+++ b/dynamic-layers/openembedded-layer/recipes-devtools/python/python3-adafruit-circuitpython-motor_3.2.6.bb
@@ -6,7 +6,6 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=b72678307cc7c10910b5ef460216af07"
 SRC_URI = "git://github.com/adafruit/Adafruit_CircuitPython_Motor.git;branch=main;protocol=https"
 SRCREV = "2251bfc0501d0acfb96c0a43f4f2b4c6a10ca14e"
 
-S = "${WORKDIR}/git"
 
 inherit setuptools3
 
diff --git a/dynamic-layers/openembedded-layer/recipes-devtools/python/python3-adafruit-circuitpython-motorkit_1.6.1.bb b/dynamic-layers/openembedded-layer/recipes-devtools/python/python3-adafruit-circuitpython-motorkit_1.6.1.bb
index 39fe76a..4de6462 100644
--- a/dynamic-layers/openembedded-layer/recipes-devtools/python/python3-adafruit-circuitpython-motorkit_1.6.1.bb
+++ b/dynamic-layers/openembedded-layer/recipes-devtools/python/python3-adafruit-circuitpython-motorkit_1.6.1.bb
@@ -6,7 +6,6 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=6ad4a8854b39ad474755ef1aea813bac"
 SRC_URI = "git://github.com/adafruit/Adafruit_CircuitPython_MotorKit.git;branch=main;protocol=https"
 SRCREV = "8c1462b4129b21f6db156d1517abb017bb74b982"
 
-S = "${WORKDIR}/git"
 
 inherit setuptools3
 
diff --git a/dynamic-layers/openembedded-layer/recipes-devtools/python/python3-adafruit-circuitpython-pca9685_3.3.4.bb b/dynamic-layers/openembedded-layer/recipes-devtools/python/python3-adafruit-circuitpython-pca9685_3.3.4.bb
index f7f0ff1..1da4c3f 100644
--- a/dynamic-layers/openembedded-layer/recipes-devtools/python/python3-adafruit-circuitpython-pca9685_3.3.4.bb
+++ b/dynamic-layers/openembedded-layer/recipes-devtools/python/python3-adafruit-circuitpython-pca9685_3.3.4.bb
@@ -6,7 +6,6 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=e7eb6b599fb0cfb06485c64cd4242f62"
 SRC_URI = "git://github.com/adafruit/Adafruit_CircuitPython_PCA9685.git;branch=main;protocol=https"
 SRCREV = "2780c4102f4c23fbab252aa1198b61ba7e2d1b2c"
 
-S = "${WORKDIR}/git"
 
 inherit setuptools3
 
diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
index 0140f30..d39621c 100644
--- a/recipes-bsp/bootfiles/rpi-config_git.bb
+++ b/recipes-bsp/bootfiles/rpi-config_git.bb
@@ -12,7 +12,6 @@ SRC_URI = "git://github.com/Evilpaul/RPi-config.git;protocol=https;branch=master
            file://0001-config.txt-reintroduce-start_x.patch \
           "
 
-S = "${WORKDIR}/git"
 
 PR = "r5"
 
diff --git a/recipes-bsp/rpi-eeprom/rpi-eeprom_git.bb b/recipes-bsp/rpi-eeprom/rpi-eeprom_git.bb
index f3ca5e3..ef8c2af 100644
--- a/recipes-bsp/rpi-eeprom/rpi-eeprom_git.bb
+++ b/recipes-bsp/rpi-eeprom/rpi-eeprom_git.bb
@@ -11,7 +11,6 @@ SRC_URI = " \
 SRCREV = "1bd0a1052b2e74d7af04de18d30b5edb12d8a423"
 PV = "v2025.03.10-2712"
 
-S = "${WORKDIR}/git"
 
 RDEPENDS:${PN} += " \
     coreutils \
diff --git a/recipes-bsp/rpi-u-boot-scr/rpi-u-boot-scr.bb b/recipes-bsp/rpi-u-boot-scr/rpi-u-boot-scr.bb
index d035d6e..81b5d08 100644
--- a/recipes-bsp/rpi-u-boot-scr/rpi-u-boot-scr.bb
+++ b/recipes-bsp/rpi-u-boot-scr/rpi-u-boot-scr.bb
@@ -21,7 +21,7 @@ do_compile() {
 
 inherit kernel-arch deploy nopackages
 
-S = "${WORKDIR}/sources"
+S = "${UNPACKDIR}/sources"
 UNPACKDIR = "${S}"
 
 do_deploy() {
diff --git a/recipes-connectivity/pi-bluetooth/pi-bluetooth_0.1.17.bb b/recipes-connectivity/pi-bluetooth/pi-bluetooth_0.1.17.bb
index 1c3daff..3f25f15 100644
--- a/recipes-connectivity/pi-bluetooth/pi-bluetooth_0.1.17.bb
+++ b/recipes-connectivity/pi-bluetooth/pi-bluetooth_0.1.17.bb
@@ -12,7 +12,6 @@ SRC_URI = "\
 "
 SRCREV = "fd4775bf90e037551532fc214a958074830bb80d"
 
-S = "${WORKDIR}/git"
 
 inherit ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd', 'update-rc.d', d)}
 # hciuart.service replaces what was brcm43438.service 
diff --git a/recipes-core/udev/udev-rules-rpi.bb b/recipes-core/udev/udev-rules-rpi.bb
index 3ca34f4..d898deb 100644
--- a/recipes-core/udev/udev-rules-rpi.bb
+++ b/recipes-core/udev/udev-rules-rpi.bb
@@ -8,7 +8,6 @@ SRC_URI = " \
 	"
 SRCREV = "5ce3ef2b7f377c23fea440ca9df0e30f3f8447cf"
 
-S = "${WORKDIR}/git"
 
 INHIBIT_DEFAULT_DEPS = "1"
 
diff --git a/recipes-devtools/pi-blaster/pi-blaster_git.bb b/recipes-devtools/pi-blaster/pi-blaster_git.bb
index d02fa92..644a4c7 100644
--- a/recipes-devtools/pi-blaster/pi-blaster_git.bb
+++ b/recipes-devtools/pi-blaster/pi-blaster_git.bb
@@ -8,7 +8,6 @@ SRC_URI = "git://github.com/sarfata/pi-blaster;branch=master;protocol=https \
            file://remove-initscript-lsb-dependency.patch \
            "
 
-S = "${WORKDIR}/git"
 
 SRCREV = "fbba9a7dcef0f352a11f8a2a5f6cbc15b62c0829"
 
diff --git a/recipes-devtools/python/python3-adafruit-circuitpython-register_1.9.10.bb b/recipes-devtools/python/python3-adafruit-circuitpython-register_1.9.10.bb
index 8ff3073..b009131 100644
--- a/recipes-devtools/python/python3-adafruit-circuitpython-register_1.9.10.bb
+++ b/recipes-devtools/python/python3-adafruit-circuitpython-register_1.9.10.bb
@@ -5,7 +5,6 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=6ec69d6e9e6c85adfb7799d7f8cf044e"
 
 SRC_URI = "git://github.com/adafruit/Adafruit_CircuitPython_Register.git;branch=main;protocol=https"
 SRCREV = "d1e8ac7ad9dcd65ab83749db3e5c96ffee80ebb7"
-S = "${WORKDIR}/git"
 
 DEPENDS += "python3-setuptools-scm-native"
 
diff --git a/recipes-devtools/python/python3-adafruit-platformdetect_3.27.0.bb b/recipes-devtools/python/python3-adafruit-platformdetect_3.27.0.bb
index 45dc49d..32eb491 100644
--- a/recipes-devtools/python/python3-adafruit-platformdetect_3.27.0.bb
+++ b/recipes-devtools/python/python3-adafruit-platformdetect_3.27.0.bb
@@ -5,7 +5,6 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=fccd531dce4b989c05173925f0bbb76c"
 
 SRC_URI = "git://github.com/adafruit/Adafruit_Python_PlatformDetect.git;branch=main;protocol=https"
 SRCREV = "e1460098eeca5ea573f92814691bb378e15530d9"
-S = "${WORKDIR}/git"
 
 inherit setuptools3
 
diff --git a/recipes-devtools/python/python3-adafruit-pureio_1.1.9.bb b/recipes-devtools/python/python3-adafruit-pureio_1.1.9.bb
index cdbe4b4..8f8d433 100644
--- a/recipes-devtools/python/python3-adafruit-pureio_1.1.9.bb
+++ b/recipes-devtools/python/python3-adafruit-pureio_1.1.9.bb
@@ -6,7 +6,6 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=2a21fcca821a506d4c36f7bbecc0d009"
 SRC_URI = "git://github.com/adafruit/Adafruit_Python_PureIO.git;branch=main;protocol=https"
 SRCREV = "383b615ce9ff5bbefdf77652799f380016fda353"
 
-S = "${WORKDIR}/git"
 
 inherit setuptools3
 
diff --git a/recipes-devtools/python/python3-rtimu_7.2.1.bb b/recipes-devtools/python/python3-rtimu_7.2.1.bb
index 1afbb5f..3fb603b 100644
--- a/recipes-devtools/python/python3-rtimu_7.2.1.bb
+++ b/recipes-devtools/python/python3-rtimu_7.2.1.bb
@@ -11,5 +11,5 @@ SRC_URI = "git://github.com/RPi-Distro/RTIMULib.git;protocol=http;branch=master;
           "
 SRCREV = "b949681af69b45f0f7f4bb53b6770037b5b02178"
 
-S = "${WORKDIR}/git/Linux/python"
+S = "${UNPACKDIR}/git/Linux/python"
 inherit setuptools3
diff --git a/recipes-devtools/python/rpio_0.10.1.bb b/recipes-devtools/python/rpio_0.10.1.bb
index 176646d..8a7b8c1 100644
--- a/recipes-devtools/python/rpio_0.10.1.bb
+++ b/recipes-devtools/python/rpio_0.10.1.bb
@@ -9,7 +9,6 @@ SRC_URI = "\
     git://github.com/metachris/RPIO.git;protocol=https;branch=master \
     "
 SRCREV = "be1942a69b2592ddacd9dc833d2668a19aafd8d2"
-S = "${WORKDIR}/git"
 
 inherit setuptools3
 
diff --git a/recipes-devtools/raspi-gpio/raspi-gpio_git.bb b/recipes-devtools/raspi-gpio/raspi-gpio_git.bb
index 8ea4be1..c9d4051 100644
--- a/recipes-devtools/raspi-gpio/raspi-gpio_git.bb
+++ b/recipes-devtools/raspi-gpio/raspi-gpio_git.bb
@@ -12,5 +12,4 @@ SRCREV = "22b44e4765b4b78dc5b22394fff484e353d5914d"
 SRC_URI = "git://github.com/RPi-Distro/raspi-gpio.git;protocol=https;branch=master \
           "
 
-S = "${WORKDIR}/git"
 
diff --git a/recipes-devtools/raspi-utils/raspi-utils_git.bb b/recipes-devtools/raspi-utils/raspi-utils_git.bb
index 77ff2c3..7c71eb1 100644
--- a/recipes-devtools/raspi-utils/raspi-utils_git.bb
+++ b/recipes-devtools/raspi-utils/raspi-utils_git.bb
@@ -15,7 +15,6 @@ SRC_URI = "git://github.com/raspberrypi/utils;protocol=https;branch=master"
 
 SRCREV = "b9c63214c535d7df2b0fa6743b7b3e508363c25a"
 
-S = "${WORKDIR}/git"
 
 FILES:${PN}:append = " \
     ${datadir}/bash-completion/completions/pinctrl \
diff --git a/recipes-graphics/raspidmx/raspidmx_git.bb b/recipes-graphics/raspidmx/raspidmx_git.bb
index 4729e8c..7c2e50c 100644
--- a/recipes-graphics/raspidmx/raspidmx_git.bb
+++ b/recipes-graphics/raspidmx/raspidmx_git.bb
@@ -20,7 +20,6 @@ SRC_URI = "git://github.com/AndrewFromMelbourne/raspidmx;protocol=https;branch=m
 PV = "0.0+git${SRCPV}"
 SRCREV = "e2ee6faa0d01a5ece06bcc74a47f37d7e6837310"
 
-S = "${WORKDIR}/git"
 
 inherit pkgconfig
 
diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index bd50bf8..270a99b 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -51,7 +51,6 @@ SRC_URI = "\
 
 SRC_URI:remove:toolchain-clang = "file://0021-cmake-Disable-format-overflow-warning-as-error.patch"
 
-S = "${WORKDIR}/git"
 
 inherit cmake pkgconfig
 
diff --git a/recipes-kernel/bluez-firmware-rpidistro/bluez-firmware-rpidistro_git.bb b/recipes-kernel/bluez-firmware-rpidistro/bluez-firmware-rpidistro_git.bb
index bd5ed62..b562fa6 100644
--- a/recipes-kernel/bluez-firmware-rpidistro/bluez-firmware-rpidistro_git.bb
+++ b/recipes-kernel/bluez-firmware-rpidistro/bluez-firmware-rpidistro_git.bb
@@ -29,7 +29,6 @@ SRC_URI = " \
 SRCREV = "78d6a07730e2d20c035899521ab67726dc028e1c"
 PV = "1.2-9+rpt3"
 
-S = "${WORKDIR}/git"
 
 inherit allarch
 
diff --git a/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpidistro_git.bb b/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpidistro_git.bb
index f22ec54..cfad4bd 100644
--- a/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpidistro_git.bb
+++ b/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpidistro_git.bb
@@ -20,7 +20,6 @@ SRC_URI = "git://github.com/RPi-Distro/firmware-nonfree;branch=bookworm;protocol
 "
 SRCREV = "4b356e134e8333d073bd3802d767a825adec3807"
 PV = "20230625-2+rpt3"
-S = "${WORKDIR}/git"
 
 inherit allarch
 
diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
index b7eaf40..85a2610 100644
--- a/recipes-multimedia/omxplayer/omxplayer_git.bb
+++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
@@ -40,7 +40,6 @@ SRC_URI = "git://github.com/popcornmix/omxplayer.git;protocol=https;branch=maste
 
 SRC_URI:append = "${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", " file://0001-Fix-build-with-vc4-driver.patch ", "", d)}"
 
-S = "${WORKDIR}/git"
 
 COMPATIBLE_MACHINE = "^rpi$"
 COMPATIBLE_HOST:aarch64 = "null"
diff --git a/recipes-multimedia/python3-picamera/python3-picamera_git.bb b/recipes-multimedia/python3-picamera/python3-picamera_git.bb
index f14941b..4d0b18a 100644
--- a/recipes-multimedia/python3-picamera/python3-picamera_git.bb
+++ b/recipes-multimedia/python3-picamera/python3-picamera_git.bb
@@ -14,7 +14,6 @@ RDEPENDS:${PN} = "python3-numbers   \
 SRC_URI = "git://git@github.com/waveform80/picamera.git;protocol=ssh;branch=master"
 SRCREV = "7e4f1d379d698c44501fb84b886fadf3fc164b70"
 
-S = "${WORKDIR}/git"
 
 inherit setuptools3
 
diff --git a/recipes-multimedia/rpidistro-ffmpeg/rpidistro-ffmpeg_5.1.4.bb b/recipes-multimedia/rpidistro-ffmpeg/rpidistro-ffmpeg_5.1.4.bb
index e8f640b..4a07f50 100644
--- a/recipes-multimedia/rpidistro-ffmpeg/rpidistro-ffmpeg_5.1.4.bb
+++ b/recipes-multimedia/rpidistro-ffmpeg/rpidistro-ffmpeg_5.1.4.bb
@@ -50,7 +50,6 @@ SRC_URI = "\
 
 SRCREV = "1c363463c432c5ed492c7b759abb6e015b93b6b5"
 
-S = "${WORKDIR}/git"
 
 # libraries to build in addition to avutil
 PACKAGECONFIG[avdevice] = "--enable-avdevice,--disable-avdevice"
-- 
2.43.0


