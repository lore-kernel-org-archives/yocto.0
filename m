Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E228C433F5
	for <webhook@archiver.kernel.org>; Thu, 14 Oct 2021 19:40:02 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com
 [209.85.208.43])
 by mx.groups.io with SMTP id smtpd.web11.2084.1634240400957966171
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Oct 2021 12:40:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=fPYA8gCx;
 spf=pass (domain: gmail.com, ip: 209.85.208.43,
 mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ed1-f43.google.com with SMTP id y12so29727315eda.4
        for <yocto@lists.yoctoproject.org>;
 Thu, 14 Oct 2021 12:40:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wNYpIk6kHYr/QwAFJPVaTJaG0RFN/yGN+ZOg/MteCpQ=;
        b=fPYA8gCx7FQjN8/C2EU8OzoLvFZvVyQVIA/pADrDvs3frRigTIu78P0RM+SVz841kt
         5CM6XNKsraxyDqfuLc+s5nOd2XiKSsvCu77wRd6jA7ehhOXX4GP8InD0a1pczmDb6+V0
         Nu9FikCR+ZWhGAMHwk1g0EWd+F+SKLZmzuaYtw5O00BYbCbqGM24mHjdSc8A3t8L8GFG
         /f5g77CVgxYirLvL0pOF6rxd7U77lY+REy9G0H7EHfQ0ojzVbM03TdhzG9phHUz6yVY0
         QvddHDtb4/S2tVqnu9NPWLzjXHGYij1+t9wvEfAIFWzgASzjiYBRgeWX0ndLgqNmAb7U
         vNOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wNYpIk6kHYr/QwAFJPVaTJaG0RFN/yGN+ZOg/MteCpQ=;
        b=3rJVAZjYSLYD44Cam85t6swCs2TJk9gVl0WGy+XWvFhaZsCM7OEzCLVTlHTTOjKR++
         Bd+mCYKpfIXkLcZGocK8O9eSEboKS0w2bnbRRZBnAlBMGF8InFa0NwxLh1nTeX8f/GXC
         BQcKLHYsJMlDhQoh25KcXMo8F+f7662lAnVXLH8TM7cIkbNguQQ5IsKbW7WGIfyf0CmX
         OjAASasjiSZlE9wpnPtgHhSOGgU1IcbANYMc6jNXTdjnGCRIIQbVsLMt8gdNaW67iYe9
         BEF4b/YAQsOwhAr8fz1XLsXWY4X3XK2f0e6zp9YG/GSe+AJGvl+a0ZdVLmGci9VFHUox
         VVPw==
X-Gm-Message-State: AOAM532Hwjtq8ONBEf3w+LIoBo4EbUHW5pXuV8am1Js3gI6oHk740nBl
	up96tEaS2JAG/pkXy+1NW6n4Lh+Vsca9OOiQ/Gs=
X-Google-Smtp-Source: 
 ABdhPJwc0ZR6knr2vcYVTkIA0+bZxZrJWJsyZr+NBQ5v9xNpgLPfiZdn/LHWcUEHQs5Vn8PgwpQVqUBx2uF+yvlTt2Q=
X-Received: by 2002:a05:6402:11ca:: with SMTP id
 j10mr11358940edw.223.1634240399447;
 Thu, 14 Oct 2021 12:39:59 -0700 (PDT)
MIME-Version: 1.0
References: <i1rt.1634228602998685993.yIPa@lists.yoctoproject.org>
In-Reply-To: <i1rt.1634228602998685993.yIPa@lists.yoctoproject.org>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Thu, 14 Oct 2021 15:39:48 -0400
Message-ID: 
 <CADkTA4Mc9c=RVbxNCJRroO1BhVF_2WnQDjmROGkALsBUg4BtgQ@mail.gmail.com>
Subject: Re: [yocto] docker fragment missing conntrack and netfilter entries?
 #meta-virtualization
To: crawford.benjamin15@gmail.com
Cc: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Oct 2021 19:40:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55078

On Thu, Oct 14, 2021 at 12:23 PM <crawford.benjamin15@gmail.com> wrote:
>
> Hi,
>
> I have just completed a bringup of Poky on the ODROID N2+ platform, but noticed that Docker failed to start, complaining that it could not load the "nf_conntrack_netlink" module.
> After checking docker.cfg, I noticed that a few configuration options I expected were missing.
>
> Shouldn't the following be added: (?)
>
> CONFIG_NETFILTER_NETLINK=m
> CONFIG_NT_CT_NETLINK=m
>
> CONFIG_NETFILTER_XT_MATCH_CONNTRACK=m

FYI: you want the meta-virtualization mailing list, not the main yocto
one for questions like this.

There's a balancing act with the fragments: they are as
non-overlapping as possible, they often support a wide range of kernel
versions and kernel providers, so there are sometimes more, or less
options than you'd expect in a fragment.

In particular the fragments in meta-virtualization are changing right
now, and are being unified in the kernel-cache repository (that allows
the duplicated options to be rationalized).

So depending on which docker.cfg you are looking at, you'd either send
a patch to the linux-yocto mailing list, or the meta-virtualization
list.

In particular, the netfilter fragment is what is expected to provide
many of the needed options, and that's what has been happening with
the out of box docker, lxc, podman, k8s, etc, configurations tested in
meta-virt. The docker.scc fragment will start pulling that in
automatically as part of the de-duplication effort I hinted at above.

But there's no harm in sending a patch, I'll figure out how/where it
applies as I go through those efforts.

Cheers,

Bruce






>
> Thanks,
> Ben
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55074): https://lists.yoctoproject.org/g/yocto/message/55074
> Mute This Topic: https://lists.yoctoproject.org/mt/86318266/1050810
> Mute #meta-virtualization:https://lists.yoctoproject.org/g/yocto/mutehashtag/meta-virtualization
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.ashfield@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


--
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

