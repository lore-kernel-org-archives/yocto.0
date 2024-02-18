Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E1A8C48BC4
	for <webhook@archiver.kernel.org>; Sun, 18 Feb 2024 17:28:24 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
 by mx.groups.io with SMTP id smtpd.web10.22252.1708277293903025123
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Feb 2024 09:28:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cjMziKrz;
 spf=pass (domain: gmail.com, ip: 209.85.222.174, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-785d954b236so227401585a.0
        for <yocto@lists.yoctoproject.org>; Sun, 18 Feb 2024 09:28:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708277293; x=1708882093; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ySZZOz5UA9aXMdYnsyr/KKWZJMadSDlHj0FDwmRD0ig=;
        b=cjMziKrzAa/deQTtDl3c0ZyCDAyRCocWzh4hxPLMgzqUY+V8tAy4ytvr2G09SK4aMT
         ywiXRJ0MlrbTLkUKtvzJGAjFKDNQfmRaP8PPEykFw9ulonoZ1w7zJKmcKzkpQUtLX0d+
         SvWAfS7yjwylKHAeeoZFalstS5sz4/ERHJrTbX0MIXbkwgHhMhVnX+i5fhd7yIzsfQD8
         2tYvwbcuzkeVUrDAXNql8FdFtEQBZXEuJEbxN9YqNjFdzckBAlCwS+6fOzQNj5fCSgDI
         c8L2YkLR7NEBZ3i9e6FDbXJJb5xsbopdSUFmluholiI9i7a+rn19Wc+NkwisLzyuPn3c
         pqNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708277293; x=1708882093;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ySZZOz5UA9aXMdYnsyr/KKWZJMadSDlHj0FDwmRD0ig=;
        b=HF4ZlqfGzs0/XLmoo51TZ7wAD7pwGIkvHQYka43PMzimxxD9JEVARFhTkp02joyzBi
         eOe1ZiLvKZ7cFy6uSmPT1lhE/fZGkWDkAcAkMCr1lmheVG5KaPSZvY11mfuP+bZYwxrB
         1xLw8Lu+Z6iiGtWKy2FrtZ3XkMBkBQCR5i6pF0wC7n5bJ1+xapzkLMGwm5pICU6EOCO/
         HB0SVTk8WdmsqOaI7IgWbAtv8UPIbxVUJCiH/FhPlu0Of0j+jTh/osVPxUL+r3P07BgZ
         JgrcMi1+0raTluE0r33hh4O+dNu7zvUYZE9DsB5PrtKSbHWL+lCYTK90mHB0Y7EwNuGV
         NpSA==
X-Gm-Message-State: AOJu0YwX25AphqHAvbG03JH8B5HVGIyJ18gUgvjh50kHEHgT1DkjYznL
	6pAgJ4AyQT3iZZVvokzm09I+X9QwC4jFkoMOVQfJcHaGa1YOaxmCw9FPQo22
X-Google-Smtp-Source: AGHT+IHYRyNy3Gwbnd/2+c7pNyZLxNREfrf8IpklJCDFYXv2+oFS27wA0NZbRwpe8swOStEe+UiYdA==
X-Received: by 2002:a37:c20b:0:b0:785:c397:4d69 with SMTP id i11-20020a37c20b000000b00785c3974d69mr11152003qkm.60.1708277292743;
        Sun, 18 Feb 2024 09:28:12 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id t10-20020a05620a0b0a00b007874cb751cesm1522278qkg.7.2024.02.18.09.28.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Feb 2024 09:28:11 -0800 (PST)
Date: Sun, 18 Feb 2024 12:28:10 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH 3/4] remove /boot partition from
 wic:bootimg-paritition
Message-ID: <20240218172810.GC28169@localhost>
References: <20240212202342.37778-1-twoerner@gmail.com>
 <20240212202342.37778-3-twoerner@gmail.com>
 <ebaf257d-6822-4e23-bc09-7606a90a4f7a@theobroma-systems.com>
 <20240216082531.GA2571@localhost>
 <582d100d-c868-4920-a773-3dbdfb31f009@theobroma-systems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <582d100d-c868-4920-a773-3dbdfb31f009@theobroma-systems.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 18 Feb 2024 17:28:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62536

