Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0048BC48BC4
	for <webhook@archiver.kernel.org>; Sun, 18 Feb 2024 17:17:03 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
 by mx.groups.io with SMTP id smtpd.web11.22079.1708276620984721060
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Feb 2024 09:17:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=EJcb0vlP;
 spf=pass (domain: gmail.com, ip: 209.85.219.41, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-68f56f26101so4282366d6.1
        for <yocto@lists.yoctoproject.org>; Sun, 18 Feb 2024 09:17:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708276620; x=1708881420; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K3yj4eB16TcQovyE4OnCWmznp3ycshnEEem8OvTD42Q=;
        b=EJcb0vlPrUB90kfXNwA2sU1BLYDs5N3xtsFA3xnTW/qLslGJyjU+JHp+dKzrNtYQiN
         7S1Sc7FYOYDGIMWCuQD8zDgMNzWo0HPGqEf8wyyMtr/9cfM9u3t91GSCzpnHUmZrU6bz
         c6VbVDWb7S1ZNgvA8YDPk74tSXzLOsbFb75Bjy+TABhI/JX6ZnVmW5tBIJnOzflRvGlL
         q3z07Bjv5BdRgpKGi0g6nReJI0aZFn2cHGX4A+NWmxo/yvZNz3KjyBUAXOrzgmoCjnlI
         IXnTUIBqn0wcDTvTLnuE9BZ8x01MqCTvP0LTZqTDel6R7aE9PPsnPrLC2LDmBEaZbHPL
         w4Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708276620; x=1708881420;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K3yj4eB16TcQovyE4OnCWmznp3ycshnEEem8OvTD42Q=;
        b=lUtfEnUo9PLs5Gy9mLmMUnfXus4ANL07gUh8gIl0yDVUq7vVVyWg+Qf2XrQeAkJ3gf
         hFbk+E2eJTNEzDXi+bokbg6Gd/le6h2nVRqet2pA/8RhIajLTxNPTafqoRDvEtaBuTzf
         04qLJpDibyBKtge9UuVz0X9JvpBIMRWFxW9yEveq/vzt8M8b688OByPy+YHvYOYrK2VM
         owgz5E1MXrbysy71AcFqChe/yXC2e0KSiqv2Zzi6nGCVOLpT8ZShZEodcVS6c9UvMqY+
         YL2jFE38ZbzvSK1mLik02lRMkOViOeodnEtAp/FxjF7nsUZMHUGRhucR41HErkJi/60d
         WNPg==
X-Gm-Message-State: AOJu0YyEoiQTMgFjH0TxyRSXrq9V/a6AiAYiakvbMfv9z63WNpQaWTO7
	+09gNh3ScD72pDfVk7N9yAxEsfHZEWtjtDR/+hVSZOTGZ/IU+fcoIhhQw5AU
X-Google-Smtp-Source: AGHT+IF6YXYhig4YVlHOjP+d+HgvtAMQYGTiQSJZJ1Cfu9xdB4Dbnof+Y76xLc2dzao+azj7dTAIzw==
X-Received: by 2002:a05:6214:29ef:b0:68f:6df2:3b60 with SMTP id jv15-20020a05621429ef00b0068f6df23b60mr916652qvb.20.1708276620030;
        Sun, 18 Feb 2024 09:17:00 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id oo6-20020a056214450600b0068c440bc7d0sm2210312qvb.105.2024.02.18.09.16.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Feb 2024 09:16:59 -0800 (PST)
Date: Sun, 18 Feb 2024 12:16:57 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH v2 3/4] remove /boot partition
Message-ID: <20240218171657.GB28169@localhost>
References: <20240216082922.7873-1-twoerner@gmail.com>
 <20240216082922.7873-3-twoerner@gmail.com>
 <82d5fc9b-2490-4942-8b31-13dc709ad121@theobroma-systems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <82d5fc9b-2490-4942-8b31-13dc709ad121@theobroma-systems.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 18 Feb 2024 17:17:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62535

