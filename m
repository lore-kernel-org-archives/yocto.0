Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.24057.1581351414635068942
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Feb 2020 08:16:55 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F65BE0171D; Mon, 10 Feb 2020 08:16:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEC47E00C62
	for <yocto@yoctoproject.org>; Mon, 10 Feb 2020 08:16:52 -0800 (PST)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:48716 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.92)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1j1Bjv-00Cqfc-Ho; Mon, 10 Feb 2020 11:16:51 -0500
Date: Mon, 10 Feb 2020 11:16:49 -0500 (EST)
From: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Richard Purdie <richard.purdie@linuxfoundation.org>
cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] more nitpicky pedantry: question about DEFAULT_PREFERENCE
In-Reply-To: <5226999e05d864ef31151472162f48942af1d4a1.camel@linuxfoundation.org>
Message-ID: <alpine.LFD.2.21.2002101114330.86719@localhost.localdomain>
References: <alpine.LFD.2.21.2002081322430.2157404@localhost.localdomain> <5226999e05d864ef31151472162f48942af1d4a1.camel@linuxfoundation.org>
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

> On Sat, 2020-02-08 at 13:31 -0500, rpjday@crashcourse.ca wrote:

> >    consider under recipes-devtools the two directories "pkgconfig"
> > and "pkgconf", and the respective .bb files:
> >
> >   - pkgconfig_git.bb
> >   - pkgconf_1.6.3.bb
> >
> > the pkgconfig recipe file does *not* contain a PROVIDES setting,
> > while pkgconfig_1.6.3.bb does:
> >
> >   PROVIDES += "pkgconfig"
>
> The above looks superfluous at a glance.

  sorry, i mistyped the above, i should have written:

  "the pkgconfig recipe file does *not* contain a PROVIDES setting,
  while pkgconf_1.6.3.bb does:"

so that PROVIDES line *would* be necessary, yes? (just not the "+="
part).  my apologies for reproducing incorrectly.

rday