On Fri 2024-02-16 @ 10:31:36 AM, Quentin Schulz wrote:
> 
> 
> On 2/16/24 09:25, Trevor Woerner wrote:
> > On Thu 2024-02-15 @ 06:45:59 PM, Quentin Schulz wrote:
> > > Hi Trevor,
> > > 
> > > On 2/12/24 21:23, Trevor Woerner via lists.yoctoproject.org wrote:
> [...]
> > > > +UBOOT_EXTLINUX_KERNEL_IMAGE ?= "/boot/${KERNEL_IMAGETYPE}"
> > > 
> > > FWIW, I don't think /boot is required. bootstd/bootmeth in U-Boot (upstream
> > > at the very least) will check for / and then /boot prefix for the paths in
> > > extlinux.conf. Not providing /boot means if someone still wants to use a
> > > separate boot partition, they wouldn't have to update this variable. But
> > > since it's overridable, this is basically up to your preference.
> > 
> > This is a good example of working ahead. The next thing I have queued up is
> > a meta-rauc-rockchip example that works generically on all (most?) rockchip
> > boards. As part of the U-Boot script I need to make the A/B logic work, it
> > needs the "/boot" in there otherwise it doesn't work; therefore it's best to
> > set it up properly now.
> > 
> 
> Mmmm I'm interested to see why it fails without the /boot thing? Let's see
> when we get patches :)

I'm working on getting rauc working with meta-rockchip generically so it works
with all the MACHINES in meta-rockchip. The patch won't be part of
meta-rockchip, but rather be part of a meta-rauc-community/meta-rauc-rockchip
I hope to submit upstream at some point.

Basically rauc works with U-Boot via a boot script. To make that script more
flexible I'm borrowing a variable form meta-rockchip in the rauc U-Boot script
to actually do the booting of the kernel/fitImage/etc. So while U-Boot might
be smart enough to check a bunch of places looking for the thing to boot, the
rauc boot script isn't quite so smart. It's my script to write, and I could
add such logic, but that would just inflate the script for questionable gain.

