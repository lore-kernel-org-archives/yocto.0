Return-Path: <webhook@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,RDNS_NONE,SPF_HELO_NONE,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9B45C433F5
	for <webhook@archiver.kernel.org>; Thu, 23 Sep 2021 20:55:52 +0000 (UTC)
Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Sep 2021 20:55:52 -0000
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
 [209.85.160.181])
 by mx.groups.io with SMTP id smtpd.web10.1852.1632430551930535589
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 13:55:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=I5hA0ulm;
 spf=pass (domain: gmail.com, ip: 209.85.160.181,
 mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f181.google.com with SMTP id e16so7408454qte.13
        for <yocto@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 13:55:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=bcAzEGK9j3pXDAqdAvEuKCpc1jyXYqOiDMDqJBeG6iM=;
        b=I5hA0ulmG2TdC+TWTiMjSJwMNdg52ZHOJscSQyKCKFDZhVWHP3NVNxiJ8EPmi5pzi1
         YI5uMBmLGjYnf/TbHT/bRZhfpKv0d55xUuOihjyNRhY8ho3xJI7B4RzF+TGoGoXmRO9Z
         QbfJ6BjzN5sNbBQ25HkcEwRCLhLsFT1Kh4EZTdlJq9ojdX1WptQpkTPWRtZ+2AbmNhMp
         JWI1CldWWKIp64spyOPRVCW5ZUev1y4Gw1tmatj8GJ1Xe8IHBV6CNc813/5vAT6skqNd
         Zzcz2i4KIEbQ53Uz8aEw1JhG0k5xVktsNINm6AqJzyb+lt1Yet2qtwKMwBgB2iUdjGr4
         QmFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=bcAzEGK9j3pXDAqdAvEuKCpc1jyXYqOiDMDqJBeG6iM=;
        b=RpDQpnmHfn0Yr3NOCsWX+ua/bGe5za3sKC0QMF65J3gACv2/ug8usdhOvGCK2S/ghj
         8UBtX0pSLU6T10P/CoGfAuZPEpxh/PY6bwaJkX2z+y0Yzmtj7hu4jc4IqhOQ2dOip0YW
         uuTy4UPAxslhT4R0jAkZ9Rb88xGXWNf6VtKZHvcc/MZ3rZsOzqnfDWvI8Ob4SxpJ+I3J
         gtMGTyWdizk6GmBDUxa5ryBa6yiTqO/HrR5pVTwClOk7Y95BX4uXJ7Ng/I6PvAvKhl6K
         AR3iKtV9AOxajapDZJWNzlpF3E9Hn3Ernau1hl357Z8RguZnDrxSxZ35O1YROaIG+P5L
         XSoQ==
X-Gm-Message-State: AOAM533M+nhSIy1AV4UNGeeHTw6cJIBvJ/ieg8SyN5fd9qpMab0JYYzk
	/h3Z64EfSd5ZELbi0uw8EHMsIOu3JN0=
X-Google-Smtp-Source: 
 ABdhPJxvWgbVUsQ31Lao08HOjWWz4XwKFB/ymhY9TKxpVJoFu+hKerwim35Ttt2UHs+Z9k/OXOyOwQ==
X-Received: by 2002:ac8:138c:: with SMTP id h12mr705732qtj.357.1632430551011;
        Thu, 23 Sep 2021 13:55:51 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 az6sm4948434qkb.70.2021.09.23.13.55.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Sep 2021 13:55:50 -0700 (PDT)
Date: Thu, 23 Sep 2021 16:55:48 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Markus Volk <f_l_k@t-online.de>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH] use uuid instead of hard-coding
 root device
Message-ID: <20210923205548.GA5309@localhost>
References: <20210917220121.26663-1-twoerner@gmail.com>
 <a7d1f5cd-8bb6-ba56-c2b4-39dfb283a22c@t-online.de>
 <20210923115919.GA25233@localhost>
 <254c0237-f5c0-8f64-61a0-a5e8835d64f4@t-online.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <254c0237-f5c0-8f64-61a0-a5e8835d64f4@t-online.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54824

On Thu 2021-09-23 @ 09:45:06 PM, Markus Volk wrote:
> 
> Am 23.09.21 um 13:59 schrieb Trevor Woerner:
> > Curious. I boot tested my patch on multiple boards and I've built and booted
> > numerous images on my rock-pi-4b and rock64 boards in the last day or so since
> > I applied the patch. I'll try some "clean" builds and see if that makes a
> > difference. I don't doubt your report (especially since Khem confirmed it),
> > I'd just like to know for myself what's different.
> 
> That is really strange. As soon as there are those /dev/sda* entries in my fstab
> my rock-pi-4c doesn't boot up anymore. As soon as i comment them out or delete them,
> everything is working again.

Thanks for testing. It's also strange that my fstab also has those entries,
but they're apparently ignored in my setup since, commented in or commented
out, they don't seem to affect my board's ability to boot.

