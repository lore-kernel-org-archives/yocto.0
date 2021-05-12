Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.6775.1620825581397576347
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 May 2021 06:19:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nCwaiYAx;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: bruce.ashfield@gmail.com)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 9D51438C0579
	for <yocto@yoctoproject.org>; Wed, 12 May 2021 13:19:40 +0000 (UTC)
Received: by mail-ej1-f50.google.com with SMTP id n2so34939190ejy.7
        for <yocto@yoctoproject.org>; Wed, 12 May 2021 06:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HI5hzbw3VwQnqEXTo/qt5sdlH+/33zeJLGwpzsQng18=;
        b=nCwaiYAxa8FwcDnHoWVCyGISjiB+bG3Awfvm8JVY1/Rr27ZgPsA+7ciH7zVaduvROX
         47Y3xZdNhZI+537vCZ4PP8qBZ+hXux3VfeToehV3iihhgc2aR5msjivln8xiA7oRI1Ja
         wkCQDk3sEjnlz9xnsgWfLb1D6i42h+XDkCdEuIOWzYp0ac5wy5Va2Y4wJFLn1rhy5lX+
         55b5vWEI+HGxT+dn8gYcWWgDrOlWXUBSCeyc91NwevR7ef+Ci49dYPvgP4nsIuHdAH75
         AZ/N+BkazcpoPaUEAkASsujULtXLVoU3v0mz97hInSs1hAwaTYOSZGcTlYn30YtGtDbi
         Ed+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HI5hzbw3VwQnqEXTo/qt5sdlH+/33zeJLGwpzsQng18=;
        b=jnHzEi+sWG3W9r+ABSKFKk0v9sxuqQd794OvCvKZ/Y3dbd9SyEB1SG4oDUowTZGEtB
         MKbhyZ8HBH9nc3jO6mxRRzr6XAKtcLgaVGOit/lElMQSVl4YtJSyxtb6Dw4zMabmhI9+
         9tVd9fGpU8s2RG4yfh064neq9DHQiq4GKWRHHyMXnjaeOQVvy0SA7NJcfK8tLt9cnKsX
         WzWc8tFMRxOMq+l7GAwn1TbOIWF1vjF63XugGDIh4O0xO5PvuklAbYHzrw75VWY0Dahq
         h2TUOJOP2/RwinlIkPIuWIlnrZKEk01mBw63TeWY1tuh58yNQnFIILJ0pQUdIXdvZvjo
         lajA==
X-Gm-Message-State: AOAM532xI7IttIk97e728NOHWHTEI7AnP+M2B/nnABTK/Dtw6w22Csg8
	02we2IkeT70hBVZXY9ZzavipBQGRL78g2+PFbFF/tLPpt3Q=
X-Google-Smtp-Source: ABdhPJwPzaiqgf0zpVe5TZ0E1KiAcXmG/Fzl1t0e21P9SiNrFFTh+yW3rWee6SuQrZIQONwY/ZDMpWBoQ+tmaom2xTg=
X-Received: by 2002:a17:906:c211:: with SMTP id d17mr2506383ejz.247.1620825578841;
 Wed, 12 May 2021 06:19:38 -0700 (PDT)
MIME-Version: 1.0
References: <CA+4=imafR6ncjuC9UOgR3PBPS7MR7H5fo42vn0M9tk7=GSFUoA@mail.gmail.com>
In-Reply-To: <CA+4=imafR6ncjuC9UOgR3PBPS7MR7H5fo42vn0M9tk7=GSFUoA@mail.gmail.com>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Wed, 12 May 2021 09:19:27 -0400
Message-ID: <CADkTA4Ob2nEOxf12YDzkoxZkKQjuKDnOC=OVimpsZY3HWOCLyQ@mail.gmail.com>
Subject: Re: Understanding kernel patching in linux-yocto
To: Yann Dirson <yann.dirson@blade-group.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, May 12, 2021 at 7:14 AM Yann Dirson <yann.dirson@blade-group.com> wrote:
>
> I am currently working on a kmeta BSP for the rockchip-based NanoPI M4
> [1], and I'm wondering how I should be providing kernel patches, as
> just add ing "patch" directives in the .scc does not get them applied
> unless the particular .scc gets included in KERNEL_FEATURES (see [2]).
>
> From an old thread [3] I understand that the patches from the standard
> kmeta snippets are already applied to the tree, and that to get the
> patches from my BSP I'd need to reference it explicitly in SRC_URI
> (along with using "nopatch" in the right places to avoid the
> already-applied patches to get applied twice).
>
> I have the feeling that I'm lacking the rationale behind this, and
> would need to understand this better to make things right in this BSP.
> Especially:
> - at first sight, having the patches both applied to linux-yocto and
> referenced in yocto-kernel-cache just to be skipped on parsing looks
> like both information duplication and parsing of unused lines

