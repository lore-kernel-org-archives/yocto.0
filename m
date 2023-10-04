Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8632FE7C4EE
	for <webhook@archiver.kernel.org>; Wed,  4 Oct 2023 19:21:29 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
 by mx.groups.io with SMTP id smtpd.web11.3825.1696447287355995272
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Oct 2023 12:21:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=b/yNv9KO;
 spf=pass (domain: gmail.com, ip: 209.85.219.43, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-65d04a45497so769566d6.0
        for <yocto@lists.yoctoproject.org>; Wed, 04 Oct 2023 12:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696447286; x=1697052086; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Kp3b783SEuJU3dfylMc3RUbqx8iIW6eU6sm5Hf15jso=;
        b=b/yNv9KO+QU0icx2Udyre24S5EgpzfTXHGyKiaH8ku25kTw3xo/UeS5imhqpZRWkDO
         CLkadybSg4EKv5/ST4RGxT5dPcccURE4IDQB9SxVU0a8MOET9jJxStpd471GaS0TrgnU
         6X+IH3798U3VzvaEsOtPBupOxu6nJkbZMI5SyS3hznjuH38QCnKtEIVkVUU4D2wnKCIu
         1shsqbGg62uzRHKNETATm5IwKmFKAKiCqKqpRP4Vn1MyeZ5++nwUwuaeywJdeqLkRD+t
         /K/mZv5RKv+YexKVeO7rwmasgYl1J/0uKxMLZpHIuZgPuVOGMN7viQQdbOZY1Zq4ug0W
         lt3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696447286; x=1697052086;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Kp3b783SEuJU3dfylMc3RUbqx8iIW6eU6sm5Hf15jso=;
        b=wzwRj45O6ZGI+k72xFfda19727iCH/qa6fmGF3JhxZNBW1SDBBeJzunXf3wHSWPqPO
         jkcxd/SqOyth+ag3X82/gYBMRT7TK8B1GcuqgkwTUM1X5InAvsptCIHZM0s5SIEluQfR
         NFZyDPnV+XOCGZ1mmuz0soPsUV67/5bwz41OfqYoXaIb/BzUwe8b3nbQ7COebCu7d4YC
         L9uhLSesmI4KbMRtYEGFKtwZ++zvhvHdIHDOXQ/c2B+UVCCZXh3xHC7KtUit4qZTR5Ro
         0ZOUJTBKHpaBSaAykCE0ygFDmh1OIPm0L9o5NHxAxcLv83+6J7uSlbVmA6LKPXWAcXMd
         yQkA==
X-Gm-Message-State: AOJu0Yy2F6aCYZJ3mTqVqp7H9R7k8Poz0d3B2WZOcRzq4Ht8f05Zmi4K
	Z5pBTc+UVG2gmLCibqwVhpI=
X-Google-Smtp-Source: AGHT+IGRnsTaGEz1vhXVBBj+M63TUpAOLu7+LaeolJd8KChtHikwehsalvFwQpzo/mWLe3HIPcHQww==
X-Received: by 2002:a05:6214:3d09:b0:65a:f74b:396e with SMTP id ol9-20020a0562143d0900b0065af74b396emr3542208qvb.20.1696447286194;
        Wed, 04 Oct 2023 12:21:26 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id g1-20020a0cdf01000000b006590d020260sm1524809qvl.98.2023.10.04.12.21.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 12:21:25 -0700 (PDT)
Date: Wed, 4 Oct 2023 15:21:22 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: quentin.schulz@theobroma-systems.com, yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH] KERNEL_DEVICETREE: 32-bit re-org
Message-ID: <20231004192122.GA34066@localhost>
References: <20231003041941.4760-1-twoerner@gmail.com>
 <0d15a99f-549f-af9d-5f6b-e7712bbf62ff@theobroma-systems.com>
 <20231003133805.GA2234@localhost>
 <0efbea1f-d05f-8ec6-9144-f04a0b3e17a2@theobroma-systems.com>
 <CADkTA4NtDgLQN3Meq3fpEYSdFf++bUJVHSRPYjA4VUSEG-9QUw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CADkTA4NtDgLQN3Meq3fpEYSdFf++bUJVHSRPYjA4VUSEG-9QUw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Oct 2023 19:21:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61241

