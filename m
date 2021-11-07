Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FF76C433EF
	for <webhook@archiver.kernel.org>; Sun,  7 Nov 2021 20:14:02 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com
 [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web08.35810.1636316041147761471
 for <yocto@lists.yoctoproject.org>;
 Sun, 07 Nov 2021 12:14:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=JSEvJW4c;
 spf=pass (domain: gmail.com, ip: 209.85.216.53, mailfrom: ticotimo@gmail.com)
Received: by mail-pj1-f53.google.com with SMTP id iq11so6628856pjb.3
        for <yocto@lists.yoctoproject.org>;
 Sun, 07 Nov 2021 12:14:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AA7wCiOhrDYsJ5NxhBq4ISX76Y+hhbjPjIvzIpMXB7Q=;
        b=JSEvJW4cmO85TvEzoMinQFbyhFhLn5k5e6u3VwpkaSWDwsGC89np0nP7Vx5+UV8Tp7
         hOS/rGkP7wyNuM3cFxKL6TvQ1DsWXeL0n+A92U6dY00yrVLx1qWp8ZjZ4q5HZjAOH6QJ
         p0W8wcZqeeUTSyXnK7/ADBP6LGocQzPr7y/bjOTTvp/kPQhAXjqZfOkclFU0Ghwi/ndo
         96ZeYPLWzU26jKyd5Z0CV8BbxLblzO2xZ7893g8KNIhVgiPsvfpOteHcOBPT7MIbPIhd
         3yDpQ7p2M9InWX2vv6YaZOzoZRg4Vrhk94VurqTXvaE6tvhmmozMLJGTeVGiqw7nALb1
         5aIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AA7wCiOhrDYsJ5NxhBq4ISX76Y+hhbjPjIvzIpMXB7Q=;
        b=dV7uu7/WLOk6Wn7K5rKHysIlfRawJw1GqcbJeh20f+Wc9QOM6NarCMYQAS4TWalLWJ
         qLuTNHAyd+4fyYFXXL2+TFmoou3zNkCJdOcfjOgYxJi5/o9Hk2D298ul14zOEz9Hlum2
         n+jDn24oNOP39faz6qeSDFR6MCh/zjFNXEdbCWEbJ0CuMTMLEP2Sxs1Dw9x1w/H7T91O
         CsWbdgwR+LteTqVt8ioQonlKn61pVrA8tzAEeDqvm9Y6KaX/PUUAtWav8q6Z5on4UtTa
         JTExl6W9XKG7J06yEToWG/Mi9wsFQrYL4uFRA29IC3PS5zzqiqqGo9IUSABrlxs3Ym2g
         oq1Q==
X-Gm-Message-State: AOAM532LPkoYPvTm6M6jOg7beR8ENzp5RR2PN9AfEOh3ZzBTNn4g+Mui
	GScJojGxYZFPqzu4SoBWnR8QAeUeoNY=
X-Google-Smtp-Source: 
 ABdhPJyi8nVsZYChcMZA1bTn9/FwViDsAmhbWGibQk0ykfbUa9hKyRsIb1NO0sal3IsjDzT/um3ang==
X-Received: by 2002:a17:90b:1e49:: with SMTP id
 pi9mr23335853pjb.220.1636316040252;
        Sun, 07 Nov 2021 12:14:00 -0800 (PST)
Received: from thetis.hsd1.or.comcast.net ([2601:1c0:6000:1830::17e1])
        by smtp.gmail.com with ESMTPSA id
 e11sm2116419pjl.20.2021.11.07.12.13.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Nov 2021 12:13:59 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <ticotimo@gmail.com>
Subject: [meta-raspberrypi][PATCH] Use protocol=https for all github SRC_URIs
Date: Sun,  7 Nov 2021 20:13:56 +0000
Message-Id: <20211107201356.32243-1-ticotimo@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 07 Nov 2021 20:14:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55266

GitHub has already started "brownouts" for git protocol,
which will cause random fetcher failures in builds.

Signed-off-by: Tim Orling <ticotimo@gmail.com>
---
 recipes-bsp/bootfiles/rpi-config_git.bb                       | 2 +-
 recipes-connectivity/pi-bluetooth/pi-bluetooth_0.1.17.bb      | 2 +-
 recipes-devtools/pi-blaster/pi-blaster_git.bb                 | 2 +-
 recipes-devtools/python/python3-adafruit-blinka_6.2.2.bb      | 2 +-
 .../python/python3-adafruit-circuitpython-busdevice_5.0.5.bb  | 2 +-
 .../python/python3-adafruit-circuitpython-motor_3.2.6.bb      | 2 +-
 .../python/python3-adafruit-circuitpython-motorkit_1.6.1.bb   | 2 +-
 .../python/python3-adafruit-circuitpython-pca9685_3.3.4.bb    | 2 +-
 .../python/python3-adafruit-circuitpython-register_1.9.4.bb   | 2 +-
 .../python/python3-adafruit-platformdetect_3.1.1.bb           | 2 +-
 recipes-devtools/python/python3-adafruit-pureio_1.1.8.bb      | 2 +-
 recipes-devtools/python/python3-rtimu_git.bb                  | 2 +-
 recipes-graphics/userland/userland_git.bb                     | 2 +-
 .../bluez-firmware-rpidistro/bluez-firmware-rpidistro_git.bb  | 2 +-
 .../linux-firmware-rpidistro/linux-firmware-rpidistro_git.bb  | 2 +-
 recipes-kernel/linux/linux-raspberrypi-dev.bb                 | 2 +-
 recipes-kernel/linux/linux-raspberrypi_5.10.bb                | 2 +-
 recipes-multimedia/omxplayer/omxplayer_git.bb                 | 4 ++--
 18 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
index 96453ef..13a0714 100644
--- a/recipes-bsp/bootfiles/rpi-config_git.bb
+++ b/recipes-bsp/bootfiles/rpi-config_git.bb
@@ -8,7 +8,7 @@ LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda
 COMPATIBLE_MACHINE = "^rpi$"
 
 SRCREV = "648ffc470824c43eb0d16c485f4c24816b32cd6f"
-SRC_URI = "git://github.com/Evilpaul/RPi-config.git;protocol=git;branch=master \
+SRC_URI = "git://github.com/Evilpaul/RPi-config.git;protocol=https;branch=master \
           "
 
 S = "${WORKDIR}/git"
diff --git a/recipes-connectivity/pi-bluetooth/pi-bluetooth_0.1.17.bb b/recipes-connectivity/pi-bluetooth/pi-bluetooth_0.1.17.bb
index 75b581d..fdde795 100644
--- a/recipes-connectivity/pi-bluetooth/pi-bluetooth_0.1.17.bb
+++ b/recipes-connectivity/pi-bluetooth/pi-bluetooth_0.1.17.bb
@@ -7,7 +7,7 @@ LIC_FILES_CHKSUM = "\
 "
 
 SRC_URI = "\
-    git://github.com/RPi-Distro/pi-bluetooth \
+    git://github.com/RPi-Distro/pi-bluetooth;protocol=https \
     file://0001-bthelper-correct-path-for-hciconfig-under-Yocto.patch \
 "
 SRCREV = "fd4775bf90e037551532fc214a958074830bb80d"
diff --git a/recipes-devtools/pi-blaster/pi-blaster_git.bb b/recipes-devtools/pi-blaster/pi-blaster_git.bb
index 4aa7427..f25447c 100644
--- a/recipes-devtools/pi-blaster/pi-blaster_git.bb
+++ b/recipes-devtools/pi-blaster/pi-blaster_git.bb
@@ -4,7 +4,7 @@ SECTION = "devel/libs"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://README.md;beginline=268;endline=292;md5=86d10e4bcf4b4014d306dde7c1d2a80d"
 
-SRC_URI = "git://github.com/sarfata/pi-blaster \
+SRC_URI = "git://github.com/sarfata/pi-blaster;protocol=https \
            file://remove-initscript-lsb-dependency.patch \
            "
 
diff --git a/recipes-devtools/python/python3-adafruit-blinka_6.2.2.bb b/recipes-devtools/python/python3-adafruit-blinka_6.2.2.bb
index 4659ad9..d0c3e3c 100644
--- a/recipes-devtools/python/python3-adafruit-blinka_6.2.2.bb
+++ b/recipes-devtools/python/python3-adafruit-blinka_6.2.2.bb
@@ -3,7 +3,7 @@ HOMEPAGE = "https://github.com/adafruit/Adafruit_Blinka"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=660e614bc7efb0697cc793d8a22a55c2"
 
-SRC_URI = "git://github.com/adafruit/Adafruit_Blinka.git;branch=main"
+SRC_URI = "git://github.com/adafruit/Adafruit_Blinka.git;protocol=https;branch=main"
 SRCREV = "dc688f354fe779c9267c208b99f310af87e79272"
 
 S = "${WORKDIR}/git"
diff --git a/recipes-devtools/python/python3-adafruit-circuitpython-busdevice_5.0.5.bb b/recipes-devtools/python/python3-adafruit-circuitpython-busdevice_5.0.5.bb
index 7cccd58..8b60bbb 100644
--- a/recipes-devtools/python/python3-adafruit-circuitpython-busdevice_5.0.5.bb
+++ b/recipes-devtools/python/python3-adafruit-circuitpython-busdevice_5.0.5.bb
@@ -3,7 +3,7 @@ HOMEPAGE = "https://github.com/adafruit/Adafruit_CircuitPython_BusDevice"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=6ec69d6e9e6c85adfb7799d7f8cf044e"
 
-SRC_URI = "git://github.com/adafruit/Adafruit_CircuitPython_BusDevice.git;branch=main"
+SRC_URI = "git://github.com/adafruit/Adafruit_CircuitPython_BusDevice.git;protocol=https;branch=main"
 SRCREV = "1bfe8005293205e2f7b2cc498ab5a946f1133b40"
 
 S = "${WORKDIR}/git"
diff --git a/recipes-devtools/python/python3-adafruit-circuitpython-motor_3.2.6.bb b/recipes-devtools/python/python3-adafruit-circuitpython-motor_3.2.6.bb
index c5da4ac..73b599e 100644
--- a/recipes-devtools/python/python3-adafruit-circuitpython-motor_3.2.6.bb
+++ b/recipes-devtools/python/python3-adafruit-circuitpython-motor_3.2.6.bb
@@ -3,7 +3,7 @@ HOMEPAGE = "https://github.com/adafruit/Adafruit_CircuitPython_Motor"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=b72678307cc7c10910b5ef460216af07"
 
-SRC_URI = "git://github.com/adafruit/Adafruit_CircuitPython_Motor.git;branch=main"
+SRC_URI = "git://github.com/adafruit/Adafruit_CircuitPython_Motor.git;protocol=https;branch=main"
 SRCREV = "2251bfc0501d0acfb96c0a43f4f2b4c6a10ca14e"
 
 S = "${WORKDIR}/git"
diff --git a/recipes-devtools/python/python3-adafruit-circuitpython-motorkit_1.6.1.bb b/recipes-devtools/python/python3-adafruit-circuitpython-motorkit_1.6.1.bb
index eacca3e..868d8e6 100644
--- a/recipes-devtools/python/python3-adafruit-circuitpython-motorkit_1.6.1.bb
+++ b/recipes-devtools/python/python3-adafruit-circuitpython-motorkit_1.6.1.bb
@@ -3,7 +3,7 @@ HOMEPAGE = "https://github.com/adafruit/Adafruit_CircuitPython_MotorKit"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=6ad4a8854b39ad474755ef1aea813bac"
 
-SRC_URI = "git://github.com/adafruit/Adafruit_CircuitPython_MotorKit.git;branch=main"
+SRC_URI = "git://github.com/adafruit/Adafruit_CircuitPython_MotorKit.git;protocol=https;branch=main"
 SRCREV = "8c1462b4129b21f6db156d1517abb017bb74b982"
 
 S = "${WORKDIR}/git"
diff --git a/recipes-devtools/python/python3-adafruit-circuitpython-pca9685_3.3.4.bb b/recipes-devtools/python/python3-adafruit-circuitpython-pca9685_3.3.4.bb
index 23cd786..05cd781 100644
--- a/recipes-devtools/python/python3-adafruit-circuitpython-pca9685_3.3.4.bb
+++ b/recipes-devtools/python/python3-adafruit-circuitpython-pca9685_3.3.4.bb
@@ -3,7 +3,7 @@ HOMEPAGE = "https://github.com/adafruit/Adafruit_CircuitPython_PCA9685"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=e7eb6b599fb0cfb06485c64cd4242f62"
 
-SRC_URI = "git://github.com/adafruit/Adafruit_CircuitPython_PCA9685.git;branch=main"
+SRC_URI = "git://github.com/adafruit/Adafruit_CircuitPython_PCA9685.git;protocol=https;branch=main"
 SRCREV = "2780c4102f4c23fbab252aa1198b61ba7e2d1b2c"
 
 S = "${WORKDIR}/git"
diff --git a/recipes-devtools/python/python3-adafruit-circuitpython-register_1.9.4.bb b/recipes-devtools/python/python3-adafruit-circuitpython-register_1.9.4.bb
index ccf5eaa..0e6fe68 100644
--- a/recipes-devtools/python/python3-adafruit-circuitpython-register_1.9.4.bb
+++ b/recipes-devtools/python/python3-adafruit-circuitpython-register_1.9.4.bb
@@ -3,7 +3,7 @@ HOMEPAGE = "https://github.com/adafruit/Adafruit_CircuitPython_Register"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=6ec69d6e9e6c85adfb7799d7f8cf044e"
 
-SRC_URI = "git://github.com/adafruit/Adafruit_CircuitPython_Register.git;branch=main"
+SRC_URI = "git://github.com/adafruit/Adafruit_CircuitPython_Register.git;protocol=https;branch=main"
 
 S = "${WORKDIR}/git"
 SRCREV = "5fee6e0c3878110844bc51e16063eeae7d94c457"
diff --git a/recipes-devtools/python/python3-adafruit-platformdetect_3.1.1.bb b/recipes-devtools/python/python3-adafruit-platformdetect_3.1.1.bb
index b88affa..0478be6 100644
--- a/recipes-devtools/python/python3-adafruit-platformdetect_3.1.1.bb
+++ b/recipes-devtools/python/python3-adafruit-platformdetect_3.1.1.bb
@@ -3,7 +3,7 @@ HOMEPAGE = "https://github.com/adafruit/Adafruit_Python_PlatformDetect"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=fccd531dce4b989c05173925f0bbb76c"
 
-SRC_URI = "git://github.com/adafruit/Adafruit_Python_PlatformDetect.git;branch=main"
+SRC_URI = "git://github.com/adafruit/Adafruit_Python_PlatformDetect.git;protocol=https;branch=main"
 SRCREV = "e0fe1b012898fa824944d6805ca74be0fa027968"
 
 S = "${WORKDIR}/git"
diff --git a/recipes-devtools/python/python3-adafruit-pureio_1.1.8.bb b/recipes-devtools/python/python3-adafruit-pureio_1.1.8.bb
index 63c7166..6472790 100644
--- a/recipes-devtools/python/python3-adafruit-pureio_1.1.8.bb
+++ b/recipes-devtools/python/python3-adafruit-pureio_1.1.8.bb
@@ -3,7 +3,7 @@ HOMEPAGE = "https://github.com/adafruit/Adafruit_Python_PureIO"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=2a21fcca821a506d4c36f7bbecc0d009"
 
-SRC_URI = "git://github.com/adafruit/Adafruit_Python_PureIO.git;branch=main"
+SRC_URI = "git://github.com/adafruit/Adafruit_Python_PureIO.git;protocol=https;branch=main"
 SRCREV = "f4d0973da05b8b21905ff6bab69cdb652128f342"
 
 S = "${WORKDIR}/git"
diff --git a/recipes-devtools/python/python3-rtimu_git.bb b/recipes-devtools/python/python3-rtimu_git.bb
index 4f13a38..401a301 100644
--- a/recipes-devtools/python/python3-rtimu_git.bb
+++ b/recipes-devtools/python/python3-rtimu_git.bb
@@ -5,7 +5,7 @@ SECTION = "devel/python"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://../../LICENSE;md5=96cdecb41125f498958e09b72faf318e"
 
-SRC_URI = "git://github.com/RPi-Distro/RTIMULib.git;protocol=http;branch=master \
+SRC_URI = "git://github.com/RPi-Distro/RTIMULib.git;protocol=https;branch=master \
            file://0001-include-asm-ioctl.h-for-ioctl-define.patch;patchdir=../.. \
           "
 SRCREV = "b949681af69b45f0f7f4bb53b6770037b5b02178"
diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index a2ae918..5676c31 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -20,7 +20,7 @@ SRCREV = "97bc8180ad682b004ea224d1db7b8e108eda4397"
 PV = "20210623"
 
 SRC_URI = "\
-    git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
+    git://github.com/${SRCFORK}/userland.git;protocol=https;branch=${SRCBRANCH} \
     file://0001-Allow-applications-to-set-next-resource-handle.patch \
     file://0002-wayland-Add-support-for-the-Wayland-winsys.patch \
     file://0003-wayland-Add-Wayland-example.patch \
diff --git a/recipes-kernel/bluez-firmware-rpidistro/bluez-firmware-rpidistro_git.bb b/recipes-kernel/bluez-firmware-rpidistro/bluez-firmware-rpidistro_git.bb
index ef8df32..f25aab9 100644
--- a/recipes-kernel/bluez-firmware-rpidistro/bluez-firmware-rpidistro_git.bb
+++ b/recipes-kernel/bluez-firmware-rpidistro/bluez-firmware-rpidistro_git.bb
@@ -23,7 +23,7 @@ LIC_FILES_CHKSUM = "\
 # so that the license files will be copied from fetched source
 NO_GENERIC_LICENSE[Firmware-cypress-rpidistro] = "LICENCE.cypress-rpidistro"
 
-SRC_URI = "git://github.com/RPi-Distro/bluez-firmware"
+SRC_URI = "git://github.com/RPi-Distro/bluez-firmware;protocol=https"
 SRCREV = "e7fd166981ab4bb9a36c2d1500205a078a35714d"
 PV = "1.2-4+rpt8"
 
diff --git a/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpidistro_git.bb b/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpidistro_git.bb
index 4f242d3..9e4686e 100644
--- a/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpidistro_git.bb
+++ b/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpidistro_git.bb
@@ -34,7 +34,7 @@ LIC_FILES_CHKSUM = "\
 NO_GENERIC_LICENSE[Firmware-broadcom_bcm43xx-rpidistro] = "LICENCE.broadcom_bcm43xx"
 NO_GENERIC_LICENSE[WHENCE] = "WHENCE"
 
-SRC_URI = "git://github.com/RPi-Distro/firmware-nonfree"
+SRC_URI = "git://github.com/RPi-Distro/firmware-nonfree;protocol=https"
 
 SRCREV = "83938f78ca2d5a0ffe0c223bb96d72ccc7b71ca5"
 PV = "20190114-1+rpt11"
diff --git a/recipes-kernel/linux/linux-raspberrypi-dev.bb b/recipes-kernel/linux/linux-raspberrypi-dev.bb
index 0dfa451..fad65c6 100644
--- a/recipes-kernel/linux/linux-raspberrypi-dev.bb
+++ b/recipes-kernel/linux/linux-raspberrypi-dev.bb
@@ -20,7 +20,7 @@ SRCREV_meta ?= '${@oe.utils.conditional("PREFERRED_PROVIDER_virtual/kernel", "li
 KMETA = "kernel-meta"
 
 SRC_URI = " \
-    git://github.com/raspberrypi/linux.git;name=machine;branch=${LINUX_RPI_BRANCH} \
+    git://github.com/raspberrypi/linux.git;protocol=https;name=machine;branch=${LINUX_RPI_BRANCH} \
     git://git.yoctoproject.org/yocto-kernel-cache;type=kmeta;name=meta;branch=${LINUX_RPI_KMETA_BRANCH};destsuffix=${KMETA} \
     file://powersave.cfg \
     file://android-drivers.cfg \
diff --git a/recipes-kernel/linux/linux-raspberrypi_5.10.bb b/recipes-kernel/linux/linux-raspberrypi_5.10.bb
index 3eeb4b4..10b138a 100644
--- a/recipes-kernel/linux/linux-raspberrypi_5.10.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_5.10.bb
@@ -8,7 +8,7 @@ SRCREV_meta = "e1979ceb171bc91ef2cb71cfcde548a101dab687"
 KMETA = "kernel-meta"
 
 SRC_URI = " \
-    git://github.com/raspberrypi/linux.git;name=machine;branch=${LINUX_RPI_BRANCH} \
+    git://github.com/raspberrypi/linux.git;protocol=https;name=machine;branch=${LINUX_RPI_BRANCH} \
     git://git.yoctoproject.org/yocto-kernel-cache;type=kmeta;name=meta;branch=${LINUX_RPI_KMETA_BRANCH};destsuffix=${KMETA} \
     file://powersave.cfg \
     file://android-drivers.cfg \
diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
index d294399..64233b3 100644
--- a/recipes-multimedia/omxplayer/omxplayer_git.bb
+++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
@@ -22,8 +22,8 @@ SRCREV_default = "f543a0d0e707ab56415f17b0ca6d397394ee8b63"
 # This SRCREV corresponds to the v4.0.3 release of ffmpeg.
 SRCREV_ffmpeg = "fcbd117df3077bad495e99e20f01cf93737bce76"
 
-SRC_URI = "git://github.com/popcornmix/omxplayer.git;protocol=git;branch=master \
-           git://github.com/FFmpeg/FFmpeg;branch=release/4.0;protocol=git;depth=1;name=ffmpeg;destsuffix=git/ffmpeg \
+SRC_URI = "git://github.com/popcornmix/omxplayer.git;protocol=https;branch=master \
+           git://github.com/FFmpeg/FFmpeg;branch=release/4.0;protocol=https;depth=1;name=ffmpeg;destsuffix=git/ffmpeg \
            file://0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch \
            file://0003-Remove-strip-step-in-Makefile.patch \
            file://0004-Add-FFMPEG_EXTRA_CFLAGS-and-FFMPEG_EXTRA_LDFLAGS.patch \
-- 
2.30.2


