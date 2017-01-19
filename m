Return-Path: <eddie.cai.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36F2BE00A21; Thu, 19 Jan 2017 07:53:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddie.cai.linux[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.67 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.67 listed in list.dnswl.org]
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-vk0-f67.google.com (mail-vk0-f67.google.com
	[209.85.213.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3E02E00A1C
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 07:53:10 -0800 (PST)
Received: by mail-vk0-f67.google.com with SMTP id 23so3970846vkc.2
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 07:53:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=7DdXvNwanLdHqU1DAyEISc+VnSuPk4YEN0rnrPPti9U=;
	b=HGFHFFmdU9Osv9yE92nkVEkebVKNuYVA0oMMg4D28XPzDvMcGXqR2+6ZbcuhCdtfbD
	Zvy9HbkeaA8S9VFt8ttAmSf7dzYARFS+3LiDMY+/6w+yIoY/XSKDQIsyHDUWzIWMSeey
	f0f6MBx8Ah78WUL8K5G80Ecvn9TjIyMkun116LwAuQnGsBCCrP7p6SfeDpfosbCrN/5D
	fH9TZ5ob4P3hX2SidGIvOq26JqP0CGstZlRKzZj4Pc8t1byPF3tdhpUKFofQixmUu0vR
	rH353J2TYBWIvw7tsspmOlAjolhKNSA2tf7AXIs/A0w0CVBYwEP82zFZjcxDoHA6DjUC
	OYMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=7DdXvNwanLdHqU1DAyEISc+VnSuPk4YEN0rnrPPti9U=;
	b=FpeEQHW4Fqf4I55fVj7MBXfTgkRnSPVsHNRisnIvDgY9oyRQS6PNUhCj79+MhaSdZF
	1fe3zswyq+REFwgG6As4Ka5tICzrGNadIFQjF8614nAOqc7P52M45KI+t0EAIky32WpB
	7qeHpCYp2SdIYebf8GpEwr+YOLUYEDaDibvmltQ9C3sPyL8fyauMG/+AHRmyABMluDZA
	5DUTU2zTjR8iGjHNi8NtqiZBfZrUsV9rteSJ24mri4hURcMLs4mIlJ6/Hk6LbRLdwZEQ
	CT9x7gPE6rWcvJAFQI/ajIuBdOt6yKuuZf2rOINUA/+rIDoO+g2M6PXBwJt7aVwkFPUR
	2Clg==
X-Gm-Message-State: AIkVDXLrOU+7N/aC42evVq7Dw+rG9Q71o1VbHxXZLi4f2zf7duyZ3od6btRkX/Hs6ZXzzoMGIiEMcnt9DxMxXw==
X-Received: by 10.237.35.210 with SMTP id k18mr8030090qtc.219.1484841189329;
	Thu, 19 Jan 2017 07:53:09 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.45.130 with HTTP; Thu, 19 Jan 2017 07:53:08 -0800 (PST)
In-Reply-To: <1484834687-15746-1-git-send-email-jacob-chen@iotwrt.com>
References: <1484834687-15746-1-git-send-email-jacob-chen@iotwrt.com>
From: Eddie Cai <eddie.cai.linux@gmail.com>
Date: Thu, 19 Jan 2017 23:53:08 +0800
Message-ID: <CAJrj+DNaVgwnDZvGNnU63Ac=LeXeQ5uXYciS4nxnhw82gCXd1w@mail.gmail.com>
To: Jacob Chen <jacob-chen@iotwrt.com>
Cc: yocto@yoctoproject.org, Eddie Cai <eddie.cai@rock-chips.com>
Subject: Re: [meta-rockchip][PATCH 0/7] introduce rockchip offical linux support to meta-rockchip
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
X-List-Received-Date: Thu, 19 Jan 2017 15:53:13 -0000
Content-Type: text/plain; charset=UTF-8

You need to send to Romain Perier(romain.perier@gmail.com, Project
leader of meta-rockchip), Trevor Woerner (twoerner@gmail.com,
Maintainer of meta-rockchip)

2017-01-19 22:04 GMT+08:00 Jacob Chen <jacob-chen@iotwrt.com>:
> This series of patches add below features, will add more supports in the future(medias, more chips).
>
> 1. rockchip 4.4 kernel
>
> Rockchip 4.4 kernel is currently the latest version of the rockchip offical kernel, will be an upstream tracking branch.
> We regularly release the kernel through github. It support all rockchip 64-bit chips and a few 32-bit chips.
>
> 2. rockchip next-dev U-boot
>
> Rockchip next-dev U-boot is the next generation of rockchip u-boot, will also be an upstream tracking branch.
> At present, this branch is just a rebased upstream u-boot.
>
> 3. graphics
>
> We have plans for the acceleration in wayland, x11 in the rockchip platform, but in this series of patches, we only include the mali bianry support.
>
> 4. rockchip-next-image
>
> Being different from the previous rk-u-boot which use parameter, next-dev u-boot use gpt partition, so it needs to generate a different image.
>
> Jacob Chen (7):
>   recipes-kernel: linux-rockchip: Add new recipe for 4.4
>   machine: Add machine file for the rk3288 linux Boards
>   machine: firefly: use linux-rockchip by default
>   recipes-graphics: Add support for mali-userspace
>   recipes-bsp: add u-boot-rockchip support
>   rk3288.inc: add some variables
>   rockchip-next-image: introduce image for rockchip next-dev u-boot
>
>  classes/rockchip-next-image.bbclass                | 130 +++++++++++++++++++++
>  conf/machine/evb-rk3288.conf                       |  12 ++
>  conf/machine/fennec-rk3288.conf                    |  12 ++
>  conf/machine/firefly-rk3288.conf                   |   4 +
>  conf/machine/include/rk-linux.inc                  |  20 ++++
>  conf/machine/include/rk3288.inc                    |  10 +-
>  conf/machine/tinker-rk3288.conf                    |  13 +++
>  recipes-bsp/u-boot/u-boot-rockchip_next.bb         |  17 +++
>  recipes-graphics/mali-userspace/mali-userspace.inc |  57 +++++++++
>  .../mali-userspace/mali-userspace_t76x.bb          |  18 +++
>  recipes-graphics/mesa/mesa_%.bbappend              |   9 ++
>  recipes-kernel/linux/linux-rockchip_4.4.bb         |  20 ++++
>  12 files changed, 321 insertions(+), 1 deletion(-)
>  create mode 100644 classes/rockchip-next-image.bbclass
>  create mode 100644 conf/machine/evb-rk3288.conf
>  create mode 100644 conf/machine/fennec-rk3288.conf
>  create mode 100644 conf/machine/include/rk-linux.inc
>  create mode 100644 conf/machine/tinker-rk3288.conf
>  create mode 100644 recipes-bsp/u-boot/u-boot-rockchip_next.bb
>  create mode 100644 recipes-graphics/mali-userspace/mali-userspace.inc
>  create mode 100644 recipes-graphics/mali-userspace/mali-userspace_t76x.bb
>  create mode 100644 recipes-graphics/mesa/mesa_%.bbappend
>  create mode 100644 recipes-kernel/linux/linux-rockchip_4.4.bb
>
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