At least some of this is mentioned in the advanced section of the
kernel-dev manual, but I can summarize/reword things here, and
I'm also doing a presentation related to this in the Yocto summit at
the end of this month.

The big thing to remember, is that the configuration and changes
you see in that repository, are not only for yocto purposes. The
concepts and structure pre-date when they were first brought in
to generate reference kernels over 10 years ago (the implementation
has changed, but the concepts are still the same). To this day,
there still are cases that they are used with just a kernel tree and
cross toolchain.

With that in mind, the meta-data is used for many different things

 - It organizes patches / features and their configuration into
   reusable blocks. At the same time documenting the changes
   that we have applied to a tree
 - It makes those patches and configuration blocks available to
   other kernel trees (for whatever reason).
 - It configures the tree during the build process, reusing both
   configuration only and patch + configuration blocks
 - It is used to generate a history clean tree from scratch for
   each new supported kernel. Which is what I do when creating
   new linux-yocto-dev references, and the new <version>/standard/*
   branches in linux-yocto.

So why not just drop all the patches in the SRC_URI ? Been there,
done that. It fails spectacularly when you are managing queues of
hundreds of potentially conflicting patches (rt, yaffs, aufs, ... etc, etc)
and then attempting to constantly merge -stable and other kernel
trees into the repository. git is the tool for managing that, not stacks
of patches. You spend your entire life fixing patch errors and refreshing
fuzz (again, been there, done that).

So why not just keep a history and constantly merge new versions
into it ? Been there, done that. You end up with an absolute garbage
history of octopus merges and changes that are completely hidden,
non-obvious and useless for collaborating with other kernel projects.
Try merging a new kernel version into those same big features, it's
nearly impossible and you have a franken-kernel that you end up trying
to support and fix yourself. All the bugs are yours and yours alone.

So that's why there's a repository that tracks the patches and the
configuration and is used for multiple purposes. Keeping the patches
and config blocks separate would just lead to even more errors as
I update one and forget the other, etc, etc. There have been various
incarnations of the tools that also did different things with the patches,
and they weren't skipped, but detected as applied or not on-the-fly,
so there are other historical reasons for the structure as well.

> - kernel-yocto.bbclass does its own generic job of locating a proper
> BSP using the KMACHINE/KTYPE/KARCH tags in BSP, it looks like
> specifying a specific BSP file would just defeat of this: how should I
> deal with this case where I'm providing both "standard" and "tiny"
> KTYPE's ?

I'm not quite following the question here, so I can try to answer badly
and you can clarify based on my terrible answer.

The tools can locate your "bsp entry point" / "bsp definition" in
your layer. Either provided by something on the SRC_URI or something
in a kmeta repository (also specified on the SRC_URI).  Since
both of those are added to the search paths they check. Those
are just .scc files with a specified KMACHINE/KTYPE that match, and
as you could guess from my first term I used, they are the entry
point into building the configuration queue.

That's where you start inheriting the base configuration(s) and including
feature blocks, etc. Those definitions are exactly the same as the
internal ones in the kernel-cache repository. By default, that located
BSP definition is excluded from inheriting patches .. because as you
noted, it would start trying to re-apply changes to the tree. It is there
to get the configuration blocks, patches come in via other feature
blocks or directly on the SRC_URI.

So in your case, just provide the two .scc file with the proper
defines so they can be located, and you'll get the proper branch
located in the tree, and the base configurations picked up for those
kernel types.  You'd supply your BSP specific config by making
a common file and including it in both definitions, and patches by
a KERNEL_FEATURE variable or by specifying them directly on
the SRC_URI (via .patch or via a different .scc file).

Bruce

>
> [1] https://lists.yoctoproject.org/g/yocto/message/53454
> [2] https://lists.yoctoproject.org/g/yocto/message/53452
> [3] https://lists.yoctoproject.org/g/yocto/topic/61340326
>
> Best regards,
> --
> Yann Dirson <yann@blade-group.com>
> Blade / Shadow -- http://shadow.tech



-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
