Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 806B9C433EF
	for <webhook@archiver.kernel.org>; Tue, 31 May 2022 12:52:27 +0000 (UTC)
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com
 [209.85.166.176])
 by mx.groups.io with SMTP id smtpd.web09.48876.1654001537482181376
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 May 2022 05:52:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=E8b2HcK8;
 spf=pass (domain: gmail.com, ip: 209.85.166.176,
 mailfrom: jpewhacker@gmail.com)
Received: by mail-il1-f176.google.com with SMTP id y16so4495423ili.13
        for <yocto@lists.yoctoproject.org>;
 Tue, 31 May 2022 05:52:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/3Wn2qpVCUADYqpA5xEwM0wKZavPUQ0GHrfNcXgKlug=;
        b=E8b2HcK8zimsLDqCu1V2KXM1XFT5dY+oekVjXmRP1L6edbf6u4ZDCs7eUHIX5aFJDG
         fH2ZiTDX9q+mFKBCyRti4AMdZgJLG/UAyTXBgTTxpjodj/KPawVRLHAe+5I9XnPyenqF
         IXRO5UzBObDUwXpzQ9exdKZJ/asBa6z7kkO9zhXX/xaIK4j0Iczfqj3/trgaQUcpOKSI
         577SVzfEHK+XPggoFzImVogJ62PnNPVxl5HoEwd6iUUj+yDFEkpBsoSCqZj4HBHlyKEB
         YZDKYggFvQIPFCdlsDFiXS8dXZVhuMXT8rTHma+xBt1yiSoSay9MFoSovNg9f4oJOmI+
         m5Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/3Wn2qpVCUADYqpA5xEwM0wKZavPUQ0GHrfNcXgKlug=;
        b=G54VpWiVJBqkcydW9OCM7SvQekcjyTdAhqZqZd7kkTIKTvlL8RM6ugQfqMTBn140Cj
         66NDK+pLgCreU/iVLTnLBgQ885mULX3R//PqPQQxtd0qh821UcY7Z2u6KSHh9k08nUax
         AHauzOo9SWkSSR+UuD7X89FwPyJDtSEVEsyRy47T4liFyR576AIBnrbIIQ+N12WnlmfX
         hpbvTRw4oWEwzyfi+EdBPuxewDM9R6lPh+qkcIThSVjIwRhctj2mkJElrDPTTsg9bXwS
         vGHoR0pjLlLXZhgBXi6iHST3ZtGGWY0k050uN8yD+oPKBJy+z9ul2VoNCiSzu+l5wKMb
         G5hQ==
X-Gm-Message-State: AOAM531QNrU/nKEM67xvISjNGHrv9F4yIgvYF3vp4zfCQJSuvG0TGW5o
	qCPNDX1T1xkVq0DvruLrRK4214SUwFyU6Backds=
X-Google-Smtp-Source: 
 ABdhPJyfPhsKM09LQiSgVqjvI/49LleLQvo5iPKhsjl8wZ4Ng9+Y/0sVuUvILfJCE6+jKpmzPhodJ+FsjsOQwK9uOqk=
X-Received: by 2002:a92:c94e:0:b0:2d3:be50:3e2f with SMTP id
 i14-20020a92c94e000000b002d3be503e2fmr1715112ilq.143.1654001536868; Tue, 31
 May 2022 05:52:16 -0700 (PDT)
MIME-Version: 1.0
References: <20220527135751.54a29f24@melee>
 <CADja47NmNz+8es0ymHYxmozSPmMA1TCTFeDg7epCDoXMEgYzbA@mail.gmail.com>
 <CANx9H-D_w2hupHXMxqYvQ2JYgfEKdvw5A_+OBpJ_9LW81s8efA@mail.gmail.com>
 <4e629bf9-1cb7-f1b1-4ca7-b2e535aeeea0@spiteful.org>
 <YpGn2ltFe33urvHD@xpredator>
 <74a19bf1c3b4b88943a045fe6ba4e5a88d86db8e.camel@linuxfoundation.org>
