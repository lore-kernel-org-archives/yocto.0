Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.994.1581371344055660831
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Feb 2020 13:49:04 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96F5EE0171E; Mon, 10 Feb 2020 13:49:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AA8EE0171B
	for <yocto@yoctoproject.org>; Mon, 10 Feb 2020 13:49:01 -0800 (PST)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:51502 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.92)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1j1GvM-00DROb-BR; Mon, 10 Feb 2020 16:49:00 -0500
Date: Mon, 10 Feb 2020 16:48:58 -0500 (EST)
From: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Richard Purdie <richard.purdie@linuxfoundation.org>
cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] more nitpicky pedantry: question about DEFAULT_PREFERENCE
In-Reply-To: <0cf1df98d8e32eadd7d5c574535b944222e68507.camel@linuxfoundation.org>
Message-ID: <alpine.LFD.2.21.2002101647570.10568@localhost.localdomain>
References: <15F180F049AC594A.27010@lists.yoctoproject.org>  <alpine.LFD.2.21.2002081344270.2158836@localhost.localdomain> <0cf1df98d8e32eadd7d5c574535b944222e68507.camel@linuxfoundation.org>
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

On Mon, 10 Feb 2020, Richard Purdie wrote:

> On Sat, 2020-02-08 at 13:48 -0500, rpjday@crashcourse.ca wrote:
> > On Sat, 8 Feb 2020, rpjday@crashcourse.ca wrote:
> > ... snip ...
> > > which seems odd as there don't appear to be any other recipes that
> > > provide pkgconfig, and AIUI, the default provider for any recipe is
> > > the recipe with *exactly* the same name as the target -- in this
> > > case,
> > > "pkgconfig".
> > ...
> >
> >   also wanted to clarify, while the default provider of a dependency
> > is the recipe with *exactly* that name, i'm assuming (i think i
> > remember this from somewhere) that if you have a number of recipes
> > that all provide, say, "virtual/kernel", and you have an explicit
> > dependency of "virtual/kernel", you *must* supply a
> >
> >   PREFERRED_PROVIDER_virtual/kernel = ...
> >
> > line, yes? as in, there's no weird processing to figure out which
> > recipe you'll be arbitrarily handed among the several that could be
> > used.
>
> The resolution code is deterministic (i.e. it might sort them) but
> there is no specific default provider, no.

  ah, so if you don't specify a PREFERRED_PROVIDER, then *some*
provider will ultimately be selected, is that it? you just won't have
any gurarantee which one it will be.

rday
