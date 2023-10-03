Return-Path: <anthony.t.davies@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 723C5E8FDBF
	for <webhook@archiver.kernel.org>; Tue,  3 Oct 2023 22:56:13 +0000 (UTC)
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
 by mx.groups.io with SMTP id smtpd.web11.4864.1696373767384132949
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Oct 2023 15:56:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=H+iaIfcj;
 spf=pass (domain: gmail.com, ip: 209.85.219.173, mailfrom: anthony.t.davies@gmail.com)
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-d865854ef96so1560141276.2
        for <yocto@lists.yoctoproject.org>; Tue, 03 Oct 2023 15:56:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696373766; x=1696978566; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xWemtDHg88ROkKPRUGZlRb4aUvrwbvXyr33sJJRp6NY=;
        b=H+iaIfcjLJ8sPrDOmCsnFPa12uO7ykdMmrRamqUG3eUxbDAte0QlZLufnMJZm3/cwG
         4c3boKBFNX+afeFWmL9ILIA3wcg7Rgg6EkLJhEywYd1hQpaKfbzA4t/FmMwrnP5ESrAn
         8keTEv/A8wD0d9yX53umVzsiF1woPPENfEKqdC6Z/zFZqmUcgjgGm3b92qSzayQxBIIy
         8TiLsD8mF4ywBkEwaEjfc4qANZ983r3wj4bA5Z4oVy3/fCpRRGTlnhqlAur5CXpRsYl9
         sCelvb88A3QtydpN661Lh8zHwiWgHrG7G5K28h2OxbgaskoqWPIpBQCM4DWWOs6AvpKl
         bwRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696373766; x=1696978566;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xWemtDHg88ROkKPRUGZlRb4aUvrwbvXyr33sJJRp6NY=;
        b=ay86XUCCQpeMNijnyMpR5lFrLpIz842agwfJNLzwSf2BFiaJZOoV59alH2i/3xg8ty
         tz3usqIh2Pj7XtaZOv8vm3UaslrJ7C01FA+FiPJbpsWjWxx+HhdWDnmTO7RPbcwtWTHk
         ZnkeqEeaDuDnXHiaz4W0dOcJqd5ECFYPBmI40oaUkLCVxCdNLYeP8hHP7ayq5tM/LP08
         g6YSbUVSbLRns40fg2jwO2Crw+Rnw2m0H7iWr3SBgyxLN8+TRxg/ilBykK8x3qnONuoz
         RCYqw6gG2xy6BSbnH4QqBME0T1/2Vd+YDzdhZBjUbZSt0u0yfTSXts9c5hFHx29Qgl09
         cyJg==
X-Gm-Message-State: AOJu0YwGFMEEIQhHS5AMlvHifC0VYlpsCzyNV15RKacIHxUtnMAcDfEU
	PKL4yXU5A6N9p3/8klo4VKQRpJM7lma68rCOY/M=
X-Google-Smtp-Source: AGHT+IFUBMUfa5GX1I+XchKIJmAXyo2yhbMxK77mS8AJxLdQ6xewnd02IQrx0GF9wId/SntLR3wD6Kw7ly98O5FfXQ8=
X-Received: by 2002:a5b:143:0:b0:d81:87d9:6ad0 with SMTP id
 c3-20020a5b0143000000b00d8187d96ad0mr562303ybp.28.1696373766432; Tue, 03 Oct
 2023 15:56:06 -0700 (PDT)
MIME-Version: 1.0
References: <20231003012643.113550-1-anthony.t.davies@gmail.com>
 <04938d3c-77d3-feb6-8f84-ca3e5f311492@theobroma-systems.com> <20231003134244.GB2234@localhost>
In-Reply-To: <20231003134244.GB2234@localhost>
From: Anthony Davies <anthony.t.davies@gmail.com>
Date: Wed, 4 Oct 2023 09:55:55 +1100
Message-ID: <CAL5F+oJEMODuT1mFGN4dO23TKHpCMTtagE7SbKZP0Q+4OuU+Zw@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip] [PATCH] Stop u-boot sections partition table
To: Trevor Woerner <twoerner@gmail.com>
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Oct 2023 22:56:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61226

