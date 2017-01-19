Return-Path: <jacobchen110@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12666E009C2; Thu, 19 Jan 2017 02:19:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jacobchen110[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4B2FE009B9
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 02:19:18 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id d140so10871300wmd.2
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 02:19:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ILZVcgss3dK36mKRc+gdYszo37fi5L6kBbgriYXOd4U=;
	b=VhabEYDRF5nSb7ZqTLFIVn7kvV6s5pP+26lUyFG7FcaiQw89zrkNFG/eEBxHb73Q6R
	uK7z9BnrRs8MQ+u0y+pKznueroH5sdeYvcGdmYjQ8bBTmCNGFYalJcGpZDHkQDPpqsrM
	VOGldU87h0x9V6BpuP57pdb3Kk4PEtvRG2tHUmbCVtblDAEPvJB5n6FVqALueGz7KlL3
	h8oJBstMsshis6rqZz2YbfbkiEkicqO9sxyDjEe1VXWUtL1f+MmHBVD9p9FtHMmNlioM
	BKEGAFYuZ2sIRVojUISYxZSgf4ewNBTdomuv1HqhKf/t66l02D52SpGZKZZ0PNAip2Cb
	MYFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ILZVcgss3dK36mKRc+gdYszo37fi5L6kBbgriYXOd4U=;
	b=LShvnbS86xYYUuDh6oOg6vvsT0m9bgOB9d2wydHRPcUA+pPE21p2v+KG7XJXkMH/J6
	qAdciaKtygJDYUC7FVD73W1is25LMx752Qe3D+RmSNXdnsbSYv3lm2owxlfw8VumBMwm
	xr2yIsGPPF5xnTM0xgV57npHHYM58DdbCBzt0A/9O1Ysf4whGuscRrr3EJWJD5aQAWxu
	jn7yMrPf7kj5l65Czzpj6zae1ZvAbHLCI5EekD6EX0rqZ7ugqDBE4G3a++vEPJ5izjot
	5O8YpXtsiji8F0S+MdnGxeGkA1F0J0xblbkLwyByWI8PN+KWFj8ztpo02sqN55wlqhDK
	lH7w==
X-Gm-Message-State: AIkVDXKnXtuE/sU47rBkPM2hHbRvQLugqL8sV/STkrtJT6+tvPVdGPpBMwtEF1u0SqaB/bX6psXqbSAgnelRPQ==
X-Received: by 10.28.5.72 with SMTP id 69mr6092638wmf.6.1484821157022; Thu, 19
	Jan 2017 02:19:17 -0800 (PST)
MIME-Version: 1.0
Received: by 10.194.157.230 with HTTP; Thu, 19 Jan 2017 02:19:16 -0800 (PST)
In-Reply-To: <1484820572-11891-1-git-send-email-jacob-chen@iotwrt.com>
References: <1484820572-11891-1-git-send-email-jacob-chen@iotwrt.com>
From: Jacob Chen <jacobchen110@gmail.com>
Date: Thu, 19 Jan 2017 18:19:16 +0800
Message-ID: <CAFLEztR7kqmNzDaZ8Pwjzn9hh6ixSi1+i+t4OMAzT9ENaOpSww@mail.gmail.com>
To: yocto@yoctoproject.org
Cc: Jacob Chen <jacob-chen@iotwrt.com>, Eddie Cai <eddie.cai@rock-chips.com>
Subject: Re: [PATCH 0/7] introduce rockchip offical linux support to meta-rockchip
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
X-List-Received-Date: Thu, 19 Jan 2017 10:19:22 -0000
Content-Type: text/plain; charset=UTF-8

2017-01-19 18:09 GMT+08:00 Jacob Chen <jacob-chen@iotwrt.com>:
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

Yocto is really amazing.
It truly have a powerful customization architecture.  : )

I'm going to get the gstreamer-rk working with yocto and then plan to
add more chips to it (rk3036,rk3399,rk3328)....

