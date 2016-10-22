Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68728E009C3; Sat, 22 Oct 2016 12:50:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 028C0E00839
	for <yocto@yoctoproject.org>; Sat, 22 Oct 2016 12:50:20 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id o81so3714718wma.2
	for <yocto@yoctoproject.org>; Sat, 22 Oct 2016 12:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id;
	bh=VVXrDkZF9Eky5/95rOkjHDxOy0D37HR6L55WG9TRztk=;
	b=zNf7as5fxZY0wK/Yv6FtSz0L9QTnamsV4cL/6r7m1T6QOZ1gilEC4sl2MJBsYgwO/a
	tYb5AZPYXoeeWMfF8VYlq6e3tzVLBQzUpKIkNybbHkbZKt6uprMNsodq4wZjNeXqfGiK
	rpHImMSIpGBH6Go+w829UuX5EDC8pVt/mg4vZk3RNkGz2jez+sbrT+4y0RlBt3rvx9bZ
	IM+Xa1YryWBDMSFTb34nk176L+GwZkj05/M+lvb8JbxfwuYUF/4eUL63R72Cv8Ottq0x
	tzRdH+uHljh5FD/IpvxzckY6+V+i4ZnYDyYkyuiThwgI9dJpSFl9RTYnXOlMY70d5H7p
	CJPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
	bh=VVXrDkZF9Eky5/95rOkjHDxOy0D37HR6L55WG9TRztk=;
	b=iICdupOQc2HxR2/5HJiQRVokSC+IrUPsc75xEzbZkAUJF5AgROOMc0CoIl5qz0nQZO
	s5TCHr+MuLXTx9zeHsLJPOAzEBINXH1oKG8k0Vnl0RN9xtNunf8QS3tuAC/H4A4UIJDC
	KcVQYNey2wNdQIBmgNTVWOCRhSlMryZOzhLKPlI16qxlMt4rbikp+EXQx5Mev7v1hVwJ
	tXzvcujquFPlwDl8/Z8KbAp+k/OelAGZyBEW0CXcIvy3xYZooKsAr3WspCeWQfKavpnd
	mLPhZJ13bYHDyp/ywJ2kWwj+Bftvz5NMPdWxG7o42U9bVK2iQ7aCqLJD2sQgAB2I4Ra5
	3UOg==
X-Gm-Message-State: AA6/9RnZfa967Dqqj+THxfjwqixKquW5huL+UO7WsqziKnsgmE5Iwhd1x7woIHjoVKSFTQ==
X-Received: by 10.28.164.2 with SMTP id n2mr14901970wme.70.1477165819332;
	Sat, 22 Oct 2016 12:50:19 -0700 (PDT)
Received: from dev-jessie.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net. [86.27.96.131])
	by smtp.gmail.com with ESMTPSA id
	yo1sm9896023wjc.16.2016.10.22.12.50.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 22 Oct 2016 12:50:18 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: Yocto Project <yocto@yoctoproject.org>
Date: Sat, 22 Oct 2016 20:49:53 +0100
Message-Id: <1477165797-27121-1-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.1.4
Subject: [meta-raspberrypi][PATCH V2 0/4] U-boot/kernel improvements
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
X-List-Received-Date: Sat, 22 Oct 2016 19:50:24 -0000

These changes allow u-boot to successfully boot Linux without a manual sequence
of commands being entered at boot time. This has been tested on an old Raspberry
Pi B+ as well as a Raspberrypi 3. It should work for other models as well.

Also, the kernel image is removed from the main rootfs /boot directory as it is
not needed outside the FAT32 boot partition.

Changes in V2 (a bit late sorry!):
    * Rebased onto latest master
    * Address review comments from V1
    * Set COMPATIBLE_MACHINE in rpi-u-boot-scr

Paul Barker (4):
  rpi-base.inc: Don't install kernel image into rootfs
  rpi-u-boot-scr: Add recipe to create u-boot boot script
  u-boot: Add RDEPENDS on rpi-u-boot-scr
  sdcard_image-rpi.bbclass: Include boot script when using u-boot

 classes/sdcard_image-rpi.bbclass                    |  1 +
 conf/machine/include/rpi-base.inc                   |  4 ++++
 .../rpi-u-boot-scr/files/raspberrypi/boot.cmd       |  6 ++++++
 .../rpi-u-boot-scr/files/raspberrypi0/boot.cmd      |  6 ++++++
 .../rpi-u-boot-scr/files/raspberrypi2/boot.cmd      |  6 ++++++
 .../rpi-u-boot-scr/files/raspberrypi3/boot.cmd      |  6 ++++++
 recipes-bsp/rpi-u-boot-scr/rpi-u-boot-scr.bb        | 21 +++++++++++++++++++++
 recipes-bsp/u-boot/u-boot_2016.03.bbappend          |  1 +
 8 files changed, 51 insertions(+)
 create mode 100644 recipes-bsp/rpi-u-boot-scr/files/raspberrypi/boot.cmd
 create mode 100644 recipes-bsp/rpi-u-boot-scr/files/raspberrypi0/boot.cmd
 create mode 100644 recipes-bsp/rpi-u-boot-scr/files/raspberrypi2/boot.cmd
 create mode 100644 recipes-bsp/rpi-u-boot-scr/files/raspberrypi3/boot.cmd
 create mode 100644 recipes-bsp/rpi-u-boot-scr/rpi-u-boot-scr.bb
 create mode 100644 recipes-bsp/u-boot/u-boot_2016.03.bbappend

-- 
2.1.4


