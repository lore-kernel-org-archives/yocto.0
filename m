Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.7685.1620829540120149438
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 May 2021 07:25:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=KJBJOJLR;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: bruce.ashfield@gmail.com)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 0550C38C06F9
	for <yocto@yoctoproject.org>; Wed, 12 May 2021 14:25:39 +0000 (UTC)
Received: by mail-ej1-f52.google.com with SMTP id m12so35320805eja.2
        for <yocto@yoctoproject.org>; Wed, 12 May 2021 07:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=qKkbQ0MmBm9pOC30ozEEjczLeNd8RVXRtLaLz5HiPhA=;
        b=KJBJOJLRpjsFH4U7+AWuSLGH5Ow18vlLaonff7CJClqdyDkgevh+B4nhHb4ieuEHIf
         J0a7LxndIosQ1Vx2QAVLMCUrSIsJVcvTIYZPY21uxuQKDLQZrob4UXA4eO2b8WoauPmC
         BOb6NKCng9WZMrTkqdq152fyOn+0Xh8LjbNDNFDNhwGntSLvJYsjekhnP3xOOY6/VFNQ
         YYQp7wWWKmtEM9mM0s1mAabWVjpVLy2hQuGuuTZ//6IDZW6bvEM5tHJdjaz2WSQjmSf/
         XnPmJijQ9vFgnYN6ibGW4/rGjhnonYYgdzDR9NIF2k9h9d/Qb2uRyppdU7UcolD6jA9Y
         X4sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=qKkbQ0MmBm9pOC30ozEEjczLeNd8RVXRtLaLz5HiPhA=;
        b=WFREYX0SxJrqLZOLzaskj/se5V/ASqAQQ0utuiik4he5rnPyQVbEaoqbKQw+9Qe+Jp
         KiAEIlZlzrlsQn/scTXKi3wNef/hcNhTKCggAUmm1+CyDgZpn2mvKw71TbQc1WnnVZ8l
         To+ZUsxioZWnCIDsgB6xf1YyYKAEKyM55EMVt+x48GztViR8/Nl1d2EO+wqoBtrF4yl4
         3Gg8txmrUHy0kzEdvl3L1sAUkROeTp6ufQmN+iTD5cZMymP5W3tq1uuzN3SHRFdlvYe8
         LXDzVXu1CH8WUxjmcVNV+ijtbyBqP0N6zWE9uHVRzRYMxtltTm42xKfTdI2SuSye8dRq
         YnTQ==
X-Gm-Message-State: AOAM531+BX34nHSOtGm+MN6iNkZx2A7LDOEuuo+a3ovTUXVJrKklwZ5p
	VD6jZeKx2BXi+uKngS8kwX7KipQSJ+Aic+xXoRI=
X-Google-Smtp-Source: ABdhPJyANcddWgoFwa5+tzFuULv/TCjOcBtL2oGfF2aeXhcD378mlvGkzDKnXPBGVNfLFi5ojQromykfLIi6N5bIa/E=
X-Received: by 2002:a17:907:3d8f:: with SMTP id he15mr37497060ejc.22.1620829537297;
 Wed, 12 May 2021 07:25:37 -0700 (PDT)
MIME-Version: 1.0
References: <CA+4=imafR6ncjuC9UOgR3PBPS7MR7H5fo42vn0M9tk7=GSFUoA@mail.gmail.com>
 <CADkTA4Ob2nEOxf12YDzkoxZkKQjuKDnOC=OVimpsZY3HWOCLyQ@mail.gmail.com> <CA+4=imZ61MKKSnGS6skanZCdDLHM6fD7FJdCxbKq9ghhb5tS1w@mail.gmail.com>
