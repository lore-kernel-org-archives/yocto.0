Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.7596.1620828466303596142
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 May 2021 07:07:46 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=cyDXmM8N;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com [209.85.222.51])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 8114938C06F9
	for <yocto@yoctoproject.org>; Wed, 12 May 2021 14:07:40 +0000 (UTC)
Received: by mail-ua1-f51.google.com with SMTP id n61so7516280uan.2
        for <yocto@yoctoproject.org>; Wed, 12 May 2021 07:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=EvgCAVV5+OqDh7ioagx2i0Cd2LQswRH+1Nx2eL/GXP4=;
        b=cyDXmM8N6X0mi8GFL5nXLTzrf2qiOmsHE314M8uLSCcINlT1GM2TOBHA0g2pvIdx5B
         U8XGgVPaLxiTmSstw5Dz6nattwcat88in5EmHQW/zkWIM+UnPs/jH9m37aq7H8zV2SMC
         1QdOlW7szIBc9ar1IWo1mzil2kfrozcWrSyaKxsDTPAo9m7olHevrcwk2cLpeXu23P5J
         XfEgwItwNuqAK4XFSmCSOaXR7cdrWBGr9SPtoKOpe+3PjC78gPHAVKyRMtSuqksyd+//
         h3IMifDppqPour52xhzZNHbGi80tYfsxAIs21/i2Z2qLu0WVNJ/ZL7TzzEU4TPDWINYM
         ZW4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=EvgCAVV5+OqDh7ioagx2i0Cd2LQswRH+1Nx2eL/GXP4=;
        b=jJHbTRKbT2ACeAt0Nh1tcgeW291WgTlqLRqnbosCaTBsdNP9LIsWTkKGEr/7cQNIno
         SdYRJ9mE+99nvobdrxvWt3C9tSpBQkBhTkA/WQsBxdPnPSBNzpuz1ikc/syX4kUORpM1
         ltbxiyn0F0FnOQBabPzISjpPoubNfyoKMIA4fKm2Uz8H1lH+bAlkqk6FRpoV9SKNbAj5
         VC4l3CVu8QZCoIklx0dbECESGFCFI+kb/p9QGxvR2cPrYZiTwYwB84pSmYBuI1WqRm/l
         KcbLMlu7QAQfYR3VCGL6p7loBqMmolrEhMP/AtS2uTg/ABFIGHksUmaSZBFZ+10xhtmx
         0w/g==
X-Gm-Message-State: AOAM5323oTlYxBVslTWoBF2yhO29FVoxdkcMgd1ZVM9xgjgBo33SrHYa
	bOZ3sQrBYEASAIvazWBeQCABCS8BC/lpC8F4nIFZ6A==
X-Google-Smtp-Source: ABdhPJwuKTxRfHIFeM/jTGYRrjSrWmrWqOlwSr0zCKc/ml11Hxvm8QJ9xxSMy+9LaSGxDk0aQP6VX48jfALFYbvHUls=
X-Received: by 2002:ab0:596f:: with SMTP id o44mr32454019uad.8.1620828458436;
 Wed, 12 May 2021 07:07:38 -0700 (PDT)
MIME-Version: 1.0
References: <CA+4=imafR6ncjuC9UOgR3PBPS7MR7H5fo42vn0M9tk7=GSFUoA@mail.gmail.com>
 <CADkTA4Ob2nEOxf12YDzkoxZkKQjuKDnOC=OVimpsZY3HWOCLyQ@mail.gmail.com>
In-Reply-To: <CADkTA4Ob2nEOxf12YDzkoxZkKQjuKDnOC=OVimpsZY3HWOCLyQ@mail.gmail.com>
From: "Yann Dirson" <yann.dirson@blade-group.com>
Date: Wed, 12 May 2021 16:07:26 +0200
Message-ID: <CA+4=imZ61MKKSnGS6skanZCdDLHM6fD7FJdCxbKq9ghhb5tS1w@mail.gmail.com>
Subject: Re: Understanding kernel patching in linux-yocto
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for those clarifications!

Some additional questions below

Le mer. 12 mai 2021 =C3=A0 15:19, Bruce Ashfield <bruce.ashfield@gmail.com>=
 a =C3=A9crit :
>
> On Wed, May 12, 2021 at 7:14 AM Yann Dirson <yann.dirson@blade-group.com>=
 wrote:
> >
> > I am currently working on a kmeta BSP for the rockchip-based NanoPI M4
> > [1], and I'm wondering how I should be providing kernel patches, as
> > just add ing "patch" directives in the .scc does not get them applied
> > unless the particular .scc gets included in KERNEL_FEATURES (see [2]).
> >
> > From an old thread [3] I understand that the patches from the standard
> > kmeta snippets are already applied to the tree, and that to get the
> > patches from my BSP I'd need to reference it explicitly in SRC_URI
> > (along with using "nopatch" in the right places to avoid the
> > already-applied patches to get applied twice).
> >
> > I have the feeling that I'm lacking the rationale behind this, and
> > would need to understand this better to make things right in this BSP.
> > Especially:
> > - at first sight, having the patches both applied to linux-yocto and
> > referenced in yocto-kernel-cache just to be skipped on parsing looks
> > like both information duplication and parsing of unused lines
>
> At least some of this is mentioned in the advanced section of the
> kernel-dev manual, but I can summarize/reword things here, and
> I'm also doing a presentation related to this in the Yocto summit at
> the end of this month.
>
> The big thing to remember, is that the configuration and changes
> you see in that repository, are not only for yocto purposes. The
> concepts and structure pre-date when they were first brought in
> to generate reference kernels over 10 years ago (the implementation
> has changed, but the concepts are still the same). To this day,
> there still are cases that they are used with just a kernel tree and
> cross toolchain.
>
> With that in mind, the meta-data is used for many different things
>
>  - It organizes patches / features and their configuration into
>    reusable blocks. At the same time documenting the changes
>    that we have applied to a tree
>  - It makes those patches and configuration blocks available to
>    other kernel trees (for whatever reason).
>  - It configures the tree during the build process, reusing both
>    configuration only and patch + configuration blocks

