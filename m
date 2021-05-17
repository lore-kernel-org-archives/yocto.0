Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.16491.1621241173071076402
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 May 2021 01:46:13 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=DSY7KRtj;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 0D72638C0701
	for <yocto@yoctoproject.org>; Mon, 17 May 2021 08:46:11 +0000 (UTC)
Received: by mail-vs1-f49.google.com with SMTP id n1so1256635vsr.10
        for <yocto@yoctoproject.org>; Mon, 17 May 2021 01:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=w2eZQIcrhZbCe9fG94Nb2LZ0VlA2hFakZrgjyjM2qVg=;
        b=DSY7KRtjiSeOPEY/gk4xmmaryYv72rh02uN3XpwECtJ7R7vx1tD2Uyd+lG9AZv1mmt
         ZhQRPXrXgbsWIzVipE8NW+I5ar+b2uSE93RsTGmNx1S56ZsCeM0Ds7Bzd7U3RUW4WzFy
         Q58bV2GQ3lE5cTPgrwLDMysDjRtklDFC/1P0zxnk1L7nIFas2bBSiGgQIX4npOSk1uAx
         mOlkTFKhOJ9V6HzTvOhOgdPpq3ZvRY7UoAVtyNiULjalKrbFt2DFbaE1U9sTzhTTsqmT
         lHd3vs5mC0A0TjR+kEGA1GljRQXN+FO0NXSOatsHAx+ROWu12RwjSS/0QKVcMjbcAqm8
         ddOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=w2eZQIcrhZbCe9fG94Nb2LZ0VlA2hFakZrgjyjM2qVg=;
        b=AEQo5d1ws96IHcobXybs8i4P55iixLCMRWdZi3GvTInz1SlZzetja1UY+id9QPLTaJ
         3ClD3WD18RZgjvla6N9Q3byC6vWfioC4s6XwX4EjHYJud7XiCWM/NUZ0NxHOs5+0t5G3
         4d7zTd7jQ8pkR+WwVaI+cbqaFpVkFDsacNw3nGC6CPNY72lS0bnQtwP3sj8caaBQd3eL
         tQdssgPNZhQzY2u/2NuyxgDrqWWZRGeZIPZjWFgkuVU18Y/fQtZQQ3dD6dgL/C3W8+hx
         bF5OKRDEGwxzw5jWBtmuD7FVGynAtgZ9gFV65kiqb9jXOqGsKS4FoqXZyjT96MttFrgd
         B4dw==
X-Gm-Message-State: AOAM530cCpKILmNPLcZrLYBXxJCimT3fc7tEYCO9LApUvNGdvHHohjvs
	yiRuqWw8Rb5Yuf0EzqnzHneDgdJMwuMdYRjBJQEqcw==
X-Google-Smtp-Source: ABdhPJzfRljd4bgt3uNHe4sRkSGWgTX0aQnmVTrkXqCweemVoQ8ricdjUPNh2WlFSQ01cXSyq3+JkqcSZVkthIEhxpo=
X-Received: by 2002:a67:ff0e:: with SMTP id v14mr1519846vsp.23.1621241165925;
 Mon, 17 May 2021 01:46:05 -0700 (PDT)
MIME-Version: 1.0
References: <CA+4=imafR6ncjuC9UOgR3PBPS7MR7H5fo42vn0M9tk7=GSFUoA@mail.gmail.com>
 <CADkTA4Ob2nEOxf12YDzkoxZkKQjuKDnOC=OVimpsZY3HWOCLyQ@mail.gmail.com>
 <CA+4=imZ61MKKSnGS6skanZCdDLHM6fD7FJdCxbKq9ghhb5tS1w@mail.gmail.com>
 <CADkTA4OHsJgTr+-0FNWr3OvAFpHZL=NWDZie5yjAm7rt0seTDQ@mail.gmail.com> <DB6PR0102MB26307B2F14821701E2C5160988529@DB6PR0102MB2630.eurprd01.prod.exchangelabs.com>