On Wed, 4 Oct 2023 at 00:42, Trevor Woerner <twoerner@gmail.com> wrote:
>
> On Tue 2023-10-03 @ 12:22:01 PM, Quentin Schulz wrote:
> > Hi Anthony,
> >
> > On 10/3/23 03:26, Anthony Davies via lists.yoctoproject.org wrote:
> > > From: Anthony Davies <anthony.t.davies@gmail.com>
> > >
> > > When checking the partition table of builds using this layer you get
> > > numerous extra partitions due to each bootloader entry creating a
> > > partition. --no-table on these entries should stop this from happening.
> > >
> > > Signed-off-by: Anthony Davies <anthony.t.davies@gmail.com>
> >
> > While this is annoying in some aspects, it's also very nice when you want to
> > flash a new U-Boot manually for example. You just need to flash the raw file
> > in the partition directly instead of having to figure out which offset to
> > use. FWIW, I actually do flash by offset instead of by partition and I have
> > to remember the offsets for different products (we don't use Rockchip's
> > defaults :) ) and I guess this would make things easier.
> >
> > So,
> > Reviewed-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> >
> > Up to Trevor to decide what to do with the patch :)
>
> The whole point of partitions is to keep things safely separated from each
> other, avoid overruns that clobber adjacent things, and make it easier to
> modify contents (flash a partition instead of magic offsets). I've worked with
> a device that had hidden/magic offsets and ended up redefining the partition
> table to call everything its own partition.
>
> I don't know what we'd be gaining be keeping these "partitions" hidden?
>
> >
> > Cheers,
> > Quentin
> >
> > > ---
> > >   wic/rockchip.wks | 10 +++++-----
> > >   1 file changed, 5 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/wic/rockchip.wks b/wic/rockchip.wks
> > > index 1cc30ae..eb50d8c 100644
> > > --- a/wic/rockchip.wks
> > > +++ b/wic/rockchip.wks
> > > @@ -15,11 +15,11 @@
> > >   #   boot        32768           229376
> > >   #   root        262144          -           (suggested)
> > > -part loader1    --offset 32     --fixed-size 4000K            --source rawcopy                                                 --sourceparams="file=${SPL_BINARY}"
> > > -part reserved1  --offset 4032   --fixed-size 64K
> > > -part reserved2  --offset 4096   --fixed-size 4096K
> > > -part loader2    --offset 8192   --fixed-size 4096K            --source rawcopy                                                 --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
> > > -part atf        --offset 12288  --fixed-size 4096K
> > > +part loader1    --offset 32     --fixed-size 4000K            --source rawcopy           --no-table                            --sourceparams="file=${SPL_BINARY}"
> > > +part reserved1  --offset 4032   --fixed-size 64K                                         --no-table
> > > +part reserved2  --offset 4096   --fixed-size 4096K                                       --no-table
> > > +part loader2    --offset 8192   --fixed-size 4096K            --source rawcopy           --no-table                            --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
> > > +part atf        --offset 12288  --fixed-size 4096K                                       --no-table
> > >   part /boot      --offset 16384  --size       114688K --active --source bootimg-partition --fstype=vfat --label boot --use-uuid --sourceparams="loader=u-boot"
> > >   part /                                                        --source rootfs            --fstype=ext4 --label root --use-uuid
> > >
> > >
> > >
> > > -=-=-=-=-=-=-=-=-=-=-=-
> > > Links: You receive all messages sent to this group.
> > > View/Reply Online (#61208): https://lists.yoctoproject.org/g/yocto/message/61208
> > > Mute This Topic: https://lists.yoctoproject.org/mt/101726546/6293953
> > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [quentin.schulz@theobroma-systems.com]
> > > -=-=-=-=-=-=-=-=-=-=-=-
> > >
Differences in style I guess. To me a partition is really something
you are supposed to be able to format and mount.

To be honest I would be more likely to format the wrong partition and
blow away the binary as I would over run or use an incorrect offset, I
tend to format more then replace a binary file manually.

Having partitions for u-boot binaries is not something I have come across before

I agree with Quentin, ultimately it's up to you as the maintainer.