On Wed 2023-10-04 @ 10:39:14 AM, Bruce Ashfield wrote:
> On Wed, Oct 4, 2023 at 9:59 AM Quentin Schulz via lists.yoctoproject.org
> <quentin.schulz=theobroma-systems.com@lists.yoctoproject.org> wrote:
> 
> > Hi Trevor,
> >
> > On 10/3/23 15:38, Trevor Woerner wrote:
> > > On Tue 2023-10-03 @ 12:32:08 PM, Quentin Schulz wrote:
> > >> Hi Trevor,
> > >>
> > >> On 10/3/23 06:19, Trevor Woerner via lists.yoctoproject.org wrote:
> > >>> The upstream kernel reorganized the 32-bit arch/arm device-tree
> > directory structure
> > >>> to separate out the device-trees by manufacturer (similar to the
> > organization
> > >>> of the arch/arm64 device-trees). Update the references to 32-bit arm
> > >>> device-trees to match.
> > >>>
> > >>
> > >> Does this work with linux-yocto and linux-yocto-dev from master or do we
> > >> need to add some logic to support both (do you want to?).
> > >
> > > This doesn't work at all. I figured this was an easy one, made the tweak,
> > > submitted it, then added it to my jenkins builder to verify overnight.
> > Woke up
> > > to find the do_image_wic() tasks failed. It's the same layout as the
> > 64-bit
> > > machines but I'll have to dig in to figure out why it didn't work.
> > >
> > > As for the linux-yocto vs linux-yocto-dev question I'll take a look. This
> > > happened with linux-yocto, so I would assume it is already the case with
> > > linux-yocto-dev. But if oe-core supports multiple versions of
> > linux-yocto,
> > > that might be the tricky bit and yes, I would look into supporting both
> > for
> > > the time-being until the transition period ends.
> > >
> >
> > This was done in v6.5-rc1 so anything before won't work sadly.
> >
> > master branch of poky supports 6.1 6.4 and 6.5 for linux-yocto
> > (linux-yocto-dev being typically newer than the latest linux-yocto and
> > the latest linux-yocto already having the change, I'll omit the change
> > for linux-yocto-dev).
> >
> > For reference, denix on IRC suggested you look at
> >
> > https://git.openembedded.org/openembedded-core/commit/?id=04ab57d20009d85eb566e83ae6fe1dcea4db7300
> > for what we're trying to do here. But I think this isn't applying to how
> > the DTB is found but rather where it's put and this is too late for us.
> >
> > I think we need to modify get_real_dtb_path_in_kernel in
> > meta/classes-recipe/kernel-devicetree.bbclass instead.
> >
> > We could handle it this way for example to allow a fallback:
> > """
> > get_real_dtb_path_in_kernel:arm () {
> >         dtb="$1"
> >         dtb_path="${B}/arch/${ARCH}/boot/dts/$dtb"
> >          # Handle pre-v6.5 layout for Aarch32/ARM DTB
> >         if [ ! -e "$dtb_path" ]; then
> >                 dtb_path="${B}/arch/${ARCH}/boot/dts/$(basename "$dtb")"
> >         fi
> >         if [ ! -e "$dtb_path" ]; then
> >                 dtb_path="${B}/arch/${ARCH}/boot/$dtb"
> >         fi
> >          # Handle pre-v6.5 layout for Aarch32/ARM DTB
> >         if [ ! -e "$dtb_path" ]; then
> >                 dtb_path="${B}/arch/${ARCH}/boot/$(basename "$dtb")"
> >         fi
> >
> >         echo "$dtb_path"
> > }
> > """
> > (to be determined if "arm" is a valid OVERRIDES, otherwise we need to
> > check against "ARCH" bb variable; also not sure about the second
> > basename if it's necessary at all).
> >
> > Then you would just have KERNEL_DEVICETREE done the same way as in this
> > patch:
> > KERNEL_DEVICETREE = "rockchip/rk3066a-marsboard.dtb"
> >
> > and we wouldn't have to handle it on the recipe level.
> >
> > Otherwise, we could do the following:
> > RK_KERNEL_DEVICETREE = "rockchip/rk3066a-marsboard.dtb"
> > KERNEL_DEVICETREE ?= "${RK_KERNEL_DEVICETREE}"
> >
> > then have a bbappend for all old-layout recipes:
> > linux-yocto-rt_6.1.bbappend
> > linux-yocto-tiny_6.1.bbappend
> > linux-yocto_6.1.bbappend
> > linux-yocto-rt_6.4.bbappend
> > linux-yocto-tiny_6.4.bbappend
> > linux-yocto_6.4.bbappend
> >
> > KERNEL_DEVICETREE:arm = "${@' '.join(os.path.basename(dtb) for dtb in
> > d.getVar('RK_KERNEL_DEVICETREE').split())}"
> >
> > or something like that. We probably want to have something a bit more
> > precise than just arm to avoid breaking other arm machine conf files
> > which do not define RK_KERNEL_DEVICETREE, maybe
> > KERNEL_DEVICETREE:rockchip:arm if that is even resolving properly.
> >
> > > Although... any BSP layer supporting 32-bit machines will have similar
> > issues,
> > > so perhaps there's a better way to solve this in oe-core?
> > >
> > Adding Bruce in Cc, I hope he doesn't mind being summoned like this.
> > Maybe you have an idea on how to handle both the new and old layout for
> > ARM/Aarch32 DTB in the kernel for the KERNEL_DEVICETREE variable?
> >
> 
> My last run in with this may have been before some of the most recent
> device tree handling patches, and/or I may have been doing it wrong.
> 
> But my solution was to simply override the variable in a kernel version
> specific bbappend, and not do it in the conf files.
> 
> But of course, if that variable is being interpreted by a different class in
> the global namespace, then the kernel bbappend approach isn't going
> to work anymore.
> 
> I've stayed away from utilities or searching, etc, rather just a way for the
> configuration to specify directly what to find, as anything that searches
> ends up being fragile.

