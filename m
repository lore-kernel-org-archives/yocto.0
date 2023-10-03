Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3BD8CE7AD4B
	for <webhook@archiver.kernel.org>; Tue,  3 Oct 2023 13:42:50 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
 by mx.groups.io with SMTP id smtpd.web11.108230.1696340568461177923
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Oct 2023 06:42:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=bAOwreRe;
 spf=pass (domain: gmail.com, ip: 209.85.222.180, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-7740cf93901so65127185a.2
        for <yocto@lists.yoctoproject.org>; Tue, 03 Oct 2023 06:42:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696340567; x=1696945367; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZbJqCwdlRhSYYsTiuH+98SSfBQxGaXHgzRstHt1+Do0=;
        b=bAOwreReMR3Fi4IAyvNmAM+rTqZR7R7qp/eP5+WZ3wAf6aGcSae7tmcTMtNzEu2SDC
         qSytyzHFiT7obfe9Ae/uPCdReZYbbqEGzP6DBDvsUJYWSH1wD63J/m++6cxZWn8vJ7cP
         G8We668sDsz0ZVnhx+223VSCXAma11ok0+qhPrCqRc9Xkbu/2MvPBoMTvxCnPfy555CG
         GzaZVlsdQ+SXiH/UbEf/rjhmhuG9jJF57mejdc4S0kwNAPQ5fBmHkddx7mm4Lln1R+E1
         GqdySXuLKMzw1a6tfVyjn6DMChJRrRPxV48u+SJuEkmvAxYRAlflAHX5eHwxFWnAJR0U
         9pOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696340567; x=1696945367;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZbJqCwdlRhSYYsTiuH+98SSfBQxGaXHgzRstHt1+Do0=;
        b=lf4KjJzY0XaOFPJy6bDB7GrRFgHdl3c9PENMGPY+yWYr5lO4+krjC99XuC5pzoGECb
         iA6S9JSNitQc3S3xEOA0HUUshh4TU8mPGQjFK33CpE5jXY4bmuN+EExJp8Ylgqo5VrJ/
         61ybzQDygcJxoICoWR3TyWSk8t5SIyQEFRsq+cidsFuOrzspl2SWCmmtk/s87+9odFsS
         V8kOqJ1KxG1WmL/Hj5dMdvIIWnzZBRy6zXjYs5pwySUNJg8J2Si+STG+oT/YkiCn8RXY
         EoUB5+hzkAkiRFslieyMa5qche5c390JTPK4Ghdxol3RZGGy10sbpYu0+jEkbWPOuw77
         tEjA==
X-Gm-Message-State: AOJu0YwpuDn/FmGl4JEZAG2zZ/9pPliLpss7my4IffC57mUtdGdxxZx+
	Kc11dwnSmNC2+qYofF3lcKo=
X-Google-Smtp-Source: AGHT+IEaUL8Ww4KPUK6YB5sLnmSE3esV+qKA+f49kqhT5P1Yzny3ZXMxO0QmhdnxKYpujEjWTTKQ6g==
X-Received: by 2002:a05:620a:2901:b0:775:c0b9:2a83 with SMTP id m1-20020a05620a290100b00775c0b92a83mr1838957qkp.8.1696340567460;
        Tue, 03 Oct 2023 06:42:47 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id g7-20020a05620a13c700b0076d6a08ac98sm465313qkl.76.2023.10.03.06.42.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Oct 2023 06:42:46 -0700 (PDT)
Date: Tue, 3 Oct 2023 09:42:44 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: anthony.t.davies@gmail.com, yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip] [PATCH] Stop u-boot sections partition
 table
Message-ID: <20231003134244.GB2234@localhost>
References: <20231003012643.113550-1-anthony.t.davies@gmail.com>
 <04938d3c-77d3-feb6-8f84-ca3e5f311492@theobroma-systems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <04938d3c-77d3-feb6-8f84-ca3e5f311492@theobroma-systems.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Oct 2023 13:42:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61218

On Tue 2023-10-03 @ 12:22:01 PM, Quentin Schulz wrote:
> Hi Anthony,
> 
> On 10/3/23 03:26, Anthony Davies via lists.yoctoproject.org wrote:
> > From: Anthony Davies <anthony.t.davies@gmail.com>
> > 
> > When checking the partition table of builds using this layer you get
> > numerous extra partitions due to each bootloader entry creating a
> > partition. --no-table on these entries should stop this from happening.
> > 
> > Signed-off-by: Anthony Davies <anthony.t.davies@gmail.com>
> 
> While this is annoying in some aspects, it's also very nice when you want to
> flash a new U-Boot manually for example. You just need to flash the raw file
> in the partition directly instead of having to figure out which offset to
> use. FWIW, I actually do flash by offset instead of by partition and I have
> to remember the offsets for different products (we don't use Rockchip's
> defaults :) ) and I guess this would make things easier.
> 
> So,
> Reviewed-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> 
> Up to Trevor to decide what to do with the patch :)

The whole point of partitions is to keep things safely separated from each
other, avoid overruns that clobber adjacent things, and make it easier to
modify contents (flash a partition instead of magic offsets). I've worked with
a device that had hidden/magic offsets and ended up redefining the partition
table to call everything its own partition.

I don't know what we'd be gaining be keeping these "partitions" hidden?

> 
> Cheers,
> Quentin
> 
> > ---
> >   wic/rockchip.wks | 10 +++++-----
> >   1 file changed, 5 insertions(+), 5 deletions(-)
> > 
> > diff --git a/wic/rockchip.wks b/wic/rockchip.wks
> > index 1cc30ae..eb50d8c 100644
> > --- a/wic/rockchip.wks
> > +++ b/wic/rockchip.wks
> > @@ -15,11 +15,11 @@
> >   #   boot        32768           229376
> >   #   root        262144          -           (suggested)
> > -part loader1    --offset 32     --fixed-size 4000K            --source rawcopy                                                 --sourceparams="file=${SPL_BINARY}"
> > -part reserved1  --offset 4032   --fixed-size 64K
> > -part reserved2  --offset 4096   --fixed-size 4096K
> > -part loader2    --offset 8192   --fixed-size 4096K            --source rawcopy                                                 --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
> > -part atf        --offset 12288  --fixed-size 4096K
> > +part loader1    --offset 32     --fixed-size 4000K            --source rawcopy           --no-table                            --sourceparams="file=${SPL_BINARY}"
> > +part reserved1  --offset 4032   --fixed-size 64K                                         --no-table
> > +part reserved2  --offset 4096   --fixed-size 4096K                                       --no-table
> > +part loader2    --offset 8192   --fixed-size 4096K            --source rawcopy           --no-table                            --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
> > +part atf        --offset 12288  --fixed-size 4096K                                       --no-table
> >   part /boot      --offset 16384  --size       114688K --active --source bootimg-partition --fstype=vfat --label boot --use-uuid --sourceparams="loader=u-boot"
> >   part /                                                        --source rootfs            --fstype=ext4 --label root --use-uuid
> > 
> > 
> > 
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#61208): https://lists.yoctoproject.org/g/yocto/message/61208
> > Mute This Topic: https://lists.yoctoproject.org/mt/101726546/6293953
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [quentin.schulz@theobroma-systems.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> > 