> > I wonder if just applying your 2nd patch would be enough (i.e. the one that
> > removes the /dev/sda* lines from /etc/fstab)? It's odd that the first 6
> > entries in the wic file would need UUIDs since it's the SoC's ROM firmware
> > that uses them, and I'm pretty sure the Rockchip firmware isn't using UUIDs
> > (my guess is it's just blindly grabbing whatever it finds at specific
> > offsets). The things stored in those partitions are u-boot related bits (atf,
> > spl, the u-boot binary itself) so by the time Linux starts, those things are
> > already "behind" us. I can't see how adding UUIDs to the partitions holding
> > u-boot would affect how the kernel finds the root partition (?).
> 
> Applying only the second patch should be enough to hide the problem, but as soon as
> one decides to disable WIC_CREATE_EXTRA_ARGS for example because he/she wants /boot to be
> mounted automatically, those non working /dev/sda* entries will be written into fstab again.
> With the first patch they are included like this and are mountable via fstab:
> 
> 
> UUID=0C48-9342	loader1	vfat	defaults	0	0
> UUID=C4D3-D17A	reserved1	vfat	defaults	0	0
> UUID=8FBE-2551	reserved2	vfat	defaults	0	0
> UUID=35FA-8BBB	loader2	vfat	defaults	0	0
> UUID=CFF3-5D80	atf	vfat	defaults	0	0
> UUID=832C-48C4	/boot	vfat	defaults	0	0

I'm surprised mount doesn't complain about those first 5 lines! Those are not
properly-formed fstab(5) entries.

I wouldn't call only applying your second patch a form of "hiding the
problem". Neither what we had before (a bunch of /dev/sda entries) and what
you're proposing (a bunch of malformed fstab(5) entries) should be considered
correct. If a user messes with BSP-level variables, then they should expect
what they get (?).

We can add the --use-uuid line to the /boot entry if you really think it
should be mounted on boot, but we shouldn't use it on the others and cause wic
to generate a bad fstab. There are examples of other boards that don't mount
/boot by default (raspi for sure, and I think bbb too).

I'll try to look deeper to figure out what's generating those /dev/sda
entries. Maybe there's a way to disable them without resorting to
WIC_CREATE_EXTRA_ARGS?

In the mean time I'd like to apply your patch 2/2, if you could please add
your SoB line?

> u-boot is able to find its partitons even if '--use-uuid' is set. As you mentioned u-boot doesn't
> know about uuid but it seems to be able to find its partitions nevertheless. But if '--use-uuid'
> is not set, wic writes /dev/sda* instead of the correct  UUID values to fstab. So its not u-boot that
> needs uuid to be set but fstab.
> Of course it would be nice, if wic didn't try to add the u-boot partitions to fstab at all.
> I guess nobody ever needs to have them mounted into userspace ( except possibly /boot).

Sorry, I wasn't clear. u-boot doesn't use those labels to find u-boot, my
guess is that the SoC's ROM firmware blindly looks at fixed offsets for the
"what to boot" (and therefore isn't using UUIDs either). Either the ROM loads
the atf, which then loads u-boot's spl, or the ROM loads the atf and then
loads u-boot's spl from fixed locations. Perhaps u-boot's spl uses labels to
find u-boot proper, but that's irrelevant.

> > Are you using poky or a distro other than "nodistro"? Perhaps other
> > layers/distros are affecting the build?
> 
> Thats not unlikely. I have a long layer-list in bblayers.conf to build my image:
> 
>   /home/flk/build/poky/meta \
>   /home/flk/build/poky/meta-poky \
>   /home/flk/build/poky/meta-yocto-bsp \
>   /home/flk/build/poky/meta-rockchip \
>   /home/flk/build/poky/meta-rockchip-extras \
>   /home/flk/build/poky/meta-wayland \
>   /home/flk/build/poky/meta-retro \
>   /home/flk/build/poky/meta-retro-wayland \
>   /home/flk/build/poky/meta-rauc \
>   /home/flk/build/poky/meta-openembedded/meta-oe \
>   /home/flk/build/poky/meta-openembedded/meta-multimedia \
>   /home/flk/build/poky/meta-openembedded/meta-networking \
>   /home/flk/build/poky/meta-openembedded/meta-xfce \
>   /home/flk/build/poky/meta-openembedded/meta-gnome \
>   /home/flk/build/poky/meta-openembedded/meta-python \
>   /home/flk/build/poky/meta-openembedded/meta-filesystems \
>   /home/flk/build/poky/meta-arm/meta-arm \
>   /home/flk/build/poky/meta-arm/meta-arm-toolchain \
>   /home/flk/build/poky/meta-kodi \
>   /home/flk/build/poky/meta-browser/meta-chromium \
>   /home/flk/build/poky/meta-browser/meta-firefox \
>   /home/flk/build/poky/meta-clang \

My guess is that Khem probably likes building with a long list of layers as
well ;-) I'll try using poky to see if that changes anything. Using oecore,
bitbake, meta-arm, and meta-rockchip I can't reproduce what you and Khem are
seeing. One of these days I'll have to check to make sure meta-rockchip is
behaving like it should when mixed with other layers.

