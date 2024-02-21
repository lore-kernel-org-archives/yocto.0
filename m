Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5324CC5478A
	for <webhook@archiver.kernel.org>; Wed, 21 Feb 2024 19:18:21 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
 by mx.groups.io with SMTP id smtpd.web11.2645.1708543091924207246
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Feb 2024 11:18:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=h8e0WAhB;
 spf=pass (domain: gmail.com, ip: 209.85.222.181, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-785d57056b0so395083985a.0
        for <yocto@lists.yoctoproject.org>; Wed, 21 Feb 2024 11:18:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708543091; x=1709147891; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A1rWakFPjX4TUoil1HCuQm8vFh9GtYC+JdfY6hM0Gi4=;
        b=h8e0WAhBrQs72oKLLiYW41vIafH97LYhdvQr/qrPNzBMDu0O7oWXSMg+3GrIACtU0i
         wodgb53KNBnE5qBQ7VkKpRAxVCy1ILAwx58+n0iGVGAX0tgRemKzXD6YklksWbYn6j0i
         ZtRUQClzjdfYW5RXNuSMRA53Vf/o5Vo3LxZ7N3D9mFIy4uZxlmItNCf2bOmyDKZWVJC1
         wEXlocy7vOcmpMcUWy5i2D6qhw3gYebnod/tzP4wzDbc9Zsy9U3quetWrfnBr3dblXDk
         RdHkw2S7PiTQyQon2+bqQF4mvVqrGrJcuPWAKznPDy55s60uedXLrOYgP8+Kbk20xNBR
         5wrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708543091; x=1709147891;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A1rWakFPjX4TUoil1HCuQm8vFh9GtYC+JdfY6hM0Gi4=;
        b=xCXUf9pa4pYUz1x3zcvUsxa802nLeVnb2suh25LaUQ4JRzlFTH7OPL6XQKg0Hs/mba
         BSJa7Lxth0Y8+E7S4LmcmA7/tWn1JjSMhpWGp7iGSuWyjN6Pt91sCvMZ0FMb7TdTfimG
         tQIqbZXW3Cn/uyeKR0LsFjMybFdTCjPAthp42tMvkeau7YHljrKUutI63wJn2bYHw9ET
         38yBe3o/Rl/DEkBbMd1z6bsnbz7SojsGbX0GFRXmKIzaAJVwM+kMwmc7Z3GWPA4I1zzd
         VK0ibW6B0UkFfpoxWuWJ105HNjNgLGvAvuCeae5cZfrGuPBUpOXTA8FbgdHVq4Y3DFK9
         IMMQ==
X-Gm-Message-State: AOJu0Yw1deKEYFBaYD3CW/sXkRyXE89tmEPnncnptbKcBCLUXYdfpcuz
	eetxkiBOH9WKzkhJU7jeb2u5ZC9TENCkWTYd2+sS+ZZJUBSBHhN3
X-Google-Smtp-Source: AGHT+IGNwBWuOrC8FhPtiajrs1s6UrVi36Y25jgRB/UjjNlAQ9NYZd7PqIro1I4ZwEsxT9JmLrop8Q==
X-Received: by 2002:a05:620a:450b:b0:787:3aaa:38d9 with SMTP id t11-20020a05620a450b00b007873aaa38d9mr20798108qkp.51.1708543090830;
        Wed, 21 Feb 2024 11:18:10 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id ow39-20020a05620a822700b007872acdc390sm4592205qkn.9.2024.02.21.11.18.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Feb 2024 11:18:10 -0800 (PST)
Date: Wed, 21 Feb 2024 14:18:08 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH 3/4] remove /boot partition from
 wic:bootimg-paritition
Message-ID: <20240221191808.GA12724@localhost>
References: <20240212202342.37778-1-twoerner@gmail.com>
 <20240212202342.37778-3-twoerner@gmail.com>
 <ebaf257d-6822-4e23-bc09-7606a90a4f7a@theobroma-systems.com>
 <20240216082531.GA2571@localhost>
 <582d100d-c868-4920-a773-3dbdfb31f009@theobroma-systems.com>
 <20240218172810.GC28169@localhost>
 <8a223cf3-7913-4cb7-848b-0b1dc4109718@theobroma-systems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <8a223cf3-7913-4cb7-848b-0b1dc4109718@theobroma-systems.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Feb 2024 19:18:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62559

On Wed 2024-02-21 @ 07:31:17 PM, Quentin Schulz wrote:
> Hi Trevor,
> 
> On 2/18/24 18:28, Trevor Woerner wrote:
> > On Fri 2024-02-16 @ 10:31:36 AM, Quentin Schulz wrote:
> > > 
> > > 
> > > On 2/16/24 09:25, Trevor Woerner wrote:
> > > > On Thu 2024-02-15 @ 06:45:59 PM, Quentin Schulz wrote:
> > > > > Hi Trevor,
> > > > > 
> > > > > On 2/12/24 21:23, Trevor Woerner via lists.yoctoproject.org wrote:
> > > [...]
> > > > > > +UBOOT_EXTLINUX_KERNEL_IMAGE ?= "/boot/${KERNEL_IMAGETYPE}"
> > > > > 
> > > > > FWIW, I don't think /boot is required. bootstd/bootmeth in U-Boot (upstream
> > > > > at the very least) will check for / and then /boot prefix for the paths in
> > > > > extlinux.conf. Not providing /boot means if someone still wants to use a
> > > > > separate boot partition, they wouldn't have to update this variable. But
> > > > > since it's overridable, this is basically up to your preference.
> > > > 
> > > > This is a good example of working ahead. The next thing I have queued up is
> > > > a meta-rauc-rockchip example that works generically on all (most?) rockchip
> > > > boards. As part of the U-Boot script I need to make the A/B logic work, it
> > > > needs the "/boot" in there otherwise it doesn't work; therefore it's best to
> > > > set it up properly now.
> > > > 
> > > 
> > > Mmmm I'm interested to see why it fails without the /boot thing? Let's see
> > > when we get patches :)
> > 
> > I'm working on getting rauc working with meta-rockchip generically so it works
> > with all the MACHINES in meta-rockchip. The patch won't be part of
> > meta-rockchip, but rather be part of a meta-rauc-community/meta-rauc-rockchip
> > I hope to submit upstream at some point.
> > 
> > Basically rauc works with U-Boot via a boot script. To make that script more
> > flexible I'm borrowing a variable form meta-rockchip in the rauc U-Boot script
> > to actually do the booting of the kernel/fitImage/etc. So while U-Boot might
> > be smart enough to check a bunch of places looking for the thing to boot, the
> > rauc boot script isn't quite so smart. It's my script to write, and I could
> > add such logic, but that would just inflate the script for questionable gain.
> > 
> 
> This seems like you're not using extlinux.conf when using rauc but using one
> of the variables used to build the extlinux.conf to do some magic/logic in
> rauc?

I'm using sed to search and replace a tag in a U-Boot script template with
UBOOT_EXTLINUX_KERNEL_IMAGE which my U-Boot bbappend then turns into a U-Boot
script that handles the rauc A/B logic.

Specifically once it figures out whether to use A or B,
UBOOT_EXTLINUX_KERNEL_IMAGE is what is booted.

So keeping the initial "/boot/" part of UBOOT_EXTLINUX_KERNEL_IMAGE is useful
to me so the U-Boot script can find what it needs to boot in the filesystem
image. I could strip that prefix from the variable and include it as part of
the script template, but the current way provides the most flexibility. In
theory the fitImage could be located anywhere in the filesystem and the U-Boot
script would be able to find, load, and run it.

