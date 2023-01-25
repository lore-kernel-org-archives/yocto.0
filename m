Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0FDFC61DA0
	for <webhook@archiver.kernel.org>; Wed, 25 Jan 2023 20:04:48 +0000 (UTC)
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
 by mx.groups.io with SMTP id smtpd.web10.56411.1674677085690121467
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Jan 2023 12:04:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Bgu1l8EH;
 spf=pass (domain: gmail.com, ip: 209.85.166.53, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-io1-f53.google.com with SMTP id 203so8949569iou.13
        for <yocto@lists.yoctoproject.org>; Wed, 25 Jan 2023 12:04:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9FZQNZK6+3XsHas67lcUjWCKErMzlQIzUomoO5Cxt0Q=;
        b=Bgu1l8EHNVw0h1inR5J2Cv6dk4O24ruVfpXVkSGH/P5H66fwej9TQy3kxhIPO+EGPW
         TLldJQ6Gb/tduzQLMBjxmvHFXPKowGLdHu+kIGcvChKCACrDMR0IbA2XUl5tXiqcBQG2
         /UXf8oDyitUL8qJYVMBlYSEdulQfp10ZHDmtJ3PVjqtOUZrFaZF3Dtk4n5UmKCvXGK42
         85jfpI3JxWUrfEcwrTIMC8bpyucH6mz2BS+FiqVRLvCycq/Rq4Bb+GxHGAPFhT+DZ1tX
         ngkxh3CHZZoDGsD1YaGVxablC0CXyzSVnamUB15da6LMlb2KcK2Sj35NF8uwWzDrXIFG
         ATvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9FZQNZK6+3XsHas67lcUjWCKErMzlQIzUomoO5Cxt0Q=;
        b=1gs4EV1GxN+ofB4TIz3y2U8RsqwNZ1O2LA3pb5AVRw8MVpn39GFA7tSQ8LojcsSdkX
         fWDlfZpT5cuP9p9xZadrMvvyXXQub9ZPYKI3dSII+E2jXx3FHBz1bPdFnaQ6YUx6IvxY
         iyIcjxHPJyLlIb+Wz1tBTJNKNUG+EVevc/9h+jg5t/QVUx3ODKNyHM+ZTuiFz/cI0gVp
         ZKuLzXvpIbh5vB+5WChyu9YeHeWAWWglEQxkfTZAUWPwgcWgZYjd2PP2YAa6Efqg9AzT
         FKLVQ+EojG5DHPY67IABZePlN1Ga0MxEK3xSPJaLZLbDCdqF/q0jjwlzjrHbiZss/2Sf
         mrWQ==
X-Gm-Message-State: AFqh2kr0Xs4GyktHos8LicGUUjuQCUilL2awflAJQunzRJjedNRrabCG
	DIyDGd7/mIN/H72HjPTTO8j1iSUNJPGtfuG4y8Q=
X-Google-Smtp-Source: AMrXdXvObxfjXLLpK6+erCd2fSkCIo0FHuBOhutAf0h102oej6f9g9e5IWw3iVTBH233JhcV5cu3mdLqtKOVUWqb5NE=
X-Received: by 2002:a02:cac7:0:b0:38a:5876:4ff with SMTP id
 f7-20020a02cac7000000b0038a587604ffmr3611829jap.178.1674677084951; Wed, 25
 Jan 2023 12:04:44 -0800 (PST)
MIME-Version: 1.0
References: <cover.1674597613.git.bruce.ashfield@gmail.com> <Y9FoNXh1xgruCZOF@mail.local>
In-Reply-To: <Y9FoNXh1xgruCZOF@mail.local>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 25 Jan 2023 15:04:27 -0500
Message-ID: <CADkTA4PzGXPJu2mcxN29z6c7FmCVTfe22m-rPDoOjG3j-3Kdpg@mail.gmail.com>
Subject: Re: [yocto] [PATCH 0/2] poky/yocto-bsps: drop 5.19 and move to 6.1
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: richard.purdie@linuxfoundation.org, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 25 Jan 2023 20:04:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59063

On Wed, Jan 25, 2023 at 12:34 PM Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:
>
> Hello,
>
> One of the two series breaks xen:
>
> https://autobuilder.yoctoproject.org/typhoon/#/builders/128/builds/1191/steps/13/logs/stdio
>

That's chicken and egg.

I won't merge the changes to meta-virt, until oe-core gets the new
default kernel.

Cheers,

Bruce

> On 24/01/2023 17:02:05-0500, Bruce Ashfield wrote:
> > From: Bruce Ashfield <bruce.ashfield@gmail.com>
> >
> > Richard,
> >
> > These follow the OEcore patches to remove 5.19. This bumps poky
> > and poky-tiny to 6.1 and leaves the alt configuration on 5.15.
> >
> > Bruce
> >
> > The following changes since commit 3c3fd6a65e8103f74ae382d196d486b31a168b39:
> >
> >   insane: Improve patch warning/error handling (2023-01-21 07:46:38 +0000)
> >
> > are available in the Git repository at:
> >
> >   https://git.yoctoproject.org/poky-contrib zedd/kernel-yocto
> >   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto
> >
> > Bruce Ashfield (2):
> >   poky/poky-tiny: bump preferred version to 6.1
> >   yocto-bsps: remove 5.19 bbappend
> >
> >  meta-poky/conf/distro/poky-tiny.conf          |  2 +-
> >  meta-poky/conf/distro/poky.conf               |  4 ++--
> >  .../linux/linux-yocto_5.19.bbappend           | 23 -------------------
> >  3 files changed, 3 insertions(+), 26 deletions(-)
> >  delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.19.bbappend
> >
> > --
> > 2.34.1
> >
>
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#59053): https://lists.yoctoproject.org/g/yocto/message/59053
> > Mute This Topic: https://lists.yoctoproject.org/mt/96508854/3617179
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alexandre.belloni@bootlin.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >
>
>
> --
> Alexandre Belloni, co-owner and COO, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com



-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