On Fri 2024-02-16 @ 11:06:03 AM, Quentin Schulz wrote:
> Hi Trevor,
> 
> On 2/16/24 09:29, Trevor Woerner via lists.yoctoproject.org wrote:
> > In order to boot successfully, most Rockchip SoCs require a specific
> > partitioning scheme which was defined many years (and many SoCs) ago. That
> > partitioning scheme places the SPL and U-Boot at specific offsets at the
> > start of the boot block device:
> > 
> > 	https://opensource.rock-chips.com/wiki_Partitions
> > 
> > The Rockchip partitioning scheme goes on to also define the locations and
> > sizes of a number of additional partitions, including the "boot" and "root"
> > partitions.
> > 
> > Since both the SPL and U-Boot have already been placed on the block device,
> > the "boot" partition only contains the extlinux config file and the
> > kernel+dtb/fitImage; it doesn't contain any bootloader artifacts (other
> > than the extlinux config).
> > 
> > The location and size of the SPL partition is a hard dependency since the
> 
> Just because I like being pedantic, I don't thhink the size is a hard
> dependency. The location is (well there are a few possible though :) ), but
> the size is part of the header(s) that is parsed by the BootROM, the BootROM
> will only fetch what it needs as far as I remember. It's a bit of convoluted
> code but it's done in tools/rkcommon.c in U-Boot source code.
> 
> What we can say though is that the TPL+SPL has a maximum size, since it
> needs to fit inside the SRAM. But I don't think any SoC has been released by
> Rockchip that has 2.5MiB of SRAM, it's usually a few tens of KiB max only.
> Anyway, the message is fine, just wanted to give a bit more info there.

I appreciate pedantic, so don't hesitate to jump in. In fact up until this
point we have been playing fast and loose with the partition sizes, so I
already had proof that the sizing was not a hard dependency. And I never mind
in-depth explanations and experiences.

> 
> [...]
> 
> > diff --git a/conf/machine/include/rockchip-extlinux.inc b/conf/machine/include/rockchip-extlinux.inc
> > new file mode 100644
> > index 000000000000..3af7ed629e34
> > --- /dev/null
> > +++ b/conf/machine/include/rockchip-extlinux.inc
> > @@ -0,0 +1,12 @@
> > +UBOOT_EXTLINUX ?= "1"
> > +UBOOT_EXTLINUX_ROOT ?= "root=PARTLABEL=root"
> > +UBOOT_EXTLINUX_FDTDIR ?= "${@bb.utils.contains('KERNEL_IMAGETYPE', 'fitImage', '', '/boot', d)}"
> > +NONFITDT ?= "${@d.getVar('KERNEL_DEVICETREE').split('/')[1]}"
> 
> Maybe keep the comment explaining the logic of this line?

Done. But tweaked a little. The reasons for having it before (as part of the
boot files is slightly different than the reason for keeping it for EXTLINUX,
but very similar.

> 
> > +UBOOT_EXTLINUX_FDT ?= "${@bb.utils.contains('KERNEL_IMAGETYPE', 'fitImage', '', '${NONFITDT}', d)}"
> > +UBOOT_EXTLINUX_CONSOLE ?= "earlycon console=tty1 console=${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8"
> > +UBOOT_EXTLINUX_KERNEL_ARGS ?= "rootwait rw rootfstype=ext4"
> > +UBOOT_EXTLINUX_KERNEL_IMAGE ?= "/boot/${KERNEL_IMAGETYPE}"
> > +UBOOT_EXTLINUX_LABELS ?= "default"
> > +UBOOT_EXTLINUX_MENU_DESCRIPTION:default ?= "${MACHINE}"
> > +
> > +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "u-boot-extlinux"
> 
> Going back to the mail I sent a few minutes ago on the v1 (which was sent
> after your v2 was sent :) ), I have a gut feeling we need _RDEPENDS here and
> not _RRECOMMENDS.

Ah got it. I misunderstood your comments. I thought you had been asking
whether it was necessary at all and I was pointing out that without that
package being added to the rootfs it wouldn't work.

Not a problem, I've upgraded it from a recommendation to a dependency.