> > > > +UBOOT_EXTLINUX_LABELS ?= "default"
> > > > +UBOOT_EXTLINUX_MENU_DESCRIPTION:default ?= "${MACHINE}"
> > > > +
> > > > +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "u-boot-extlinux"
> > > 
> > > Is the image actually bootable if we do NOT have u-boot-extlinux installed?
> > > I'm challenging the RRECOMMENDS basically. And wondering whether
> > > MACHINE_ESSENTIAL_EXTRA_* is always included (it seems like RDEPENDS one is
> > > part of packagegroup-core-boot which is virtually installed in all images).
> > 
> > I can double-check, but I'm pretty sure that line was added explicitly after
> > testing and noticing that it was needed. If we remove the extlinux artifacts
> > from the image, what boot method is U-Boot supposed to use?
> > 
> 
> I'm not saying it is not needed, I'm thinking _RRECOMMENDS is too weak and
> it should be _RDEPENDS instead?
> 
> I'm not sure the wic image (or rather the rootfs) is proper basically if
> u-boot-extlinux is not installed.
> 
> As for what U-Boot does if it doesn't find an extlinux.conf, it depends on
> what U-Boot is configured to do. If I rememebr correctly, most (all)
> Rockchip boards now use bootflow by default.
> 
> You can check the content of the bootcmd environment variable, that's what's
> started when the user does nothing to interrupt the boot.
> 
> For me on Jaguar RK3588:
> """
> > printenv bootcmd
> bootcmd=bootflow scan -lb
> """
> 
> remove the -b flag so it doesn't boot and you should have something
> reasonable.
> 
> For me:
> """
> => bootflow scan -lae
> Scanning for bootflows in all bootdevs
> Seq  Method       State   Uclass    Part  Name                      Filename
> ---  -----------  ------  --------  ----  ------------------------
> ----------------
> Scanning global bootmeth 'efi_mgr':
>   0  efi_mgr      ready   (none)       0  <NULL>
> Scanning bootdev 'mmc@fe2e0000.bootdev':
>   1  extlinux     media   mmc          0  mmc@fe2e0000.bootdev.whol
>      ** No partition found, err=-2: No such file or directory
>   2  script       media   mmc          0  mmc@fe2e0000.bootdev.whol
>      ** No partition found, err=-2: No such file or directory
>   3  efi          media   mmc          0  mmc@fe2e0000.bootdev.whol
>      ** No partition found, err=-2: No such file or directory
>   4  pxe          base    mmc          0  mmc@fe2e0000.bootdev.whol
>      ** No media/partition found, err=-524: Unknown error
>   5  extlinux     media   mmc          1  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-22: Invalid argument
>   6  script       media   mmc          1  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-22: Invalid argument
>   7  efi          media   mmc          1  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-22: Invalid argument
>   8  pxe          base    mmc          1  mmc@fe2e0000.bootdev.part
>      ** No media/partition found, err=-524: Unknown error
>   9  extlinux     media   mmc          2  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-22: Invalid argument
>   a  script       media   mmc          2  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-22: Invalid argument
>   b  efi          media   mmc          2  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-22: Invalid argument
>   c  pxe          base    mmc          2  mmc@fe2e0000.bootdev.part
>      ** No media/partition found, err=-524: Unknown error
>   d  extlinux     media   mmc          3  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-22: Invalid argument
>   e  script       media   mmc          3  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-22: Invalid argument
>   f  efi          media   mmc          3  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-22: Invalid argument
>  10  pxe          base    mmc          3  mmc@fe2e0000.bootdev.part
>      ** No media/partition found, err=-524: Unknown error
>  11  extlinux     media   mmc          4  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-22: Invalid argument
>  12  script       media   mmc          4  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-22: Invalid argument
>  13  efi          media   mmc          4  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-22: Invalid argument
>  14  pxe          base    mmc          4  mmc@fe2e0000.bootdev.part
>      ** No media/partition found, err=-524: Unknown error
>  15  extlinux     media   mmc          5  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-22: Invalid argument
>  16  script       media   mmc          5  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-22: Invalid argument
>  17  efi          media   mmc          5  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-22: Invalid argument
>  18  pxe          base    mmc          5  mmc@fe2e0000.bootdev.part
>      ** No media/partition found, err=-524: Unknown error
>  19  extlinux     ready   mmc          6  mmc@fe2e0000.bootdev.part
> /extlinux/extlinux.conf
>  1a  script       fs      mmc          6  mmc@fe2e0000.bootdev.part
> /boot/boot.scr
>      ** File not found, err=-2: No such file or directory
>  1b  efi          fs      mmc          6  mmc@fe2e0000.bootdev.part
> efi/boot/bootaa64.efi
>      ** File not found, err=-2: No such file or directory
>  1c  pxe          base    mmc          6  mmc@fe2e0000.bootdev.part
>      ** No media/partition found, err=-524: Unknown error
>  1d  extlinux     media   mmc          7  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-22: Invalid argument
>  1e  script       media   mmc          7  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-22: Invalid argument
>  1f  efi          media   mmc          7  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-22: Invalid argument
>  20  pxe          base    mmc          7  mmc@fe2e0000.bootdev.part
>      ** No media/partition found, err=-524: Unknown error
>  21  extlinux     media   mmc          8  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  22  script       media   mmc          8  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  23  efi          media   mmc          8  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  24  pxe          base    mmc          8  mmc@fe2e0000.bootdev.part
>      ** No media/partition found, err=-524: Unknown error
>  25  extlinux     media   mmc          9  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  26  script       media   mmc          9  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  27  efi          media   mmc          9  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  28  pxe          base    mmc          9  mmc@fe2e0000.bootdev.part
>      ** No media/partition found, err=-524: Unknown error
>  29  extlinux     media   mmc          a  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  2a  script       media   mmc          a  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  2b  efi          media   mmc          a  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  2c  pxe          base    mmc          a  mmc@fe2e0000.bootdev.part
>      ** No media/partition found, err=-524: Unknown error
>  2d  extlinux     media   mmc          b  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  2e  script       media   mmc          b  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  2f  efi          media   mmc          b  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  30  pxe          base    mmc          b  mmc@fe2e0000.bootdev.part
>      ** No media/partition found, err=-524: Unknown error
>  31  extlinux     media   mmc          c  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  32  script       media   mmc          c  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  33  efi          media   mmc          c  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  34  pxe          base    mmc          c  mmc@fe2e0000.bootdev.part
>      ** No media/partition found, err=-524: Unknown error
>  35  extlinux     media   mmc          d  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  36  script       media   mmc          d  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  37  efi          media   mmc          d  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  38  pxe          base    mmc          d  mmc@fe2e0000.bootdev.part
>      ** No media/partition found, err=-524: Unknown error
>  39  extlinux     media   mmc          e  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  3a  script       media   mmc          e  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  3b  efi          media   mmc          e  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  3c  pxe          base    mmc          e  mmc@fe2e0000.bootdev.part
>      ** No media/partition found, err=-524: Unknown error
>  3d  extlinux     media   mmc          f  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  3e  script       media   mmc          f  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  3f  efi          media   mmc          f  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  40  pxe          base    mmc          f  mmc@fe2e0000.bootdev.part
>      ** No media/partition found, err=-524: Unknown error
>  41  extlinux     media   mmc         10  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  42  script       media   mmc         10  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  43  efi          media   mmc         10  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  44  pxe          base    mmc         10  mmc@fe2e0000.bootdev.part
>      ** No media/partition found, err=-524: Unknown error
>  45  extlinux     media   mmc         11  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  46  script       media   mmc         11  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  47  efi          media   mmc         11  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  48  pxe          base    mmc         11  mmc@fe2e0000.bootdev.part
>      ** No media/partition found, err=-524: Unknown error
>  49  extlinux     media   mmc         12  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  4a  script       media   mmc         12  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  4b  efi          media   mmc         12  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  4c  pxe          base    mmc         12  mmc@fe2e0000.bootdev.part
>      ** No media/partition found, err=-524: Unknown error
>  4d  extlinux     media   mmc         13  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  4e  script       media   mmc         13  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  4f  efi          media   mmc         13  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  50  pxe          base    mmc         13  mmc@fe2e0000.bootdev.part
>      ** No media/partition found, err=-524: Unknown error
>  51  extlinux     media   mmc         14  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  52  script       media   mmc         14  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  53  efi          media   mmc         14  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  54  pxe          base    mmc         14  mmc@fe2e0000.bootdev.part
>      ** No media/partition found, err=-524: Unknown error
>  55  extlinux     media   mmc         15  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  56  script       media   mmc         15  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  57  efi          media   mmc         15  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  58  pxe          base    mmc         15  mmc@fe2e0000.bootdev.part
>      ** No media/partition found, err=-524: Unknown error
>  59  extlinux     media   mmc         16  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  5a  script       media   mmc         16  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  5b  efi          media   mmc         16  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  5c  pxe          base    mmc         16  mmc@fe2e0000.bootdev.part
>      ** No media/partition found, err=-524: Unknown error
>  5d  extlinux     media   mmc         17  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  5e  script       media   mmc         17  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  5f  efi          media   mmc         17  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  60  pxe          base    mmc         17  mmc@fe2e0000.bootdev.part
>      ** No media/partition found, err=-524: Unknown error
>  61  extlinux     media   mmc         18  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  62  script       media   mmc         18  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  63  efi          media   mmc         18  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  64  pxe          base    mmc         18  mmc@fe2e0000.bootdev.part
>      ** No media/partition found, err=-524: Unknown error
>  65  extlinux     media   mmc         19  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  66  script       media   mmc         19  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  67  efi          media   mmc         19  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  68  pxe          base    mmc         19  mmc@fe2e0000.bootdev.part
>      ** No media/partition found, err=-524: Unknown error
>  69  extlinux     media   mmc         1a  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  6a  script       media   mmc         1a  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  6b  efi          media   mmc         1a  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  6c  pxe          base    mmc         1a  mmc@fe2e0000.bootdev.part
>      ** No media/partition found, err=-524: Unknown error
>  6d  extlinux     media   mmc         1b  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  6e  script       media   mmc         1b  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  6f  efi          media   mmc         1b  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  70  pxe          base    mmc         1b  mmc@fe2e0000.bootdev.part
>      ** No media/partition found, err=-524: Unknown error
>  71  extlinux     media   mmc         1c  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  72  script       media   mmc         1c  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  73  efi          media   mmc         1c  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  74  pxe          base    mmc         1c  mmc@fe2e0000.bootdev.part
>      ** No media/partition found, err=-524: Unknown error
>  75  extlinux     media   mmc         1d  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  76  script       media   mmc         1d  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  77  efi          media   mmc         1d  mmc@fe2e0000.bootdev.part
>      ** No partition found, err=-2: No such file or directory
>  78  pxe          base    mmc         1d  mmc@fe2e0000.bootdev.part
>      ** No media/partition found, err=-524: Unknown error
> Scanning bootdev 'mmc@fe2c0000.bootdev':
> Card did not respond to voltage select! : -110
> Unknown uclass 'nvme' in label
> scanning bus for devices...
> Bus usb@fc800000: USB EHCI 1.00
> Bus usb@fc840000: USB OHCI 1.0
> Bus usb@fc880000: USB EHCI 1.00
> Bus usb@fc8c0000: USB OHCI 1.0
> scanning bus usb@fc800000 for devices... 1 USB Device(s) found
> scanning bus usb@fc840000 for devices... 1 USB Device(s) found
> scanning bus usb@fc880000 for devices... 1 USB Device(s) found
> scanning bus usb@fc8c0000 for devices... 1 USB Device(s) found
> BOOTP broadcast 1
> BOOTP broadcast 2
> BOOTP broadcast 3
> BOOTP broadcast 4
> BOOTP broadcast 5
> BOOTP broadcast 6
> BOOTP broadcast 7
> BOOTP broadcast 8
> BOOTP broadcast 9
> BOOTP broadcast 10
> BOOTP broadcast 11
> BOOTP broadcast 12
> BOOTP broadcast 13
> BOOTP broadcast 14
> BOOTP broadcast 15
> BOOTP broadcast 16
> BOOTP broadcast 17
> 
> Retry time exceeded; starting again
> BOOTP broadcast 1
> BOOTP broadcast 2
> BOOTP broadcast 3
> BOOTP broadcast 4
> BOOTP broadcast 5
> BOOTP broadcast 6
> BOOTP broadcast 7
> BOOTP broadcast 8
> BOOTP broadcast 9
> BOOTP broadcast 10
> BOOTP broadcast 11
> BOOTP broadcast 12
> BOOTP broadcast 13
> BOOTP broadcast 14
> BOOTP broadcast 15
> BOOTP broadcast 16
> BOOTP broadcast 17
> 
> Retry time exceeded; starting again
> No more bootdevs
> ---  -----------  ------  --------  ----  ------------------------
> ----------------
> (121 bootflows, 2 valid)
> """
> 
> The media tested seems to be located in boot_targets, which defaults for
> that board to:
> 
> """
> > printenv boot_targets
> boot_targets=mmc0 mmc1 nvme scsi usb pxe dhcp spi
> """
> 
> So it tries to boot from mmc0 (eMMC usually), mmc1 (SD card usually), nvme,
> scsi, usb, pxe (glorified TFTP?), dhcp, spi.
> 
> So if nothing works/exists before scsi, then it'll try to boot from that,
> then USB, then from the network and finally maybe from spi but that is very
> likely to fail as well since SPI flashes are typically very small and
> wouldn't be able to contain even the kernel Image?
> 
> > > This is actually quite nice, I was wondering also if there was a way to
> > > create as many entries as there are Device Trees supported for the machine
> > > (and maybe even device tree overlays? but this one's difficult because we
> > > need knowledge of which device tree overlay can apply on top of which device
> > > tree(s) :) ). But I don't think we can have anonymous python in conf file?
> > > Or maybe we should do this in u-boot bbappend?
> > 
> > Yes. The bbclass has logic to generate as many entries as user-supplied labels
> > in UBOOT_EXTLINUX_LABELS:
> > 
> > https://git.openembedded.org/openembedded-core/tree/meta/classes-recipe/uboot-extlinux-config.bbclass#n114
> > 
> > I actually hint at the mechanism my providing the superfluous ":default"
> > entry.
> > 
> 
> I'm actually more discussing how to *feed* this to this part of the code.
> Right now, this is manual because we need to define labels and for each
> variable a label override.
> 
> I was wondering if we could have something that automatically creates labels
> for the non fitimage usecase, based on the KERNEL_DEVICETREE variable.
> 
> in pseudo code:
> 
> UBOOT_EXTLINUX_LABELS ?= ""
> 
> python __anonymous() {
>     UBOOT_EXTLINUX_DEFAULT_LABEL = first(KERNEL_DEVICETREE)
>     for devicetree in KERNEL_DEVICETREE:
>         UBOOT_EXTLINUX_LABELS += basename(devicetree)
>         UBOOT_EXTLINUX_FDT:basename(devicetree) = devicetree

I made all the EXTLINUX variables ?= so users could override them as they see
fit. If a user wants to add more boot targets then I figure they can generate
the entries manually in their own overrides/configurations to suit their needs
for the time-being. Maybe eventually we could have something clever and
automated (based on KERNEL_DEVICETREE) but that's a future task. In that case
the user would only need to specify a set of device trees and the BSP would
handle it automatically.

However boot targets might not all be based, or all be wanted, from different
device trees. If the user wanted to have a, for example. Xen target, that
would be an entirely separate thing.

More things to think about. In any case, the proposed changes allow the user
to do what the want, even if it means a bit more work on their part for the
time-being.

And that's why I'm happy to be switching over to the EXTLINUX handling
provided by the U-Boot metadata in oecore rather than using the EXTLINUX
pieces from wic. The oecore pieces are much more flexible. The wic support
doesn't allow anywhere near as much flexibility and certainly doesn't provide
a way to define multiple targets.

> }
> 
> > > > diff --git a/conf/machine/include/rockchip-wic.inc b/conf/machine/include/rockchip-wic.inc
> > > > index 67a8310f7d6a..cae14c90e1db 100644
> > > > --- a/conf/machine/include/rockchip-wic.inc
> > > > +++ b/conf/machine/include/rockchip-wic.inc
> > > > @@ -1,5 +1,7 @@
> > > >    # common meta-rockchip wic/wks items
> > > > +require conf/machine/include/rockchip-extlinux.inc
> > > > +
> > > >    SPL_BINARY ?= "idbloader.img"
> > > >    IMAGE_FSTYPES += "wic wic.bmap"
> > > > @@ -11,23 +13,8 @@ WKS_FILE_DEPENDS ?= " \
> > > >    	virtual/bootloader \
> > > >    	virtual/kernel \
> > > >    	"
> > > 
> > > Does the WKS file still really depend on virtual/kernel or is it rather a
> > > misplaced dependency now?
> > 
> > Great catch! Also, since all the partitions now have explicit fstypes, and the
> > fact we no longer have a vfat-formatted /boot partition, the mtools-native and
> > dosfstools-native dependencies can also be removed.
> > 
> > It will probably get rejected, but I think I'm going to create a patch for wic
> > that assumes unspecified partitions are "none" instead of "vfat". I wonder how
> > many BSP layers are copy&past'ing the mtools and dosfstools dependencies that
> > aren't using vfat-based partitions and wondering why?
> > 
> 
> And a nice catch from you there too :)
> 
> Cheers,
> Quentin