In-Reply-To: <DB6PR0102MB26307B2F14821701E2C5160988529@DB6PR0102MB2630.eurprd01.prod.exchangelabs.com>
From: "Yann Dirson" <yann.dirson@blade-group.com>
Date: Mon, 17 May 2021 10:45:54 +0200
Message-ID: <CA+4=imZUVJ+sMshZCL39pMb4NpHvOAcxohN3S3d3sCzy16fRxA@mail.gmail.com>
Subject: Re: [yocto] Understanding kernel patching in linux-yocto
To: Diego Santa Cruz <Diego.SantaCruz@spinetix.com>
Cc: "bruce.ashfield@gmail.com" <bruce.ashfield@gmail.com>, 
	Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mer. 12 mai 2021 =C3=A0 20:33, Diego Santa Cruz
<Diego.SantaCruz@spinetix.com> a =C3=A9crit :
>
> > -----Original Message-----
> > From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> > Behalf Of Bruce Ashfield via lists.yoctoproject.org
> > Sent: 12 May 2021 16:25
> > To: Yann Dirson <yann.dirson@blade-group.com>
> > Cc: Yocto discussion list <yocto@yoctoproject.org>
> > Subject: Re: [yocto] Understanding kernel patching in linux-yocto
> >
> > On Wed, May 12, 2021 at 10:07 AM Yann Dirson
> > <yann.dirson@blade-group.com> wrote:
> > >
> > > Thanks for those clarifications!
> > >
> > > Some additional questions below
> > >
> > > Le mer. 12 mai 2021 =C3=A0 15:19, Bruce Ashfield <bruce.ashfield@gmai=
l.com> a
> > =C3=A9crit :
> > > >
> > > > On Wed, May 12, 2021 at 7:14 AM Yann Dirson <yann.dirson@blade-
> > group.com> wrote:
> > > > >
> > > > > I am currently working on a kmeta BSP for the rockchip-based Nano=
PI
> > M4
> > > > > [1], and I'm wondering how I should be providing kernel patches, =
as
> > > > > just add ing "patch" directives in the .scc does not get them app=
lied
> > > > > unless the particular .scc gets included in KERNEL_FEATURES (see =
[2]).
> > > > >
> > > > > From an old thread [3] I understand that the patches from the sta=
ndard
> > > > > kmeta snippets are already applied to the tree, and that to get t=
he
> > > > > patches from my BSP I'd need to reference it explicitly in SRC_UR=
I
> > > > > (along with using "nopatch" in the right places to avoid the
> > > > > already-applied patches to get applied twice).
> > > > >
> > > > > I have the feeling that I'm lacking the rationale behind this, an=
d
> > > > > would need to understand this better to make things right in this=
 BSP.
