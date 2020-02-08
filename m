Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.4219.1581167603063577677
 for <yocto@lists.yoctoproject.org>;
 Sat, 08 Feb 2020 05:13:23 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F250E016ED; Sat,  8 Feb 2020 05:13:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7884AE01697
	for <yocto@yoctoproject.org>; Sat,  8 Feb 2020 05:13:21 -0800 (PST)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:45482 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.92)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1j0PvE-007kBT-2O; Sat, 08 Feb 2020 08:13:20 -0500
Date: Sat, 8 Feb 2020 08:13:18 -0500 (EST)
From: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Leon Woestenberg <leon@sidebranch.com>
cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] clarifying "PROVIDES =" versus "PROVIDES +=" (pedantic stuff)
In-Reply-To: <CAMjhiJh7Q7NNhw_LnTOr86mOEtBz2K7rGBHvCPYxCV7vm=YYBQ@mail.gmail.com>
Message-ID: <alpine.LFD.2.21.2002080812280.2142363@localhost.localdomain>
References: <alpine.LFD.2.21.2002080611100.2136874@localhost.localdomain> <CAMjhiJh7Q7NNhw_LnTOr86mOEtBz2K7rGBHvCPYxCV7vm=YYBQ@mail.gmail.com>
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

On Sat, 8 Feb 2020, Leon Woestenberg wrote:

> Hello Robert,
>
> >   i am *assuming* that, in the absence of a compelling reason, the use
> > of "+=" instead of "=" in this context is harmless, but unnecessary,
> > correct?
> >
> My understanding is that:
>
> > meta/recipes-support/libpcre/libpcre_8.43.bb:PROVIDES += "pcre"
>
> means "I provide both "libpcre" as well as "pcre". I am assuming
> that PROVIDES = "${PN}" is already set by a core BitBake rule
> somewhere. (Didn't check...)
>
> So I think it might be harmful to replace it with "=", as it would
> no longer provide libpcre.

  if that's true, then i've misunderstood it all this time. i guess i
could always RTFS.

rday
