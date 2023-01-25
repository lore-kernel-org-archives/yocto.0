Return-Path: <alexandre.belloni@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E338DC54E94
	for <webhook@archiver.kernel.org>; Wed, 25 Jan 2023 20:12:28 +0000 (UTC)
Received: from relay11.mail.gandi.net (relay11.mail.gandi.net [217.70.178.231])
 by mx.groups.io with SMTP id smtpd.web10.56658.1674677540243778226
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Jan 2023 12:12:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=BjhC9FqW;
 spf=pass (domain: bootlin.com, ip: 217.70.178.231, mailfrom: alexandre.belloni@bootlin.com)
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 07FBB100005;
	Wed, 25 Jan 2023 20:12:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1674677537;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Y8tRC0rXSrYwIvO58genSs3CVZMu9+iqNinEyOoJdKw=;
	b=BjhC9FqW9DbXjBKWl3gPiGXUFIhnZXNu27qN8hf8vO2OhREX71LLySLco2GCGzmKqZll6q
	MG83KwrhG8mV93e+yNob9VPe/NqjKNcvchHWzeRxoO/nDHv0ex4AoTjMraRz0645fCKZnn
	4QZgjVEYS0IAQmeSzlQDq1Z4YHIEUiEh6nnKxmE/nadgoB3j842BWYUB6qGR+WUufGx3hi
	Rcf6Atkw2g/FSOcyg7lrN5BF7I2nPbK+wWyl3Yld+NQIRFN6NYfGwsXgU8C1LEQX6fBI7l
	YpJpM8Zu5Nr9GlRQpOsBseNXbrF8HSgCtA2jB5uBGqp/5frxGQljVB2c8qkM7w==
Date: Wed, 25 Jan 2023 21:12:16 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: richard.purdie@linuxfoundation.org, yocto@lists.yoctoproject.org
Subject: Re: [yocto] [PATCH 0/2] poky/yocto-bsps: drop 5.19 and move to 6.1
Message-ID: <Y9GNILTSxyQ2Ccu2@mail.local>
References: <cover.1674597613.git.bruce.ashfield@gmail.com>
 <Y9FoNXh1xgruCZOF@mail.local>
 <CADkTA4PzGXPJu2mcxN29z6c7FmCVTfe22m-rPDoOjG3j-3Kdpg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CADkTA4PzGXPJu2mcxN29z6c7FmCVTfe22m-rPDoOjG3j-3Kdpg@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 25 Jan 2023 20:12:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59064

On 25/01/2023 15:04:27-0500, Bruce Ashfield wrote:
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

That's perfectly fine, I simply wanted to ensure you knew.

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
> > > -=-=-=-=-=-=-=-=-=-=-=-
> > > Links: You receive all messages sent to this group.
> > > View/Reply Online (#59053): https://lists.yoctoproject.org/g/yocto/message/59053
> > > Mute This Topic: https://lists.yoctoproject.org/mt/96508854/3617179
> > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alexandre.belloni@bootlin.com]
> > > -=-=-=-=-=-=-=-=-=-=-=-
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

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

