Return-Path: <alexandre.belloni@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13DF9C5479D
	for <webhook@archiver.kernel.org>; Mon,  9 Jan 2023 18:23:40 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
 by mx.groups.io with SMTP id smtpd.web10.80548.1673288610869852978
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Jan 2023 10:23:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=NgF6f0zn;
 spf=pass (domain: bootlin.com, ip: 217.70.183.197, mailfrom: alexandre.belloni@bootlin.com)
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id BBCF11C0008;
	Mon,  9 Jan 2023 18:23:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1673288609;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=OlAvC5LDBPzylAyJbMntsyiftrqx423wEZ6wR6i1R9I=;
	b=NgF6f0znFGT9uaBmwzFV/vfzyGQ/fGHmUyhMwIE67zTgfHnVzdrSF4sMh0nK1e8jtVb3iY
	gSMUO6ZIUoMfpUfORFtor+77CTO33BlxpfZwHpPDwuSw+s8KyGqRYfRK0LSxc1lLiMo9WI
	pm+dhNIn0uOg0Sen7I3IoLqCzmtpZzL7hpJBQMG4vArtjTtCWS4rUaoVmvZ6kHl3p/wCAH
	yCiZQzzaoi5iMSuHcUceizYnwwooU16eBekD2TEcyUaP0Efl+7Dc6Cvgciz70W6ek5wsMq
	zBI082tHT2R4wggcBN4SF6c4N6BaQ9pbNW+7ny3sbWToG8vJARkOqWD0F16qug==
Date: Mon, 9 Jan 2023 19:23:28 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yoann Congal <yoann.congal@smile.fr>,
	Yocto Mailing list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Git repo setup for Yocto upstream contribution
Message-ID: <Y7xboMQghF3h1WVT@mail.local>
References: <0942e45b-2973-f095-61f4-3aa8b90f4080@smile.fr>
 <CANNYZj_ctBSuQG-_rjD8STSmcVCK__DJF-Rg4ngyrNmYgN5N5w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANNYZj_ctBSuQG-_rjD8STSmcVCK__DJF-Rg4ngyrNmYgN5N5w@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 Jan 2023 18:23:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58948

On 09/01/2023 10:29:13+0100, Alexander Kanavin wrote:
> I've been making patches against an integrated poky checkout for many
> years, including bitbake patches. They're usually correctly picked up
> and applied; you only need to ensure you route them to correct mailing
> lists.
> 

No, please send patches against the correct git tree, else you are
putting more load on the maintainers than necessary.
This was the cause of:
https://lore.kernel.org/all/Y5Sr9HSWIc5LVzl9@mail.local/

This can silently fail and then you need to wait for 7hours for the AB
to fail and this delays testing for one more day.

> Alex
> 
> On Sat, 7 Jan 2023 at 14:05, Yoann Congal <yoann.congal@smile.fr> wrote:
> >
> > Hi,
> >
> > Since I plan to work regularly on upstream Yocto and contributing, I
> > wonder about the best way to best setup my git repos to do that...
> >
> > I've started with the upstream poky repo but when I make a commit on,
> > for example, bitbake, my patch applies on a bitbake/some-path file which
> > does not exist in the bitbake repo (only "some-path" exists in the
> > bitbake repo).
> >
> > Is this something I should address ? I found some patches for bitbake in
> > the mailing list that are for "bitbake/..." paths... So, maybe, basing
> > my patches on the poky repo is totally OK for now...?
> >
> > To the Yocto maintainers, how do you manage this (poky repo, combo-layer
> > and individual bitbake/doc/meta-yocto repo) ?
> >
> > Note: I have found the "combo-layer splitpatch" tool but it does not
> > look like a full solution... Maybe I'm missing something?
> >
> > Thanks!
> > --
> > Yoann Congal ("yocton" on IRC)
> > Smile ECS - Tech Expert
> >
> > 
> >

> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58940): https://lists.yoctoproject.org/g/yocto/message/58940
> Mute This Topic: https://lists.yoctoproject.org/mt/96112311/3617179
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alexandre.belloni@bootlin.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

