Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6326C54E94
	for <webhook@archiver.kernel.org>; Wed, 25 Jan 2023 20:12:38 +0000 (UTC)
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
 by mx.groups.io with SMTP id smtpd.web11.56562.1674677556360840058
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Jan 2023 12:12:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=RTTtY0eh;
 spf=pass (domain: gmail.com, ip: 209.85.166.41, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-io1-f41.google.com with SMTP id s26so8964571ioa.11
        for <yocto@lists.yoctoproject.org>; Wed, 25 Jan 2023 12:12:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uJxCmRKyBLn/ESd/7AklhV5wklzRMz6XEAud6fs3GhU=;
        b=RTTtY0ehd9rQJB0VUO4ahmczG2tAly4OuKbdUwis+eR6dEQCzoCfAoqxPtuhSAqkNo
         udx1RZqiu1AIPYwnTtuSmwrtd1f/8KaD34hs9ifjO/Lzy+oYBF10oducGTs5JRLTbdlI
         a2UqnG2W3XFga7yRVfENQ1C2Ejj0MGvA/Jz8W3vLp6LRvt63FGiX+ZFq//3DviAQhSwT
         vb+T3mrAdRkzy0q5mSZLz/LbfbmTiwwdhCUQiF1k274Ow6PFZR1pIKJlc7aLeAEP4054
         tnpLiFs1zYCA7Lgkm6WqUNVbjFzNStW321/VNl1nKg8vio3rSXpGBhnqGcLPbISdqYMi
         84vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uJxCmRKyBLn/ESd/7AklhV5wklzRMz6XEAud6fs3GhU=;
        b=vEubPljoIogYXhGVS+C9Mjl84aVEG4A3jZeYtEm16LaPZpqEuZpuexFfCyEPjWskSq
         gIPRgJfx/+0EJMYiHBWhHmSiQQkIV8NQypkBGR8vrN/tmNO318/upc10j313+xG9m2FT
         yFcOKaW1Nhbdi1oPh0ELtzvz7YE9gwe9UXUwwRMjaFObnMCMA/Cgt/KMLNgFtf9wN1Ne
         g07m8kpBF5jdoAaZTmGA2+G5Pxh9AnQRa9AoXE0x4PbDfLokk2/2sthJ6yOcCgwLba7E
         lVjYqh3VO6NqyWZ4RhF4kPvGZeHOOZDQs73lYQdFnGrUyyqJyG1piwd/hRCp+oo6yygn
         PACA==
X-Gm-Message-State: AFqh2kr2H8YG2lJoXvll4Fn8ziUtNn4ire2O2OyyuUb9gMOhuDKGvkO7
	TzbUIsvLhrjsTNiURzQF7GjO3HrWqdfhZwBpiPI=
X-Google-Smtp-Source: AMrXdXsKhGf6iIKH4EYsIe5CVo0fmtExUy/1HW9ccinzfG4w/I4+WbCCkVEqDl8O6ZAQ1NVRmNhyLqd5/LrG5VbRClM=
X-Received: by 2002:a5e:9505:0:b0:704:aa70:2b13 with SMTP id
 r5-20020a5e9505000000b00704aa702b13mr2709927ioj.91.1674677555476; Wed, 25 Jan
 2023 12:12:35 -0800 (PST)
MIME-Version: 1.0
References: <cover.1674597613.git.bruce.ashfield@gmail.com>
 <Y9FoNXh1xgruCZOF@mail.local> <173DA5EFD1E6EF1F.686@lists.yoctoproject.org>
In-Reply-To: <173DA5EFD1E6EF1F.686@lists.yoctoproject.org>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 25 Jan 2023 15:12:24 -0500
Message-ID: <CADkTA4OEFU9O=GvQgXC7RkfHR-g+3oG7HTAeUWGQiAr+t6XzHg@mail.gmail.com>
Subject: Re: [yocto] [PATCH 0/2] poky/yocto-bsps: drop 5.19 and move to 6.1
To: bruce.ashfield@gmail.com
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, richard.purdie@linuxfoundation.org, 
	yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 25 Jan 2023 20:12:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59065

On Wed, Jan 25, 2023 at 3:04 PM Bruce Ashfield via
lists.yoctoproject.org
<bruce.ashfield=gmail.com@lists.yoctoproject.org> wrote:
>
> On Wed, Jan 25, 2023 at 12:34 PM Alexandre Belloni
> <alexandre.belloni@bootlin.com> wrote:
> >
> > Hello,
> >
> > One of the two series breaks xen:
> >
> > https://autobuilder.yoctoproject.org/typhoon/#/builders/128/builds/1191/steps/13/logs/stdio
> >
>
> That's chicken and egg.
>
> I won't merge the changes to meta-virt, until oe-core gets the new
> default kernel.

I should add that the fixes should be on the meta-virt master-next branch.

Cheers,

Bruce

>
> Cheers,
>
> Bruce
>
> > On 24/01/2023 17:02:05-0500, Bruce Ashfield wrote:
> > > From: Bruce Ashfield <bruce.ashfield@gmail.com>
> > >
> > > Richard,
> > >
> > > These follow the OEcore patches to remove 5.19. This bumps poky
> > > and poky-tiny to 6.1 and leaves the alt configuration on 5.15.
> > >
> > > Bruce
> > >
> > > The following changes since commit 3c3fd6a65e8103f74ae382d196d486b31a168b39:
> > >
> > >   insane: Improve patch warning/error handling (2023-01-21 07:46:38 +0000)
> > >
> > > are available in the Git repository at:
> > >
> > >   https://git.yoctoproject.org/poky-contrib zedd/kernel-yocto
> > >   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto
> > >
> > > Bruce Ashfield (2):
> > >   poky/poky-tiny: bump preferred version to 6.1
> > >   yocto-bsps: remove 5.19 bbappend
> > >
> > >  meta-poky/conf/distro/poky-tiny.conf          |  2 +-
> > >  meta-poky/conf/distro/poky.conf               |  4 ++--
> > >  .../linux/linux-yocto_5.19.bbappend           | 23 -------------------
> > >  3 files changed, 3 insertions(+), 26 deletions(-)
> > >  delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.19.bbappend
> > >
> > > --
> > > 2.34.1
> > >
> >
> > >
> > >
> > >
> >
> >
> > --
> > Alexandre Belloni, co-owner and COO, Bootlin
> > Embedded Linux and Kernel engineering
> > https://bootlin.com
>
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59063): https://lists.yoctoproject.org/g/yocto/message/59063
> Mute This Topic: https://lists.yoctoproject.org/mt/96508854/1050810
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.ashfield@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

