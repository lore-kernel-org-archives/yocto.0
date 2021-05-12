Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.7937.1620830150511016708
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 May 2021 07:35:51 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=nFe/fPny;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 08D1138C06F9
	for <yocto@yoctoproject.org>; Wed, 12 May 2021 14:35:50 +0000 (UTC)
Received: by mail-vk1-f179.google.com with SMTP id b21so4809620vkb.4
        for <yocto@yoctoproject.org>; Wed, 12 May 2021 07:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=UgRh15ML7BBBSGcIKDJQTAi6lXGROZz7n85B3FW1mQU=;
        b=nFe/fPnyi2X/vgHecvaE2mCr6hYm+6l6U74TgO3qqcY0ABhTUtArpMwG0L84SvhCp3
         7iNOrOtkPdGFt3L67wBNLEdIoELyMR1Xr/VlCGsk6kpwGUdaP0fFDdmHmOO1xFUVuc6Y
         7PQSO8ZR29JPAvohr49QUWc3Xb2lsF4yw4uyB4UNV5DAHTAP2j0xdRkm0jbetinVgfVq
         epaOJ+6wfwvs5cBFT7RXW/JsKZMiftb5SqQWUO/uIKwuMD210eWi5NtyrhCZUNygs9KH
         n479DiHv3xVtW/QftlSXaVkzV0GpKeo4LVQJM4SLdwF/Zx7abwTif8Xrj45mHVUrAv3v
         kpaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=UgRh15ML7BBBSGcIKDJQTAi6lXGROZz7n85B3FW1mQU=;
        b=KWnnBnqmIr2ujZ/gQgu+3eYwlZ+Sc/2fQfeNFnxwRcnkL6gl8shvENVwP2+wHNg9OF
         Bobyl21MxyJchFtsb0opsBougrH3/rr41TvNmcXGv/gXrJLHZ9xYv1VEHz1XgG3ZaQS6
         qHTwfYtCB1HBt83tWpwEgTOXq6c9R5TpCuKc4imUrmytOuKr5mK37VYDGr7H+OlPmYe+
         mFOHFHuXqTnldWgLmu451EXa5m5iQBAyyJfGT+g76UoAnlbkT20DrLczc140J3ULiZRh
         AncIyo4omArqBw4fc+FJbibyDToan1B5f3ElcvMUKFjcu3cx2jYIe9CC8B1vCd9QPBHT
         Vj3A==
X-Gm-Message-State: AOAM531NWZxKQxiIkwmiKSun4Fdg0jgujoILujFawNqY9pyaYqozKXJq
	eReP3LG3muyAJijLzRtpa4ilWGQLRA6kN3BrCbftmQ==
X-Google-Smtp-Source: ABdhPJw/OnMjQ6RobLEiCKFTj1But8Dw3QHL/K5f0IdMZhwAhHlD8sZD/B1O4u4NzJ6DI8+5eaxSuk3rzk79qso/sZE=
X-Received: by 2002:a1f:6dc6:: with SMTP id i189mr1801359vkc.19.1620830148994;
 Wed, 12 May 2021 07:35:48 -0700 (PDT)
MIME-Version: 1.0
References: <CA+4=imafR6ncjuC9UOgR3PBPS7MR7H5fo42vn0M9tk7=GSFUoA@mail.gmail.com>
 <CADkTA4Ob2nEOxf12YDzkoxZkKQjuKDnOC=OVimpsZY3HWOCLyQ@mail.gmail.com>
 <CA+4=imZ61MKKSnGS6skanZCdDLHM6fD7FJdCxbKq9ghhb5tS1w@mail.gmail.com> <CADkTA4OHsJgTr+-0FNWr3OvAFpHZL=NWDZie5yjAm7rt0seTDQ@mail.gmail.com>
In-Reply-To: <CADkTA4OHsJgTr+-0FNWr3OvAFpHZL=NWDZie5yjAm7rt0seTDQ@mail.gmail.com>
From: "Yann Dirson" <yann.dirson@blade-group.com>
Date: Wed, 12 May 2021 16:35:37 +0200
Message-ID: <CA+4=imaC7FmyDP0RB_JdBbK12AKTR8-Uuw1XbFyHyo_oqi6WrA@mail.gmail.com>
Subject: Re: Understanding kernel patching in linux-yocto
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mer. 12 mai 2021 =C3=A0 16:25, Bruce Ashfield <bruce.ashfield@gmail.com>=
 a =C3=A9crit :
