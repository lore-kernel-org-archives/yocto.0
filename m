Return-Path: <jacobchen110@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BAB84E004D8; Thu, 19 Jan 2017 02:10:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.66 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E44ADE004A0
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 02:09:58 -0800 (PST)
Received: by mail-pg0-f66.google.com with SMTP id t6so3841364pgt.1
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 02:09:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=b/6GsRYGy6Ka1pVkCfXVVXdY2+3uDz72TQHtOOyRxZg=;
	b=R2m9vyypz3YvmuDBULvaYJvRlR46RmKjwfRMYylP/42PWJIkPiBImBXtUnXvNo8URY
	IagdJLXsHYBr1Lc+hHAS21zU06l8/QuPP0PhOTHk6VCzjadNlJ79EE4ZZOqEChvJVB07
	BaKP8rVsxLB4gQPPtDmn0XTieh6exv2IJqqg4JjtXZ+UGsAsAV/yyDy5ZCpbR35xKe3c
	3aUjKnGpfoicaQXFRTI4JSkHkbBvywa6HG7p8D0qHGdQgnag0rqio/UpDm4bOTcwf5fn
	rXtr/TA6G1lgbbz0F+s9favnr+Sdv912YJD+AF1uqAbNykQG4ACuRxvvZdJa6QS+XOqv
	Popg==
X-Gm-Message-State: AIkVDXKIVaf5LL7wWQoJh5q8jxWhII+XN9QsL3b4dDl7lF67OQakwANIYq1cCvIGCVoFWA==
X-Received: by 10.84.149.139 with SMTP id m11mr12158424pla.38.1484820597981;
	Thu, 19 Jan 2017 02:09:57 -0800 (PST)
Received: from localhost.localdomain ([103.29.142.67])
	by smtp.gmail.com with ESMTPSA id
	w125sm7440387pfb.8.2017.01.19.02.09.53
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 19 Jan 2017 02:09:56 -0800 (PST)
From: Jacob Chen <jacob-chen@iotwrt.com>
To: yocto@yoctoproject.org
Date: Thu, 19 Jan 2017 18:09:25 +0800
Message-Id: <1484820572-11891-1-git-send-email-jacob-chen@iotwrt.com>
X-Mailer: git-send-email 2.7.4
Cc: Jacob Chen <jacob-chen@iotwrt.com>, eddie.cai@rock-chips.com
Subject: [PATCH 0/7] introduce rockchip offical linux support to meta-rockchip
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
X-List-Received-Date: Thu, 19 Jan 2017 10:10:00 -0000

This series of patches add below features, will add more supports in the future(medias, more chips).

1. rockchip 4.4 kernel

Rockchip 4.4 kernel is currently the latest version of the rockchip offical kernel, will be an upstream tracking branch. 
We regularly release the kernel through github. It support all rockchip 64-bit chips and a few 32-bit chips.

2. rockchip next-dev U-boot

Rockchip next-dev U-boot is the next generation of rockchip u-boot, will also be an upstream tracking branch.
At present, this branch is just a rebased upstream u-boot.

3. graphics

We have plans for the acceleration in wayland, x11 in the rockchip platform, but in this series of patches, we only include the mali bianry support.

4. rockchip-next-image

Being different from the previous rk-u-boot which use parameter, next-dev u-boot use gpt partition, so it needs to generate a different image.


Jacob Chen (7):
  recipes-kernel: linux-rockchip: Add new recipe for 4.4
  machine: Add machine file for the rk3288 linux Boards
  machine: firefly: use linux-rockchip by default
  recipes-graphics: Add support for mali-userspace
  recipes-bsp: add u-boot-rockchip support
  rk3288.inc: add some variables
  rockchip-next-image: introduce image for rockchip next-dev u-boot

 classes/rockchip-next-image.bbclass                | 130 +++++++++++++++++++++
 conf/machine/evb-rk3288.conf                       |  12 ++
 conf/machine/fennec-rk3288.conf                    |  12 ++
 conf/machine/firefly-rk3288.conf                   |   4 +
 conf/machine/include/rk-linux.inc                  |  20 ++++
 conf/machine/include/rk3288.inc                    |  10 +-
 conf/machine/tinker-rk3288.conf                    |  13 +++
 recipes-bsp/u-boot/u-boot-rockchip_next.bb         |  17 +++
 recipes-graphics/mali-userspace/mali-userspace.inc |  57 +++++++++
 .../mali-userspace/mali-userspace_t76x.bb          |  18 +++
 recipes-graphics/mesa/mesa_%.bbappend              |   9 ++
 recipes-kernel/linux/linux-rockchip_4.4.bb         |  20 ++++
 12 files changed, 321 insertions(+), 1 deletion(-)
 create mode 100644 classes/rockchip-next-image.bbclass
 create mode 100644 conf/machine/evb-rk3288.conf
 create mode 100644 conf/machine/fennec-rk3288.conf
 create mode 100644 conf/machine/include/rk-linux.inc
 create mode 100644 conf/machine/tinker-rk3288.conf
 create mode 100644 recipes-bsp/u-boot/u-boot-rockchip_next.bb
 create mode 100644 recipes-graphics/mali-userspace/mali-userspace.inc
 create mode 100644 recipes-graphics/mali-userspace/mali-userspace_t76x.bb
 create mode 100644 recipes-graphics/mesa/mesa_%.bbappend
 create mode 100644 recipes-kernel/linux/linux-rockchip_4.4.bb

-- 
2.7.4