In-Reply-To: <CA+4=imZ61MKKSnGS6skanZCdDLHM6fD7FJdCxbKq9ghhb5tS1w@mail.gmail.com>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Wed, 12 May 2021 10:25:26 -0400
Message-ID: <CADkTA4OHsJgTr+-0FNWr3OvAFpHZL=NWDZie5yjAm7rt0seTDQ@mail.gmail.com>
Subject: Re: Understanding kernel patching in linux-yocto
To: Yann Dirson <yann.dirson@blade-group.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 12, 2021 at 10:07 AM Yann Dirson
<yann.dirson@blade-group.com> wrote:
>
> Thanks for those clarifications!
>
> Some additional questions below
>
> Le mer. 12 mai 2021 =C3=A0 15:19, Bruce Ashfield <bruce.ashfield@gmail.co=
m> a =C3=A9crit :
> >
> > On Wed, May 12, 2021 at 7:14 AM Yann Dirson <yann.dirson@blade-group.co=
m> wrote:
> > >
> > > I am currently working on a kmeta BSP for the rockchip-based NanoPI M=
4
> > > [1], and I'm wondering how I should be providing kernel patches, as
> > > just add ing "patch" directives in the .scc does not get them applied
> > > unless the particular .scc gets included in KERNEL_FEATURES (see [2])=
.
> > >
> > > From an old thread [3] I understand that the patches from the standar=
d
> > > kmeta snippets are already applied to the tree, and that to get the
> > > patches from my BSP I'd need to reference it explicitly in SRC_URI
> > > (along with using "nopatch" in the right places to avoid the
> > > already-applied patches to get applied twice).
> > >
> > > I have the feeling that I'm lacking the rationale behind this, and
> > > would need to understand this better to make things right in this BSP=
.
> > > Especially:
> > > - at first sight, having the patches both applied to linux-yocto and
> > > referenced in yocto-kernel-cache just to be skipped on parsing looks
> > > like both information duplication and parsing of unused lines
> >
> > At least some of this is mentioned in the advanced section of the
> > kernel-dev manual, but I can summarize/reword things here, and
> > I'm also doing a presentation related to this in the Yocto summit at
> > the end of this month.
> >
> > The big thing to remember, is that the configuration and changes
> > you see in that repository, are not only for yocto purposes. The
> > concepts and structure pre-date when they were first brought in
> > to generate reference kernels over 10 years ago (the implementation
> > has changed, but the concepts are still the same). To this day,
> > there still are cases that they are used with just a kernel tree and
> > cross toolchain.
> >
> > With that in mind, the meta-data is used for many different things
> >
> >  - It organizes patches / features and their configuration into
> >    reusable blocks. At the same time documenting the changes
> >    that we have applied to a tree
> >  - It makes those patches and configuration blocks available to
> >    other kernel trees (for whatever reason).
> >  - It configures the tree during the build process, reusing both
> >    configuration only and patch + configuration blocks
>
> >  - It is used to generate a history clean tree from scratch for
> >    each new supported kernel. Which is what I do when creating
> >    new linux-yocto-dev references, and the new <version>/standard/*
> >    branches in linux-yocto.
>
> I'd think (and I take your further remarks about workflow as confirming
> this), that when upgrading the kernel the best tool would be git-rebase.
> Then, regenerating the linux-yocto branches would only be a akin to a
> check that the metadata is in sync with the new tree you rebased ?

The best of anything is a matter of opinion. I heavily use git-rebase and
sure, you could use it to do something similar here. But the result is
the same. There's still heavy use of quilt in kernel circles. Workflows
don't change easily, and as long as they work for the maintainer, they
tend to stay put. Asking someone to change their workflow, rarely goes
over well.

>
> If that conclusion is correct, wouldn't it be possible to avoid using the
> linux-yocto branches directly, and let all the patches be applied at
> do_patch time ?  That would be much more similar to the standard
> package workflow (and thus lower the barrier for approaching the
> kernel packages).

That's something we did in the past, and sure, you can do anything.
But patching hundreds of changes at build time means constant
failures .. again, I've been there and done that. We use similar patches
in many different contexts and optional stackings. You simply cannot
maintain them and stay sane by whacking patches onto the SRC_URI.
The last impression you want when someone builds your kernel is that
they can't even get past the patch phase.  So that's a hard no, to how
the reference kernels are maintained (and that hard no has been around
for 11 years now).

Also, we maintain contributed reference BSPs in that same tree, that
are yanking in SDKs from vendors, etc, they are in the thousands of
patches. So you need the tree and the BSP branches to support that.

>
>
> > So why not just drop all the patches in the SRC_URI ? Been there,
> > done that. It fails spectacularly when you are managing queues of
> > hundreds of potentially conflicting patches (rt, yaffs, aufs, ... etc, =
etc)
> > and then attempting to constantly merge -stable and other kernel
> > trees into the repository. git is the tool for managing that, not stack=
s
> > of patches. You spend your entire life fixing patch errors and refreshi=
ng
> > fuzz (again, been there, done that).
> >
> > So why not just keep a history and constantly merge new versions
> > into it ? Been there, done that. You end up with an absolute garbage
> > history of octopus merges and changes that are completely hidden,
> > non-obvious and useless for collaborating with other kernel projects.
> > Try merging a new kernel version into those same big features, it's
> > nearly impossible and you have a franken-kernel that you end up trying
> > to support and fix yourself. All the bugs are yours and yours alone.
> >
> > So that's why there's a repository that tracks the patches and the
> > configuration and is used for multiple purposes. Keeping the patches
> > and config blocks separate would just lead to even more errors as
> > I update one and forget the other, etc, etc. There have been various
> > incarnations of the tools that also did different things with the patch=
es,
> > and they weren't skipped, but detected as applied or not on-the-fly,
> > so there are other historical reasons for the structure as well.
> >
> > > - kernel-yocto.bbclass does its own generic job of locating a proper
> > > BSP using the KMACHINE/KTYPE/KARCH tags in BSP, it looks like
> > > specifying a specific BSP file would just defeat of this: how should =
I
> > > deal with this case where I'm providing both "standard" and "tiny"
> > > KTYPE's ?
> >
> > I'm not quite following the question here, so I can try to answer badly
> > and you can clarify based on my terrible answer.
>
> The answer is indeed quite useful for a question that may not be that cle=
ar :)
>
> > The tools can locate your "bsp entry point" / "bsp definition" in
> > your layer. Either provided by something on the SRC_URI or something
> > in a kmeta repository (also specified on the SRC_URI).  Since
> > both of those are added to the search paths they check. Those
> > are just .scc files with a specified KMACHINE/KTYPE that match, and
> > as you could guess from my first term I used, they are the entry
> > point into building the configuration queue.
> >
> > That's where you start inheriting the base configuration(s) and includi=
ng
> > feature blocks, etc. Those definitions are exactly the same as the
> > internal ones in the kernel-cache repository. By default, that located
> > BSP definition is excluded from inheriting patches .. because as you
> > noted, it would start trying to re-apply changes to the tree. It is the=
re
> > to get the configuration blocks, patches come in via other feature
> > blocks or directly on the SRC_URI.
> >
> > So in your case, just provide the two .scc file with the proper
> > defines so they can be located, and you'll get the proper branch
> > located in the tree, and the base configurations picked up for those
> > kernel types.  You'd supply your BSP specific config by making
> > a common file and including it in both definitions, and patches by
> > a KERNEL_FEATURE variable or by specifying them directly on
> > the SRC_URI (via .patch or via a different .scc file).
>
> That's what I was experimenting with at the same time, and something like
> this does indeed produce the expected output:
>
> KERNEL_FEATURES_append =3D " bsp/rockchip/nanopi-m4-${LINUX_KERNEL_TYPE}.=
scc"
>
> However, it seems confusing, as that .scc is precisely the one that's
> already selected
> and used for the .cfg: it really looks like we're overriding the
> default "bsp entry point"
> with a value that's already the default, but with a different result.

Yes, that's one way that we've structured things as the tools evolved
to balance external BSP definitions being able to pull in the base
configuration but not patches. There are two runs of the tools, one looks
for patches (and excludes that bsp entry point) and one that builds the
config.queue (and uses the entry point). That's the balance of the multi
use nature of the configuration blocks. I could bury something deeper
in the tools to hide a bit of that, but it will break uses cases and time
has shown that it is brittle.

>
> So my gut feeling ATM is that everything should be much more clear if
> specifying the default entry point would have the same effect as leaving
> the default be used, ie. having patches be applied in both cases.
>

The variable KMETA_EXTERNAL_BSPS was created as a knob to
allow an external definition to both be used for patches AND configuration.
But that is for fully exernal BSPs that do not include the base kernel
meta-data, since once you turn that on, you are getting all the patches
and all the configuration .. and will have the patches applied twice.

Bruce

> >
> > Bruce
> >
> > >
> > > [1] https://lists.yoctoproject.org/g/yocto/message/53454
> > > [2] https://lists.yoctoproject.org/g/yocto/message/53452
> > > [3] https://lists.yoctoproject.org/g/yocto/topic/61340326
> > >
> > > Best regards,
> > > --
> > > Yann Dirson <yann@blade-group.com>
> > > Blade / Shadow -- http://shadow.tech
> >
> >
> >
> > --
> > - Thou shalt not follow the NULL pointer, for chaos and madness await
> > thee at its end
> > - "Use the force Harry" - Gandalf, Star Trek II
>
>
>
> --
> Yann Dirson <yann@blade-group.com>
> Blade / Shadow -- http://shadow.tech



--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