>
> On Wed, May 12, 2021 at 10:07 AM Yann Dirson
> <yann.dirson@blade-group.com> wrote:
> >
> > Thanks for those clarifications!
> >
> > Some additional questions below
> >
> > Le mer. 12 mai 2021 =C3=A0 15:19, Bruce Ashfield <bruce.ashfield@gmail.=
com> a =C3=A9crit :
> > >
> > > On Wed, May 12, 2021 at 7:14 AM Yann Dirson <yann.dirson@blade-group.=
com> wrote:
> > > >
> > > > I am currently working on a kmeta BSP for the rockchip-based NanoPI=
 M4
> > > > [1], and I'm wondering how I should be providing kernel patches, as
> > > > just add ing "patch" directives in the .scc does not get them appli=
ed
> > > > unless the particular .scc gets included in KERNEL_FEATURES (see [2=
]).
> > > >
> > > > From an old thread [3] I understand that the patches from the stand=
ard
> > > > kmeta snippets are already applied to the tree, and that to get the
> > > > patches from my BSP I'd need to reference it explicitly in SRC_URI
> > > > (along with using "nopatch" in the right places to avoid the
> > > > already-applied patches to get applied twice).
> > > >
> > > > I have the feeling that I'm lacking the rationale behind this, and
> > > > would need to understand this better to make things right in this B=
SP.
> > > > Especially:
> > > > - at first sight, having the patches both applied to linux-yocto an=
d
> > > > referenced in yocto-kernel-cache just to be skipped on parsing look=
s
> > > > like both information duplication and parsing of unused lines
> > >
> > > At least some of this is mentioned in the advanced section of the
> > > kernel-dev manual, but I can summarize/reword things here, and
> > > I'm also doing a presentation related to this in the Yocto summit at
> > > the end of this month.
> > >
> > > The big thing to remember, is that the configuration and changes
> > > you see in that repository, are not only for yocto purposes. The
> > > concepts and structure pre-date when they were first brought in
> > > to generate reference kernels over 10 years ago (the implementation
> > > has changed, but the concepts are still the same). To this day,
> > > there still are cases that they are used with just a kernel tree and
> > > cross toolchain.
> > >
> > > With that in mind, the meta-data is used for many different things
> > >
> > >  - It organizes patches / features and their configuration into
> > >    reusable blocks. At the same time documenting the changes
> > >    that we have applied to a tree
> > >  - It makes those patches and configuration blocks available to
> > >    other kernel trees (for whatever reason).
> > >  - It configures the tree during the build process, reusing both
> > >    configuration only and patch + configuration blocks
> >
> > >  - It is used to generate a history clean tree from scratch for
> > >    each new supported kernel. Which is what I do when creating
> > >    new linux-yocto-dev references, and the new <version>/standard/*
> > >    branches in linux-yocto.
> >
> > I'd think (and I take your further remarks about workflow as confirming
> > this), that when upgrading the kernel the best tool would be git-rebase=
.
> > Then, regenerating the linux-yocto branches would only be a akin to a
> > check that the metadata is in sync with the new tree you rebased ?
>
> The best of anything is a matter of opinion. I heavily use git-rebase and
> sure, you could use it to do something similar here. But the result is
> the same. There's still heavy use of quilt in kernel circles. Workflows
> don't change easily, and as long as they work for the maintainer, they
> tend to stay put. Asking someone to change their workflow, rarely goes
> over well.
>
> >
> > If that conclusion is correct, wouldn't it be possible to avoid using t=
he
> > linux-yocto branches directly, and let all the patches be applied at
> > do_patch time ?  That would be much more similar to the standard
> > package workflow (and thus lower the barrier for approaching the
> > kernel packages).
>
> That's something we did in the past, and sure, you can do anything.
> But patching hundreds of changes at build time means constant
> failures .. again, I've been there and done that. We use similar patches
> in many different contexts and optional stackings. You simply cannot
> maintain them and stay sane by whacking patches onto the SRC_URI.
> The last impression you want when someone builds your kernel is that
> they can't even get past the patch phase.  So that's a hard no, to how
> the reference kernels are maintained (and that hard no has been around
> for 11 years now).
>
> Also, we maintain contributed reference BSPs in that same tree, that
> are yanking in SDKs from vendors, etc, they are in the thousands of
> patches. So you need the tree and the BSP branches to support that.

That pretty much clarifies the whole thing, thanks for taking the time for =
this!

>
> >
> >
> > > So why not just drop all the patches in the SRC_URI ? Been there,
> > > done that. It fails spectacularly when you are managing queues of
> > > hundreds of potentially conflicting patches (rt, yaffs, aufs, ... etc=
, etc)
> > > and then attempting to constantly merge -stable and other kernel
> > > trees into the repository. git is the tool for managing that, not sta=
cks
> > > of patches. You spend your entire life fixing patch errors and refres=
hing
> > > fuzz (again, been there, done that).
> > >
> > > So why not just keep a history and constantly merge new versions
> > > into it ? Been there, done that. You end up with an absolute garbage
> > > history of octopus merges and changes that are completely hidden,
> > > non-obvious and useless for collaborating with other kernel projects.
> > > Try merging a new kernel version into those same big features, it's
> > > nearly impossible and you have a franken-kernel that you end up tryin=
g
> > > to support and fix yourself. All the bugs are yours and yours alone.
> > >
> > > So that's why there's a repository that tracks the patches and the
> > > configuration and is used for multiple purposes. Keeping the patches
> > > and config blocks separate would just lead to even more errors as
> > > I update one and forget the other, etc, etc. There have been various
> > > incarnations of the tools that also did different things with the pat=
ches,
> > > and they weren't skipped, but detected as applied or not on-the-fly,
> > > so there are other historical reasons for the structure as well.
> > >
> > > > - kernel-yocto.bbclass does its own generic job of locating a prope=
r
> > > > BSP using the KMACHINE/KTYPE/KARCH tags in BSP, it looks like
> > > > specifying a specific BSP file would just defeat of this: how shoul=
d I
> > > > deal with this case where I'm providing both "standard" and "tiny"
> > > > KTYPE's ?
> > >
> > > I'm not quite following the question here, so I can try to answer bad=
ly
> > > and you can clarify based on my terrible answer.
> >
> > The answer is indeed quite useful for a question that may not be that c=
lear :)
> >
> > > The tools can locate your "bsp entry point" / "bsp definition" in
> > > your layer. Either provided by something on the SRC_URI or something
> > > in a kmeta repository (also specified on the SRC_URI).  Since
> > > both of those are added to the search paths they check. Those
> > > are just .scc files with a specified KMACHINE/KTYPE that match, and
> > > as you could guess from my first term I used, they are the entry
> > > point into building the configuration queue.
> > >
> > > That's where you start inheriting the base configuration(s) and inclu=
ding
> > > feature blocks, etc. Those definitions are exactly the same as the
> > > internal ones in the kernel-cache repository. By default, that locate=
d
> > > BSP definition is excluded from inheriting patches .. because as you
> > > noted, it would start trying to re-apply changes to the tree. It is t=
here
> > > to get the configuration blocks, patches come in via other feature
> > > blocks or directly on the SRC_URI.
> > >
> > > So in your case, just provide the two .scc file with the proper
> > > defines so they can be located, and you'll get the proper branch
> > > located in the tree, and the base configurations picked up for those
> > > kernel types.  You'd supply your BSP specific config by making
> > > a common file and including it in both definitions, and patches by
> > > a KERNEL_FEATURE variable or by specifying them directly on
> > > the SRC_URI (via .patch or via a different .scc file).
> >
> > That's what I was experimenting with at the same time, and something li=
ke
> > this does indeed produce the expected output:
> >
> > KERNEL_FEATURES_append =3D " bsp/rockchip/nanopi-m4-${LINUX_KERNEL_TYPE=
}.scc"
> >
> > However, it seems confusing, as that .scc is precisely the one that's
> > already selected
> > and used for the .cfg: it really looks like we're overriding the
> > default "bsp entry point"
> > with a value that's already the default, but with a different result.
>
> Yes, that's one way that we've structured things as the tools evolved
> to balance external BSP definitions being able to pull in the base
> configuration but not patches. There are two runs of the tools, one looks
> for patches (and excludes that bsp entry point) and one that builds the
> config.queue (and uses the entry point). That's the balance of the multi
> use nature of the configuration blocks. I could bury something deeper
> in the tools to hide a bit of that, but it will break uses cases and time
> has shown that it is brittle.
>
> >
> > So my gut feeling ATM is that everything should be much more clear if
> > specifying the default entry point would have the same effect as leavin=
g
> > the default be used, ie. having patches be applied in both cases.
> >
>
> The variable KMETA_EXTERNAL_BSPS was created as a knob to
> allow an external definition to both be used for patches AND configuratio=
n.
> But that is for fully exernal BSPs that do not include the base kernel
> meta-data, since once you turn that on, you are getting all the patches
> and all the configuration .. and will have the patches applied twice.
>
> Bruce
>
> > >
> > > Bruce
> > >
> > > >
> > > > [1] https://lists.yoctoproject.org/g/yocto/message/53454
> > > > [2] https://lists.yoctoproject.org/g/yocto/message/53452
> > > > [3] https://lists.yoctoproject.org/g/yocto/topic/61340326
> > > >
> > > > Best regards,
> > > > --
> > > > Yann Dirson <yann@blade-group.com>
> > > > Blade / Shadow -- http://shadow.tech
> > >
> > >
> > >
> > > --
> > > - Thou shalt not follow the NULL pointer, for chaos and madness await
> > > thee at its end
> > > - "Use the force Harry" - Gandalf, Star Trek II
> >
> >
> >
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
