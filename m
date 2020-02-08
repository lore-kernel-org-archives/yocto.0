Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.8276.1581187702621528298
 for <yocto@lists.yoctoproject.org>;
 Sat, 08 Feb 2020 10:48:23 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 243DDE016FB; Sat,  8 Feb 2020 10:48:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B94E9E016A1
	for <yocto@yoctoproject.org>; Sat,  8 Feb 2020 10:48:21 -0800 (PST)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:48186 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.92)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1j0V9Q-008CRY-PI
	for yocto@yoctoproject.org; Sat, 08 Feb 2020 13:48:21 -0500
Date: Sat, 8 Feb 2020 13:48:18 -0500 (EST)
From: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] more nitpicky pedantry: question about DEFAULT_PREFERENCE
In-Reply-To: <15F180F049AC594A.27010@lists.yoctoproject.org>
Message-ID: <alpine.LFD.2.21.2002081344270.2158836@localhost.localdomain>
References: <15F180F049AC594A.27010@lists.yoctoproject.org>
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

On Sat, 8 Feb 2020, rpjday@crashcourse.ca wrote:
... snip ...
> which seems odd as there don't appear to be any other recipes that
> provide pkgconfig, and AIUI, the default provider for any recipe is
> the recipe with *exactly* the same name as the target -- in this case,
> "pkgconfig".
...

  also wanted to clarify, while the default provider of a dependency
is the recipe with *exactly* that name, i'm assuming (i think i
remember this from somewhere) that if you have a number of recipes
that all provide, say, "virtual/kernel", and you have an explicit
dependency of "virtual/kernel", you *must* supply a

  PREFERRED_PROVIDER_virtual/kernel = ...

line, yes? as in, there's no weird processing to figure out which
recipe you'll be arbitrarily handed among the several that could be
used.

rday