> > > > > Especially:
> > > > > - at first sight, having the patches both applied to linux-yocto =
and
> > > > > referenced in yocto-kernel-cache just to be skipped on parsing lo=
oks
> > > > > like both information duplication and parsing of unused lines
> > > >
> > > > At least some of this is mentioned in the advanced section of the
> > > > kernel-dev manual, but I can summarize/reword things here, and
> > > > I'm also doing a presentation related to this in the Yocto summit a=
t
> > > > the end of this month.
> > > >
> > > > The big thing to remember, is that the configuration and changes
> > > > you see in that repository, are not only for yocto purposes. The
> > > > concepts and structure pre-date when they were first brought in
> > > > to generate reference kernels over 10 years ago (the implementation
> > > > has changed, but the concepts are still the same). To this day,
> > > > there still are cases that they are used with just a kernel tree an=
d
> > > > cross toolchain.
> > > >
> > > > With that in mind, the meta-data is used for many different things
> > > >
> > > >  - It organizes patches / features and their configuration into
> > > >    reusable blocks. At the same time documenting the changes
> > > >    that we have applied to a tree
> > > >  - It makes those patches and configuration blocks available to
> > > >    other kernel trees (for whatever reason).
> > > >  - It configures the tree during the build process, reusing both
> > > >    configuration only and patch + configuration blocks
> > >
> > > >  - It is used to generate a history clean tree from scratch for
> > > >    each new supported kernel. Which is what I do when creating
> > > >    new linux-yocto-dev references, and the new <version>/standard/*
> > > >    branches in linux-yocto.
> > >
> > > I'd think (and I take your further remarks about workflow as confirmi=
ng
> > > this), that when upgrading the kernel the best tool would be git-reba=
se.
> > > Then, regenerating the linux-yocto branches would only be a akin to a
> > > check that the metadata is in sync with the new tree you rebased ?
> >
> > The best of anything is a matter of opinion. I heavily use git-rebase a=
nd
> > sure, you could use it to do something similar here. But the result is
> > the same. There's still heavy use of quilt in kernel circles. Workflows
> > don't change easily, and as long as they work for the maintainer, they
> > tend to stay put. Asking someone to change their workflow, rarely goes
> > over well.
> >
> > >
> > > If that conclusion is correct, wouldn't it be possible to avoid using=
 the
> > > linux-yocto branches directly, and let all the patches be applied at
> > > do_patch time ?  That would be much more similar to the standard
> > > package workflow (and thus lower the barrier for approaching the
> > > kernel packages).
> >
> > That's something we did in the past, and sure, you can do anything.
> > But patching hundreds of changes at build time means constant
> > failures .. again, I've been there and done that. We use similar patche=
s
> > in many different contexts and optional stackings. You simply cannot
> > maintain them and stay sane by whacking patches onto the SRC_URI.
> > The last impression you want when someone builds your kernel is that
> > they can't even get past the patch phase.  So that's a hard no, to how
> > the reference kernels are maintained (and that hard no has been around
> > for 11 years now).
> >
> > Also, we maintain contributed reference BSPs in that same tree, that
> > are yanking in SDKs from vendors, etc, they are in the thousands of
> > patches. So you need the tree and the BSP branches to support that.
> >
> > >
> > >
> > > > So why not just drop all the patches in the SRC_URI ? Been there,
> > > > done that. It fails spectacularly when you are managing queues of
> > > > hundreds of potentially conflicting patches (rt, yaffs, aufs, ... e=
tc, etc)
> > > > and then attempting to constantly merge -stable and other kernel
> > > > trees into the repository. git is the tool for managing that, not s=
tacks
> > > > of patches. You spend your entire life fixing patch errors and refr=
eshing
> > > > fuzz (again, been there, done that).
> > > >
> > > > So why not just keep a history and constantly merge new versions
> > > > into it ? Been there, done that. You end up with an absolute garbag=
e
> > > > history of octopus merges and changes that are completely hidden,
> > > > non-obvious and useless for collaborating with other kernel project=
s.
> > > > Try merging a new kernel version into those same big features, it's
> > > > nearly impossible and you have a franken-kernel that you end up try=
ing
> > > > to support and fix yourself. All the bugs are yours and yours alone=
.
> > > >
> > > > So that's why there's a repository that tracks the patches and the
> > > > configuration and is used for multiple purposes. Keeping the patche=
s
> > > > and config blocks separate would just lead to even more errors as
> > > > I update one and forget the other, etc, etc. There have been variou=
s
> > > > incarnations of the tools that also did different things with the p=
atches,
> > > > and they weren't skipped, but detected as applied or not on-the-fly=
,
> > > > so there are other historical reasons for the structure as well.
> > > >
> > > > > - kernel-yocto.bbclass does its own generic job of locating a pro=
per
> > > > > BSP using the KMACHINE/KTYPE/KARCH tags in BSP, it looks like
> > > > > specifying a specific BSP file would just defeat of this: how sho=
uld I
> > > > > deal with this case where I'm providing both "standard" and "tiny=
"
> > > > > KTYPE's ?
> > > >
> > > > I'm not quite following the question here, so I can try to answer b=
adly
> > > > and you can clarify based on my terrible answer.
> > >
> > > The answer is indeed quite useful for a question that may not be that=
 clear
> > :)
> > >
> > > > The tools can locate your "bsp entry point" / "bsp definition" in
> > > > your layer. Either provided by something on the SRC_URI or somethin=
g
> > > > in a kmeta repository (also specified on the SRC_URI).  Since
> > > > both of those are added to the search paths they check. Those
> > > > are just .scc files with a specified KMACHINE/KTYPE that match, and
> > > > as you could guess from my first term I used, they are the entry
> > > > point into building the configuration queue.
> > > >
> > > > That's where you start inheriting the base configuration(s) and inc=
luding
> > > > feature blocks, etc. Those definitions are exactly the same as the
> > > > internal ones in the kernel-cache repository. By default, that loca=
ted
> > > > BSP definition is excluded from inheriting patches .. because as yo=
u
> > > > noted, it would start trying to re-apply changes to the tree. It is=
 there
> > > > to get the configuration blocks, patches come in via other feature
> > > > blocks or directly on the SRC_URI.
> > > >
> > > > So in your case, just provide the two .scc file with the proper
> > > > defines so they can be located, and you'll get the proper branch
> > > > located in the tree, and the base configurations picked up for thos=
e
> > > > kernel types.  You'd supply your BSP specific config by making
> > > > a common file and including it in both definitions, and patches by
> > > > a KERNEL_FEATURE variable or by specifying them directly on
> > > > the SRC_URI (via .patch or via a different .scc file).
> > >
> > > That's what I was experimenting with at the same time, and something =
like
> > > this does indeed produce the expected output:
> > >
> > > KERNEL_FEATURES_append =3D " bsp/rockchip/nanopi-m4-
> > ${LINUX_KERNEL_TYPE}.scc"
> > >
> > > However, it seems confusing, as that .scc is precisely the one that's
> > > already selected
> > > and used for the .cfg: it really looks like we're overriding the
> > > default "bsp entry point"
> > > with a value that's already the default, but with a different result.
> >
> > Yes, that's one way that we've structured things as the tools evolved
> > to balance external BSP definitions being able to pull in the base
> > configuration but not patches. There are two runs of the tools, one loo=
ks
> > for patches (and excludes that bsp entry point) and one that builds the
> > config.queue (and uses the entry point). That's the balance of the mult=
i
> > use nature of the configuration blocks. I could bury something deeper
> > in the tools to hide a bit of that, but it will break uses cases and ti=
me
> > has shown that it is brittle.
> >
> > >
> > > So my gut feeling ATM is that everything should be much more clear if
> > > specifying the default entry point would have the same effect as leav=
ing
> > > the default be used, ie. having patches be applied in both cases.
> > >
> >
> > The variable KMETA_EXTERNAL_BSPS was created as a knob to
> > allow an external definition to both be used for patches AND configurat=
ion.
> > But that is for fully exernal BSPs that do not include the base kernel
> > meta-data, since once you turn that on, you are getting all the patches
> > and all the configuration .. and will have the patches applied twice.
> >
>
> For what its worth I am using KMETA_EXTERNAL_BSPS in a BSP definition fil=
e in an in-recipe kernel metadata tree (but I guess it could be off recipe =
too), and that metadata tree includes scc files from yocto-kernel-cache, th=
e trick is to add the nopatch tag when including scc files from yocto-kerne=
l-cache for which do not want or need the patches.
>
> With KMETA_EXTERNAL_BSPS was added I switched to that and removed the equ=
ivalent of your
> KERNEL_FEATURES_append =3D " bsp/rockchip/nanopi-m4-${LINUX_KERNEL_TYPE}.=
scc"
> that is kind of confusing and includes things twice.

That does look nicer that way, much closer to what I intended, thanks!

Best regards,
--=20
Yann Dirson <yann@blade-group.com>
Blade / Shadow -- http://shadow.tech
