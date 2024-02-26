Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4236C5478C
	for <webhook@archiver.kernel.org>; Mon, 26 Feb 2024 15:31:50 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
 by mx.groups.io with SMTP id smtpd.web10.23057.1708961503070329686
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Feb 2024 07:31:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=OpxPImyw;
 spf=pass (domain: gmail.com, ip: 209.85.222.179, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-787ab7b56efso154253785a.2
        for <yocto@lists.yoctoproject.org>; Mon, 26 Feb 2024 07:31:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708961501; x=1709566301; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4x4tta8q953SeNoGnPdK48+FQP4wESOEWyVGcE2sYV8=;
        b=OpxPImywETr9PCX3wqtijWA0a6Ms0CJTcb25xQXsyLhrzLJEnzd8tyap+46Xmg7uHd
         VZgzSk7xG8+HpDuMUVcBXOJMbjopx2r6G8kLq1UN3w7J3nzwHpNhPpBrK1jeU/gdDjGC
         qMMvVNFcNpZtc7Ti2umdnNnwXSLi7tveUmcWltvQgD9hW7PEdaUJPcbbvrvqXB3xIm7C
         ewjvCUfZ78nyY9C0DhJZOTlpva6sW9XKFDGG243hVHcb/0QteUhFgpq5EBmM5KEC5O2f
         xFKyiXXa6G+C4uPKZ9TffO0otUJ/s2ki4veV5ua6g15In+e7Cp3fRAUP1kYFkOydjZky
         9aWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708961501; x=1709566301;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4x4tta8q953SeNoGnPdK48+FQP4wESOEWyVGcE2sYV8=;
        b=RrUCdG0VAvZHU3HrdRGi3dAycI5s/k6StEXYZQm7IZjtYd5W2ptE9dkpmfr6bDijKG
         gP0UjAqsEiGMo9P1wQbdhWJky19q44nQ1LYo/rT4x26tqt58m6J5DhR7grk6R9jAFZ6Q
         p1u+Z51n1AZa3yeswrtnbObH34GTNf3oIV+y4+/xdZwjXjHyd4THKz8mp5wR2w0YCy3P
         odqFkl/UvsU3pTStoyG8kYM53urcq60TyuQnKCvjqkYeL8NX0wKrICd5yq8kDwlXOXkY
         1Am9V322MG+T01sqgidq8LOUvdQTH42fD7Ylcavpfmhb7GIXFGr5K4xJvOQRgVqdx3wF
         Z2ag==
X-Gm-Message-State: AOJu0YyDsBHxQRmRoCOQI6J8PWZMCbTQiJJYIPrfmSLdcPTviP8zlWgi
	1HKqFN0RG+DZeFVpikPNaW2RDogtt2pm/2RXHomYM0srsp2cJDL4Q2WF9/h9
X-Google-Smtp-Source: AGHT+IGYh9yPx7hM17Gv63/YzKKXYidpf+8f9GxjKpI9p4LRQWG5kh0tUINaJi7YB+4ND+Q0prAxYA==
X-Received: by 2002:a05:620a:12f3:b0:787:a7d6:f8f4 with SMTP id f19-20020a05620a12f300b00787a7d6f8f4mr8497471qkl.5.1708961501041;
        Mon, 26 Feb 2024 07:31:41 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id b23-20020a05620a0f9700b00787bd9296c8sm2581368qkn.46.2024.02.26.07.31.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Feb 2024 07:31:40 -0800 (PST)
Date: Mon, 26 Feb 2024 10:31:38 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Subject: Re: [yocto] [meta-rockchip][PATCH v4 4/5] remove /boot partition
Message-ID: <20240226153138.GD32880@localhost>
References: <20240222170415.7061-1-twoerner@gmail.com>
 <17B63E2DD347D0FA.14827@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <17B63E2DD347D0FA.14827@lists.yoctoproject.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Feb 2024 15:31:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62611

On Thu 2024-02-22 @ 12:04:14 PM, Trevor Woerner via lists.yoctoproject.org wrote:
> In order to boot successfully, most Rockchip SoCs require a specific
> partitioning scheme which was defined many years (and many SoCs) ago. That
> partitioning scheme places the SPL and U-Boot at specific offsets at the
> start of the boot block device:
> 
>         https://opensource.rock-chips.com/wiki_Partitions
> 
> The Rockchip partitioning scheme goes on to also define the locations
> of a number of additional partitions, including the "boot" and "root"
> partitions.
> 
> Since both the SPL and U-Boot have already been placed on the block device,
> the "boot" partition only contains the extlinux config file and the
> kernel+dtb/fitImage; it doesn't contain any bootloader artifacts (other
> than the extlinux config).
> 
> The location of the SPL partition is a hard dependency since the BOOTROM
> etched inside the Rockchip SoCs is programmed to load and run a validated
> binary it finds at this location. The locations of the "boot" and "root"
> partitions are not so rigid since it is U-Boot which interacts with them.
> U-Boot is very flexible with how it finds boot components, and in its
> support for various devices, filesystems, sizes, etc.
> 
> Both oe-core's U-Boot metadata and wic's bootimg-partition script contain
> logic to generate the extlinux pieces required for a bootloader to boot
> a Linux system. If both are enabled, the wic pieces silently clobber the
> U-Boot pieces. However, the mechanisms contained in the U-Boot metadata are
> much more flexible, from a user's point of view, than the mechanisms in
> wic's bootimg-partition.
> 
> If a user wishes to setup some sort of A/B redundant update mechanism, they
> must have redundant root partitions (in order to update their filesystem
> contents) but they also need to have redundant boot partitions if they
> wish to update the kernel as part of their update mechanism. Pairing
> redundant kernel partitions with redundant filesystem partitions becomes
> unnecessarily complicated. Therefore it makes sense to combine the kernel
> and the filesystem into the same partition so that both the kernel and
> filesystem are updated, or rolled back, in lock-step as one unit. Specific
> kernel versions and configurations often have dependencies on user-space
> components and versions.
> 
> The /boot location is not going away. This patch simply transfers
> responsibility for its creation to the more flexible U-Boot mechanism
> and includes the kernel as part of the same partition as the root
> filesystem. Not only does it add flexibility, it also makes update schemes
> more straightforward. Although having a separate /boot partition is a
> "requirement" of the Rockchip partitioning scheme, it is not an actual
> hard requirement when using a flexible, open-source bootloader (such as
> U-Boot) instead of using Rockchip's proprietary miniloader, preloader, and
> trust.img.
> 
> Build-tested for all boards.
> Run-tested on:
> 	nanopi-m4-2gb, nanopi-m4b, nanopi-r2s, nanopi-r4s, roc-rk3328-cc,
> 	rock-3a, rock-5a, rock-5b, rock-pi-4b, rock-pi-e, rock-pi-s,
> 	rock64
> 
> Reviewed-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
> changes in v4:
> - updated for latest rockchip.wks
> - remove offset for /boot partition (let wic calculate this)
> 
> changes in v3:
> - add back the comment explaining the need for NONFITDT
> - change the inclusion of the u-boot-extlinux package from RRECOMMENDS
>   to RDEPENDS
> - clarify the commit message to remove the un-true statement that sizes
>   are hard requirements
> - add back the "--ptable gpt" line to rockchip.wks
> 
> changes in v2:
> - add UBOOT_EXTLINUX_FDT and tweak UBOOT_EXTLINUX_FDTDIR to modify their
>   behaviour based on whether or not KERNEL_IMAGETYPE is fitImage
> - remove extraneous WKS_FILE_DEPENDS
> - remove "--ptable gpt" from wks
> - move newly added "earlycon" to UBOOT_EXTLINUX_CONSOLE
> - re-word the commit message to better explain the behaviour of the
>   Rockchip BootROM
> ---
>  conf/machine/include/rockchip-defaults.inc |  2 ++
>  conf/machine/include/rockchip-extlinux.inc | 24 ++++++++++++++++++++++
>  conf/machine/include/rockchip-wic.inc      | 20 ++----------------
>  wic/rockchip.wks                           | 12 +++++------
>  4 files changed, 33 insertions(+), 25 deletions(-)
>  create mode 100644 conf/machine/include/rockchip-extlinux.inc

Applied to meta-rockchip, master branch.

