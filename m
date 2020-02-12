Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.3699.1581509889898431178
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Feb 2020 04:18:10 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47726E01683; Wed, 12 Feb 2020 04:18:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FDD1E007D4
	for <yocto@yoctoproject.org>; Wed, 12 Feb 2020 04:18:07 -0800 (PST)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:37046 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.92)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1j1qxx-0005V7-TU; Wed, 12 Feb 2020 07:18:06 -0500
Date: Wed, 12 Feb 2020 07:18:02 -0500 (EST)
From: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Ross Burton <ross@burtonini.com>
cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] reviving an old suggestion about YP docs markup
In-Reply-To: <CAAnfSTvfGf_XxF1k-3x9pHhcFbYG4MzzpyPNoWOkT82tquTnXg@mail.gmail.com>
Message-ID: <alpine.LFD.2.21.2002120706220.86388@localhost.localdomain>
References: <alpine.LFD.2.21.2002110549500.33214@localhost.localdomain> <CAAnfSTvunnEShgi4_jn9vxVbvmjO0FfnbW-9exww9XQd6PE9Lw@mail.gmail.com> <alpine.LFD.2.21.2002110932160.42474@localhost.localdomain> <CAAnfSTtbBpgHCeDYnSYjYi+NPqTr_pXFz6_83QZ94YgcwLrR+Q@mail.gmail.com>
 <alpine.LFD.2.21.2002110937170.42658@localhost.localdomain> <CAAnfSTvfGf_XxF1k-3x9pHhcFbYG4MzzpyPNoWOkT82tquTnXg@mail.gmail.com>
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel7.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel7.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel7.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: text/plain; charset=US-ASCII

On Tue, 11 Feb 2020, Ross Burton wrote:

> Ah gotcha.  My docbook-fu is somewhat hazy.
>
> Yes, seems sensible.
>
> Ross
>
> On Tue, 11 Feb 2020 at 14:43, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> >
> > On Tue, 11 Feb 2020, Ross Burton wrote:
> >
> > > My problem with <firstterm> is that you need to keep on reviewing to
> > > verify it is the first usage.  Better to post-process that, surely.
> >
> >   but that's not the way it's normally used ... <firstterm> doesn't
> > necessarily mean the physically first time a term is used, it's more
> > typically used to identify where the term is formally introduced and
> > explained to the reader.
> >
> >   for example, there's nothing wrong with using, say, "BSP layer"
> > early in a manual as part of a list of YP components or something, but
> > <firstterm> would be used when the manual finally got around to
> > explaining the term. that's why <firstterm> is frequently used for
> > index generation; because that's where the reader should go for the
> > *explanation* of the term, not just its first physical occurrence.

  heh ... i remember it took me a few reads once upon a time to
finally grok the proper usage of a lot of docbook markup. in any
event, i'm not pushing for a bunch of stuff to happen all at once, i'm
just going to collect ideas for future work.

  first thought (as i whined about already) is to start using at least
a minimal set of more appropriate markup (<variable>, <command>,
<option>, <firstterm> and so on).

  following on that, it's inevitable that, even when the markup is
appropriate, the rendering might not be ideal, so start tweaking XSL
stylesheets to change that rendering as needed.

  in addition, depending on need, perhaps invent new markup (although
this is pretty extreme given that docbook should support almost every
type of markup imaginable).

  finally (and really long term), maybe move to docbook 5 and Relax
NG, but that would be a long way off if it even happens at all.

  anyway, i'll just put these ideas aside for now.

rday

p.s. one fairly obvious improvement would be to define the proper
rendering of code or command-line snippets. right now, as i read it,
command examples are marked up with:

                <literallayout class='monospaced'>
     $ bitbake -h
     $ bitbake --help
                </literallayout>


which is kind of cumbersome and requires the author to add the proper
leading spaces for rendering. i'm fairly sure XSL can make that
simpler so that arbitrary indentation is processed properly. again, a
long term idea.
