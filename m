Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.10988.1581431712057192707
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Feb 2020 06:35:12 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3B50E01672; Tue, 11 Feb 2020 06:35:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63570E015D3
	for <yocto@yoctoproject.org>; Tue, 11 Feb 2020 06:35:11 -0800 (PST)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:55504 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.92)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1j1Wd4-00FH5L-CR; Tue, 11 Feb 2020 09:35:10 -0500
Date: Tue, 11 Feb 2020 09:35:07 -0500 (EST)
From: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Ross Burton <ross@burtonini.com>
cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] reviving an old suggestion about YP docs markup
In-Reply-To: <CAAnfSTvunnEShgi4_jn9vxVbvmjO0FfnbW-9exww9XQd6PE9Lw@mail.gmail.com>
Message-ID: <alpine.LFD.2.21.2002110932160.42474@localhost.localdomain>
References: <alpine.LFD.2.21.2002110549500.33214@localhost.localdomain> <CAAnfSTvunnEShgi4_jn9vxVbvmjO0FfnbW-9exww9XQd6PE9Lw@mail.gmail.com>
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

> On Tue, 11 Feb 2020 at 11:13, rpjday@crashcourse.ca
> <rpjday@crashcourse.ca> wrote:
> >   first, yes, if something is a filename, then <filename> is the
> > obvious markup.
> >
> >   on the other hand, variables should properly be marked up as
> > <variable>, which they currently aren't. a good example is in the
> > reference manual, the variables, where glossary definitions all
> > use the <filename> markup for variables. again, it may make no
> > difference in the ultimate rendering to something as trivial as
> > HTML but, some day, it will be useful to be able to render things
> > differently depending on the choice of output.
>
> I'd say fine, patches welcome. Maybe Scott chose a subset of Docbook
> to ease the formatting?  Either way, I can't see a good argument
> *against* using a broader set of tags.  At some point you could have
> some lint tooling to verify that every <variable> is in the variable
> index, for example.

  yes, that's along the lines of using <firstterm> when appropriate.
i'm not suggesting trying to dig into every corner of docbook, just
the judicious usage of the most obvious tags. i'll do some research to
see what minimum set of tags would make sense. as a start, probably:

  * <filename>
  * <variable>
  * <command>
  * <option>
  * <firstterm>

all strike me as obvious (in addition to what's already used).

rday
