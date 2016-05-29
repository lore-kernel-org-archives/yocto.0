Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E60DBE00875; Sun, 29 May 2016 08:59:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70665E00875
	for <yocto@yoctoproject.org>; Sun, 29 May 2016 08:59:08 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id q62so15226490wmg.3
	for <yocto@yoctoproject.org>; Sun, 29 May 2016 08:59:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id;
	bh=hpsnA99ryBioOLGkhDuLWG09wSepEP8cg6CJritFZB0=;
	b=Nng4HmRs/sL018yxdBXB64Tn+bFnqSvIeK92jV5GeXRlrCqU7/IssXWGkuq781PtuN
	fbvjAknOjUFez4zyfSRX1F2abPSbYoY4rNOlVmwmdXu6PK61r74coXi3aRy/AJC3siUt
	pqxhj1AfHbGDQIN5CEpsTdms3fMPihusGEObAa4ecxpWr4jJZj9U3HaA0KAhLMfoUdOs
	pbb10RLR5pC6XsD5lG03bjfMiiAyOm0WjKuxYIu1LuivowouSq3yvM6VWtgK3g21pSDH
	Huv8tEocMsFjpoIgYo9upsFbcLRQbvii1Rzgjq+/9uDf9WpLChrtqGxf4e84rhZpeSIB
	IRew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
	bh=hpsnA99ryBioOLGkhDuLWG09wSepEP8cg6CJritFZB0=;
	b=PFQb56ynVasu5gfAYzjJvkqkqsDBmFzIfxq44/rsfgxC8ZuGnC8scO2Ky2X6lrKv4b
	/jsj0/OQqH8BHRslmdX6bObFwToYVse29/GlBNCm94mudIUTcJPm8PKTRMqe3hNo+P3T
	Pognts+y+5Ksq9YdxEnWHP91DNIZdU/zp4LouzNcC8FNAM/49ZV0hRnsJNvDX+kJ8aRI
	ltqOGLQyERm1C7+rqLk3Pubt7i6awzJszzxw6q2IRnFLGLC+O8N1V10BOvYuCULGTP3r
	6+qmBTOIyd8xg/kmP/sT28pPgq0JZNq2yfjjnDZfr0iSsUb/dCqS3w0nVykOGuyTgQ+D
	l2Pw==
X-Gm-Message-State: ALyK8tKgpGDsYfx3w/2ew1DgU4SxHHTH1Le4es3SN0NUJKMgcJScRvDD8XnM3Srtb948ug==
X-Received: by 10.194.119.195 with SMTP id kw3mr22700690wjb.166.1464537546653; 
	Sun, 29 May 2016 08:59:06 -0700 (PDT)
Received: from dev-jessie.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net. [86.27.96.131])
	by smtp.gmail.com with ESMTPSA id
	kq9sm29834872wjc.26.2016.05.29.08.59.05
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 29 May 2016 08:59:05 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Sun, 29 May 2016 16:59:07 +0100
Message-Id: <1464537553-24915-1-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.1.4
Subject: [meta-raspberrypi][PATCH 0/6] Drop rpi-mkimage and use upstream u-boot
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
X-List-Received-Date: Sun, 29 May 2016 15:59:11 -0000

Following discussion on the Raspberry Pi tools bug tracker it was found that
rpi-mkimage is no longer needed with recent firmware. It can therefore be
dropped from the layer completely.

Whilst looking into this I also found that the u-boot-rpi recipe in
meta-raspberrypi can now be replaced by direct use of the mainline u-boot recipe
from oe-core. The 2016.03 release of u-boot supports the original Raspberry Pi
and the Raspberry Pi 2. Configuration of the u-boot environment to directly boot
the uImage file on the SD card must still be done manually - I'm going to look
into making this work by default in the near future.

Build and boot tested on an old Raspberry Pi Model B (rev 2):
* linux-raspberrypi 4.1
* linux-raspberrypi 4.4
* u-boot 2016.03 + linux-raspberrypi 4.1

U-boot commands needed for my board (the dtb at least may need to change for
other models):
    setenv fdtfile bcm2807-rpi-b.dtb
    setenv bootargs 'earlyprintk console=tty0 console=ttyAMA0 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait noinitrd'
    setenv do_load_files 'mmc dev 0; fatload mmc 0:1 ${kernel_addr_r} uImage; fatload mmc 0:1 ${fdt_addr_r} ${fdtfile};'
    setenv do_boot_files 'bootm ${kernel_addr_r} - ${fdt_addr_r};'
    setenv bootcmd 'run do_load_files do_boot_files'
    saveenv
    boot

During testing it was found that linux-raspberrypi 3.18 no longer builds and so
this was dropped from the layer.

Paul Barker (6):
  linux-raspberrypi: Allow override of PV
  linux-raspberrypi: rpi-mkimage is no longer needed
  u-boot: Use mainline u-boot recipe from oe-core
  rpi-mkimage: Remove unused recipe
  linux-raspberrypi: Drop version 3.18
  sdcard_image-rpi: Always install dtb files

 classes/sdcard_image-rpi.bbclass                   |  42 ++++----
 conf/machine/include/rpi-default-providers.inc     |   1 -
 conf/machine/raspberrypi.conf                      |   2 +
 conf/machine/raspberrypi2.conf                     |   2 +
 recipes-bsp/rpi-mkimage/rpi-mkimage/License        |  25 -----
 .../open-files-relative-to-script.patch            |  17 ----
 recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb         |  22 -----
 recipes-bsp/u-boot/u-boot-rpi_git.bb               |  29 ------
 .../0001-dts-add-overlay-for-pitft22.patch         | 110 ---------------------
 recipes-kernel/linux/linux-raspberrypi.inc         |  19 ----
 recipes-kernel/linux/linux-raspberrypi_3.18.bb     |  14 ---
 recipes-kernel/linux/linux-raspberrypi_4.1.bb      |   1 +
 recipes-kernel/linux/linux-raspberrypi_4.4.bb      |   1 +
 13 files changed, 27 insertions(+), 258 deletions(-)
 delete mode 100644 recipes-bsp/rpi-mkimage/rpi-mkimage/License
 delete mode 100644 recipes-bsp/rpi-mkimage/rpi-mkimage/open-files-relative-to-script.patch
 delete mode 100644 recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb
 delete mode 100644 recipes-bsp/u-boot/u-boot-rpi_git.bb
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi-3.18/0001-dts-add-overlay-for-pitft22.patch
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.18.bb

-- 
2.1.4