The biggest tangle is that the master branch supports 6.1, 6.4, and 6.5.
Getting something to work with one version at at time isn't hard; getting it
to work simultaneously with all 3 (and others?) is the tricky part.

In a perfect world we could have linux-kernel-version-specific machine conf
sections/files... but that would be crazy!

I've been poking at this from different angles off-and-on for the last couple
days. The more I look at it, the more I like what meta-ti-bsp did. That's
probably what I'm going to do:

conf/machine/MACHINE.conf file has:
- KERNEL_DEVICETREE that just lists the bare dtb file (without directories)
- KERNEL_DEVICETREE_PREFIX that lists possible directory names

recipes-kernel/linux/linux-yocto% bbappends have logic to check combinations
of KERNEL_DEVICETREE_PREFIX+KERNEL_DEVICETREE to find the actual dtb.

Something probably also needs to be added to IMAGE_BOOT_FILES so wic works
too.

NOTE: given that this is meta-rockchip, the KERNEL_DEVICETREE_PREFIX could
simply be known to be "rockchip" a-priori; it doesn't necessarily need to be
that flexible.

And the real catch is that this is only a problem today because a specific OE
branch has both pre- and post- cleanup kernel versions. If the OE branches
didn't mix the two, this wouldn't be a problem. And someday once master has
moved away from having both pre- and post- cleanup kernel versions, we can
throw all this infrastructure out (on master) going forward.

Best regards,
	Trevor

