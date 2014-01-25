Return-Path: <andrei@gherzan.ro>
Received: from mail-ea0-f177.google.com (mail-ea0-f177.google.com
	[209.85.215.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7E19E00303
	for <yocto@yoctoproject.org>; Sat, 25 Jan 2014 02:57:16 -0800 (PST)
Received: by mail-ea0-f177.google.com with SMTP id n15so1425638ead.8
	for <yocto@yoctoproject.org>; Sat, 25 Jan 2014 02:57:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=+KpJPdj9ayOHheXfcp0+UGvkgTjRVGaIDi7mGNt9HwM=;
	b=VzHnGwMsiOv1DFPME0kjok3mL3vdubZ36kwIyBWxXl7HbX2otnnUDLklYXA3kauOIB
	MWPuyhHBkBcqYhBgl+lw3lDr4yf7OIdJEeGmvQoxSRpXkzMdWO29xJTebhxuFIp4WkZO
	gsSyOWq7zcr8xRy94cYV+ElvfjZIiqLaDq3uWPcVjrj7xp7tDj0S1VO8WQLorDbA/NPu
	PAjhGrGFZ5gyQ2fJvaxBQiQFO8Do+plyNNx1OF2CDD3hfHaYlbiytDoB0RLM+p8TJxKn
	kGtondyyA9y6/zBZ/pXr4MkhJIv2sjtjEhG+TN2wGM5sn6/+LUut30MzJp7rbrUNElPj
	dZVA==
X-Gm-Message-State: ALoCoQnFd/FxkjBovb1qr5ichqFhdvSJPjepfrti7T+2MrdZkFv4KynN0Mc5soFaLgyI14y0BLbP
X-Received: by 10.15.54.72 with SMTP id s48mr16640572eew.3.1390647435071;
	Sat, 25 Jan 2014 02:57:15 -0800 (PST)
Received: from localhost.localdomain (5-13-179-54.residential.rdsnet.ro.
	[5.13.179.54])
	by mx.google.com with ESMTPSA id 4sm14600656eed.14.2014.01.25.02.57.13
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 25 Jan 2014 02:57:14 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sat, 25 Jan 2014 12:56:52 +0200
Message-Id: <1390647421-4818-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
Subject: [meta-raspberrypi][PATCH 0/9] U-boot integration - first stage
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
X-List-Received-Date: Sat, 25 Jan 2014 10:57:22 -0000

At this stage uboot is not usable as somehow - don't know why yet - I can't
read uImage from sdcard. Seems to be something related to the uboot sdhci
driver. If anybody knows/suspects where the issue might be, please hit me a
reply.

Andrei Gherzan (9):
  bcm2835-bootfiles: Use deploy as it should be used
  rpi-config: Use deploy as it should be used
  rpi-default-providers: Use u-boot-rpi as u-boot provider
  rpi-default-providers: Move PREFERRED_VERSIONs to
    rpi-default-versions.inc
  raspberrypi.conf: Let KERNEL_IMAGETYPE be modified
  sdcard_image-rpi: Add support for u-boot and uImage
  README: Add info about U-Boot support
  u-boot-rpi: Integrate package
  rpi-mkimage: Integrate package

 README                                             |  9 +++
 classes/sdcard_image-rpi.bbclass                   | 11 ++-
 conf/machine/include/rpi-default-providers.inc     |  4 +-
 conf/machine/include/rpi-default-versions.inc      |  1 +
 conf/machine/raspberrypi.conf                      |  2 +-
 recipes-bcm/bcm2835/bcm2835_1.34.bb                | 41 ----------
 recipes-bcm/bcm2835/bcm2835_1.36.bb                | 41 ++++++++++
 recipes-bcm/bootfiles/bcm2835-bootfiles.bb         | 34 +++++----
 recipes-bcm/bootfiles/rpi-config_git.bb            | 87 ++++++++++++----------
 recipes-bsp/rpi-mkimage/rpi-mkimage/License        | 25 +++++++
 .../open-files-relative-to-script.patch            | 17 +++++
 recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb         | 22 ++++++
 recipes-bsp/u-boot/u-boot-rpi_git.bb               | 29 ++++++++
 .../packagegroups/packagegroup-rpi-test.bb         |  4 +-
 recipes-devtools/python/rpi-gpio_0.5.3a.bb         | 20 -----
 recipes-devtools/python/rpi-gpio_0.5.4.bb          | 19 +++++
 ...nd-headers-from-ffmpeg-are-installed-in-u.patch | 24 +++---
 .../omxplayer/fix-tar-command-with-DIST.patch      | 18 +++++
 recipes-multimedia/omxplayer/omxplayer_git.bb      | 10 ++-
 19 files changed, 279 insertions(+), 139 deletions(-)
 delete mode 100644 recipes-bcm/bcm2835/bcm2835_1.34.bb
 create mode 100644 recipes-bcm/bcm2835/bcm2835_1.36.bb
 create mode 100644 recipes-bsp/rpi-mkimage/rpi-mkimage/License
 create mode 100644 recipes-bsp/rpi-mkimage/rpi-mkimage/open-files-relative-to-script.patch
 create mode 100644 recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb
 create mode 100644 recipes-bsp/u-boot/u-boot-rpi_git.bb
 delete mode 100644 recipes-devtools/python/rpi-gpio_0.5.3a.bb
 create mode 100644 recipes-devtools/python/rpi-gpio_0.5.4.bb
 create mode 100644 recipes-multimedia/omxplayer/omxplayer/fix-tar-command-with-DIST.patch

--
1.8.1.4