In-Reply-To: 
 <74a19bf1c3b4b88943a045fe6ba4e5a88d86db8e.camel@linuxfoundation.org>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Tue, 31 May 2022 07:52:05 -0500
Message-ID: 
 <CAJdd5GZ+zErV=uAzE7eaDw02gk+__7xjsppn5gc4jHEJAzznCw@mail.gmail.com>
Subject: Re: [yocto] meta-egl failure: Nothing RPROVIDES polkit
To: richard.purdie@linuxfoundation.org
Cc: Marius Vlad <marius.vlad@collabora.com>,
 Scott Murray <scott.murray@konsulko.com>,
	Tim Orling <ticotimo@gmail.com>,
 Jan Simon Moeller <jsmoeller@linuxfoundation.org>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 31 May 2022 12:52:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57234

On Tue, May 31, 2022 at 7:27 AM <richard.purdie@linuxfoundation.org> wrote:
>
> On Sat, 2022-05-28 at 07:40 +0300, Marius Vlad wrote:
> > On Fri, May 27, 2022 at 04:25:00PM -0400, Scott Murray wrote:
> > > On Fri, 27 May 2022, Tim Orling wrote:
> > >
> > > > On Fri, May 27, 2022 at 9:18 AM Jan Simon Moeller <
> > > > jsmoeller@linuxfoundation.org> wrote:
> > > >
> > > > > Hi !
> > > > >
> > > > > Yes, we need to look into this and likely change the location of the
> > > > > RDEPENDS.
> > > > > Thanks for flagging.
> > > > >
> > > > > polkit needs to be in DISTRO_FEATURES and the recipe needs to have a check
> > > > for that (and inherit features_check)
> > > [snip]
> > >
> > > For an immediate fix I've moved the polkit addition to a bbappend added
> > > via BBFILES_DYNAMIC, gated on meta-oe presence.  The current intent is
> > > that the meta-agl-core test on the autobuilder only need poky, so letting
> > > this slip in was a thinko on our part.  We may revisit making meta-oe a
> > > required dependency when binary packagefeed prototyping starts in AGL.
> > > Your comment re features_check is right on, I'll add that when I get a
> > > chance over the weekend.  One thing I may bring up on the next dev call
> > > is Weston does need polkit in some situations (hence the addition in
> > > AGL), so maybe shifting it to oe-core starts to make more sense now...
> > Yes, when using the logind launcher, or the seatd launcher with the
> > logind back-end, polkit is needed to activate the session.  There's no
> > more a direct launcher, weston-launch has been removed and upstream weston
> > can for some time now use systemd user sessions to starting-up.
> >
> > The seatd launcher with daemon or built-in back-end, appears to be doing
> > the activation on its own, but I reckon systemd-logind back-end will be
> > the de-facto back-end if changing the launcher in weston to seatd, and
> > removing systemd-logind launcher (as we're currently working towards
> > having just a single launcher).
> >
> > One thing to mention here is that while digging this up I've found a
> > patch to systemd-logind [1] which supposedely should allow just logind
> > to activate the session as a non-root user, just that either it wasn't
> > working or it is no longer present, as I haven't been able to activate
> > sessions without polkit installed.
> >
> > [1] https://github.com/openembedded/openembedded-core/commit/e42dd9cff98f2149904e104f08bc3f19ee7b6fc0
> >
>
> Adding Joshua, I'm hoping he might have some ideas here?

That patch in question fixed a regression in systemd behavior that was
introduced at some point that broke the non-polkit behavior. I was
able to get it fixed, but I also suspect that fighting against using
polkit isn't going to be productive in the long run and we should look
at a way to pull it in..... preferably without needing mozjs (why a
policy system decided to rely on javascript is beyond me). Eventually,
we are going to want polkit-only features from systemd and there won't
be grounds (like "This worked before polkit") to get upstream systemd
to change to support it.

>
> Cheers,
>
> Richard
>

