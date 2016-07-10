Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E57FE00D5B; Sun, 10 Jul 2016 16:18:13 -0700 (PDT)
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
	*      [74.125.82.65 listed in list.dnswl.org]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED3E0E00D4C
	for <yocto@yoctoproject.org>; Sun, 10 Jul 2016 16:18:09 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id x83so12935902wma.3
	for <yocto@yoctoproject.org>; Sun, 10 Jul 2016 16:18:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id;
	bh=Jil4IkM7HBS/dwuTYswRJWVNTOhJntGqgPr6krtlJhg=;
	b=vDyf7sSXHiqZuqq1+rVjicM/+39wi9KtbHcYg/Px7wl3ClV/vLw+cKoYQQZXitytjG
	aY22Gn84+NTA7FEIWR+kVoGhNzu5udnr0bZfkcw8I89iVauH6ZCbhQLqDx3EbZvHKpO4
	mVh9lHAB82SsD3NgdNQAxwt2Jjxa9xiyPGfCPVY7xKn2HVv4Rv+qp4PZJFpmzQOOEfPo
	wV/aeMXluPU9OTkQ2uDODEbhNcn66xqB16JITdN9kzDGpNl2bKUjMpvZhoDzA0vdHZy2
	wjjDKCGCAFeLw/3im6CFzL5qBZ8ga9L205NHOznJeaimiY45JSPIKmSJy+2tTA/DZC/X
	e/Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
	bh=Jil4IkM7HBS/dwuTYswRJWVNTOhJntGqgPr6krtlJhg=;
	b=fxdmmDJC+YvsUpZHOr+ZzB0T+NjKXx36M2yZbWIykfKD+NbtXUxOAZi4/a7UjJfpFD
	7GkB4NasdTTc00LmLWFa80JHNr2KKF3pBB4que4FBK2DWkMGlBV414Y7Xqzd3bCdyv7W
	AGarnfNqdSdJVHwnNpA4KAffk49w//ECCKnh4HKes/mocB5lBVc6pvh1GasveISBnkES
	8EqYHYuQE3i5m4kgjxn++NOD+Clawsjwgq0qu6YxaHWFUM3BI1UHCze89DtEfVxwT61I
	QVtELhG/NM+iIy4qn90bPpYdXQj5thbspY0BhwiDwFmqP0WIchxzCKwD+fXG0LQblGIs
	L3tQ==
X-Gm-Message-State: ALyK8tKl6P3Bnzey8cuUc68IXCp6s+lEbaP5vTorsLx5FE5QrD0EcA5C18vQmbHtiZAzPw==
X-Received: by 10.28.63.216 with SMTP id m207mr10272955wma.73.1468192688463;
	Sun, 10 Jul 2016 16:18:08 -0700 (PDT)
Received: from dev-jessie.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net. [86.27.96.131])
	by smtp.gmail.com with ESMTPSA id
	x83sm17787086wmx.9.2016.07.10.16.18.05
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 10 Jul 2016 16:18:06 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Mon, 11 Jul 2016 00:17:53 +0100
Message-Id: <1468192676-22030-1-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.1.4
Subject: [meta-raspberrypi][PATCH 0/3] U-boot/kernel improvements
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
X-List-Received-Date: Sun, 10 Jul 2016 23:18:13 -0000

These changes allow u-boot to successfully boot Linux without a manual sequence
of commands being entered at boot time. This has been tested on an old Raspberry
Pi B+ as well as a Raspberrypi 3. It should work for other models as well.

Also, the kernel image is removed from the main rootfs /boot directory as it is
not needed outside the FAT32 boot partition.

Paul Barker (3):
  rpi-base.inc: Don't install kernel image into rootfs
  u-boot-scr: Add recipe to create u-boot boot script
  sdcard_image-rpi.bbclass: Include boot script when using u-boot

 classes/sdcard_image-rpi.bbclass                   |  3 ++-
 conf/machine/include/rpi-base.inc                  |  6 ++++++
 recipes-bsp/u-boot-scr/files/raspberrypi/boot.cmd  |  6 ++++++
 recipes-bsp/u-boot-scr/files/raspberrypi0/boot.cmd |  6 ++++++
 recipes-bsp/u-boot-scr/files/raspberrypi2/boot.cmd |  6 ++++++
 recipes-bsp/u-boot-scr/files/raspberrypi3/boot.cmd |  6 ++++++
 recipes-bsp/u-boot-scr/u-boot-scr.bb               | 20 ++++++++++++++++++++
 7 files changed, 52 insertions(+), 1 deletion(-)
 create mode 100644 recipes-bsp/u-boot-scr/files/raspberrypi/boot.cmd
 create mode 100644 recipes-bsp/u-boot-scr/files/raspberrypi0/boot.cmd
 create mode 100644 recipes-bsp/u-boot-scr/files/raspberrypi2/boot.cmd
 create mode 100644 recipes-bsp/u-boot-scr/files/raspberrypi3/boot.cmd
 create mode 100644 recipes-bsp/u-boot-scr/u-boot-scr.bb

-- 
2.1.4


