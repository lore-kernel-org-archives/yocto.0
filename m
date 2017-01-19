Return-Path: <jacobchen110@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80B0CE00A39; Thu, 19 Jan 2017 06:05:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58BE3E00A31
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 06:05:05 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id 194so4295709pgd.0
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 06:05:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=Bbua6x/EcXqDzeEnhejzUqexXVjr0hQjod0PaxlW0UA=;
	b=jfyjjyG9Q2FggXsq3zJH4as6SsPgS+VV9UXOyEI3linJnmoFaRlOzE7ewuygUVY8uP
	w8yzBxWGTY4jwGwXf4Sn2SzC7vSyqS8/x90v+IGMhl2NpO9/gV/gqkMy7dhHHi3hVmuj
	DYwC0Aid63hHECb6nroTPhL+q8gf/LmtKlEGxLNLe9NUTrsFS1JBozBoJJtRZsKpR3fj
	3Orw0oTpReVJRJX6061VGFU81wxl1WPMF1/rm/uFNMoarC3H50vVensXtqXUdM3z7Ovg
	YwejSTqbBmFh1UhHY01bt7qjINOaledFuS0UJh1cRY7Of/3XAmDimGZs9EK2sy189B1i
	qDWw==
X-Gm-Message-State: AIkVDXJJ+6lIDgMDGFETatlbPpjlQCG+Mw3ZIWj6kQz7PHTyvOCsbkU/rg26TPAr4nPStw==
X-Received: by 10.99.155.10 with SMTP id r10mr10510544pgd.28.1484834705680;
	Thu, 19 Jan 2017 06:05:05 -0800 (PST)
Received: from localhost.localdomain ([27.155.138.228])
	by smtp.gmail.com with ESMTPSA id
	u78sm9259496pfa.53.2017.01.19.06.05.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 19 Jan 2017 06:05:04 -0800 (PST)
From: Jacob Chen <jacob-chen@iotwrt.com>
To: yocto@yoctoproject.org
Date: Thu, 19 Jan 2017 22:04:40 +0800
Message-Id: <1484834687-15746-1-git-send-email-jacob-chen@iotwrt.com>
X-Mailer: git-send-email 2.7.4
Cc: Jacob Chen <jacob-chen@iotwrt.com>, eddie.cai@rock-chips.com
Subject: [meta-rockchip][PATCH 0/7] introduce rockchip offical linux support to meta-rockchip
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
X-List-Received-Date: Thu, 19 Jan 2017 14:05:09 -0000

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