>  - It is used to generate a history clean tree from scratch for
>    each new supported kernel. Which is what I do when creating
>    new linux-yocto-dev references, and the new <version>/standard/*
>    branches in linux-yocto.

I'd think (and I take your further remarks about workflow as confirming
this), that when upgrading the kernel the best tool would be git-rebase.
Then, regenerating the linux-yocto branches would only be a akin to a
check that the metadata is in sync with the new tree you rebased ?

If that conclusion is correct, wouldn't it be possible to avoid using the
linux-yocto branches directly, and let all the patches be applied at
do_patch time ?  That would be much more similar to the standard
package workflow (and thus lower the barrier for approaching the
kernel packages).


> So why not just drop all the patches in the SRC_URI ? Been there,
> done that. It fails spectacularly when you are managing queues of
> hundreds of potentially conflicting patches (rt, yaffs, aufs, ... etc, et=
c)
> and then attempting to constantly merge -stable and other kernel
> trees into the repository. git is the tool for managing that, not stacks
> of patches. You spend your entire life fixing patch errors and refreshing
> fuzz (again, been there, done that).
>
> So why not just keep a history and constantly merge new versions
> into it ? Been there, done that. You end up with an absolute garbage
> history of octopus merges and changes that are completely hidden,
> non-obvious and useless for collaborating with other kernel projects.
> Try merging a new kernel version into those same big features, it's
> nearly impossible and you have a franken-kernel that you end up trying
> to support and fix yourself. All the bugs are yours and yours alone.
>
> So that's why there's a repository that tracks the patches and the
> configuration and is used for multiple purposes. Keeping the patches
> and config blocks separate would just lead to even more errors as
> I update one and forget the other, etc, etc. There have been various
> incarnations of the tools that also did different things with the patches=
,
> and they weren't skipped, but detected as applied or not on-the-fly,
> so there are other historical reasons for the structure as well.
>
> > - kernel-yocto.bbclass does its own generic job of locating a proper
> > BSP using the KMACHINE/KTYPE/KARCH tags in BSP, it looks like
> > specifying a specific BSP file would just defeat of this: how should I
> > deal with this case where I'm providing both "standard" and "tiny"
> > KTYPE's ?
>
> I'm not quite following the question here, so I can try to answer badly
> and you can clarify based on my terrible answer.

The answer is indeed quite useful for a question that may not be that clear=
 :)

> The tools can locate your "bsp entry point" / "bsp definition" in
> your layer. Either provided by something on the SRC_URI or something
> in a kmeta repository (also specified on the SRC_URI).  Since
> both of those are added to the search paths they check. Those
> are just .scc files with a specified KMACHINE/KTYPE that match, and
> as you could guess from my first term I used, they are the entry
> point into building the configuration queue.
>
> That's where you start inheriting the base configuration(s) and including
> feature blocks, etc. Those definitions are exactly the same as the
> internal ones in the kernel-cache repository. By default, that located
> BSP definition is excluded from inheriting patches .. because as you
> noted, it would start trying to re-apply changes to the tree. It is there
> to get the configuration blocks, patches come in via other feature
> blocks or directly on the SRC_URI.
>
> So in your case, just provide the two .scc file with the proper
> defines so they can be located, and you'll get the proper branch
> located in the tree, and the base configurations picked up for those
> kernel types.  You'd supply your BSP specific config by making
> a common file and including it in both definitions, and patches by
> a KERNEL_FEATURE variable or by specifying them directly on
> the SRC_URI (via .patch or via a different .scc file).

That's what I was experimenting with at the same time, and something like
this does indeed produce the expected output:

KERNEL_FEATURES_append =3D " bsp/rockchip/nanopi-m4-${LINUX_KERNEL_TYPE}.sc=
c"

However, it seems confusing, as that .scc is precisely the one that's
already selected
and used for the .cfg: it really looks like we're overriding the
default "bsp entry point"
with a value that's already the default, but with a different result.

So my gut feeling ATM is that everything should be much more clear if
specifying the default entry point would have the same effect as leaving
the default be used, ie. having patches be applied in both cases.

>
> Bruce
>
> >
> > [1] https://lists.yoctoproject.org/g/yocto/message/53454
> > [2] https://lists.yoctoproject.org/g/yocto/message/53452
> > [3] https://lists.yoctoproject.org/g/yocto/topic/61340326
> >
> > Best regards,
> > --
> > Yann Dirson <yann@blade-group.com>
> > Blade / Shadow -- http://shadow.tech
>
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II



--=20
Yann Dirson <yann@blade-group.com>
Blade / Shadow -- http://shadow.tech
